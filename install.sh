#!/bin/bash

sudo apt-get update
sudo apt-get install -y facedetect
wget https://raw.githubusercontent.com/hypercrowd-opensource/deepfail/v1.0.0/mine.sh > mine.sh
touch fail.chain
