#!/bin/bash
read -p "type the fruit name: " fruit
# fruit="apple"

case $fruit in
    "apple")
        echo "It's an apple"
        ;;
    "mango")
        echo "It's a mango"
        ;;
    *)
        echo "unknow fruit"
        ;;
esac