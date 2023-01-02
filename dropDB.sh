
    read -p "enter database name that you need to drop" DBname


if [[ $DBname =~ ^[a-zA-Z_]+$ ]] ;then
    echo "valid name" 
 #cd
    # check exist 

    if [ -d $DBname ] ;then    # ./

        read -p "are you sure to delete this table (y or n)" answer
		
				if [ $answer == "y" ] ;then
                        echo $DBname "will be removed"
                        rm -r $DBname
                        #cd$DBname;
                        #pwd
                elif [ $answer == "n" ] ;then

					 . shell-project.sh
					
				else
					echo "please answer from choices, try again"
                    . dropDB.sh

				fi





    else
        echo "there is no database with the same name"
        
        
        #cd $DBname
    fi
else
echo "try another name"

fi

