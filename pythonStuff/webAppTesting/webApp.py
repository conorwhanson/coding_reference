import flask

from services import catalog_service

app = flask.Flask(__name__)

@app.route('/')
def index():
    data = ['a', 'b', 'e', 'j']
    return flask.render_template('index.html', values = data)

@app.route('/guitars')
def guitars():
    guitars = catalog_service.all_guitars(None)
    return flask.render_template('guitars.html', guitars = guitars)

if __name__ == '__main__':
    app.run()