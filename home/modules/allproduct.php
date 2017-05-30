<?php        
    //include 'category.php';
    $tilte_page = 'Các Loại Phòng | Sài Gòn - Bình Ba';          
    
    $Product = new Product();        
    $Category = new Category();   
    
    //Phan trang
    if(isset($_GET['num'])){
        $pp_quan = input($_GET['num']);
        $_SESSION['pp_quan'] = $pp_quan;
    }
    $pp_quan = $_SESSION['pp_quan'];

    $pp = 1000;

    if($pp_quan > 0){
        $pp = $pp_quan;
    }

    $p_now = intval($_GET ['page']);
    $numofpages = $n / $pp;
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
    //end phan trang
    
    if($pp_quan > 0){
        $nav_page = pagination($linkS.$linkPage."/".$pp.'/',ceil ( $numofpages ), $page);
    }
    else{
        $nav_page = pagination($linkS.$linkPage."/",ceil ( $numofpages ), $page);
    }
    
    
    $content = $xtemplate->load('product_bootstrap');
    $linkPage = "danh-sach-phong.htmls";        
    $categories = $Category->getAllCategories();    
    $tpl = '';
    $flag = 0;
    
    foreach($categories as $item_categories){                
        $products_list = $Product->getProductsByCategoryKey($item_categories["categories_key"]);
        $products = $Product->getProductsByCategoryKeyLimitOrderBy($products_list, "",0,10000);
        //$products = $Product-> getProductsNewLimit($limitvalue,$pp);        
        $n = count($products);
        // Bootstrap
        if($flag == 0){
        $tpl_temp = '<div class="row">
                        <div class="col-md-12 col-lg-12" 
                             style="color: #ffffff; 
                                    font-family:OpenSans-ExtraBold;
                                    font-size: 17px;
                                    text-transform: uppercase;
                                    line-height: 50px;
                                    background-color: #a57e39;
                                    margin-top: -25px">'.
                            $item_categories["categories_name"]
                    .'</div>
                        <ul class="col-md-12 col-lg-12" 
                            style="border-style: solid;
                                   border-width: 1px;
                                   border-color: #e3e3e3;
                                   margin-top: 20px;
                                   padding-right: 0px">';  
        }
        else{
            $tpl_temp = '<div class="row">
                        <div class="col-md-12 col-lg-12" 
                             style="color: #ffffff; 
                                    font-family:OpenSans-ExtraBold;
                                    font-size: 17px;
                                    text-transform: uppercase;
                                    line-height: 50px;
                                    background-color: #a57e39;
                                    margin-top: 10px">'.
                            $item_categories["categories_name"]
                    .'</div>
                        <ul class="col-md-12 col-lg-12" 
                            style="border-style: solid;
                                   border-width: 1px;
                                   border-color: #e3e3e3;
                                   margin-top: 20px;
                                   padding-right: 0px">';  
        }
       
        $flag ++; 
        
        // Show room        
        $block = $xtemplate->get_block_from_str($content,'PRODUCT');
        for($i=0 ; $i<$n ; ++$i){
            	        
            $category_key = $Category->getCategoryKeyByProductKey($products[$i]['products_key']);
            $tpl_temp .= $xtemplate->assign_vars($block,array(
                'product_img'           =>  $products[$i]['products_image'],
                'product_name'          =>  $products[$i]['products_name'],            
                'product_price'         =>  $products[$i]['products_price'],
                'product_key'           =>  $products[$i]['products_key'],
                'category'              =>  $category_key,
                'product_name_nocut'    =>  $products[$i]['products_name'],
                'short_content'         =>  $products[$i]['products_description'],
            ));

            $tpl_temp .= '</ul>';
            $tpl .= $tpl_temp.'</div>';
            $tpl_temp = '<div class="row">                        
                            <ul class = "col-md-12 col-lg-12"
                                style=" border-style: solid;
                                        border-width: 1px;
                                        border-color: #e3e3e3;
                                        padding-right: 0px">';      
        }
        
        
    }
    
    $content = $xtemplate->assign_blocks_content($content ,array(        
            'PRODUCTS'  =>  $tpl,
    ));
    	
    $url =  getFullUrl();

    $url .="/";

    $url1  =$url."order/";
    
    //List advs
    $list_advs = '';
    
    $arrAdvs = GetRows('adver_id,adver_logo,adver_link', 'ads', "adver_pos = 1 and adver_status = 1");
    
    foreach($arrAdvs as $adv)
    {
        $list_advs .= '<div>'
                        . '<a target="_blank" style = "outline:none" href="'.$adv['adver_link'].'">'
                            .'<img src="{linkS}upload/adver/thumb/'.$adv['adver_logo'].'" width = "100%" height= "100%"/>'
                        . '</a> '
                     . '</div>';
    }

    $content = $xtemplate->replace($content,array(
        'page'          => $nav_page,
        'url'           => $url,
        'url1'          => $url1,
        'self_total'    => '1 - 32',
        'total_product'	=> '32',
        'style_span'    => 'style = "display:none"',        
        'category'      => $category,        
        'list_advs'     => $list_advs,
    ));	
?>

