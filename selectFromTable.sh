export LC_COLLATE=C;
shopt -s extglob;

    read  -p "enter table name to select from it :" ftable

if [[ $ftable =~ ^[a-zA-Z]+$ ]] ;then
    echo "valid name"


    if [ -f $ftable ] ;then  # ./   ~/DBMS/$DBname/$tName
      echo "valid, you can select now "
      
           select Ychoice  in "Select all meta+data" "Selection by Id" "Select column using id (projection) " "Selection by column name" "Selection data" "back in table Choices" 
            do
            case $Ychoice in
            
            "Select all meta+data" )
               cat $ftable;
            ##########################
            ;;
            "Selection by Id" )
               echo -n "Select by Id: "
			read -p  "Enter Your Id to get the information : " IdChoice
			
			sed -n /^$IdChoice:/p $ftable 
            ;;

           "Select column using id (projection) " )
                 read -p "Enter Your Id to get the information : " IdChoice
                       echo -n "meta data of $ftable table are " ":)";

                        head -1 $ftable ;
                       
                       read -p "Enter column  number():" columnNumber
                       
                     sed -n /^$IdChoice:/p $ftable | cut -d: -f$columnNumber 
                       
             ;;

           





            "Selection by column name" )
                     #   read -p "Enter Your Id to get the information : " IdChoice
                       echo -n "meta data of $ftable table are " ":)";

                        head -1 $ftable ;
                       
                       read -p "Enter column  number():" columnNumber
                       
                     #   sed -n /^$IdChoice:/p $ftable |
                       cut -d: -f$columnNumber $ftable
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
 