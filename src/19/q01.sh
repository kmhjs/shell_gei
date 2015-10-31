#! /usr/bin/env zsh

echo "@$(dirname $0 2>/dev/null)ppm" | sed 's/@\./40/;s/@/1/'
