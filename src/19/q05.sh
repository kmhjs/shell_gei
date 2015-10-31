#! /usr/bin/env zsh

curl 'https://blog.ueda.asia/?page_id=7123' | tr '<' '\n' | egrep '^img src' | cut -d \' -f 2 | cut -d \" -f 2 | grep 'data:' | cut -d , -f 2 | base64 -d > img.png
