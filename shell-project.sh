#!/usr/bin/bash

echo "welcome to our DBMS"


export LC_COLLATE=C;
shopt -s extglob;


select choice in createDB listDB connectToDB dropDB exit
do
case $choice in
"createDB")
    echo "creat pressed"
    read -p "enter name :" name
    echo "DB created"
;;
"listDB")
    echo "list pressed"
;;
"connectToDB")
    echo "connect pressed"
;;
"dropDB")
    echo "drop pressed"
;;
"exit")
    break
;;
*)
    echo "any"
;;
esac
done