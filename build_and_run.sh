#!/bin/bash
#
# Marko Jalonen 2025
# Build and run script for cmake

mkdir -p _build
cd _build
cmake ..
cmake --build .
./appclimatecontrol