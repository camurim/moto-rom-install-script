#!/usr/bin/env python3

import xml.etree.ElementTree as ET
import re
from sys import argv, exit
from os.path import abspath

if len(argv) < 2:
    print("Syntax: %s filename.xml output.sh" % (argv[0]))
    exit(1)

xmlFilePath = abspath(argv[1])
outputScript = abspath(argv[2])

outputFile = open(outputScript, "w")
outputFile.write("#!/usr/bin/env bash\n")

tree = ET.parse(xmlFilePath)
root = tree.getroot()

for ot in root.iter("step"):
    if "filename" in ot.attrib:
        filename = ot.attrib["filename"]
    else:
        filename = ""

    if "operation" in ot.attrib:
        operation = ot.attrib["operation"]
    else:
        operation = ""

    if "partition" in ot.attrib:
        partition = ot.attrib["partition"]
    else:
        partition = ""

    if "var" in ot.attrib:
        var = ot.attrib["var"]
    else:
        var = ""

    command = re.sub(
        " +", " ", "fastboot %s %s %s %s" % (operation, partition, filename, var)
    )

    outputFile.write("%s\n" % (command))

outputFile.close()
