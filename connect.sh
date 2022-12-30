 
 connectDB ()
{
typeset nColmns;
   echo hello connect
    echo "we are in " ;pwd ;
    read -p "enter database name you want to connect to it "  DBname 

    

       reg=[[^[a-zA-Z]]];
if [[ $DBname == "nn" ]] ;then
    echo "valid name" #cd
    # check exist 

    if [  -d $DBname ] ;then    # ./
    echo " exist"
        cd $DBname
    echo "we are in " ;pwd ;
    echo "now you are connected to " $DBname

    else
        echo "not exist"
        
    fi
else
echo "try another name"
fi

# -------------------------now connection successful ---------------
select choiceInTable in createTable listTable insertToTable dropTable selectFromTable deleteFromTable updateTable goBack
do
case $choiceInTable in
createTable )
    echo "create Table pressed"
    read -p "enter table name :" tName

    if [ -f $tName ] ;then  # ./   ~/DBMS/$DBname/$tName
	echo "table alredy exist "

   else
	echo "valid, it will be created"
	touch $tName;   
   fi
# ---------------------- create table

read -p "enter no. of columns :" nColmns
typeset i;
typeset j;
        
        
        
   for (( j=0; j<$nColmns; j++ ))
     do
	# if this first column enter primary
	if (( j==0 )); then
 		read  -p "enter primay column :" nColmn ;
 		echo -n "$nColmn:">>$tName;
 	
        else
 	#break;
 		
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
;;


#------------------------------------------------------------------------------list tables-------------------------------------------------------------------------------
listTable )
    echo "list Table pressed"
  ls -F | grep -v "/";
;;

#--------------------------------------------------------------------------------insert into----------------------------------------------------------------------------
insertToTable )
    echo "insert Table pressed"
     read -p "enter table name :" tName

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
   
   

;;
#----------------------------------------------------------------------------------------------------drop table-----------------------------------

dropTable )
    echo "drop Table pressed"
    
    read -p "enter table name to drop:" tName

if [ -f $tName ] ;then  # ./   ~/DBMS/$DBname/$tName
 echo "table will be removed "
 rm $tName

else
 echo "not exist"
  

fi
;;
#-----------------------------------------------------------------------------------------------------select from------------------------------------
selectFromTable )
    echo "select from Table pressed"
    read  -p "enter table name to select from it :" ftable
    if [ -f $ftable ] ;then  # ./   ~/DBMS/$DBname/$tName
      echo "valid, you can select now "
      
           select Ychoice  in "Select all meta+data" "Selection by Id" "Selection data" "back in table Choices"
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
			sed '' $ftable | grep ^$IdChoice $ftable
            ;;
            ###########################
            "Selection data"  )
                sed -n '3,$p' $ftable
             ;;
            ###########################
            "back in table Choices" )
            
            ;;
            esac
            done
            
            
            
   else
     echo "not exist"
   
  fi 
 ;;
#--------------------------------------------------------------------------------------delete from table----------------------------------------------------
deleteFromTable )
	echo "delete From Table pressed"
   	 read  -p "enter table name to delete from it :" ftable
   	 
   	  if [ -f $ftable ] ;then  # ./   ~/DBMS/$DBname/$tName
		echo "valid, you can delete from it now"
		 #read  -p "delete 1=all 2=by id:" del
		 
   	 	#if (( $del == 1 )) ;then
   	 		#echo delete all
   	 		
   	 	  # else 
   	 		#echo "delete by id"
   	 	
   	 	#fi
   	 
   	 else
	echo "there is no table called $ftable" 
	
   fi
   	 
   	 
   	
   	 
   	 
   	 
;;
#----------------------------------------------------------------------------------------------------update table ------------------------------------------------------
updateTable )
    echo "update Table pressed"
    read  -p "enter table name to update it :" ftable
    nano $ftable
         
;;

goBack )
    . shell-project.sh
   ;;
* )
    echo "enter valid number"
;;
esac
done

}
  connectDB         #call function
