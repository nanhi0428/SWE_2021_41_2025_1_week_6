#!/bin/bash

if [ ! -d "files" ]; then
    echo "'files' directory not found. Please make sure you're running this script in the repository's root directory."
    exit 1
fi

for filepath in files/*; do
    if [ -f "$filepath" ]; then
        filename=$(basename "$filepath")
        first_char=$(echo "$filename" | cut -c1 | tr 'A-Z' 'a-z')

        if [[ "$first_char" =~ [a-z] ]]; then
            mv "$filepath" "$first_char/"
        fi
    fi
done