import time

def tail_f(file):
    file.seek(0,2) #move to the end of the file so that it would read only the upcoming lines
    while True:
        line = file.readline() #increment itself and read new lines added
        if not line:
            time.sleep(0.1) #sleep briefly
            continue
        print(line)

with open('app.log','r') as log_file:
    tail_f(log_file)