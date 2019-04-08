TEXFILE = presentation

paper:
	xelatex $(TEXFILE).tex
	xelatex $(TEXFILE).tex
	rm -fv *.aux *.log *.toc *.blg *.bbl *.synctex.gz
	rm -fv *.out *.bcf *blx.bib *.run.xml
	rm -fv *.fdb_latexmk *.fls

view:
	evince $(TEXFILE).pdf &

clean:
	rm -fv *.aux *.log *.toc *.blg *.bbl *.synctex.gz
	rm -fv *.nav *.aux *.snm 
	rm -fv *.out *.bcf *blx.bib *.run.xml
	rm -fv *.fdb_latexmk *.fls
	
