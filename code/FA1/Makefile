projectname=	$(shell pwd | xargs basename)
filename=		${projectname}.hs

${filename}: Main.hs Test.hs
	echo "{-# START_FILE Main.hs #-}" > ${filename}
	cat Main.hs >> ${filename}
	echo "{-# START_FILE Test.hs #-}" >> ${filename}
	cat Test.hs >> ${filename}

push: ${filename}
	scp ${filename} ob.cs.hm.edu:www/static/docs/lectures/compiler/code/

clean:
	rm -f ${filename}
