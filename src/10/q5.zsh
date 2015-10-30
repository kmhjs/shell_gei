#! /usr/bin/env zsh

find a | while read s; do [ -f $s ] && mv $s .; done