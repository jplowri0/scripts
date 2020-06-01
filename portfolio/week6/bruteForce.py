#!/usr/bin/python3
import hashlib
import itertools
#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"


#create the bruteforce text file. This will create all combinations of characters
#up to 6 characters. 
#Here characters each character is placed into an array and the combinations function from the itertool 
#module are imported. REF A
letters = [ 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
from itertools import combinations

for i in range(6):
    #Here we are running a for loop to generate all possible combinations of
    #the characters which are printed to a text file called brute.txt
    #REF A
    #REF B
    #REF C
    for c in itertools.product(letters, repeat=i):
        print(''.join(c), file=open("brute.txt", "a"))

#open the wordlist
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
        