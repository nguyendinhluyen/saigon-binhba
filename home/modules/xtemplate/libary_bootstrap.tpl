<!--Use for combobox-->
<head>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.base.css" type="text/css"/>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.bootstrap.css" type="text/css"/>
    <script type="text/javascript" src="{linkS}layout/scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcombobox.js"></script>
</head>
<!--End use for combobox-->

<style type="text/css">
    .contentheading a:hover 
    {
        text-decoration:underline;
    }
    .linkDetail a:hover 
    {
        text-decoration:underline;
    }
    .jqx-combobox-input jqx-combobox-input-bootstrap jqx-widget-content jqx-widget-content-bootstrap jqx-rc-all jqx-rc-all-bootstrap
    {
        font-family: RobotoSlabRegular;
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

</style>

<script type="text/javascript">
    
    $val = 0;
    
    $(document).ready(function (){
        
        $link = location.href;
        
        var str = $link;
        
        if(str.search("thu-vien/choose-all.html") > 0)
        {
            $val = 1;
        }						
        else if(str.search("thu-vien/choose-dog.html") > 0)
        {
            $val = 2;
        }		
        else if(str.search("thu-vien/choose-cat.html") > 0)
        {
            $val = 3;
        }			
       	var source = [
            "Lọc bài viết...",
            "Tất cả",
            "Chó",
            "Mèo"
        ];
       	// Create a jqxComboBox
      	$("#jqxComboBox").jqxComboBox({ source: source, 
                                        selectedIndex: $val, 
                                        width: '110px',
                                        height: '25px', 
                                        theme: 'bootstrap' });                                     
                                    
        $("#jqxComboBox").jqxComboBox({autoDropDownHeight: true});
        
        $('#jqxComboBox').on('select', function (event)
        {
            var args = event.args;
            
            if (args)
            {                
                var item = args.item;
                                                
                var value = item.value;
                
                if(value === 'Chó')
                {
                    window.location='{linkS}thu-vien/choose-dog.html';
                }
                else if(value === 'Mèo')
                {
                    window.location='{linkS}thu-vien/choose-cat.html';
                }
                else if (value === 'Tất cả')
                {
                    window.location='{linkS}thu-vien/choose-all.html';
                }
            }
        }); 
    });
</script>
<div class="container">
    <div class = "row">
        <div class = "col-sx-12 col-sm-12 col-md-9 col-lg-9" 
             style="padding-left: 0px">
            <!--<div id="breakcrumb" 
                 style = "font-family: RobotoSlabRegular; 
                          font-size: 14px;
                          margin-top: 30px">{breadcrumbs_path} 
                <span style="float:right">
                    <div id='jqxComboBox'></div>
                </span>                                                                                                  
            </div>-->
                        
            <div class="news_main" style ="margin-top: 30px">
                <!--BEGINLIST_PROMOTION-->
                <!--BEGIN_PROMOTION-->			                
                <div class="contentpaneopen">
                    <h2 class="contentheading" style="padding-bottom:5px">
                        <a  href = "{linkS}thu-vien/{news_key}/"
                            style= "color:#1159bb;
                                    font-size:22px;
                                    font-family:OpenSans-Semibold;
                                    outline: none">{news_name}</a>
                    </h2>					
                    <div class="article-toolswrap">
                        <div class="article-tools clearfix">
                            <div class="article-meta">
                                <span class="createby"
                                      style="color:#5b5b5b;
                                            font-size:14px;
                                            font-family:OpenSans-Semibold;">
                                    {person_up} <span style ="color: #999999">Ngày {date}, Tháng {month}, Năm {year}</span>
                                </span>
                            </div>
                        </div>
                    </div>					
                    <div class="article-content">                         
                        <table>
                            <tr>
                                <td style="padding-right:15px">
                                    <h4>
                                        <a href="{linkS}thu-vien/{news_key}/" 
                                           class="previews">
                                            <img src="{linkS}upload/news/{news_image}" 
                                                width="200" 
                                                height="200"
                                                style ="-moz-border-radius:20px; 
                                                        -webkit-border-radius:20px;
                                                        border-radius: 20px;
                                                        margin-top: 10px"/>
                                        </a>
                                    </h4>                        
                                </td>
                                <td style="width:100%; padding-right:15px">
                                    <h3 style="text-align:justify;
                                            font-family:OpenSans-Regular;
                                            font-size:14px;
                                            line-height: 23px;
                                            margin-top:10px;
                                            height: 170px;">
                                        <div>
                                            <span>
                                                {news_short}
                                            </span>
                                        </div>
                                    </h3>                                                      
                                    <div class="fb-like"
                                        data-href="{linkS}thu-vien/{news_key}/"
                                        data-layout="button_count"
                                        data-action="like"
                                        data-show-faces="true"
                                        data-share="true">
                                    </div>
                                </td>
                                <td>                                        
                                </td>
                            </tr>                                            
                            <tr>
                                <td>
                                </td>                         
                                <td class = "linkDetail" 
                                    style="text-align:right; padding-right: 15px">
                                    <a href="{linkS}thu-vien/{news_key}/" 
                                       class="readon" 
                                       style="color: #6699ff;
                                            font-size:14px;
                                            font-family:OpenSans-Regular;;
                                            outline: none">
                                        Xem chi tiết
                                    </a>                                     
                                </td>                                                        
                            </tr>
                        </table>                   					
                    </div>
                    <hr style = "margin-bottom: 30px"/>                    
                </div>
                <p> </p>
                <!--END_PROMOTION-->
                <!--ENDLIST_PROMOTION-->
            </div><!-- end product_main -->
            <div class="pagination" 
                 align="center" 
                 style="margin-left: auto;
                        margin-right: auto;
                        font-size:14px;
                        font-family:RobotoSlabRegular;
                        display:block">
                {page}
            </div>            
        </div>
        <div class = "col-md-3 col-lg-3" 
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
            <div id="banner_left" style="margin-top: 15px">
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
</div><!-- end product -->