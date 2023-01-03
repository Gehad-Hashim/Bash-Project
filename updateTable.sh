   
    read  -p "enter table name to update it :" ftable
 if [[ $ftable =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"
   	 read -p "enter id " idWanted
	 echo -n "meta data of $ftable table are ";
        head -1 $ftable ;
  		read -p "enter column number you want to update:" colUpdateN
   		

	  dd=$(sed -n /^$idWanted/p $ftable |cut -d: -f$colUpdateN);

	 echo replace ${dd} with what ,enter new value 
	 read new
sed -i s/$dd/$new/ $ftable
echo "table updated"


 else
   echo "try another name"
fi 
         