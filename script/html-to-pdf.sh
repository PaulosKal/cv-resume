#!/bin/bash

pandoc CV.html -o CV.tex
tail -n +3 CV.tex | sed "s/\\\%7B\\\%7Bsite.baseurl\\\%7D\\\%7D\///g" > output.tex
pandoc output.tex -o CV.pdf \
--latex-engine=xelatex \
-V mainfont="LiberationMono-Regular.ttf" \
-V mainfontoptions="BoldFont=LiberationMono-Bold.ttf, ItalicFont=LiberationMono-Italic.ttf, BoldItalicFont=LiberationMono-BoldItalic.ttf"
mv CV.pdf ../
