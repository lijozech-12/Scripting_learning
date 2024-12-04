import boto3

ec2 = boto3.resource('ec2')
instances = ec2.instance.filter(Filters=[{'Name':'instance-state-name','Values':['running']}])
for instance in instances:
    print(instance.id, instance.state)