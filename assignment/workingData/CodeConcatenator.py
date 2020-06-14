#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['CVEcode1.txt','CVEcode2.txt','CVEcode3.txt','CVEcode4.txt','CVEcode5.txt','CVEcode6.txt']
with open('DOScveCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)