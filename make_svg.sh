#!/bin/bash
if [ -z "$1" ]; then
    OUTPUT="images/$(date +%Y-%m-%d_%H.%M.%S).svg"
else
    OUTPUT="images/$1.svg"
fi
lualatex --output-format=dvi main.tex
dvisvgm --font-format=woff2 main.dvi --output=$OUTPUT
