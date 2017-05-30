<div class="container-fluid"
     style="background-image: url({linkS}layout/images/logo/banner_room/banner_room.png);
           /* Image is centered vertically and horizontally at all times */
           background-position: center center;
           /* Image doesn't repeat */
           background-repeat: no-repeat;
           /* Makes the image fixed in the viewport so that it doesn't move when
              the content height is greater than the image height */
           //background-attachment: fixed;
           /* This is what makes the background image rescale based on its container's size */
           background-size: cover;
           /* Pick a solid background color that will be displayed while the background image is loading */
           background-color: #464646;
           height: 350px;
           padding: 0px;
           color: #ffffff;
           text-align:center;
           font-family: OpenSans-ExtraBold;
           line-height: 300px;
           font-size: 40px">
    CÁC LOẠI PHÒNG
</div>
<div class = "container">
    <div class ="row">
        <div class ="col-md-12 col-lg-12">
            <!--BEGINLIST_PRODUCTS-->
            <!--BEGIN_PRODUCT-->
            <li>
                <div class ="col-md-4 col-lg-4" style="padding-left:0px">
                    <a href="{linkS}{category}/{product_key}.htm" class="preview">
                        <img src="{linkS}upload/product/{product_img}"
                            width="100%"
                            height="200"
                            alt="{product_name_nocut}"
                            style="padding-top: 15px;
                                   padding-bottom:15px;
                                   padding-left: 5px"/>
                    </a> 
                </div>
                <div class ="col-md-5 col-lg-5" 
                     style="padding-top: 15px;
                            padding-bottom: 15px;
                            border-right-style: solid;
                            border-right-color: #e3e3e3;
                            border-right-width: 1px;
                            height: 200px">
                    <div>
                        <a class = "product_name" 
                           href="{linkS}{category}/{product_key}.htm" 
                           style = "color: #1159bb;
                                    font-family: OpenSans-Semibold;
                                    font-size: 17px">
                            {product_name}
                        </a>
                    </div>
                    <div style="color:black; 
                                font-family: OpenSans-Regular;
                                font-size: 14px;
                                margin-top: 20px;">                        
                        Mô tả chi tiết:
                    </div>                    
                    <div style="color:black; 
                                font-family: OpenSans-Regular;
                                font-size: 14px;
                                line-height: 20px;">                        
                        {short_content}
                    </div>                    
                </div>
                <div class ="col-md-3 col-lg-3" 
                     style="padding-top: 0px; 
                            height: 200px;
                            padding-right: 0px;;
                            background-color: #f4f8fb;
                            padding-top: 65px">
                    <div style="text-align: center;
                                font-size: 15px;
                                font-family: OpenSans-Regular">
                        Giá
                    </div>
                    <div style="color: red;
                                font-size: 25px;
                                font-family: OpenSans-ExtraBold;
                                text-align: center">
                       {product_price}
                   </div>
                   <div style="text-align: center;
                               font-family: OpenSans-ExtraBold;
                               font-size: 15px">
                        /đêm
                    </div>
                </div>
             </li>
            <!--END_PRODUCT-->
            <!--ENDLIST_PRODUCTS-->
            
            <div class=" line_end" style="margin-top:30px;"></div>

            <!-- BEGIN PAGE NAVIGATION 
            <div align="center">
                <div class="pagination" align="center" style="margin-left: auto;
                                                              margin-right: auto;
                                                              font-size:14px;
                                                              font-family:RobotoSlabRegular;">
                    {page}
                </div>
            </div>-->
        </div>
        <!--<div class = "hidden-xs hidden-sm col-md-3 col-lg-3" style="padding-left:0px; padding-right: 0px">            
            <img src="{linkS}layout/bootstrap/images/category.png" style="float: right; clear: both; width: 100%"/>
            {category}            
        </div>-->
    </div>
</div><!-- End Product -->