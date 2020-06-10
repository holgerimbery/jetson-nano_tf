#!/usr/bin/env bash
# make executable by chmod a+x nano-tf-01.sh
# run using sudo -H ./nano-tf-01.sh
# first install the Ubuntu packages we need
apt-get install python3-pip libhdf5-serial-dev hdf5-tools zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran -y # needed for TensorFlow
apt-get install libfreetype6-dev pkg-config -y               # needed for matplotlib
apt-get install nano curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt-get install nodejs -y                                # needed for jupyter lab
pip3 install pillow==5.4.1                                   # needed for image processing
pip3 install matplotlib                                      # used in the TensorFlow notebook
# Jupyter  notebook - lab + widgets add terminal window support
pip3 install jupyter jupyterlab
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install @jupyterlab/statusbar
# and finally, official NVIDIA TensorFlow package for the Nano
sudo -H pip3 install -U pip testresources setuptool
sudo -H pip3 install -U numpy==1.16.1 future==0.17.1 mock==3.0.5 h5py==2.9.0 keras_preprocessing==1.0.5 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11
sudo -H pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 tensorflow
