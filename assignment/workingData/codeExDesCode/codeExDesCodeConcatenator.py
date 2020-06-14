#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['codeExDesCode1.txt','codeExDesCode2.txt','codeExDesCode3.txt','codeExDesCode4.txt','codeExDesCode5.txt']
with open('codeExDesCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)