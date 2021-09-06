#!/bin/sh

printf "Write mac on standart format (11-00-22) (110022) (11:00:22):   "
read mac
printf "Write Vendor: "
read vendor

result="$(grep -i  ^$mac ./db.txt)";

if [ "$result" ]; then

    echo "MAC added yet"

else

    echo "$mac                      $vendor" >> db.txt
    echo "mac add to database"
fi


