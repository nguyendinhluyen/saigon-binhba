<link rel="stylesheet" type="text/css" href="{linkS}layout/css/template.css"/>
<link rel="stylesheet" type="text/css" href="{linkS}layout/css/jquery-ui-1.8.16.custom.css"/>
<script type="text/javascript" src="{linkS}layout/js/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
    function isInt(num){
        if(parseInt(num) === num){
            return true;
        }
        return false;
    }    
    function isFloat(num){
        if(parseFloat(num) === num){
            return true;
        }
        return false;
    }    
    function isTrue(num){
        if(isInt(num) || isFloat(num)){
            return true;
        }
        return false;
    }
    function myFunctionSubmit(){
        document.getElementById("name").required = true;
        if(document.getElementById("name").value === ""){
            document.getElementById("name").setCustomValidity("Vui lòng nhập tên!");
        }
        else{
            document.getElementById("name").setCustomValidity("");            
            document.getElementById("birthday").required = true;
            if(document.getElementById("birthday").value === ""){
                document.getElementById("birthday").setCustomValidity("Vui lòng nhập ngày!");
            }
            else{
                document.getElementById("birthday").setCustomValidity("");
                document.getElementById("species").required = true;
                if(document.getElementById("species").value === ""){
                    document.getElementById("species").setCustomValidity("Vui lòng nhập loài!");
                }
                else{
                    document.getElementById("species").setCustomValidity("");                                        
                    document.getElementById("mausac").required = true;
                    if(document.getElementById("mausac").value === ""){
                        document.getElementById("mausac").setCustomValidity("Vui lòng nhập màu sắc!");
                    }
                    else{
                        document.getElementById("mausac").setCustomValidity("");
                        document.getElementById("chieucao").required = true;
                        if(document.getElementById("chieucao").value === ""){
                            document.getElementById("chieucao").setCustomValidity("Vui lòng nhập chiều cao!");
                        }
                        else{
                            document.getElementById("chieucao").setCustomValidity("");
                            document.getElementById("cannang").required = true;
                            if(document.getElementById("cannang").value === ""){
                                document.getElementById("cannang").setCustomValidity("Vui lòng nhập cân nặng!");
                            }
                            else{
                                document.getElementById("cannang").setCustomValidity("");                                
                                document.getElementById("petimage").required = true;
                                if(document.getElementById("petimage").value === ""){
                                    document.getElementById("petimage").setCustomValidity("Vui lòng tải hình ảnh!");
                                }
                                else{
                                    document.getElementById("petimage").setCustomValidity("");
                                } 
                            } 
                        } 
                    }
                }            
            }            
        }        
    }
    function functionOninput(){        
        document.getElementById("name").setCustomValidity("");
        document.getElementById("birthday").setCustomValidity("");
        document.getElementById("species").setCustomValidity("");
        document.getElementById("mausac").setCustomValidity("");
        document.getElementById("chieucao").setCustomValidity("");        
        document.getElementById("cannang").setCustomValidity(""); 
        document.getElementById("petimage").setCustomValidity(""); 
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
                    ĐĂNG KÝ THÚ CƯNG
                </div>
                <table style="text-align: left;">
                    <tr>
                        <td style="color: red">
                            {name}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="{linkS}upload/avatar/{img_pet}" 
                                 width="120px" 
                                 height="140px;">
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
                                            Tên gọi <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input type="text" 
                                                   id="name" 
                                                   name="name" 
                                                   value="{name}" 
                                                   oninput="functionOninput();"
                                                   class ="form-control"
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
                                    <td style="width: 50%">                                        
                                        <div style="margin-bottom: 10px;">
                                            Ngày sinh <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input type="text" 
                                                   id="birthday" 
                                                   name="birthday" 
                                                   oninput="functionOninput();"
                                                   value="{birthday}" 
                                                   class ="form-control"
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
                                                  maxlength="10"/>
                                        </div>                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-bottom: 10px">
                                            Loài <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input  type="text" 
                                                    id="species" 
                                                    name="species"  
                                                    oninput="functionOninput();"
                                                    value="{species}"  
                                                    class ="form-control"
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
                                                    maxlength="20"/>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="margin-bottom: 10px">
                                            Màu sắc <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input  type="text" 
                                                    id="mausac" 
                                                    name="mausac"  
                                                    oninput="functionOninput();"
                                                    value="{mausac}"  
                                                    class ="form-control"
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
                                                    maxlength="20"/>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-bottom: 10px; margin-top: 10px">
                                            Chiều cao(cm) <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input  type="text" 
                                                    id="chieucao"                                                     
                                                    name="chieucao"  
                                                    oninput="functionOninput();"
                                                    value="{chieucao}"  
                                                    class ="form-control"
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
                                                    maxlength="10"/>
                                        </div>
                                    </td>                                
                                    <td>
                                        <div style="margin-bottom: 10px">
                                            Cân nặng(kg) <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input  type="text"
                                                    id="cannang"
                                                    name="cannang"
                                                    oninput="functionOninput();"
                                                    value="{cannang}"
                                                    class ="form-control"
                                                    style = "-webkit-border-radius: 10px;
                                                             -moz-border-radius: 10px;
                                                             border-radius: 10px;
                                                             height: 40px;
                                                             outline:none;
                                                             padding: 5px;
                                                             font-family: RobotoSlabRegular;
                                                             font-size: 14px;                                            
                                                             border: 1px solid #ddd;
                                                             font-weight: lighter;
                                                             color: #adadad;
                                                             width: 90%"
                                                    maxlength="10"/>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="margin-bottom: 10px">
                                            Giới tính <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <select name='sex' id='sex'
                                                    class ="form-control"
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
                                                             width: 90%">
                                                <option value="1">Đực</option>
                                                <option value="0">Cái</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="margin-bottom: 10px">
                                            Hình ảnh <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input  type="file" 
                                                    id="petimage" 
                                                    name="petimage" 
                                                    oninput="functionOninput();"
                                                    class ="form-control"
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
                                                             width: 90%"/>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>                        
                    </div>
                    <input  type="submit"
                            name="submit"
                            value="Đăng ký thú cưng"
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
                                    padding: 10px;">                                                
                </form>                        
            </div>
        </div>
    </div>
</div>

<script>
    $(function() {
        $("#birthday" ).datepicker({dateFormat: 'dd-mm-yy',
                                    changeMonth:true,
                                    changeYear: true});
    });
</script>