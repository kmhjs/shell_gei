#! /usr/bin/env zsh

for i ({1..$(cat matrix | wc -l)}); do cat matrix | cut -d ' ' -f $i | xargs echo; done
