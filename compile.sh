#!/bin/bash

template="template.html"
output_dir="out"

mkdir -p "$output_dir"

for file in *.md; do
    output_file="${output_dir}/${file%.md}.html"
    pandoc --template="$template" -s -f gfm -t html -o "$output_file" "$file"
done

mv "$output_dir/README.html" "$output_dir/index.html"
