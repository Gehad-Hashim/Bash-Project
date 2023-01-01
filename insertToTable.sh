
    echo "insert Table pressed"
     read -p "enter table name :" tName



if [[ $tName =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"

    if [ -f $tName ] ;then  # ./   ~/DBMS/$DBname/$tName
		echo "valid, you can insert now"
		for (( j=0; j<$nColmns; j++ ))
     			do
				# if this first column enter primary
				if (( j==0 )); then
 					read  -p "enter value of primay column :" nColmn ;
 					echo -n "$nColmn:">>$tName;
 	
        			else
 					#break;
 		
					read  -p "enter value of next column :" nColmn;
					echo -n "$nColmn:">>$tName;
				fi
    			done
    			echo " " >>$tName;
   else
	echo "there is no table called $tName" 
	
   fi
   
else
   echo "try another name"
fi
   