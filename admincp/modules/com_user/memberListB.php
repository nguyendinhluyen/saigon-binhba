<?php
	if($_GET['action']=='restore')
	{
		if(isset($_GET['id']))
		{
			$id = input($_GET['id']);
			restoreUser($id);
			header("location:./?show=memberListB");
		}
	}
	else if(isset($_POST['btnrestore']))
	{
		$id = (count($_POST['chk']) > 0)?implode($_POST['chk'],','):'';
		restoreUser($id);
		header("location:./?show=memberListB");
	}
	$title = "Danh sách thành viên đã xóa";
	$xtemplate -> path = 'com_user/';
	$content = $xtemplate -> load('memberListB');
	$code_cats = $xtemplate ->get_block_from_str($content,"LIST");
	//Phan trang
	$p_now 		= 	intval($_GET ['p']);
	$mysql 		->	setQuery("Select id from user where status=-1");
	$mysql 		->	query();
	$total		=	$mysql -> getNumRows();
	$numofpages = $total / $pp;
	if ($p_now <= 0)
	{
		$page = 1;
	} 
	else
	{
		if($p_now <= ceil($numofpages))
			$page = $p_now;
		else
			$page = 1;
	}
	$limitvalue = $page * $pp - ($pp);
	//end phan trang

	$sql = "Select * from user where status=-1 order by date limit ".$limitvalue.','.$pp;
	$mysql -> setQuery($sql);
	$row = $mysql->loadAllRow();
	$n = count($row);
	$temp = '';
	for($i = 0 ; $i < $n ; ++$i)
	{
		$color = ($i%2==0)?'#d5d5d5':'#e5e5e5';
		$temp.= $xtemplate ->assign_vars($code_cats,array(
											'id'	=> $row[$i]['id'],	
											'username' => output($row[$i]['username']),	
											'address' => output(cut_string($row[$i]['address'],45)),	
											'Gcolor' => GetOnef('color','user_group','group_id='.$row[$i]['user_group']),	
											'phone' => output($row[$i]['phone']),	
											'email' => output(cut_string($row[$i]['email'],20)),		
											'date_delete'		=> date('d/m/Y',$row[$i]['date_delete']),
											'date'		=> date('H:i d/m/Y',$row[$i]['date']),
											'color'				=> $color));
	}
	$content = $xtemplate ->assign_blocks_content($content,array("LIST" => $temp));
	$content = $xtemplate ->replace($content,array(
	'lag_user_manager'	=> $title,
	'lag_page'			=> $arr_lang['page'],
	'lag_delete'		=> $arr_lang['del'],
	'update'			=> $arr_lang['update'],
	'delete_check'		=> $arr_lang['del_check'],
	'status'			=> $arr_lang['status'],
	'del_confirm' 		=> $arr_lang['del_confirm'],
	'lag_date_create'	=> $arr_lang['date_added'],
	'address'			=> $arr_lang['contact_address'],
	'phone'				=> $arr_lang['phone'],
	'lag_del'	=> $arr_lang['delete'],
	'page'				=> page_div("./?show=order&p=%d_pg&", "10", ceil ( $numofpages ), $page),
	));

?>