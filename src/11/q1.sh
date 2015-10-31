#! /usr/bin/env zsh

echo -12,135,123 135,123 | sed 's/,/+/g;s/ /+/g' | bc
