PREFIX?=/usr/
BINDIR?=$(PREFIX)bin
DATAROOTDIR = $(PREFIX)/share
DESKTOPFILESDIR = $(DATAROOTDIR)/xsessions
MANDIR = $(DATAROOTDIR)/man
MAN1DIR = $(MANDIR)/man1

CFLAGS?=-Os -pedantic -Wall

all:
	$(CC) $(CFLAGS) -I$(PREFIX)/include tinywm.c -L$(PREFIX)/lib -lX11 -o tinywm

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 755 tinywm ${DESTDIR}${BINDIR}
	install -d ${DESTDIR}${DESKTOPFILESDIR}
	install -m 0644 tinywm.desktop ${DESTDIR}${DESKTOPFILESDIR}
	install -d ${DESTDIR}${MAN1DIR}
	install -m 0644 tinywm.1 ${DESTDIR}${MAN1DIR}
		
clean:
	rm -f tinywm
