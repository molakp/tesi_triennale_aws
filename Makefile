main.pdf: index.tex ack.tex abstract.tex intro.tex spec.tex test.tex tesi.bib
	pdflatex -shell-escape index-frn.tex
	pdflatex -shell-escape index.tex
	bibtex index
	pdflatex -shell-escape index.tex
	pdflatex -shell-escape index.tex

thesis: main.pdf

#frontespizio: frontespizio.tex
#	pdflatex frontespizio
#	pdflatex frontespizio-frn
#	mv frontespizio-frn.pdf images/frontespizio.pdf
