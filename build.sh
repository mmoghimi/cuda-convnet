#!/bin/sh

# Fill in these environment variables.
# I have tested this code with CUDA 4.0, 4.1, and 4.2. 
# Only use Fermi-generation cards. Older cards won't work.

# If you're not sure what these paths should be, 
# you can use the find command to try to locate them.
# For example, NUMPY_INCLUDE_PATH contains the file
# arrayobject.h. So you can search for it like this:
# 
# find /usr -name arrayobject.h
# 
# (it'll almost certainly be under /usr)

# CUDA toolkit installation directory.
#export CUDA_INSTALL_PATH=/usr/local/cuda-5.5
export CUDA_INSTALL_PATH=/home/mmoghimi/cuda-5.5

# CUDA SDK installation directory.
#export CUDA_SDK_PATH=/home/spoon/NVIDIA_GPU_Computing_SDK
#export CUDA_SDK_PATH=/home/ubuntu/NVIDIA_CUDA-5.5_Samples/
export CUDA_SDK_PATH=/home/mmoghimi/NVIDIA_CUDA-5.5_Samples/
#export CUDA_SDK_PATH=/usr/

# Python include directory. This should contain the file Python.h, among others.
export PYTHON_INCLUDE_PATH=/usr/include/python2.6

# Numpy include directory. This should contain the file arrayobject.h, among others.
#export NUMPY_INCLUDE_PATH=/usr/lib/pymodules/python2.7/numpy/core/include/numpy
#export NUMPY_INCLUDE_PATH=/usr/lib/python2.6/dist-packages/numpy/core/include/numpy
export NUMPY_INCLUDE_PATH=/usr/include/numpy

# ATLAS library directory. This should contain the file libcblas.so, among others.
#export ATLAS_LIB_PATH=/usr/lib/atlas-base
export ATLAS_LIB_PATH=/usr/lib64/atlas-sse3

make $*

