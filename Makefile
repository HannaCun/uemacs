#
# simple makefile for uemacs
#

BSD_INSTALL_PROGRAM	=	/usr/bin/install
PREFIX	=	/usr/dmr/.local
BSD_INSTALL_DATA	=	cp -r

all:
	(cd linux; make emacs)

install:	all
	strip linux/emacs
	${BSD_INSTALL_PROGRAM} linux/emacs ${PREFIX}/bin/uemacs
	mkdir -p ${PREFIX}/share/uemacs
	${BSD_INSTALL_DATA} cmd/* ${PREFIX}/share/uemacs
	mv ${PREFIX}/share/uemacs/emacs.rc ${PREFIX}/share/uemacs/.emacsrc

uninstall:
	rm -rfv ${PREFIX}/bin/uemacs
	rm -rfv ${PREFIX}/share/uemacs

deinstall:	uninstall

clean:
	(cd linux; make clean)
