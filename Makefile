fig = ./figures/
tab = ./tables/
bib = ./ref.bib
csl = ./template/nature.csl
filters = ./filters
template = ./template/paper.tex
ref = /home/Mendeley/ref.bib

upp = ./head
main = ./main
tem = ./doc.md

lua = --lua-filter=$(filters)/pagebreak.lua \
      --lua-filter=$(filters)/scholarly-metadata.lua \
      --lua-filter=$(filters)/author-info-blocks.lua
      
arg = -F pandoc-crossref -F pandoc-citeproc 
com = cat $(upp).md $(main).md > $(tem); pandoc $(tem) $(arg) --csl $(csl) --bibliography $(bib)

all:	pdf docx

bib:    $(ref)
	cp $(ref) $(bib)

copy:
	cp /home/pankaj/figures/*.pdf $(fig)
	cp /home/pankaj/tables/* $(tab)

pdf:	$(main).md $(upp).md $(bib)
	$(com) -s --template=$(template) --pdf-engine=xelatex -o $(main).pdf
	rm -rf $(tem)

docx:	$(main).md $(upp).md $(bib)
	$(com) $(lua) -o $(main).docx
	rm -rf $(tem)

clean:	
	rm -rf *.pdf *.docx
