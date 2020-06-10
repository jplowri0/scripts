#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['DesCode1.txt','DesCode2.txt','DesCode3.txt','DesCode4.txt','DesCode5.txt','DesCode6.txt']
with open('DOSdesCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)