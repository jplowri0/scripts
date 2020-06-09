#The code below creates a list from the outfrom from the sed commands
#from formatting[attackvector].sh. 
#REF https://kite.com/python/answers/how-to-read-a-text-file-into-a-list-in-python#use-file-readlines

CVEcodeTxt = open("CVEcode.txt", "r")
CVEcodeList = CVEcodeTxt.readlines()


ratingCodeTxt = open("RatingCode.txt", "r")
ratingCodeList = ratingCodeTxt.readlines()


desCodeTxt = open("DesCode.txt", "r")
desCodeList = desCodeTxt.readlines()


#Now need to append these lists together to create one csv. 

rows = zip()