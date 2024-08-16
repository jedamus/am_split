LDADD = -lhelper -lpopt -lm
AM_LDFLAGS = -L../lib
AM_CPPFLAGS = -I../lib -I../../../lib

bin_PROGRAMS = am_split
am_split_SOURCES = types.h gettext.h main.c
am_split_CPPFLAGS = -DAUTOMAKE=1 -DCONST=const -DLOCALEDIR=\"$(localedir)\" -I../lib -I../../../lib
