#!/usr/bin/env python3

import xml.etree.ElementTree as ET
import re
from sys import argv, exit
from os.path import abspath

if len(argv) < 1:
    print("Informe o arquivo XML")
    exit(1)

xmlFilePath = abspath(argv[1])

tree = ET.parse(xmlFilePath)
root = tree.getroot()

for ot in root.iter("outline"):
    xmlUrl = ot.attrib["xmlUrl"]
