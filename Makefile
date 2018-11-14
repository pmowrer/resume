name = "Patrick Mowrer"
pandoc_cmd = pandoc -S $< -o $(name).$@

all: pdf odt docx doc

pdf: cv.md
	$(pandoc_cmd) -V geometry:margin=1in

odt: cv.md
	$(pandoc_cmd)

docx: cv.md
	$(pandoc_cmd)

doc: cv.md
	$(pandoc_cmd)
