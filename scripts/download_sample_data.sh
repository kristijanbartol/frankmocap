#!/bin/bash

# Copyright (c) Facebook, Inc. and its affiliates.

mkdir -p /data/frankmocap/sample_data/

#if [ ! -d "sample_data" ] 
#then
echo "Downloading sample videos"
wget https://dl.fbaipublicfiles.com/eft/sampledata_frank.tar && tar -xvf sampledata_frank.tar && rm sampledata_frank.tar && mv sampledata/* /data/frankmocap/sample_data/
#else
#    echo "There exists sample_data already"
#fi
echo "Done"
