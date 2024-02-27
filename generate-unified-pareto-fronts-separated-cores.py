#! /usr/bin/python3
# vim: set sw=2 sts=2 ts=8 et:

from __future__ import print_function

import csv
import sys
import numpy as np
import os
import random
import math
from optparse import OptionParser

PROG = os.path.basename(sys.argv[0])

def distillation(globalData, k, distillPercentage ):
  data = np.array(globalData).copy()
  data = data.astype(float)
  [nrows,ncols] = data.shape

  thp=(data[:,0]).astype(float)
  mF=(data[:,4]).astype(float)

  c = math.floor( distillPercentage  *nrows)   #keeping the distillPercentage
  div = math.ceil( (1 + math.sqrt(1+8*c))/2) - 1

  width = k -1
  norm_thp = (thp - thp.min())/(thp.max() - thp.min()) * width + 1
  norm_mem = (mF - mF.min())/(mF.max() - mF.min()) * width + 1

  distance =  np.sqrt( pow((k-norm_thp),2) + pow((1-norm_mem),2) )
  data = np.concatenate([data,np.zeros(nrows)[:,None]],axis=1)  # to store i   
  data = np.concatenate([data,np.zeros(nrows)[:,None]],axis=1)  # to store j
  data = np.concatenate([data,norm_thp[:,None]],axis=1)  # j is thp
  data = np.concatenate([data,norm_mem[:,None]],axis=1)  # i is mF
  data = np.concatenate([data,distance[:,None]],axis=1) 

  [nrows,ncols] = data.shape
  cell = {}
  B = []

  ## init cell
  for i in range(div):
    for j in range(div):
      cell[i,j] = []

  for i in range(div):
    i_min = round(pow(pow(k,i),1/div)  ,  2 )
    i_max = round(pow(pow(k,i+1),1/div)  , 2)

    for j in range(div):
      j_min = round(pow(pow(k,j),1/div) , 2 )
      j_max = round(pow(pow(k,j+1),1/div)  ,2)

      for h in range(nrows):
        if data[h,-3] >= j_min and data[h,-3] < j_max and  data[h,-2] >= i_min and data[h,-2] < i_max :
          data[h,-5] = i
          data[h,-4] = j
          cell[i,j].append(data[h,:])
      

  for i in range(div):
    for j in range(div):
      if len(cell[i,j]) > 0 :
         w = distill(cell[i,j])
         B.append(w)
         data = removeDominates(data, w)

  while len(B) < c and len(data) > 0:
    w = distill(data)
    B.append(w)
    data = removeDominates(data,w)       

  B = np.array(B)      
  
  return B



def simple_cull(inputPoints, dominates):
  paretoPoints = set()
  candidateRowNr = 0
  dominatedPoints = set()
  
  while True:
    candidateRow = inputPoints[candidateRowNr]
    inputPoints.remove(candidateRow)
    rowNr = 0
    nonDominated = True
    while len(inputPoints) != 0 and rowNr < len(inputPoints):
      row = inputPoints[rowNr]
      if dominates(candidateRow, row):
      # If it is worse on all features remove the row from the array
        inputPoints.remove(row)
        dominatedPoints.add(tuple(row))
      elif dominates(row, candidateRow):
        nonDominated = False
        dominatedPoints.add(tuple(candidateRow))
        rowNr += 1
      else:
        rowNr += 1

    if nonDominated:
      # add the non-dominated point to the Pareto frontier
      paretoPoints.add(tuple(candidateRow))

    if len(inputPoints) == 0:
      break

  return paretoPoints, dominatedPoints

def dominates(row, candidateRow):
  if float(row[0]) >= float(candidateRow[0]) and float(row[1]) <= float(candidateRow[1]) and float(row[2]) <= float(candidateRow[2]) and float(row[3]) <= float(candidateRow[3])  and float(row[4]) <= float(candidateRow[4]):
    return True
  return False
  #return sum([row[x] >= candidateRow[x] for x in range(len(row))]) == len(row)  

def distill(cell):
  # return the one with a small distance
  cell = np.array(cell)
  #print(cell)
  distanceMin = (cell[:,-1]).min()
  selected = []
  rows, cols = cell.shape
  
  for i in range(rows):
    if cell[i,-1]  == distanceMin:
      selected.append(cell[i,:])
  
  selected = np.array(selected)
  minCores = (selected[:,-4]).min()
  
  selectedIndex = 0
  rows, cols = selected.shape
  for i in range(rows):
    if selected[i,-4] == minCores:
      selectedIndex = i
      break

#  print("distanceMin "+str(distanceMin))
#  print("minCores "+str(minCores))
  return selected[selectedIndex,:]

