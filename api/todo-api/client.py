from __future__ import print_function
import requests
import json
#import cv2
#from PIL import Image

addr = 'http://localhost:5000'
test_url = addr + '/api/test'

# prepare headers for http request
content_type =  'multipart/form-data'#'image/jpeg'
headers = {'content-type': content_type}


img = {'image': open('test4.jpg', 'rb')}
# send http request with image and receive response
response = requests.post(test_url, files=img)
# decode response
print(response.json())


# def post_image(img_file):
#     """ post image and return the response """
#     img = open(img_file, 'rb').read()
#     response = requests.post(URL, data=img, headers=headers)
#     return response



