#!/usr/bin/env bash
set -e
LIB="pulled-raft.a"
TAG="clever-canyon-golden-ember"
REPO="eagertablef/golightlander"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
