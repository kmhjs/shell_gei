#! /usr/bin/env zsh

cat speed | sed 's/\([0-9]*\)\(.*\)/\1 \2/g' | while read s t; do [ $t = 'km/h' ] && echo -n $((s * 1000 / 3600)) || echo -n $((s * 1.609 * 1000 / 3600)); echo "m/s"; done
