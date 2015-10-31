#! /usr/bin/env zsh

ls | while read s; do; cp ./$s/`ls $s | sort | tail -1` .; done