<style>
    .topNews td {
        font-family: Tahoma; 
        font-size: 12px;
        color:#333333;
        height:20px;
        line-height:20px;
        text-align:left;
        margin:5px;
        padding:5px;
    }
    #map-canvas {
        width: 870px;
        height: 500px;
    }
</style>

<body onload="setTextArea();">
    <div class="container">
        <div class ="row">
            <!--<div class ="col-sx-12 col-sm-12 col-md-12 col-lg-12">
                <div id="breakcrumb"
                     style="font-family: RobotoSlabRegular;
                            margin-top: 30px">
            {breadcrumbs_path}
                </div> 
            </div>-->                                
            <div class ="col-md-12 col-lg-12">                
                <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                    <div class ="col-md-6 col-lg-6" style="margin-top: 30px">                                                                        
                        <div style="margin-left: 15px">
                            <img src="{linkS}layout/bootstrap/images/lien_he.png" 
                                 alt="Liên hệ Sài Gòn - Bình Ba hotel" 
                                 height="190" 
                                 width="210"
                                 style = "margin-left: auto;
                                 margin-right: auto;
                                 display: block">                        
                            <div style="font-family:OpenSans-ExtraBold;
                                 font-size: 25px;                                    
                                 text-align: center;
                                 color: #0d70c1">
                                SÀI GÒN - BÌNH BA HOTEL
                            </div>
                            <div style="font-family:OpenSans-Semibold;
                                 font-size: 15px;                                    
                                 line-height: 30px;
                                 text-align: center;">
                                Khách sạn nằm ngay bãi Nồm, gần khuôn viên Thiên Thủy
                            </div>
                            <div style="font-family:OpenSans-Semibold;
                                 font-size: 15px;
                                 line-height: 30px;
                                 text-align: center;
                                 color: #0c72bd;">
                                Hotline: 0905 56 53 11 (Mr Thông) - 0945 46 79 68 (Mr Trung)
                            </div>
                            <div style="font-family:OpenSans-Semibold;
                                 font-size: 15px;
                                 line-height: 30px;
                                 text-align: center">                            
                                Email: contact@saigon-binhba.com
                            </div>
                            <div style="font-family:OpenSans-Semibold;
                                 font-size: 15px;
                                 line-height: 30px;
                                 text-align: center">                           
                                Thời gian làm việc 24/7                           
                            </div>
                        </div>
                    </div>

                    <div class ="col-md-5 col-lg-5" style="margin-left: 40px">                            
                        <div style="margin-top:40px; margin-left: -10px; margin-bottom: 20px">
                            {success}
                        </div> 
                        <div class ="form-horizontal">
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtHoten"
                                        name="txtHoten"                                                                        
                                        placeholder = "Họ và tên"
                                        onkeydown="myKeyDownName();"
                                        style ="-webkit-border-radius: 15px;
                                        -moz-border-radius: 15px;
                                        border-radius: 15px;
                                        height: 40px;
                                        outline:none;
                                        padding: 5px;
                                        font-family: OpenSans-Semibold;
                                        font-size: 14px;
                                        border: 1px solid #ddd;
                                        font-weight: lighter;
                                        color: #adadad"
                                        maxlength="50"/>

                            </div>                            
                        </div>  
                        <div class ="form-horizontal">
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtEmail"
                                        name="txtEmail"                                                                        
                                        placeholder = "Email"
                                        onkeydown="myKeyDownEmail();"
                                        style = "-webkit-border-radius: 15px;
                                        -moz-border-radius: 15px;
                                        border-radius: 15px;
                                        height: 40px;
                                        outline:none;
                                        padding: 5px;
                                        font-family: OpenSans-Semibold;
                                        font-size: 14px;                                            
                                        border: 1px solid #ddd;
                                        font-weight: lighter;
                                        color: #adadad"
                                        maxlength="50"/>
                            </div>
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtDienthoai"
                                        name="txtDienthoai"                                                                        
                                        placeholder = "Điện thoại liên lạc"
                                        onkeydown="myKeyDownPhone();"
                                        style = "-webkit-border-radius: 15px;
                                        -moz-border-radius: 15px;
                                        border-radius: 15px;
                                        height: 40px;
                                        outline:none;
                                        padding: 5px;
                                        font-family: OpenSans-Semibold;
                                        font-size: 14px;                                            
                                        border: 1px solid #ddd;
                                        font-weight: lighter;
                                        color: #adadad"
                                        maxlength="15"/>
                            </div>                            
                            <div class ="form-group">                        
                                <textarea rows="5"                                        
                                          class="form-control" 
                                          id="txtNoidung" 
                                          name ="txtNoidung"
                                          placeholder="Nội dung"
                                          onkeydown="myKeyDownContent();"
                                          maxlength="250"
                                          style = "-webkit-border-radius: 15px;
                                          -moz-border-radius: 15px;
                                          border-radius: 15px;
                                          outline:none;
                                          font-family: OpenSans-Semibold;
                                          font-size: 14px;
                                          border: 1px solid #ddd;
                                          font-weight: lighter;  
                                          color: #adadad;
                                          height: 160px">
                                </textarea>
                                <br/>
                                <input type="submit" 
                                       name="butSub"
                                       value="Gửi đến chúng tôi"
                                       onclick="checkform();"
                                       style="outline:none;
                                       float:right;
                                       background-color: #a57e39;
                                       border: none;
                                       color: #fff;
                                       font-family:OpenSans-Semibold;
                                       padding: 10px;
                                       border-radius: 20px;
                                       -webkit-border-radius: 20px;
                                       -moz-border-radius: 20px;
                                       margin-bottom: 20px">
                            </div>
                        </div>                                                                                                                          
                    </div>                        
                </form>	
                <div id="map-canvas" style="margin-left: 30px; margin-bottom: 40px"></div>
                
            </div>        
        </div><!-- end product_main -->                       
    </div>
