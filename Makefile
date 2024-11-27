FLAGS  = -f -pdf -quiet -pv
CLEANFLAG = -c
TARGET = Main.tex
EXTRACLEAN = *.maf *.mtc* *.tdo *.nls *.nlo *.brf *.nav *.snm *.vrb

all: 
	latexmk ${FLAGS} ${TARGET}

cleanall: changevar clean

changevar:
	$(eval CLEANFLAG=-C -bibtex)

clean:
	latexmk ${CLEANFLAG}; rm ${EXTRACLEAN}
