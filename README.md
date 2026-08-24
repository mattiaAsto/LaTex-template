# LaTeX Template

A modular LaTeX template for reports, theses, and other structured documents.

This repository separates the document structure from the preamble and content, so you can manage layout, packages, and chapters independently.

---

## Repository structure

- `main.tex`
    - Root file
    - Defines `\documentclass`
    - Loads preamble files
    - Includes sections/chapters
    - Handles bibliography generation

- `Preambles/packages.tex`
    - Package imports with `\usepackage`

- `Preambles/style.tex`
    - Page geometry
    - Headers/footers
    - Font and layout settings

- `Preambles/commands.tex`
    - Custom macros and shortcuts

- `Sections/` or `Chapters/`
    - Individual content files
    - Keep document text modular and easier to maintain

- `references.bib`
    - Bibliography database

---

## Setup

### Option A: Overleaf

1. Download the repository ZIP from GitHub
2. Upload it to Overleaf as a new project
3. Compile the project

### Option B: Local

1. Install a TeX distribution
     - Windows: MiKTeX
     - macOS: MacTeX
     - Linux: TeX Live
2. Use an editor such as VS Code with LaTeX Workshop or Texmaker
3. Clone the repository and compile:

```bash
git clone https://github.com/mattiaAsto/LaTex-template.git
cd LaTex-template
pdflatex main.tex
```

For full build automation, consider using `latexmk -pdf main.tex`.

---

## Customization

- Change margins: edit `Preambles/style.tex` and update `\geometry{...}`
- Add packages: edit `Preambles/packages.tex`
- Add citations: edit `references.bib`
- Change title and author: edit `main.tex`

---

## Contributing

If you find issues or want to suggest improvements, open an issue or submit a pull request.

Author: [Mattia Astori](https://github.com/mattiaAsto)  
License: MIT