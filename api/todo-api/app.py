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
import api_sub_class

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



@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'error': 'Not found'}), 404)

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

@app.route("/api/v1.0/image_classification_base64_encoding", methods=["POST"])
def image_classification_base64_encoding():
    response = restful_api_image_subclass.image_classification_base64_encoding(request)      
    return response
 
@app.route("/api/v1.0/image_classification_base64_encoding_json", methods=["POST"])
def image_classification_base64_encoding_json():
    response = restful_api_image_subclass.image_classification_base64_encoding_json(request)      
    return response
 
@app.route("/api/v1.0/image_classification_opencv_encoding", methods=["POST"])
def image_classification_opencv_encoding():    
    response = restful_api_image_subclass.image_classification_opencv_encoding(request)      
    return response
        
@app.route("/api/v1.0/image_classification_opencv_encoding_json", methods=["POST"])
def image_classification_opencv_encoding_json():    
    response = restful_api_image_subclass.image_classification_opencv_encoding_json(request)      
    return response
 
@app.route("/api/v1.0/image_classification_file_encoding_json", methods=["POST"])
def image_classification_file_encoding_json():    
    response = restful_api_image_subclass.image_classification_opencv_encoding_json(request)      
    return response
 

@app.route('/')
def index():
    return "Cassava Disease Classification Api"

if __name__ == '__main__':
    global restful_api_image_subclass
    restful_api_image_subclass = api_sub_class.RESTfulAPIImageSubclass(config.IMAGE_WIDTH_RESIZE, config.IMAGE_HEIGHT_RESIZE)
    app.run(debug=True,host='0.0.0.0')
# tasks = [
#     {
#         'id': 1,
#         'title': u'Buy groceries',
#         'description': u'Milk, Cheese, Pizza, Fruit, Tylenol',
#         'done': False
#     },
#     {
#         'id': 2,
#         'title': u'Learn Python',
#         'description': u'Need to find a good Python tutorial on the web',
#         'done': False
#     }
# ]

# task_fields = {
#     'title': fields.String,
#     'description': fields.String,
#     'done': fields.Boolean,
#     'uri': fields.Url('task')
# }


# class TaskListAPI(Resource):
   

#     def __init__(self):
#         self.reqparse = reqparse.RequestParser()
#         self.reqparse.add_argument('title', type=str, required=True,
#                                    help='No task title provided',
#                                    location='json')
#         self.reqparse.add_argument('description', type=str, default="",
#                                    location='json')
#         super(TaskListAPI, self).__init__()

#     def get(self):
#         return {'tasks': [marshal(task, task_fields) for task in tasks]}

#     def post(self):
#         args = self.reqparse.parse_args()
#         task = {
#             'id': tasks[-1]['id'] + 1 if len(tasks) > 0 else 1,
#             'title': args['title'],
#             'description': args['description'],
#             'done': False
#         }
#         tasks.append(task)
#         return {'task': marshal(task, task_fields)}, 201


# class TaskAPI(Resource):


#     def __init__(self):
#         self.reqparse = reqparse.RequestParser()
#         self.reqparse.add_argument('title', type=str, location='json')
#         self.reqparse.add_argument('description', type=str, location='json')
#         self.reqparse.add_argument('done', type=bool, location='json')
#         super(TaskAPI, self).__init__()

#     def get(self, id):
#         task = [task for task in tasks if task['id'] == id]
#         if len(task) == 0:
#             abort(404)
#         return {'task': marshal(task[0], task_fields)}

#     def put(self, id):
#         task = [task for task in tasks if task['id'] == id]
#         if len(task) == 0:
#             abort(404)
#         task = task[0]
#         args = self.reqparse.parse_args()
#         for k, v in args.items():
#             if v is not None:
#                 task[k] = v
#         return {'task': marshal(task, task_fields)}

#     def delete(self, id):
#         task = [task for task in tasks if task['id'] == id]
#         if len(task) == 0:
#             abort(404)
#         tasks.remove(task[0])
#         return {'result': True}


# api.add_resource(TaskListAPI, '/todo/api/v1.0/tasks', endpoint='tasks')
# api.add_resource(TaskAPI, '/todo/api/v1.0/tasks/<int:id>', endpoint='task')

