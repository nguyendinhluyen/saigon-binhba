<?php    	       
    $Product = new Product();
    
    // Load layout
    $home = $xtemplate->load('home_bootstrap');

    // Get lastest products on week (7 days)    
    //$lastest_products = $Product->getLastestProductsOnWeek(7);
    //$n_lastest_product = count($lastest_products);
    
    $n_lastest_product = 0;
    
    // Total only 16 lastest products online
    if($n_lastest_product > 6){
        $n_lastest_product = 6;
    }
    
    // Count number of old product
    $n_old_product = 6 - $n_lastest_product;
    
    if($n_old_product > 0){
        // Get index of previous product
        $old_pro = $Product->getPreviousLimitProduct();
        $start_limit_old_product = $old_pro[0]["config_value"];

        // Calculate end limit product
        $end_limit_old_product = $start_limit_old_product + $n_old_product;

        // Get all product
        $n_all_product = $Product->countAllProduct();

        // Reset start limit old product in case show full product        
        if(intval($end_limit_old_product) > intval($n_all_product - $n_lastest_product)){        
            $end_limit_old_product = 0;
        }

        // Update limit product
        $date_added_pro = $old_pro[0]["date_added"];
        if($date_added_pro != date('Y-m-d')){
            //$Product->updateLimitProduct($end_limit_old_product);
        }

        // Load old product
        $old_products = $Product->getProductsLimitOrderById($start_limit_old_product,$n_old_product);
        //$products = array_merge($lastest_products,$old_products);
        $products = $old_products;
        $n = count($products);
    }    
    else{
        $products = $lastest_products;
        $n = count($products);
        
        // Total only 16 old products online
        if($n > 6){
            $n = 6;
        }
    }

    // Show products
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home" >
                    <div class = "col-md-12 col-lg-12">
                        <ul>';
    $block = $xtemplate->get_block_from_str($home,'PRODUCTNEW');
    $flag = 0;
    for($i=0 ; $i<$n ; ++$i){
        $flag ++;               
        $Category = new Category();
        $category_key = $Category->getCategoryKeyByProductID($products[$i]['products_id']);
        $tpl_temp .= $xtemplate->assign_vars($block,array(
            'product_img'       => $products[$i]['products_image'],
            'product_name'      => common::limitContent($products[$i]['products_name'],60),            
            'product_key'       => $products[$i]['products_key'],
            'category'          => $category_key
        ));		                       
        if($flag % 2 == 0){
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp.'</div></div>';
            $tpl_temp = '<div class="row" id="product_home">
                            <div class = "col-md-12 col-lg-12">
                                <ul>';                        
        }
    }
    $home = $xtemplate->assign_blocks_content($home ,array(
        'PRODUCTSNEW' => $tpl
    ));    
    
    // Begin Tours
    $Product = new Product();
    $disCountVIPCustomer = 0;
    if($_SESSION['username']!=''){
        // Discount info
        $Discount_honorUser = $Product -> getDiscountOfCustomer($_SESSION['username']);
        if(intval($Discount_honorUser) > 0){
            $disCountVIPCustomer = (int)$Discount_honorUser;
        }
    }					               

    // Get lastest tours on week (7 days)
    //$lastest_products = $Product->getLastestToursOnWeek(7);
    //$n_lastest_product = count($lastest_products);
    
    $n_lastest_product = 0;
    
    // Total only 16 lastest products online
    if($n_lastest_product > 6){
        $n_lastest_product = 6;
    }
    
    // Count number of old product
    $n_old_product = 6 - $n_lastest_product;
        
    if($n_old_product > 0){
        // Get index of previous product
        $old_pro = $Product->getPreviousLimitTours();
        $start_limit_old_product = $old_pro[0]["config_value"];

        // Calculate end limit product
        $end_limit_old_product = $start_limit_old_product + $n_old_product;

        // Get all product
        $n_all_product = $Product->countAllTours();

        // Reset start limit old product in case show full product        
        if(intval($end_limit_old_product) > intval($n_all_product - $n_lastest_product)){        
            $end_limit_old_product = 0;
        }

        // Update limit product
        $date_added_pro = $old_pro[0]["date_added"];
        if($date_added_pro != date('Y-m-d')){
            //$Product->updateLimitTours($end_limit_old_product);
        }

        // Load old product
        $old_products = $Product->getToursLimitOrderById($start_limit_old_product,$n_old_product);
        //$products = array_merge($lastest_products,$old_products);
        $products = $old_products;
        $n = count($products);
    }    
    else{
        $products = $lastest_products;
        $n = count($products);
        
        // Total only 16 old products online
        if($n > 6){
            $n = 6;
        }
    }
    
    // Show tours
    $tpl = '';
    $tpl_temp = '<div class="row" id="tours_home" >
                    <div class = "col-md-12 col-lg-12">
                        <ul>';
    $block = $xtemplate->get_block_from_str($home,'TOURSNEW');
    $flag = 0;
    for($i=0 ; $i<$n ; ++$i){
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
        if($products[$i]['product_encourage'] != '' && $products[$i]['p_type'] == ''){
            $price_not_discount_product = $products[$i]['products_price'];
            $price_encourage = (int)str_replace(".","",$products[$i]['product_encourage']);
            $price_of_product = (int)str_replace(".","",$price_not_discount_product);				
            $priceDiscountVIPCustomer = ($price_of_product * $disCountVIPCustomer)/100;	
            $priceVIPCustomer = $price_of_product - $priceDiscountVIPCustomer;
            if( $price_encourage > $priceVIPCustomer){
                $priceVIPCustomer = round($priceVIPCustomer / 1000);
                $priceVIPCustomer = $priceVIPCustomer * 1000;
                $price_encourage = common::convertIntToFormatMoney($priceVIPCustomer);
                $PromotionSale='<span class="promotion">
                                    <span class="promotion_sale">-'.$disCountVIPCustomer.'%'.'</span>
                                </span>';
            }												
            else{
                $price_encourage = common::convertIntToFormatMoney($price_encourage);
                $percent = getpercent($products[$i]['products_price'], $price_encourage);
                $PromotionSale='<span class="promotion">
                                    <span class="promotion_sale">-'.$percent.'</span>
                                </span>';
            }
            $price_not_discount_product = $price_not_discount_product." VNĐ";
        }
        else{ 																								
            $PromotionSale='';
        }
        
        $Category = new Category();
        $category_key = $Category->getCategoryKeyByProductToursID($products[$i]['products_id']);
        $tpl_temp .= $xtemplate->assign_vars($block,array(
            'tours_img'                   => $products[$i]['products_image'],
            'tours_name'                  => common::limitContent($products[$i]['products_name'],40),
            'tours_Sale'                  => $PromotionSale,
            'tours_price'                 => $price_encourage,
            'price_not_discount_product'  => $price_not_discount_product,
            'tours_short'                 => common::limitContent($products[$i]['description'],40),
            'tours_key'                   => $products[$i]['products_key'],
            'category'                    => $category_key
        ));
        if($flag % 3 == 0){
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp.'</div></div>';
            $tpl_temp = '<div class="row" id="tours_home">
                            <div class = "col-md-12 col-lg-12">
                                <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home ,array(
        'TOURSNEW' => $tpl
    ));

    // Load news
    $News = new News();
    $news = $News->getNewsLimitOrderById(0,6);
    $n = count($news);    
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home">
                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ul>';
    $block = $xtemplate->get_block_from_str($home,'NEWS');
    $flag = 0;
    for($i=0 ; $i<$n ; ++$i){
        $num = 40;
        $continue = "";
        if(strlen($news[$i]['news_name']) > $num) {
            $continue = " ...";
        }
        $tpl_temp .= $xtemplate->assign_vars($block,array(
            'news_name'     =>  common::limitContent($news[$i]['news_name'],$num).$continue,
            'news_key'      =>  $news[$i]['news_key'],
            'news_image'    =>  $news[$i]['news_image'],
        ));
        $flag ++;
        if($flag % 3 == 0){
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp.'</div></div>';
            $tpl_temp = '<div class="row" id="product_home">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home ,array(
        'NEWS'   =>  $tpl
    ));
    $content = $home;
?>