import os
import subprocess

#Start services defined in docker-compose.yml
subprocess.run(['docker-compose','up','-d'])

#stop services
subprocess.run(['docker-compose','down'])