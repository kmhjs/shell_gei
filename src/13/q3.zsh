#! /usr/bin/env zsh

find . -type f | tr -d './bc[0-9]' | uniq -c