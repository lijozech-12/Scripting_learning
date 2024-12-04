# upload and download files using boto3

import boto3

s3 = boto3.client('s3')

#Upload a file
s3.upload_file('local_file.txt','bucket_name','s3_file.txt')


#Download a file
s3.download_file('bucket_name','s3_file.txt','local_file.txt')
