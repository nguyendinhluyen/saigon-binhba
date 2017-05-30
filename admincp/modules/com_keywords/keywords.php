<?php
	$title = 'Quản lý từ khóa';
	$xtemplate -> path = 'com_keywords/';
	$content = $xtemplate -> load('keywords');
	$code_cats = $xtemplate ->get_block_from_str($content,"CATSNEWS");
	//Phan trang
	$p_now 		= 	intval($_GET ['p']);
	$mysql 		->	setQuery("Select page_id from keywords where language='".$_SESSION['lag']."'");
	$mysql 		->	query();
	$total		=	$mysql -> getNumRows();
	$numofpages = $total / $pp;
	if ($p_now <= 0)
	{
		$page = 1;
	} 
	else
	{
		if($p_now <= ceil($numofpages))
			$page = $p_now;
		else
			$page = 1;
	}
	$limitvalue = $page * $pp - ($pp);
	//end phan trang
	$sql = "Select * from keywords where language='".$_SESSION['lag']."' limit $limitvalue,$pp";
	$mysql -> setQuery($sql);
	$row = $mysql->loadAllRow();
	$n = count($row);
	$temp = '';
	for($i = 0 ; $i < $n ; ++$i)
	{
		$color = ($i%2==0)?'#d5d5d5':'#e5e5e5';
		$temp.= $xtemplate ->assign_vars($code_cats,array(
											'page_id'	=> $row[$i]['page_id'],
											'page_title'=> $row[$i]['page_title'],
											'title'=> cut_string($row[$i]['title'],45,'...'),
											'title2'=> $row[$i]['title'],
											'keywords'=> cut_string($row[$i]['keywords'],95,'...'),
											'keywords2'=> $row[$i]['keywords'],
											'color'				=> $color));
	}
	$content = $xtemplate ->assign_blocks_content($content,array("CATSNEWS" => $temp));
	$content = $xtemplate ->replace($content,array(
	'lag_page'			=> $arr_lang['page'],
	'page'				=> page_div("./?show=keywords&p=%d_pg", "10", ceil ( $numofpages ), $page),
	'p'					=> ($_GET['p']=='')?'1':intval($_GET['p']),
	'lag_delete'		=> $arr_lang['del'],
	'lag_edit'			=> $arr_lang['edit']
	));	
?>