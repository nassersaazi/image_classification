#!/bin/bash

python3 label_image.py \
--graph=data/retrained_graph.pb \
--labels=data/retrained_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--image=$1 2>/dev/null

