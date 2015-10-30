#! /usr/bin/env zsh

ls | while read s; do od $s | grep "125602 126602" > /dev/null 2>&1 && echo $s; done