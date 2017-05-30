<style>
    a:hover, a:link{
        text-decoration: none;
    }
    
    #sharefacebook_icon a img{
        opacity:0.8;
    }
    
    #sharefacebook_icon a:hover img{                
        opacity:1;      
    }
    
    #sharefacebook_icon a:hover {
        text-decoration:none;
    }
    
    #sharefacebook_icon a:active {
        text-decoration:none;
    }
    #sharefacebook_icon a:link {
        text-decoration:none;
    }
    
    #ShareButton{        
        padding-bottom:10px;     
    }
    
    #stretch{        
        padding-bottom: 10px;
    }
    
    #line{
        -moz-box-shadow: 0 0 2px #B0ACFB;
        -webkit-box-shadow: 0 0 2px#B0ACFB;
        height:1px;
        margin-left: 100px;
        margin-right: 100px;
        color:#CCF;		        
        box-shadow: 0 0 2px #B0ACFB;		
        margin-bottom: 10px;
    }			
    
    #twitter-widget-0{
        width:80px !important;
    }
    
    #___plusone_0{
        width:62px !important;
    }    
     hr.style18 {
	border-top: 1px solid #8c8b8b;
	text-align: center;
    }
    hr.style18:after {
        content: '§';
        display: inline-block;
        position: relative;
        top: -14px;
        padding: 0 10px;
        background: #ffffff;
        color: #8c8b8b;
        font-size: 18px;        
        transform: rotate(60deg);
        -webkit-transform: rotate(60deg);
        -moz-transform: rotate(60deg);
    }
    ._2pi8
    {
        padding-right: 0px !important;
    }
</style>

<script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'vi'}
</script>

<script>
    !function(d,s,id)
    {
        var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';
        if(!d.getElementById(id))
        {
            js=d.createElement(s);
            js.id=id;
            js.src=p+'://platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js,fjs);
        }
    }(document, 'script', 'twitter-wjs');
</script>
    
<script src="//platform.linkedin.com/in.js" type="text/javascript">
    lang: en_US
</script>

