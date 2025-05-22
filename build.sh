#!/bin/zsh

set -e

# Default root file
ROOT_TEX="christ-template.tex"

# Allow user to specify a different root file as the first argument
if [ $# -ge 1 ]; then
  ROOT_TEX="$1"
fi

# Remove .tex extension for auxiliary files
ROOT_NAME="${ROOT_TEX%.tex}"

# Move to the script's directory (project root)
cd "$(dirname "$0")"

# Compile LaTeX, run Biber, then recompile LaTeX twice
sudo pdflatex "$ROOT_TEX"
sudo biber "$ROOT_NAME"
sudo pdflatex "$ROOT_TEX"
sudo pdflatex "$ROOT_TEX"

echo "Build complete. Check ${ROOT_NAME}.pdf for output."

# Open the resulting PDF (macOS)
open "${ROOT_NAME}.pdf"
