﻿<?php

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
	$tpl = '';
	$valid_formats = array("jpg", "png", "gif", "bmp");
	if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST")
		{
			$id_product = intval($_POST['id_product']);
			//if($id_product > 0 )
			{
				$n = count($_FILES['image_list']['name']);
					for ($i = 0; $i < $n; $i++) 
					{
						$name = $_FILES['image_list']['name'][$i];
						$size = $_FILES['image_list']['size'][$i];
						
						if(strlen($name))
							{
								list($txt, $ext) = explode(".", $name);
								if(in_array($ext,$valid_formats))
								{
								if($size<(1024*1024))
									{
										$actual_image_name = 'pd-'.$id_product.'-'.($i+1).'-'.time().'.'.$ext;
										$tmp = $_FILES['image_list']['tmp_name'][$i];
										if(move_uploaded_file($tmp, $path.$actual_image_name))
											{
												//@imagejpeg(resize(_UPLOAD_IMG_THUMB.$image,600),$path.$actual_image_name);
												//mysql_query("UPDATE users SET profile_image='$actual_image_name' WHERE uid='$session_id'");
												if($id_product <=0 || $id_product ==''){
													$id_product = -1;
												}
												$sql = "insert into image_product (product_id,image_path) values (".$id_product.",'".$actual_image_name."')";
												$mysql -> setQuery($sql);
												if($mysql -> query()){
													
												}
												
											}
										else
										{
											//$tpl .= $path.$actual_image_name;
											echo "failed";
										}
									}
									else
										echo "Image file size max 1 MB";					
									}
									else{
										echo "Invalid file format..";	
									}
							}
							
						else
							echo "Please select image..!";
							
						//exit;
					}
					
					
					$sqls = 'select id,product_id,image_path from image_product where product_id = '.$id_product;
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
			}
			//else {
				//$tpl = "Chức năng này chỉ thực hiện được khi chỉnh sửa sản phẩm";
			//}
		}

		echo $tpl;//.'ok haha '.$path;
		
?>


