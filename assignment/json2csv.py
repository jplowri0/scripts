#!/usr/bin/env python

#https://www.youtube.com/watch?v=ZPYhoqTy_v8

import json
import csv

with open("nvdcve-1.1-2020.json") as file:
    data = json.load(file)

fname = "nvd2020.csv"

with open(fname, "w") as file:
    csv_file = csv.writer(file)
    csv_file.writerow(["CVE Data Type", "CVE Data Format"])
    for item in data["result"]:
        csv_file.writerow([item['CVE_data_type'],item['CVE_data_format']])
