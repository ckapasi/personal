#!/usr/bin/python -tt
f = open('ckfile.txt', 'rU')
lines = f.readlines()
f.close()
print lines
