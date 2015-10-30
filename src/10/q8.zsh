#! /usr/bin/env zsh

#ここだけは知識不足過ぎて答えみた
cat /dev/urandom | tr -dc '0-9' | fold -b6 | head -1