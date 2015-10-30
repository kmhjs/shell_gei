#! /usr/bin/env zsh

ls | while read s; do echo -n "$s : "; find $s -type f | wc -l | xargs; done