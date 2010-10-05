default: fresh

# Sugeneruoti straipsnį.
dokumentas.pdf:
	xelatex main.tex
	bibtex main
	xelatex main.tex
	xelatex main.tex
	mv main.pdf dokumentas.pdf

fresh: clear dokumentas.pdf

# Išvalyti šiukšles.
clean:
	rm -f *.aux *.log *.xdv *.out *.toc *.bbl *.blg

# Ištrinti visus sugeneruotus failus.
clear: clean
	rm -f *.pdf