<div class="container">
    <div class ="row">
        <div class ="col-md-9 col-lg-9" 
             style="padding-right: 20px; padding-left: 0px">
            <!--<div id="breakcrumb" 
                 style="font-family: RobotoSlabRegular; 
                        font-size:14px;
                        margin-top: 30px;
                        margin-bottom: 25px">
                {breadcrumbs_path}
            </div>-->
            <div class="news_main_libary">
                <div id = "ShareButton">
                    <h2 class="contentheading" 
                        style="padding-top:10px;                                
                               font-family:OpenSans-Semibold">                        
                        <span style="color:#1159bb"> 
                            {news_name}
                        </span>
                    </h2>														
                    <div class="article-toolswrap" 
                         style="margin-bottom:10px">
                        <div style="margin-top:15px;
                                    margin-bottom:5px;                                    
                                    color:black; 
                                    font-size:14px;
                                    font-family: OpenSans-Semibold">
                            <span style="font-family: OpenSans-Semibold">Tác giả:</span>
                            <a style="color:black;
                                      text-transform: uppercase;">
                                {translator}
                            </a> 
                            <span style="color:#999999; font-family:OpenSans-Semibold">| {date_added}</span>
                        </div>
                    </div>   
                    
                    <hr style="margin-top: 0.5em;
                               margin-bottom: 0.5em;
                               margin-left: auto;
                               margin-right: auto;                                                           
                               color: #999999">
                    
                    <table style="margin-top:10px; 
                                  float:left;"
                           class="col-lg-7">
                        <tr>
                            <td style="width: 85px"> 
                                <span class="fb-like"                                     
                                      data-href="{linkSf}{news_key}"
                                      data-layout="button_count" 
                                      data-action="like" 
                                      data-show-faces="false" 
                                      data-share="false">
                                </span>   
                            </td>
                            <td style="width: 65px">
                                <span class="g-plusone" data-size="medium"></span>
                            </td>
                            <td> 
                                <span>
                                    <a href="{linkSf}{news_key}" class="twitter-share-button">Tweet</a>               
                                </span>
                            </td>                        
                        </tr>
                        <tr>
                            <td colspan="3">
                                <h1 style="color:blue;                                    
                                           font-size:14px;                               
                                           font-family:OpenSans-Semibold">
                                    <span style="color:black;">Tags:</span> 
                                    <span style="text-decoration: underline; 
                                          line-height: 20px">{author}</span>
                                </h1>
                            </td>
                        </tr>
                    </table> 
                    <div style="float:left; 
                                margin-top:15px; 
                                margin-right: 0px;
                                text-align: right;
                                padding-right: 0px;"
                         class="col-lg-5">    
                        <span id = "sharefacebook_icon" 
                              style = "margin-right:5px">
                            <a  target="_blank" 
                                href="http://www.facebook.com/sharer/sharer.php?s=100&amp;p[url]={linkSf}{news_key}&amp;p[images][0]= {linkSf}layout/images/logo/banner01.jpg&amp;p[title]={news_name}+&amp;p[summary]={news_shortcontent}">
                                <img src="{linkS}layout/images/facebook-icon.png" 
                                    title="Chia sẻ Facebook"/>
                            </a>
                        </span>

                        <span id = "sharefacebook_icon" 
                              style = "margin-right:5px">
                            <a  href="https://plus.google.com/share?url={linkSf}{news_key}"
                                onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');;return false;">
                                <img src="{linkS}layout/images/google-plus-icon.png"                                
                                     title="Chia sẻ Google+"/>
                            </a>
                        </span>

                        <span id = "sharefacebook_icon"
                              style = "margin-right:5px">
                            <a href="https://twitter.com/intent/tweet?text={news_name_twitter}&url={linkSf}{news_key}&related=episod">
                                <img src="{linkS}layout/images/twitter-icon.png"
                                     title="Chia sẻ Tweet"/>
                            </a>
                        </span>		                                                                    

                        <span id = "sharefacebook_icon">
                            <a href="http://www.linkedin.com/shareArticle?mini=true&url={linkSf}{news_key}&title={news_name}&summary={news_shortcontent}&source=saigon-binhba.com" 
                               rel="nofollow" 
                               onclick="NewWindow(this.href,'template_window','550','400','yes','center');return false" 
                               onfocus="this.blur()"
                               target="_blank"> 
                                <img src="{linkS}layout/images/linkedIn-icon.png" 
                                     title="Chia sẻ LinkedIn"/>
                            </a>
                        </span>   
                    </div>
                </div>                  

                <div class="article-content"
                     style="line-height:25px;
                            font-size: 14px;
                            clear:both;
                            padding-top: 5px;
                            font-family:OpenSans-Regular;">
                    <hr style="margin-top: 0.5em;
                               margin-bottom: 0.5em;
                               margin-left: auto;
                               margin-right: auto;                                                           
                               color: #999999">
                    <p>
                        <span style="text-align:justify;
                                     font-family:OpenSans-Regular;">
                            {news_content}
                        </span>
                    </p>                                       
                </div>    

                <!--<div style="margin-top: 10px">
                    <A href="#section0">
                        <b style="font-family:OpenSans-Semibold;
                                  font-size:14px;">
                            Về đầu trang
                        </b>
                    </A>
                    <br/>
                </div>-->
                <hr style="margin-top: 10px;
                               margin-bottom: 5px;
                               margin-left: auto;
                               margin-right: auto;                                                           
                               color: #999999">
                <div id = "stretch">
                    <div style="margin-bottom:10px; 
                                padding-top:10px;
                                color:#7F1F00; 
                                font-size:14px; 
                                font-family:OpenSans-Semibold">
                        <table style="text-align:left;">
                            <tr>                                
                                <td style="color:black;                                                                                       
                                           font-size:14px; 
                                           width: 60px">
                                    Nguồn:&nbsp;
                                </td>
                                <td style = "font-size:15px;
                                             color:blue;
                                             line-height:20px;
                                             font-family: OpenSans-Regular">
                                    {linkResource}
                                </td>
                            </tr>                                                             	
                            <tr>                                   
                                <td colspan="2">
                                    <br/>
                                    <div class="fb-like" 
                                         data-href="{linkSf}thu-vien/{news_key}/" 
                                         data-layout="standard" 
                                         data-action="like" 
                                         data-show-faces="true" 
                                         data-share="true">
                                    </div> 
                                    <br/>
                                </td>                                
                            </tr>
                        </table>
                    </div>
                    <!--<div class="relation_product" {display_realtion_product}>
                        <hr style="margin-top: 10px;
                                   margin-bottom: 5px;
                                   margin-left: auto;
                                   margin-right: auto;                                                           
                                   color: #999999">                    
                        <div style="background-color: #f1fdfb; padding-top: 10px; padding-bottom: 10px">
                            <table style="text-align: left;">
                                <tr>                                
                                    <td>
                                        <span style="color: #48817a;
                                                     font-size: 14px;
                                                     font-family: OpenSans-Semibold;
                                                     margin-left: 10px;">
                                            SẢN PHẨN LIÊN QUAN
                                        </span>
                                    </td>
                                </tr>                            
                            </table>
                        </div>  
                        <div style="padding-top: 30px ; padding-bottom: 40px">
                            <table>
                                <tr>
                                    {relation_product}
                                </tr>
                            </table>
                        </div>
                    </div>-->
                    <hr style="margin-top: 10px;
                               margin-bottom: 5px;
                               margin-left: auto;
                               margin-right: auto;                                                           
                               color: #999999">
                    <div style="background-color: #f1fdfb; padding-top: 10px; padding-bottom: 10px">
                        <table style="text-align: left;">
                            <tr>                                
                                <td>
                                    <span style="color: #48817a;
                                                 font-size: 14px;
                                                 font-family: OpenSans-Semibold;
                                                 margin-left: 10px;">
                                        THẢO LUẬN BÀI VIẾT
                                    </span>
                                </td>
                            </tr>
                        </table>                        
                    </div>      
                    <br/>
                    <div class="fb-comments"                       
                        data-href="{linkSf}{news_key}"
                        data-numposts="5"
                        data-width ="705">
                    </div>
                </div>
            </div><!-- end product_main -->
            <br/>
            <br/>
        </div>
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3" 
             style = "padding-top: 30px;
                      padding-right: 0px">
            <div style="font-family: OpenSans-ExtraBold;
                        font-size: 20px;
                        margin-bottom: 10px;
                        text-align: center">
                CẨM NANG DU LỊCH
            </div>
            <hr class="style18">
            {category}
            <div id="banner_left">
                <div id="sliderBannerLeft">
                    <div id="SliderNameBannerLeft" class="SliderNameBannerLeft">                                                      
                        {left_banner_1}
                    </div>
                    <script type="text/javascript">
                        <!--fades,traight,swirl,snake-->
                        effectsDemo2_1 = 'fades,traight,swirl,snake';
                        var demoSlider_2_1 = Sliderman2.slider({container: 'SliderNameBannerLeft', 
                                                                width: 230, 
                                                                height: 500, 
                                                                effects: effectsDemo2_1,
                        display: {
                                autoplay: 3000,
                                loading: {background: '#000000', opacity: 0.5},
                                buttons: {hide: true, opacity: 1, 
                                prev: {className: 'SliderNamePrevBannerLeft', 
                                label: ''}, 
                                next: {className: 'SliderNameNextBannerLeft', label: ''}}
                                }
                        });
                    </script>
                </div>                                     
            </div>
            <div id="banner_left_2" 
                 style="margin-top: 15px;
                        margin-bottom: 40px">
                <div id="sliderBannerLeft_2">
                    <div id="SliderNameBannerLeft_2" class="SliderNameBannerLeft_2">                                                         
                        {left_banner_2}
                    </div>                           
                    <script type="text/javascript">
                        effectsDemo2_2 = 'fades,traight,swirl,snake';
                        var demoSlider_2_2 = Sliderman2.slider({container: 'SliderNameBannerLeft_2', 
                                                                width: 230, 
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
            <!--<div style="margin-left: 15px; margin-top: 20px; margin-bottom: 20px">
                {left_facebook_box}
            </div>-->
        </div>                        
    </div>    
</div><!-- end blog -->