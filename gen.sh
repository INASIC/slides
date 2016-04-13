#!/bin/bash

pandoc README.md -o index.html --toc --toc-depth=2

for mdfile in `ls _contents`; do
    pandoc "_contents/$mdfile" -o "contents/${mdfile%.md}.html" -t revealjs -s --template=slide.revealjs
done

git add *
git commit -m"update contents"
git push origin gh-pages