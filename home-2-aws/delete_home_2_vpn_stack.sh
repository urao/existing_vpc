#!/usr/bin/env bash

stackname=$1

if [ -z "$stackname" ]; then
    echo "stack name not set"
    exit 1
fi

echo "Deleting home_2_vpn $stackname stack"
aws cloudformation delete-stack --stack-name $stackname 


echo "Wait till home_2_vpn stack($stackname) is deleted\n"
aws cloudformation wait stack-delete-complete --stack-name $stackname
