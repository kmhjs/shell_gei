#! /usr/bin/env zsh

# こたえみた
grep -o . chinese_characters | LANG=C sort | LANG=C uniq -d | grep -f - -n chinese_characters
