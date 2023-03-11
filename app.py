from flask import Flask
import datetime
import socket

app = Flask(__name__)

@app.route('/')
def welcome():
  return socket.gethostname()+" "+datetime.datetime.now().strftime("%d-%m-%y %H:%M:%S")

if __name__ == '__main__':
  app.run('0.0.0.0','5000')
