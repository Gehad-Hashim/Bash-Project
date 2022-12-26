#!/usr/bin/bash

# echo "welcome to our DBMS"

# echo "Your folder DataBases is created in your current path"

export LC_COLLATE=C;
shopt -s extglob;

if [ -d "DBMS" ] ;then    # ./
echo "welcome to our DBMS"
cd DBMS;
else
echo "welcome first time"
mkdir ./DBMS;
cd DBMS;
fi
echo -n "your path now is " ;pwd

# we are in DBMS folder
echo "you can create , list ,...... DB"

select choice in createDB listDB connectToDB dropDB exit
do
case $choice in
createDB)

    # echo "creat pressed"
    read -p "enter name of database:" DBname

# check regex
reg=[^[a-z][A-Z]_]*];
if [[ $DBname =~ $reg ]] ;then
    echo "valid"
    ls
    # check exist 

    if [ -d $DBname ] ;then    # ./
        echo "welcome back to your database " "named " $DBname ":)"
        cd $DBname;
        pwd
    else
        echo "welcome first time"
        mkdir ./$DBname;
        ls
        cd $DBname
    fi
else
echo "out"










fi
   echo " *** *** ***outside regex  choose 1 2 3 4 5"
 
;;
listDB)
    echo "list pressed"
    ls 
;;
connectToDB)
    echo "connect pressed"
;;
dropDB)
    echo "drop pressed"
;;
exit)
    break
;;
*)
    echo "any"
;;
esac
done