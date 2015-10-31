#! /usr/bin/env zsh

a=(); ls | perl -pe 's/\s/\n/g' | while read s; do a=($a $s); done; while [[ $#a > 1 ]]; do b=$a[1]; shift a; for i ($a); do echo "${b} ${i}"; done; done