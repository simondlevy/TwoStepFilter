UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
  VIEWER = open
endif

ifeq ($(UNAME), Linux)
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
