# Using fabric for remote exection

from fabric import Connection

conn = Connection(host='user@hostname', connect_kwargs={'password':'your_password'})
conn.run('uname -s')