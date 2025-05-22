#!/bin/zsh
# install-latex-packages.sh
# Install LaTeX packages listed in requirements.txt using tlmgr

REQUIREMENTS_FILE="requirements.txt"

if [ ! -f "$REQUIREMENTS_FILE" ]; then
    echo "requirements.txt not found!"
    exit 1
fi

while IFS= read -r pkg || [ -n "$pkg" ]; do
    # Skip comments and blank lines
    if [[ "$pkg" =~ ^# ]] || [[ -z "$pkg" ]]; then
        continue
    fi
    echo "Installing $pkg..."
    tlmgr install "$pkg"
done <"$REQUIREMENTS_FILE"

echo "All packages from $REQUIREMENTS_FILE have been processed."
