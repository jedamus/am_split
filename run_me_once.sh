#!/usr/bin/env sh

# erzeugt Mittwoch, 20. November 2019 14:15 (C) 2019 von Leander Jedamus
# modifiziert Donnerstag, 15. August 2024 16:50 von Leander Jedamus
# modifiziert Montag, 12. August 2024 18:02 von Leander Jedamus
# modifiziert Mittwoch, 07. August 2024 14:23 von Leander Jedamus
# modifiziert Dienstag, 27. Februar 2024 07:58 von Leander Jedamus
# modifiziert Montag, 02. Dezember 2019 02:53 von Leander Jedamus
# modifiziert Montag, 25. November 2019 10:09 von Leander Jedamus
# modifiziert Donnerstag, 21. November 2019 07:10 von Leander Jedamus
# modifiziert Mittwoch, 20. November 2019 14:16 von Leander Jedamus

set -e

sh ./create_configure_ac.sh
sh ./create_project.sh project.h.in project.h
sh ./create_version.sh version.h.in version.h
sh ./create_translate_sh.sh

autoreconf --install
gettextize -f
mv po/Makevars.template po/Makevars
./configure
make
sh ./translate.sh
src/am_split --help
sleep 10
make distcheck

# vim:ai sw=2

