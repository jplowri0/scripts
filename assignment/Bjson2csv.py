#!/usr/bin/env python

#REF A. 

import json
import csv

def jsontocsv():
    with open  ("nvdcve-1.1-2020.json") as json_file: 
        data = json.load(json_file)

    cve_data = data['CVE_Items']

    data_file = open('cve2020.csv', 'w')

    csv_writer = csv.writer(data_file)

    count = 0

    for CVE_Items in cve_data:
        if count == 0:
            header = CVE_Items.keys()
            csv_writer.writerow(header)
            count += 1
        csv_writer.writerow(CVE_Items.values())

    with open('cve2020.csv') as inFile:
        with open('cve2020cleaned.csv', 'w', newlinw='') as outFile:
            writer = csv.writer(outFile)
            for row in csv.reader(inFile):
                if any(row):
                    writer.writerow(row)
    


    data_file.close()


#def csvNoBlanks():
    #Below REF B
    #with open("cve2020.csv") as inFile:
        #with open("cve2020cleaned.csv", 'w') as outFile:
            #writer = csv.writer(outFile)
            #for row in csv.reader(inFile):
                #if any(row):
                    #writer.writerow(row)
                    #This is still not working as intended. Blank rows are present. 
    #REF C
    #with open('cve2020.csv') as input, open('cve2020noBlanks.csv', 'w') as output:
        #non_blank = (line for line in input if line.strip())
        #output.writelines(non_blank)
        #This does not remove blank rows. 

    #REF D
    #reader = csv.DictReader(open('cve2020.csv'))
    #writer = csv.DictWriter(open('cve2020noBlanks.csv', 'w', newline=''), fieldnames=reader.fieldnames)

    #for row in reader:
        #if all(col != '' for col in row.values()):
            #continue

        #writer.writerow(row)
    #This is removing all rows. Leaving everything blank. 
        #with open('cve2020.csv', 'w', newline='') as outfile:
        #writer = csv.writer(outfile)
        #for row in data_file:
            #if counter[row[10]]>=504:
                #writer.writerow(row)

jsontocsv()
#csvNoBlanks()