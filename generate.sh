#!/bin/bash

mkdir temp
cd "$1"
cp * ../temp
cd ../temp
echo "---" >> 000-metadata.md
pandoc -f markdown-implicit_figures -o temp.pdf --toc *.md
mv temp.pdf ../
cd ..
rm -r temp
zathura temp.pdf
rm temp.pdf
