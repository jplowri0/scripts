#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['memoryDesCode1.txt','memoryDesCode2.txt','memoryDesCode3.txt','memoryDesCode4.txt','memoryDesCode5.txt']
with open('memoryDesCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)