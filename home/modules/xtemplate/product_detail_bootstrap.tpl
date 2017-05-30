<head>
    <!--Begin jqxRating-->   
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.base.css" type="text/css"/>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.arctic.css" type="text/css"/>
    <script type="text/javascript" src="{linkS}layout/scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxrating.js"></script>
    <!--End jqxRating-->
    
    <!--Chua biet vi tri su dung -->
    <script type="text/javascript" src="{linkS}layout/js/jquery-ui-1.8.16.custom.min.js"></script>
    
    <!--Begin Logo Slick-->
    <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/slick/slick/slick.css"/>        
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="{linkS}layout/bootstrap/css/slick/slick/slick.min.js"></script>
    <!--End Logo Slick-->
    
    <!--Begin jquery_rotator-->
    <link rel="stylesheet" type="text/css" media="all" href="{linkS}layout/bootstrap/css/jquery_rotator/css/styles.css">        
    <!--End jquery_rotator-->
</head>

<!--Begin javascript rotator-->
<script type="text/javascript">
    var intervalId;
    // milliseconds between automatic transitions
    var slidetime = 4500; 

    $(document).ready(function() {	
        // Comment out this line to disable auto-play
        intervalID = setInterval(cycleImage, slidetime);
        $(".main_image .desc").show(); // Show Banner
        $(".main_image .block").animate({ opacity: 0.7 }, 1 ); // Set Opacity

        // Click and Hover events for thumbnail list
        $(".image_thumb ul li:first").addClass('active'); 
        $(".image_thumb ul li").click(function(){         
            // Set Variables
            var imgAlt = $(this).find('img').attr("alt"); // Get Alt Tag of Image
            var imgTitle = $(this).find('a').attr("href"); // Get Main Image URL
            var imgDesc = $(this).find('.block').html(); // Get HTML of block
            var imgDescHeight = $(".main_image").find('.block').height(); // Calculate height of block	

            if($(this).is(".active")){  // If it's already active, then...
                return false; // Don't click through
            } 
            else{
                // Animate the Teaser				
                $(".main_image .block").animate({ opacity: 0, marginBottom: -imgDescHeight }, 250 , function() {
                    $(".main_image .block").html(imgDesc).animate({ opacity: 0.7,marginBottom: "0" }, 250 );
                    $(".main_image img").attr({ src: imgTitle , alt: imgAlt});
                });
            }
            $(".image_thumb ul li").removeClass('active'); // Remove class of 'active' on all lists
            $(this).addClass('active');  // add class of 'active' on this list only
            return false;
        }) .hover(function(){
            $(this).addClass('hover');
            }, function() {
            $(this).removeClass('hover');
        });

        // Toggle Teaser
        $("a.collapse").click(function(){
            $(".main_image .block").slideToggle();
            $("a.collapse").toggleClass("show");
        });

        // Function to autoplay cycling of images
        // Source: http://stackoverflow.com/a/9259171/477958
        function cycleImage(){
            var onLastLi = $(".image_thumb ul li:last").hasClass("active");       
            var currentImage = $(".image_thumb ul li.active");
            if(onLastLi){
                var nextImage = $(".image_thumb ul li:first");
            } 
            else{
                var nextImage = $(".image_thumb ul li.active").next();
            }
            $(currentImage).removeClass("active");
            $(nextImage).addClass("active");

            // Duplicate code for animation
            var imgAlt = $(nextImage).find('img').attr("alt");
            var imgTitle = $(nextImage).find('a').attr("href");
            var imgDesc = $(nextImage).find('.block').html();
            var imgDescHeight = $(".main_image").find('.block').height();
            $(".main_image .block").animate({ opacity: 0, marginBottom: -imgDescHeight }, 250 , function() {
                $(".main_image .block").html(imgDesc).animate({ opacity: 0.7,marginBottom: "0" }, 250 );
                $(".main_image img").attr({ src: imgTitle , alt: imgAlt});
            });
        };
    });
</script>
<!--End javascript rotator-->

