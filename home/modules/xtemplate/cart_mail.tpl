 <style>
.input_box_from{
	width: 350px;
	height: 30px;
}



.cart{
	border-top:1px solid #BCDDEE;
}
.cart td,.cart th{
	border-bottom:1px solid #BCDDEE;
	border-left:1px solid #BCDDEE;
	border-right:1px solid #BCDDEE;
	padding:3px;
}
.recycle_bin_empty
{
	background:url('{linkS}layout/images/recycle_bin_empty.png') no-repeat left center;
	text-indent:20px;
	padding:3px;
	border:2px solid #BCDDEE
}
.order{
	padding:3px;
	border:2px solid #ccc;
	color:#999;
	text-indent:20px;
	background:url('{linkS}layout/images/shopping.png') no-repeat left center;
	
}


#che-bas-shopping-cart-items th.stt_cart_header{width:40px; text-align:center;}

.stt_cart{
	text-align:center; border-top:1px solid #d6d6d6; border-bottom:1px solid #d6d6d6;
}

.sectiontableheader {
	background: #F0F8FB;
	padding: 4px 8px;
	color: #349ACA;
	font-weight: bold;
	text-align:center
}

.sectiontableheader a,
.sectiontableheader a:hover,
.sectiontableheader a:active,
.sectiontableheader a:focus {
	color: #666;
}


