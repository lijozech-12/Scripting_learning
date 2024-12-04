# Scraping and parsing prometheus metrics

import requests

response = requests.get('http://localhost:9090/metrics')
metrics = response.text.splitlines()

for metric in metrics:
    print(metric)