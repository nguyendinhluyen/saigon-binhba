<?php
	include('home_start.php');
	$email = input($_POST['email']);
	$product_key = input($_POST['product_key']);
	$product_name = input($_POST['product_name']);
	$product_type = input($_POST['product_type']);
	$product_color = input($_POST['product_color']);
	$product_price = input($_POST['product_price']);
	$product_quantity = input($_POST['product_quantity']);
	
	$arrData = array(
			'email'				=> $email,
			'product_key' 		=> $product_key,
			'product_name'		=> $product_name,
			'product_type'		=> $product_type , 
			'product_color'		=> $product_color,
			'product_price'		=> $product_price,
			'product_quantity'	=> $product_quantity,
	);
	
	$rows = GetRows('product_key,product_type,product_color', 'tbl_favorite', 'product_key = "'.$product_key.'" and product_type = "'.$product_type.'" and product_color = "'.$product_color.'" and email ="'.$email.'"');
	if(empty($rows)){
		insert('tbl_favorite', $arrData);
		echo 'Đã thêm vào sản phẩm ưa thích';
	}
	else{
		echo 'Sản phẩm đã có trong ưa thích';
	}
	
	
?>
