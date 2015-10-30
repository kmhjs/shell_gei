#! /usr/bin/env zsh

echo "($(date -d '2012-10-27' +%s) - $(date -d '1978-02-26' +%s)) / (60 * 60 * 24)" | bc
