# Get an environment variable:

import os

db_user = os.getenv('DB_USER')
print(db_user)

#set an environment variable

os.environ['NEW_VAR'] = 'value'