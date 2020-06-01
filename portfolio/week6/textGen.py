#!/usr/bin/python3
import itertools

letters = [ 'a', 'b', 'c' ]
from itertools import combinations

for i in range(3):
    for c in itertools.product(letters, repeat=i):
        print(''.join(c), file=open("brute.txt", "a"))

