#! /usr/bin/env zsh

curl http://ja.uncyclopedia.info/wiki/%E3%82%B7%E3%82%A7%E3%83%AB%E8%8A%B8 | egrep -A5 'カースト' | tr -d '\n' | egrep -wo '<pre>.*</pre>' | sed 's!<[^>]*>!!g;s!^\$!!' | sh
