#! /bin/bash


rm ./build/boot.iso & 
sh ./scripts/build-iso.sh &
sh ./scripts/run-qemu.sh
