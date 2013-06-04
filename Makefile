BINDIR?=/usr/bin
PREFIX?=/usr/X11R6
DATAROOTDIR = $(PREFIX)/share
THISMAKEFILE=$(lastword $(MAKEFILE_LIST))
SRC_DIR=$(dir $(THISMAKEFILE))
DESKTOPFILESDIR = $(DATAROOTDIR)/applications
CFLAGS?=-Os -pedantic -Wall

all:
	$(CC) $(CFLAGS) -I$(PREFIX)/include tinywm.c -L$(PREFIX)/lib -lX11 -o tinywm

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 755 tinywm ${DESTDIR}${BINDIR}
	install -m 0644 ${SRC_DIR}/tinywm.desktop ${DESTDIR}${DESKTOPFILESDIR}/
		
clean:
	rm -f tinywm
