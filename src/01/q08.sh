#! /usr/bin/env zsh

cat 9_in | sed 's/.*/echo "&" | tr " " "\\n" | sort -n | xargs/' | sh
