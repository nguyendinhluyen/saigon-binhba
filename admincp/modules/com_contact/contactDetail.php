<?php
	$title = 'Chi tiết liên hệ/góp ý';
	$xtemplate -> path = 'com_contact/';
	$content = $xtemplate -> load('contactDetail');
	$sql = "Select * from contact where id='".intval($_GET['id'])."'";
	$mysql -> setQuery($sql);
	$mysql->query();
	if($mysql->getNumRows() >0)
	{
		$row = $mysql -> loadOneRow();
		$name = $row['name'];
		$address = $row['address'];
		$email = $row['email'];
		$phone= $row['phone'];
		$ip = $row['ip'];
		$title_mail=$row['title'];
		$comment	= $row['comment'];
	}
	else
	{
		header("location:./?show=contact");
	}
	if(isset($_POST['btnsend']))
	{
		$email = $_POST['sender'];
		$title_mail=$_POST['title_mail'];
		$noidunglienhe	= $_POST['txtnoidunglienhe'];
		$mail_admin = GetConfig("mail_admin");
		if(!sendmail_smtp($mail_admin,$email,$title_mail,$noidunglienhe))
		{
			if(sendmail($mail_admin,$email,$title_mail,$noidunglienhe))
			{
				$script .= "<script>alert('Đã gửi mail thành công !');</script>";
			}
			else{
				$script .= "<script>alert('Có lỗi trong quá trình gửi mail !');</script>";
			}
		}
		else{
			$script .= "<script>alert('Đã gửi mail thành công !');</script>";
		}
		
	}
	$content = $xtemplate -> replace($content,array(
		'name' => $name,
		'address' => $address,
		'email' => $email,
		'phone' => $phone,
		'ip' => $ip,
		'title_mail'=>$title_mail,
		'comment'	=> $comment,
		'noidunglienhe'=> $noidunglienhe,
		));
	
	if(strpos($_SERVER["HTTP_USER_AGENT"],"MSIE"))
	{
		$script .= "<script language=JavaScript src='../inv/scripts/editor.js'></script>";
	}
	else
	{
		$script .= "<script language=JavaScript src='../inv/scripts/moz/editor.js'></script>";
	}
?>