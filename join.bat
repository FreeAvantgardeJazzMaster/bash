#!bin/bash

join -t , -1 2 -2 1 -o 1.1 2.2 2.3 <(sort -k 2 -t , users.csv) <(sort -k 1 -t , triplets_sample.csv) > userjoin.csv
join -t , -1 2 -2 2 -o 1.1 2.2 1.3 <(sort -k 2 -t , userjoin.csv) <(sort -k 2 -t , songs.csv) 