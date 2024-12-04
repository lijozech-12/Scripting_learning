import os
import subprocess

# Create virtual environment
subprocess.run(['python3','-m','venv','myenv'])

#Activate virtual environment(Windows)
os.system('myenv\\Scripts\\activate')

# Activate virtual environment(Linux/Mac)
os.system('source myenv/bin/activate')