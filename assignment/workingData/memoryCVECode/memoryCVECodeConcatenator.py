#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['memoryCVEcode1.txt','memoryCVEcode2.txt','memoryCVEcode3.txt','memoryCVEcode4.txt','memoryCVEcode5.txt']
with open('memoryCVECodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)