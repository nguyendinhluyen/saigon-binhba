<?php
if (isset($_POST['id']) && isset($_POST['opt'])) {
	include("../../include/zlib.php");
	include("../../class/mysql.php");
	include("../../include/function.php");
	include("../../config.php");
	//include("../../class/xtemplate.php");
	$obj_config = new config();
	$mysql = new mysql();
	$content = output($_POST['content']);
	if (isset($content{0})) {
		$id = intval($_POST['id']);
		$opt = intval($_POST['opt']);
		switch ($opt) {
		case 1:
			$sql = "update categories set categories_name = '"
					. input($content) . "',categories_key ='"
					. vitoen(input($content), '-')
					. "' where categories_id = '$id'";
			break;
		case 2:
			$sql = "update categories set sort_order = '" . input($content)
					. "' where categories_id = '$id'";
			break;
		case 3:
			$sql = "update categories set categories_status = '$content' where categories_id = '$id'";
			$content = ($content == 1) ? "Hiển thị" : "Đang ẩn";
			break;
		case 4:
			if ($content != $id) {
				$mysql
						->setQuery(
								"select level from categories where categories_id='"
										. intval($content) . "'");
				$row = $mysql->loadOneRow();
				$sql = "update categories set parent_id = " . intval($content)
						. ",level='" . ($row['level'] + 1)
						. "' where categories_id = '$id'";
				$content = get_parent_name(intval($content));
				if ($content == '0')
					$content = 'Danh mục gốc';
			} else {
				$content = 'Fail update';
			}
			break;
		}
		$mysql->setQuery($sql);
		$mysql->query();
		echo input($content);
	} else {
		echo "Fail update";
	}
}
function get_parent_name($id) {
	global $mysql;
	$sql = "select categories_name from categories where categories_id = "
			. intval($id);
	$mysql->setQuery($sql);
	$mysql->query();
	if ($mysql->getNumRows() > 0) {
		$row = $mysql->loadOneRow();
		return $row['categories_name'];
	} else {
		return 0;
	}

}
?>