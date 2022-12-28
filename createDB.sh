 #export $DBname
 creatDB()
 {
 # echo "creat pressed"
    read -p "enter name of database:" DBname

# check regex
reg=[[^[a-zA-Z]]];
if [[ $DBname == nn ]] ;then
    echo "valid"
    ls
    # check exist 

    if [ -d $DBname ] ;then    # ./
        echo "already exist database " "named " $DBname ":)"
        # cd $DBname;
        pwd
    else
        echo "welcome first time"
        mkdir ./$DBname;
        ls
        # cd $DBname
    fi
else
echo "out"










fi
   echo " *** *** ***outside regex  choose 1 2 3 4 5"
 
 }
 creatDB #call