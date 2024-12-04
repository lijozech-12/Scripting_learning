import requests

url = 'https://your-jenkins-url/job/your-job-name/build'
response = requests.post(url, auth=('user','token'))
print(response.status_code)