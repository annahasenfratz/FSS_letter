FILE = fss

all:
	cp $(FILE).bbl.sav $(FILE).bbl
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex

bib:
	pdflatex $(FILE).tex
	bibtex $(FILE)
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex
