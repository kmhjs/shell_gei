#! /usr/bin/env zsh

foreach i ({000..999}){ [[ $(echo -n $i | md5sum | sed 's/\([0-9a-zA-Z]*\).*/\1/g') == "250cf8b51c773f3f8dc8b4be867a9a02" ]] && { echo $i; break } }
