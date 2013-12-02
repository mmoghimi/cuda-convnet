#!/bin/bash

export LD_LIBRARY_PATH=/home/mmoghimi/cuda-5.5/lib64 

#python convnet.py \
#--train-range=0-4 \
#--test-range=5 \
#--layer-params=examples-layers/layer-params-conv-local-11pct.cfg \
#--layer-def=examples-layers/layers-example.cfg \
#--data-path=


#python convnet.py --data-path=cifar-10-py-colmajor/ --save-path=tmp --test-range=5 --train-range=1-4 --layer-def=./example-layers/layers-conv-local-13pct.cfg --layer-params=./example-layers/layer-params-conv-local-13pct.cfg --data-provider=cifar-cropped --test-freq=13 --crop-border=4 --epochs=100


#--data-path=/home/mmoghimi/data/sensecam/ \
#--data-path=cifar-10-py-colmajor/ \

python convnet.py \
--data-path=/home/mmoghimi/data/sensecam/ \
--save-path=tmp \
--train-range=1 \
--test-range=1 \
--layer-def=example-layers/layers-conv-local-13pct.cfg \
--layer-params=example-layers/layer-params-conv-local-13pct.cfg \
--data-provider=cifar \
--test-freq=10 \
--epochs=100 \
--crop-border=0 \
--mini=1

#--layer-def=./example-layers/layers-sensecam-mini.cfg \
#--layer-params=./example-layers/layer-params-sensecam-mini.cfg \

#--data-provider=cifar-cropped \

#--layer-def=./example-layers/layers-sensecam.cfg \
#--layer-params=./example-layers/layer-params-sensecam.cfg \

#--layer-def=./example-layers/layers-conv-local-13pct.cfg \
#--data-path=cifar-10-py-colmajor/ \
#--layer-params=./example-layers/layer-params-conv-local-13pct.cfg \
