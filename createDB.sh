 creatDB()
 {
    read -p "enter name of database:" DBname

# check regex

if [[ $DBname =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid"
    # ls
    # check exist 

    if [ -d $DBname ] ;then    # ./
        echo "already exist database " "named " $DBname ":)"
        # cd $DBname;
        pwd
    else
        echo "welcome first time"
        mkdir ./$DBname;
        # ls
        # cd $DBname
    fi
else
echo "out"
fi
 }
 creatDB #call