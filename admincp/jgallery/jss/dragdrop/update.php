<?php 
    $baseDir="../../";
include( $baseDir . "includes/db_mysql.inc.php");
include( $baseDir . "includes/global.inc.php");

$action 				= $_POST['action'];
$updateRecordsArray 	= $_POST['recordsArray'];

if ($action == "updateRecordsListings"){
	
	$listingCounter = 1;
	foreach ($updateRecordsArray as $recordIDValue) {
		
		$str_sql_upd = "UPDATE $gTableName SET $gPosfield = " . $listingCounter . " WHERE recordID = " . $recordIDValue;
        $db=new DB_Sql;    $db->query($str_sql_upd);
		$listingCounter = $listingCounter + 1;	
	}
	
	echo '<pre>';
	print_r($updateRecordsArray);
	echo '</pre>';
	echo 'If you refresh the page, you will see that records will stay just as you modified.';
}
?>