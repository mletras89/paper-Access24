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

  globalData = []

  def averageAndPrintData(self, writerO ,headings):
    nParams = len(headings)
    nRows = len(self.globalData)
    resultRow = []
    for j in range(nParams):
      val = 0.0
      for row in self.globalData:
        val = val + float(row[j] )
      resultRow.append(str(val/nRows))
    writerO.writerow(resultRow)

  def readTSV(self, fileName,headings,iteration):

    ifile  = open(fileName, "r")
    reader = csv.reader(ifile,delimiter='\t')
    self.globalData = []

    heading = reader.__next__()

    index_iteration= heading.index('iteration')

    try:
      index_p = heading.index('Thp[MAX]')
    except:
      index_p = heading.index('Period[MIN]')

    indicesHeaders = {}

    for h in headings:
      try:
        index_h = heading.index(h)
        indicesHeaders[h] = index_h
      except:
        indicesHeaders[h] = -1

    for row in reader:
      # Skip INFEASIBLE results
      if "INFEASIBLE" in row[index_p]:
        continue
      if int(iteration) != int(row[index_iteration]):
        continue
      newRow = []
      for h in headings:
        indexH = indicesHeaders[h]
        if indexH != -1:
          newRow.append(row[indexH])
        else:
          newRow.append("0.0")

      self.globalData.append(newRow)
    ifile.close()

if __name__ == '__main__':
  help='''usage: %prog [options] <tsv files>", version=1.0'''

  parser = OptionParser(usage=help)
  parser.add_option("-o", "--output", type="string", help="output path where to put the result")
  parser.add_option("-i", "--iteration", type="string", help="iteration to perform the average!")
  (options, args) = parser.parse_args()

  if not options.output:
    print("%s: missing --output option!" % PROG, file=sys.stderr)
    exit(-1)

  if not options.iteration:
    print("%s: missing --iteration option!" % PROG, file=sys.stderr)
    exit(-1)

  if len(args) == 0:
    print("%s: missing args!" % PROG, file=sys.stderr)
    exit(1)

  tsvData = TSVDataPF()
  headings = ["LOG: %USED ϑ1"]
  headings.append("LOG: %USED ϑ2")
  headings.append("LOG: %USED ϑ3")
  headings.append("LOG: %USED hT1")
  headings.append("LOG: %USED hT2")
  headings.append("LOG: %USED hT3")
  headings.append("LOG: %USED hT4")
  headings.append("LOG: %USED TILE_LOCAL_MEM")
  headings.append("LOG: %USED NoC")
  headings.append("LOG: %USED GLOBAL_MEM")
  headings.append("LOG: %USED CORE_LOCAL_MEM")

  ofile  = open(options.output, "w")
  writer = csv.writer(ofile, delimiter='\t')
  writer.writerow(headings)

  for arg in args:
    tsvData.readTSV(arg,headings,options.iteration)


  tsvData.averageAndPrintData(writer,headings)
  ofile.close()
  exit(0)