<script type="text/javascript">
    $(document).ready(function () 
    {
        // Create jqxRating
        $("#jqxRating").jqxRating({ width: 100, height: 35, theme: 'classic'});			
        $('#jqxRating').jqxRating({singleVote:true});											
        $("#jqxRating").on('change', function (event)
        {																					
            var user_name = document.getElementById("user_name").innerHTML;								
            if(user_name === " "){																										  						
                alert( "Bạn phải đăng nhập để đánh giá sản phẩm!");					
            }				
            else if(user_name !== " "){
                rate_count = 0;
                rate_sum = 0;
                rate_avg = 0;
                $("#rate").find('span').remove();
                $("#rate").append('<span>' + event.value + '</span');
                var ketqua = event.value;
                rate_sum = parseInt(document.getElementById("rate_sum").innerHTML);
                rate_sum += parseInt(ketqua);
                rate_count = parseInt(document.getElementById("rate_count").innerHTML);
                rate_count++;
                rate_avg = Math.ceil(rate_sum / rate_count);																
                var rating = document.getElementById("count_rates");
                listrate = "";
                for( i = 0 ; i < rate_avg; i++){
                    listrate += '<img src = {linkS}layout/images/star.png>';
                }		
                rating.innerHTML = listrate;
                document.getElementById("rate_count").innerHTML	= rate_count;
                alert("Bạn đánh giá sản phẩm " + ketqua + " sao!");					
                addVoteForProduct();										
            }				
        });
   });
</script>

<style>
    a:hover, a:link{
        text-decoration: none;
    }
    .showrate{
        height: 20px;
        float: left;
    }
    .list_images{
        margin-top:10px;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
        width:220px !important;
    }
    .cloud-zoom-gallery{
        width: 60px;
        height: 70px;
        padding : 3px;
    }
    .share{
        float: left;
        width: 19px;
    }
</style>

