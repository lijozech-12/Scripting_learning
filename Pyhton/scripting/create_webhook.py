# Using Flask to create a simple webhook: 

from flask import Flask, request

app = Flask(__name__)

@app.route('/webhook',methods=['POST'])
def webhook():
    data = request.json
    print('Received data:', data)
    return 'OK', 200

if __name__=='__main__':
    app.run(port=5000)