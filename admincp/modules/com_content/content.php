<?php
	if(strpos($_SERVER["HTTP_USER_AGENT"],"MSIE"))
	{
		$script = "<script language=JavaScript src='../inv/scripts/editor.js'></script>";
	}
	else
	{
		$script = "<script language=JavaScript src='../inv/scripts/moz/editor.js'></script>";
	}
	$title = $arr_lang['infowebsite'];
	$id = intval($_GET['id']);
	$xtemplate -> path = 'com_content/';
	$content = $xtemplate -> load('content');
	//$script .= $xtemplate ->get_block_from_str($content,"SCRIPT");
	//$content = $xtemplate ->assign_blocks_content($content,array("SCRIPT" => ''));
	$content = $xtemplate ->replace($content,array(
	'title' => $title,
	'dlcontent'	=> dlcontent($id),
	'selectcontent'	=> $arr_lang['selectcontent'],
	'move'		=> $arr_lang['move']
	));
	if(!check_id_content($id))
	{
		$content = $xtemplate ->assign_blocks_content($content,array("CONTENT" => ''));
		$script = '';
	}
	else
	{
		if(isset($_POST['btnSub']))
		{
			$contentValue = output($_POST['txtcontent']);
			$sql = "update contents set content_value = '".input($contentValue)."' where content_id =".$id;
			$mysql->setQuery($sql);
			$mysql->query();
			header('location:./?show=content&id='.$id);
		}
		$sql = 'select content_value from contents where content_id ='.$id;
		$mysql->setQuery($sql);
		$mysql->query();
		$row = $mysql->loadOneRow();
		$txtcontent = output($row['content_value']);
		$content = $xtemplate -> replace($content,array(
		'txtcontent'=>$txtcontent,
		'content'	=> $arr_lang['content'],
		));
	}
?>