#! /usr/bin/env zsh

# ぽきぽき
echo "*****************************************************************" | fold -c10 | while read s; do echo -n $s | fold -c$(($RANDOM / 4000 + 1)) | xargs | tr -d '\n'; done && echo ""