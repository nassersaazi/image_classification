# Cassava Disease Image Classification System

<div style="text-align:right">By Nasser Saazi</div>

## Problem statement
Cassava is the third largest source of carbohydrates for human food in the world but is vulnerable to virus disease, which threaten to destabilise food security in the sub-Saharan Africa. [2]
Novel methods of cassava disease detection are needed to support improved control which will prevent this crisis. Image recognition offers both a cost effective and scalable technology for disease detection.


<img src="test.jpg" width="400px" align="middle">

The prime aim of this project is to build a model that can classify multiple input leaf images of a plant as healthy or diseased. If the plant leaf gives positive results of a disease, then the type of a disease is to be further determined as well. In our project we focus only on multiple detecting and classifying cassava leaves suffering from some common cassava diseases. 






<hr>

## 1. Concept
It takes significant machine resources and time to train the model especially when there are so many layers.  For example, Inception-v3 has 42 layers [1].  However, there is a way to short circuit the training process. This is called transfer learning.



Required
1. A model with pre-trained weights
1. A new layer with a matrix and biases to classify your images



# 2. Steps to train the model
In this section, I will go over details of the two high-level steps.

## 2.1. Set up the dataset on your file system
retrain.py expects that image data is stored in a multi-level directory structure.  Here is the two-level directory structure in this case:

```
top image directory
--- image category label 1
------ jpeg files in that category 1
------ jpeg file in that category 1
------ jpeg file in that category 1
...

--- image category label 2
------ jpeg file in that category 2
------ jpeg file in that category 2
------ jpeg file in that category 2
...
```


Each image directory name is used as the class label of the images in the directory.
retrain.py automatically splits validation and test set images from the training set, so there is no need for you to separate images if you want to avoid extra work.

You can use any dataset that you want, but I used dataset of cassava leaf images

## 2.2. Training using retrain.py
Once the images were laid out on your file system, you can clone this repo to download:
* retrain.py
* label_img.py

retrain.py and label_img.py were developed by the TensorFlow team and licensed under the terms listed at the top of each file.

If you want to check for the newer version, you can check hub and tensorflow repos:
```
git clone https://github.com/tensorflow/hub
diff hub/examples/image_training/retrain.py <path to this retrain.py>
```

```
git clone https://github.com/tensorflow/tensorflow
diff tensorflow/tensorflow/examples/label_image/label_image.py <path to this label_img.py>
```

Once you have retrain.py on your local disk, run it with the name of the top-level image directory specified in the --image_dir option.

This starts the training session.

When the script is completed, verify the output in the following directories:

* /tmp/output_labels.txt
* /tmp/output_graph.pb

output_labels.txt contains the classes of your images which were taken from each directory.
output_graph.pb is the new model file with trained weight in the protobuf format.  You will be using these files for prediction in the next step.

## 2.3. Predict

predict.bash is a wrapper that calls label_image.py with the set of parameters:
```
#!/bin/bash

python label_image.py \
--graph=/tmp/output_graph.pb \
--labels=/tmp/output_labels.txt \
--input_layer=Placeholder \
--output_layer=final_result \
--image=$1 2>/dev/null
```

For example, if you want to predict the class for the image, test.jpg, type:

```
./predict.bash test.jpg
```

# References
https://medium.com/@hideyuki/transfer-learning-how-to-leverage-a-pre-trained-model-to-speed-up-training-for-machine-learning-4b762b9c20c1


