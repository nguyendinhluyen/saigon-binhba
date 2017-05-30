<link rel="stylesheet" type="text/css" href="{linkS}layout/css/template.css" />
<link rel="stylesheet" type="text/css" href="{linkS}layout/css/jquery-ui-1.8.16.custom.css"/>
<script type="text/javascript" src="{linkS}layout/js/jquery-ui-1.8.16.custom.min.js"></script>       
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div id="breakcrumb"
                 style="font-family: RobotoSlabRegular; 
                        font-size:14px;
                        margin-top: 30px;
                        margin-bottom: 25px">
                {breadcrumbs_path}
            </div>
            <div class="news_main">                                        
                <div style=" font-family:PoetsenOne;
                             font-size: 22px;
                             clear:both;
                             margin-bottom: 30px"> 
                    <span style="color: #989898">Xin chào, </span>
                    <span style="color: #019cfd">{name_hello}</span>
                </div>

                <!--Left Col-->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" 
                     style ="padding-left: 0px;
                             margin-bottom: 50px">
                    <table style="text-align: left;
                                  background-color: #f2fbff;
                                  -webkit-border-radius:25px;
                                  -moz-border-radius:25px;
                                  border-radius:25px;
                                  -webkit-box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);
                                  -moz-box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);
                                  box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);">                             
                        <tr>
                            <td>
                                <img src="{linkS}upload/avatar/{avatar}" 
                                    width="220px" 
                                    height="240px;"
                                    style = "-webkit-border-radius:25px;
                                             -moz-border-radius:25px;
                                             border-radius:25px;">
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>                                                                                                            
                                <table cellspacing="0" 
                                       cellpadding="0" 
                                       width="100%" 
                                       id="contact_form" 
                                       border="0">
                                    <tr>
                                        <td style = "padding-left: 25px">
                                            <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_1.png" 
                                             height="20px"/>
                                        </td>
                                        <td>                                                    
                                            <a href="{linkS}thong-tin-tai-khoan"
                                               style="font-family: RobotoSlabLight; 
                                                      font-size: 14px; 
                                                      margin-left: 10px;
                                                      line-height: 35px;
                                                      color: #000">
                                                Thông tin của bạn
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style = "padding-left: 25px">
                                            <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_2.png" 
                                             height="20px"/>
                                        </td>
                                        <td>                                            
                                            <a href="{linkS}so-dia-chi"
                                               style="font-family: RobotoSlabLight; 
                                                      font-size: 14px; 
                                                      margin-left: 10px;
                                                      line-height: 35px;
                                                      color: #000">
                                                Sổ địa chỉ
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style = "padding-left: 25px">
                                            <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_3.png" 
                                                 height="20px"/>
                                        </td>
                                        <td>                                            
                                            <a href="{linkS}danh-sach-don-hang"
                                               style="font-family: RobotoSlabLight; 
                                                      font-size: 14px; 
                                                      margin-left: 10px;
                                                      line-height: 35px;
                                                      color: #000">
                                                Đơn hàng của tôi
                                            </a>
                                        </td>
                                    </tr>
                                    <!--<tr>
                                        <td>
                                            <a href="{linkS}san-pham-danh-gia">
                                                Sản phẩm ưa thích
                                            </a>
                                        </td>
                                    </tr>-->
                                    <tr>
                                        <td style = "padding-left: 25px">
                                            <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_4.png" 
                                             height="20px"/>
                                        </td>
                                        <td>                                            
                                            <a href="{linkS}san-pham-ua-thich"
                                               style="font-family: RobotoSlabLight;
                                                      font-size: 14px; 
                                                      margin-left: 10px;
                                                      line-height: 35px;
                                                      color: #000">
                                                Sản phẩm ưa thích
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style = "padding-left: 25px">
                                            <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_5.png" 
                                             height="20px"/>
                                        <td>                                            
                                            <a href="{linkS}thu-cung-cua-toi"
                                               style="font-family: RobotoSlabLight; 
                                                      font-size: 14px; 
                                                      margin-left: 10px;
                                                      line-height: 35px;
                                                      color: #000">
                                                Thú cưng của tôi
                                            </a>
                                        </td>
                                    </tr>
                                    <tr> 
                                        <td>
                                            <hr style = "border-color: #93a4ac;  border-width: 1px;"/>
                                        </td>
                                        <td>
                                            <hr style = "border-color: #93a4ac;  border-width: 1px;"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style = "padding-left: 25px"> 
                                            <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_6.png" 
                                             height="20px"/>
                                        </td>
                                        <td>
                                            <a href="{linkS}doi-mat-khau"
                                               style="font-family: RobotoSlabLight; 
                                                      font-size: 14px; 
                                                      margin-left: 10px;
                                                      line-height: 35px;
                                                      color: #000;">
                                                Đổi mật khẩu
                                            </a>                                                           
                                        </td>
                                    </tr>
                                </table>                                                                            
                            </td>                                
                        </tr>  
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>																
                </div>
                <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                    <table>
                        <tr>
                            <td style="font-family: RobotoSlabRegular;                                       
                                       line-height: 30px">
                                <div style="font-size: 17px; margin-bottom: 10px">
                                    {tieude}
                                </div>
                                <div style="font-size: 14px;">
                                    Tên đăng nhập: <span style ="color:blue">{name}</span>
                                </div>
                                <div style="font-size: 14px;">
                                    Thành viên: <span style ="color:red">{level}</span>
                                </div>
                            </td>
                        </tr>                        
                        <tr>
                            <td>
                                <hr/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="font-family: RobotoSlabRegular;">
                                    {content_infomation}
                                </div>
                            </td>
                        </tr>
                    </table>                												
                </div>
            </div>                    
        </div>            
    </div>
</div>              
<script>
    $(function() {
        $("#birthday").datepicker({dateFormat: 'yy-mm-dd'});
    });
</script>
			