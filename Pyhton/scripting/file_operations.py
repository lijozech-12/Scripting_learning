#read a file

with open('file.txt','r') as file:
    content = file.read()
    print(content)

#write to a file

with open('output.txt', 'w') as file:
    file.write('Hello,DevOps!')