<?php
    if(strpos($_SERVER["HTTP_USER_AGENT"],"MSIE")){
        $script = "<script language=JavaScript src='../inv/scripts/editor.js'></script>";
    }	
    else{
        $script = "<script language=JavaScript src='../inv/scripts/moz/editor.js'></script>";
    }
    if(!isset($_POST['submit_form'])){
        $sql_se = "SELECT image_path
                   FROM image_product_tours
                   WHERE product_id = -1";
        $mysql -> setQuery($sql_se);
        $arrImg = $mysql->loadAllRow();
        $sql_up = "DELETE
                   FROM image_product_tours
                   WHERE product_id = -1";
        $mysql -> setQuery($sql_up);
        if($mysql->query()){
            $nm = count($arrImg);
            for($k = 0;$k<$nm;$k++){
                @unlink('../../upload/product_detail_tours/'.$arrImg[$k]['image_path']);
            }
        }
    }
	
    if($_SESSION['timeout'] + $timeout < time()){
        $title = 'Thêm tours mới';        
        $id = intval($_GET['id']);
        $btn = $arr_lang['add'];
        $panel = $title;	
        $imagesrc = "<img src='"._STYLE_IMG.'noimages.gif'."' width='130px'/>";	
        $imagesrc_first = "<img src='"._STYLE_IMG.'noimages.gif'."' width='130px'/>";
        $imagesrc_second = "<img src='"._STYLE_IMG.'noimages.gif'."' width='130px'/>";	
        $imagesrc_third = "<img src='"._STYLE_IMG.'noimages.gif'."' width='130px'/>";	
        $imagesrc_fourth = "<img src='"._STYLE_IMG.'noimages.gif'."' width='130px'/>";	
        $update = 0;
        $error = '';

        //Update
        if(check_id_product_tours($id)){            
            $update = 1;	
            $btn = $arr_lang['update'];
            $sql = "SELECT products_id
                        ,products_name
                        ,keywords
                        ,description
                        ,products_image
                        ,products_image_first
                        ,products_image_second
                        ,products_image_third
                        ,products_image_fourth
                        ,products_price
                        ,product_encourage
                        ,price_unit
                        ,upgrade_categories_id
                        ,products_description
                        ,product_detail
                        ,p_color
                        ,p_attribute
                        ,p_type
                        ,p_unit
                        ,manufacturer
                        ,species
                        ,origin
                        ,manufacturer_link
                        ,status
                        ,products_status
                        ,product_detail_tacdung,product_detail_phuhopcho
                        ,product_detail_nguyenlieu_thanhphan,product_detail_phantichdambao
                        ,product_detail_huongdansudung,product_detail_huongdanbaoquan
                        ,product_detail_luuy,product_detail_khuyenkhich
                        ,product_detail_donggoi_thetich,product_detail_nhasanxuat
                        ,product_detail_xuatxu
                    FROM products_tours
                    WHERE products_id = '".$id."' AND language='".$_SESSION['lag']."'";				
            $mysql -> setQuery($sql);				
            $row = $mysql -> loadOneRow();			
            $keywords = output($row['keywords']);			
            $description = output($row['description']);	
            $products_name = output($row['products_name']);	
            $price = output($row['products_price']);	
            $unit = output($row['price_unit']);	
            $vnd = ($unit=='VND')?'selected':'';	
            $usd = ($unit=='USD')?'selected':'';	
            $encourage = output($row['product_encourage']);	
            $p_color_u  = $row['p_color'];	
            $p_type_u  = $row['p_type'];	
            $p_unit  = $row['p_unit'];
            $commodity_name = $row['status'];	
            $nsx = $row['manufacturer'];	
            $p_attribute = output($row['p_attribute']);	
            $Xuatxu = $row['origin'];	
            $txtlinknsx = $row['manufacturer_link'];				
            $result_color = array();	
            $result_color = explode('---',$p_color_u);	
            $option_color = '';
            $products_status = $row['products_status'];
            foreach ($result_color as $val){	
                $option_color .= '<option value="'.$val.'">'.$val.'</option>';
            }
            $result_type = array();
            $result_type = explode('---',$p_type_u);
            $arrProType = array();	
            foreach ($result_type as $val){
                $arr = array();	
                $arr =  explode('::',$val);	
                $arrType = array();	
                $arrType['type'] = $arr[0];	
                $arrType['price'] = $arr[1];	
                $arrProType[] = $arrType;
            }

            $option_type = '';	
            foreach ($arrProType as $val){
                if($val['type']!=''){
                    $option_type .= '<option value="'.$val['type'].'::'.$val['price'].'">'.$val['type'].'::'.$val['price'].'</option>';
                }			
            }	
            $check1 = '';
            $check2 = '';	
            $checkspecies = $row['species'];	
            if($checkspecies == "10"){
                $check1 = "checked";
            }	
            if($checkspecies == "01"){
                $check2 = "checked";
            }	
            if($checkspecies == "11"){
                $check1 = "checked";	
                $check2 = "checked";
            }			
            $panel = 'Cập nhật '.$products_name;	
            $title = $panel;	
            
            if(!empty($row['products_image']) ){					
                $imagesrc = "<img src='"._UPLOAD_IMG_TOURS.$row['products_image']."' width='170px' height='120px'/>";	
            }
            
            if(!empty($row['products_image_first']) ){
                $imagesrc_first = "<img src='"._UPLOAD_IMG_TOURS.$row['products_image_first']."' width='110px' height='60px'/>";
                
            }	
            
            if(!empty($row['products_image_second']) ){
                $imagesrc_second = "<img src='"._UPLOAD_IMG_TOURS.$row['products_image_second']."' width='80px' height='60px'/>";
            }	
            
            if(!empty($row['products_image_third']) ){
                $imagesrc_third = "<img src='"._UPLOAD_IMG_TOURS.$row['products_image_third']."' width='80px' height='60px'/>";
            }	
            
            if(!empty($row['products_image_fourth']) ){
                $imagesrc_fourth = "<img src='"._UPLOAD_IMG_TOURS.$row['products_image_fourth']."' width='80px' height='60px'/>";
            }

            $products_description = output($row['products_description']);																						
            //$categories_id = $row['categories_id'];					
            $categories_id = $row['upgrade_categories_id'];
            $detail = output($row['product_detail']);
            $product_detail_tacdung = output($row['product_detail_tacdung']);
            $product_detail_phuhopcho = $row['product_detail_phuhopcho'];
            $product_detail_nguyenlieu_thanhphan = $row['product_detail_nguyenlieu_thanhphan'];
            $product_detail_phantichdambao = $row['product_detail_phantichdambao'];
            $product_detail_huongdansudung = $row['product_detail_huongdansudung'];		
            $product_detail_huongdanbaoquan = $row['product_detail_huongdanbaoquan'];
            $product_detail_luuy = $row['product_detail_luuy'];	
            $product_detail_khuyenkhich = $row['product_detail_khuyenkhich'];		
            $product_detail_donggoi_thetich = $row['product_detail_donggoi_thetich'];
            $product_detail_nhasanxuat = $row['product_detail_nhasanxuat'];
            $product_detail_xuatxu = $row['product_detail_xuatxu'];
            $file_download = $row['file_download'];
        }

        // Insert
        if(isset($_POST['btnadd'])){
            $products_name = output($_POST['txtname']);
            $products_key = vitoen($products_name,'-');
            $image = '';
            $image_first = '';
            $image_second = '';
            $image_third = '';
            $image_fourth = '';
            $price = output($_POST['txtprice']);
            $unit =$_POST['price_unit'];
            $vnd = ($unit=='VND')?'selected':'';
            $usd = ($unit=='USD')?'selected':'';	
            $keywords = $_POST['keywords'];	
            $description = $_POST['description'];	
            $encourage = $_POST['khuyenmai'];
            $categories_id = ",";
            $categories_id .= (count($_POST['option']) > 0)?implode(',',$_POST['option']):'';
            $categories_id .= ",";
            $array_category = split(",",$categories_id);
            $categories_id_2 = $array_category[1];                    		

            $commodity_id =  $_POST['commoditylist'];                    
            if($commodity_id == 0){
                $commodity_name = "Co Hang";
            }			
            else if($commodity_id == 1){
                $commodity_name = "Tam Thoi Het Hang";
            }			
            else if($commodity_id == 2){
                $commodity_name = "Sap Co Hang";
            }				
            else if($commodity_id == 4){
                $commodity_name = "Dat Hang Truoc";
            }						
            else{				
                $commodity_name = "Co Hang";
            }				

            $products_description = output($_POST['products_description']);
            $detail = output($_POST['txtdetail']);
            $product_detail_tacdung = output($_POST['product_detail_tacdung']);
            $product_detail_phuhopcho = output($_POST['product_detail_phuhopcho']);
            $product_detail_nguyenlieu_thanhphan = output($_POST['product_detail_nguyenlieu_thanhphan']);
            $product_detail_phantichdambao = output($_POST['product_detail_phantichdambao']);
            $product_detail_huongdansudung = output($_POST['product_detail_huongdansudung']);
            $product_detail_huongdanbaoquan = output($_POST['product_detail_huongdanbaoquan']);
            $product_detail_luuy = output($_POST['product_detail_luuy']);
            $product_detail_khuyenkhich = output($_POST['product_detail_khuyenkhich']);
            $product_detail_donggoi_thetich = output($_POST['product_detail_donggoi_thetich']);
            $product_detail_nhasanxuat = output($_POST['product_detail_nhasanxuat']);
            $product_detail_xuatxu = output($_POST['product_detail_xuatxu']);						
            
            $image = $_FILES ["image"]["name"];
            $image_first = $_FILES ["image_first"]["name"];
            $image_second = $_FILES ["image_second"]["name"];
            $image_third = $_FILES ["image_third"]["name"];
            $image_fourth = $_FILES ["image_fourth"]["name"];
            
            $nsx = $_POST['txtnsx'];
            $Xuatxu = input($_POST['txtXuatxu']);
            $txtlinknsx = input($_POST['txtlinknsx']);

            //attribute
            $p_attribute = $_POST['attribute_name'];
            $arrColor = $_POST['color'];
            $arrType = $_POST['type'];
            $n = count($arrColor);
            $p_color = '';
            for ($i=0 ; $i<$n ; ++$i){
                $p_color .= $arrColor[$i].'---';
            }
            $p_color = substr($p_color, 0,strlen($p_color) - 3);
            $n = count($arrType);
            $p_type = '';
            for($i=0 ; $i<$n ; ++$i){
                $p_type .= $arrType[$i].'---';
            }
            $p_type = substr($p_type, 0,strlen($p_type) - 3);
            $p_unit = '';
            $nChomeo = count($_POST['chkChoMeo']);
            $checkChoMeo = '00';//species

            if($nChomeo == 2){
                $checkChoMeo = '11';//cho meo
            }

            if($nChomeo == 1){
                $p_chk = $_POST['chkChoMeo'][0];
                if($p_chk == '1'){
                    $checkChoMeo = '10';//cho
                }
                else{
                    $checkChoMeo = '01';//meo
                }
            }

            if(!isset($categories_id{0})) {
                $error= $arr_lang['err_select_cat'];
            }
            else if(!isset($products_name{0})){ 
                $error= $arr_lang['err_product_name_short'];
            }

            if(empty($error)){    
                // Update
                if($update == 1){												                                
                    $sql = "UPDATE products_tours SET keywords='".$keywords
                                                ."',description='".$description
                                                ."',products_price ='".$price
                                                ."',product_encourage = '".$encourage
                                                ."',price_unit='".$unit
                                                ."',products_name='".input($products_name)
                                                ."',modified_date=".time()
                                                .",products_description='".input($products_description)
                                                ."',upgrade_categories_id='".$categories_id
                                                ."',categories_id='".$categories_id_2
                                                ."',product_detail='".input($detail)											
                                                ."',product_detail_tacdung='".input($product_detail_tacdung)
                                                ."',product_detail_phuhopcho='".input($product_detail_phuhopcho)
                                                ."',product_detail_nguyenlieu_thanhphan='".input($product_detail_nguyenlieu_thanhphan)
                                                ."',product_detail_phantichdambao='".input($product_detail_phantichdambao)
                                                ."',product_detail_huongdansudung='".input($product_detail_huongdansudung)
                                                ."',product_detail_huongdanbaoquan='".input($product_detail_huongdanbaoquan)
                                                ."',product_detail_luuy='".input($product_detail_luuy)
                                                ."',product_detail_khuyenkhich='".input($product_detail_khuyenkhich)
                                                ."',product_detail_donggoi_thetich='".input($product_detail_donggoi_thetich)
                                                ."',product_detail_nhasanxuat='".input($product_detail_nhasanxuat)
                                                ."',product_detail_xuatxu='".input($product_detail_xuatxu)											
                                                ."',p_color = '".$p_color
                                                ."',p_attribute = '".$p_attribute
                                                ."',p_type = '".$p_type
                                                ."',p_unit = '".$p_unit
                                                ."',manufacturer = '".$nsx
                                                ."',species = '".$checkChoMeo
                                                ."',origin = '".$Xuatxu
                                                ."',manufacturer_link = '".$txtlinknsx
                                                ."',status = '".$commodity_name
                                ."' WHERE products_id = '".$id."'";
                }
                else {					
                    //Insert
                    $sql = "INSERT INTO products_tours(keywords
                                                    ,description
                                                    ,products_price
                                                    ,price_unit
                                                    ,products_name
                                                    ,products_date_added
                                                    ,products_description
                                                    ,product_detail
                                                    ,upgrade_categories_id
                                                    ,categories_id
                                                    ,language
                                                    ,p_color
                                                    ,p_type
                                                    ,p_unit
                                                    ,product_encourage
                                                    ,manufacturer
                                                    ,p_attribute
                                                    ,species
                                                    ,origin
                                                    ,manufacturer_link
                                                    ,status
                                                    ,product_detail_tacdung
                                                    ,product_detail_phuhopcho
                                                    ,product_detail_nguyenlieu_thanhphan
                                                    ,product_detail_phantichdambao
                                                    ,product_detail_huongdansudung
                                                    ,product_detail_huongdanbaoquan
                                                    ,product_detail_luuy
                                                    ,product_detail_khuyenkhich
                                                    ,product_detail_donggoi_thetich
                                                    ,product_detail_nhasanxuat
                                                    ,product_detail_xuatxu)
                                            VALUES ('".$keywords."'
                                                    ,'".$description."'
                                                    ,'".$price."'
                                                    ,'".$unit."'
                                                    ,'".input($products_name)."'
                                                    ,".time()."
                                                    ,'".input($products_description)."'
                                                    ,'".input($detail)."'
                                                    ,'".$categories_id."'
                                                    ,'".$categories_id_2."'
                                                    ,'".$_SESSION['lag']."'
                                                    ,'".$p_color."'
                                                    ,'".$p_type."'
                                                    ,'".$p_unit."'
                                                    ,'".$encourage."'
                                                    ,'".$nsx."'
                                                    ,'".$p_attribute."'
                                                    ,'".$checkChoMeo."'
                                                    ,'".$Xuatxu."'
                                                    ,'".$txtlinknsx."'
                                                    ,'".$commodity_name."'
                                                    ,'".input($product_detail_tacdung)."'
                                                    ,'".input($product_detail_phuhopcho)."'
                                                    ,'".input($product_detail_nguyenlieu_thanhphan)."'
                                                    ,'".input($product_detail_phantichdambao)."'
                                                    ,'".input($product_detail_huongdansudung)."'
                                                    ,'".input($product_detail_huongdanbaoquan)."'
                                                    ,'".input($product_detail_luuy)."'
                                                    ,'".input($product_detail_khuyenkhich)."'
                                                    ,'".input($product_detail_donggoi_thetich)."'
                                                    ,'".input($product_detail_nhasanxuat)."'
                                                    ,'".input($product_detail_xuatxu)."')";
                    $products_status = 1;
                }
                $mysql->setQuery($sql);
                if($mysql -> query()){	
                    $lastId = mysql_insert_id();
                    if($image){
                        //Update image
                        if($update==1){	
                            if(file_exists(_UPLOAD_IMG_TOURS.$row['products_image'])){	
                                @unlink(_UPLOAD_IMG_TOURS.$row['products_image']);
                                @unlink(_UPLOAD_IMG_THUMB_TOURS.$row['products_image']);	
                            }
                            $lastId = $id;	
                        }	
                        //Change name of image
                        $image = renameFile($_FILES["image"]["name"],'p-'.input($products_key).'-'.$lastId);

                        //Resize image and move to folder
                        if(move_uploaded_file($_FILES ["image"]["tmp_name"],_UPLOAD_IMG_THUMB_TOURS.$image)){
                            @imagejpeg(resize(_UPLOAD_IMG_THUMB_TOURS.$image,600,400),_UPLOAD_IMG_TOURS.$image);
                            $sql = "UPDATE products_tours
                                    SET products_image = '".$image
                                    ."' WHERE products_id = '".$lastId."'";
                            $mysql -> setQuery($sql);
                            $mysql -> query();
                        }
                    }

                    if($image_first){
                        //Update image
                        if($update == 1){
                            if(file_exists(_UPLOAD_IMG_TOURS.$row['products_image_first'])){
                                @unlink(_UPLOAD_IMG_TOURS.$row['products_image_first']);
                                @unlink(_UPLOAD_IMG_THUMB_TOURS.$row['products_image_first']);
                            }
                            $lastId = $id;
                        }	
                        
                        //Change name of image first
                        $image_first = renameFile($_FILES["image_first"]["name"],'p-'.input($products_key).'-'.$lastId.'-01');
                        
                        //Resize image_first and move to folder
                        if(move_uploaded_file($_FILES ["image_first"]["tmp_name"],_UPLOAD_IMG_THUMB_TOURS.$image_first)){
                            @imagejpeg(resize(_UPLOAD_IMG_THUMB_TOURS.$image_first,1000,500),_UPLOAD_IMG_TOURS.$image_first);
                            $sql = "UPDATE products_tours
                                    SET products_image_first = '".$image_first
                                    ."' WHERE products_id = '".$lastId."'";
                            $mysql -> setQuery($sql);
                            $mysql -> query();
                        }
                    }
                    
                    if($image_second){
                        //Update image
                        if($update == 1){
                            if(file_exists(_UPLOAD_IMG_TOURS.$row['products_image_second'])){
                                @unlink(_UPLOAD_IMG_TOURS.$row['products_image_second']);
                                @unlink(_UPLOAD_IMG_THUMB_TOURS.$row['products_image_second']);
                            }
                            $lastId = $id;
                        }	
                        
                        //Change name of image first
                        $image_second = renameFile($_FILES["image_second"]["name"],'p-'.input($products_key).'-'.$lastId.'-02');
                        
                        //Resize image_first and move to folder
                        if(move_uploaded_file($_FILES ["image_second"]["tmp_name"],_UPLOAD_IMG_THUMB_TOURS.$image_second)){
                            @imagejpeg(resize(_UPLOAD_IMG_THUMB_TOURS.$image_second,1000,500),_UPLOAD_IMG_TOURS.$image_second);
                            $sql = "UPDATE products_tours
                                    SET products_image_second = '".$image_second
                                    ."' WHERE products_id = '".$lastId."'";
                            $mysql -> setQuery($sql);
                            $mysql -> query();
                        }
                    }
                    
                    if($image_third){
                        //Update image
                        if($update == 1){
                            if(file_exists(_UPLOAD_IMG_TOURS.$row['products_image_third'])){
                                @unlink(_UPLOAD_IMG_TOURS.$row['products_image_third']);
                                @unlink(_UPLOAD_IMG_THUMB_TOURS.$row['products_image_third']);
                            }
                            $lastId = $id;
                        }	
                        
                        //Change name of image first
                        $image_third = renameFile($_FILES["image_third"]["name"],'p-'.input($products_key).'-'.$lastId.'-03');
                        
                        //Resize image_first and move to folder
                        if(move_uploaded_file($_FILES ["image_third"]["tmp_name"],_UPLOAD_IMG_THUMB_TOURS.$image_third)){
                            @imagejpeg(resize(_UPLOAD_IMG_THUMB_TOURS.$image_third,1000,500),_UPLOAD_IMG_TOURS.$image_third);
                            $sql = "UPDATE products_tours
                                    SET products_image_third = '".$image_third
                                    ."' WHERE products_id = '".$lastId."'";
                            $mysql -> setQuery($sql);
                            $mysql -> query();
                        }
                    }
                    
                    if($image_fourth){
                        //Update image
                        if($update == 1){
                            if(file_exists(_UPLOAD_IMG_TOURS.$row['products_image_fourth'])){
                                @unlink(_UPLOAD_IMG_TOURS.$row['products_image_fourth']);
                                @unlink(_UPLOAD_IMG_THUMB_TOURS.$row['products_image_fourth']);
                            }
                            $lastId = $id;
                        }	
                        
                        //Change name of image first
                        $image_fourth = renameFile($_FILES["image_fourth"]["name"],'p-'.input($products_key).'-'.$lastId.'-04');
                        
                        //Resize image_first and move to folder
                        if(move_uploaded_file($_FILES ["image_fourth"]["tmp_name"],_UPLOAD_IMG_THUMB_TOURS.$image_fourth)){
                            @imagejpeg(resize(_UPLOAD_IMG_THUMB_TOURS.$image_fourth,1000,500),_UPLOAD_IMG_TOURS.$image_fourth);
                            $sql = "UPDATE products_tours
                                    SET products_image_fourth = '".$image_fourth
                                    ."' WHERE products_id = '".$lastId."'";
                            $mysql -> setQuery($sql);
                            $mysql -> query();
                        }
                    }
                    
                    if($update == 1){
                        $lastId = $id;
                    }
                    $sql = "UPDATE products_tours
                            SET products_key  = '".input($products_key.'-'.$lastId)
                            ."' WHERE products_id = '".$lastId."'";
                    $mysql -> setQuery($sql);
                    $mysql -> query();
                    $sql_up_img = "UPDATE image_product_tours
                                   SET product_id = ".$lastId
                                ." WHERE product_id = -1";
                    $mysql -> setQuery($sql_up_img);
                    $mysql -> query();	

                    // Insert product-category
                    if ($update == 1){
                        $sql = "DELETE
                                FROM product_category_tours
                                WHERE product_id = ". $lastId;
                        $mysql -> setQuery($sql);
                        $mysql -> query();
                    }
                    $categories_id_list = explode(",", $categories_id);
                    $sql = "INSERT INTO product_category_tours(product_id,category_id, status) VALUES ";
                    for ($i = 0 ; $i < count($categories_id_list); $i++){
                        if(!empty($categories_id_list[$i])){
                            $sql .="(" . $lastId . "," . $categories_id_list[$i] . "," . $products_status .")";
                            if($i != (count($categories_id_list) - 2)){
                                $sql .= ",";                                                
                            }
                        }
                    }
                    $mysql -> setQuery($sql);
                    $mysql -> query();
                }
                $_SESSION['timeout'] = time();
                if($_GET['order']){
                    header('location:./?show=product_tours&p='.intval($_GET['p']).'&order='.$_GET['order']);
                }
                else{
                    header('location:./?show=product_tours&p='.intval($_GET['p']));
                }
            }
            else{
                $error = "<div class='error' style='color:red'>".$error."</div>";
            }
        }		
        $tpl_img = '';
        $sqls = 'SELECT id, product_id, image_path FROM image_product_tours WHERE product_id = '.$id;
        $mysql -> setQuery($sqls);
        $imgs = $mysql->loadAllRow();
        $m = count($imgs);
        for($i=0 ; $i<$m ; $i++){
            $tpl_img .= "<img width='60px;' style='padding:10px;' height='80px;' src='"
                            ._UPLOAD_IMG_DETAIL_TOURS.$imgs[$i]['image_path']."'  class='preview'>"
                        ."<a href='' onclick='deleteImg(".$imgs[$i]['id'].");return false;'>Xóa</a>";
        }	
        if($tpl_img == ''){
            $tpl_img = 'Chưa có hình minh họa';
        }			

        $xtemplate -> path = 'com_product_tours/';
        $content = $xtemplate -> load('OptProduct');			
        $product_of_commodity = "Tình trạng";		
        if($commodity_name == "Co Hang"){
            $commodity_id = 0;
        }			
        else if($commodity_name == "Tam Thoi Het Hang"){
            $commodity_id = 1;
        }		
        else if($commodity_name == "Sap Co Hang"){
            $commodity_id = 2;
        }				
        else if($commodity_name == "Dat Hang Truoc"){
            $commodity_id = 4;
        }														

        $content = $xtemplate ->replace($content,array(
            'error'			=> $error,		
            //'cat_list'		=> catlist($categories_id),
            'cat_list'			=> CatlistUpgrade_tours($categories_id),
            'commodity_list'            => commoditylist($commodity_id),				
            'imagesrc'			=> $imagesrc,
            'imagesrc_first'            => $imagesrc_first,
            'imagesrc_second'           => $imagesrc_second,
            'imagesrc_third'            => $imagesrc_third,
            'imagesrc_fourth'           => $imagesrc_fourth,
            'ImgThumb'			=> $ImgThumb,
            'ImgDel'			=> $ImgDel,
            'vnd'			=> $vnd,
            'keywords'			=> $keywords,
            'description'		=> $description,
            'khuyenmai'			=> $encourage,
            'usd'                       => $usd,
            'panel_add_update_product'	=> $panel,
            'product_name'		=> $arr_lang['product_name'],
            'image'			=> $arr_lang['image'],
            'price'			=> $arr_lang['price'],
            'product_of_catalogue'	=> $arr_lang['product_of_catalogue'],
            'product_of_commodity'      => $product_of_commodity,
            'product_detail'		=> $arr_lang['product_detail'],
            'reset'			=> $arr_lang['reset'],
            'product_code'		=> $arr_lang['product_code'],
            'btn'                       => $btn,
            'txtcode'			=> $code,
            'txtname'                   => $products_name,
            'txtprice'			=> $price,
            'products_description'	=> $products_description,
            'txtdetail'                 => $detail,		
            'invdetail_tacdung'		=> $product_detail_tacdung,
            'invdetail_phuhopcho'	=> $product_detail_phuhopcho,
            'invdetail_nguyenlieu_thanhphan'    => $product_detail_nguyenlieu_thanhphan,
            'invdetail_phantichdambao'	=> $product_detail_phantichdambao,
            'invdetail_huongdansudung'	=> $product_detail_huongdansudung,
            'invdetail_huongdanbaoquan'	=> $product_detail_huongdanbaoquan,
            'invdetail_luuy'		=> $product_detail_luuy,
            'invdetail_khuyenkhich'	=> $product_detail_khuyenkhich,
            'invdetail_donggoi_thetich'	=> $product_detail_donggoi_thetich,
            'invdetail_nhasanxuat'	=> $product_detail_nhasanxuat,
            'invdetail_xuatxu'		=> $product_detail_xuatxu,
            'title_image'		=> $title_image,
            'option_color'		=> $option_color,
            'option_type'               => $option_type,
            'txtnsx'			=> $nsx	,
            'id_product'                => $id,
            'list_img'			=> $tpl_img,
            'p_attribute'		=> $p_attribute,
            'check1'			=> $check1,
            'check2'			=> $check2,
            'txtXuatxu'			=> $Xuatxu,
            'txtlinknsx'		=> $txtlinknsx,
        ));

        $script .= $xtemplate ->get_block_from_str($content,"SCRIPT");			
        $content = $xtemplate ->assign_blocks_content($content,array("SCRIPT" => ''));	
    }	
    else{
        header("location:./?show=product_tours");
    }
?>