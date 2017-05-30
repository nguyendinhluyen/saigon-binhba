<?php
    $news_key = input($_GET['news_key']);
    $info = '';
    $cate = input($_GET['cate']);
    $news = new News();
    $category = new Category();
    $info = $xtemplate->load('info_detail_libary_bootstrap');
    $promotionNews = $news->getDetailNews($news_key);
    for ($i = 1; $i < 100;$i++){
        if($i < 10){
            $promotionNews['news_content'] = str_replace('begin'.$i,'<A href="#section'.$i.'"style="color:#000; text-decoration:underline">',$promotionNews['news_content']);
            $promotionNews['news_content'] = str_replace('end'.$i,'</A>',$promotionNews['news_content']);		
            $promotionNews['news_content'] = str_replace('beginreference'.$i,'<A name="section'.$i.'"style="color:#000">',$promotionNews['news_content']);
            $promotionNews['news_content'] = str_replace('endreference'.$i,'</A>',$promotionNews['news_content']);
        }
        else{
            $promotionNews['news_content'] = str_replace('begin0'.$i,'<A href="#section'.$i.'"style="color:#000; text-decoration:underline">',$promotionNews['news_content']);
            $promotionNews['news_content'] = str_replace('end0'.$i,'</A>',$promotionNews['news_content']);		
            $promotionNews['news_content'] = str_replace('beginreference0'.$i,'<A name="section'.$i.'"style="color:#000">',$promotionNews['news_content']);
            $promotionNews['news_content'] = str_replace('endreference0'.$i,'</A>',$promotionNews['news_content']);
        }
    }
    
    //Thay cho toppage
    $promotionNews['news_content'] = str_replace('toppage','<A href="#section0" style="font-family:RobotoSlabRegular"> '
                                    . '<b>Về đầu trang</b> </A>',$promotionNews['news_content']);
    $promotionNews['resource'] = str_replace('beginnanapet','<a href = "', $promotionNews['resource']);
    $promotionNews['resource'] = str_replace('referencenanapet','" target="_blank">', $promotionNews['resource']);
    $promotionNews['resource'] = str_replace('endnanapet','</a>', $promotionNews['resource']);

    // Update for $title_page and meta
    $tilte_page = $promotionNews['title_page']; 
    $description = $promotionNews['meta_description'];
    $keywords = $promotionNews['meta_keyword'];			           
        
    //Change font
    $promotionNews['resource'] = str_replace('Arial','OpenSans-Regular',$promotionNews['resource']);
    
    //Change size
    $promotionNews['resource'] = str_replace('size="3"','style="font-size:14"',$promotionNews['resource']);    
    $promotionNews['resource'] = str_replace('size="2"','style="font-size:14px"',$promotionNews['resource']);   
    $promotionNews['news_content'] = str_replace('Arial','OpenSans-Regular',$promotionNews['news_content']);    
    
    //Change line height
    $promotionNews['news_content'] = str_replace('size="2"',"",$promotionNews['news_content']);    
    $promotionNews['news_content'] = str_replace('size="3"',"",$promotionNews['news_content']);        
    $promotionNews['news_content'] = str_replace('line-height:1.5','line-height:2.0',$promotionNews['news_content']);
    $promotionNews['news_content'] = str_replace('line-height: 1.5','line-height:2.0',$promotionNews['news_content']);
    $promotionNews['news_content'] = str_replace('line-height:1.15','line-height:2.0',$promotionNews['news_content']);
    $promotionNews['news_content'] = str_replace('line-height: 150%','line-height:2.0',$promotionNews['news_content']);
    $promotionNews['news_content'] = str_replace('line-height:150%','line-height:2.0',$promotionNews['news_content']);
    $promotionNews['news_content'] = str_replace('line-height: 18px','line-height:2.0',$promotionNews['news_content']);
    
    // Get relation products
    $display_realtion_product = 'style="display:none"';
    $list_products = $news->getProductOfNews($news_key);
    $relation_product = "";
    
    if(!empty($list_products)){
        $display_realtion_product = 'style="display:block"';
        for($i = 0; $i < count($list_products); $i++){            
            $category_product = $category->getCategoryKeyByProductID($list_products[$i]['products_id']);
            $relation_product .= '<td style="padding-right: 13px">'
                                    .'<table>'
                                        .'<tr><td>'
                                        . '<a class = "product_name" href="{linkS}'.$category_product.'/'.$list_products[$i]['products_key'].'.htm" 
                                                   style = "color:#929292;">'
                                        .'<img src="{linkS}upload/product/thumb/'.$list_products[$i]['products_image'].'"'
                                        .'alt="{product_name}" style="width:165px;height:165px; cursor:pointer">'
                                        .'</a></td></tr>'                    
                                        .'<tr><td>'
                                            . '<a class = "product_name" href="{linkS}'.$category_product.'/'.$list_products[$i]['products_key'].'.htm" 
                                                   style = "color:#929292;">'
                                        .'<div class="product_main_title" style="width: 160px; text-align: center">'.$list_products[$i]['products_name'].'</a></div>'
                                        .'</td></tr>'
                                    . '</table>'
                                . '</td>';
        }        
    }
    
    //$array_date = split("-",$promotionNews['date_publisher']);    
    $array_date = split('/',date('d/m/Y',$promotionNews['date_added']));    
    $info  = $xtemplate->replace($info,array(
        'news_name'           => $promotionNews['news_name'],
        'news_content'        => $promotionNews['news_content'],
        'news_shortcontent'   => $promotionNews['news_shortcontent'],
        'news_key'            => "thu-vien/".$promotionNews['news_key']."/",
        'news_name_twitter'   => $promotionNews['news_name']." - ",
        'linkResource'        => $promotionNews['resource'],
        'author'              => $promotionNews['author'],
        'translator'          => $promotionNews['translator'],
        'date_added'          => "Ngày ".$array_date[0].", Tháng ".$array_date[1].", Năm ".$array_date[2],
        'category'            => $category_libary,
        'relation_product'    => $relation_product,
        'display_realtion_product' => $display_realtion_product
    ));	

    $library_active = 'library_active';
    $bread = "Cẩm nang du lịch";
    $link = "{linkS}thu-vien";
    $breadcrumbs_path .= '<a href="{linkS}">Sài Gòn - Bình Ba</a>';
    if($news_key != ''){
        $breadcrumbs_path .= ' &raquo; <a href="'.$link.'">'.$bread.'</a>'.'&nbsp;&raquo;&nbsp;'.$promotionNews['news_name'];
    }
    else{
        $breadcrumbs_path .= ' &raquo; '.$bread;
    }	
    $content = $info ;
?>

