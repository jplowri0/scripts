#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['codeExRatingCode1.txt','codeExRatingCode2.txt','codeExRatingCode3.txt','codeExRatingCode4.txt','codeExRatingCode5.txt']
with open('codeExRatingCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)