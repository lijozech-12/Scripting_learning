import requests
from bs4 import BeautifulSoup

response = requests.get('http://example.com')
soup = BeautifulSoup(response.content, 'html.parser')
print(soup.title.string)


# Parse the HTML:

# python
# soup = BeautifulSoup(response.content, 'html.parser')
# This line creates a BeautifulSoup object from the HTML content of the response. The 'html.parser' 
# argument specifies the parser to use.

# Extract and Print the Title:

# python
# print(soup.title.string)
# This line extracts the title of the webpage using the soup.title.string attribute and prints it.