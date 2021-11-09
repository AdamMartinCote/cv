CV_NAME=$(shell date +%Y-%m-%d)-cv-adam.pdf

all: $(CV_NAME)

$(CV_NAME): *.tex *.cls
	latexmk -pdf -output-directory=out/ source.tex
	cp out/source.pdf $(CV_NAME)

clean:
	latexmk -C
	rm -rf *.aux *.dvi out/ ILE

.PHONY: clean
