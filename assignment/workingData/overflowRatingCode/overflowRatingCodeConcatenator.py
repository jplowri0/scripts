#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['overflowRatingCode1.txt','overflowRatingCode2.txt','overflowRatingCode3.txt','overflowRatingCode4.txt','overflowRatingCode5.txt','overflowRatingCode6.txt']
with open('overflowRatingCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)