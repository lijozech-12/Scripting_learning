#!/bin/bash 
# Prompt the user for their name 
echo "Hello! What's your name?" 
read name 
# Greet the user 
echo "Nice to meet you, $name!" 

# Read input with a prompt message 
read -p "Enter your favorite color: " color 
echo "Your favorite color is $color." 

# • -p specifies a prompt message. 
# • -r disables interpreting backslashes, useful for reading file paths. 
# • -t sets a timeout for input. 
# • -s hides input (useful for passwords). 

# Read password without echoing characters 
read -s -p "Enter your password: " password 
echo "Password entered." 
# Read input with timeout 
read -t 5 -p "Enter something in 5 seconds: " timed_input 
echo "You entered: $timed_input" 