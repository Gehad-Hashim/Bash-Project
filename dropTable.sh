 echo "drop Table pressed"
    
    read -p "enter table name to drop:" tName

if [[ $tName =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"

		if [ -f $tName ] ;then  # ./   ~/DBMS/$DBname/$tName
			 echo "table will be removed "
			 rm $tName

		else
			 echo "not exist"
  

		fi
		
		
		
	else
   echo "try another name"
fi