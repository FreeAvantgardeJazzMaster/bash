#!bin/bash
sed 's/<SEP>/,/g' triplets_sample.txt |
cut -d , -f 3 |
sort | 
uniq |
awk -F"," '{OFS=","; $1=strftime("%Y-%m-%d %H:%M:%S", $1); print $0}' |
awk '{print NR-1 "," $0}' > dates.csv
