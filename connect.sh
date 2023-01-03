
    echo "we are in " ;pwd ;
    read -p "enter database name you want to connect to it "  DBname 
      
if [[ $DBname =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name" #cd
    # check exist 

    if [  -d $DBname ] ;then    # ./
    echo " exist"
        cd $DBname
    echo "we are in " ;pwd ;
    echo "now you are connected to " $DBname
      
       . afterConnection.sh
    else
        echo "not exist"
        
    fi
else
echo "try another name"
fi


 