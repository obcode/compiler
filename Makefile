# (c) 2014 Oliver Braun

SRCS:=	00_Organisatorisches.txt \
		01_Introduction.txt \
		02_Scanners.txt \
		Leistungsnachweis.txt \

IMG_SRC=	01/IR.dot \
			02/FAnew.dot \
			02/FAnewnotwhile.dot \
			02/FAposInt.dot \
			02/FAjavacomments.dot \

GERMAN= #

LECTURE_NAME:=	compiler
SEMESTER:=	summer term 2014

GITHUB=	YES

LECTURE_INCLUDES=	../../includes

includes/lecture.mk:
	ln -sF $(LECTURE_INCLUDES) includes
	ln -sF $(LECTURE_INCLUDES)/slidy slidy

include includes/lecture.mk
