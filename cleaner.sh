#!/bin/bash
sed 's/,//g' subdomains.txt > s1
sed 's/"//g' s1 > s2
sed 's/.$//g' s2 > s3
echo "[ + ] Cleaning and automatic adjusting data "
echo -n "[ + ] Enter Domain again in dot format now: "
read web; awk -v v1=$web '{print $0 v1}' s2 > s3
sed 's/\.\././g' s3 > s4
tail -n+5 s4 > s5
sed -e :a -e '$d;N;2,3ba' -e 'P;D' s5 > s6
cat s6 > subdomains
rm s1
rm s2
rm s3
rm s4
rm s5
rm s6
rm subdomains.txt
