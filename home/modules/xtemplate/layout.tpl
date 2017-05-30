<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>{title}</title>        
    <meta name="description" content="{description}">	
    <meta name="keywords" content="{keywords}">
    <meta name="author" content="Nanapet">    
    <meta charset="UTF-8">                
    
    <meta property="fb:admins" content="1119844474"/>
    <meta property="fb:admins" content="100000096874902"/>
    <meta property="fb:app_id" content="1630518347190717"/>
    <link rel="shortcut icon" href="{linkS}layout/images/favicon.png"/>
    
    
    <link rel="stylesheet" type="text/css" href="{linkS}layout/css/news.css"/>
    <link rel="stylesheet" type="text/css" href="{linkS}layout/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="{linkS}layout/css/idTab.css"/>
    <link rel="stylesheet" type="text/css" href="{linkS}layout/css/cart.css"/>
    <link rel="stylesheet" type="text/css" href="{linkS}layout/css/cloud-zoom.css"/>
    <link rel="stylesheet" type="text/css" href="{linkS}layout/css/lionbars.css"/>
    <link rel="stylesheet" type="text/css" href="{linkS}layout/css/postfinal.css"/>
    <script type="text/javascript" src="{linkS}layout/js/jquery-1.7.js"></script>
    <script type="text/javascript" src="{linkS}layout/js/jcarousellite.js"></script>
    <script type="text/javascript" src="{linkS}layout/js/thumimage.js"></script>
    <script type="text/javascript" src="{linkS}layout/js/sliderman.js"></script>
    <script type="text/javascript" src="{linkS}layout/js/cloud-zoom.1.0.2.js"></script>
    <script type="text/javascript" src="{linkS}layout/js/jquery.lionbars.0.3.js"></script>
    <script type="text/javascript" src="{linkS}layout/js/jquery.jcountdown1.4.js"></script>	
    
    <script type="text/javascript" src="{linkS}layout/js/jquery.maskedinput.js"></script>                 
    
    <script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');	
	  ga('create', 'UA-48947150-1', 'nanapet.com');
	  ga('send', 'pageview');
    </script>    	
    <script type="text/javascript">
		$(function() 
		{    	
			//get width screen
			var width_screen = $(window).width();
			var right_cart = ((width_screen - 980)/2) - 140;    	
			$(".shopping-cart").css("right", right_cart + "px");    										
			$(".shopping-cart").css("font-size","11px");    										
		}); 		
		jQuery(function($)
		{														
			$('#phone_2_field').mask('(999) 999 - 9999?9',
									{placeholder:" "});																	
			$('#phone').mask('(999) 999 - 9999?9',
									{placeholder:" "});				
			$('#text_mobile_receiver').mask('(999) 999 - 9999?9',
									{placeholder:" "});																									
		});       									 
    </script>
    <div id="fb-root"></div>
	<script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "http://connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1630518347190717&version=v2.4";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
	<style>
        .y1_1{
			width:750px;
			height:132px;
			padding:10 0 0;
			margin:0 auto;
			float:none;}
        .y1_1 li{
			width:850px;
			line-height:32px;
			text-align:center;}
        .y1_1 a.pho{
			width:126px;
			margin:0 auto;
			float:left;
			display:block;}
        .y1_1 img{
			padding:2px;
			border:1px solid #ccc;
			float:none;}
        .y1 a{
			text-decoration:underline;}
		.Arr_31{
			width:74px;
			height:349px;
			overflow:hidden;
			line-height:26px;}
        .Arr_31 a{
			width:73px;
			padding:2px 0 0;
			display:block;
			border-bottom:1px solid #CBDFF5;
			border-right:1px solid #CBDFF5;
			background:#F0F7FF;
			text-align:center;}
        #bestsell .y1_1 img{
			border:0px solid #ccc;}    
    </style>
    <!--<script type="text/javascript" src="http://sdscdn.userreport.com/popup.min.js"></script>
    <script type="text/javascript">try { _bvt.initSite('f700069f-0533-4c44-ae4e-e1c75396fa18');}catch(err){}</script>-->
    <!-- Piwik -->
    <script type="text/javascript">
        var _paq = _paq || [];
        _paq.push(['trackPageView']);
        _paq.push(['enableLinkTracking']);
        (function() {
            var u=(("https:" == document.location.protocol) ? "https" : "http") + "://nanapet.com/piwik/piwik/";
            _paq.push(['setTrackerUrl', u+'piwik.php']);
            _paq.push(['setSiteId', 1]);
            var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0]; g.type='text/javascript';
            g.defer=true; g.async=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
        })();
    </script>
    <noscript><p><img src="http://nanapet.com/piwik/piwik/piwik.php?idsite=1" style="border:0;" alt="" /></p></noscript>
    <!-- End Piwik Code -->
