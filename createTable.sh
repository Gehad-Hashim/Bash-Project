
# ---------------------- create table -------------------------------
    read -p "enter table name :" tName

if [[ $tName =~ ^[a-zA-Z]+$ ]] ;then
  echo "valid name"

      		   if [ -f $tName ] ;then  # ./   ~/DBMS/$DBname/$tName
			echo "table alredy exist "

     		    else
			echo "valid, it will be created"
			touch $tName;   
			
			read -p "enter no. of columns :" nColmns
 typeset -i numberOFColmns=$nColmns;
export numberOFColmns;

typeset  i;
typeset  j;
           
   for (( j=0; j<$nColmns; j++ ))
     do
	        # if this first column enter primary
	        if (( j==0 )); then
 		        read  -p "enter primay column :" nColmn ;
 		        echo -n "$nColmn:">>$tName;
 	
            else 		
		        read  -p "enter name of next column :" nColmn;
		        echo -n "$nColmn:">>$tName;
	        fi
    done
    # we out of j loop
    echo " " >> $tName
    for (( j=0; j<$nColmns; j++ ))
     do
	    read -p "enter datatype of column no. $j (1=int or 2=string?) " dtype ;

		if (( $dtype==1 )); then
			echo -n "int:">>$tName;
		else
			echo -n "string:">>$tName;
		fi
     done
     echo " " >>$tName;
		
   fi
else
   echo "try another name"
fi