<div class = "container">
    <div class="row">                
        <div class="col-md-12 col-lg-12" 
             style="padding:0px">
            <!--<div id = "user_name" style="display:none"> {user_name}</div>
            <div id = "rate_sum" style="display:none"> {rate_sum}</div>                                  
            <div id="breakcrumb" style="font-family:RobotoSlabRegular; 
                                        font-size:14px; 
                                        margin-top: 5%; 
                                        line-height: 30px">
                {breadcrumbs_path}
            </div>-->
            <div class="col1_content">                                
                <div class = "col-md-12 col-lg-12" 
                     style="padding-top:20px; 
                            padding-left: 0px; 
                            padding-right: 0px;
                            padding-bottom: 20px">
                    <div id="detail1">                        
                        <div clas="row">
                            <div class="col-md-7 col-lg-7" style="padding-left: 0px">
                                <h3 style="font-weight:500; 
                                           text-align:left; 
                                           padding-bottom: 10px">
                                    <span style="color: #428bca; 
                                                font-size: 22px; 
                                                line-height: 25px;
                                                text-transform: uppercase;
                                                font-family: OpenSans-ExtraBold;">
                                        {product_name}
                                    </span>
                                </h3>                                  
                            </div> 
                                <div class="col-md-5 col-lg-5" 
                                     style="padding-right:0px">
                                    <h3 style="font-weight:500; 
                                               text-align:right;
                                               line-height: 30px">
                                        <span style="color: #e01a19;
                                                    font-size: 25px;
                                                    line-height: 25px;
                                                    text-transform: uppercase;
                                                    font-family: OpenSans-ExtraBold;
                                                    background-color: #f4f8fb;
                                                    padding-top: 10px;
                                                    padding-bottom: 10px;
                                                    padding-left: 25px;
                                                    padding-right: 25px;
                                                    border-style: solid;
                                                    border-color: #dcdddf;
                                                    border-width: 1px;">
                                            <span style="color:#000000; 
                                                         text-transform:capitalize;
                                                         font-size: 17px;
                                                         font-family: OpenSans-Regular;">
                                                Giá&nbsp;
                                            </span> 
                                            {product_price}
                                            <span style="color:#000000; 
                                                         text-transform:lowercase;
                                                         font-size: 17px;
                                                         font-family: OpenSans-ExtraBold">
                                                /đêm
                                            </span>
                                        </span>
                                    </h3>                                  
                                </div> 
                        </div>
                        <!--<div class="list_images">
                            <a href="{linkS}upload/product/thumb/{product_image}"
                               style ="outline:none"
                               class ="cloud-zoom" 
                               id="zoom1" 
                               rel="tint: '#666',
                                    tintOpacity:0.5,
                                    smoothMove:5,
                                    zoomWidth:355, 
                                    zoomHeight:325, 
                                    adjustY:-4, 
                                    adjustX:10"/>                                
                                <img src="{linkS}upload/product/thumb/image.php?file={product_image}&sizex=220px" 
                                     class="img_big" 
                                     alt="{product_name}"
                                     style="width: 220px; margin-top: 13%; height: 220px"/>
                                
                            </a>
                            {list_img_product}
                        </div>-->
                    </div><!-- end detail1 -->
                </div>                          
                        
                <div class = "col-sm-12 col-sx-12 col-md-12 col-lg-12" style="padding:0px">
                    <form name='cart' action="{linkS}gio-hang/{product_key}/add" method="post">                        
                        <div style="font-family:RobotoSlabRegular;">                            
                            <div class="col-md-12 col-lg-12" 
                                 style="float:left; 
                                        padding: 20px;
                                        border-style: solid;
                                        border-width: 1px;
                                        border-color: #e3e3e3;">                                                                                                
                            <!--<img src="{linkS}upload/product/{product_image}"                           
                                    alt="{product_name}"
                                    style="width: 70%;                                        
                                           height: 350px;">-->
                            <div class="main_image">
                                <img src="{linkS}upload/product/{product_image}" alt="{product_name}" style="width: 600px; height: 400px"/>
                                <div class="desc">                
                                    <div class="block" >
                                       <h2 style="font-size: 22px;font-family: UTM_Avo;">{product_name} - Chi tiết 1</h2>
                                    </div>
                                </div>
                            </div>

                            <div class="image_thumb">
                                <ul>
                                    <li style="height: 77px">
                                        <a href="{linkS}upload/product/{product_image}">
                                            <img src="{linkS}upload/product/{product_image}" 
                                                 alt="{product_image}"
                                                 style="width: 62px;
                                                        height: 50px;"/>
                                        </a>
                                        <div class="block"
                                             style="font-family:UTM_Avo; 
                                                    font-size: 10px;">
                                            <h2 style="line-height: 22px">{product_name} - Chi tiết 1</h2>
                                        </div>
                                    </li>

                                    <li style="height: 77px">
                                        <a href="{linkS}upload/product/{product_image_first}">
                                            <img src="{linkS}upload/product/{product_image_first}" 
                                                 alt="{product_name}"
                                                 style="width: 62px; 
                                                        height: 50px;"/>
                                        </a>
                                        <div class="block"
                                             style="font-family:UTM_Avo;
                                                    font-size: 10px;">
                                            <h2 style="line-height: 22px">{product_name} - Chi tiết 2</h2>
                                        </div>
                                    </li>

                                    <li style="height: 77px">
                                        <a href="{linkS}upload/product/{product_image_second}">
                                            <img src="{linkS}upload/product/{product_image_second}" 
                                                 alt="{product_name}"
                                                 style="width: 62px; 
                                                        height: 50px;"/>
                                        </a>
                                        <div class="block"
                                             style="font-family: UTM_Avo; 
                                                    font-size: 10px">
                                            <h2 style="line-height: 22px">{product_name} - Chi tiết 3</h2>
                                        </div>
                                    </li>
                                    <li style="height: 77px">
                                        <a href="{linkS}upload/product/{product_image_third}">
                                            <img src="{linkS}upload/product/{product_image_third}" 
                                                 alt="{product_name}"
                                                 style="width: 62px; 
                                                        height: 50px;"/>
                                        </a>
                                        <div class="block"
                                             style="font-family: UTM_Avo;
                                                    font-size: 10px">
                                            <h2  style="line-height: 22px">{product_name} - Chi tiết 4</h2>
                                        </div>
                                    </li>
                                    <li style="height: 76px">
                                        <a href="{linkS}upload/product/{product_image_fourth}">
                                            <img src="{linkS}upload/product/{product_image_fourth}" 
                                                 alt="{product_name}"
                                                 style="width: 62px; 
                                                        height: 50px;"/>
                                        </a>
                                        <div class="block"
                                             style="font-family: UTM_Avo; 
                                                    font-size: 10px">
                                            <h2  style="line-height: 22px">{product_name} - Chi tiết 5</h2>
                                        </div>
                                    </li>                
                                </ul>
                            </div>
                                
                            </div>
                            <!--<div class="col-sm-12 col-sx-12 col-md-6 col-lg-6" style="float:left">
                                <table style = "float:left;                                       
                                                line-height: 30px;
                                                margin-bottom: 5px;">
                                    {khuyenmai}                                                                                                           
                                </table>
                                <hr  style = "margin-top: 10px;
                                    margin-bottom: 15px;
                                    border-width:1px;                                                
                                    border-color:#cccccc; width:100%; float:left">    
                                <table style=" clear:both">
                                    <tr>                                        
                                        <td 
                                            <span style="font-size: 14px; line-height: 25px">
                                                Số lượng
                                            </span> 
                                        </td>
                                    </tr>
                                    <tr>                                                                            
                                        <td style="padding-top: 5px;
                                                   padding-bottom: 10px;">                                            
                                            <span>
                                                <select name='quantity' 
                                                        id='quantity'                                                        
                                                        style = "-webkit-border-radius: 10px;
                                                                -moz-border-radius: 10px;                                                                
                                                                height: 33px;
                                                                width: 60px;
                                                                outline: none;
                                                                padding: 5px;
                                                                font-family: RobotoSlabRegular;
                                                                font-size: 14px;
                                                                border: 1px solid #ddd;
                                                                font-weight: lighter;
                                                                margin-right: 15px"
                                                        class="form-control">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                </select>   
                                            </span>
                                        </td>
                                        <td>
                                            <input type="submit" 
                                                   class="addcart" {hidden} 
                                                   name ="addcart"                                                   
                                                   style = "outline:none;"
                                                   value=""/>
                                        </td>
                                    </tr>
                                </table>
                                <table style=" clear:both; margin-top: 10px">                                
                                    <tr>                                         
                                        <td>                                            
                                            <a class="nganluong" 
                                               style="margin-right:15px; outline:none" 
                                               target="_blank"
                                               href="https://www.nganluong.vn/button_payment.php?receiver=support@nanapet.com&amp;product_name={product_name}&amp;price={product_price_nodot}&amp;return_url=http://nanapet.com">
                                                <img src="https://www.nganluong.vn/data/images/merchant/button/btn-paynow-125.png" 
                                                     width="92px" 
                                                     height= "60px" 
                                                     border="0" 
                                                     title="Thanh toán trực tuyến AN TOÀN và ĐƯỢC BẢO VỆ, 
                                                        sử dụng thẻ ngân hàng trong và ngoài nước hoặc nhiều hình 
                                                        thức tiện lợi khác.Được bảo hộ & cấp phép bởi 
                                                        NGÂN HÀNG NHÀ NƯỚC, ví điện tử duy 
                                                        nhất được cộng đồng ƯA THÍCH NHẤT 2 
                                                        năm liên tiếp, Bộ Thông tin Truyền thông trao giải thưởng Sao Khuê.">
                                            </a>                                                                                                                    
                                        </td>
                                        <td>
                                            <a class="baokim" style="margin-right:15px; outline:none" 
                                                href="https://www.baokim.vn/payment/customize_payment/product?business=support@nanapet.com&product_name={product_name}&product_price={product_price_nodot}&product_quantity={product_quantity}&total_amount={total_amount}" 
                                                target="_blank"/>
                                                <img src="https://www.baokim.vn/application/uploads/buttons/btn_safety_payment_3.png" 
                                                     width="92px" 
                                                     height= "60px" 
                                                     alt="Thanh toán an toàn với Bảo Kim !" 
                                                     width="100px" 
                                                     width="100px" 
                                                     border="1" 
                                                     title="Thanh toán trực tuyến an toàn dùng tài khoản Ngân hàng 
                                                            (VietcomBank, TechcomBank, Đông Á, VietinBank, Quân Đội, VIB, SHB,... 
                                                            và thẻ Quốc tế (Visa, Master Card...) qua Cổng thanh toán trực tuyến BảoKim.vn"/>
                                            </a>
                                        </td>
                                    </tr>    
                                </table>
                            </div>-->
                        </div><!-- end detail2 -->
                    </form>                                                 
                </div>
                                                
                <div class ="row">                        
                    <div class = "col-md-12 col-lg-12">                                                
                        <!--Thong tin san pham -->
                        <!--<hr  style = "margin-top: 30px;
                                    margin-bottom: 15px;
                                    border-width:1px;                                                
                                    border-color:#cccccc; width:100%; float:left"/>    
                        <table style = "line-height: 30px; 
                                        width: 100%; 
                                        float: left;
                                        font-family: RobotoSlabRegular;
                                        line-height: 30px;
                                        font-size: 14px;
                                        padding-top: 10px">
                            <tr>
                               <td colspan="2">                                            
                                   <span style = "font-size: 14px;                                                   
                                                  color: #101010;">CHI TIẾT SẢN PHẤM</span>                                        
                               </td>    
                            </tr>
                            <tr style="font-size: 14px;">                                        
                                <!-- Nha san xuat 
                                <td style="width: 30%">
                                    <span style ="font-size: 14px;">Nhà sản xuất </span>
                                </td>
                                <td>
                                    <span>
                                        <a href="{linknsx}" 
                                           target="_blank" 
                                           style ="font-size: 14px; outline:none; color:black">{nsx}</a>
                                    </span>
                                </td>                            
                            </tr>                                                    
                            <tr>
                                <!-- Xuat xu 
                                <td>
                                    <span style = "font-size: 14px">Xuất xứ </span>
                                </td>
                                <td>
                                    <span style = "font-size: 14px">{xuatxu}</span>
                                </td>
                            </tr>
                            {product_color}
                            {product_type}
                            <tr>
                                <td>
                                    <span style="font-size: 14px">Tình trạng</span>
                                </td>
                                <td>
                                    <span style="color: #00acd7;font-size: 14px">
                                        <div>{status}</div>
                                    </span>
                                </td>
                            </tr>    
                            <tr>
                                <td style="float: left">
                                    <span style="text-align:left">
                                        Số lần đánh giá
                                    </span>                                
                                </td>
                                <td>
                                    <div id = "rate_count" 
                                         style="font-size: 14px;                                                                 
                                                font-weight:bold;"> 
                                        {rate_count}
                                    </div>			   				
                                </td>
                            </tr>
                             <tr>                                        
                                <td style="float: left">
                                    <span style="text-align:left">
                                        Đánh giá trung bình
                                    </span>
                                </td>                                        
                                <td>
                                    <span id="count_rates" style="font-size: 14px;"> 
                                        {count_rates} 
                                    </span>
                                </td>                            
                            </tr>
                            <tr>
                                <td>                                           
                                    <a href="#addToMyFavorite" 
                                       onClick="addToMyFavorite();" 
                                       style ="font-size: 14px; outline:none">
                                        {them_vao_ua_thich}
                                    </a>
                                </td>                            
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <br/>
                                </td>
                            <tr>
                        </table>-->
                                    
                                    
                        <div>
                            <!--<div class="hidden-xs hidden-sm">
                                <br/>
                                <a  href="#section1" style="font-size:14px; 
                                                            color:#A00; 
                                                            font-weight:bold; 
                                                            margin-right:10px; 
                                                            padding-top:10px; 
                                                            padding-bottom:10px; 
                                                            padding-left: 10px; 
                                                            padding-right:10px;
                                                            background:#FFF2F2; 
                                                            -moz-border-radius: 7px 7px 0px 0px; 
                                                            border-radius: 7px 7px 0px 0px;
                                                            font-family: RobotoSlabLight;
                                                            outline:none">
                                    Thông tin sản phẩm 
                                </a>

                                <a href="#section2" style="font-size:14px; 
                                                           color:#A00; 
                                                           font-weight:bold; 
                                                           margin-right:10px; 
                                                           padding-top:10px; 
                                                           padding-bottom:10px; 
                                                           padding-left: 10px; 
                                                           padding-right:10px;
                                                           background:#FFF2F2; 
                                                           -moz-border-radius: 7px 7px 0px 0px; 
                                                           border-radius: 7px 7px 0px 0px;
                                                           font-family: RobotoSlabLight;
                                                           outline:none">
                                    Ý kiến khách hàng 
                                </a>     
                                <a href="#section3" style="font-size:14px; 
                                                           color:#A00; 
                                                           font-weight:bold; 
                                                           margin-right:10px; 
                                                           padding-top:10px; 
                                                           padding-bottom:10px; 
                                                           padding-left: 10px; 
                                                           padding-right:10px;
                                                           background:#FFF2F2; 
                                                           -moz-border-radius: 7px 7px 0px 0px; 
                                                           border-radius: 7px 7px 0px 0px;
                                                           font-family: RobotoSlabLight;
                                                           outline:none">
                                    Đánh giá sản phẩm
                                </a>                         
                            </div>                                     
                                                        
                            <div class="visible-xs-block visible-sm-block">                                
                                <a  href="#section1" style="font-size:14px; 
                                                            color:#A00; 
                                                            font-weight:bold; 
                                                            margin-right:10px; 
                                                            padding-top:10px; 
                                                            padding-bottom:10px; 
                                                            padding-left: 10px; 
                                                            padding-right:10px;
                                                            background:#FFF2F2; 
                                                            -moz-border-radius: 7px 7px 0px 0px; 
                                                            border-radius: 7px 7px 0px 0px;
                                                            font-family: RobotoSlabLight;
                                                            outline:none">
                                    Thông tin sản phẩm 
                                </a>                               
                            </div>                                                                   
                                                        
                            <div id = "line_customer" style=" box-shadow: 1px 1px 1px #DDF; 
                                                              width: 100%; 
                                                              height: 1px; 
                                                              margin-bottom:20px; 
                                                              margin-top:7px;">                                    
                            </div>--> 	                                              
                            
                            <div id="tab_container">
                                <div>                     
                                    <a name ="section1"></a>
                                    <div id = "info_product" 
                                         style="background-color:#faf6ed;
                                                border-style: solid;
                                                border-width: 1px;
                                                border-color: #e3e3e3;
                                                margin-top: 20px;">
                                        <div align="justify" 
                                            style=" padding-top: 20px;
                                                    padding-bottom: 10px;
                                                    font-size: 14px;
                                                    display: {display_product_detail};
                                                    font-family: OpenSans-ExtraBold;
                                                    padding-left: 10px">
                                            Mô tả chi tiết
                                        </div>
                                        <hr style="margin-top: 0px;
                                                margin-bottom: 10px;
                                                margin-left: auto;
                                                margin-right: auto;                                                           
                                                color: #c3c2be;
                                                margin-left: 10px;
                                                margin-right: 10px">                                            
                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    font-family: OpenSans-Regular;
                                                    padding-left: 10px;
                                                    padding-bottom: 20px;
                                                    font-size: 14px;
                                                    padding-right: 10px">
                                            {product_detail}
                                        </div>                                        

                                        <!--<div align="justify" 
                                             style=" margin-bottom:10px;                                                      
                                                     font-size:14px;
                                                     display:{display_product_detail_tacdung};                                                     
                                                     font-family:RobotoSlabRegular;
                                                     margin-left:2px">
                                            Tác Dụng
                                        </div>                                    

                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_tacdung}
                                        </div>   

                                        <div align="justify" 
                                             style=" margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_phuhopcho};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Phù Hợp Cho
                                        </div>    

                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_phuhopcho}
                                        </div>   

                                        <div align="justify" 
                                             style=" margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_nguyenlieu_thanhphan};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Nguyên Liệu / Thành Phần
                                        </div>   

                                        <div align="justify" 
                                             style="margin-bottom:10px; 
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_nguyenlieu_thanhphan}
                                        </div>   

                                        <div align="justify" 
                                             style=" margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_phantichdambao};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Phân Tích Đảm Bảo
                                        </div>  

                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_phantichdambao}
                                        </div>   

                                        <div align="justify" 
                                             style="margin-bottom:10px;                                                     
                                                    font-size:14px;
                                                    display:{display_product_detail_huongdansudung};
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Hướng Dẫn Sử Dụng
                                        </div>  

                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_huongdansudung}
                                        </div>

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_huongdanbaoquan};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Hướng Dẫn Bảo Quản
                                        </div>    
                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    margin-left:2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_huongdanbaoquan}
                                        </div>

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_luuy};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Lưu Ý
                                        </div> 

                                        <div align="justify" 
                                             style="margin-bottom:10px; 
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_luuy}
                                        </div>   

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_khuyenkhich};
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Khuyến Khích
                                        </div>

                                        <div align="justify" 
                                             style="margin-bottom:10px; 
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_khuyenkhich}
                                        </div>   

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_donggoi_thetich};
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Đóng Gói / Thể Tích
                                        </div>

                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_donggoi_thetich}
                                        </div>   

                                        <div align="justify"
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_nhasanxuat};
                                                    font-family:RobotoSlabRegular;
                                                    margin-left:2px">
                                            Nhà Sản Xuất
                                        </div>

                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_nhasanxuat}
                                        </div>   

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                     font-size:14px;
                                                     display:{display_product_detail_xuatxu};                                                     
                                                     font-family: RobotoSlabRegular;
                                                     margin-left: 2px">
                                            Xuất Xứ
                                        </div>

                                        <div align="justify" 
                                             style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;">
                                            {product_detail_xuatxu}
                                        </div>                 

                                        <a name = "section2"/>
                                        <a name = "section3"/>      
                                        <div {display_realtion_news}>
                                            <hr style="margin-top: 10px;
                                                       margin-bottom: 5px;
                                                       margin-left: auto;
                                                       margin-right: auto;                                                           
                                                       color: #999999">
                                            <div style="padding-top: 2px ; padding-bottom: 20px">
                                                <div style="background-color: #f1fdfb; padding-top: 10px; padding-bottom: 10px">
                                                    <table style="text-align: left;">
                                                        <tr>                                
                                                            <td>
                                                                <span style="color: #48817a;
                                                                             font-size: 14px;
                                                                             font-family: RobotoSlabRegular;
                                                                             margin-left: 10px;">
                                                                    BÀI VIẾT LIÊN QUAN
                                                                </span>
                                                            </td>
                                                        </tr>                            
                                                    </table>                        
                                                </div>   

                                                <table style="margin-top: 20px">
                                                    <tr>
                                                        {relation_news}
                                                    </tr>
                                                </table>
                                            </div>-->
                                        </div>
                                        <div style="padding-top: 10px;
                                                    font-family: OpenSans-Regular;
                                                    padding-left: 10px;
                                                    padding-bottom: 20px;
                                                    text-align: center;
                                                    font-size: 14px;
                                                    background-color: #a68039;
                                                    color: white;
                                                    line-height: 30px">
                                             GỌI ĐIỆN ĐẶT PHÒNG NGAY
                                             <br/>
                                            <span style="clear:both; 
                                                         font-family: OpenSans-ExtraBold; 
                                                         font-size: 25px">
                                                0905 56 53 11 (Mr Thông) - 0945 46 79 68 (Mr Trung)
                                            </span>
                                        </div>
                                                     
                                        <!--<hr style="margin-top: 20px;
                                                    margin-bottom: 5px;
                                                    margin-left: auto;
                                                    margin-right: auto;                                                           
                                                    color: #999999">
                                        <div style="background-color: #f1fdfb; padding-top: 10px; padding-bottom: 10px; margin-bottom: 10px">
                                            <table style="text-align: left;">
                                                <tr>                                
                                                    <td>
                                                        <span style="color: #48817a;
                                                                     font-size: 14px;
                                                                     font-family: RobotoSlabRegular;
                                                                     margin-left: 10px;">
                                                            BÌNH LUẬN SẢN PHẨM
                                                        </span>
                                                    </td>
                                                 </tr>                            
                                            </table>                        
                                         </div>-->                                         
                                        {form_comment}
                                    </div>                                         
                                </div><!-- end tab_container -->
                            </div><!-- end detail3 -->
                        </div><!-- end col_content -->
                    </div>
                </div>
            </div><!-- end product -->
            
            <div style="display: none;">
                <div id="product_name_hidden">{product_name}</div>
                <div id="product_quantity_hidden">{product_quantity}</div>
                <div id="total_amount_hidden">{total_amount}</div>
                <div id="email_hidden">{email}</div>
            </div>    
        </div>
        <!--<div class = "hidden-xs hidden-sm col-md-3 col-lg-3" style="padding-left:0px; padding-right: 0px">            
            <img src="{linkS}layout/bootstrap/images/category.png" style="float: right; clear: both; width: 100%"/>            
            {category}            
        </div>-->
    </div>
