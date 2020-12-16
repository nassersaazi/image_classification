"""Alternative version of the ToDo RESTful server implemented using the
Flask-RESTful extension."""

from flask import Flask, jsonify, abort, make_response,request,url_for
from flask_restful import Api, Resource, reqparse, fields, marshal
from flask_httpauth import HTTPBasicAuth
from subprocess import Popen, PIPE
import sys
import json
import ast
import config
from flask import Response
import jsonpickle
import numpy as np
from PIL import Image
#import cv2
#import api_sub_class

app = Flask(__name__, static_url_path="")
api = Api(app)


app = Flask(__name__)

tasks = [
    {
        'id': 1,
        'image name': u'test6.jpg',
        'cgm'       : u'0.95931554', 
        'cbb'       : u'0.022979213',
        'cmd'       : u'0.015801422',
        'cbsd '     : u'0.0017724097',
        'healthy '  : u'0.00013151298'
    },
    {
        'id': 2,
        'image name': u'test5.jpg',
        'cbsd '     : u'0.7123589',
        'cgm'       : u'0.006787801', 
        'cbb'       : u'0.22279346',
        'cmd'       : u'0.019059043',
        'healthy '  : u'0.03900078'
    }
]

def make_public_task(task):
    new_task = {}
    for field in task:
        if field == 'id':
            new_task['uri'] = url_for('get_task', task_id=task['id'], _external=True)
        else:
            new_task[field] = task[field]
    return new_task

def runProcess(cmd):
    output = Popen([cmd],stdout=PIPE,shell=True)
    out, err = output.communicate()
    y = json.dumps(out.decode("utf-8"))
    my_dict = ast.literal_eval(y)
    return my_dict

@app.route('/todo/api/v1.0/tasks', methods=['GET'])
def get_tasks():
    return jsonify({'tasks': [make_public_task(task) for task in tasks]})

@app.route('/todo/api/v1.0/images/<string:image>', methods=['GET'])
def get_classification(image):
    classification = runProcess('./predict.bash ' + image + '.jpg')
    if len(classification) == 0:
        abort(404)
    return classification

@app.route('/todo/api/v1.0/tasks', methods=['POST'])
def create_task():
    if not request.json or not 'title' in request.json:
        abort(400)
    task = {
        'id': tasks[-1]['id'] + 1,
        'title': request.json['title'],
        'description': request.json.get('description', "Oh Kollege,was fur ein geiles Leben!!!"),
        'done': False
    }
    tasks.append(task)
    return jsonify({'task': task}), 201


@app.route('/todo/api/v1.0/tasks/<int:task_id>', methods=['GET'])
def get_task(task_id):
    task = [task for task in tasks if task['id'] == task_id]
    if len(task) == 0:
        abort(404)
    return jsonify({'task': task[0]})



# @app.errorhandler(404)
# def not_found(error):
#     return make_response(jsonify({'error': 'Not found'}), 404)

@app.route('/todo/api/v1.0/tasks/<int:task_id>', methods=['PUT'])
def update_task(task_id):
    task = [task for task in tasks if task['id'] == task_id]
    if len(task) == 0:
        abort(404)
    if not request.json:
        abort(400)
    # if 'title' in request.json and type(request.json['title']) != unicode:
    #     abort(400)
    # if 'description' in request.json and type(request.json['description']) is not unicode:
    #     abort(400)
    if 'done' in request.json and type(request.json['done']) is not bool:
        abort(400)
    task[0]['title'] = request.json.get('title', task[0]['title'])
    task[0]['description'] = request.json.get('description', task[0]['description'])
    task[0]['done'] = request.json.get('done', task[0]['done'])
    return jsonify({'task': task[0]})

@app.route("/api/v1.0/csharp_python_restfulapi_json", methods=["POST"])
def csharp_python_restfulapi_json():
    """
    simple c# test to call python restful api web service
    """
    try:                
#         get request json object
        request_json = request.get_json()      
#         convert to response json object 
        response = jsonify(request_json)
        response.status_code = 200  
    except:
        exception_message = sys.exc_info()[1]
        response = json.dumps({"content":exception_message})
        response.status_code = 400
    return response


@app.route("/api/test", methods=["POST"])
def process_image():
    file = request.files['image']
    file.save('img1.jpg')
    # Read the image via file.stream
    img = Image.open(file.stream)
    classification = runProcess('./predict.bash img1.jpg')
    if len(classification) == 0:
        abort(404)
    return jsonify({'msg': 'success', 'size': [img.width, img.height],'classification':classification})

# 
# route http posts to this method
# @app.route('/api/test', methods=['POST'])
# def test():
#     r = request
#     # convert string of image data to uint8
#     nparr = np.fromstring(r.data, np.uint8)
#     # decode image
#     img = cv2.imdecode(nparr, cv2.IMREAD_COLOR)

#     # do some fancy processing here....

#     # build a response dict to send back to client
#     response = {'message': 'image received. size={}x{}'.format(img.shape[1], img.shape[0])
#                 }
#     # encode response using jsonpickle
#     response_pickled = jsonpickle.encode(response)

#     return Response(response=response_pickled, status=200, mimetype="application/json")

@app.route('/')
def index():
    return "Cassava Disease Classification Api"

if __name__ == '__main__':
    # global restful_api_image_subclass
    # restful_api_image_subclass = api_sub_class.RESTfulAPIImageSubclass(config.IMAGE_WIDTH_RESIZE, config.IMAGE_HEIGHT_RESIZE)
    app.run(debug=True,host='0.0.0.0')
