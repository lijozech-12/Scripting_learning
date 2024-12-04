import requests
import time
url = 'https://api.example.com/data'

while True:
    response = requests.get(url)
    if response.status_code==200:
        print(response.json())
        break
    elif response.status_code == 429: #Too many Requests
        time.sleep(60)
    else:
        print('Error:',response.status_code)
        break