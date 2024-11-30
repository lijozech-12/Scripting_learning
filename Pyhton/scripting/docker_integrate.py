# docker package to interact with docker

import docker

client = docker.from_env()
containers = client.containers.list()
for containers in containers:
    print(container.name)