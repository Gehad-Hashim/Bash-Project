echo "select from Table pressed"
    read  -p "enter table name to select from it :" ftable

if [[ $ftable =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"


    if [ -f $ftable ] ;then  # ./   ~/DBMS/$DBname/$tName
      echo "valid, you can select now "
      
           select Ychoice  in "Select all meta+data" "Selection by Id" "Selection by column" "Selection data" "back in table Choices" 
            do
            case $Ychoice in
            
            "Select all meta+data" )
               cat $ftable;
            ##########################
            ;;
            "Selection by Id" )
               echo -n "Select by Id: "
			read -p  "Enter Your Id to get the information : " IdChoice
			#let s;
			 #(( s = $IdChoice+2 ))  
			#echo $s
			#sed '' $ftable | grep ^$IdChoice:$ $ftable
			sed -n /^$IdChoice:/p $ftable 
            ;;
            "Selection by column" )
                       read -p "Enter Your Id to get the information : " IdChoice
                       echo -n "meta data of $ftable table are " ":)";
                        head -1 $ftable ;
                        echo -n "(:"
                       read -p "Enter column name ():" columnName
                       
                       sed -n /^$IdChoice:/p $ftable |cut -d: -f2
             ;;
            ###########################
            "Selection data"  )
                sed -n '3,$p' $ftable
             ;;
            ###########################
            "back in table Choices" )
            . afterConnection.sh
            ;;
            esac
            done
            
            
            
   else
     echo "not exist"
   
  fi 
  
  
 else
   echo "not valid name"
fi 
 