.che-bas-whats-this-link { display: inline; float: right; margin-right: 145px;}
.che-bas-header-left {margin:40px 0px 15px 25px; width:50%; float:left;}
.che-bas-header-left h1 {margin-bottom:12px; }
.che-bas-header-left .che-bas-lock {margin-right:5px;}
.che-bas-continue-shopping {margin-top:55px; margin-bottom:5px; }
.che-bas-continue-shopping span a {vertical-align:middle;}
.che-bas-continue-shopping span img {vertical-align:middle;}
.che-bas-header-right {margin:40px 25px 15px 0px; width:330px; float:right;}
.che-bas-cart-heading-image {width:120px; }
.che-bas-cart-heading-description { }
.che-bas-cart-heading-giftwrap {width:100px; }
.che-bas-cart-heading-item-price { width:120px; }
.che-bas-cart-heading-qty {width:100px; }
.che-bas-cart-heading-total-price { font-size: 12px; color: #000; text-align: center !important; width:120px; }
#che-bas-shopping-cart-items th {font-weight:bold; vertical-align:middle; background-color:#f4f4f4; border-top:1px solid #d6d6d6; font-size:11px; text-align:left; padding:10px 0px; }
.che-bas-item-variant-label {font-weight:bold; text-transform:uppercase; }
.che-bas-item-image-cell { font-size:11px; text-align:center; border-top:1px solid #d6d6d6; border-bottom:1px solid #d6d6d6; }
.che-bas-item-cell { font-size:11px; text-align:left; border-top:1px solid #d6d6d6; border-bottom:1px solid #d6d6d6; vertical-align:top; padding-top:20px; padding-bottom:20px;  }
.che-bas-item-cell .glo-tex-error, .che-bas-item-cell .glo-tex-info { display: block; margin-top: 5px;}
.che-bas-item-price-cell { text-align:center; border-top:1px solid #d6d6d6; border-bottom:1px solid #d6d6d6; border-left:1px solid #d6d6d6; vertical-align:top; padding-top:20px; color:#000;}
.che-bas-item-variant-label {text-transform:uppercase; font-weight:bold; color:#666666; float:left; width:60px;  }
.che-bas-item-cell li { clear: both; margin-top: 6px; font-size: 10px;margin: 0; padding: 0;font-weight:normal;}
.che-bas-item-cell li span { text-transform: uppercase; font-weight: bold; display: inline; float: left; width: 60px;}
.che-bas-item-p {font-size: 12px;}
a.che-bas-item-name { font-weight: bold; text-transform: uppercase; color: #000; text-decoration: none;}
.che-bas-giftwrap-cell input {vertical-align:middle; }
.che-bas-giftwrap-cell label {vertical-align:middle; font-size: 10px; }
.che-bas-giftwrap-cell span { display: block; margin-left: 24px;}
.che-bas-giftwrap-div {position: relative;}
#che-bas-giftbox-popup {padding: 10px; border: 1px solid #d6d6d6; position: absolute; top: 8px; left: 30px; background-color: #fff;}

#che-bas-bottom-right-wrapper { width:350px; float:right; }
#che-bas-bottom-right-wrapper .che-bas-managed-content { margin-right:25px; }
#che-bas-order-summary-outer { border:1px solid #d6d6d6; border-right: 0; color:#000000; padding: 5px 0 5px 5px;}
#che-bas-order-summary-inner {  width: 100%; padding: 19px 0; background-color:#f4f4f4; }
#che-bas-order-summary-inner dl { width: 295px; clear: both; margin: 0 auto 0 auto; }
#che-bas-order-summary-inner dt#che-bas-estimated-total {font-size: 12px; margin: 6px 0 8px 0;}
#che-bas-order-summary-inner dt { font-size: 9px; display: inline; float: left; font-weight: bold; text-transform: uppercase; margin: 7px 0 6px 0; }
#che-bas-order-summary-inner dt a { color: #333; font-weight: normal; text-transform: none;}
#che-bas-order-summary-inner dd { display: inline; float: right; font-size: 12px; margin: 6px 0;}
.che-bas-shipping-method {border-bottom:1px solid #d6d6d6; padding: 12px 0; }
.che-bas-shipping-method table td {font-size: 9px; font-weight: bold; text-align: center; text-transform: uppercase;}
.che-bas-shipping-method table td select {text-transform: none;}
.che-bas-estimate-total { padding: 15px 0 15px 5px; border-bottom:1px solid #d6d6d6;}
.che-bas-estimate-total dl { width: 295px; margin: 0 auto 0 auto;}
.che-bas-estimate-total dt {display: inline; float: left; font-size: 12px; padding-top: 5px; text-transform: uppercase;}
.che-bas-estimate-total dd { display: inline; float: right; font-size: 18px;}
.che-bas-checkout-button-wrapper {float:right; margin:20px 0px 20px 0px; padding-right:25px; }
#che-sin-order-summary dd.glo-clr {display: block; float: none; clear: both;}

.item-img {
	width:90px; height:110px; border:0px;padding: 5px;
}
.cart-main{width:99%;float: right;}
.che-bas-item-cell ul, li {margin: 0; padding: 0; list-style: none;}


.cart_score{
	font-size:20px;
	font-weight:bold;
	color:#FFFFFF;
	position:fixed;
	top:368px;
	float:right;
	/*left:50%;*/
	margin-left:80px;
	/*width:30px;*/
	/*background:red;*/
	/*padding:10px 15px 10px 15px;*/
	/*border:2px solid #CCCCCC;*/
	z-index:1001;

}

</style>

<table border="0">
	<tr>
		<td>
			<div><img src="http://nanapet.com/layout/images/logo/logo.png" width="170px;"/></div>
			Xin chào {name_user}, bạn vừa đặt hàng với <a href="http://nanapet.com" target="_blank">Nanapet</a> , thông tin bạn đặt hàng như sau
			<br/>
			Họ tên : {name_cart}.<br/>
			Email : {email_cart}. <br/>
			Điện thoại : {phone_cart}.<br/>
			Địa chỉ : {address_cart}
		</td>
	</tr>
	<tr>
		<td>Danh sách sản phẩm:</td>
	</tr>
	<tr>
		<td>
		  <table id="che-bas-shopping-cart-items" cellpadding="0" width="100%" cellspacing="0" border="0">
			<tbody><tr>
				<th class="che-bas-cart-heading-image">&nbsp;</th>
				<th class="che-bas-cart-heading-description">Sản phẩm</th>
				<th class="che-bas-cart-heading-item-price">Giá</th>
				<th class="che-bas-cart-heading-qty">Số lượng</th>
				<th class="che-bas-cart-heading-total-price">Tổng tiền</th>
			</tr>
			</tbody>
			<tbody>
					{cart_mail}
			</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td>Tổng tiền hàng : {total_email}</td>
	</tr>
	<tr>
		<td>Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi</td>
	</tr>
</table>