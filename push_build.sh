#!/usr/bin/env bash
set -e
LIB="hollow-canopy.a"
TAG="eager-garden-hidden-ember"
REPO="viojletfern/libpaperice"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
