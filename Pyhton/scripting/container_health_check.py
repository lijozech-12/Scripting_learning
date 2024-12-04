import docker

client = docker.from_env()
cotainer = client.containers.get('container_id')
print(container.attrs['State']['Health']['Status'])