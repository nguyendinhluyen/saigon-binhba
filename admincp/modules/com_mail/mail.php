<?php
	$title = 'Gởi mail';
	$xtemplate -> path = 'com_mail/';
	$content = $xtemplate -> load('mail');
	if(isset($_POST['btnsend']))
	{
	    $mess = trim($_POST['mess']);
	    $txttitle = trim($_POST['txttitle']);
		//kiem tra xem cac checkbox chuc nang duoc chon
		$arr = array();
		if(($_POST['user']=='on' || $_POST['guest']=='on') && (isset($mess{10}) && isset($txttitle{5})) )
		{
			if($_POST['user']=='on')
			{
				$checked1 = 'checked';
				$row = GetRows('username,email','user','1=1 group by email');
				$n = sizeof($row);
				for($i = 0 ; $i < $n ; ++$i)
				{
					$arr[] = array($row[$i]['username'],$row[$i]['email']);
				}
			}
			if($_POST['guest']=='on')
			{
				$checked2 = 'checked';
				$row = GetRows('name,email','guest_comment','1=1 group by email');
				$n = sizeof($row);
				for($i = 0 ; $i < $n ; ++$i)
				{
					$arr[] = array($row[$i]['name'],$row[$i]['email']);
				}
			}
			//lay chu ky
			$sign = $xtemplate -> load('signature');
			//gui mail
			$n = sizeof($arr);
			$mail_admin = GetConfig("mail_admin");
			if($n>0)
			{
				for($i=0;$i<$n;++$i)
				{
					$body = "Xin chào <b>".$arr[$i][0]."</b><br/>".$mess."<br/>".$sign;
					if(!sendmail_smtp($mail_admin,$arr[$i][1],$title,$body))
					{
						sendmail($mail_admin,$arr[$i][1],$title,$body);
					}
				}
			}
		}
		else
		{
			$script = "<script type='text/javascript' language='javascript'>alert('Bạn chưa chọn đủ yêu cầu, vui lòng kiểm tra lại!')</script>";			
		}
	}
	$content = $xtemplate->replace($content,array(
									'mess' => $mess,
									'checked1' => $checked1,
									'checked2' => $checked2,
									'txttitle' => $txttitle,
									'title' => $title,
	));
?>