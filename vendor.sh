#!/bin/sh 

(while read LINE;  
do 
out=`./mac_van.sh $LINE | cut -d ' ' -f 2-`
echo $LINE ";" $out
done < test_out ) > new_out.txt
echo "OK"

