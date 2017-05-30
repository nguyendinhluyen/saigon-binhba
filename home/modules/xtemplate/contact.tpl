<style>
.topNews td
    {
        font-family: Tahoma; font-size: 12px;
        color:#333333;height:20px;line-height:20px;
        text-align:left;
        margin:5px;
        padding:5px;
    }
</style>

<div id="product">
    <div id="breakcrumb" 
         style="border-bottom: 1px solid #09f;">
        {breadcrumbs_path}
    </div> 
    <div class="news_main">           
        <div id="GpageContent">      
            <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                <div class="Newspage">
                    <div class="newLightPage1">
                        <div class="topNews">
                            <div class="titlelienhe"></div>                          
                            <table width="730" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <div style="float:right; width:320px; height:auto;">
                                            <table cellspacing="0" cellpadding="0" width="100%" id="contact_form" border="0">
                                                <tr style="height: 10px;">
                                                  <td colspan="2">{success}</td>
                                                </tr>                                            
                                                <tr id="yourname" >
                                                    <td>
                                                        <div align="right">Họ tên *</div>
                                                    </td>
                                                    <td>
                                                        <input name="txtHoten" value="{txtHoten}" type="text" class="input_box" id="txtHoten" maxlength="34" style="width: 200px;"/>
                                                        <br/>
                                                    </td>
                                                </tr>
                                                <tr id="yourphone" >
                                                  <td>
                                                      <div align="right">Điện thoại *</div>
                                                  </td>
                                                  <td>
                                                      <input name="txtDienthoai" value="{txtDienthoai}" type="text" class="input_box" id="txtDienthoai" maxlength="34" style="width: 200px;">
                                                      <br/>
                                                  </td>
                                                </tr>
                                                <tr id="yourphone" >
                                                    <td>
                                                        <div align="right">Email</div>
                                                    </td>
                                                    <td>
                                                        <input name="txtEmail" value="{txtEmail}" type="text" class="input_box" id="txtEmail" maxlength="34" style="width: 200px;">
                                                        <br/>   
                                                    </td>
                                                </tr>
                                                <tr id="yourname" >
                                                    <td>
                                                        <div align="right">Nội dung *</div>
                                                    </td>
                                                    <td> 
                                                        <textarea name="txtNoidung" type="text" class="textarea" id="txtNoidung" size="30" style="width: 200px;height: 80px; border-color:#BDC7D8;">{txtNoidung}</textarea>
                                                        <br/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align: center;">
                                                        <input type="hidden" name="butSub" value="submit">
                                                      <input type="image" name="btn" onclick="return checkform()" src="{linkS}layout/images/guitt.png" width="83" height="26" border="0">
                                                    </td>
                                                </tr>

                                            </table>
                                        </div>
                                        <br/>
                                        <div id="contact_left">
                                                <div id="contact_left_td">{contact}</div>
                                        </div>           
                                        <div id="bando">
                                            <div id="map">
                                                <div id="noidungmap"></div>
                                                <div class="bandomap">{bandoTPHCM}</div>
                                            </div>
                                            <div id="map">
                                                <div id="noidungmap"></div>
                                                <div class="bandomap">{bandoHaNoi}</div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div class="bottomNews1"></div>
                        </div>
                    </div>
                </div>	                  
            </form>			
        </div>
    </div><!-- end product_main -->                       
</div>
<script language="Javascript">
function checkform(){
	if (document.getElementById('txtHoten').value < 1)
	{
		alert("Vui lòng nhập họ tên.");
		return false;
	}
	if (document.getElementById('txtDienthoai').value < 8)
	{
		alert("Số điện thoại nhập chưa đúng.");
		return false;
	}
	if ((document.getElementById('txtEmail').value < 9) 
            || (document.getElementById('txtEmail').value.indexOf('@') === -1) 
            || (document.getElementById('txtEmail').value.indexOf('.') === -1))
	{
		alert("Email nhập chưa đúng định dạng !");
		return false;
	}
	if (document.getElementById('txtNoidung').value < 8)
	{
		alert("Bạn chưa nhập nội dung liên hệ.");
		return false;
	}
	if (document.getElementById('txtCode').value < 8)
	{
		alert("Bạn chưa nhập mã an toàn.");
		return false;
	}
	return true;
}
</script>
                    