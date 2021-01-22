ALL: 07_trophicInteractions/notes.pdf 07_trophicInteractions/presentation.html 08_diseaseEcology/notes.pdf 09_plantPollinator/notes.pdf 10_envChange/notes.pdf 11_macroecology/notes.pdf

OStype := $(shell uname -s)

ifeq ($(OStype), Linux)
	   view = evince
endif

ifeq ($(OStype), Darwin)
	   view = open
endif

%.pdf: %.Rmd
	if [[ $< == *notes* ]]; then Rscript -e 'rmarkdown::render("$<", output_format = "bookdown::pdf_document2")'; fi
	$(view) $@

%.html: %.Rmd
	if [[ $< == *presentation* ]] ; then Rscript -e 'rmarkdown::render("$<")'; fi
	$(view) $@
			
clean:
	rm -fv */*.aux */*.log */*.toc */*.blg */*.bbl */*.synctex.gz
	rm -fv */*.nav */*.aux */*.snm 
	rm -fv */*.out */*.bcf */*blx.bib */*.run.xml
	rm -fv */*.fdb_latexmk */*.fls
