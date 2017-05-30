<style>
    .dang_ky:hover, .dang_ky:link{
        text-decoration: none;
    }        
</style>
<table>
    <tr>	        
        <td colspan="2">
            <span style="color: #ff00cc; font-size: 14px;">
                ĐỊA CHỈ GIAO HÀNG CHÍNH
            </span>
        </td>
    </tr>
    <tr>
        <td colspan="2">            
            <table style="font-size: 14px; line-height: 30px; margin-top: 5px">
                <tr >
                    <td>{name}</td>
                </tr>
                <tr >
                    <td>{address}</td>
                </tr>
                <tr>
                    <td>{phone}</td>
                </tr>
                <tr>
                    <td>                     
                        <a href="{linkS}thong-tin-tai-khoan" >Chỉnh sửa</a>
                    </td>
                </tr>
            </table>	
        </td>
    </tr>
    <tr>
        <td style="padding-top: 10px">
            <span style="color: #ff00cc;
                         font-size: 14px;">
                <span>ĐỊA CHỈ GIAO HÀNG KHÁC</span>                
            </span>
        </td>
    </tr>
    <tr>
        <td>
            {listAdd1}
        </td>        
    </tr>
    <tr>
        <td>
            {listAdd2}
        </td>
    </tr>    
    <tr>        
        <td>
            <div style="margin-top: 10px; padding-bottom: 70px"> 
                <a  class="dang_ky" 
                    href="{linkS}them-dia-chi.chm" 
                    style="-webkit-border-radius: 20px;
                        -moz-border-radius: 20px;
                        outline:none;
                        float:left;
                        background-color: #ff767c;
                        border: none;
                        color: #fff;
                        font-family:PoetsenOne;
                        border-radius: 20px;
                        padding: 10px;
                        font-size: 14px;">
                    Thêm địa chỉ mới
                </a>             
            </div>            
        </td>
    </tr>
</table>

<script>
    function deleteContact(){
        return confirm('Bạn thực sự muốn xóa?');
    }	
    $("a#show-panel").click(function(){
        $("#lightbox, #lightbox-panel").fadeIn(300);
    });
    $("a#close-panel").click(function(){
        $("#lightbox, #lightbox-panel").fadeOut(300);
    });
</script>


