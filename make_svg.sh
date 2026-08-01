#!/bin/bash
if [ -z "$1" ]; then
    OUTPUT="images-no-fonts/$(date +%Y-%m-%d_%H.%M.%S).svg"
else
    OUTPUT="images-no-fonts/$1.svg"
fi
lualatex --output-format=dvi main.tex
# dvisvgm --font-format=woff2 main.dvi --output=$OUTPUT
dvisvgm --no-fonts main.dvi --output=$OUTPUT
