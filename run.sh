#!/bin/bash

#python convnet.py \
#--train-range=0-4 \
#--test-range=5 \
#--layer-params=examples-layers/layer-params-conv-local-11pct.cfg \
#--layer-def=examples-layers/layers-example.cfg \
#--data-path=

#LD_LIBRARY_PATH=/usr/local/cuda/lib64 python convnet.py --data-path=cifar-10-py-colmajor/ --save-path=tmp --test-range=5 --train-range=1-4 --layer-def=./example-layers/layers-conv-local-13pct.cfg --layer-params=./example-layers/layer-params-conv-local-13pct.cfg --data-provider=cifar-cropped --test-freq=13 --crop-border=4 --epochs=100

export LD_LIBRARY_PATH=/usr/local/cuda/lib64 
python convnet.py \
--data-path=/data/sensecam/ \
--save-path=tmp \
--train-range=0 \
--test-range=0 \
--layer-def=./example-layers/layers-sensecam-mini.cfg \
--layer-params=./example-layers/layer-params-sensecam-mini.cfg \
--data-provider=cifar \
--test-freq=10 \
--epochs=100

#--data-provider=cifar-cropped \
#--crop-border=16 \

#--layer-def=./example-layers/layers-sensecam.cfg \
#--layer-params=./example-layers/layer-params-sensecam.cfg \

#--layer-def=./example-layers/layers-conv-local-13pct.cfg \
#--data-path=cifar-10-py-colmajor/ \
#--layer-params=./example-layers/layer-params-conv-local-13pct.cfg \
