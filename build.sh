#!/bin/bash
# Build script for LaTeX resume
# Based on: https://github.com/sb2nov/resume

set -e

FILE="daud-cv.tex"

if [ ! -f "$FILE" ]; then
    echo "Error: $FILE not found in current directory"
    exit 1
fi

echo "Compiling $FILE..."

# First pass
pdflatex -interaction=nonstopmode "$FILE"

# Second pass for references/hyperlinks
pdflatex -interaction=nonstopmode "$FILE"

echo "Build complete: daud-cv.pdf"
