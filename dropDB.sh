 dropDB()
 {
 pwd
    echo "drop pressed"
    read -p "enter database name that you need to drop" DBname
    reg=[[^[a-zA-Z]]];
if [[ $DBname == "nn" ]] ;then
    echo "valid name" #cd
    # check exist 

    if [ -d $DBname ] ;then    # ./
        echo $DBname "will be removed"
        rm -r $DBname
        #cd$DBname;
        #pwd
    else
        echo "there is no database with the same name"
        
        
        #cd $DBname
    fi
else
echo "try another name"



fi
 }
 dropDB #call