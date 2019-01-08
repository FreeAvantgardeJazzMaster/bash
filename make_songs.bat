#!bin/bash
sed 's/<SEP>/,/g' unique_sample.txt |
cut -d , -f 2-4 |
sort -k 1 |
uniq |
awk '{print NR-1 "," $0}' > songs.csv
	