def dominatesCell(row1,row2):
#  if float(row1[0]) >= float(row2[0]) and float(row1[1]) <= float(row2[1])  and float(row1[2]) <= float(row2[2])  and float(row1[3]) <= float(row2[3])  and float(row1[4]) <= float(row2[4])  and float(row1[-4]) >= float(row2[-4])  and float(row1[-5]) <= float(row2[-5]) :
  if  dominates(row1,row2)   and float(row1[-4]) >= float(row2[-4])  and float(row1[-5]) <= float(row2[-5]) :
    return True
  return False

def removeDominates(DataSet, row):
  indicesDominated = []

  rows,cols = DataSet.shape

  for i in range(rows):
    if dominatesCell(row,DataSet[i,:]) == True:
      indicesDominated.append(i)

  # then remove the dominated points from Dataset
  DataSet = np.delete(DataSet,indicesDominated,axis=0)
  return DataSet

class TSVDataPF(object):

 
  data      = {}
  FPSDict = {}
  NSamples = {}
  iterations = 1500 
  nReadFiles = 0
  globalData = []
  Projection = []
  throughputDivider = 10
  memoryDivider = 10
  distill = False
  distillPercentage = 0.4
  kParameter = 40


  def __init__(self, iterations):
    self.iterations     = iterations
    # initialize map
    for current_iteration in range(1,self.iterations+1):
      self.FPSDict[current_iteration] = 0.0
      self.NSamples[current_iteration] = 0

  def clearData(self):
      self.globalData = []


  def printUnifiedParetoFront(self,writer,writer2,writer3):
    distilledTableData = []

    paretoPoints, dominatedPoints = simple_cull(self.globalData, dominates)
    tableData = np.array(list(paretoPoints))

    if self.distill == True:
      distilledTableData= distillation(tableData,self.kParameter, self.distillPercentage)



    throughputs = tableData[:,0]
    throughputs = throughputs.astype(float)
    tableData[:,0] = throughputs
    #print(throughputs)
    tableData = tableData.astype(float)
    sortedData = tableData[np.argsort(tableData[:,0])][::-1]
    #print("size data "+str(len(sortedData)))
    throughputs = (sortedData[:,0]).astype(str)
    sortedData[:,0] = throughputs
    
    cols = sortedData.shape[1]
    # get column of ponderated count of cores
    pondCores = (sortedData[:,cols-1])
    pondCores = pondCores.astype(float)
    countCores =(sortedData[:,cols-2])
    countCores = countCores.astype(int)
#    print(pondCores)
#    print(countCores)
    start = 1
    end = countCores.max() 
    width = end - start
    pondCountCores = ( pondCores - pondCores.min() ) / pondCores.ptp() * width +start
    pondCountCores = pondCountCores.round().astype(str)
    sortedData[:,cols-1] = pondCountCores

    tmpData = []
    for i in range(5):
      tmpData.append(sortedData[i,0:5])

    tmpData = np.array(tmpData)
    
#    print(tmpData)

    [n_rows,n_cols]  = tmpData.shape
    for x in range(0,n_rows):
      dat = tmpData[x,0]
      dat  = dat/self.throughputDivider
      tmpData[x,0]  = dat
      dat = tmpData[x,4]
      dat = dat/1024/1024/self.memoryDivider
      tmpData[x,4] = dat
      data = [str(tmpData[x,0])]
      data.append(str(tmpData[x,1]))
      data.append(str(tmpData[x,2])) 
      data.append(str(tmpData[x,3]))
      data.append(str(tmpData[x,4])) 
      self.Projection.append(data)


    if self.distill == True:
     rows,cols = distilledTableData.shape
     for i in range(rows):
       data = [distilledTableData[i,0]]
       data.append(distilledTableData[i,1])
       data.append(distilledTableData[i,2])
       data.append(distilledTableData[i,3])
       data.append(distilledTableData[i,4])
       data.append(distilledTableData[i,5])
       data.append(distilledTableData[i,6])
       writer3.writerow(data)

    random.seed(1)
    #print("size of data "+str(len(sortedData)))
    for x in sortedData:
      data = [x[0]]
      data.append(x[1])
      data.append(x[2])
      data.append(x[3])
      data.append(x[4])
      data.append(x[5])
      data.append(x[6])
      writer.writerow(data)
      rN = random.uniform(0,1)
      rN = 0
      if (rN<0.6) and self.distill==False:
        writer3.writerow(data)


    projection = np.array(self.Projection).transpose()
    headings3 = ["column1"]
    headings3.append("column2")
    headings3.append("column3")
    headings3.append("column4")
    headings3.append("column5")
    headings3.append("column6")
    headings3 = np.array(headings3).reshape(1,6)

    projection = np.concatenate([headings3,projection])
    for x in projection:
      writer2.writerow(x)



  def readTSV(self, fileName,writer):
    #print("Reading "+tsvFileName)
    ifile  = open(fileName, "r")
    reader = csv.reader(ifile,delimiter='\t')
    tableData = []
    heading = reader.__next__()
