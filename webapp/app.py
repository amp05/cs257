'''
    app.py
    Jeff Ondich, 25 April 2016
    Updated 8 November 2021
    Aldo Polanco, Alex Widman, James Berger Updated 9 November 2022

    A small Flask application that provides a barelywebsite with an accompanying
    API (which is also tiny) to support that website.
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    return flask.render_template('index.html')

@app.route('/connections.html') 
def connections():
    return flask.render_template('connections.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A Survivor contestant application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)