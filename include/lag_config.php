<?php
	if(!isset($_SESSION['lag']))
	{
		$_SESSION['lag'] = "vi";
	}
	else
	{
		if(!empty($_GET['lang']))
		{
			$multi_lang = array('vi'=>'vi','en'=>'en');
			if(!empty($multi_lang[$_GET['lang']]))	
			{
				$_SESSION['lag'] = $_GET['lang'];
			}
			
		}
	}
	$sql = "select key_name,value from lag_config where language ='".$_SESSION['lag']."'";
	$mysql -> setQuery($sql);
	$row = $mysql->loadAllRow();
	$arr_lang = array();
	$n = count($row);
	for($i=0;$i<$n;++$i)
	{
		$arr_lang[$row[$i]['key_name']] = $row[$i]['value'];
	}
?>