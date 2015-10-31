#! /usr/bin/env zsh

find . -type f | tr -d './bd[0-9]' | uniq -c