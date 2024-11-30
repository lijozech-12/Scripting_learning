#!/bin/bash

# Let's say you have a text file named data.txt with the following content: 
# John Doe|25|Engineer 
# Jane Smith|30|Designer 
# Michael Johnson|28|Manager 
# And you want to parse and process this data using a shell script:

while IFS='|' read -r name age profession; do
    echo "Name: $name"
    echo "Age: $age"
    echo "Profession: $profession"
    echo "---------------"
done < data.txt


# while IFS='|' read -r name age profession; do: This starts a while loop. The IFS='|' part sets the 
# Internal Field Separator (IFS) to the pipe character (|), which means the input will be split into fields 
# using | as the delimiter. The read -r name age profession part reads a line of input, splits it into fields, 
# and assigns the fields to the variables name, age, and profession.

# For example, if the input line is John Doe|30|Engineer, the variables will be assigned as follows:

# name="John Doe"

# age="30"

# profession="Engineer"