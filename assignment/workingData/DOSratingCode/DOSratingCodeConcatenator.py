#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['RatingCode1.txt','RatingCode2.txt','RatingCode3.txt','RatingCode4.txt','RatingCode5.txt','RatingCode6.txt']
with open('DOSratingCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)