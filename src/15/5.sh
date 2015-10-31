#! /usr/bin/env zsh

# http://alvinalexander.com/blog/post/linux-unix/how-remove-non-printable-ascii-characters-file-unix
tr -c '\11\12\15\40-\176' '@' < text2 | grep -v @ 
LC_COLLATE=C grep -v '[^ -~]' text2

# Perl(-P)のやつ
# http://stackoverflow.com/questions/3001177/how-do-i-grep-for-all-non-ascii-characters-in-unix
grep -Pv "[\x80-\xFF]" text2
