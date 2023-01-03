
    read -p "enter table name to drop:" tName

if [[ $tName =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"

		if [ -f $tName ] ;then  # ./   ~/DBMS/$DBname/$tName
		read -p "are you sure to delete this table (y or n)" answer
		
				if [ $answer == "y" ] ;then
				


						echo "table will be removed "
						rm $tName
				elif [ $answer == "n" ] ;then

					 . afterConnection.sh
					
				else
					echo "please answer from choices, try again"
                    . dropTable.sh

				fi
		else
			 echo "not exist"
  

		fi
		
		
		
	else
   echo "try another name"
fi