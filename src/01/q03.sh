#! /usr/bin/env zsh

grep -r '#! /bin/bash' /etc 2>/dev/null | cut -d: -f1 | sed 's!^\(.*\)/\([a-zA-Z0-9]*\)$!cp \1/\2 ~/hoge/\2 \&\& sed -i "s@bin\/bash@usr\/local\/bin\/bash@" ~/hoge/\2!' | sh
