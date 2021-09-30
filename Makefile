###############################################################################
#
# 	Makefile for the user manual of njuthesis
#
# 	Copyright (C) 2013 Haixing Hu,
#   Department of Computer Science and Technology, Nanjing University.
#
#	Home Page of the Project: https://github.com/Haixing-Hu/nju-thesis
#
###############################################################################

PROJECT=njuthesis
TEXSOURCE=$(shell ls *.tex)
BIB=njuthesis.bib

.PHONY: all clean

all:	$(PROJECT).pdf

$(PROJECT).pdf: $(PROJECT).tex $(BIB) $(TEXSOURCE)
	xelatex $(PROJECT).tex
	biber $(PROJECT)
	xelatex $(PROJECT).tex
	xelatex $(PROJECT).tex

###### clean

clean:
	-@rm -f \
		*.aux \
		*.bak \
		*.bbl \
		*.bcf \
		*.blg \
		*.dvi \
		*.glo \
		*.gls \
		*.idx \
		*.ilg \
		*.ind \
		*.ist \
		*.loe \
		*.lof \
		*.log \
		*.lot \
		*.out \
		*.ps \
		*.run.xml \
		*.thm \
		*.toc \
