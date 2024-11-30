#!/bin/bash

num=10

if [ $num -gt 10 ]; then
    echo "number is greater than 10"
elif [ $num -lt 10 ]; then  # elif [ $num -eq 10 ]; then
    echo "number is less than 10"
else
    echo "Number is 10"
fi