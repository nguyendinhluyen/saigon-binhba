<!DOCTYPE html>
<html lang="vi" xmlns:fb="http://www.facebook.com/2008/fbml">
    <head>
        <meta charset="UTF-8">        
        <meta http-equiv="X-UA-Compatible" content="IE=9">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>{title}</title>
        <meta name="description" content="{description}">
        <meta name="keywords" content="{keywords}">
        <meta name="author" content="SàiGòn-BìnhBa">
        
        <meta property="fb:admins" content="1119844474" />
        <meta property="fb:admins" content="100000082417680" />
        <meta property="fb:admins" content="100009864035553" />
        <meta property="fb:app_id" content="719533798152955" />
        
        <link rel="shortcut icon" href="{linkS}layout/bootstrap/images/favicon.png"/>
        <!--Begin Banner-->
        <script type="text/javascript" src="{linkS}layout/js/sliderman.js"></script>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/jquery/jquery-migrate-1.2.1.min.js"></script>
        <!--End Banner-->
        <!--Begin Logo Slick-->
        <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/slick/slick/slick.css"/>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/jquery/jquery-1.11.2.min.js"></script>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/jquery/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/slick/slick/slick.min.js"></script>
        <!--End Logo Slick-->   
        <!--Bootstrap-->
        <link href="{linkS}layout/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="{linkS}layout/bootstrap/js/bootstrap.min.js"></script>
        <!--End Bootstrap-->
        <!--Begin Zoom Image-->
        <link rel="stylesheet" type="text/css" href="{linkS}layout/css/cloud-zoom.css"/>
        <script type="text/javascript" src="{linkS}layout/js/cloud-zoom.1.0.2.js"></script>
        <!--End Zoom Image-->
        <!--Begin Mask Phone-->
        <script type="text/javascript" src="{linkS}layout/js/jquery.maskedinput.js"></script>                 
        <!--End Mask Phone-->                
        
        <script type="text/javascript">		
            jQuery(function($)
            {														
                $('#phone_2_field').mask('(999) 999 - 9999?9',{placeholder:" "});
                $('#phone').mask('(999) 999 - 9999?9',{placeholder:" "});
                $('#text_mobile_receiver').mask('(999) 999 - 9999?9',{placeholder:" "});
            });       									 
        </script>                                       
        
        <!-- Facebook SDK  ver 2.4-->
        <div id="fb-root"></div>
        <script>(function(d, s, id){
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.4&appId=719533798152955";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!--End Facebook SDK -->
        
        <!-- Begin Google
        <script>              
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
              m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
              })(window,document,'script','//www.google-analytics.com/analytics.js','ga');	
              ga('create', 'UA-48947150-1', 'nanapet.com');
              ga('send', 'pageview');
        </script>    	
        End Google-->
              
        <!-- Piwik 
        <script type="text/javascript">
          var _paq = _paq || [];
          _paq.push(['trackPageView']);
          _paq.push(['enableLinkTracking']);
          (function() {
            var u="//nanapet.com/piwik/";
            _paq.push(['setTrackerUrl', u+'piwik.php']);
            _paq.push(['setSiteId', 1]);
            var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
            g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
          })();
        </script>
        <noscript><p><img src="//nanapet.com/piwik/piwik.php?idsite=1" style="border:0;" alt="" /></p></noscript>
        End Piwik Code -->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script type="text/javascript" src="{linkS}layout/bootstrap/css/css3-mediaqueries.js"></script>    
            <script type='text/javascript' src="{linkS}layout/bootstrap/css/html5.js"></script>             
            <script type='text/javascript' src="{linkS}layout/bootstrap/css/respond.js"></script>     
        <![endif]-->
    </head>
    <style>        
        input[type=search], div.button {
            -moz-box-sizing: border-box;
            height: 35px;            
            box-sizing: border-box;  
            font-family: inherit;
            font-size: inherit;
        }
        input[type=search] {
            margin: 0;
            padding: 0 10px;
            background-color: #f8f8f8;
            border: 0;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        a:hover, a:link{
            cursor:pointer;
            text-decoration: none;
        }
        
    </style>
    <script>
        function share(){
            alert("Tính năng đang phát triển.");
        }
        function myKeyDown(){
            document.getElementById('search_box').setCustomValidity('');
        }    
        
        function myTrim(x) {
            return x.replace(/^\s+|\s+$/gm,'');
        }
        
        function checkForm(){         
            document.getElementById("search_box").required = true;
            if (myTrim(document.getElementById('search_box').value) === ""){
                document.getElementById('search_box').setCustomValidity('Vui lòng nhập thông tin tìm kiếm.');
            }
            else {
                document.getElementById('search_box').setCustomValidity('');
            }           
        }
    </script>
    <body>               
        <header style="padding-top: 0px">	
            <!-- begin div header-->
            <!--<div class ="container" style="padding-bottom:10px">
                <div class ="row">
                    <div class ="col-xs-5 col-sm-5 col-md-2 col-lg-2">
                        <table>
                            <tr>                    
                                <td>
                                    <img src="{linkS}layout/bootstrap/images/zalo.png" height="17px"/>&nbsp;&nbsp;
                                </td>
                                <td>
                                    <img src="{linkS}layout/bootstrap/images/viber.png" height="17px"/>&nbsp;&nbsp;
                                </td>
                                <td>
                                    <span style="font-family: RobotoSlabRegular;
                                                 font-size: 14px;
                                                 color: #a88c79;">
                                        <b><A name="section0">0933 103 203</A></b>
                                    </span>
                                </td>
                            </tr>
                        </table>                                                            
                    </div>

                    <div class ="col-md-6 col-lg-6">
                        <div id="search" class ="hidden-xs hidden-sm">
                            <form name ="form_search" action="{linkS}tim-kiem/page=1" method="POST">
                                <table style=" width:100%">
                                    <tr>
                                        <td>
                                            <input  type='search' 
                                                    name="search_box"
                                                    id="search_box"
                                                    placeholder='Tìm kiếm ...'
                                                    class ="form-control"
                                                    onkeydown="myKeyDown();"
                                                    style ="font-family:RobotoSlabRegular;
                                                            color:#a88c79;
                                                            width:85%;
                                                            font-size:14px;
                                                            outline:none;
                                                            margin-left:10%">                                
                                        </td>
                                        <td>
                                            <input class="search_button"
                                                   type="submit" 
                                                   value=""
                                                   name="submit"                                                   
                                                   style="outline:none;                                              
                                                          border:0px;  
                                                          width: 20px;
                                                          background:url('{linkS}layout/bootstrap/images/search_button.png') no-repeat left center;"
                                                   onclick="checkForm();">
                                        </td>
                                    </tr>                                    
                                </table>                                                                
                            </form>
                        </div>
                    </div>-->
                    <!-- end search -->
                    <!--<div class ="col-xs-5 col-sm-5 col-md-2 col-lg-2">                                                            
                        <div id ="account">
                            <span>
                                {acount}                            
                            </span>                        
                        </div>                                                                                                                             
                    </div>

                    <div class ="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                        <a href ="{linkS}gio-hang" 
                           class ="hidden-xs hidden-sm"
                           style="color:#bba799;                                               
                                  font-size: 14px;
                                  font-weight: 300;
                                  font-family: RobotoSlabRegular;
                                  float: right;
                                  outline:none">
                            <img src="{linkS}layout/bootstrap/images/gio_hang.png" 
                             style = "float:left; margin-top: -2px;"/>
                            &nbsp;Giỏ hàng {giohang}
                        </a>      

                        <a href ="{linkS}gio-hang"
                           class ="hidden-md hidden-lg"
                           style="color:#bba799;
                                  font-size: 14px;
                                  font-weight: 300;
                                  font-family: RobotoSlabRegular;
                                  float: right;
                                  outline:none">
                            <img src="{linkS}layout/bootstrap/images/gio_hang.png" 
                             style = "float:left; margin-top: -2px;"/>
                                {giohang}
                        </a>                             
                    </div>
                </div>
            </div>--> 
            <!-- end div header-->

            <!-- begin div menu-->
            <div class ="container-fluid" 
                 style="background:url({linkS}layout/bootstrap/images/background_header.png) repeat;">
                <div class="hidden-xs hidden-sm">
                    <div class ="container">
                        <div class="row">
                            <span class="col-md-4 col-lg-4" 
                                  style="padding-left: 0px;
                                         font-size: 31px;
                                         font-family: OpenSans-ExtraBold;                                         
                                         line-height: 100px">
                                <!--<a class="img-responsive" href="{linkS}" style = "outline:none">
                                    <img src="{linkS}layout/bootstrap/images/logo.png" width="150"/>
                                </a>-->
                                <a href="{linkS}" style="color: #ffffff;">SÀI GÒN - BÌNH BA</a>
                            </span>                    
                            <span class="col-md-8 col-lg-8" style="padding-left: 0px">
                                <span id="menu">
                                    <ul class="nav">
                                        <li><a class="{home}" href="{linkS}"
                                               style="outline: none;">Trang chủ</a></li>                                               
                                        <li><a class="{product_menu}" href="{linkS}danh-sach-phong.htmls"
                                               style="outline: none;">Loại phòng</a></li>
                                        <li><a class="{service}" href="{linkS}danh-sach-tours.htmls"
                                               style="outline: none;">Tours Bình Ba</a></li>                                        
                                        <li><a href="{linkS}thu-vien"
                                               class="{blog}"
                                               style="outline: none;">Cẩm nang du lịch</a></li>
                                        <li><a class="{contact}" href="{linkS}lien-he"
                                               style="outline: none;">Liên hệ</a></li>
                                    </ul>
                                </span><!-- end menu -->  
                            </span>
                        </div>
                    </div>           
                </div>
                <!--<div class="visible-xs-block visible-sm-block">
                    <div class ="container">
                        <div class="row">                        
                            <table>
                                <tr>
                                    <td class="col-xs-5 col-sm-5">                                        
                                        <span>
                                            <a href="{linkS}" style = "outline:none">
                                                <img src="{linkS}layout/bootstrap/images/logo_mobile.png" width="100%"/>
                                            </a>
                                        </span>     
                                    </td>
                                    <td class="col-xs-5 col-sm-5"> 
                                    </td>
                                    <td>                                        
                                        <span class="col-xs-4 col-sm-4" style = "z-index:999">
                                          <button type="button" 
                                                  class="btn btn-info dropdown-toggle" 
                                                  data-toggle="dropdown" 
                                                  aria-expanded="false"
                                                  style ="font-family:PoetsenOne">
                                               &nbsp;Danh mục &nbsp;
                                            <span class="caret"></span>
                                          </button>
                                            <ul class="dropdown-menu" role="menu" style = "margin-left: 10px; 
                                                                                           border-color: #ffccff; 
                                                                                           border-style:solid;
                                                                                           border-width: 1px;
                                                                                           margin-top: 20px;
                                                                                           font-family: PoetsenOne">
                                                <li><a class="home" 
                                                       href="{linkS}" 
                                                       style="outline: none">Trang chủ</a></li>  
                                                <li><a class="introduce" 
                                                       href="{linkS}gioi-thieu" 
                                                       style="outline: none">Giới thiệu</a></li>
                                                <li><a class="product" 
                                                       href="{linkS}san-pham.htmls"
                                                       style="outline: none">Sản phẩm</a></li>
                                                <li><a class="service" 
                                                       href="{linkS}tro-giup"
                                                       style="outline: none">Dịch vụ</a></li>
                                                <li><a class="blog" 
                                                       href="{linkS}thu-vien"
                                                       style="outline: none">Blog</a></li>                                                                 
                                                <li><a class="share" 
                                                       onclick="share();"
                                                       style="outline: none">Chia sẻ</a></li>
                                                <li><a class="contact" 
                                                       href="{linkS}lien-he"
                                                       style="outline: none">Liên hệ</a></li>
                                            </ul>
                                        </span>
                                    </td>
                                </tr>
                            </table>                        
                        </div>
                    </div>           
                </div>-->                   
            </div><!-- end div menu-->   
        </header>
                                          
        <!-- content-->
        {content}
        <!-- footer -->
        
        <footer>
            <div class ="container-fluid" 
                 style = "background:url({linkS}layout/bootstrap/images/background_header.png) repeat; height: auto;">            
                <div class ="container" style ="padding-top: 30px;padding-left:0px; padding-right: 0px">
                    <div class ="row">
                        <div class ="col-md-8 col-lg-8">
                            <div style ="padding-right: 20px; clear:both">
                                <img src="{linkS}layout/bootstrap/images/footer.png" width="300"/>
                            </div>
                            <div style="margin-top: 10px">
                                <img src="{linkS}layout/bootstrap/images/line_footer.png" width="550"/>                                
                            </div>   
                            <!-- Begin footer menu -->
                            <div style="margin-top: 10px; color: #ffffff; font-family: UTM_Avo">
                                <span id="menu_footer">
                                    <ul class="nav_footer">
                                        <li><a href="{linkS}"
                                               style="outline: none;">Trang chủ</a></li>
                                        <li><a href="" 
                                               style="width: 30px; text-align: center">|</a></li>
                                        <li><a href="{linkS}danh-sach-phong.htmls"
                                               style="outline: none;">Loại phòng</a></li>
                                        <li><a href="" 
                                               style="width: 30px; text-align: center">|</a></li>                                               
                                        <li><a href="{linkS}danh-sach-tours.htmls"
                                               style="outline: none;">Tours Bình Ba</a></li>
                                        <li><a href="" 
                                               style="width: 30px; text-align: center">|</a></li>
                                        <li><a href="{linkS}thu-vien"
                                               style="outline: none;">Cẩm nang du lịch</a></li>
                                        <li><a href="" 
                                               style="width: 30px; text-align: center">|</a></li>
                                        <li><a href="{linkS}lien-he"
                                               style="outline: none;">Liên hệ</a></li>
                                    </ul>
                                </span>
                            </div>
                            <!-- End footer menu -->
                            <div style="padding-top: 40px; 
                                        color: #ffffff; 
                                        font-family: UTM_Avo; 
                                        font-size: 15px;
                                        line-height: 30px;">
                                <div style="clear:both; ">
                                    Liên hệ đặt tour:
                                    <span style="font-family:OpenSans-Semibold; 
                                                 font-size: 20px;">
                                        0905 56 53 11 (Mr Thông)
                                    </span>
                                </div>
                                <div style="clear:both;">
                                    Liên hệ đặt phòng:
                                    <span style="font-family:OpenSans-Semibold; 
                                                 font-size: 20px;">
                                        0945 46 79 68 (Mr Trung)
                                    </span>                                    
                                </div>                                                                
                                <div style="clear:both;">
                                    Email: contact@saigon-binhba.com
                                </div>                                
                            </div>
                            <div style="padding-top: 10px;">                                
                                <a href="https://www.facebook.com/saigonbinhba" style="margin-right: 10px" target="blank">
                                    <img src="{linkS}layout/bootstrap/images/facebook_footer.png" width="50"/>                                
                                </a>
                                <a href="" style="margin-right: 10px">
                                    <img src="{linkS}layout/bootstrap/images/google_footer.png" width="50"/>                                
                                </a>
                                <a href="">
                                    <img src="{linkS}layout/bootstrap/images/youtube_footer.png" width="50"/>
                                </a>
                            </div>      
                            <div style="padding-top: 10px; 
                                        padding-bottom: 10px; 
                                        font-family: UTM_Avo; 
                                        font-size: 15px;
                                        color: #ffffff">
                                Copyright @ 2015 saigon-binhba.com - Design by SmartVietSolutions
                            </div>
                        </div>
                        
                        <div class ="col-md-4 col-lg-4"
                             style="padding-top: 32px">
                            <div class="fb-page" data-href="https://www.facebook.com/saigonbinhba" 
                                 data-hide-cover="false" 
                                 data-show-facepile="true" 
                                 data-show-posts="false"
                                 data-width="305"
                                 data-height="220">
                                <div class="fb-xfbml-parse-ignore">
                                    <blockquote cite="https://www.facebook.com/saigonbinhba">
                                        <a href="https://www.facebook.com/saigonbinhba"></a></blockquote>
                                </div>
                            </div>
                        </div>                                                                                                                                                                           
                    </div>                                                                                                                               
                </div>                             
            </div>                                                                                                
        </footer>
    </body>
</html>