#!/usr/bin/python3
import hashlib
#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"
#open the wordlist
#repeat for each word
#https://stackoverflow.com/questions/17064472/python-brute-forcing-very-basic
#charlist=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

for i in range(a,zzzzzzzz):
    #hash the word
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    print(f"Trying password {word}:{wordlistHash}")
    #if the hash is the same as the correct password's hash then we have cracked the password!
    if(wordlistHash == passwordHash):
        print(f"Password has been cracked! It was {word}")
        break