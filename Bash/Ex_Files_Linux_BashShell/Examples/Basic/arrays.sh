#!/bin/bash 


# Declare an array with values 

fruits=("Apple" "Banana" "Orange") 
# Access array elements 
echo "First fruit: ${fruits[0]}" 
echo "Second fruit: ${fruits[1]}" 
echo "Third fruit: ${fruits[2]}" 

# Loop through array using for loop 
echo 
echo "Using for loop:"

for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done


# Loop through array using while loop and index

echo "Using while loop:"
index=0
while [ $index -lt ${#fruits[@]} ]; do
    echo "Fruit at index $index: ${fruits[$index]}"
    index=$((index +1))
done


# array manipulation

#!/bin/bash
fruits=("Apple" "grapes" "jackfruit")

# Adding an element
fruits+=("Grapes")