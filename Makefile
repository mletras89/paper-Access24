# vim: set noet ts=8 sts=0 sw=2:

RESDIR=$(shell while [ ! -d HscdTeXRes -a x`pwd` != x'/' ]; do cd ..; done; cd HscdTeXRes; pwd)

BIB_SOURCES=literature.bib
TEX_SOURCES=paper.tex

doc: tex-all

all:

SUBDIRS=

TEXCLEANDIRS=. #figures
TEXINPUTS:=.:figures:$(RESDIR):$(TEXINPUTS)

include $(RESDIR)/Rules-TeX-PDF.mk targetsILPModuloScheduling.mk targetsHeuristicModuloSchedulingBindingsDSE.mk targetsILPUtilization.mk targetsHeuristicUtilization.mk targetsCombinedModuloScheduling.mk targetsGains.mk

PDFLATEX=pdflatex -shell-escape --file-line-error-style

%.cls:   %.ins %.dtx
	pdflatex $<

#$(TEX_TARGETS): IEEEtran.cls

force:
	$(MAKE) clean
	$(MAKE) tex-all

clean:
	@rm -f csv/*/*.csv csv/*/*/*.csv plots/*.{log,dep,dpth,pdf,mdf5,md5}



.PHONY: todo force all 
