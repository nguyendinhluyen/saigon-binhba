<?php        
    //include 'category.php';
    $tilte_page = 'Tours Bình Ba | Sài Gòn - Bình Ba';
    $Product = new Product();        
    $products = $Product-> getProductsToursNewCount();        
    $n = count($products);
    
    //Phan trang
    if(isset($_GET['num'])){
        $pp_quan = input($_GET['num']);
        $_SESSION['pp_quan'] = $pp_quan;
    }
    $pp_quan = $_SESSION['pp_quan'];

    $pp = 10;
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
    
    $linkPage = "danh-sach-tours.htmls";    
    if($pp_quan > 0){
        $nav_page = pagination($linkS.$linkPage."/".$pp.'/',ceil ( $numofpages ), $page);
    }
    else{
        $nav_page = pagination($linkS.$linkPage."/",ceil ( $numofpages ), $page);
    }
    
    $content = $xtemplate->load('tours_bootstrap');    
    $Category = new Category();
    $categories = $Category->getAllCategoriesTours();
    $tpl = '';
    $flag = 0;    
    
    //foreach($categories as $item_categories){
        //$products_list = $Product->getProductsToursByCategoryKey($item_categories["categories_key"]);
        //$products = $Product->getProductsToursByCategoryKeyLimitOrderBy($products_list, "",$limitvalue,$pp);    
    $products = $Product-> getProductsToursNewLimit($limitvalue,$pp);
    $n = count($products);        
    $tpl_temp = '<div class="row">                    
                <ul class="col-md-12 col-lg-12" 
                    style="border-style: solid;
                           border-width: 1px;
                           margin-top: 30px;
                           border-color: #e3e3e3;                               
                           padding-right: 0px;
                           margin-bottom:20px">';
    $flag ++;         
    // Show tours       
    $block = $xtemplate->get_block_from_str($content,'PRODUCT');
    for($i=0 ; $i<$n ; ++$i){

        $category_key = $Category->getCategoryKeyByProductToursKey($products[$i]['products_key']);
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
                                    padding-right: 0px;
                                    margin-bottom:20px">';      
    }    
    //}
    
    $content = $xtemplate->assign_blocks_content($content ,array(        
            'PRODUCTS'  =>  $tpl,
    ));
    	
    $url = getFullUrl();
    $url .="/";
    $url1  =$url."order/";
    
    $content = $xtemplate->replace($content,array(
        'page'          => $nav_page,
        'url'           => $url,
        'url1'          => $url1,
        'self_total'    => '1 - 32',
        'total_product'	=> '32',
        'style_span'    => 'style = "display:none"',        
        'category'      => $category,
    ));	
?>

