name = "Patrick Mowrer"
pandoc_cmd = pandoc -S $< -o $(name).$@

all: pdf odt docx doc html

pdf: html
	wkhtmltopdf index.html $(name).$@

odt: cv.md
	$(pandoc_cmd)

docx: cv.md
	$(pandoc_cmd)

doc: cv.md
	$(pandoc_cmd)

html: cv.md
	$(pandoc_cmd) -c style.css -o index.html
