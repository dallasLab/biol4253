All: presentation.pdf notes.pdf

OStype := $(shell uname -s)

ifeq ($(OStype), Linux)
    view = evince
endif

ifeq ($(OStype), Darwin)
    view = open
endif

%.pdf: %.tex
		xelatex $(<F)
		xelatex $(<F)
		$(view) $@

clean:
		rm -fv *.aux *.log *.toc *.blg *.bbl *.synctex.gz
		rm -fv *.nav *.aux *.snm 
		rm -fv *.out *.bcf *blx.bib *.run.xml
		rm -fv *.fdb_latexmk *.fls
	
