#!/usr/bin/env bash
set -e
TAG="frosty-ember-calm-ember"
LIB="papal-marina.a"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "https://github.com/lutipnginmu/cedaramplifierkit/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
