ubuntu 16.04:


sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev

sudo apt-get install libatlas-base-dev

apt-get install python-dev

sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

cp Makefile.config.example Makefile.config
# Adjust Makefile.config (for example, if using Anaconda Python, or if cuDNN is desired)

# add dirs in Makefile.config 
INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/include/hdf5/serial/ 
LIBRARY_DIRS := $(PYTHON_LIB) /usr/lib/x86_64-linux-gnu/hdf5/serial/


 CPU_ONLY := 1

 OPENCV_VERSION := 3



use make to build:

make all
make test
make runtest


use cmake to build:

mkdir builds
cd builds 
cmake ..
make all
make install #install in the builds subdir
make runtest

