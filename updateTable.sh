 echo "update Table pressed"
    read  -p "enter table name to update it :" ftable
 if [[ $ftable =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"
   	 read -p "enter id " idWanted
  		read -p "you have columns 1=id 2=name 3=age , enter column name you want to update:" colUpdateN
  
 	  let -i x=$idWanted+2
	 echo "$x"
  	awk 'BEGIN{FS=":"}
  	{

  	if ( NR == 11 )
  	{print $2;
   	sed 's/$2/friends/' $ftable
  	}
  	}
 	 ' $ftable
  	#sed -n /^$toBdel/p $ftable | sed s//gp
  	
 
 else
   echo "try another name"
fi 
         