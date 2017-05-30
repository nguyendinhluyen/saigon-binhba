<?php
        
    $News  = new News();

    $news_key = '';

    if(isset($_GET['news_key']))
    {
        $news_key = $_GET['news_key'];		
    }				

    if($news_key == '')		
    {			
        $news_key = $News -> getFistRowsOfHelpByCategory();
    }					
    else
    {	
        $news_key = $News -> getDetailofHelpByCategory($news_key);
    }					

    $news_detail = $News -> getDetailNews($news_key);	

    if(empty($news_detail['news_content']))
    {
        $news_detail['news_name'] = "NanaPet";
        
        $news_detail['news_content'] = 'Hiện đang cập nhật ... </br>';
    }

    $breadcrumbs_path .= '<a href="{linkS}">NanaPet</a>';

    $tilte_page =  'Dịch Vụ'. " | NanaPet";

    if($news_key != '')
    {
        $breadcrumbs_path .= ' &raquo; '.'<a href="{linkS}tro-giup">Dịch Vụ</a>';

        $breadcrumbs_path .= ' &raquo; '.$news_detail['news_name'];
    }

    else
    {
        $breadcrumbs_path .= ' &raquo; '.'Dich Vụ';
    }		

    //CHO DUONG LINK REFERENCE		
    //Dung cho noi dung
    for ($i = 1; $i < 100;$i++)
    {
        if($i < 10)
        {
            $news_detail['news_content'] = str_replace('begin'.$i,'<A href="#section'.$i.'"style="color:#000; text-decoration:underline">',$news_detail['news_content']);

            $news_detail['news_content'] = str_replace('end'.$i,'</A>',$news_detail['news_content']);		

            $news_detail['news_content'] = str_replace('beginreference'.$i,'<A name="section'.$i.'"style="color:#000">',$news_detail['news_content']);
            
            $news_detail['news_content'] = str_replace('endreference'.$i,'</A>',$news_detail['news_content']);
        }
        else
        {
            $news_detail['news_content'] = str_replace('begin0'.$i,'<A href="#section'.$i.'"style="color:#000; text-decoration:underline">',$news_detail['news_content']);

            $news_detail['news_content'] = str_replace('end0'.$i,'</A>',$news_detail['news_content']);		

            $news_detail['news_content'] = str_replace('beginreference0'.$i,'<A name="section'.$i.'"style="color:#000">',$news_detail['news_content']);
            
            $news_detail['news_content'] = str_replace('endreference0'.$i,'</A>',$news_detail['news_content']);
        }
    }

    //Thay cho toppage
    $news_detail['news_content'] = str_replace('toppage','<A href="#section0" style="outline:none"> '
                                . 'Về đầu trang</A>',$news_detail['news_content']);

    //Thay cho dau trang cuoi doan trang
    $news_detail['news_content'] = $news_detail['news_content']
                                .'<p style = "margin-top: 10px;"><A href="#section0" '
                                .'style="outline:none; font-size: 14px;">'
                                .'Về đầu trang</A></p>';

    $news_detail['news_content'] = str_replace('Arial','RobotoSlabLight',$news_detail['news_content']);
    
    $news_detail['news_content'] = str_replace('size="2"',"",$news_detail['news_content']);
    
    $news_detail['news_content'] = str_replace('size="3"',"",$news_detail['news_content']);
    
    //Change line height    
    $news_detail['news_content'] = str_replace('line-height:1.5','line-height:2.0',$news_detail['news_content']);
    
    $news_detail['news_content'] = str_replace('line-height: 1.5','line-height:2.0',$news_detail['news_content']);
    
    $news_detail['news_content'] = str_replace('line-height:1.15','line-height:2.0',$news_detail['news_content']);
    
    $news_detail['news_content'] = str_replace('line-height: 150%','line-height:2.0',$news_detail['news_content']);
    
    $news_detail['news_content'] = str_replace('line-height:150%','line-height:2.0',$news_detail['news_content']);    
    
    $news_detail['news_content'] = str_replace('line-height: 18px','line-height:2.0',$news_detail['news_content']);    
    
    $content = $xtemplate->load('help_bootstrap');
        
    $content = $xtemplate->replace($content,array(
        
        'tieude'	=>  $news_detail['news_name'],

        'noidung'       =>  $news_detail['news_content'],
        
        'category'      =>  $category,
    ));
?>