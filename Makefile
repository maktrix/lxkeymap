INSTALL=	install
APPDIR=	    /usr/local/share/lxkeymap/
RWPERM=		0666
RWXPERM=	0777

install:
	${INSTALL} -d ${DESTDIR}${APPDIR}/lxkeymap/
	${INSTALL} -d ${DESTDIR}${APPDIR}/media/
	${INSTALL} -d ${DESTDIR}${APPDIR}/ui/
	${INSTALL} -m ${RWPERM} lxkeymap/*.* ${DESTDIR}${APPDIR}lxkeymap/
	${INSTALL} -m ${RWPERM} data/media/*.* ${DESTDIR}${APPDIR}media/
	${INSTALL} -m ${RWPERM} data/ui/*.* ${DESTDIR}${APPDIR}ui/
	${INSTALL} -d ${DESTDIR}/usr/local/bin/
	${INSTALL} -m ${RWXPERM} -D bin/lxkeymap ${DESTDIR}/usr/local/bin/
