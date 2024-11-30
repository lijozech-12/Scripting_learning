#!/bin/bash

# Automated Deployment Rollback Script: Create a script to 
# rollback a deployment to a previous version in case of issues. 

previous_version="v1"
kubectl set image deployment/nginx-deployment nginx=nginx:"previous_version" --record