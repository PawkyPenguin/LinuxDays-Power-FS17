#!/bin/bash

build_vars="-t beamer --verbose --template=resources/template.tex --listings --latex-engine=xelatex $template_vars"

if [[ $1 == '--latex' ]]; then
	pandoc $build_vars -f markdown [0-9]*-*.md -o "power.tex"
else
	pandoc $build_vars -f markdown [0-9]*-*.md -o "power.pdf"
fi
