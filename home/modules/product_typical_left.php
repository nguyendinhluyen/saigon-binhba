<?php
/*
	$Product = new Product();
	$Category = new  Category();
	$product_typical_left = $xtemplate->load('product_typical_left');
	$products = $Product->getProductsBestSellLimit(0,10);
	$n = count($products);
	//print_r($products);
	$tpl = '';
	$tpl_temp = '';
	$block = $xtemplate->get_block_from_str($product_typical_left,'PRODUCT');
	
	for($i=0;$i<$n;++$i)
	{

		$cate = $Category->getCategoryById( $products[$i]['categories_id']);
		//$category_key = $Category->getCategoryKeyByProductKey($products[$i]['products_key']);
		$tpl_temp .= $xtemplate->assign_vars($block,array(
					'product_img'		=> $products[$i]['products_image'],
					'product_name'  	=> $products[$i]['products_name'],
					'product_price'   	=> $products[$i]['products_price'],
					'product_short'   	=> $products[$i]['description'],
					'product_key' 		=> $products[$i]['products_key'],
					'category'			=> $cate['categories_key']
		));

	}

	$tpl = '<ul>'.$tpl_temp.'</ul>';
	//echo $tpl;
	$product_typical_left = $xtemplate->assign_blocks_content($product_typical_left ,array(
													'PRODUCTS'=>$tpl
	));
	*/
	$product_typical_left = $xtemplate->load('product_typical_left');
?>