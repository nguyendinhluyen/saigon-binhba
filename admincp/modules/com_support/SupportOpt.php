<?php
	$title = $arr_lang['add'].' '.$arr_lang['supportCus'];
	$check_status = 'checked';
	$id = intval($_GET['id']);
	$update = 0;
	if(check_id_provider($id))
	{
		$title = $arr_lang['update'].' '.$arr_lang['supportCus'];
		$update = 1;
		$mysql->setQuery('select providers_name,providers_im,providers_phone,providers_email,providers_status,providers_order,providers_skype from support where providers_id ='.$id);
		$mysql->query();
		$row = $mysql->loadOneRow();
		$txtname = output($row['providers_name']);
		$txtim = output($row['providers_im']);
		$txtphone = output($row['providers_phone']);
		$txtemail = output($row['providers_email']);
		$txtorder = output($row['providers_order']);
		if($row['providers_status']=='1'){$check_status = 'checked';}
		if($row['providers_skype']=='1'){$check_skype ='checked';}
	}
	if(isset($_POST['btnsub']))
	{
		$txtname = output($_POST['txtname']);
		$txtim = output($_POST['txtim']);
		$txtphone = output($_POST['txtphone']);
		$txtemail = output($_POST['txtemail']);
		$txtorder = intval($_POST['txtorder']);
		if($_POST['check_status']=='on'){$check_status = 'checked';$status = 1;} else {$check_status = '';$status = 0;}
		if($_POST['check_skype'] =='on'){$check_skype ='checked';$skype = 1;} else {$check_skype ='';$skype = 0;}
		if(isset($txtim{3})||isset($txtphone{6})||isset($txtemail{5}))
		{
			if($update==0)
			{
				$sql = "insert into support(providers_name,providers_im,providers_phone,providers_email,providers_status,providers_order,modified_date,language,providers_skype) values('".input($txtname)."','".input($txtim)."','".input($txtphone)."','".input($txtemail)."',".$status.",".$txtorder.",".time().",'".$_SESSION['lag']."',".$skype.")";
			}
			else
			{
				$sql = "update support set providers_name = '".input($txtname)."',providers_im='".input($txtim)."',providers_phone='".input($txtphone)."',providers_email='".input($txtemail)."',providers_status=".$status.",providers_order=".$txtorder.",modified_date=".time().",language='".$_SESSION['lag']."',providers_skype=".$skype." where providers_id =".$id;
			}
			$mysql ->setQuery($sql);
			$mysql->query();
			header('location:./?show=support&p='.intval($_GET['p']));
		}
		else
		{
			$error.='<ul><li>Bạn phải nhập <u>yahoo/Skype</u> hoặc <u>điện thoại</u> hoặc <u>email</u></li></ul>';
		}
	}
	$xtemplate -> path = 'com_support/';
	$content = $xtemplate -> load('SupportOpt');
	$content = $xtemplate ->replace($content,array(
	'txtname'	=> $txtname,
	'txtim'	=> $txtim,
	'txtphone'	=> $txtphone,
	'txtemail'	=> $txtemail,
	'txtorder'	=> $txtorder,
	'check_skype'	=> $check_skype,
	'check_status'	=> $check_status,
	'error'	=> $error,
	'addsupport'	=> $title,
	'onlinename'		=> $arr_lang['onlinename'],
		'phone'		=> $arr_lang['phone'],
		'order'		=> $arr_lang['order'],
			'show'		=> $arr_lang['show'],
		
	));
?>