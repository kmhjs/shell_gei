#! /usr/bin/env zsh

ls | while read s; do nkf -w $s | grep "きく" > /dev/null 2>&1 && echo $s; done