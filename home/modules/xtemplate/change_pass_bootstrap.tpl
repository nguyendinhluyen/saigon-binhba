<script>   
    function myFunctionSubmit(){        
        document.getElementById("pass_new").required = true;        
        document.getElementById("pass_confirm").required = true;        
        if(document.getElementById("pass_new").value === ""){
            document.getElementById('pass_new').setCustomValidity('Vui lòng nhập mật khẩu!');
        }
        else{            
            if(document.getElementById("pass_confirm").value === ""){
                document.getElementById('pass_confirm').setCustomValidity('Vui lòng xác nhận mật khẩu!');
            }
            else{
                if(document.getElementById("pass_confirm").value !== document.getElementById("pass_new").value){
                    document.getElementById('pass_confirm').setCustomValidity('Mật khẩu nhập lại không trùng!');
                }
                else{                    
                    document.getElementById('pass_new').setCustomValidity('');
                }
            }            
        }                            
    }
    
    function functionOninputPassword(){
        document.getElementById('pass_new').setCustomValidity('');
    }
    
    function functionOninputPasswordConfirm(){
        document.getElementById('pass_confirm').setCustomValidity('');
    }
</script>
<div class="container">
    <div class="row" style="font-family: RobotoSlabRegular;">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div id="breakcrumb"
                style="font-family: RobotoSlabRegular; 
                       font-size:14px;
                       margin-top: 30px;
                       margin-bottom: 25px">
                {breadcrumbs_path}
            </div>
            <!-- left col-->
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" 
                         style ="padding-left: 0px; margin-bottom: 40px">                        
                <table style="-webkit-border-radius:25px;
                              -moz-border-radius:25px;                             
                              -webkit-box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);
                              -moz-box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);
                              background-color: #f2fbff;
                              border-radius:25px;
                              text-align: left;
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
                        <td>&nbsp;</td>
                    </tr>
                </table>																
            </div>
            <!-- right col-->                                         
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="margin-bottom: 30px">
                <div style="font-size: 17px; 
                            margin-bottom: 20px">
                    ĐỔI MẬT KHẨU
                </div>
                <table style="text-align: left;">
                    <tr>
                        <td style="line-height: 30px">
                            <div style="font-size: 14px;">
                                Tên đăng nhập: <span style ="color:blue">{name}</span>
                            </div>
                            <div style="font-size: 14px;">
                                Thành viên: <span style ="color:red">{level}</span>
                            </div>
                        </td>
                    </tr>                    
                </table>                        
                <form method="POST" name="petprofile" enctype="multipart/form-data">
                    <div class="main_register">
                        <fieldset class="fieldset_reg_info">
                            <hr/>
                            <table width="100%" style="font-size: 14px"">
                                <tr>
                                    <td style="width: 50%;">                                        
                                        <div style="margin-bottom: 10px">
                                            Mật khẩu mới <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input type="password" 
                                                   id="pass_new" 
                                                   name="pass_new"                                                     
                                                   class ="form-control"
                                                   oninput="functionOninputPassword();"
                                                   style = "-webkit-border-radius: 10px;
                                                            -moz-border-radius: 10px;
                                                            border-radius: 10px;
                                                            height: 40px;
                                                            outline: none;
                                                            padding: 5px;
                                                            font-family: RobotoSlabRegular;
                                                            font-size: 14px;                                            
                                                            border: 1px solid #ddd;
                                                            font-weight: lighter;
                                                            color: #adadad;
                                                            width: 90%"
                                                   maxlength="30"/>
                                        </div>                                        
                                    </td >
                                    <td style="width: 50%;">                                        
                                        <div style="margin-bottom: 10px">
                                            Nhập lại mật khẩu <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input type="password" 
                                                   id="pass_confirm" 
                                                   name="pass_confirm"                                                    
                                                   class ="form-control"
                                                   oninput="functionOninputPasswordConfirm();"
                                                   style = "-webkit-border-radius: 10px;
                                                            -moz-border-radius: 10px;
                                                            border-radius: 10px;
                                                            height: 40px;
                                                            outline: none;
                                                            padding: 5px;
                                                            font-family: RobotoSlabRegular;
                                                            font-size: 14px;                                            
                                                            border: 1px solid #ddd;
                                                            font-weight: lighter;
                                                            color: #adadad;
                                                            width: 90%"
                                                   maxlength="30"/>
                                        </div>                                        
                                    </td>
                                </tr>                                
                            </table>
                        </fieldset>                        
                    </div>
                    <input  type="submit"
                            name="submit"
                            value="Đổi mật khẩu"
                            onclick="myFunctionSubmit();"
                            style="outline:none;
                                    float:right;
                                    margin-right: 30px;
                                    background-color: #ff767c;
                                    border: none;
                                    color: #fff;
                                    font-family:PoetsenOne;
                                    -webkit-border-radius: 20px;
                                    -moz-border-radius: 20px;
                                    border-radius: 20px;
                                    padding: 10px;
                                    width: 130px">                                                
                </form>                        
            </div>
        </div>
    </div>
</div>