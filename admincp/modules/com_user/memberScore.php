<?php
	$title = $arr_lang['order_manage'];
	if(isset($_POST['btndel']))
	{
		
	}
	else if(isset($_POST['btndel']))
	{
		$id = (count($_POST['chk']) > 0)?implode($_POST['chk'],','):'';
		
	}
	$xtemplate -> path = 'com_user/';
	$content = $xtemplate -> load('memberScore');
	$sql = "Select * from user where id='".intval($_GET['id'])."'";
	$mysql -> setQuery($sql);
	$mysql->query();
	if($mysql->getNumRows() >0)
	{
		$row = $mysql -> loadOneRow();
		$total = $row['total'];
		$content = $xtemplate -> replace($content,array(
		'fullName' => $row['name'],
		'address' => $row['address'],
		'email' => $row['email'],
		'phone' => $row['phone'],
		'fax' => '',
				
		'lagfullname'			=> $arr_lang['contact_fullname'],
		'lagaddress'			=> $arr_lang['contact_address'],
		'lagphone'				=> $arr_lang['phone'],
		'detailorder'			=> "Lịch sử cộng điểm",//$arr_lang['detailorder'],
		
		
		'lagproductname'		=> 'Action',
		'lagamount'				=>	'Điểm',
		'lagprice'				=> "Ngày",
		'lagtotal'				=> 'Nội dung',
		));
		$sql = "Select * from tbl_history_score where user ='".$_GET['email']."'";
		$mysql->setQuery($sql);
		$mysql->query();
		$row = $mysql->loadAllRow();
		$n = count($row);
		$temp = '';
		$code_cats = $xtemplate ->get_block_from_str($content,"CATALOGUE");
		for($i = 0 ; $i < $n ; ++$i)
		{
			$action = $row[$i]['action'];
			$score = $row[$i]['score'];
			$action_date = $row[$i]['action_date'];
			$comment = $row[$i]['comment'];
			$temp.= $xtemplate ->assign_vars($code_cats,array(
												'action' => $action,
												'score' => $score,
												'date' => date("d-m-Y",$action_date),
												'comment' => $comment,
												));
		}
		$content = $xtemplate ->assign_blocks_content($content,array("CATALOGUE" => $temp));
		$content = $xtemplate ->replace($content,array("tongtien"=>$total));
	}
	else
	{
		header("location:./?show=memberList");
	}
?>