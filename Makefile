# (c) 2014 Oliver Braun

SRCS:=	00_Organisatorisches.txt \
		01_Introduction.txt \
		02_Scanners.txt \
		03_Parsers.txt \
		04_Zwischenrepraesentationen.txt \
		05_Optimierungstechniken.txt \
		go.txt \
		Leistungsnachweis.txt \
		AufgabenKlausur.txt \

IMG_SRC=	01/IR.dot \
			\
			02/FAnew.dot \
			02/FAnewnotwhile.dot \
			02/FAposInt.dot \
			02/FAjavacomments.dot \
			02/CycleOfConstructions.dot \
			02/FAn.dot \
			02/FAm.dot \
			02/FAnandm.dot \
			02/FAnandm2.dot \
			02/FAastar.dot \
			02/FAab.dot \
			02/FAastarab.dot \
			02/DFAastarab.dot \
			02/NFAa.dot \
			02/NFAb.dot \
			02/NFAab.dot \
			02/NFAaorb.dot \
			02/NFAastar.dot \
			02/NFAabc.dot \
			\
			03/parsetree1.dot \
			03/parsetree2.dot \
			03/parsetree3.dot \
			03/parsetree4.dot \
			03/parsetree5.dot \
			\
			04/IR.dot \
			04/Parsebaum.dot \
			04/AST.dot \
			04/DAG.dot \
			04/while.dot \
			04/ifthenelse.dot \
			04/dg.dot \

LECTURE_NAME:=	compiler
SEMESTER:=	Sommersemester 2014

GITHUB=	YES

LECTURE_INCLUDES=	../../includes

includes/lecture.mk:
	ln -sF $(LECTURE_INCLUDES) includes
	ln -sF $(LECTURE_INCLUDES)/slidy slidy

include includes/lecture.mk
