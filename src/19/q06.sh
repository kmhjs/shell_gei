#! /usr/bin/env zsh

cat Q6 | sed 's/.*/echo "obase=16; ibase=2; &" | bc/' | sh | xargs | tr -d ' ' | sed 's/../\\x&/g' | sed 's/.*/echo -ne "&"/' | zsh | nkf -u
