$FILE=my-cv.pdf

.PHONY: pdf clean
pdf:
	latexmk -pdf -output-directory=out/ source.tex
	cp out/cv.pdf my-cv.pdf

clean:
	latexmk -C
	rm -rf *.aux *.dvi out/ ILE
