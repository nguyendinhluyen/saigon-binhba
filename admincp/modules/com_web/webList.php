<?php
	if(($_GET['action'] == 'del')&&isset($_GET['id']))
	{
		$id = intval($_GET['id']);
		delete_img_webiste($id);
		deleteRow('website',"id='".$id."'");
		header('location:./?show=webList&p='.intval($_GET['p']));
	}
	else if(isset($_POST['btndel']))
	{
		$id = (count($_POST['chk']) > 0)?implode($_POST['chk'],','):'';
		delete_img_webiste($id);
		deleteRow('website','id in('.$id.')');
		header('location:./?show=webList&p='.intval($_GET['p']));
	}
	else if(isset($_POST['btnstatus']))
	{
		$id = (count($_POST['chk']) > 0)?implode($_POST['chk'],','):'';	
		SetStatus('id','status','website','id in ('.$id.')');
		header('location:./?show=webList&p='.intval($_GET['p']));
	}
	else if(isset($_POST['typical']))
	{
		$id = (count($_POST['chk']) > 0)?implode($_POST['chk'],','):'';	
		SetStatus('id','typical','website','id in ('.$id.')');
		header('location:./?show=webList&p='.intval($_GET['p']));
	}
	$title = "Quản lý danh sách khách hàng";
	$xtemplate -> path = 'com_web/';
	$content = $xtemplate -> load('webList');
	$block_website = $xtemplate ->get_block_from_str($content,"WEBISTE");
	//Phan trang
	$p_now 		= 	intval($_GET ['p']);
	$mysql 		->	setQuery('Select id from website');	
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
	$sql = 'Select * from website order by date_added desc limit '.$limitvalue.','.$pp;
	$mysql -> setQuery($sql);
	$row = $mysql->loadAllRow();
	$n = count($row);
	$temp = '';
	for($i = 0 ; $i < $n ; ++$i)
	{
		$color = ($i%2==0)?'#d5d5d5':'#e5e5e5';
		$logoThumb = _UPLOAD_WEBSITE.$row[$i]['image'];
		$logo = $row[$i]['image'];
		$logo = ($logo=='')?"<img src ='"._STYLE_IMG."picoff.gif'>":"<a href ='$logoThumb'><img border=0 style=\"cursor:hand\" src=\""._STYLE_IMG."picon.gif\" onmouseover=\"this.src='"._STYLE_IMG."piconover.gif';return overlib('<div><table border=0 cellpadding=2 cellspacing=0><tr><td class=titleImg>Click to Thumbnails</td></tr><tr><td><img src="._UPLOAD_WEBSITE.$logo."></a></td></tr></table></div>');\" onmouseout=\"this.src='"._STYLE_IMG."picon.gif';return nd();\"></a>";
		
		$webname = $row[$i]['name'];
		if($row[$i]['typical']=='1')
		{
			$webname = '<span style="color:red">'.$row[$i]['name'].'</span>';
		}
		
		$temp.= $xtemplate ->assign_vars($block_website,array(
											'id'	=>$row[$i]['id'],	
											'webname' => $webname,	
											'image'		=> $logo,
											'order'		=> $row[$i]['_order'],
											'status'		=> ($row[$i]['status']=='1')?$arr_lang['show']:'<i>'.$arr_lang['hidden'].'</i>',	
											'date_added'		=> date('h:i d/m/Y',$row[$i]['date_added']),
											'date_modifile'		=> ($row[$i]['date_modifile']==0)?'0':date('h:i d/m/Y',$row[$i]['date_modifile']),
											'color'				=> $color));
	}
	$content = $xtemplate ->assign_blocks_content($content,array("WEBISTE" => $temp));
	$content = $xtemplate ->replace($content,array(
	'lag_ad_manager'	=> $title,
	'p'					=> ($_GET['p']=='')?'1':intval($_GET['p']),
	'page'				=> page_div("./?show=webList&p=%d_pg", "10", ceil ( $numofpages ), $page),
	));
	$script = $xtemplate ->get_block_from_str($content,"SCRIPT");
	$content = $xtemplate ->assign_blocks_content($content,array('SCRIPT' =>''));
	
?>