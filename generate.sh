#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: Directory $1 does not exist."
  exit 1
fi

if [ ! -f "$1/000-metadata.md" ]; then
  echo "Error: 000-metadata.md not found in $1."
  exit 1
fi

mkdir temp
cd "$1"
cp * ../temp
cd ../temp
echo "---" >> 000-metadata.md
shopt -s extglob
pandoc -o temp.pdf --toc !(README).md
mv temp.pdf ../
cd ..
rm -r temp
zathura temp.pdf
rm temp.pdf
