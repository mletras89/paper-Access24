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

  def printData(self,writer):
    distilledTableData = []
    for row in self.globalData:
       writer.writerow(row)

  def readTSV(self, fileName):

    ifile  = open(fileName, "r")
    reader = csv.reader(ifile,delimiter='\t')
    self.globalData = []
    heading = reader.__next__()
#   index_tp       = [n for n in xrange(0, len(heading)) if heading[n]=="#throughput_pthread[MAX]"][0]
    index_iteration= heading.index('iteration')
    index_eval= heading.index('evaluations')
    index_runtime  = heading.index('runtime[s]')
    index_p = heading.index('Period[MIN]')
    index_memory = heading.index('MemFootprint[MIN]') 
    index_cost  = heading.index('ResourcesCost[MIN]')

    for row in reader:
      # Skip INFEASIBLE results
      if "INFEASIBLE" in row[index_p]:
        continue
      it = row[index_iteration]
      ev = row[index_eval]
      rt = row[index_runtime]
      period   = row[index_p]
      cost  = row[index_cost]
      mem   = row[index_memory]
      self.globalData.append([it,ev,rt,mem,cost,str(1/float(period))])

if __name__ == '__main__':
  help='''usage: %prog [options] <tsv files>", version=1.0'''

  parser = OptionParser(usage=help)
  parser.add_option("-o", "--output", type="string", help="output path where to put the result")
#  parser.add_option("-i", "--input", type="string", help="intput CSV file")
  (options, args) = parser.parse_args()

  if not options.output:
    print("%s: missing --output option!" % PROG, file=sys.stderr)
    exit(-1)

  if len(args) == 0:
    print("%s: missing args!" % PROG, file=sys.stderr)
    exit(1)

#  if not options.input:
#    print("%s: missing --input option!" % PROG, file=sys.stderr)
#    exit(-1)

  tsvData = TSVDataPF()
  for arg in args:
    ofile  = open(options.output+"/"+arg, "w")
    writer = csv.writer(ofile, delimiter='\t')
  
    tsvData.readTSV(arg)

    headings = ["iteration"]
    headings.append("evaluations")
    headings.append("runtime[s]")
    headings.append("MemFootprint[MIN]")
    headings.append("ResourcesCost[MIN]")
    headings.append("Thp[MAX]")

    writer.writerow(headings)
    tsvData.printData(writer)
    ofile.close()
  exit(0)
