#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['overflowCVEcode1.txt','overflowCVEcode2.txt','overflowCVEcode3.txt','overflowCVEcode4.txt','overflowCVEcode5.txt','overflowCVEcode6.txt']
with open('overflowCVECodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)