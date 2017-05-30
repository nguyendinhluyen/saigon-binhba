<style>
    a.product_name:hover, a.product_name:link, a.product_name:visited {
        text-decoration: none;
        color:#646464;
    }
    
    a.list_product_name:hover, a.list_product_name:link, a.list_product_name:visited {
        text-decoration: none;        
    }
    
    .product_detail{
        position: relative;
        overflow: hidden;
        height: 270px;        
    }
    
    .product_detail .textbox {
        width:180px;
        height:205px;
        position:absolute;
        top:0;
        left:0;
        margin-top:-215px;
        border-radius:15px;
        background-color: #66d0f1;
        border-style:solid;
        border-width: 10px;
        border-color: #e0f8ff;
    }       
    .product_detail:hover .textbox {
        margin-top:0;
    }   
    
    .textbox {
        -webkit-transition: all 0.5s ease;
        transition: all 0.5s ease;
        cursor: pointer;        
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-sx-12 col-sm-12 col-md-12 col-lg-12">
            <div id="breakcrumb"
                 style="font-family: RobotoSlabRegular;
                        margin-top: 30px;
                        margin-bottom: 20px;">
               {breadcrumbs_path}
           </div>
        </div>
        <div class ="col-sx-12 col-sm-12 col-md-12 col-lg-12" style="margin-bottom: 20px">            
            <div class="product_main" {display_realtion_product}>
                <hr style = "margin-top: 10px;
                            margin-bottom: 10px;
                            border-width:1px;
                            border-color:#79afc4;
                            width:100%;
                            float:left">
                <div style="font-family:RobotoSlabRegular;
                            font-size:18px;
                            float:left;
                            line-height:30px">
                    SẢN PHẨM LIÊN QUAN
                </div>
                <div style="float:right; 
                            line-height:30px;
                            font-family:RobotoSlabRegular;
                            color:#05b3fc;">
                    <a class="see_all" href="{linkS}tim-kiem/tat-ca-san-pham.htmls/page=1">Xem tất cả >></a>
                </div>
                <hr style = "margin-top: 10px;
                            margin-bottom: 30px;
                            border-width:1px;
                            border-color:#79afc4;
                            width:100%;
                            float:left">
            </div>
            <div class="product_main" {display_realtion_product}>
                <!--BEGINLIST_PRODUCTS-->
                <!--BEGIN_PRODUCT-->
                <li>
                    <div class="product_detail">
                        <div class="product_col" style="height:500px">
                            <a href="{linkS}{category}/{product_key}.htm">
                                <img src="{linkS}upload/product/thumb/{product_img}" 
                                     width="125"
                                     height="125" 
                                     alt="{product_name}"
                                     style = "margin-left: 25px;
                                              cursor: pointer;
                                              margin-bottom: 10px">
                            </a>   
                            <div class="textbox"
                                 style = "padding-top: 65px; padding-left: 32px">
                                <a class = "list_product_name"
                                   href="{linkS}{category}/{product_key}.htm"
                                   style = "outline:none;">
                                    <p class="click_detail" style="font-family:RobotoSlabRegular;
                                                                    color: #ffffff;
                                                                    width: 100px;
                                                                    height: 20px;
                                                                    font-weight:300;
                                                                    font-size: 14px;
                                                                    text-align: center;">
                                         <img src="{linkS}layout/bootstrap/images/xem_chi_tiet.png"
                                              width="70px"
                                              alt="{product_name}"
                                              style = "cursor: pointer;"/>
                                        Xem chi tiết
                                    </p>                        
                                </a>    
                            </div>        
                            <div class="product_tit">
                                <div style="font-size: 14px;
                                            color: #929292;
                                            cursor: pointer;                            
                                            font-family: RobotoSlabRegular;">
                                     <a class="product_name" href="{linkS}{category}/{product_key}.htm">{product_name}</a>
                                </div>
                            </div>
                            <div class="product_price" 
                                style=" cursor: pointer;
                                        font-family:RobotoSlabRegular;
                                        font-size: 14px;
                                        margin-top: 5px;">
                               {encourage_price}
                            </div>
                            
                            <div class="product_price" 
                                style=" cursor: pointer;
                                        font-family:RobotoSlabRegular;
                                        font-size: 14px;
                                        margin-top: -15px;
                                        color:black;
                                        text-decoration:line-through">
                               {product_price}
                            </div>                            
                        </div>
                    </div>
                </li>
                <!--END_PRODUCT-->
                <!--ENDLIST_PRODUCTS-->
            </div>
            
            <div class="product_main" {display_realtion_news}>
                <hr style = "margin-bottom: 10px;
                            border-width:1px;
                            border-color:#79afc4; 
                            width:100%; 
                            float:left">
                <div style="font-family:RobotoSlabRegular;
                            font-size:18px;
                            float:left;
                            line-height:30px">
                    THÔNG TIN LIÊN QUAN
                </div>
                <hr style ="margin-top: 10px;
                       margin-bottom: 30px;
                       border-width:1px;
                       border-color:#79afc4; 
                       width:100%; 
                       float:left">
            </div>
            
            <div class="news_main" {display_realtion_news}>
                <!--BEGINLIST_NEWS-->
                <!--BEGIN_NEWS-->
                <li>
                    <div class="news_detail_searching">
                        <div class="news_column">                                                           
                            <div class="news_name" 
                                 style="font-size: 14px; 
                                        color: #929292;
                                        cursor: pointer;
                                        font-family: RobotoSlabRegular;
                                        clear:both">                                
                                <a class="news_name" 
                                   href="{linkS}{news_category}/{news_key}/">{news_name}</a>
                                
                            </div>
                            <div class="news_content"
                                style = "cursor: pointer;
                                         font-family:RobotoSlabRegular;
                                         font-size: 14px;
                                         margin-top: 5px;                                         
                                         line-height: 25px;
                                         clear:both;">
                                {news_content}
                           </div>                         	                                                                                                    
                        </div>
                    </div>
                </li>
                <!--END_NEWS-->
                <!--ENDLIST_NEWS-->
            </div>
            <div class="pagination"
                 align="center"
                 style="margin-left: auto;
                        margin-right: auto;
                        font-size: 14px;
                        font-family: RobotoSlabRegular;
                        display: block">
                {page}  
            </div>
            
            <div class="news_main" {display_no_relation}>   
                <div style="text-align: center; 
                            font-family: RobotoSlabRegular;
                            font-size: 17px; 
                            margin-top: 40px; 
                            margin-bottom: 100px;">
                    Không tìm thấy thông tin " {search_key} "
                </div>
            </div> 
        </div>
    </div>       
</div>    
