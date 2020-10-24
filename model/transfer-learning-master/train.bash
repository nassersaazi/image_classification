#!/bin/bash

# Replace the directory name after the --image_dir

export TFHUB_CACHE_DIR=data/module_cache

time python3 retrain.py --image_dir=data/train

