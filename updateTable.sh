 echo "update Table pressed"
    read  -p "enter table name to update it :" ftable
 if [[ $ftable =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"
   	 read -p "enter id " idWanted
	 echo -n "meta data of $ftable table are " ":)";
        head -1 $ftable ;
  		read -p "enter column name you want to update:" colUpdateN
   		
 	  typeset -i x=$idWanted+2
	 #echo $x 
  	awk 'BEGIN{FS=":"
	
	}
  	{
     print $x
  	if ( NR == $x )
  	{
		print $0;
   	#sed 's/$0/friends/gp' $ftable
  	 }
   }
 	' $ftable
  	#sed -n /^$toBdel/p $ftable | sed s//gp
  	
 
 else
   echo "try another name"
fi 
         