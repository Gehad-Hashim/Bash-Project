#!/usr/bin/bash

# echo "welcome to our DBMS"

# echo "Your folder DataBases is created in your current path"

export LC_COLLATE=C;
shopt -s extglob;


if [ -d ~/DBMS ] ;then    # ./
echo "welcome to our DBMS"
cd ~/DBMS;
else
echo "welcome first time"
mkdir ~/DBMS;   #./
cd ~/DBMS;
fi
echo -n "your path now is " ;pwd

# we are in DBMS folder
echo "you can create , list ,...... DB"

select choice in createDB listDB connectToDB dropDB exit
do
case $choice in
# --------------------------------------------------------------create-----
createDB)
. createDB.sh
;;
# --------------------------------------------------------------list-----

listDB)
     . listDB.sh

    ;;
#  --------------------------------------------------------------connect-----------------------------------------------------
connectToDB)
    
     . connect.sh
    ;; 
#  --------------------------------------------------------------------drop----------------------------------------
dropDB)
     . dropDB.sh

    ;;
exit)
    break
;;
*)
    echo "please choose from the menu";
;;
esac
done