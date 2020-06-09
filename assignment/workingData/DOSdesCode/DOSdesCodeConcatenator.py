#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/17749058/combine-multiple-text-files-into-one-text-file-using-python

import glob

read_files = glob.glob("*.txt")

with open("DOSdesCodeAll.txt", "wb") as outputFiles:
    for f in read_files:
        with open(f, "rb") as inputFiles:
            outputFiles.write(inputFiles.read())