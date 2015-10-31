#! /usr/bin/env zsh

cat genkou | sed 's/\W/1/g;s/\w/1/g' | perl -pe 's/\n//g' | wc -c