
    echo "insert Table pressed"
     read -p "enter table name :" tName

if [[ $tName =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"

    if [ -f $tName ] ;then  
		echo "valid, you can insert now"
typeset x;
 x="$(head -1 $tName | grep -o ':' | wc -l)" 
        
       
        echo "$x"
		for (( j=0; j<$x ; j++ ))
     			do
				# if this first column enter primary
				if (( j==0 )); then
 					read  -p "enter value of primay column :" nColmn ;
 					  
 					
 					  #  Oldncolumn = ncolmn;
 					
 					
 					echo -n "$nColmn:">>$tName;
 	
        			else
 		
 		
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
   
