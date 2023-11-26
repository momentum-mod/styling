#!/bin/sh

# Requires https://github.com/fonttools/fonttools

rm ttf/* woff2/*

ttx -o ./ttf/BebasNeueMomentum-Bold.ttf ./src/BebasNeue2014Modified-Bold.ttx
ttx -o ./ttf/BebasNeueMomentum-Regular.ttf ./src/BebasNeue2014Modified-Regular.ttx
ttx -o ./ttf/BebasNeueMomentum-Light.ttf ./src/BebasNeue2014Modified-Light.ttx

ttx --flavor woff2 -o ./woff2/BebasNeueMomentum-Bold.woff2 ./src/BebasNeue2014Modified-Bold.ttx
ttx --flavor woff2 -o ./woff2/BebasNeueMomentum-Regular.woff2 ./src/BebasNeue2014Modified-Regular.ttx
ttx --flavor woff2 -o ./woff2/BebasNeueMomentum-Light.woff2 ./src/BebasNeue2014Modified-Light.ttx