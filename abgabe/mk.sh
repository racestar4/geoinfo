#!/bin/bash

rm main.pdf
rm main.aux
rm main.toc
rm main.dvi
rm main.log
rm main.blg
rm main.bcf
rm main.bbl
rm main.log

pdflatex -draftmode -interaction nonstopmode main.tex >/dev/null
bibtex main >/dev/null
bibtex main >/dev/null
pdflatex -interaction nonstopmode main.tex >/dev/null
pdflatex -interaction nonstopmode main.tex
rm /var/www/html/jbock/abgabe/main.pdf
cp main.pdf /var/www/html/jbock/abgabe