</div>   
<div class = "container">   
    <div class ="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding:0px; margin-top: 20px; margin-bottom: 20px">            
            <div style="padding: 10px; 
                        background-color:#cacaca; 
                        margin-bottom: 20px;
                        font-family:OpenSans-ExtraBold;
                        font-size: 20px;
                        color: white;">
                CÁC LOẠI PHÒNG KHÁC
            </div>
            <div class="product_detail_room_relation" style="width:320px; margin-left: 1px; margin-right: 3px">                        
                <a href="{linkS}{category_sub_first}/{product_key_sub_first}.htm">
                    <img src="{linkS}upload/product/{product_img_sub_first}" 
                        width="320" 
                        height="180" 
                        alt="{product_name_sub_first}"
                        style = "cursor: pointer; padding-right: 20px"/>
                    <div class="product_tit" style="width: 300px">
                        <div style="opacity:1">
                           {product_name_sub_first}
                        </div>
                    </div> 
                </a>
            </div>
            <div class="product_detail_room_relation" style="width:320px; margin-right: 4px">                        
                <a href="{linkS}{category_sub_second}/{product_key_sub_second}.htm">
                    <img src="{linkS}upload/product/{product_img_sub_second}" 
                        width="320" 
                        height="180" 
                        alt="{product_name_sub_second}"
                        style = "cursor: pointer; padding-right: 20px"/>
                    <div class="product_tit" style="width:300px">
                        <div style="opacity:1">
                           {product_name_sub_second}
                        </div>
                    </div> 
                </a>
            </div>
            
            <div class="product_detail_room_relation" style="width:320px">
                <a href="{linkS}{category_sub_third}/{product_key_sub_third}.htm">
                    <img src="{linkS}upload/product/{product_img_sub_third}" 
                        width="320" 
                        height="180" 
                        alt="{product_name_sub_third}"
                        style = "cursor: pointer;"/>
                    <div class="product_tit" style="width:320px">
                        <div style="opacity:1">
                           {product_name_sub_third}
                        </div>
                    </div> 
                </a>
            </div>               
        </div>
    </div>
