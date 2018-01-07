#!/usr/bin/python -tt
import sys

def Cat(filename):
 f = open(filename, 'rU')
 lines = f.readlines()
 print lines
 f.close()

def print_words(filename):
 word_count = {}
 f = open(filename, 'r')
 for line in f:
  words = line.split()
  for word in words:
   word = word.lower()
   if not word in word_count:
    word_count[word] = 1
   else :
    word_count[word] = word_count[word] + 1  
 f.close()
 print word_count

def main():
# Cat(sys.argv[1]) 
 print_words(sys.argv[1])
 

if __name__ == '__main__':
 main()
