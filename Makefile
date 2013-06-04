BINDIR?=/usr/bin
PREFIX?=/usr/X11R6
CFLAGS?=-Os -pedantic -Wall

all:
	$(CC) $(CFLAGS) -I$(PREFIX)/include tinywm.c -L$(PREFIX)/lib -lX11 -o tinywm

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 755 tinywm ${DESTDIR}${BINDIR}
		
clean:
	rm -f tinywm