</div>            
    
<!-- Begin San Pham Theo Nhan Hieu-->
<!--<div class = "container">
    <br/>    
    <div class ="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12">            
            <img src="{linkS}layout/bootstrap/images/cac_san_pham_theo_nhan_hang.png"
                 style = "display:block; 
                          margin-left: auto; 
                          margin-right: auto;
                          width: 100%;"/>
            
        </div>
    </div>
</div>-->
<!-- End San Pham Theo Nhan Hieu-->

<!-- Begin Logo Slider-->                
<!--<div class = "container">        
    <div class="row">                +++
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="height: 80px;">                                    
            <div class="responsive" style="height: 80px;">                
                {list_advs}                             
            </div>
            <style>
                .slick-prev
                {                    
                    background-image: url({linkS}layout/bootstrap/images/line.png);
                    height: 40px;
                    margin-top: -20px;
                    border-radius: 5px;                    
                }
                .slick-prev:hover
                {
                    background-color: #0099ff;
                    border-radius: 5px;
                }

                .slick-next 
                {                    
                    background-image: url({linkS}layout/bootstrap/images/line.png);
                    height: 40px;
                    margin-top: -20px;
                    border-radius: 5px;
                }
                 .slick-next:hover
                {
                    background-color:#0099ff;
                    border-radius: 5px;
                }
            </style>
            <script type="text/javascript">
                $('.responsive').slick({
                    slidesToShow: 10,
                    slidesToScroll: 3,
                    autoplay: true,
                    autoplaySpeed: 2000,                
                });
            </script>                      
        </div>                                                                                                                        
    </div>
    <div class ="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12">                  
            <div style = "float: right;                                
                           font-weight: 300; 
                           font-family: RobotoSlabRegular;
                           width: 100px;
                           text-align: right;
                           margin-right: 10px">
                <a href="#" style ="color: #45b6fe;">Xem tất cả</a>
            </div>
            <br/>
            <div style = "height: 2px; 
                          background-color:#edf8fb;
                          margin-left: 10px; 
                          margin-right: 10px">                    
            </div>
        </div>
    </div>
    <br/>
    <br/>
