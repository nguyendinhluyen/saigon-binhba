<?php 
    $baseDir="../../";
include( $baseDir . "includes/db_mysql.inc.php");
include( $baseDir . "includes/global.inc.php");

$id 				= $_POST['id'];
$updateRecordsArray 	= $_POST['recordsArray'];

if ($id!=""){
	

		$str_sql_del = "delete from $gTableName where recordID='" . $_POST[id] . "'";
        $db=new DB_Sql;    $db->query($str_sql_del);
	 

}
?>