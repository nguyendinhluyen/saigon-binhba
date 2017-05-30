<link rel="stylesheet" type="text/css" href="{linkS}layout/css/template.css" />
<link rel="stylesheet" type="text/css" href="{linkS}layout/css/jquery-ui-1.8.16.custom.css"/>
<script type="text/javascript" src="{linkS}layout/js/jquery-ui-1.8.16.custom.min.js"></script>
<style>
    .headtd{
        font-size: 14px;     
    }
    .pet_info{
	font-size: 14px;
	color: blue;
	text-align: right;
	padding-right: 20px;        
    }
    .dang_ky:hover, .dang_ky:link{
        text-decoration: none;
    }            
</style>
<script language="javascript" type="text/javascript">
    function confirmChange(msg){
        var r = confirm(msg);
        return r;
    }		
 </script>        
<div class="news_main" style="width: 100%; padding-bottom: 60px">             
    <table>
        <tr>            
            <td class="headtd"
                width="150px;" 
                align="left">
                Thông tin thú cưng
            </td>
            <td class="headtd" 
                width="140px;" 
                align="center">
                Hình ảnh
            </td>
            <td class="headtd" 
                width="120px;" 
                align="center">
                Thao tác
            </td>
        </tr>        
        <!--BEGINLIST_PETS-->
        <!--BEGIN_PET-->
        <tr>            
            <td>
                <table border="0" 
                       width="300px" 
                       style="font-size: 14px; line-height: 25px">
                    <tr>
                        <td colspan="2"
                            align="left"
                            style="padding-bottom: 5px; padding-top: 15px">
                            <span style="font-size: 15px; color: red;">{tenpet}</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="pet_info" width="100px">Ngày sinh :</td>
                        <td>{ngaysinh}</td>
                    </tr>
                    <tr>
                        <td class="pet_info">Loài :</td>
                        <td>{loai}</td>
                    </tr>
                    <tr>
                        <td class="pet_info">Chiều cao :</td>
                        <td>{chieucao} cm</td>
                    </tr>
                    <tr>
                        <td class="pet_info">Cân nặng :</td>
                        <td>{cannang} kg</td>
                    </tr>
                    <tr>
                        <td class="pet_info">Màu sắc :</td>
                        <td>{mausac}</td>
                    </tr>
                    <tr>
                        <td class="pet_info">Giới tính :</td>
                        <td>{gioitinh}</td>
                    </tr>
                </table>
            </td>
            <td>
                <img src="{linkS}upload/avatar/{image_pet}" 
                     width="140px;" 
                     height="140px;" 
                     style="margin-top: 45px">
            </td>
            <td align="center" style="padding-top: 40px; font-size: 14px">
                <a href="{linkS}cap-nhat-pet-{id_pet}.htm">Sửa</a>
                <span style="color:blue">|</span>
                <a href="{linkS}xoa-pet-{id_pet}.htm" 
                   onclick="return confirmChange('Bạn muốn xóa?');">Xóa</a>                                                                        
            </td>
        </tr>
        <!--END_PET-->
        <!--ENDLIST_PETS-->
    </table>                   
    <div style="margin-top: 20px"> 
        <a  class="dang_ky" 
            href="{linkS}dang-ky-pet" 
            style="outline:none;
                 float:left;
                 background-color: #ff767c;
                 border: none;
                 color: #fff;
                 font-family:PoetsenOne;
                 -webkit-border-radius: 20px;
                 -moz-border-radius: 20px;
                 border-radius: 20px;
                 padding: 10px;
                 font-size: 14px;">
                Thêm thú cưng
        </a>             
    </div>
</div>           
