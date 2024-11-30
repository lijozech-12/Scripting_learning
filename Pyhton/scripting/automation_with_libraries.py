import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect('hostname', username='user', password='password')

stdin, stdout, stderr = ssh.exec_command('ls')
print(stdout.read().decode())
ssh.close()