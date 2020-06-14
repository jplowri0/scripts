#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['memoryRatingCode1.txt','memoryRatingCode2.txt','memoryRatingCode3.txt','memoryRatingCode4.txt','memoryRatingCode5.txt']
with open('memoryRatingCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)