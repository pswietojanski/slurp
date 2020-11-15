#!/bin/bash

mkdir -p audio

echo "Downloading slurp audio data..."
wget -c -q --show-progress  --progress=bar:force \
     https://zenodo.org/record/4274930/files/slurp_real.tar.gz \
     -O audio/slurp_real.tar.gz 2>&1 | tee audio/slurp_real_download.log 

wget -c -q --show-progress --progress=bar:force \
     https://zenodo.org/record/4274930/files/slurp_synth.tar.gz \
     -O audio/slurp_synth.tar.gz 2>&1 | tee audio/slurp_synth_download.log

#echo "Extracting packages to audio/slurp*"
#tar -zxvf audio/slurp_real.tar.gz -C audio
#tar -zxvf audio/slurp_synth.tar.gz -C audio
