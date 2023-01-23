name = "Patrick Mowrer"
pandoc_cmd = pandoc $< -o $(name).$@

all: pdf odt docx html

pdf: html
	wkhtmltopdf index.html $(name).$@

odt: cv.md
	$(pandoc_cmd)

docx: cv.md

html: cv.md
	$(pandoc_cmd) -c style.css -o index.html
