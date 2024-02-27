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

class TSVDataPF(object):

  hypervolumeData = {}
  gainsData = {}
  devData = {}
  referenceHypervolume = {}

  def __init__(self):
    self.hypervolumeData['sobel-sequential'] = {}
    self.hypervolumeData['sobel-parallel4'] = {}
    self.hypervolumeData['multicamera'] = {}

    self.devData['sobel-sequential'] = {}
    self.devData['sobel-parallel4'] = {}
    self.devData['multicamera'] = {}

    self.gainsData['sobel-sequential'] = {}
    self.gainsData['sobel-parallel4'] = {}
    self.gainsData['multicamera'] = {}

    self.referenceHypervolume['sobel-sequential'] = 0.0
    self.referenceHypervolume['sobel-parallel4'] = 0.0
    self.referenceHypervolume['multicamera'] = 0.0 

  def printHypervolume(self,writer):
    problem = ["sobel-sequential","sobel-parallel4","multicamera"]
    apps    = ["reference", "always", "explore"]

    idx = 1
    
    for p in problem:
      nRow = [str(idx*10)]
      idx =idx +1
      for a in apps:
        nRow.append(self.hypervolumeData[p][a])
      writer.writerow(nRow)

  def printStandardDeviation(self,writer):
    problem = ["sobel-sequential","sobel-parallel4","multicamera"]
    apps    = ["reference", "always", "explore"]

    idx = 1
    
    for p in problem:
      nRow = [str(idx*10)]
      idx =idx +1
      for a in apps:
        nRow.append(self.devData[p][a])
      writer.writerow(nRow)

  def printGain(self,writer):
    problem = ["sobel-sequential","sobel-parallel4","multicamera"]
    apps    = ["reference", "always", "explore"]

    idx = 1
    
    for p in problem:
      nRow = [str(idx*10)]
      idx =idx +1
      for a in apps:
        if "reference" in a:
          continue
        nRow.append(self.gainsData[p][a])
      writer.writerow(nRow)


  def calculateGains(self):
    problem = ["sobel-sequential","sobel-parallel4","multicamera"]
    apps    = ["reference", "always", "explore"]

    for p in problem:
      for a in apps:
          self.gainsData[p][a] = str(math.ceil( 100* (float(self.hypervolumeData[p][a]) - self.referenceHypervolume[p]) / self.referenceHypervolume[p]  ) ) 

  def readReferenceHypervolume(self, fileName, iteration):
    app = "reference"
    if "explore" in fileName:
      app = "explore"
    elif "always" in fileName:
      app = "always"

    if "reference" not in app:
      return

    ifile = open(fileName, "r") 
    reader = csv.reader(ifile,delimiter='\t')
    heading = reader.__next__()

    index_iteration = heading.index("iteration(avg)")
    index_hypervolumen = heading.index("indicator_hypervolume(avg)")

    problem = "sobel-sequential"
    if "sobel-parallel4" in fileName:
      problem = "sobel-parallel4"
    elif "multicamera" in fileName:
      problem = "multicamera"

    for row in reader:
      if float(iteration) == float(row[index_iteration]):
        self.referenceHypervolume[problem] =  1.0 - float(row[index_hypervolumen])

  def readTSV(self, fileName,iteration):

    ifile  = open(fileName, "r")
    reader = csv.reader(ifile,delimiter='\t')
    heading = reader.__next__()

    index_iteration      = heading.index('iteration(avg)')
    index_hypervolumen   = heading.index("indicator_hypervolume(avg)")
    index_hypervolumenDv = heading.index("indicator_hypervolume(dev)")

    problem = "sobel-sequential"
    if "sobel-parallel4" in fileName:
      problem = "sobel-parallel4"
    elif "multicamera" in fileName:
      problem = "multicamera"

    for row in reader:
      if float(iteration) == float(row[index_iteration]):
        mHypervolume = row[index_hypervolumen] 
        mDev = row[index_hypervolumenDv]
        app = "reference"
        if "explore" in fileName:
          app = "explore"
        elif "always" in fileName:
          app = "always"
        
        self.hypervolumeData[problem][app] = str(1-float(mHypervolume))
        self.devData[problem][app] = mDev

    ifile.close()

if __name__ == '__main__':
  help='''usage: %prog [options] <tsv files>", version=1.0'''

  parser = OptionParser(usage=help)
#  parser.add_option("-x", "--hypervolume", type="string", help="output file to store the hypervolume values!")
#  parser.add_option("-d", "--deviation", type="string", help="output file to store the std deviation values of  hypervolume!")
  parser.add_option("-g", "--gain", type="string", help="output file to store the gain!")
  parser.add_option("-i", "--iteration", type="string", help="iteration to perform the gain calculation!")
  (options, args) = parser.parse_args()

#  if not options.hypervolume:
#    print("%s: missing --hypervolume option!" % PROG, file=sys.stderr)
#    exit(-1)
#
#  if not options.deviation:
#    print("%s: missing --deviation option!" % PROG, file=sys.stderr)
#    exit(-1)

  if not options.gain:
    print("%s: missing --gain option!" % PROG, file=sys.stderr)
    exit(-1)

  if not options.iteration:
    print("%s: missing --iteration option!" % PROG, file=sys.stderr)
    exit(-1)

  if len(args) == 0:
    print("%s: missing args!" % PROG, file=sys.stderr)
    exit(1)

  tsvData = TSVDataPF()
  headings = ["app"]
#  headings.append("reference")
  headings.append("always")
  headings.append("explore")

#  ofile1  = open(options.hypervolume, "w")
#  writer1 = csv.writer(ofile1, delimiter='\t')
#  writer1.writerow(headings)
#
#  ofile2  = open(options.deviation, "w")
#  writer2 = csv.writer(ofile2, delimiter='\t')
#  writer2.writerow(headings)

  ofile3  = open(options.gain, "w")
  writer3 = csv.writer(ofile3, delimiter='\t')
  writer3.writerow(headings)

  for arg in args:
    tsvData.readReferenceHypervolume(arg,options.iteration)

  for arg in args:
    tsvData.readTSV(arg,options.iteration)

  tsvData.calculateGains()
#  tsvData.printHypervolume(writer1)
#  tsvData.printStandardDeviation(writer2)
  tsvData.printGain(writer3)

#  ofile1.close()
#  ofile2.close()
  ofile3.close()
  exit(0)