</head>
<body>    	
	<div id="wrapper">
        <div class="shopping-cart" {hidden}>            
           {giohang}                       	           
        </div>
		<div id="header">        
    		<div id="top_header" >
                <div id="logo">
                    <a href="{linkS}index.htm">
                        <img src="{linkS}layout/images/logo/{logo_web}" title="Nanapet" width="280px"/>
                    </a>
                </div>
                <div id="right_header">                
                	<div id="login" style="font-family:Arial, Helvetica, sans-serif; font-size:12px">
                		<div> <A name="section0"/>{acount}&nbsp;
                        <a href="http://nanapet.com">
                        	<img src="{linkS}layout/images/vietnam.gif"/>
                        </a> 
                    </div>
               		</div><!-- end login -->
                    <div class="clear"></div>                    
                    <div id="search">
	                    <form name ="form_search" action="{linkS}tim-kiem" method="post">
                                <input class="search_cell"
                            	   value="Nhập từ khóa tìm kiếm ..." 
                            	   onfocus="this.value=''" 
                                   type="text" 
                                   name="search_box"/>
	                        <input class="search_button" 
                            	   type="submit" 
                                   value="Search" />
	                    </form>
               		</div><!-- end search -->                    
                </div><!-- end right_header -->
    		</div><!-- end top_header -->            
            <div class="clear"></div>            
            <div id="menu">
    			<ul class="nav">
                	<li><a class="{home_active}" href="{linkS}">Trang chủ</a></li>
                    <li><a class="{about_active}" href="{linkS}gioi-thieu">Giới thiệu</a></li>
                    <li><a class="{adoption_active}" href="{linkS}nhan-nuoi-pet">Dịch vụ</a></li>
                    <li><a class="{library_active}" href="{linkS}thu-vien">Thư viện</a></li>
                    <li><a class="{promotion_active}" href="{linkS}khuyen-mai">Khuyến mãi</a></li>
                    <li><a class="{relax_active}" href="{linkS}thu-gian">Giải trí</a></li>
                    <li><a class="{contact_active}" href="{linkS}lien-he">Liên hệ</a></li>
                </ul>
    		</div><!-- end menu -->            
            <div id="banner" style="padding-bottom: 10px;">
    			<div id="slider">
                    <div id="SliderName" class="SliderName">                                   
                        {main_banner}                                                               
                    </div>
                    <script type="text/javascript">
                        effectsDemo2 = 'fades,traight,swirl,snake';
                        var demoSlider_2 = Sliderman.slider({container: 'SliderName', 
															 width: 960, 
															 height: 298, 
															 effects: effectsDemo2,
                            display: {
                                autoplay: 6500,
                                loading: {background: '#000000', opacity: 0.5},
                                buttons: {hide: true, opacity: 1, 
										  prev: {className: 'SliderNamePrev', label: ''}, 
										  next: {className: 'SliderNameNext', label: ''}}
                            }
                        });
                    </script>
                </div>
    		</div><!-- end banner -->            
            <div class="clear"></div>
    	</div><!-- end header -->		
		<!-- content -->		
		<div id="main_wrapper">					
                <div id="col1">
                    <div id="tieude_tim">{title_category}</div>
                    <h2 style="font-size:12px; 
                    		   font-family:Arial, Helvetica, sans-serif; 
                    		   font-weight:lighter; 
                               margin-top:1px; 
                               margin-bottom:1px">
                    <div class="col1_noidung">                      
                        {category}                    
                    </div><!-- end col1_noidung -->
                    </h2>             
                    <div id="banner_left" {hidden-banner-left}>
                        <div id="sliderBannerLeft">
                            <div id="SliderNameBannerLeft" class="SliderNameBannerLeft">                                                      
                                {left_banner_1}
                            </div>
                            <script type="text/javascript">
                                <!--fades,traight,swirl,snake-->
                                effectsDemo2_1 = 'fades,traight,swirl,snake';
                                var demoSlider_2_1 = Sliderman2.slider({container: 'SliderNameBannerLeft', 
                                                                        width: 215, 
                                                                        height: 500, 
                                                                        effects: effectsDemo2_1,
                                    display: {
                                        autoplay: 3000,
                                        loading: {background: '#000000', opacity: 0.5},
                                        buttons: {hide: true, opacity: 1, prev: {className: 'SliderNamePrevBannerLeft', 
                                                                                 label: ''}, 
                                                                                 next: {className: 'SliderNameNextBannerLeft', label: ''}}
                                    }
                                });
                            </script>
                        </div>                                     
                     </div>
                     
                     <div id="banner_left_2" {hidden-banner-left}>
                        <div id="sliderBannerLeft_2">
                            <div id="SliderNameBannerLeft_2" class="SliderNameBannerLeft_2">                                                         
                                {left_banner_2}
                            </div>                           
                            <script type="text/javascript">
                                effectsDemo2_2 = 'fades,traight,swirl,snake';
                                var demoSlider_2_2 = Sliderman2.slider({container: 'SliderNameBannerLeft_2', 
                                                                        width: 215, 
                                                                        height: 500, 
                                                                        effects: effectsDemo2_2,
                                display:{
                                        autoplay: 3500,
                                        loading: {background: '#000000', opacity: 0.5},
                                        buttons: {hide: true, opacity: 1, 
                                        prev: {className: 'SliderNamePrevBannerLeft_2', label: ''}, 
                                        next: {className: 'SliderNameNextBannerLeft_2', label: ''}}
                                    }
                                });
                            </script>
                        </div>                                                           
                     </div>   
                     <div id="facebook_box_3" {hidden-banner-left}>                 
			{left_facebook_box}
                     </div>                 
                    <div id="tieude_cam" {hidden} style="font-family:Arial, Helvetica, sans-serif">Tư vấn khách hàng</div>                
                    <div class="col1_noidung" {hidden}>
                        <div class="tuvan_online" style="font-family:Arial, Helvetica, sans-serif; font-size:12px">
                            {product_typical_left}
                        </div><!-- end newsticker -->                    
                    </div><!-- end col1_noidung -->                
                    <div id="tieude_xanh" {hidden}></div>
                    <div class="news_noidung" {hidden} style="font-family:Arial, Helvetica, sans-serif; font-size:12px">
                        {news_left}
                    </div><!-- end news_noidung -->                                
                    </div><!-- end col1 -->	
		
			<div id="col2">
				{content}
			</div><!-- end col2 -->  		
		</div><!-- end main_wrapper -->		
		<!-- end content -->		
		<div class="clear"></div>		 
		<div id="footer">        
    		<div id="top_footer">            
    			<div id="top_left_footer" style="width:700px">                           
                    <div class="line"></div>
                    	<div class="logo_brand">                  
                    		<div id="avd_footer" style="overflow:hidden;
                            							height:80px;
                                                        width:680px;
                                                        margin-top:0px;
                                                        margin-bottom:0px;
                                                        margin-left:10px; 
                                                        float:left;">
							<table align=left cellpadding=0 cellspace=0 border=0 width="100%">
								<tr>
									<td id="avd_footer1" valign=center>
						            	<ul class="y1_1">
						            		<li>
						                         {img_adv_bottom}
						                    </li>
						                 </ul>
					                </td>
				                	<td id="avd_footer2" valign=center></td>
				                </tr>
			                </table>
			             </div>
                    </div>
                </div><!-- end top_left_footer -->                
                <div id="top_right_footer">                    
                    <table>
                    	<tr>
                        	<td>
                                <a href="{linkS}tro-giup/dich-vu-van-chuyen.html">
                                    <img height="50px" src="{linkS}layout/images/q&a.jpg" />
                                </a>
                            </td>
                            <td>
                            	<a href="{linkS}tro-giup/cach-thuc-thanh-toan.html">
                                	<img height="50px" src="{linkS}layout/images/coupon.jpg"/>
                                </a>
                        	</td>
                        </tr>
                        <tr>
                        	<td>
                            	<a href="{linkS}tro-giup/cau-hoi-thuong-gap.html">
                                	<img height="50px" src="{linkS}layout/images/f.a.q.jpg"/>
                                </a>
                            </td>
                            <td>
                            	<a href="{linkS}tro-giup/huong-dan-mua-hang.html">
                                	<img height="50px" src="{linkS}layout/images/buy.jpg"/>
                                </a>
                           	</td>
                        </tr>
                    </table>                                        
                </div><!-- end top_right_footer -->                
    		</div><!-- end top_footer -->            
            <div id="end_footer" style="clear:both;height:80px">
                <img style = "margin-bottom: -14px"src="{linkS}layout/images/foot.png" height="80px"/>
             	<a style = "margin-left: 20px;" href="http://www.dmca.com/Protection/Status.aspx?ID=4902d07b-8b1f-4ad7-8f66-7eb96d066e80" title="DMCA"> 
             		<img src ="http://images.dmca.com/Badges/DMCA_logo-green150w.png?ID=4902d07b-8b1f-4ad7-8f66-7eb96d066e80" alt="DMCA.com" width="130" height="58"/>
                </a>
            </div>                                
                {chatlive}                                                      
    		</div><!-- end end_footer -->            
    	</div><!-- end footer -->
	</div><!-- end wrapper -->		
	<div id="show_khuyenmai">
		<div align="right" style="margin-right: 30px;">
        	<a id="close-khuyenmai" href="#" onclick="return false;">
            	<img src="{linkS}layout/images/ico_close.gif"/>
            </a>
        </div>
		<div style="">{time_sale_tpl}</div>
	</div><!-- /lightbox-panel -->  		
</body>
</html>
<script type="text/javascript">	
  	var speed=30;
  	var avd_footer=document.getElementById('avd_footer');
  	var avd_footer1=document.getElementById('avd_footer1');
  	var avd_footer2=document.getElementById('avd_footer2');
  	avd_footer2.innerHTML=avd_footer1.innerHTML
  	function MarqueeAvd_footer(){
  		if(avd_footer2.offsetWidth-avd_footer.scrollLeft<=0)
  		avd_footer.scrollLeft-=avd_footer1.offsetWidth
  		else
		{
  			avd_footer.scrollLeft++
  		}
  	}
  	var MyMarAvd_footer=setInterval(MarqueeAvd_footer,speed)
  	avd_footer.onmouseover=function() {clearInterval(MyMarAvd_footer)}
  	avd_footer.onmouseout=function() {MyMarAvd_footer=setInterval(MarqueeAvd_footer,speed)}
</script>
<script>
	$(document).ready(function(){
		$.ajax({
			type: "POST",
			url: "{linkS}home/modules/ajax/cart_right.php",
			data: {"emty":"0"},
			success: function(data)
			{
				$("#main-cart").html(data);
			}
		});
	});
</script>