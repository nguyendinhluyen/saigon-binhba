<?php
	if(isset($_POST['btndel']))
	{
		$id = (count($_POST['chk']) > 0)?implode($_POST['chk'],','):"''";	
		$mysql->setQuery("delete from user_comment where id in(".$id.")");
		$mysql->query();
		$id = (count($_POST['chk2']) > 0)?implode($_POST['chk2'],','):"''";	
		$mysql->setQuery("delete from guest_comment where id in(".$id.")");
		$mysql->query();
		header("location:./?show=comment&id=".intval($_GET['id']));
	}
	$title = "Xem comment";
	$mysql->setQuery("select products_name from products where products_id='".intval($_GET['id'])."'");
	$product = $mysql->loadOneRow();
	if($mysql->getNumRows()>0)
	{
		$xtemplate -> path = 'com_product/';
		$content = $xtemplate->load('ProductComment');
		//get comment of user
		$block_comment = $xtemplate ->get_block_from_str($content,"CATALOGUE");
		$mysql->setQuery("select id,user_id,comment,browse,ip,date from user_comment where product_id='".intval($_GET['id'])."' order by date desc");
		$result = $mysql->query();
		$totalcm = mysql_num_rows($result);

		while($acm = mysql_fetch_assoc($result))
		{
			$mysql->setQuery("select username from user where id='".$acm['user_id']."'");
			$username = $mysql->loadOneRow();
			$temp_comment .=$xtemplate->assign_vars($block_comment,array(
			'noidung'	=> $acm['comment'],
			'id'		=> $acm['id'],
			'edituser'		=> $acm['id'],
			'nguoicomment'	=> $username['username'],
			'ngaycomment'	=> date("d-m-Y \l\ú\c H:i",$acm['date']),
			'ip'			=>$acm['ip'],
			'browse'		=>$acm['browse']
			));
		}
		$content = $xtemplate ->assign_blocks_content($content,array("CATALOGUE" =>$temp_comment));
		
		
		//get commnet of guest
		$block_comment = $xtemplate ->get_block_from_str($content,"CATALOGUE2");
		$mysql->setQuery("select id,name,email,comment,browse,ip,date from guest_comment where product_id='".intval($_GET['id'])."' order by date desc");
		$result = $mysql->query();
		$totalcm += mysql_num_rows($result);
		$temp_comment = "";
		$acm="";
		while($acm = mysql_fetch_assoc($result))
		{
			$temp_comment .=$xtemplate->assign_vars($block_comment,array(
			'id'	=> $acm['id'],
			'noidung'	=> $acm['comment'],
			'nguoicomment'	=> ($acm['name']." - Email: ".$acm['email']),
			'ngaycomment'	=> date("d-m-Y \l\ú\c H:i",$acm['date']),
			'ip'			=>$acm['ip'],
			'browse'		=>$acm['browse']
			));
		}
		$content = $xtemplate->replace($content,array(
		'productname'=>$product['products_name'],
		'totalcm'	=> $totalcm,
		));
		$content = $xtemplate ->assign_blocks_content($content,array("CATALOGUE2" =>$temp_comment));

	}
	else
	{
		header("location:./?show=product");
	}
?>