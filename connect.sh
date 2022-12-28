 
 connectDB ()
{
   echo hello connect
    echo "we are in " ;pwd ;
    read -p "enter database name you want to connect to it "  DBname 

    

       reg=[[^[a-zA-Z]]];
if [[ $DBname == "nn" ]] ;then
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
select choiceInTable in createTable listTable insertToTable dropTable selectFromTable deleteFromTable updateTable goBack
do
case $choiceInTable in
createTable )
    echo "create Table pressed"
    read -p "enter table name :" tName

    if [ -f $tName ] ;then  # ./   ~/DBMS/$DBname/$tName
echo "table alredy exist "

else
echo "valid, it will be created"
touch $tName;   

# ---------------------- elmohma elsa3baaaaaa

read -p "enter no. of columns" nColmns
typeset i;
for (( i=0; i<$nColmns; i++ ))
do
# if this first column enter primary
if (( i==0 )); then
read -p "enter primay column" nColmn ;

read -p "int or string?" dtype ;
 echo -n "$nColmn-\b$dtype:\b">>student;
fi
read -p "enter name column" nColmn;
read -p "int or string?" dtype ;
echo "$nColmn-$dtype">>student;



done
fi

;;



listTable )
    echo "list Table pressed"
  ls -F | grep -v "/";
;;


insertToTable )
    echo "insert Table pressed"


;;


dropTable )
    echo "drop Table pressed"
    
    read -p "enter table name to drop:" tName

if [ -f $tName ] ;then  # ./   ~/DBMS/$DBname/$tName
 echo "table will be removed "
 rm $tName

else
 echo "not exist"
  

fi

;;

selectFromTable )
    echo "select from Table pressed"
    nano student
;;

updateTable )
    echo "update Table pressed"

;;

goBack )
    . shell-project.sh
   ;;
* )
    echo "enter valid number"
;;
esac
done

}
  connectDB         #call function