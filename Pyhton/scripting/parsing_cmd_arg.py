import argparse

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('--num', type=int, help='an integer for the accumulator')

args = parser.parse_args()
print(args.num)

# import argparse:

# This line imports the argparse module, which is used for parsing command-line arguments.

# parser = argparse.ArgumentParser(description='Process some integers.'):

# This line creates an ArgumentParser object with a description of what the program does. 
# The description is optional but helpful for users.

# parser.add_argument('--num', type=int, help='an integer for the accumulator'):

# This line adds an argument to the parser. The argument is named --num, expects an integer value 
# (type=int), and has a help message that describes its purpose.

# args = parser.parse_args():

# This line parses the command-line arguments and stores them in the args variable. The args 
# variable is an object with attributes corresponding to the arguments defined.

# print(args.num):

# This line prints the value of the --num argument provided by the user.

# Example Usage