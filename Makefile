CURDIR:=$(shell pwd)
TEXINPUTS:=.:${CURDIR}//:
jstatsoft-rinperl.pdf: paper/jstatsoft-rinperl.tex paper/*.tex
		export TEXINPUTS
		cd paper/ \
		&& pdflatex -output-directory ${CURDIR} -interaction=nonstopmode jstatsoft-rinperl \
		&& pdflatex -output-directory ${CURDIR} -interaction=nonstopmode jstatsoft-rinperl \
		&& pdflatex -output-directory ${CURDIR} -interaction=nonstopmode jstatsoft-rinperl \
		&& pdflatex -output-directory ${CURDIR} -interaction=nonstopmode jstatsoft-rinperl
		#&& bibtex paper \

# ~/make/texclean.mk
clean:
	-rm -f *.out *.log *.aux *.toc *.bbl *.blg *.nav *.snm *.vrb *.tpt *.lof *.lot
cleanall:	clean
	-rm -f *.pdf *.dvi

.PHONY:	clean cleanall
