# Run shell commmands

import subprocess

result = subprocess.run(['ls','-l'], capture_output=True, text=True)
print(result.stdout) # Prints the captured standard output 
print(result.stderr) # Prints the captured standard error (if any)

# subprocess.run: This function is used to run a command in a subprocess.

# ['ls', '-l']: This is the command to be executed. In this case, it runs ls -l, which lists the files 
# in the current directory in long format.

# capture_output=True: This argument tells subprocess.run to capture the standard output and standard 
# error of the command.

# text=True: This argument tells subprocess.run to return the output as a string rather than bytes.