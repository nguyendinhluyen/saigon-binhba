<head>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.base.css" type="text/css" />
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.bootstrap.css" type="text/css" />    
    <script type="text/javascript" src="{linkS}layout/scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcombobox.js"></script>
</head>

<script type="text/javascript">
    $(document).ready(function () 
    {															
        var order_by = document.getElementById("session_order_by");

        $val = parseInt(order_by.innerHTML);			

        if($val == 1)		
        {
            $val = 1;
        }		
        else if($val == 2)		
        {
            $val = 2;
        }
        else if($val == 3)		
        {
            $val = 3;
        }		
        else if($val == 4)		
        {
            $val = 4;
        }		
        else if($val == 5)		
        {
            $val = 5;
        }
        else
        {
            $val = 0;
        }							
        var source = ["Chọn sắp xếp",
                      "Tên sản phẩm tăng",
                      "Tên sản phẩm giảm",
                      "Giá gốc tăng dần",
                      "Giá gốc giảm dần",
                      "Sản phẩm mới nhất"];
        
        // Create a jqxComboBox
        $("#order_by").jqxComboBox({source: source, 
                                    selectedIndex: $val, 
                                    width: '140px', 
                                    height: '25px', 
                                    theme: 'bootstrap'});            							
                                            
        $("#order_by").jqxComboBox({autoDropDownHeight: true});
        
        $('#order_by').on('select', function (event) 
        {
            var args = event.args;
            
            if (args) 
            {
                var value = $("#order_by").val();										
                if(value == 'Chọn sắp xếp')
                {						
                    return;						
                }
                else if(value == 'Tên sản phẩm tăng')
                {
                    value = 1;
                }										
                else if(value == 'Tên sản phẩm giảm')
                {
                    value = 2;
                }					
                else if(value == 'Giá gốc tăng dần')
                {
                    value = 3;
                }
                else if(value == 'Giá gốc giảm dần')
                {
                    value = 4;
                }					
                else if(value == 'Sản phẩm mới nhất')
                {
                    value = 5;
                }					
                else
                {
                    value = 0;
                }					
                window.location='{url1}' + value;																										
            }												
        }); 		

        var pp_num = document.getElementById("pp_num");

        $val_2 = parseInt(pp_num.innerHTML);

        if($val_2 == 4)
        {
            $val_2 = 1;			
        }		
        else if($val_2 == 8)
        {
            $val_2 = 2;			
        }		
        else if($val_2 == 16)
        {
            $val_2 = 3;			
        }		
        else if($val_2 == 20)
        {
            $val_2 = 4;			
        }		
        else if($val_2 == 24)
        {
            $val_2 = 5;			
        }		
        else if($val_2 == 32)
        {
            $val_2 = 6;			
        }		
        else if($val_2 == 48)
        {		
            $val_2 = 7;
        }
        else		
        {
            $val_2 = 0;			
        }
        
        var source_2 = ["Hiển thị",
                        "4",
                        "8",
                        "16",
                        "20",
                        "24",
                        "32",
                        "48"];
                
        $("#num").jqxComboBox({ source: source_2, 
                                selectedIndex: $val_2, 
                                width: '75px', 
                                height: '25px', 
                                theme: 'bootstrap'});
                                
        $("#num").jqxComboBox({autoDropDownHeight: true}); 				
        
        $('#num').on('select', function (event) 
        {
            var args = event.args;				
            if (args) 
            {
                var value = $("#num").val();																				
                if(value == "Hiển thị")
                {
                        return;
                }
                else if(value == '4')
                {
                        value = 4;
                }
                else if(value == '8')
                {
                        value = 8;
                }										
                else if(value == '16')
                {
                        value = 16;
                }					
                else if(value == '20')
                {
                        value = 20;
                }
                else if(value == '24')
                {
                        value = 24;
                }					
                else if(value == '32')
                {
                        value = 32;
                }					
                else if(value == '48')
                {
                        value = 48;
                }
                else
                {
                        value = 48;
                }					
                window.location='{url}' + value;																										
            }												
        }); 		
    });
</script>
    <div id="product">
    <div id="breakcrumb" style="border-bottom:none;">{breadcrumbs_path}</div>
    <div style="float: right;">
        <p style="display:none"id ="session_order_by"> {order_by}</p>
        <p style="display:none"id ="pp_num"> {quannum}</p>
        <span {style_span}>
            <table>
                <tr>
                    <td id='order_by' style="margin-right: 150px"/>
                    <td style="width:10px"/>
                    <td id='num'/>
                </tr>
            </table>
        </span>
    </div>
    <div class="product_main">
    <!--BEGINLIST_PRODUCTS-->
    <!--BEGIN_PRODUCT-->
        <li>
            <div class="product_detail">
                <div class="product_col">
                    <table border="0">
                        <tr height="50px;">
                            <td valign="bottom">
                                <h3 style="font-weight:lighter; font-size:12px">
                                    <div class="product_tit" style="height: 40px">
                                        <a href="{linkS}{category}/{product_key}.htm">{product_name}</a>
                                    </div>
                                </h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                {promotion_Sale}
                                <h4>
                                    <a href="{linkS}{category}/{product_key}.htm" class="preview">
                                        <img src="{linkS}upload/product/{product_img}" width="100"
                                                                                             height="100"
                                                                                             alt="{product_name_nocut}"/>
                                    </a>
                                </h4>
                                <div class="product_price">{product_price} VNĐ</div>
                                <div class="product_price_en">{product_price_old}</div>
                                <div class=""><a href="{linkS}{category}/{product_key}.htm">[Xem chi tiết]</a></div>
                            </td>
                        </tr>
                    </table>
                </div><!-- end product_col -->
            </div><!-- end product_detail -->
         </li>
    <!--END_PRODUCT-->
    <!--ENDLIST_PRODUCTS-->
    </div><!-- end product_main -->
        <div class="clear"></div>
            <div class=" line_end" style="margin-top:10px;"></div>
            <!-- BEGIN PAGE NAVIGATION -->
            <div align="center">
                <div class="pagination" align="center" style="margin-left: au;
                                                              margin-right: auto;
                                                              font-size:14px;
                                                              font-family:Cambria">
                    {page}

                </div>
            </div>
        </div><!-- end product -->