</body>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script language="Javascript">        
    function initialize() {
        var mapCanvas = document.getElementById('map-canvas');
        var mapOptions = {
            center: new google.maps.LatLng(11.834585,109.238965),
            zoom: 15,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(mapCanvas, mapOptions)
        var infowindow = new google.maps.InfoWindow({
            content:"<h1 style='font-size:14px'>Sài Gòn - Bình Ba Hotel</h1>" +
                    "<p>Cam Bình, TP. Cam Ranh, Khánh Hòa, Việt Nam</p>" +
                    "<img src='{linkS}layout/bootstrap/images/saigon_binhba.jpg' height='90px'>" 
        });
        var marker = new google.maps.Marker({            
            position: new google.maps.LatLng(11.834721, 109.238735),
            title: "Sài Gòn - Bình Ba"
        });
        infowindow.open(map,marker);
        marker.setMap(map);       
         google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map,marker);
    });
        
    }
    google.maps.event.addDomListener(window, 'load', initialize);
    
   
    function checkform() {
        // Ho Ten
        document.getElementById("txtHoten").required = true;
        if (document.getElementById('txtHoten').value === "") {
            document.getElementById('txtHoten').setCustomValidity('Vui lòng nhập họ tên.');
        }
        else {
            document.getElementById('txtHoten').setCustomValidity('');
        }
        //Email
        document.getElementById("txtEmail").required = true;
        if ((document.getElementById('txtEmail').value === "")
                || (document.getElementById('txtEmail').value.indexOf('@') === -1)
                || (document.getElementById('txtEmail').value.indexOf('.') === -1)) {
            document.getElementById('txtEmail').setCustomValidity('Vui lòng nhập đúng địa chỉ email.');
        }
        else {
            document.getElementById('txtEmail').setCustomValidity('');
        }
        // Dien Thoai
        document.getElementById("txtDienthoai").required = true;
        if (document.getElementById('txtDienthoai').value < 10) {
            document.getElementById('txtDienthoai').setCustomValidity('Vui lòng nhập số điện thoại.');
        }
        else {
            document.getElementById('txtDienthoai').setCustomValidity('');
        }
        // Noi Dung
        document.getElementById("txtNoidung").required = true;
        if (document.getElementById('txtNoidung').value === "") {
            document.getElementById('txtNoidung').setCustomValidity('Vui lòng nhập nội dung.');
        }
        else {
            document.getElementById('txtNoidung').setCustomValidity('');
        }
    }
    function myKeyDownName() {
        document.getElementById('txtHoten').setCustomValidity('');
    }
    function myKeyDownEmail() {
        document.getElementById('txtEmail').setCustomValidity('');
    }
    function myKeyDownPhone() {
        document.getElementById('txtDienthoai').setCustomValidity('');
    }
    function myKeyDownContent() {
        document.getElementById('txtNoidung').setCustomValidity('');
    }
    function setTextArea() {
        document.getElementById('txtNoidung').value = "";
    }
</script>
