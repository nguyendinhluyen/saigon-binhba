<?php
	if(isset($_POST['btnsubmit']))
	{
		$word = $_POST['word'];
		$replace = $_POST['replace'];
		if(isset($word{0}))
		{
			$data = array('word'=>$word,'_replace'=>$replace,'date'=>time());
			insert('word_replace',$data);
			header('location:./?show=wordsReplace');
		}
	}
	else if($_GET['action']=='del')
	{
		deleteRow('word_replace','id='.intval($_GET['id']));
		header('location:./?show=wordsReplace');
	}
	$title = 'Thay thế từ';
	$xtemplate -> path = 'com_word/';
	$content = $xtemplate -> load('word');
	$content = $xtemplate->replace($content,array('title'=>$title));
	$block = $xtemplate->get_block_from_str($content,'WORD');
	$row = selectRow('*','word_replace','1=1');
	$n = sizeof($row);
	for($i = 0 ; $i < $n ; ++$i)
	{
		$temp.=$xtemplate->assign_vars($block,array(
		'id' => $row[$i]['id'],
		'word' => $row[$i]['word'],
		'replace' => $row[$i]['_replace'],
		'date' => date('d-m-Y',$row[$i]['date'])
		));
	}
	$content = $xtemplate->assign_blocks_content($content,array('WORD'=>$temp));
	//$script .= $xtemplate ->get_block_from_str($content,"SCRIPT");
	//$content = $xtemplate ->assign_blocks_content($content,array("SCRIPT" => ''));

?>