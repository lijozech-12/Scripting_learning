#!/bin/bash
# Declare a function named greet 
greet() { 
    echo "inside first function"
    echo "Hello, how are you?" 
} 
# Call the greet function 
greet 

# Declare a function named print_args 
print_args() { 
    echo
    echo "2nd function"
    echo "First argument: $1" 
    echo "Second argument: $2" 
} 
# Call the print_args function with arguments 
print_args "Hello" "World" 

# Declare a function named calculate_sum 

calculate_sum() {
    local num1="$1"
    local num2="$2"
    local sum=$((num1 + num2))
    echo "$sum"
    return $sum
}


result=$(calculate_sum 10 20)
echo "sum : $result"


# Declare a global variable 
global_var="I'm global" 
# Declare a function with local variables 
local_variables() { 
    local local_var="I'm local" 
    echo "Inside function: $local_var" 
    echo "Inside function: $global_var" 
} 
# Call the local_variables function 
local_variables 
# Access global variable outside the function 
echo "Outside function: $global_var" 
# Attempting to access local_var here will result in an error 