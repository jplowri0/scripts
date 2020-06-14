#This script will collect all of the text files from the sed loop and 
#concatenate them all together as one complete text file. 
#REF https://stackoverflow.com/questions/13613336/python-concatenate-text-files




filenames = ['codeExCVEcode1.txt','codeExCVEcode2.txt','codeExCVEcode3.txt','codeExCVEcode4.txt','codeExCVEcode5.txt']
with open('codeExCveCodeAll.txt', 'w') as outputFiles:
    for i in filenames:
        with open(i) as inputFiles:
            for line in inputFiles:
                outputFiles.write(line)