#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Feb 25 12:27:19 2024

@author: wongrachel
"""
from bs4 import BeautifulSoup
import requests
url = "https://en.wikipedia.org/wiki/Comma-separated_values"
results = requests.get(url).text
print(results)

from bs4 import BeautifulSoup
import requests
rl = "https://en.wikipedia.org/wiki/Comma-separated_values"
results = requests.get(url).text
soup= BeautifulSoup(results, "html.parser")
print(soup.prettify())

cars = soup.find_all(["pre"])
print(cars)