#! /usr/bin/env zsh

cat in | sed 's/^  *$/>/g' | tr '\n' '@' | sed 's/@>/>/g;s/>>*/>/g' | tr '@>' '\n\n'
