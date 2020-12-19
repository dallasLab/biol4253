All: syllabus.pdf finalProjectRubric.pdf

OStype := $(shell uname -s)

ifeq ($(OStype), Linux)
    comm = evince
endif

ifeq ($(OStype), Darwin)
    comm = open
endif

%.pdf: %.md
	pandoc $(<F) --to latex --from markdown+autolink_bare_uris+tex_math_single_backslash --output $@
	$(comm) $@ 

clean:
	rm syllabus.pdf finalProjectRubric.pdf
