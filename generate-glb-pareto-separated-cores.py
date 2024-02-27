#! /usr/bin/python3
# vim: set sw=2 sts=2 ts=8 et:

from __future__ import print_function

import csv
import sys
import numpy as np
import os
from optparse import OptionParser
import random

PROG = os.path.basename(sys.argv[0])

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
  if float(row[0]) >= float(candidateRow[0]) and float(row[1]) <= float(candidateRow[1]) and float(row[2]) <= float(candidateRow[2]) and float(row[3]) <= float(candidateRow[3]) and float(row[4]) <= float(candidateRow[4])  :
    return True
  return False
  #return sum([row[x] >= candidateRow[x] for x in range(len(row))]) == len(row)  


class TSVDataPF(object):

  max_cores = 8
  data      = {}
  FPSDict = {}
  NSamples = {}
  iterations = 1500 
  nReadFiles = 0
  globalData = []

  def __init__(self, iterations):
    self.iterations     = iterations
    # initialize map
    for current_iteration in range(1,self.iterations+1):
      self.FPSDict[current_iteration] = 0.0
      self.NSamples[current_iteration] = 0

  def clearData(self):
      self.globalData = []

  def printUnifiedParetoFront(self,writer,writerRef,writerExp,writerAlw):
    paretoPoints, dominatedPoints = simple_cull(self.globalData, dominates)
    tableData = np.array(list(paretoPoints))
    sortedData = tableData[tableData[:,1].argsort() ]

    for x in sortedData:
      data = [x[0]]
      data.append(x[1])
      data.append(x[2])
      data.append(x[3])
      data.append(x[4])
      data.append(x[5])
      data.append(x[6])

      writer.writerow(data)
      if x[-1] == "REF":
        writerRef.writerow(data)
      if x[-1] == "ALW":
        writerAlw.writerow(data)
      if x[-1] == "EXP":
        writerExp.writerow(data)


  def readTSV(self, fileName,writer):
    #print("Reading "+fileName.lower())
    ifile  = open(fileName, "r")
    reader = csv.reader(ifile,delimiter='\t')
    heading = reader.__next__()

    typeApproach = "REF"
    if fileName.lower().find("explore") != -1:
      typeApproach = "EXP"
    elif fileName.lower().find("always") != -1:
      typeApproach = "ALW"

    #print(typeApproach) 
    for row in reader:
      row.append(typeApproach)
      self.globalData.append(row)

if __name__ == '__main__':
  help='''usage: %prog [options] <tsv files>", version=1.0'''

  parser = OptionParser(usage=help)
  parser.add_option("-o", "--output", type="string", help="output CSV file <OUTPUT>")
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

  oRef  = open(os.path.splitext(options.output)[0]+"-Reference.csv", "w")
  writerRef = csv.writer(oRef, delimiter='\t')

  oAlw  = open(os.path.splitext(options.output)[0]+"-Always.csv", "w")
  writerAlw = csv.writer(oAlw, delimiter='\t')

  oExp  = open(os.path.splitext(options.output)[0]+"-Explore.csv", "w")
  writerExp = csv.writer(oExp, delimiter='\t')


  headings = ["FPS"]
  headings.append("P0" )
  headings.append("P1" )
  headings.append("P2" )
  headings.append("MemFootprint")
  headings.append("CountCore")
  headings.append("PonderatedCountCore")

  writer.writerow(headings)
  writerRef.writerow(headings)
  writerAlw.writerow(headings)
  writerExp.writerow(headings)

  tsvData.clearData()

  for tsvFileName in args:
    tsvData.readTSV(tsvFileName,writer)

  tsvData.printUnifiedParetoFront(writer,writerRef,writerExp,writerAlw)
  ofile.close()
  oRef.close()
  oAlw.close()
  oExp.close()
  exit(0)
