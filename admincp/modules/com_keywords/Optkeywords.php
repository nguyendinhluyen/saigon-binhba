<?php
	$id = intval($_GET['id']);
	if($id)
	{	
		if(isset($_POST['btnsubmit']))
		{
			$title 			= $_POST['title'];
			$keywords 		= $_POST['keywords'];
			$description	= $_POST['description'];
			$sql = "update keywords set title = '".input($title)."',keywords = '".input($keywords)."',description = '".$description."' where page_id = ".$id."";
			$mysql -> setQuery($sql);
			$mysql -> query();
			header('location:./?show=keywords&p='.intval($_GET['p']));
		}
		$mysql->setQuery('select * from keywords where page_id='.$id);
		$row = $mysql->loadOneRow();
		$xtemplate -> path = 'com_keywords/';
		$content = $xtemplate -> load('Optkeywords');
		$content = $xtemplate ->replace($content,array(
		'error'				=> $error,
		'page_title'	=> $row['page_title'],
		'title'		=> $row['title'],
		'description'		=> $row['description'],
		'keywords'		=> $row['keywords'],
		));
	}
	else
	{
		header('location:./?show=keywords&p='.intval($_GET['p']));
	}
?>