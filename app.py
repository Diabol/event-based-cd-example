import os

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    provider = str(os.environ.get('PROVIDER', 'world'))
    #cat_url = 'http://2.bp.blogspot.com/-TwuKgh-bJO8/T9EfubfSyZI/AAAAAAAAC2I/FSaTSfqrXhk/s400/cat-playing-guitar-gif.gif'
    cat_url = 'https://github.com/Diabol/event-based-cd-example/blob/master/cat2.gif?raw=true'
    #reply = '<body background=\'http://2.bp.blogspot.com/-TwuKgh-bJO8/T9EfubfSyZI/AAAAAAAAC2I/FSaTSfqrXhk/s400/cat-playing-guitar-gif.gif\'>'
    reply = '<h1>!!!Deployed by the super cool Event Based CD system!!!</h1>\n'
    reply += '<p>Environment: '+provider +'</p>'
    reply += '<image src=\'' + cat_url + '\' height=\'444\' width=\'560\'/>\n'
    reply += '</body>'
    return reply

if __name__ == '__main__':
    # Bind to PORT if defined, otherwise default to 5000.
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
