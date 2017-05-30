<?php	                
    $tilte_page =  'Tất cả sản phẩm';
    $breadcrumbs_path = '<a href="{linkS}">Trang chủ</a>';
    $breadcrumbs_path .= ' &raquo; Tất cả sản phẩm';                 
    
    // Load searching layout
    $template = $xtemplate->load('search_all_product_bootstrap');
    
    // Get all product from product name
    $elements = 'products_id';
    $from_table = 'products';
    $where = "products_status = 1 AND products_name LIKE '%".$_SESSION['search_key']." %' ORDER BY products_date_added DESC";    
    $sql = "SELECT $elements FROM $from_table WHERE $where";
    global $mysql;
    $products = $mysql->query_command($sql);
    $total = count($products);
    
    // Pagination
    $pp = 24;
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
        
    // Load product
    $elements = 'products_id,
                products_image,
                products_name,
                products_key,
                products_price,
                product_encourage';
    $from_table = 'products';
    $where = "products_status = 1 AND products_name LIKE '%".$_SESSION['search_key']." %' ORDER BY products_date_added DESC";
    $sql = "SELECT $elements FROM $from_table WHERE $where LIMIT $limitvalue,$pp";    
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
    
    // Show product
    $Category = new Category();
    $flag = 0;
    for($i=0 ; $i<$sum_product ; ++$i){
        $flag ++;
        $encourage ='';
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
                   
    $template = $xtemplate->replace($template,array(                                
        'page' => pagination($linkS."tim-kiem/tat-ca-san-pham.htmls/",ceil($numofpages), $page),
    ));	

    $content = $template;
?>