#   index_tp       = [n for n in xrange(0, len(heading)) if heading[n]=="#throughput_pthread[MAX]"][0]
    index_iteration= heading.index('iteration')
    index_runtime  = heading.index('runtime[s]')
    try:
        index_tp = heading.index('#throughput_multicore[MAX]')
    except:
        index_tp = heading.index('Thp[MAX]')
    #index_resource = heading.index('procCost[MIN]')
    index_memory = heading.index('MemFootprint[MIN]') 
    index_P0  = heading.index('ϑ1[MIN]')
    index_P1  = heading.index('ϑ2[MIN]')
    index_P2  = heading.index('ϑ3[MIN]')

    for row in reader:
      # Skip INFEASIBLE results
      if "INFEASIBLE" in row[index_tp]:
        continue
      if int(row[index_iteration]) == self.iterations:
        FPS   = row[index_tp]
#        cost  = row[index_resource]
        P0_cost = row[index_P0]
        P1_cost = row[index_P1]
        P2_cost = row[index_P2] 
        mem   = row[index_memory]
        ponderatedCoreCount = int(P0_cost)*1.5 + int(P1_cost) + int(P2_cost)*0.5 
        countCores  = int(P0_cost) + int(P1_cost) + int(P2_cost) 
        self.globalData.append([FPS,P0_cost,P1_cost,P2_cost,mem,countCores,ponderatedCoreCount])

if __name__ == '__main__':
  help='''usage: %prog [options] <tsv files>", version=1.0'''

  parser = OptionParser(usage=help)
  parser.add_option("-o", "--output", type="string", help="output CSV file <OUTPUT>")
  parser.add_option("-t", "--throughputDivider", type="float", help="throughput divider for the spider plots...")
  parser.add_option("-m", "--memoryDivider", type="float", help="memory footprint divider for the spider plots...")
  parser.add_option("-d", "--distill", action="store_true", help="include to distill pareto fronts...")
  parser.add_option("-p", "--percentage", type="float",default=0.4, help="percentage of samples to be tracked...")
  parser.add_option("-k", "--kparameter", type="float",default=40.0, help="k parameter utilized for distillation...")
  parser.add_option("-i", "--iterations", type="int", help="how many iterations should be dumped")
  (options, args) = parser.parse_args()

  if len(args) == 0:
    parser.parse_args(["-h"])
  if not options.output:
    print("%s: missing --output option!" % PROG, file=sys.stderr)
    exit(-1)

  tsvData = TSVDataPF(iterations=options.iterations)

  ofile  = open(options.output, "w")
  writer = csv.writer(ofile, delimiter='\t')

  ofile2  = open(os.path.splitext(options.output)[0]+"-transpose.csv", "w")
  writer2 = csv.writer(ofile2, delimiter='\t')

  ofile3  = open(os.path.splitext(options.output)[0]+"-Fraction.csv", "w")
  writer3 = csv.writer(ofile3, delimiter='\t')

  headings = ["FPS"]
  headings.append("P0")
  headings.append("P1")
  headings.append("P2")
  headings.append("MemFootprint")
  headings.append("CountCore")
  headings.append("PonderatedCountCore")
  writer.writerow(headings)
  writer3.writerow(headings)
  tsvData.clearData()

  if options.memoryDivider:
    tsvData.memoryDivider = options.memoryDivider
  if options.throughputDivider:
    tsvData.throughputDivider = options.throughputDivider


  headings2 = ["{Throughput [$1 / \Period$]}"]
  headings2.append("{\# of $\coretype_1$ cores}")
  headings2.append("{\# of $\coretype_2$ cores}")
  headings2.append("{\# of $\coretype_3$ cores}")
  headings2.append("{Memory Footprint [MiB]}")


  if options.distill:
    tsvData.distill = True
    tsvData.distillPercentage = options.percentage
    tsvData.kParameter = options.kparameter
  else:
    tsvData.distill = False

  #tsvData.Projection.append(headings3)
  tsvData.Projection.append(headings2)
  for tsvFileName in args:
    tsvData.readTSV(tsvFileName,writer)


  tsvData.printUnifiedParetoFront(writer,writer2,writer3)
  #print(tsvData.Projection)
  ofile.close()
  ofile2.close()
  ofile3.close()
  exit(0)
