import json

#read json from a file

with open('data.json','r') as file:
    data = json.load(file)
    print(data)

#write json to a file

data = {'name':'DevOps','type':'Workflow'}
with open('data.json','w') as file:
    json.dump(data, file, indent=4)

# json.dump(): This function writes the data to the specified file in JSON format.

# data: This is the data you want to write to the JSON file. It should be a Python dictionary or list.

# file: This is the file object where the JSON data will be written.

# indent=4: This argument specifies the indentation level for pretty-printing the JSON data. 
# In this case, it uses an indentation of 4 spaces.