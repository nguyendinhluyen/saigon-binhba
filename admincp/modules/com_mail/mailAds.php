<?php
	$title = 'Gởi mail quảng cáo dịch vụ';
	$xtemplate -> path = 'com_mail/';
	$content = $xtemplate -> load('mailAds');
	$signatureAds = $xtemplate->load('signatureAds');
	if(isset($_POST['btnsend']) and ($_SESSION['TMAIL']+0 < time()))
	{
	   $mailList = trim($_POST['mailList']);
	   $mailList = str_replace(' ',';',$mailList);
	   $arrMail = explode(';',$mailList);
	   $mail_admin = GetConfig("mail_admin");
	   $i = 0;
	   foreach($arrMail as $mail_g)
	   {
	   		$mail_g = trim($mail_g);
			if(checkemail($mail_g))
			{
				if(!sendmail_smtp($mail_admin,$mail_g,'Thiet ke website Thien Duong Web',$signatureAds))
				{
					if(sendmail($mail_admin,$mail_g,'Thiet ke website Thien Duong Web',$signatureAds))
					{
						++$i;
					}
				}
				else
				{
					++$i;
				}
			}
	   }
	   $_SESSION['TMAIL'] = time();
	   echo '<script language="javascript">alert("Đã gửi thành công '.$i.' email !");window.location="./?show=mailAds"</script>';
	}
	else if(isset($_POST['btnview']))
	{
		 $mailList = $_POST['mailList'];
		$view =  '<div  style="background-color:#F9F9F9;height:100%;width:820px;margin:5px;border:1px solid #ccc;-moz-border-radius:5px">'.$signatureAds.'</div>';
	}
	$content = $xtemplate->replace($content,array(
									'title' => $title,
									'mailList'	=> $mailList,
									'view'	=> $view
	));
?>