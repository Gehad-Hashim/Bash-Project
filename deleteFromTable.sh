echo "delete From Table pressed"
   	 read  -p "enter table name to delete from it :" ftable
  if [[ $ftable =~ ^[a-zA-Z_]+$ ]] ;then
    echo "valid name" 	 
   	  if [ -f $ftable ] ;then  # ./   ~/DBMS/$DBname/$tName
		echo "valid, you can delete from it now"
		 read  -p "delete 1=all 2=by value of prim key:" del
		 
   	 	if (( $del == 1 )) ;then

            sed -i '3,$d' $ftable;
            echo "delete all done"

   	 	else 
   	 		echo "delete by value of prim key";
            read  -p "enter value of primary key: " toBdel;
                    if [ $toBdel -ge 1 ];then

                    
# typeset $toBdel
                    # check primary  # send id(to be deleted) as argument
                   # ./checkPrim $toBdel
                   echo "this data that will be deleted :"
                    
                    sed -n /^$toBdel:/p $ftable
                    if [ $? -ne 0 ];then
                        echo "does not exist"
                    else
                        #  grep -v '^$toBdel' $ftable>>tmp
                        #  echo hi
                        #  cp tmp ftable
                        
                    #    grep '^((toBdel))' $ftable|
                        sed -i /^$toBdel:/d $ftable
                         echo "delete row [primary = $toBdel] done";

                    fi
                    else
                    echo "not valid primary key value"
                    fi


   	    fi
   	 
   	  else
	echo "there is no table called $ftable" 
	
      fi
   	  	 

else
   echo "try another name"
fi   	 
   	 