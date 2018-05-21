UNAME := $(shell uname)

ifeq ($(OS),Windows_NT)
  VIEWER = '/c/Program\ Files\ \(x86\)/Adobe/Acrobat\ Reader\ DC/Reader/AcroRd32'
else
  VIEWER = evince
endif


all: TwoStepFilter.pdf

TwoStepFilter.pdf: TwoStepFilter.tex
	pdflatex TwoStepFilter.tex

edit:
	vim TwoStepFilter.tex

open: TwoStepFilter.pdf
	$(VIEWER) TwoStepFilter.pdf

clean:
	rm -f TwoStepFilter.log TwoStepFilter.aux TwoStepFilter.pdf
