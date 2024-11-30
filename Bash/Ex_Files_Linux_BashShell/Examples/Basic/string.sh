#!/bin/bash

# Concatenation

string1="Hello, " 
string2="World!" 
result=$string1$string2 

echo "result of string concatenation : $result"

# Sub string Extraction

string="Hello, World"
substring=${string:7:5}

echo "Substring: $substring"

# Searching and replacing

string="Hello, World! Hello!"
search="Hello"
replace="Hi"
result=${string//$search/$replace}

echo "Original string: $string"
echo "Result after replacement: $result"