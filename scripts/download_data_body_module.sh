#!/bin/bash

# Copyright (c) Facebook, Inc. and its affiliates.

set -ex

#mkdir -p extra_data/body_module
#cd extra_data/body_module

mkdir -p /data/frankmocap/spin/

echo "Downloading extra data from SPIN"
wget http://visiondata.cis.upenn.edu/spin/data.tar.gz && tar -xvf data.tar.gz && rm data.tar.gz
#mv data data_from_spin
mv data/* /data/frankmocap/spin/

echo "Downloading pretrained model"
#mkdir -p pretrained_weights
mkdir -p /data/frankmocap/pretrained/frankmocap/
#cd pretrained_weights
wget https://dl.fbaipublicfiles.com/eft/2020_05_31-00_50_43-best-51.749683916568756.pt
wget https://dl.fbaipublicfiles.com/eft/fairmocap_data/body_module/smplx-03-28-46060-w_spin_mlc3d_46582-2089_2020_03_28-21_56_16.pt
mv *.pt /data/frankmocap/pretrained/frankmocap/
#cd ..

mkdir -p /data/frankmocap/other/

echo "Downloading other data"
wget https://dl.fbaipublicfiles.com/eft/fairmocap_data/body_module/J_regressor_extra_smplx.npy
mv J_regressor_extra_smplx.npy /data/frankmocap/other/


## if [ ! -d "sample_data" ] 
## then
##     echo "Downloading sample videos"
##     wget https://dl.fbaipublicfiles.com/eft/sampledata_frank.tar && tar -xvf sampledata_frank.tar && rm sampledata_frank.tar && mv sampledata sample_data
## else
##     echo "There exists sample_data already"
## fi

echo "Done"
