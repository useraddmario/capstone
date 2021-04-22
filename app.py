from flask import Flask, jsonify
import json

app = Flask(__name__)

with open('todo.json') as todo:
    tasks = json.load(todo)

@app.route('/', methods=['GET'])
def todo_landing():
    return jsonify(tasks)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True) # specify port=80

