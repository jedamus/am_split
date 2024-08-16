SUBDIRS = lib src po
dist_doc_DATA = README README.md
#am_split_SOURCES = project.h version.h
EXTRA_DIST = run_me_once.sh translate.sh

clean-local:
	    @rm config.status configure config.log config.h.in config.h config.guess config.sub || true
	    @rm Makefile ABOUT-NLS  || true
	    @rm -r autom4te.cache m4 || true
	    @rm aclocal.m4 || true
	    @rm compile install-sh missing Makefile.in || true
	    @mv Makefile.am~ Makefile.am || true
	    @rm Makefile.in~  || true
	    @rm ar-lib depcomp config.rpath  || true
	    @rm ChangeLog ChangeLog~ stamp-h1 || true
	    @rm translate.sh || true
