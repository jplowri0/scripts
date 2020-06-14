#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['overflowDesCode1.txt','overflowDesCode2.txt','overflowDesCode3.txt','overflowDesCode4.txt','overflowDesCode5.txt','overflowDesCode6.txt']
with open('overflowDesCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)