all: constitution bylaws

constitution: constitution.pdf
constitution.pdf: constitution.tex constitution_articles/*.tex
	latexmk -dvi- -pdf -outdir=out_constitution constitution.tex
	mv out_constitution/$@ .

bylaws: bylaws.pdf
bylaws.pdf: bylaws.tex bylaws_articles/*.tex
	latexmk -dvi- -pdf -outdir=out_bylaws bylaws.tex
	mv out_bylaws/$@ .

.PHONY: all clean

clean:
	rm constitution.pdf bylaws.pdf
	rm -rf out_constitution out_bylaws
