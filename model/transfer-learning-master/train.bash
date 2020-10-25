#!/bin/bash

# Replace the directory name after the --image_dir

export TFHUB_CACHE_DIR=data/module_cache

time python3 retrain.py --output_graph=data/retrained_graph.pb --output_labels=data/retrained_labels.txt --image_dir=data/train




