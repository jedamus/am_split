#!/usr/bin/env sh

# erzeugt Mittwoch, 07. August 2024 14:12 (C) 2024 von Leander Jedamus
# modifiziert Montag, 12. August 2024 16:23 von Leander Jedamus
# modifiziert Mittwoch, 07. August 2024 14:59 von Leander Jedamus

infile=configure.ac.in
outfile=configure.ac
project_filename="project.txt"
version_filename="version.txt"
author_filename="author.txt"
email_filename="email.txt"
years_filename="years.txt"

for file in $infile $project_filename $version_filename $author_filename $email_filename $years_filename; do
  if [ ! -f $file ]; then
    echo "$file not found."
    exit 1
  fi
done

project=$(cat $project_filename)
version=$(cat $version_filename)
author=$(cat $author_filename)
email=$(cat $email_filename)
years=$(cat $years_filename)

sed -e "s/[@]PROJECT[@]/$project/g" \
    -e "s/[@]VERSION[@]/$version/g" \
    -e "s/[@]EMAIL[@]/$email/g" \
    -e "s/[@]AUTHOR[@]/$author/g" \
    -e "s/[@]YEARS[@]/$years/g" \
    < $infile > $outfile

# vim:ai sw=2

