<?php
    
    header('Content-Type: text/html; charset=utf-8');

    date_default_timezone_set('Asia/Ho_Chi_Minh');

    $tilte_page = 'Welcome to Sài Gòn Bình Ba';

    $description = 'Dịch vụ khách sạn Bình Ba| Tours du lịch Bình Ba';

    $keywords = 'khách sạn bình ba , tours du lịch bình ba';
    
    include('home_start.php');

    include('process/loadModel.php');

    include('process/process_frame.php');        
    
    $html = $xtemplate->load('layout_bootstrap');

    $chatlive = "<script type='text/javascript'>
                (function () {	 
                    var done = false;
                    var script = document.createElement('script'); script.async = true;
                    script.type = 'text/javascript';
                    script.src = 'https://app.purechat.com/VisitorWidget/WidgetScript';
                    document.getElementsByTagName('HEAD').item(0).appendChild(script);
                    script.onreadystatechange = script.onload = function (e)
                    {
                        if (!done && (!this.readyState || this.readyState == 'loaded' || this.readyState == 'complete'))
                        { 
                            var w = new PCWidget({ c: 'f94415ed-ed1a-42fd-b68e-4d636bb02288', f: true }); done = true;}
                        };	 
                        })();
                </script>";
    
    $giohang = '{cart_right}';

    $hidden = "";

    $hiddenbannerleft = 'style="display: none;"';

    $main_banner = '';
	
    if(!empty($banner))
    {
        $main_banner .= '<div><img u="image" src="{linkS}layout/images/logo/banner/'.$banner.'"/></div>';
    }
    if(!empty($banner_2))
    {
        $main_banner .= '<div><img u="image" src="{linkS}layout/images/logo/banner/'.$banner_2.'"/></div>';
    }
    if(!empty($banner_3))
    {
        $main_banner .= '<div><img u="image" src="{linkS}layout/images/logo/banner/'.$banner_3.'"/></div>';
    }
    if(!empty($banner_4))
    {
        $main_banner .= '<div><img u="image" src="{linkS}layout/images/logo/banner/'.$banner_4.'"/></div>';
    }
    if(!empty($banner_5))
    {
        $main_banner .= '<div><img u="image" src="{linkS}layout/images/logo/banner/'.$banner_5.'"/></div>';
    }	

    $left_banner_1 = '';

    if(!empty($banner_left_1_1))
    {
        $left_banner_1 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_1/'.$banner_left_1_1.'"/>'
                        . '</a>';
    }
    
    if(!empty($banner_left_1_2))
    {
        $left_banner_1 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_1/'.$banner_left_1_2.'"/>'
                        . '</a>';
    }
    
    if(!empty($banner_left_1_3))
    {
        $left_banner_1 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_1/'.$banner_left_1_3.'"/>'
                        . '</a>';
    }
    
    if(!empty($banner_left_1_4))
    {
        $left_banner_1 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_1/'.$banner_left_1_4.'"/>'
                        . '</a>';
    }
    
    if(!empty($banner_left_1_5))
    {
        $left_banner_1 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_1/'.$banner_left_1_5.'"/>'
                        . '</a>';
    }

    $left_banner_2 = '';

    if(!empty($banner_left_2_1))
    {
        $left_banner_2 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_2/'.$banner_left_2_1.'"/>'
                        . '</a>';
    }
    if(!empty($banner_left_2_2))
    {
        $left_banner_2 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_2/'.$banner_left_2_2.'"/>'
                        . '</a>';
    }
    if(!empty($banner_left_2_3))
    {
        $left_banner_2 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_2/'.$banner_left_2_3.'"/>'
                        . '</a>';
    }
    if(!empty($banner_left_2_4))
    {
        $left_banner_2 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_2/'.$banner_left_2_4.'"/>'
                        . '</a>';
    }
    if(!empty($banner_left_2_5))
    {
        $left_banner_2 .= '<a href="{linkS}">'
                            . '<img src="{linkS}layout/images/logo/banner_left_2/'.$banner_left_2_5.'"/>'
                        . '</a>';
    }
    
    $left_facebook_box = "<div class='fb-like-box' 
                            data-href='https://www.facebook.com/saigonbinhba'
                            data-width='235' 
                            data-height='315' 
                            data-colorscheme='light'
                            data-show-faces='true'
                            data-header='true'
                            data-stream='false'
                            data-show-border='true'>
                        </div>";	
    switch($show)	
    {				
        case 'cart-finish':
        case 'cart':
        case 'register':
        case 'login':		
            $html  = $xtemplate->replace($html,array
            (                
                'chatlive'  =>  "",                                 
            ));							
            
        break;		
				
        case 'info':

            if($_GET['flag'] == "3")
            {
                $hidden = 'style="display: none"';			

                $category = $category_libary;

                $hiddenbannerleft ="style = 'margin-top:15px'";
            }

            $html  = $xtemplate->replace($html,array(					

                'hidden'                => $hidden,			               

                'chatlive' 		=> "",		

            ));							            						

        break;	
		
						
        case 'info_detail':

            if(input($_GET['cate']) == 'thuvien')
            {
                $hidden = 'style="display: none"';

                $category = $category_libary;

                $hiddenbannerleft ="style = 'margin-top:15px'";
            }
				
            $html  = $xtemplate->replace($html,array(

                'hidden'            => $hidden,                

                'chatlive'          => "",												
            ));							            

        break;
                        
        case 'info_detail_libary':

            if(input($_GET['cate']) == 'thuvien')
            {

                $hidden = 'style="display: none"';

                $category = $category_libary;		

                $hiddenbannerleft ="style = 'margin-top:15px'";
            }

            $html  = $xtemplate->replace($html,array(

                'hidden'            => $hidden,                

                'chatlive'          => "",
            ));							

        break;

        default:
            
            $html  = $xtemplate->replace($html,array(						             
                                               
                'chatlive'          => $chatlive,                                                
            ));    						
    }	        
    
    $html  = $xtemplate->replace($html,array(						
        
        'category'                  => $category,

        'hidden-banner-left'        => $hiddenbannerleft,        

        'product_typical_left'      => $product_typical_left,

        'news_left'                 => $news_left,

        'content'                   => $content,

        'breadcrumbs_path'          => $breadcrumbs_path,

        'acount'                    => $acount,

        'title'                     => $tilte_page,

        'giohang'                   => $giohang,

        'cart_right'                => $cart_right,

        'main_banner'               => $main_banner,

        'left_banner_1'             => $left_banner_1,

        'left_banner_2'             => $left_banner_2,

        'linkS'                     => $linkS,
        
        'introduce'                 => $introduce,

        'product_menu'              => $product,
        
        'service'                   => $service,
        
        'home'                      => $home,

        'blog'                      => $blog,
        
        'share'                     => $share,        

        'contact'                   => $contact,        

        'logo_web'                  => $logo_web,

        'img_adv_lelf'              => $img_adv_lelf,

        'img_adv_bottom'            => $img_adv_bottom,

        'description'               => $description,

        'keywords'                  => $keywords,
        
        'left_facebook_box'         =>  $left_facebook_box,
        
        'linkSf'                    => "http://saigon-binhba.com/",
    ));	
    
    $xtemplate->show($html);				
?>