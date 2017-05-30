<?php	                
    $tilte_page =  'Tìm kiếm';
    $breadcrumbs_path = '<a href="{linkS}">Trang chủ</a>';
    $breadcrumbs_path .= ' &raquo; Tìm kiếm';
             
    if(isset($_POST["submit"])){
        if(isset($_SESSION['search_key'])){
            unset($_SESSION['search_key']);
            unset($_SESSION['orginal_search_key']);
        }
        $_SESSION['search_key'] = addslashes(input($_POST['search_box']));
        $_SESSION['orginal_search_key'] = $_POST['search_box'];
        header('Location: '.$linkS.'tim-kiem/page=1');
    }        
    
    // Load searching layout
    $template = $xtemplate->load('search_bootstrap');
    
    // Load product
    $elements = 'products_id,
                products_image,
                products_name,
                products_key,
                products_price,
                product_encourage';
    $from_table = 'products';
    $where = "products_status = 1 AND products_name LIKE '%".$_SESSION['search_key']." %' ORDER BY products_date_added DESC";
    $sql = "SELECT $elements FROM $from_table WHERE $where LIMIT 0, 8";
    global $mysql;
    $products = $mysql->query_command($sql);
    $sum_product = count($products);
    $tpl = '';
    $tpl_temp = '<ul>';
    $block = $xtemplate->get_block_from_str($template,'PRODUCT');
            
    // Discount VIP
    $disCountVIPCustomer = 0;
    if(!empty($_SESSION['username'])){
        $Product = new Product();
        $discount_honorUser = $Product->getDiscountOfCustomer($_SESSION['username']);
        if(intval($discount_honorUser) > 0){
            $disCountVIPCustomer = (int)$discount_honorUser;
        }
    }
    
    // Show products
    $Category = new Category();
    $flag = 0;
    for($i=0 ; $i<$sum_product ; ++$i){
        $flag ++;
        if(intval($products[$i]['products_price']) > 0){
            $pro_price = $products[$i]['products_price']. ' VNĐ';
        }
        else{
            $pro_price = "";
        }
        
        if(!empty($products[$i]['product_encourage']) && intval($products[$i]['product_encourage']) > 0 && $products[$i]['p_type'] == ''){            
            
            if($disCountVIPCustomer != 0){
                // Initialize values
                $encourage_price = 0;
                
                // Price orginal of product                
                $price_of_product = (int)str_replace(".","",$products[$i]['products_price']);
                
                // Price encourage of product
                $price_encourage = (int)str_replace(".","",$products[$i]['product_encourage']);
                                                
                $priceDiscountVIPCustomer = ($price_of_product * $disCountVIPCustomer)/100;
                $priceVIPCustomer = $price_of_product - $priceDiscountVIPCustomer;
                if( $price_encourage > $priceVIPCustomer){
                    $priceVIPCustomer = round($priceVIPCustomer / 1000);
                    $priceVIPCustomer = $priceVIPCustomer * 1000;
                    $encourage_price = common::convertIntToFormatMoney($priceVIPCustomer).' VNĐ';
                }	
                else{
                    $encourage_price = $products[$i]['product_encourage']. ' VNĐ';
                }
            }	
            else{
                $encourage_price = $products[$i]['product_encourage']. ' VNĐ';
            }                                    
        }        
        else{
            $encourage_price = $pro_price;
            $pro_price = "";
        }       
        
        $category_key = $Category->getCategoryKeyByProductKey($products[$i]['products_key']);
        $tpl_temp .= $xtemplate->assign_vars($block,array(
            'product_img'       => $products[$i]['products_image'],
            'product_name'      => $products[$i]['products_name'],
            'product_key'       => $products[$i]['products_key'],
            'product_price'     => $pro_price,
            'category'          => $category_key,
            'encourage_price'   => $encourage_price
        ));

        if( $flag%4 == 0 || $i > $sum_product-2 ){
            $tpl_temp .= ' </ul>';
            $line = '<div class="line"> </div>';
            $tpl .= $tpl_temp.$line;
            $tpl_temp = '<ul>';
        }
    }
    $template = $xtemplate->assign_blocks_content($template ,array(
        'PRODUCTS'  =>  $tpl
    ));            
    
    $elements = 'news_id,
                MATCH(news_name, news_content) AGAINST("'.$_SESSION['search_key'].'") AS score';
    $from_table = 'news';
    $where = 'status=1 AND (flag_publisher=1 OR help_flag=1) AND MATCH(news_name, news_content) AGAINST ("'.$_SESSION['search_key'].'") ORDER BY score DESC';
    $sql = 'SELECT '.$elements.' FROM '.$from_table.' WHERE '.$where;
    $listnews = $mysql->query_command($sql);
    $total = count($listnews);        
    if($total == 0){
        $elements = 'news_id';
        $where = "status = 1 AND (flag_publisher=1 OR help_flag=1) AND news_name LIKE '% ".$_SESSION['search_key']." %'";
        $sql = 'SELECT '.$elements.' FROM '.$from_table.' WHERE '.$where;
        $listnews = $mysql->query_command($sql);
        $total = count($listnews);
    }        
    
    // Pagination
    $pp = 10;
    $p_now = intval($_GET['page']);
    $numofpages = $total / $pp;
    $page = 0;
    if ($p_now <= 0){
        $page = 1;
    }
    else{
        if($p_now <= ceil($numofpages)){
            $page = $p_now;
        }
        else{
            $page = 1;
        }
    }
    $limitvalue = $page * $pp - ($pp);
    //End pagination        
    
    // Load news searching
    // Using Full Text MySQL
    $elements = 'news_id,
                news_key,
                news_name,
                news_shortcontent,
                help_flag,
                flag_publisher, MATCH(news_name, news_content) AGAINST("'.$_SESSION['search_key'].'") AS score';
    $where = 'status=1 AND (flag_publisher=1 OR help_flag=1) AND MATCH(news_name, news_content) AGAINST ("'.$_SESSION['search_key'].'") ORDER BY score DESC';
    $sql = 'select '.$elements.' from '.$from_table.' where '.$where.' limit '.$limitvalue .',' .$pp;
    $listnews = $mysql->query_command($sql);
    $sum_news = count($listnews);
        
    // Using LIKE MySQL
    if($sum_news == 0){
        $elements = 'news_id,
                    news_key,
                    news_name,
                    news_shortcontent,
                    help_flag,
                    flag_publisher';        
        $where = "status = 1 AND (flag_publisher=1 OR help_flag=1) AND news_name LIKE '% ".$_SESSION['search_key']." %' ORDER BY date_added DESC";
        $sql = 'select '.$elements.' from '.$from_table.' where '.$where.' limit '.$limitvalue .',' .$pp;        
        $listnews = $mysql->query_command($sql);
        $sum_news = count($listnews);
    }    
    $tpl = '';
    $tpl_temp = '<ul style="padding-left:0px; padding-bottom:20px">';
    $block = $xtemplate->get_block_from_str($template,'NEWS');    
    for($i=0 ; $i<$sum_news ; ++$i){
        if($listnews[$i]['help_flag'] == 1){
            $news_category = "tro-giup";
            $linkHelp =".html";
        }
        elseif($listnews[$i]['flag_publisher'] == 1){
            $news_category = "thu-vien";
            $linkHelp="";
        }
        $tpl_temp .= $xtemplate->assign_vars($block,array(            
            'news_name'     => common::limitContent($listnews[$i]['news_name'], 100),
            'news_key'      => $listnews[$i]['news_key'].$linkHelp,
            'news_content'  => common::limitContent($listnews[$i]['news_shortcontent'], 250) ." ...",
            'news_category' => $news_category
        ));	        
        $tpl_temp .= ' </ul>';
        $line = '<div class="line"> </div>';
        $tpl .= $tpl_temp.$line;
        $tpl_temp = '<ul style="padding-left:0px; padding-bottom:20px">';
    }
    $template = $xtemplate->assign_blocks_content($template ,array(
        'NEWS'  =>  $tpl
    ));
    
    // Display result
    if($sum_product == 0 || intval($p_now) >= 2){
        $display_realtion_product = 'style="display:none"';
    }
    
    if($sum_news == 0 ){
        $display_realtion_news = 'style="display:none"';
    }
    
    $display_no_relation = 'style="display:none"';
    if($sum_news == 0 && $sum_product == 0){
        $display_no_relation = 'style="display:block"';    
    }
    
    $key_not_found = $_SESSION['orginal_search_key'];    
    $template = $xtemplate->replace($template,array(
        'display_realtion_product'  => $display_realtion_product,
        'display_realtion_news'     => $display_realtion_news,
        'display_no_relation'       => $display_no_relation,
        'search_key'                => $key_not_found,
        'page'                      => pagination($linkS."tim-kiem/",ceil($numofpages), $page),
    ));	

    $content = $template;
?>