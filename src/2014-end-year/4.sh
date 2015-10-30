#! /usr/bin/env zsh

seq 1 31 | xargs | sed 's/[0-9]*/ | base64 -D/g;s/^/curl http:\/\/blog.ueda.asia\/misc\/message2015.txt/g' | sh