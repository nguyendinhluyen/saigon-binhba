<?php
	$orderCart = $xtemplate->load('history_order');
	$user = $_SESSION['username'];
	$userS = new User();
	$orders = $userS->getOrderByUser($user);
	//print_r($orders);
	//$n = count($order);
	$block = $xtemplate->get_block_from_str($orderCart,'ORDER');
	$tpl_temp ='';
	foreach ($orders as $value) {
		$edit_html = '';
		if($value['status']==0){
			$edit_html = '<div class="edit"><a href="'.$linkS.'gio-hang.html/edit/'.$value['id'].'">Sửa1</a>|<a href="'.$linkS.'gio-hang.html/edit/'.$value['id'].'">Xóa</a></div>';
		}
		$tpl_temp .= $xtemplate->assign_vars($block,array(
													'madonhang' => $value['id'],
													'ngaydat'	=> date('Y-m-d',$value['order_date']),
													'tongtien'	=>$value['total'],
													'trangthai'	=> ($value['status']==1)? 'Đã giao hàng':'Chưa giao hàng',
													'edit_html'	=> $edit_html,
													));
	}
	$orderCart = $xtemplate->assign_blocks_content($orderCart ,array(
														'ORDER'=>$tpl_temp
														));
	
	$orderCart  = $xtemplate->replace($orderCart,array(
											'user' =>  $user,
	));
	$breadcrumbs_path = '<a href="{linkS}">Nanapet</a>';
	$breadcrumbs_path .= ' &raquo; '.'Lịch sử mua hàng';
	$content = $orderCart;
?>