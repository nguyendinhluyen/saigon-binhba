<?php

error_reporting(0);
define('_INCLUDEA','../../../include/');
define('_CLASS','../../../class/');
define('_HOME','../../../');
define('_UPLOAD_IMG_DETAIL', '../../../upload/product_detail/');
define('_UPLOAD_IMG_', '../../upload/product_detail/');
//include(_INCLUDEA."admin_start.php");
//include(_INCLUDE."lag_config.php");
//include(_INCLUDE."function.php");
//include(_INCLUDEA."function_admin.php");
//include(_CLASS."xtemplate.php");

include(_INCLUDE . 'zlib.php');
include(_CLASS . 'mysql.php');
include(_HOME . 'config.php');
include("../config_admin.php");
$obj_config = new config();
$mysql = new mysql();
ob_start();

session_start();
//$session_id='1'; //$session id
global $mysql;
$path = _UPLOAD_IMG_DETAIL;
$id_product = $_GET['id_product'];
if(isset($_GET['id_product_detail'])){
	//get img path
	$sql_de = 'select id,product_id,image_path from image_product where id = '.$_GET['id_product_detail'];
	$mysql -> setQuery($sql_de);
	$img = $mysql->loadOneRow();
	
	$sqld = 'delete from image_product where id = '.$_GET['id_product_detail'];
	$mysql -> setQuery($sqld);
	if($mysql -> query()){
		@unlink(_UPLOAD_IMG_DETAIL.$img['image_path']);
	}
}
$tpl = '';				
$sqls = 'select id,product_id,image_path from image_product where product_id = '.$id_product;
if($id_product <=0){
	$sqls = 'select id,product_id,image_path from image_product where product_id = -1';
}
//echo $sqls;
//$tpl.=$sqls;
$mysql -> setQuery($sqls);
$imgs = $mysql->loadAllRow();
//print_r($imgs);
$m = count($imgs);
for ($i = 0;$i<$m;$i++){
	$tpl .= "<img width='60px;' style='padding:10px;' height='80px;' src='"._UPLOAD_IMG_.$imgs[$i]['image_path']."'  class='preview'>"."<a href='' onclick='deleteImg(".$imgs[$i]['id'].");return false;'>Xóa</a>";
}
if($tpl == ''){
	$tpl = 'Chưa có hình minh họa';
}			
echo $tpl;//.'ok haha '.$path;
		
?>


