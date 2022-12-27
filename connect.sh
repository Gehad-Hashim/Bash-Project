 
 connectDB ()
{
   echo hello connect
    echo "we are in " ;pwd ;
    read -p "enter database name you want to connect to it "  DBname 

    

       reg=[[^[a-zA-Z]]];
if [[ $DBname == "iti" ]] ;then
    echo "valid name" #cd
    # check exist 

    if [  -d $DBname ] ;then    # ./
    echo " exist"
        cd $DBname
    echo "we are in " ;pwd ;
    echo "now you are connected to " $DBname

    else
        echo "not exist"
        
    fi
else
echo "try another name"
fi

# -------------------------now connection successful ---------------
select choiceInTable in createTable listTable insertToTable dropTable selectFromTable updateTable
do
case $choiceInTable in
createTable )
    echo "create Table pressed"
;;


listTable )
    echo "list Table pressed"

;;


insertToTable )
    echo "insert Table pressed"

;;


dropTable )
    echo "drop Table pressed"

;;

selectFromTable )
    echo "select from Table pressed"

;;

updateTable )
    echo "update Table pressed"

;;

* )
    echo "enter valid number"
;;
esac
done

}
  connectDB         #call function