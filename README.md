# PhD Research Proposal (LaTeX)

This repository contains a LaTeX template and build scripts for preparing a PhD research proposal, following the CHRIST (Deemed to be University) format.

## Features

- Modular LaTeX structure with sections for abstract, introduction, literature survey, methodology, and more
- IEEE-style bibliography management with `biblatex` and Biber
- Automated build script for compiling and viewing the PDF
- Easy package installation via requirements.txt and shell script

## Getting Started

### 1. Install TeX Distribution

- **macOS:** [MacTeX](https://tug.org/mactex/)
- **Linux/Windows:** [TeX Live](https://www.tug.org/texlive/)

### 2. Install Required LaTeX Packages

Run the following command to install all required LaTeX packages listed in `requirements.txt`:

```sh
zsh install-latex-packages.sh
```

### 3. Build the Proposal PDF

To compile the main proposal (default: `christ-template.tex`):

```sh
zsh build.sh
```

To compile a different root file (e.g., `sections/research-proposal.tex`):

```sh
zsh build.sh sections/research-proposal.tex
```

The script will automatically open the resulting PDF on macOS.

## Project Structure

- `christ-template.tex` — Main LaTeX file
- `sections/` — Contains modular section files (abstract, introduction, etc.)
- `references.bib` — Bibliography database
- `build.sh` — Build script for compiling the proposal
- `install-latex-packages.sh` — Script to install required LaTeX packages
- `requirements.txt` — List of required LaTeX packages
- `requirements.md` — Human-readable list of requirements and instructions
- `templates/` — Example proposal templates (PDF)

## Cleaning Up

Intermediate and output files are ignored via `.gitignore`.

## Customization

- Edit `christ-template.tex` and section files in `sections/` to fit your research proposal.
- Update `requirements.txt` if you add/remove LaTeX packages.

## License

This repository is provided for academic use. Please adapt as needed for your institution's requirements.
