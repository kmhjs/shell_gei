#! /usr/bin/env zsh

convert <(echo '10\n01' | sed 's/.*/&&&&/' | tr '\n' ',' | sed 's/.*/&&&&/;s/./&&&&&&&&/g;s/,,*/,/g' | tr ',' '\n' | sed 's/.*/&\n&\n&\n&\n&\n&\n&\n&/' | tr '\n' ',' | sed 's/.*/P1,64 64,&/' |tr ',' '\n') chess-out.png
