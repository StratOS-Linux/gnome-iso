#!/usr/bin/env bash
echo "Cleaning up..."
sudo rm -rf output.bak output
echo "Initializing ISO"
sudo mkarchiso -v \
     -w output \
     -o output \
     ./
echo output/*.iso | awk -F/ '{print $NF}'
