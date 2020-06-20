#!/usr/bin/python3
import hashlib
import itertools
#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"


#create the bruteforce text file. This will create all combinations of characters
#up to 6 characters. 
#Here characters each character is placed into an array and the combinations function from the itertool 
#module are imported. REF https://stackoverflow.com/questions/6283404/generator-of-all-possible-8-symbols-strings-brute-force-8-symbol-password-pyth
chars = [ 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
from itertools import combinations

for i in range(6):
    #Here we are running a for loop to generate all possible combinations of
    #the characters which are printed to a text file called brute.txt. To keep the processing at a 
    #minimum, I have kept the count of possible characters to a maximum of 5 characters. 
    #REF https://stackoverflow.com/questions/6283404/generator-of-all-possible-8-symbols-strings-brute-force-8-symbol-password-pyth
    #REF https://stackoverflow.com/questions/36571560/directing-print-output-to-a-txt-file-in-python-3
    #REF https://docs.python.org/3/library/itertools.html
    for c in itertools.product(chars, repeat=i):
        print(''.join(c), file=open("brute.txt", "a"))

#open the wordlist - the code below has been sourced from CYB6004 Weekly Exercise 6.6
with open("brute.txt", "r") as wordlist:
    #repeat for each word
    for word in wordlist.readlines():
        word = word.rstrip()
        #hash the word
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
        print(f"Trying password {word}:{wordlistHash}")
        #if the hash is the same as the correct password's hash then we have cracked the password!
        if(wordlistHash == passwordHash):
            print(f"Password has been cracked! It was {word}")
            break
        