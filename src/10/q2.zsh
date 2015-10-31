#! /usr/bin/env zsh

cat nums | perl -pe 's/\n//g' | sed 's/ */ /g;s/^ //;s/ $//' | perl -pe 's/$/\n/g;s/ /+/g' | bc