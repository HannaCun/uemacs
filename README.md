uemacs
======

MicroEMACS, a.k.a.uemacs, ported from FreeBSD ports collection, [(http://debian.physik.uni-essen.de/misc/memacs/disk2/ue400dev.zip)]

uemacs is intended to be a small, fast, and portable editor for people who
can't (or don't want to) run emacs for one reason or another, or are not
familiar with the vi editor. It is compatible with emacs because there
shouldn't be any reason to learn more editor types than emacs or vi.

This repository aggressively tracks upstream.

Compiling
---------
`uemacs` use directly a hand-written `POSIX` `Makefile`.
```
$ make -j8
$ make install
```

To uninstall `uemacs`, execute:

```
$ make uninstall
```
Or:

```
$ make deinstall
```

Dependencies
------------
By default, you need the ncurses library.

NetBSD users will use the in-base NetBSD curses library.

If you do not have the ncurses library, you must install it first.
There are no extra dependencies other than the system's libc and ncurses.

Testing
-------
Tested on recent versions of Arch, Alpine, Cygwin, Debian, DragonFly BSD,
FreeBSD, Mac OS X (10.4 or later), NetBSD, Slackware, and Ubuntu.
