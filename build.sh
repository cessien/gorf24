#!/bin/bash

#  Copyright 2013, Raphael Estrada
#  Author email:  <galaktor@gmx.de>
#  Project home:  <https://github.com/galaktor/gorf24>
#  Licensed under The MIT License (see README and LICENSE files)

echo "fetching C++ RF24 for Raspberry Pi"
git clone https://github.com/nRF24/RF24

echo "building C++ RF24 for Raspberry Pi"
cd RF24
make
make install
cd ../

echo "building C++ RF24 for Raspberry Pi EXAMPLES"
cd RF24/examples_linux
make
make install
cd ../../

echo "buliding ANSI C wrapper for C++ RF24 library"
cd RF24_c
bash build.sh
cd ..


