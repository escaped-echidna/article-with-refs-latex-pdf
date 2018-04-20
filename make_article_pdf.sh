#!/bin/bash

# Make a pdf of an article from a tex file



pdflatex $1 

pdf_file_name="$1"
new_name="${pdf_file_name%.*}"
aux_ending=".aux"
aux_name= $new_name$aux_ending

bibtex $aux_name
pdflatex $1 
pdflatex $1 

rm "${new_name}.aux"
rm "${new_name}.bbl"
rm "${new_name}.blg"
rm "${new_name}.log"
rm "${new_name}.out"
rm "${new_name}.spl"


echo ----------------------------------------------
echo
echo PDF created



