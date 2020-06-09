import csv


#The code below creates a list from the output from the sed commands. 
#Each element scraped has their own .txt file. This script is importing each .txt and now creating a single .csv file. 
#from formatting[attackvector].sh. 
#REF https://kite.com/python/answers/how-to-read-a-text-file-into-a-list-in-python#use-file-readlines

CVEcodeTxt = open("CVEcode.txt", "r")
CVEcodeList = CVEcodeTxt.readlines()
CVEcodeList = [item.rstrip() for item in CVEcodeList] #This removes the \n from each item in the list. REF http://python.6.x6.nabble.com/rstrip-in-list-td1745970.html 
print(CVEcodeList)


ratingCodeTxt = open("RatingCode.txt", "r")
ratingCodeList = ratingCodeTxt.readlines()
ratingCodeList = [item.rstrip() for item in ratingCodeList] #REF http://python.6.x6.nabble.com/rstrip-in-list-td1745970.html 
print(ratingCodeList)

desCodeTxt = open("DesCode.txt", "r")
desCodeList = desCodeTxt.readlines()
desCodeList = [item.rstrip() for item in desCodeList] #REF http://python.6.x6.nabble.com/rstrip-in-list-td1745970.html 
print(desCodeList)

#The code below, creates a CSV file joining the three lists. REF https://stackoverflow.com/questions/17704244/writing-python-lists-to-columns-in-csv

rows = zip(CVEcodeList, ratingCodeList, desCodeList)

with open('scrapedDOS.csv', "w") as f:
    writer = csv.writer(f)
    for row in rows:
        writer.writerow(row)