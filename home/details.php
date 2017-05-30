<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>nanapet.com</title>
	<link rel="stylesheet" type="text/css" href="http://localhost:81/nanapet/layout/css/style.css" />
    <link rel="stylesheet" type="text/css" href="http://localhost:81/nanapet/layout/css/idTab.css" />
    <script type="text/javascript" src="http://localhost:81/nanapet/layout/js/jQuery-1.4.2.js"></script>
    <script type="text/javascript" src="http://localhost:81/nanapet/layout/js/jcarousellite.js"></script>
    <script type="text/javascript">
    $(function() {
        $(".newsticker").jCarouselLite({
            vertical: true,
            hoverPause:true,
            visible: 2,
            auto: 500,
            speed: 1500
        });
    });
    </script>
    <script type="text/javascript">
		$(document).ready(function(){
			$(".tab_content").hide(); 
			$("ul.tabs li:first").addClass("active").show(); 
			$(".tab_content:first").show(); 
			
			$("ul.tabs li").click(function() {
		
				$("ul.tabs li").removeClass("active");
				$(this).addClass("active");
				$(".tab_content").hide();
		
				var activeTab = $(this).find("a").attr("href"); 
				$(activeTab).fadeIn(); 
				return false;
			});
		
		});
	</script>
</head>

<body>
	<div id="wrapper">
    
    	<div id="header">
        
    		<div id="top_header">
    			<div id="logo"><img src="images/logo.png" /></div>
                <div id="right_header">
                
                	<div id="login">
                		<div>Đăng nhập | Đăng ký | Trợ giúp <img src="images/vietnam.gif" /> <img src="images/english.png" /></div>
               		</div><!-- end login -->
                    <div class="clear"></div>
                    <div id="search">
                		<input class="search_cell" type="text" value="Sản phẩm cần tìm" />
                        <input class="search_button" type="button" value="Search" />
               		</div><!-- end search -->
                    
                </div><!-- end right_header -->
    		</div><!-- end top_header -->
            
            <div class="clear"></div>
            
            <div id="menu">
    			<ul class="nav">
                	<li class="home"><a href="">Trang chủ</a></li>
                    <li class="about"><a href="">Giới thiệu</a></li>
                    <li class="adoption"><a href="">Nhận nuôi Pet</a></li>
                    <li class="library"><a href="">Thư viện</a></li>
                    <li class="promotion"><a href="">Khuyến mãi</a></li>
                    <li class="relax"><a href="">Thư giãn</a></li>
                    <li class="contact"><a href="">Liên hệ</a></li>
                </ul>
    		</div><!-- end menu -->
            
            <div id="banner">
    			<img src="images/banner.jpg" />
    		</div><!-- end banner -->
            
            <div class="clear"></div>
    	</div><!-- end header -->
        
        <div id="main_wrapper">
        
    		<div id="col1">
    			<div id="tieude_tim">Danh mục sản phẩm</div>
                <div class="col1_noidung">
                
                	<ul>
                    	<li class="danhmuc_main"><a href="">Sale off</a></li>
                        <li class="danhmuc_main"><a href="">Thức ăn</a></li>
                        <li class="danhmuc_sub"><a href="">Thức ăn chó</a></li>
                        <li class="danhmuc_sub"><a href="">Thức ăn mèo</a></li>
                        <li class="danhmuc_sub"><a href="">Snack & Xương bánh</a></li>
                        <li class="danhmuc_main"><a href="">Vật dụng ăn uống</a></li>
                        <li class="danhmuc_sub"><a href="">Chén, bình nước</a></li>
                        <li class="danhmuc_sub"><a href="">Giường, nhà, túi</a></li>
                        <li class="danhmuc_sub"><a href="">Quần áo</a></li>
                        <li class="danhmuc_main"><a href="">Đồ chơi</a></li>
                        <li class="danhmuc_main"><a href="">Làm đẹp</a></li>
                        <li class="danhmuc_sub"><a href="">Sữa tắm, dầu xã</a></li>
                        <li class="danhmuc_sub"><a href="">Nước hoa</a></li>
                        <li class="danhmuc_sub"><a href="">Chăm sóc toàn thân</a></li>
                        <li class="danhmuc_main"><a href="">Ký sinh trùng</a></li>
                        <li class="danhmuc_sub"><a href="">Ve, rận</a></li>
                        <li class="danhmuc_sub"><a href="">Sổ giun, lãi</a></li>
                        <li class="danhmuc_main"><a href="">Sản phẩm đặc trị</a></li>
                        <li class="danhmuc_main"><a href="">Vòng cổ, dây xích</a></li>
                        <li class="danhmuc_main"><a href="">Sạch nhà, khử mùi</a></li>
                        <li class="danhmuc_sub"><a href="">Vệ sinh, khử mùi</a></li>
                        <li class="danhmuc_sub"><a href="">Dụng cụ vệ sinh</a></li>
                        <li class="danhmuc_main"><a href="">Bộ sản phẩm tiết kiệm</a></li>
                    </ul>
                    
                </div><!-- end col1_noidung -->
                
                <div id="tieude_cam">Sản phẩm tiêu biểu</div>
                <div class="col1_noidung">
                    
                    <div class="newsticker">
                        <ul>
                            <li>
                                <div class="thumbnail"><a href=""><img src="images/s1.jpg"></a></div>
                                <div class="info">
                                    <a href="chitiet.html">MS 05</a>
                                    <div class="best_price">200.000 vnđ</div>
                                </div>
                            </li>
                            
                            <li>
                                <div class="thumbnail"><a href=""><img src="images/s2.jpg"></a></div>
                                <div class="info">
                                    <a href="chitiet.html">Viên dưỡng lông chó lớn</a>
                                    <div class="best_price">230.000 vnđ</div>
                                </div>
                            </li>
                            <li>
                                <div class="thumbnail"><a href=""><img src="images/s1.jpg"></a></div>
                                <div class="info">
                                    <a href="chitiet.html">MS 05</a>
                                    <div class="best_price">700.000 vnđ</div>
                                </div>
                            </li>
                            <li>
                                <div class="thumbnail"><a href=""><img src="images/s2.jpg"></a></div>
                                <div class="info">
                                    <a href="chitiet.html">Viên dưỡng lông chó lớn</a>
                                    <div class="best_price">130.000 vnđ</div>
                                </div>
                            </li>
                        </ul>
                    </div><!-- end newsticker -->
                    
                </div><!-- end col1_noidung -->
                
                <div id="tieude_xanh"> </div>
                <div class="news_noidung">
                    <ul>
                        <li><a href="">- Vinastar làm mới Mitsubishi Zinger</a></li>
                        <li><a href="">- Những thay đổi tại Apple dưới thời...</a></li>
                        <li><a href="">- Bác sĩ quên 'kê đơn' bữa ăn cho...</a></li>
                        <li><a href="">- Tặng 500 vé xem Fanfest trận U23</a></li>
                        <li><a href="">- Những thay đổi tại Apple dưới thời...</a></li>
                    </ul>
                </div><!-- end news_noidung -->
                
                <div class="news_noidung"><a href=""><img src="images/banner4.jpg" /></a></div>
                
    		</div><!-- end col1 -->
            
            <div id="col2">
    			
                <div id="product">
                	<div id="breakcrumb"><a href="index.html">Trang chủ</a> &raquo; Sản phẩm</div> 
                    
                    <div class="col1_content">
                    
                    	<div id="detail1">
                        	<div id="pro_big"><img src="images/product.jpg" width="300" height="300" /></div>
                            <div><img src="images/shadow.png" /></div>
                        </div><!-- end detail1 -->
                        
                        <div id="detail2">
                            <div id="detail2_info">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td colspan="2" id="ten_sp">Máy cưa cầm tay Black & Decker JS700K</td>
                                    </tr>
                                    <tr>
                                        <td class="sp_info1"><span class="rect">Nhãn hàng:</span></td>
                                        <td class="sp_info2">Black&Decker</td>
                                    </tr>
                                    <tr>
                                        <td class="sp_info1"><span class="rect">Xuất xứ:</span></td>
                                        <td class="sp_info2">Trung Quốc</td>
                                    </tr>
                                    <tr>
                                        <td class="sp_info1"><span class="rect">Mã sản phẩm:</span></td>
                                        <td class="sp_info2">BLK-002-932</td>
                                    </tr>
                                    <tr>
                                        <td class="sp_info1"><span class="rect">Liên hệ:</span></td>
                                        <td class="sp_info2"><span style="color:#FF0000; font-weight: bold;">0121 6919 051</span></td>
                                    </tr>
                                    <tr>
                                        <td class="sp_info1"><span class="rect">Giá tham khảo:</span></td>
                                        <td class="sp_info2"><span class="promotion">1.050.000 đ</span></td>
                                    </tr>
                                </table>
                                
                                <br /><br /><br />
                                
                                <table width="400;" align="center">
                                    <tr>
                                        <td width="175px;" align="center"><input type="button" class="addcart" /></td>
                                        <td width="175px;" align="center"><input type="button" class="goon" /></td>
                                    </tr>
                                </table>
                            </div><!-- end detail2_info -->
                                
                        </div><!-- end detail2 -->
                        
                        <div class="clear"></div> 
                        
                        <br /><br /><br />
                        <div id="detail3">
                            <ul class="tabs">
                                <li><a href="#tab1">Thông tin sản phẩm</a></li>
                                <li><a href="#tab2">Phản hồi sản phẩm</a></li>
                            </ul>
                            
                            <div id="tab_container">
                                <div id="tab1" class="tab_content">
                                    <div>- Dung tích xy lanh: 73.5cmᵌ/ 4.48cu.inch</div>
                                    <div>- Công suất: 4.2 Kw / 5.7Hp</div>
                                    <div>- Tốc độ chạy không tải: 2700rpm</div>
                                    <div>- Công suất tối đa có tải: 9600rpm</div>
                                    <div>- Thể tích bình xăng: 0.7 Lít / 1.48US pint</div>
                                    <div>- Thể tích bơm dầu: 0.37 Lít / 0.78US pint</div>
                                    <div>- Loại bơm dầu:  Adjustable flow</div>
                                    <div>- Công suất bơm dầu: 5- 22ml/min</div>
                                   	<div> - Bước răng: 3/8”</div>
                                    <div>- Chiều dài lưỡi cắt được khuyên dung: 380 - 700mm / 15” - 28”</div>
                                    <div>- Tốc độ xích ở công suất tối đa: 21. 4m/s / 70.21 fts</div>
                                    <div>- Độ ồn: 105Db (A)</div>
                                    <div>- Mức độ ồn, LWA: 116Db (A)</div>
                                    <div>- Mức độ rung của tay cầm phía trước: 2.9m/ s²</div>
                                </div>
                                
                                <div id="tab2" class="tab_content">
                                    Đang cập nhật
                                </div>
                                
                            </div><!-- end tab_container -->
                            
                        </div><!-- end detail3 -->
                       
                    </div><!-- end col1_content -->
                       
                </div><!-- end product -->
                
    		</div><!-- end col2 -->            
            
    	</div><!-- end main_wrapper -->
        
        <div class="clear"></div>
        
        <div id="footer">
        
    		<div id="top_footer">
            
    			<div id="top_left_footer">
                	<div class="logo_brand"><a href=""><img src="images/logo_brand.png" /></a></div>
                    <div class="line"></div>
                    <div><img src="images/24-24.png" /></div>
                </div><!-- end top_left_footer -->
                
                <div id="top_right_footer">
                	<table>
                    	<tr>
                        	<td><a href=""><img src="images/q&a.jpg" /></a></td>
                            <td><a href=""><img src="images/coupon.jpg" /></a></td>
                        </tr>
                        <tr>
                        	<td><a href=""><img src="images/f.a.q" /></a></td>
                            <td><a href=""><img src="images/buy.jpg" /></a></td>
                        </tr>
                    </table>
                </div><!-- end top_right_footer -->
                
    		</div><!-- end top_footer -->
            
            <div id="end_footer">
    
    		</div><!-- end end_footer -->
            
    	</div><!-- end footer -->
        
    </div><!-- end wrapper -->
</body>
</html>
