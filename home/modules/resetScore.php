<?php 
//error_reporting(0);
//ini_set("display_errors", 1);
include('../../include/zlib.php');
include('../../class/mysql.php');
include('../../config.php');
include('../../web_config.php');
$obj_config = new config();
$mysql = new mysql();
include '../model/User.php';
include '../model/Score.php';
include '../../include/function.php';
$User = new User();
$Score = new ScoreModel();
$listUsr = GetRows("*", "scores", "1=1");
foreach ($listUsr as $usr){
	$Score->resetScore($usr['user']);
}

?>