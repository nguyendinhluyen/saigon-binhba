<?php
session_start();
if (!isset($_SESSION['UFILE'])) {
	$_SESSION['UFILE'] = array();
}
$uploaddir = '../../upload/file/';
if ($_FILES['uploadfile']['name'] != '') {
	$file = basename($_FILES['uploadfile']['name']);
	$extent = preg_split("/\\./", $file);
	$extent = $extent[count($extent) - 1];
	$strs = strlen($extent) + 1;
	$file = substr($file, 0, -$strs);

	if (file_exists($uploaddir . $file . '.' . $extent)) {
		$i = 0;
		$t_file = $file . '.' . $extent;
		while (file_exists($uploaddir . $t_file)) {
			++$i;
			$t_file = $file . '-' . $i . '.' . $extent;
		}
		$file = $t_file;
	} else {
		$file = $file . '.' . $extent;
	}
	if (move_uploaded_file($_FILES['uploadfile']['tmp_name'], $uploaddir
			. $file)) {
		$_SESSION['UFILE'][] = $file;
		echo "success";
	} else {
		echo "error";
	}
}
?>