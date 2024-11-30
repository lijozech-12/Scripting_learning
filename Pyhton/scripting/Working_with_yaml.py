# Read a yaml file

import yaml

with open('config.yaml', 'r') as file:
    config = yaml.safe_load(file)
    print(config)

# write to yaml file

data = {'name':'DevOps', 'version':'1.0'}
with open('output.yaml','w') as file:
    yaml.dump(data, file)
    