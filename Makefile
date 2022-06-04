BINDIR=/usr/local/bin

all:
	@echo 'run make (un)install, as root unless DESTDIR is set appropriately'

install:
	install -d ${DESTDIR}${BINDIR}
	install togglemount ${DESTDIR}${BINDIR}

uninstall:
	rm -f ${DESTDIR}${BINDIR}/togglemount
