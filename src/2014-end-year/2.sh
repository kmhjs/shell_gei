#! /usr/bin/env zsh

curl -q -G -k --data "address=HanedaAirprt&sensor=false" http://maps.googleapis.com/maps/api/geocode/json 2>/dev/null| tr -d '\n' | perl -pe 's/},/\n/g' | grep '"location"' | tr -d '[a-z\"{:' | xargs