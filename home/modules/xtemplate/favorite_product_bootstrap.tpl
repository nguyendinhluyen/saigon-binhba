<style>    
    .td_hinhanh{
        width:150px;        
    }
    .td_dacdiem{
        width:130px;        
    }
    .td_giathanh{
        width:100px;        
    }
    .td_khuyenmai{
        width:100px;  
    }
    .td_soluong{
        width:80px;   
        text-align:center;
    }    
</style>

<form name="fav" method="post">
    <table style=" font-size: 14px">
        <tr style="line-height: 50px">            
            <td class="td_hinhanh">Hình ảnh sản phẩm</td>
            <td class="td_dacdiem">Đặc điểm</td>
            <td class="td_giathanh">Giá thành</td>
            <td class="td_khuyenmai">Khuyến mãi</td>
            <td class="td_soluong">Số lượng</td>
        </tr>
        <!--BEGINLIST_LISTFAVIROTE-->
        <!--BEGIN_LISTFAVIROTE-->
        <tr  valign="middle">            
            <td style="padding-right: 30px;">
                <input type="checkbox" 
                       name="check_fav[]" 
                       value="{id_fav}" 
                       style="margin-right: 15px;
                       "/>
                <img src = "{linkS}upload/product/{img_product}" height="100px"/>
            </td>
            <td>{dacdiem}</td>
            <td style="text-align: left">{giathanh}</td>
            <td style="text-align: left">{khuyenmai}</td>
            <td style="text-align: center">
                <select name='quantity{id_fav}' id='quantity{id_fav}'>
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
            </td>
        </tr>
        <tr>
            <td colspan="6"><hr style="height: 1px;" /></td>
        </tr>
 	<!--END_LISTFAVIROTE-->
        <!--ENDLIST_LISTFAVIROTE-->
    </table>
    <input  type="submit" 
            name="them" 
            value="Thêm vào giỏ hàng" 
            onclick="return addToCart();"
            style="-webkit-border-radius:20px;
                -moz-border-radius:20px;
                outline:none; 
                background-color:#ff767c;
                border:none;
                color:#fff;
                font-family:PoetsenOne;
                border-radius:20px;
                padding:10px;
                width:150px;
                font-size:14px;
                margin-top:15px;
                margin-bottom:20px"/>     
    <input type="submit" 
           name="xoa" 
           value="Xóa" 
           onclick="return xoaFav();"
           style="-webkit-border-radius:20px;
                -moz-border-radius:20px;
                outline:none;                                                                  
                background-color:#ff767c;
                border:none;
                color:#fff;
                font-family:PoetsenOne;
                border-radius:20px;
                padding:10px;
                width:70px;
                font-size:14px;
                margin-right:10px"/> 
    
</form>

<script>
    function xoaFav(){
        return confirm("Bạn muốn xóa?");
    }       
    function addToCart(){            
        var n = $("input:checked").length;
        if(n === 0){
            alert('Chưa chọn sản phẩm');
            return false;
        }
        return true;
    }
    $(document).ready(function () {
        var arrQuan = {arrQuan};
        var arrID = {arrID};
        $.each( arrID, function(i, val){
           var namQuan  = 'quantity' + val;
           $("#"+namQuan).val(arrQuan[i]);
        });
    });
</script>