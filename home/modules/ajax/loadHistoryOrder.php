<?php 
include('home_start.php');
$id_order = input($_GET['id_order']);
//$user = $_GET['user'];
$Users = new User();
$history = $Users->getHistoryOrderByrderIdOrder($id_order);
$n = count($history);
$data = "<p align='center'><b>Chi tiết đơn hàng</b></p>";
$data .= "<table width='550px' border='0'>";
$data .="	<tr>
				<td>Mã đơn hàng : ".$id_order."</td></tr><tr><td>";
//$data .='Mã đơn hàng : '.$id_order;
$data .=" <table width='523px' border='1' cellspacing='0' style='text-align: center;'>
           <tr class='sectiontableheader'>
             <td width='20px'>STT</td>
             <td>Sản phẩm</td>
             <td>Số lượng</td>
             <td>Tổng tiền</td>
          	</tr>";
$i=0;
foreach ($history as $value) {
	$i++;
	$product_name = $value['product_name'];
	$product_type = $value['product_type'];
	$product_color = $value['color'];
	$product_price = $value['product_price'];
	$product_quantity = $value['product_quantity'];
	if($product_type !=''){
		$product_name .= "<br/>".$product_type;
	}
	if($product_color!=''){
		$product_name .= "<br/>".$product_color;
	}
	$data .="	<tr>
				<td width='20px'>".$i."</td>
	  		   <td>".$product_name."</td>
	           <td>".$product_quantity."</td>
	           <td>".$product_price." VNĐ</td>
	         </tr>";
}
$data .="	</table>";
$data .="	</tr></td></table>";
echo $data;
?>