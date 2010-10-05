==========================================
Programų sistemų inžinerijos pirmas darbas
==========================================

Failai
======

+ `darbai.rst` – darbų sąrašas, taip pat kas kokį darbą šiuo metu atlieka.
+ `bibliography.bib` – bibliografijos šaltinių sąrašas. Kaip juo naudotis
  parašyta čia: 
  http://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#BibTeX. 
  (Nebūtina ištrinti nereikalingų šaltinių, nes į sugeneruotą sąrašą
  įtraukiami tik tie, kuriais buvo pasinaudota.)
+ `dokumentas.pdf` – sukompiliuotas dokumentas. Sukompiliuoti galima su
  komanda (reikalavimus žr. `Reikalavimai`_):

  .. code-block:: sh
    make; make clean

Ignoruojami failų formatai 
==========================

Reikia pridėti į `.git/info/exclude`:

+ `*.aux`
+ `*.log`
+ `*.out`
+ `*.toc`
+ `*.xdv`
+ `*.bbl`
+ `*.blg`

Naudingos nuorodos
==================

+ `LaTeX` vadovėlis: 
  http://en.wikibooks.org/wiki/LaTeX/Bibliography_Management

Reikalavimai
============

.. code-block:: sh
  sudo apt-get install textlive-full texlive-xetex
