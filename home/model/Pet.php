<?php 
class Pet{
	/*
	public static function getUserInfo($username){
		$user = GetOneRow('username,password,name,sex,birthday,phone,email,address','user'," username = '".$username."'");
		return $user;
	}
	public function getOrderByUser($user){
		$userOrder = GetRows('id,status,order_date,total','tbl_order' ,"username ='".$user."'" );
		return $userOrder;
	}
	public function getHistoryOrderByUser($user){
		$order = self::getOrderByUser($user);
		$orderDetail = GetRows('product_name,product_type,product_color,product_price,product_quantity,status', 'order_detail', "id_order = ".$order['id']);
		return $orderDetail;
	}
	public function getHistoryOrderByrderIdOrder($order_id){
		$orderDetail = GetRows('product_name,product_type,product_color,product_price,product_quantity,status', 'order_detail', "id_order = ".$order_id);
		return $orderDetail;
	}*/
	
	public static function savePet($pet){
		global $mysql;
		$sql = "insert into pet_profile (id_user,name,birthday,species,sex,height,image,weight,color) values ('".$pet['id_user']."','".$pet['name']."','".$pet['birthday']."','".$pet['species']."','".$pet['sex']."','".$pet['height']."','".$pet['image']."','".$pet['weight']."','".$pet['color']."')";
		$mysql->setQuery($sql);
		if($mysql -> query()){
			$lastId = mysql_insert_id();
		}
		return $lastId;
	}
	
	public static function updatePet($pet){
		global $mysql;
		$sql = "update pet_profile  set name = '".$pet['name']."',birthday = ".$pet['birthday'].",species = '".$pet['species']."',sex = '".$pet['sex']."',height = '".$pet['height']."',weight='".$pet['weight']."',color = '".$pet['color']."' where id = ".$pet['id'];
		$mysql->setQuery($sql);
		$mysql -> query();
	}
	public static function removePet($id_pet){
		global $mysql;
		$sql = "delete from pet_profile where id = ".$id_pet;
		$mysql->setQuery($sql);
		$mysql -> query();
	}
	public static function getListPetByUser($email){
		$User = new User();
		$us = $User->getUserInfo($email);
		$id_user = $us['id'];
		$pet   = GetRows('id,id_user,name,birthday,species,sex,height,image,weight,color','pet_profile','id_user = '.$id_user);
		return $pet;
	}
	public static function getPetByUser($email){
		$User = new User();
		$us = $User->getUserInfo($email);
		$id_user = $us['id'];
		$pet   = GetOneRow('id,id_user,name,birthday,species,sex,height,image,weight,color','pet_profile','id_user = '.$id_user);
		return $pet;
	}
	public static function getInfoPetById($id_pet){
		$pet   = GetOneRow('id,id_user,name,birthday,species,sex,height,image,weight,color','pet_profile','id = '.$id_pet);
		return $pet;
	}
}
?>