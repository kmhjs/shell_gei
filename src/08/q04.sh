#! /usr/bin/env zsh

e=();o=();foreach f (3 8 2 10 1 8 9) { [ $(($f % 2)) = 1 ] && o=($o $f) || e=($e $f) }; echo "${e} ${o}"
