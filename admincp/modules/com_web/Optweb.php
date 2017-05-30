<?php
	$title = "Thêm khách hàng";
	$checked = 'checked';
	$update = 0;
	$up_new_file = 0;
	$show_logo = "<img src='"._STYLE_IMG."cat.png' width='60px'/>";
	$xtemplate -> path = 'com_web/';
	$content = $xtemplate -> load('Optweb');
	if(isset($_GET['id']))
	{
		$id = intval($_GET['id']);
		if(check_id_website($id))
		{
			$update = 1;
			$title = "Cập nhật khách hàng";
			$sql = "select name,link,keywords,description,website_decription,image,_order from website where id = '".$id."'";
			$mysql -> setQuery($sql);
			$row = $mysql -> loadOneRow();
			$txtwebname = output($row['name']);
			$website_decription	= output($row['website_decription']);
			$adver_logo	= output($row['image']);
			$txtorder = $row['_order'];
			$linkweb = $row['link'];
			$description = $row['description'];
			$keywords = $row['keywords'];
			$show_logo ="<img src='"._UPLOAD_THUMB_WEBSITE.$adver_logo."' width='60px'/>";
		}
	}
	if(isset($_POST['btnSub']))
	{
		$fileAdver = $_FILES["fileAdver"]["name"];
		$txtwebname = output($_POST['txtwebname']);
		$website_decription	= output($_POST['website_decription']);
		$linkweb	= output($_POST['linkweb']);
		$txtorder = intval($_POST['txtorder']);
		$description = $_POST['description'];
		$keywords = $_POST['keywords'];
		//insert
		if($update != 1)
		{
			if(empty($fileAdver)) {$error.= '<li>'.$arr_lang['err_select_file'].' </li>';}
			else if(!checkExtentFile($_FILES["fileAdver"]["name"],$imgExtent)){$error.= '<li>'.$arr_lang['err_checkExtent'].' '.str_replace('|',',',$imgExtent).'</li>';}
			else if ($_FILES["fileAdver"]["size"] > $imgSize){$error.='<li>'.$arr_lang['err_size'] .' > '.formatsize($imgSize).'</li>';}
		}
		//update
		else if(!empty($fileAdver))
		{
			$up_new_file = 1;
			if(empty($fileAdver)) {$error.= '<li>'.$arr_lang['err_select_file'].' </li>';}
			else if(!checkExtentFile($_FILES["fileAdver"]["name"],$imgExtent)){$error.= '<li>'.$arr_lang['err_checkExtent'].' '.str_replace('|',',',$imgExtent).'</li>';}
			else if ($_FILES["fileAdver"]["size"] > $imgSize){$error.='<li>'.$arr_lang['err_size'] .' > '.formatsize($imgSize).'</li>';}
		}
		if(empty($error))
		{
			if($update!=1)
			{
				$sql = "insert into website(name,link,website_decription,_order,date_added,keywords,description)
					values ('".input($txtwebname)."','".input($linkweb)."','".input($website_decription)."','".intval($txtorder)."','".time()."','".input($keywords)."','".input($description)."')";
			}
			else
			{
				$sql = "update website set name = '".input($txtwebname)."',link = '".input($linkweb)."',website_decription='".input($website_decription)."',_order='".intval($txtorder)."',date_modifile = '".time()."',keywords='".input($keywords)."',description='".input($description)."' where id = '".$id."'";//update
			}
			$mysql -> setQuery($sql);
			if($mysql -> query())
			{
				if(($update == 0)||($up_new_file == 1))
				{
					if($update ==0)
					{
						$lastId = mysql_insert_id();
					}
					else
					{
						$lastId = $id;
					}
					//đổi tên file

					if(($update == 0)||($up_new_file == 1))
					{
						if(file_exists(_UPLOAD_THUMB_WEBSITE.$adver_logo)) {@unlink(_UPLOAD_THUMB_WEBSITE.$adver_logo);}
						if(file_exists(_UPLOAD_WEBSITE.$adver_logo)) {@unlink(_UPLOAD_WEBSITE.$adver_logo);}
					//Di chuyển vào thư mục
						$fileAdver = renameFile($_FILES["fileAdver"]["name"],'website-'.input(vitoen($txtwebname,'-').'-'.$lastId));
						move_uploaded_file($_FILES ["fileAdver"]["tmp_name"],_UPLOAD_THUMB_WEBSITE.$fileAdver);
						imagejpeg(resize(_UPLOAD_THUMB_WEBSITE.$fileAdver,300),_UPLOAD_WEBSITE.$fileAdver);
						$sqllogo = " image='".$fileAdver."'";
					}
					$sql = "update website set $sqllogo where id ='".$lastId."'";
					
					$mysql -> setQuery($sql);
					$result = $mysql -> query();
				}
			}
			header("location:./?show=webList&p=".intval($_GET['p']));
		}
		else
		{
			$error = '<ul>'.$error.'</ul>';
		}
	}
	$content = $xtemplate -> replace($content  , array(
									'title'=>$title,
									'description' => $description,
									'keywords' => $keywords,
									'show_logo' => $show_logo, 
									'txtwebname' => $txtwebname,
									'website_decription'	=> $website_decription,
									'view_adver' => $view_adver,
									'webname' => $webname,
									'linkweb' => $linkweb,
									'txtorder' => $txtorder,
									'checked' => $checked,
									'error' => $error
									));
?>