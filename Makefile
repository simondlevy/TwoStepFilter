UNAME := $(shell uname)

ifeq ($(OS),Windows_NT)
  VIEWER = '/c/Program\ Files\ \(x86\)/Adobe/Acrobat\ Reader\ DC/Reader/AcroRd32'
else
  VIEWER = evince
endif


all: hsshbt.pdf

hsshbt.pdf: hsshbt.tex
	pdflatex hsshbt.tex

edit:
	vim hsshbt.tex

open: hsshbt.pdf
	$(VIEWER) hsshbt.pdf

clean:
	rm -f hsshbt.log hsshbt.aux hsshbt.pdf
