
     read -p "enter table name :" tName

if [[ $tName =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"

    if [ -f $tName ] ;then  
		echo "valid, you can insert now"
typeset x;
 x="$(head -1 $tName | grep -o ':' | wc -l)" 
        
       
        echo "there are $x columns in $tName ";
		echo -n "meta data of $tName table are ";
        head -1 $tName ;

        echo "the last id has been inserted in $tName was :";
		sed '1,2d' $tName | tail -1  | cut -d: -f1 #last id


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
   