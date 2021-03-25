ALL: 01_whatIsEcology/notes.pdf 01_whatIsEcology/presentation.pdf 02_popDynamics/notes.pdf 03_behavior/notes.pdf 04_niche/notes.pdf 05_communityComposition/notes.pdf 06_landscapeStructure/notes.pdf 07_trophicInteractions/notes.pdf 07_trophicInteractions/presentation.html 08_diseaseEcology/notes.pdf 08_diseaseEcology/presentation.html 09_plantPollinator/notes.pdf 09_plantPollinator/presentation.html 10_envChange/notes.pdf 10_envChange/presentation.html 11_macroecology/notes.pdf 11_macroecology/presentation.html

OStype := $(shell uname -s)

ifeq ($(OStype), Linux)
	   view = evince
endif

ifeq ($(OStype), Darwin)
	   view = open
endif

%.pdf: %.tex
	cd $(@D); if [[ $< == *notes.tex ]]; then xelatex $(<F); fi
	$(view) $@

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
