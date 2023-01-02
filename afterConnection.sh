
export LC_COLLATE=C;
shopt -s extglob;



select choiceInTable in createTable listTables insertToTable dropTable selectFromTable deleteFromTable updateTable diconnect
do
case $choiceInTable in
createTable )
    . createTable.sh
;;
#------------------------------------------------------------------------------list tables-------------------------------------------------------------------------------
listTables )
   . listTables.sh
;;

#--------------------------------------------------------------------------------insert into----------------------------------------------------------------------------
insertToTable )
    . insertToTable.sh
;;
#----------------------------------------------------------------------------------------------------drop table-----------------------------------

dropTable )
    . dropTable.sh
  
;;
#-----------------------------------------------------------------------------------------------------select from------------------------------------
selectFromTable )
   . selectFromTable.sh
 ;;
#--------------------------------------------------------------------------------------delete from table----------------------------------------------------
deleteFromTable )
	. deleteFromTable.sh
;;
#----------------------------------------------------------------------------------------------------update table ------------------------------------------------------
updateTable )
   . updateTable.sh
;;

diconnect )
    . shell-project.sh
   ;;
* )
    echo "enter valid number"
;;
esac
done


done
