<?php    
    //include 'category.php';

    $news = new News();
    $user_name = $_SESSION['username'];
    
    // Format Money
    function formatMoney($number, $fractional = false){ 
        if ($fractional) { 
            $number = sprintf('%.2f', $number);
        } 
        while (true) { 
            $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1.$2', $number);            
            if ($replaced != $number){ 
                $number = $replaced;
            } 
            else { 
                break;
            } 
        } 
        return $number; 
    } 	
	
    function newFunction($str1,$str2){   		
        $encourage = (int)str_replace(".","",$str1);
        $price = (int)str_replace(".","",$str2);
        if($encourage > $price){
            $saleoff = $encourage - $price;
        }
        return formatMoney($saleoff);
    } 
	
    function getpercent($str1,$str2){ 			
        $encourage = (int)str_replace(".","",$str1);  		        
        $price = (int)str_replace(".","",$str2);		        
        if($encourage > $price){
            $saleoff = round(($encourage - $price) / $encourage * 100);	
        }		        
        $saleoff = $saleoff.'%';        
        return $saleoff; 
    }
    
    $product_key = input($_GET['product_key']);
    $productdetail = $xtemplate->load('product_detail_bootstrap');
    $Product = new Product();
    $disCountVIPCustomer = 0;
	
    if($_SESSION['username']!=''){
        // Get info discount for customer
        $Discount_honorUser = $Product -> getDiscountOfCustomer($_SESSION['username']);
        if(intval($Discount_honorUser) > 0){
            $disCountVIPCustomer = (int)$Discount_honorUser;
        }
    }				

    $product_detail = $Product->getProductsByProductKey($product_key);
    $proType = $Product->getProductsType($product_detail['p_type']);
    $proColor = $Product->getProductsColor($product_detail['p_color']);
    $breadcrumbs = $Product -> getProductPath($_GET['category_key']);
    $breadcrumbs_path = '';
    $breadcrumbs_path .= '<a style = "outline:none" href="{linkS}">SàGòn-BìnhBa</a> &raquo; '
                      . '<a style = "outline:none" href="{linkS}san-pham.htmls">Sản Phẩm</a>';
    $k = count($breadcrumbs);
    $tilte = array();
    
    for ($i = $k ; $i >= 0 ; $i--){
        if($breadcrumbs[$i]['name'] != ''){
            $tilte[] =  $breadcrumbs[$i]['name'];
            $breadcrumbs_path .= ' &raquo; <a style = "outline:none" href="{linkS}'.$breadcrumbs[$i]['key'].'.htm">'.$breadcrumbs[$i]['name'].'</a>';
        }
    }

    $category_c = $breadcrumbs[0]['key'].".htm";
    $breadcrumbs_path .= ' &raquo; '. $product_detail['products_name'];      
    $tilte_page = $product_detail['products_name'] ." | ";
    $k = count($tilte);

    for ($i=$k ; $i>=0 ; $i--){
        if($tilte[$i] !=''){            
            $tilte_page .= $tilte[$i]. " | ";
        }
    }

    $tilte_page .='Sài Gòn - Bình Ba';
    $n = count($proColor);
    $m = count($proType);
    $colorTemplate = '';	
    $p_attribute = $product_detail['p_attribute'];

    if($p_attribute == ''){
        $p_attribute = "Đặc Điểm :";
    }

    if($proColor[0]!=''){
        $colorTemplate .='<tr>
                            <td>
                                <span style ="font-size:14px">'.$p_attribute.'</span>
                            </td>
                            <td align="right">
                                <span>';
        $colorTemplate .='<table align="left">';
        $i = 0;
        foreach ($proColor as $val){
            $colorTemplate .='<tr><td>';			   
            if($i==0){
                $colorTemplate .='<input type="radio"
                                         name="color"
                                         id="color"
                                         checked 
                                         align="left" value="'.$val.'" />'.'</td> <td align="left" style="font-size:14px">&nbsp'.$val;
            }
            else{
                $colorTemplate .='<input type="radio"
                                         name="color"
                                         id="color"
                                         align="left"
                                         value="'.$val.'" />'.'</td> <td align="left" style="font-size:14px">&nbsp'.$val;
            }
            $colorTemplate .='</td></tr>';
            $i ++;
        }
        $colorTemplate .='</table>';
        $colorTemplate .= '</span></td></tr>';
    }
	
    $typeTemplate = '';

    if($proType[0]['price'] != null){
        $typeTemplate .= '<tr>
                            <td>
                                <span style="font-size: 14px">Loại : </span>
                            </td>
                            <td>
                        <span>';		
        $typeTemplate .='<table>';
        $i = 0;
        foreach ($proType as $val){ 
            $pri = $val['price'];
            if($pri ==''){
                $pri = $product_detail['products_price'];
            }
            $typeTemplate .='<tr"><td>';
            if($i==0){
                $typeTemplate .=$val['type'].' (='.$pri.')'.'&nbsp;</td> <td width="10px;">
                <input type="radio" id="type" name="type" checked value="'.$val['type'].'::'.$pri.'" />';

            }
            else{
                $typeTemplate .=$val['type'].' (='.$pri.')'.'&nbsp;</td> <td width="10px;">
                <input type="radio" style = "font-size: 14px" id="type" name="type"  value="'.$val['type'].'::'.$pri.'" />';
            }           
            $i++;
            $typeTemplate .='</td></tr>';
        }
        $typeTemplate .='</table>';
        $typeTemplate .= '</span></td></tr>';
    }		
	
    $price_encourage = $product_detail['products_price'];						
	
    // GIAM GIA CHO NHUNG SAN PHAM KHONG DUOC GIAM GIA	
    if($product_detail['product_encourage'] == '' && $disCountVIPCustomer > 0 && $product_detail['p_type'] == ''){
        $price_not_discount_product = $product_detail['products_price'];
        $price_of_product = (int)str_replace(".","",$price_not_discount_product);					
        $priceDiscountVIPCustomer = ($price_of_product * $disCountVIPCustomer)/100;	
        $priceVIPCustomer = $price_of_product - $priceDiscountVIPCustomer;
        $priceVIPCustomer = round($priceVIPCustomer / 1000);
        $priceVIPCustomer = $priceVIPCustomer * 1000;								
        $price_encourage = common::convertIntToFormatMoney($priceVIPCustomer);			
        $price_saleoff = $price_of_product - $priceVIPCustomer;		
        $price_saleoff = common::convertIntToFormatMoney($price_saleoff);	 
        $levelOfCustomer = $Product -> levelOfCustomer($_SESSION['username']);
        if($levelOfCustomer != 'normal' && $levelOfCustomer != 'Normal'){
            $khuyenmai = '<tr>
                            <td style="width: 200px">
                                <span style = "color:#f24d23; font-size:14px">
                                    Giá khuyến mãi <span>('.$levelOfCustomer.')</span>
                                </span>
                            </td>
                            <td>
                                <span style="color: #ED1B24; font-size:14px;">'.$price_encourage.' VNĐ</span>
                            </td>
                        </tr>      
                        <tr>
                            <td>
                                <span style="font-size:14px">Giá sản phẩm  </span>
                            </td>
                            <td>
                                <span style="font-size:14px">'.$product_detail['products_price'].' VNĐ</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="font-size:14px;">Tiết kiệm</span>
                            </td>
                            <td>
                                <span style="font-size: 14px">'.$price_saleoff.' VNĐ (-'.$disCountVIPCustomer.'%)</span>
                            </td>
                        </tr>';
        }																						
    }	

    else if($product_detail['product_encourage'] != '' && $product_detail['p_type'] == ''){		
        $price_encourage = (int)str_replace(".","",$product_detail['product_encourage']);
        $price_of_product = (int)str_replace(".","",$product_detail['products_price']);					
        $priceDiscountVIPCustomer = ($price_of_product * $disCountVIPCustomer)/100;	
        $priceVIPCustomer = $price_of_product - $priceDiscountVIPCustomer;		
        if( $price_encourage > $priceVIPCustomer){			
            $priceVIPCustomer = round($priceVIPCustomer / 1000);
            $priceVIPCustomer = $priceVIPCustomer * 1000;
            $price_encourage = common::convertIntToFormatMoney($priceVIPCustomer);
            $produce_discount = $disCountVIPCustomer."%";
        }										
        else{
            $price_encourage = common::convertIntToFormatMoney($price_encourage);
            $produce_discount = getpercent($product_detail['products_price'], $price_encourage);
        }		

        $produce_save = newFunction($product_detail['products_price'], $price_encourage);
        $levelOfCustomer = $Product -> levelOfCustomer($_SESSION['username']);
        if($levelOfCustomer != 'normal' && $levelOfCustomer != 'Normal' && !empty($levelOfCustomer)){
            $khuyenmai = '<tr>
                            <td style="width: 200px">
                                <span class="rect" style = "color:#f24d23;font-size:14px">
                                    Giá khuyến mãi <span>('.$levelOfCustomer.')</span>
                                </span>
                            </td>
                            <td>
                                <span class="promotion" 
                                      style="color:#f24d23;font-size:14px;">'.$price_encourage.' VNĐ</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="font-size:14px">Giá sản phẩm</span>
                            </td>
                            <td>
                                <span class="promotion" style="font-size:14px">'.$product_detail['products_price'].' VNĐ</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="font-size:14px;">Tiết kiệm</span>
                            </td>
                            <td>
                                <span class="promotion" style="font-size:14px">'.$produce_save.' VNĐ (-'.$produce_discount.')</span>
                            </td>
                        </tr>';
        }
        else{
            $khuyenmai = '<tr>
                            <td style="width: 150px">
                                <span style="font-size:14px; color: #f24d23">Giá khuyến mãi</span>
                            </td>
                            <td>
                                <span style="color:#f24d23;font-size:14px;">'.$price_encourage.' VNĐ</span>
                            </td>
                        </tr>      
                        <tr>
                            <td>
                                <span style="font-size:14px">Giá sản phẩm </span>
                            </td>
                            <td>
                                <span style="font-size:14px">'.$product_detail['products_price'].' VNĐ</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="font-size:14px;">Tiết kiệm</span>
                            </td>
                            <td>
                                <span class="promotion" style="font-size:14px">'.$produce_save.' VNĐ (-'.$produce_discount.')</span>
                            </td>
                        </tr>';
        }
    }
    else {
        $khuyenmai ='<tr>
                        <td style="width: 150px">
                            <span style="font-size:14px; color:#f24d23">Giá sản phẩm</span>
                        </td>
                        <td>
                            <span style="font-size:14px; color:#f24d23;">'.$product_detail['products_price'].' VNĐ</span>
                        </td>  
                    </tr>';
    }		
    
    if($product_detail['products_id'] > 0){
        $imgs = $Product->getProductImagessByProductId($product_detail['products_id']);
        $k = count($imgs);
        $tpl_imgs = '';
        for($p = 0; $p<$k;++$p){
            $tpl_imgs .= '<a href="'.$linkS.'upload/product_detail/'
                    .$imgs[$p]['image_path']
                    .'" class="cloud-zoom-gallery" title="Red" rel="useZoom: \'zoom1\', smallImage: \''
                    .$linkS.'upload/product_detail/image.php?file='
                    .$imgs[$p]['image_path'].'&sizex=200\' "><img  src="'
                    .$linkS.'upload/product_detail/image.php?file='
                    .$imgs[$p]['image_path'].'&sizex=40&sizey=50" /></a>';
        }
        if($k > 0){
            $tpl_imgs = '<a href="'.$linkS.'upload/product/thumb/'
                        .$product_detail['products_image'].'" class="cloud-zoom-gallery" title="Red" rel="useZoom: \'zoom1\', smallImage: \''
                        .$linkS.'upload/product/thumb/image.php?file='.$product_detail['products_image'].'&sizex=200\' "><img  src="'
                        .$linkS.'upload/product/thumb/image.php?file='.$product_detail['products_image'].'&sizex=40&sizey=50" /></a>'
                        .$tpl_imgs;
        }
    }	

    $category_key = input($_GET['category_key']);
    $product_name_prev = $Product->getProductsInfoPrevByProductKey($product_key,$breadcrumbs[0]['key']);// $category_key
    $product_name_next = $Product->getProductsInfoNextByProductKey($product_key,$breadcrumbs[0]['key']);//$category_key
    $pro_price_nodot = common::convertFormatMoneyToInt($price_encourage);              
    $species = $product_detail['species'];
    $img_catdog = '';
    if($species == '10'){
        $img_catdog = '<img src="{linkS}layout/images/animal_dog.png"/>';
    }

    if($species == '01'){
        $img_catdog = '<img src="{linkS}layout/images/animal_cat.png"/>';
    }

    if($species == '11'){
        $img_catdog = '<img src="{linkS}layout/images/animal_couple.png"/>';
    }	
    
    //Favorite
    $ua_thich = '';
    if(isset($_SESSION['username']) && $_SESSION['username'] != ''){
        $ua_thich = 'Thêm vào ưa thích';
    }	
	
    $rate = $Product -> calculationAvgRate($product_detail['products_id']);	
    $result_sum_count = $Product -> calculationRate($product_detail['products_id']);		
    if($result_sum_count[0]['sum'] == ""){
        $rate_sum = 0;
    }
    else{
        $rate_sum = $result_sum_count[0]['sum'];
    }

    if( $result_sum_count[0]['total'] == "" ){
        $rate_count = 0;
    }
    else{
        $rate_count = $result_sum_count[0]['total'];	
    }	
	
    $rate_round = ceil($rate);
    if($rate_round > 0){		
        for($j=0 ; $j<$rate_round ; $j++){
            $listrate .= "<img src='".$linkS."layout/images/star.png' />";
        }
    }
    else if($rate == 0){
        $listrate = '<span style="font-size: 14px; color: black">Chưa có đánh giá</span>';
    }   

    $product_status = $product_detail['status'];
    $hidden = '';
    $product_status_name  = '';
	
    if($product_status == 'Co Hang'){
        $product_status_name = 'Còn Hàng';
    }		
    else if($product_status == 'Tam Thoi Het Hang'){
        $product_status_name = 'Hết Hàng';
        $hidden='hidden = "hidden"';
    }	
    else if($product_status == 'Sap Co Hang'){
        $product_status_name = 'Sắp Có Hàng';
        $hidden='hidden = "hidden"';
    }
    else if($product_status == 'Dat Hang Truoc'){
        $product_status_name = 'Đặt Trước';		
    }
    else{
        $product_status_name = 'Còn Hàng';
    }
		
    if(empty($product_detail['product_detail']) && empty($product_detail['product_detail_tacdung'])
       &&empty($product_detail['product_detail_phuhopcho']) && empty($product_detail['product_detail_nguyenlieu_thanhphan'])
       &&empty($product_detail['product_detail_phantichdambao']) && empty($product_detail['product_detail_huongdansudung'])
       &&empty($product_detail['product_detail_huongdanbaoquan']) && empty($product_detail['product_detail_luuy'])
       &&empty($product_detail['product_detail_khuyenkhich']) && empty($product_detail['product_detail_donggoi_thetich'])
       &&empty($product_detail['product_detail_nhasanxuat']) && empty($product_detail['product_detail_xuatxu'])){
        $product_detail['product_detail'] = "Chưa có thông tin chi tiết về phòng ". $product_detail['products_name'];
    }

    $facebook_comment = '<!--<table>						
                            <tr>
                                <td>
                                    <span style="font-family:RobotoSlabRegular; 
                                                 font-size: 14px;                                                                                                  
                                                 float:left;">
                                        Đánh giá sản phẩm :&nbsp;&nbsp;                                        
                                    </span>                                    
                                </td>
                                <td>
                                    <div id="jqxRating" style="float:left; padding-top: 5px"/>
                                </td>                               
                            </tr>
                            <tr>								                               					
                                <td colspan="2" style="padding-top:5px">                                                                      
                                    <span style="font-family:RobotoSlabRegular;
                                                font-size:14px;                                                                                                
                                                width: 100%;">
                                        Hãy cho ý kiến về sản phẩm
                                    </span>	                                    
                                </td>							                                
                            </tr>						
                        </table>
                        <br/>-->
                        <div class="fb-comments"
                                    data-href="{linkSf}{link_san-pham}"
                                    data-numposts="3"
                                    data-width ="974px"
                             style="margin-left: -7px">
                        </div>';
    $category_key = $_GET['category_key'];
    $display_product_detail = "block";
    $display_product_detail_tacdung = "block";
    $display_product_detail_phuhopcho = "block";
    $display_product_detail_nguyenlieu_thanhphan = "block";
    $display_product_detail_phantichdambao = "block";
    $display_product_detail_huongdansudung = "block";
    $display_product_detail_huongdanbaoquan = "block";
    $display_product_detail_luuy = "block";
    $display_product_detail_khuyenkhich = "block";
    $display_product_detail_donggoi_thetich = "block";
    $display_product_detail_nhasanxuat = "block";
    $display_product_detail_xuatxu = "block";

    if(empty($product_detail['product_detail'])){		
        $display_product_detail = "none";	
    }
    if(empty($product_detail['product_detail_tacdung'])){		
        $display_product_detail_tacdung = "none";	
    }
    if(empty($product_detail['product_detail_phuhopcho'])){		
        $display_product_detail_phuhopcho = "none";	
    }
    if(empty($product_detail['product_detail_nguyenlieu_thanhphan'])){		
        $display_product_detail_nguyenlieu_thanhphan = "none";	
    }
    if(empty($product_detail['product_detail_phantichdambao'])){		
        $display_product_detail_phantichdambao = "none";	
    }
    if(empty($product_detail['product_detail_huongdansudung'])){		
        $display_product_detail_huongdansudung = "none";	
    }
    if(empty($product_detail['product_detail_huongdanbaoquan'])){		
        $display_product_detail_huongdanbaoquan = "none";
    }
    if(empty($product_detail['product_detail_luuy'])){		
        $display_product_detail_luuy = "none";	
    }
    if(empty($product_detail['product_detail_khuyenkhich'])){		
        $display_product_detail_khuyenkhich = "none";	
    }	
    if(empty($product_detail['product_detail_donggoi_thetich'])){		
        $display_product_detail_donggoi_thetich = "none";	
    }
    if(empty($product_detail['product_detail_nhasanxuat'])){		
        $display_product_detail_nhasanxuat = "none";	
    }
    if(empty($product_detail['product_detail_xuatxu'])){		
        $display_product_detail_xuatxu = "none";	
    }
    
    //list advs product
    $arrAdvs = GetRows('adver_id,adver_logo,adver_link', 'ads', "adver_pos = 1 and adver_status = 1");
    $list_advs = '';
    foreach($arrAdvs as $adv){
        $list_advs .= '<div>'
                        . '<a target="_blank" style = "outline:none" href="'.$adv['adver_link'].'">'
                            .'<img src="{linkS}upload/adver/thumb/'.$adv['adver_logo'].'" width = "100%" height= "100%"/>'
                        . '</a> '
                     . '</div>';
    }
    
    // Change font-family
    $product_detail['product_detail'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail']);    
    $product_detail['product_detail_tacdung'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_tacdung']);    
    $product_detail['product_detail_phuhopcho'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_phuhopcho']);    
    $product_detail['product_detail_nguyenlieu_thanhphan'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_nguyenlieu_thanhphan']);    
    $product_detail['product_detail_phantichdambao'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_phantichdambao']);    
    $product_detail['product_detail_huongdansudung'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_huongdansudung']);    
    $product_detail['product_detail_huongdanbaoquan'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_huongdanbaoquan']);    
    $product_detail['product_detail_luuy'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_luuy']);    
    $product_detail['product_detail_khuyenkhich'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_khuyenkhich']);    
    $product_detail['product_detail_donggoi_thetich'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_donggoi_thetich']);    
    $product_detail['product_detail_nhasanxuat'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_nhasanxuat']);    
    $product_detail['product_detail_xuatxu'] = str_replace ("Arial", "OpenSans-Regular", $product_detail['product_detail_xuatxu']);
    
    // Get relation news
    $list_news = $news->getNewsOfProduct($product_key);
    $relation_news = "";
    $display_realtion_news = 'style="display:none"';
    
    if(!empty($list_news)){
        $display_realtion_news = 'style="display:block"';
        for($i = 0; $i < count($list_news); $i++){                        
            $relation_news .= '<td style="padding-right: 12px">'
                                    .'<table>'
                                        .'<tr><td>'
                                        . '<a class = "news_name" href="{linkS}thu-vien/'.$list_news[$i]['news_key'].'/" 
                                              style = "color:#929292;">'
                                        .'<img src="{linkS}upload/news/'.$list_news[$i]['news_image'].'"'
                                        .'alt="{news_name}" style="width:165px;height:165px; cursor:pointer; border-radius: 10px">'
                                        .'</a></td></tr>'                    
                                        .'<tr><td>'
                                            .'<a class = "news_name" href="{linkS}thu-vien/'.$list_news[$i]['news_key'].'/" 
                                                 style = "color:#929292;">'
                                        .'<div class="product_main_title" style="width: 165px; text-align: center; margin-top: 15px">'
                                            .$list_news[$i]['news_name'].'</a></div>'
                                        .'</td></tr>'
                                    . '</table>'
                                . '</td>';
        }        
    }        
    
    // Relation room
    $old_products = $Product->getProductsLimitOrderById(0,3);        
    for($i=0 ; $i<count($old_products) ; ++$i){        
        $Category = new Category();
        $category_key = $Category->getCategoryKeyByProductID($old_products[$i]['products_id']);
        if($i == 0){
            $category_sub ='category_sub_first';
            $product_key_sub = 'product_key_sub_first';
            $product_img_sub = 'product_img_sub_first';
            $product_name_sub = 'product_name_sub_first';
        }
        else if($i == 1){
            $category_sub ='category_sub_second';
            $product_key_sub = 'product_key_sub_second';
            $product_img_sub = 'product_img_sub_second';
            $product_name_sub = 'product_name_sub_second';
        }
        else{
            $category_sub ='category_sub_third';
            $product_key_sub = 'product_key_sub_third';
            $product_img_sub = 'product_img_sub_third';
            $product_name_sub = 'product_name_sub_third';
        }
        $productdetail = $xtemplate->replace($productdetail,array(	        
            $category_sub       => $category_key,
            $product_key_sub    => $old_products[$i]['products_key'],
            $product_img_sub    => $old_products[$i]['products_image'],
            $product_name_sub   => common::limitContent($old_products[$i]['products_name'],60),
        ));
    }

    $productdetail  = $xtemplate->replace($productdetail,array(
        'list_advs'                                     => $list_advs,
        'form_comment'                                  => $facebook_comment,
        'linkSf'                                        => "http://saigon-binhba.com/",
        'link_san-pham'                                 => $category_key."/".$product_detail['products_key'].".htm",
        'khuyenmai'                                     => $khuyenmai,
        'product_name'                                  => $product_detail['products_name'],
        'product_image'                                 => $product_detail['products_image'],
        'product_image_first'                           => $product_detail['products_image_first'],
        'product_image_second'                          => $product_detail['products_image_second'],
        'product_image_third'                           => $product_detail['products_image_third'],
        'product_image_fourth'                          => $product_detail['products_image_fourth'],
        'product_detail'                                => $product_detail['product_detail'],
        'product_detail_tacdung'                        => $product_detail['product_detail_tacdung'],
        'product_detail_phuhopcho'                      => $product_detail['product_detail_phuhopcho'],
        'product_detail_nguyenlieu_thanhphan'           => $product_detail['product_detail_nguyenlieu_thanhphan'],
        'product_detail_phantichdambao'                 => $product_detail['product_detail_phantichdambao'],
        'product_detail_huongdansudung'                 => $product_detail['product_detail_huongdansudung'],
        'product_detail_huongdanbaoquan'                => $product_detail['product_detail_huongdanbaoquan'],
        'product_detail_luuy'                           => $product_detail['product_detail_luuy'],
        'product_detail_khuyenkhich'                    => $product_detail['product_detail_khuyenkhich'],
        'product_detail_donggoi_thetich'                => $product_detail['product_detail_donggoi_thetich'],
        'product_detail_nhasanxuat'                     => $product_detail['product_detail_nhasanxuat'],
        'product_detail_xuatxu'                         => $product_detail['product_detail_xuatxu'],
        'display_product_detail'                        => $display_product_detail,
        'display_product_detail_tacdung'                => $display_product_detail_tacdung,
        'display_product_detail_phuhopcho'              => $display_product_detail_phuhopcho,
        'display_product_detail_nguyenlieu_thanhphan'	=> $display_product_detail_nguyenlieu_thanhphan,
        'display_product_detail_phantichdambao'		=> $display_product_detail_phantichdambao,
        'display_product_detail_huongdansudung'		=> $display_product_detail_huongdansudung,
        'display_product_detail_huongdanbaoquan'	=> $display_product_detail_huongdanbaoquan,
        'display_product_detail_luuy'			=> $display_product_detail_luuy,
        'display_product_detail_khuyenkhich'		=> $display_product_detail_khuyenkhich,
        'display_product_detail_donggoi_thetich'	=> $display_product_detail_donggoi_thetich,
        'display_product_detail_nhasanxuat'		=> $display_product_detail_nhasanxuat,
        'display_product_detail_xuatxu'			=> $display_product_detail_xuatxu,	
        'product_price'                                 => $price_encourage,
        'product_save'                                  => newFunction(($product_detail['products_price']),($price_encourage)),
        'product_discount'                              => getpercent(($product_detail['products_price']),($price_encourage)),
        'product_color'                                 => $colorTemplate,
        'product_type'                                  => $typeTemplate,
        'p_unit'                                        => $product_detail['p_unit'],
        'product_key'                                   => $product_detail['products_key'],
        'rate_data'                                     => $product_detail['products_id'],
        'category'                                      => $category_c,
        'nsx'                                           => $product_detail['manufacturer'],
        'total_amount'                                  => $pro_price_nodot,
        'product_price_nodot'                           => $pro_price_nodot,
        'product_quantity'                              => '1',
        'count_rates'                                   => $listrate,
        'list_img_product'                              => $tpl_imgs,
        'product_name_prev'                             => $pre_name,
        'product_name_next'                             => $next_name,        
        'img_catdog'                                    => $img_catdog,
        'email'                                         => $_SESSION['username'],
        'them_vao_ua_thich'                             => $ua_thich,
        'user'                                          => $_SESSION['username'],
        'id_product'                                    => $product_detail['products_id'],
        'xuatxu'                                        => $product_detail['origin'],
        'linknsx'                                       => $product_detail['manufacturer_link'],					
        'status'                                        => $product_status_name,
        'hidden'                                        => $hidden,
        'user_name'                                     => $user_name,
        'rate_sum'                                      => $rate_sum, 
        'rate_count'                                    => $rate_count,
        'category'                                      => $category,
        'relation_news'                                 => $relation_news,
        'display_realtion_news'                         => $display_realtion_news
    ));	
    $content = $productdetail;	
?>

