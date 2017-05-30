<?php
function sendmail_phpmailer($from,$to,$subject,$body) 
	{
		$mailHost			= GetConfig("mail_host");
		$mailOutUser		= GetConfig("email");
		$mailOutPassword	= GetConfig("mail_password");
		define('PATH', dirname(__FILE__));
		//include_once (PATH . '/phpmailer/mimeDecode.php');
		include_once (PATH . '/phpmailer/phpmailer.class.php');
		include_once (PATH . "/phpmailer/XmlParse.class.php");
		define("SERVER_MAIL",$mailHost);
		define("SMTP_PORT", 25); //587 or 465 or localhost with default 25
		define("SMTP_AUTH", true);
		define("SMTP_AUTH_USER", $mailOutUser);
		define("SMTP_AUTH_PWD", $mailOutPassword);
		define("SMTP_SECURE", '');  //"ssl" or "tls"
		define("SMTP_TIMEOUT", 30);

		$config['IsSMTP'] = true;
		//================================================================
		$host                        = SERVER_MAIL;
		$port                        = defined('SMTP_PORT') ? SMTP_PORT : 25;
		$phpmailer                    = new PHPMailer();
		$phpmailer->Subject            = $subject;
		$phpmailer->Body            = $body;
		$phpmailer->From            = $from;
		$phpmailer->FromName        = $to;
		$phpmailer->AddAddress($to);
		$phpmailer->Host            = $host;
		$phpmailer->Port            = $port;
		//$phpmailer->CharSet            = $strCharset;
		$phpmailer->SMTPAuth		= defined('SMTP_AUTH') ? SMTP_AUTH : false;
		$phpmailer->Username		= defined('SMTP_AUTH_USER') ? SMTP_AUTH_USER : '';
		$phpmailer->Password		= defined('SMTP_AUTH_PWD') ? SMTP_AUTH_PWD : '';
		$phpmailer->SMTPSecure		= defined('SMTP_SECURE') ? SMTP_SECURE : '';
		$phpmailer->Timeout			= defined('SMTP_TIMEOUT') ? SMTP_TIMEOUT : '';
		if($config['IsSMTP']){
			$phpmailer->IsSMTP();
		}else
			$phpmailer->IsMail();

		$ret = $phpmailer->send();
		if($ret){
			return true;
		}
		return false;
	}
	?>