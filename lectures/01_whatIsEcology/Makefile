all:
	-Rscript -e 'try(rmarkdown::render("notes.Rmd", output_format = "pdf_document"))'
	-Rscript -e 'try(rmarkdown::render("presentation.Rmd"))'
	rm -fv *.aux *.log *.toc *.blg *.bbl *.synctex.gz
	rm -fv *.out *.bcf *blx.bib *.run.xml
	rm -fv *.fdb_latexmk *.fls *.snm *.nav
  
  
clean:
	rm -fv *.aux *.log *.toc *.blg *.bbl *.synctex.gz
	rm -fv *.out *.bcf *blx.bib *.run.xml
	rm -fv *.fdb_latexmk *.fls *.snm *.nav

