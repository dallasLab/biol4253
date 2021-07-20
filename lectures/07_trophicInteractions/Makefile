all:
	-xelatex notes.tex
	rm -fv *.aux *.log *.toc *.blg *.bbl *.synctex.gz
	rm -fv *.out *.bcf *blx.bib *.run.xml
	rm -fv *.fdb_latexmk *.fls *.snm *.nav
	-xelatex presentation.tex
	rm -fv *.out *.bcf *blx.bib *.run.xml
	rm -fv *.fdb_latexmk *.fls *.snm *.nav
	-Rscript -e 'try(rmarkdown::render("$<", output_format = "pdf_document"))'
  
  
clean:
	rm -fv *.aux *.log *.toc *.blg *.bbl *.synctex.gz
	rm -fv *.out *.bcf *blx.bib *.run.xml
	rm -fv *.fdb_latexmk *.fls *.snm *.nav

