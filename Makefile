all: thesis.pdf

thesis.pdf: thesis.tex chap_1.tex chap_2.tex appendix_1.tex figures/*
	pdflatex thesis.tex -output-directory=build \
	&& biber thesis \
	&& biber thesis \
	&& pdflatex thesis.tex -output-directory=build \
	&& pdflatex thesis.tex
