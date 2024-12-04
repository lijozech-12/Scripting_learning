import subprocess

# INIT terraform
subprocess.run(['terraform','init'])

#Apply configuration
subprocess.run(['terraform','apply','-auto-approve'])