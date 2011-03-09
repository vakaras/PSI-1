default: fresh

# Sugeneruoti straipsnį.
dokumentas.pdf:
	xelatex main.tex
	makeglossaries -L lithuanian main
	bibtex main
	xelatex main.tex
	xelatex main.tex
	makeglossaries -L lithuanian main
	xelatex main.tex
	mv main.pdf dokumentas.pdf

fresh: clear dokumentas.pdf

# Išvalyti šiukšles.
clean:
	rm -f *.aux *.log *.xdv *.out *.toc *.bbl *.blg *.acn *.acr *.glg \
		*.glo *.gls *.xdy *.ist

# Ištrinti visus sugeneruotus failus.
clear: clean
	rm -f *.pdf

# Įkelti sukompiliuotą dokumentą į serverį.
upload: dokumentas.pdf
	scp dokumentas.pdf 77.79.7.73:~/failai/psi1/dokumentas.pdf
