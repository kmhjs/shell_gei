#! /usr/bin/env zsh

ls | while read s; do ls -t $s | head -1; done