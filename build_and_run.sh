#!/bin/bash

mkdir -p _build
cd _build
cmake ..
cmake --build .
./appclimatecontrol