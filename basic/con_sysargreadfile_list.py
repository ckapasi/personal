#!/usr/bin/python -tt
import sys
f = open('sys.argv[1]', 'rU')
lines = f.readlines()
f.close()
print lines
