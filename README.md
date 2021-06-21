This repository is a template for writing papers using markdown. It can output both pdf and docx files. 

# Required packages:
- [pandoc](https://pandoc.org/)
- [pandoc-crossref](https://lierdakil.github.io/pandoc-crossref/) 
- [pandoc-citeproc](https://github.com/jgm/pandoc-citeproc) 
- [python-docx](https://github.com/python-openxml/python-docx) 

# Installation:
- conda install -c conda-forge pandoc
- conda install -c conda-forge pandoc-crossref

# Usage

After cloning and making appropriate changes in Makefile, type:
- make (to output both pdf and docx)
- make pdf (to output pdf only)
- make docx (to output docx only)

Follow [this link](https://guides.github.com/features/mastering-markdown/) for learning Markdown syntax.

# Resources:

- [CSL file for journals](https://github.com/citation-style-language/styles)
- [Pandoc Templates](https://github.com/jgm/pandoc-templates/blob/master/default.latex)
- [Some other pandoc templates](https://github.com/kjhealy/pandoc-templates)
- [Example latex template for thesis.](https://github.com/Wandmalfarbe/pandoc-latex-template)

