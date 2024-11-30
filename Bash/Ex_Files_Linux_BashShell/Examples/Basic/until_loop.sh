#!/bin/bash

num=0

until [ $num -ge 5 ]; do
    echo "Number: $num"
    ((num++))
done