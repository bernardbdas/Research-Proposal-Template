# LaTeX Project Requirements

## TeX Distribution
- TeX Live (recommended) or MacTeX (for macOS)

## Required Build Tools
- pdflatex
- biber

## Required LaTeX Packages
(Listed based on common requirements; please update if you add/remove packages in your .tex files)
- amsmath
- amssymb
- geometry
- graphicx
- hyperref
- natbib
- biblatex
- xcolor
- fontenc
- inputenc
- setspace
- titlesec
- fancyhdr
- enumitem
- booktabs
- caption
- subcaption
- listings
- url

## Bibliography
- Biber (for .bcf/.bbl processing)
- references.bib (your bibliography file)

---

To install all packages on MacTeX/TeX Live, you can use:

    tlmgr install <package-name>

Or install the full TeX Live distribution for all common packages.

---

If you add new packages via \usepackage in your .tex files, update this list accordingly.