</div>-->
<!-- End Logo Slider-->                                                        
        
<link rel="stylesheet" href="{linkS}layout/css/postfinal.css" type="text/css" />     
<link rel="stylesheet" href="{linkS}plugins/jrating_v2.1/jquery/jRating.jquery.css" type="text/css" />
<script type="text/javascript" src="{linkS}plugins/jrating_v2.1/jquery/jRating.jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function(){			
        $('.rating').jRating({
            step:false,
            length:5,
            decimalLength:1,
            rateMax:5,
            onSuccess : function()
            {
                var mail = $("#email_hidden").text();
                if(mail != "")
                    alert('Bạn đánh giá cho sản phầm '+ rateProduct + ' sao.');
                else
                    alert("Bạn phải đăng nhập để đánh giá");
            },
            onError : function()
            {
                alert('Error : Vui lòng thử lại');
            }
        });
    });
</script>		
	
<script type="text/javascript">  
    
    function addToMyFavorite()
    {
        if ($("#type").index() != -1) 
        {
                var product_type = $("input[name='type']:checked").val();
                var subvalues = product_type.split('::');
                product_type =subvalues[0];
        }
        else
        {
                var product_type = '';
        }
        var product_color = $("input[name='color']:checked").val();
        var product_price = $('.show_price').text();
        var product_quantity =  $('#quantity').val();
        $.ajax
        ({
            type: "POST",
            url: "{linkS}home/modules/ajax/addMyFavorite.php",
            data: {
                "email" : "{email}",
                "product_name" : "{product_name}",
                "product_key" : "{product_key}",
                "product_type" : product_type,
                "product_color" : product_color,
                "product_price" : product_price,
                "product_quantity" : product_quantity,
            },
            success: function(msg)
            {
                alert(msg);
            }
        });
    }
    function addVoteForProduct()
    {		    
        var value = $('#jqxRating').jqxRating('value');
        $.ajax
        ({
            type: "POST",
            url: "{linkS}home/modules/ajax/VoteForCustomer.php",
            data: {
                "id_product" : "{id_product}",
                "rate" : value,
                "user_name" : "{user_name}",			  
            },
            success: function(msg)
            {
                alert(msg);
            }			
        });
    }	
</script>  