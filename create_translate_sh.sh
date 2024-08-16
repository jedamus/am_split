#!/usr/bin/env sh

# erzeugt Montag, 12. August 2024 17:45 (C) 2024 von Leander Jedamus
# modifiziert Montag, 12. August 2024 19:12 von Leander Jedamus

infile=translate.sh.in
outfile=translate.sh
project_filename="project.txt"
version_filename="version.txt"
author_filename="author.txt"
email_filename="email.txt"
years_filename="years.txt"

for file in $infile $project_filename $version_filename $author_filename $email_filename $years_filename; do
  if [ ! -f $file ]; then
    echo "$file not found."
    exit 1
#  else
#    echo "$file found."
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

chmod +x $outfile

# vim:ai sw=2

