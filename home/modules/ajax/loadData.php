<?php
	include('home_start.php');
	$tab = input($_POST['tab']);
	
	//page
	$page = input($_POST['page']);
	$cur_page = $page;
	$page -= 1;
	$per_page = 12;
	$previous_btn = true;
	$next_btn = true;
	$first_btn = true;
	$last_btn = true;
	$start = $page * $per_page;
	//page
	$count = 0;
	$data = $xtemplate->load('news');;
	$news = new News();
	switch($tab)
	{
		case 'tab1':
			$infoData = $news->getNewsListGameLimit($start, $per_page);
			$count = count($news->getNewsListGame());
			break;
		case 'tab2':
			$infoData = $news->getNewsListFilmLimit($start, $per_page);
			$count = count($news->getNewsListFilm());
			break;
		case 'tab3':
			$infoData = $news->getNewsListPetLimit($start, $per_page);
			$count = count($news->getNewsListPet());
			break;
		case 'tab4':
			$infoData = $news->getNewsListVeterinaryLimit($start, $per_page);
			$count = count($news->getNewsListVeterinary());
			break;
		case 'tab5':
			$infoData = $news->getNewsListNutritionLimit($start, $per_page);
			$count = count($news->getNewsListNutrition());
			break;
		case 'tab6':
			$infoData = $news->getNewsListChuyenDoDayLimit($start, $per_page);
			$count = count($news->getNewsListChuyenDoDay());
			break;	
		//Dung cho am nhac (Giai tri)	
		case 'tab7':
			$infoData = $news->getNewsListAmNhacLimit($start, $per_page);
			$count = count($news->getNewsListAmNhac());
			break;
			
		//Dung cho thu vien
		case 'tab8':
			$infoData = $news->getNewsListDinhDuongLimit($start, $per_page);
			$count = count($news->getNewsListDinhDuong());
			break;
		case 'tab9':
			$infoData = $news->getNewsListChamSocLimit($start, $per_page);
			$count = count($news->getNewsListChamSoc());
			break;
		case 'tab10':
			$infoData = $news->getNewsListThuYLimit($start, $per_page);
			$count = count($news->getNewsListThuY());
			break;
		default:
			$data = '';
			break;
	}
	
	$block = $xtemplate->get_block_from_str($data,'RELAX');
	$tpl = '';
	$tplall = '';
	$n = count($infoData);
	for($i=0;$i<$n;++$i)
	{
		$tpl.= $xtemplate->assign_vars($block,array(
							'news_name'   => $infoData[$i]['news_name'],
							'news_short'  => common::limitContent($infoData[$i]['news_shortcontent'],170),
							'news_key' 	  => $infoData[$i]['news_key'],
							'news_image'	=> $infoData[$i]['news_image'],
							'linkS'		=>  '/'
		//'type' 		  => $type,
		//'category' 	  => $category
		));
		
		if($i%2==0){
			$tpl = $xtemplate->replace($tpl,array(
								'css_class'		=> 'list-left-danh-sach-tin'
			));
		}
		else{
			$tpl = $xtemplate->replace($tpl,array(
											'css_class'		=> 'list-right-danh-sach-tin'
			));
		}
		
		if(($i>0 && $i%2==1) || $i > $n-2){	
			
			$tplall .= '<li>'.$tpl .'</li>';
			$tpl = '';
		}
		
	}
	
	//$tplall = '<div class="product_main">
					//<div id="news-list-danh-sach-tg">
                    	///<ul>'.$tplall . '</ul></div></div>';
	//echo $tpl;
	$data  = $xtemplate->assign_blocks_content($data ,array(
																'RELAX'=>$tplall
	));
	
	//$data = "<div class='data'><ul>" . $data . "</ul></div>";
	
	
	//format page
	$no_of_paginations = ceil($count / $per_page);
	
	if($no_of_paginations>1)
	{
	
		/* ---------------Calculating the starting and endign values for the loop----------------------------------- */
		if ($cur_page >= 7) {
			$start_loop = $cur_page - 3;
			if ($no_of_paginations > $cur_page + 3)
			$end_loop = $cur_page + 3;
			else if ($cur_page <= $no_of_paginations && $cur_page > $no_of_paginations - 6) {
				$start_loop = $no_of_paginations - 6;
				$end_loop = $no_of_paginations;
			} else {
				$end_loop = $no_of_paginations;
			}
		} else {
			$start_loop = 1;
			if ($no_of_paginations > 7)
			$end_loop = 7;
			else
			$end_loop = $no_of_paginations;
		}
		/* ----------------------------------------------------------------------------------------------------------- */
		$data .= "";
		
		$data .= "<div class='pagination'><ul>";
		
		// FOR ENABLING THE FIRST BUTTON
		if ($first_btn && $cur_page > 1) {
			$data .= "<li p='1' class='active'>First</li>";
		} else if ($first_btn) {
			$data .= "<li p='1' class='inactive'>First</li>";
		}
		
		// FOR ENABLING THE PREVIOUS BUTTON
		if ($previous_btn && $cur_page > 1) {
			$pre = $cur_page - 1;
			$data .= "<li p='$pre' class='active'>Previous</li>";
		} else if ($previous_btn) {
			$data .= "<li class='inactive'>Previous</li>";
		}
		for ($i = $start_loop; $i <= $end_loop; $i++) {
		
			if ($cur_page == $i)
			$data .= "<li p='$i' style='color:#fff;background-color:#006699;' class='active'>{$i}</li>";
			else
			$data .= "<li p='$i' class='active'>{$i}</li>";
		}
		
		// TO ENABLE THE NEXT BUTTON
		if ($next_btn && $cur_page < $no_of_paginations) {
			$nex = $cur_page + 1;
			$data .= "<li p='$nex' class='active'>Next</li>";
		} else if ($next_btn) {
			$data .= "<li class='inactive'>Next</li>";
		}
		
		// TO ENABLE THE END BUTTON
		if ($last_btn && $cur_page < $no_of_paginations) {
			$data .= "<li p='$no_of_paginations' class='active'>Last</li>";
		} else if ($last_btn) {
			$data .= "<li p='$no_of_paginations' class='inactive'>Last</li>";
		}
		$goto = "<input type='text' class='goto' size='1' style='margin-top:-1px;margin-left:60px;'/><input type='button' id='go_btn' class='go_button' value='Go'/>";
		$total_string = "<span class='total' a='$no_of_paginations'>Page <b>" . $cur_page . "</b> of <b>$no_of_paginations</b></span>";
		$data = $data . "</ul>" . $goto . $total_string . "</div>";  // Content for pagination
		//end format page
	}
	
	echo $data;// = $data.' tag = '.$tab.' page = '.$cur_page;
	
?>
