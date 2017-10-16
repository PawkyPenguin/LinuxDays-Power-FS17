#!/bin/bash

build_vars="-t beamer --verbose --template=resources/template.tex --listings --latex-engine=xelatex $template_vars"

if [[ -n $1 ]]; then
	pandoc $build_vars "$1" -o "${1%.md}.pdf"
else
	pandoc $build_vars -f markdown [0-9]*-*.md -o "power.pdf"
fi
