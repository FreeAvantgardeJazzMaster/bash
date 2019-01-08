#!bin/bash
sed 's/<SEP>/,/g' triplets_sample.txt |
cut -d , -f 1 |
sort | 
uniq |
awk '{print NR-1 "," $0}' > users.csv