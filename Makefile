All: syllabus.pdf finalProjectRubric.pdf

%.pdf: %.md
	pandoc $(<F) --to latex --from markdown+autolink_bare_uris+tex_math_single_backslash --output $@


clean:
	rm syllabus.pdf finalProjectRubric.pdf
