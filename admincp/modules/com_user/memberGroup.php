<?php
	if(isset($_POST['btndel']))
	{
		$gid  = $_POST['chk'];
		if(!empty($id))
		{
			foreach($gid as $id)
			{
				if(countRow('id','user',"user_group='".$id."'")==0)
				{
					deleteRow('user_group',"group_id='".$id."'");
				}
			}
		}
	}
	else if($_GET['action']=='del')
	{
		$id = intval($_GET['id']);
		if($id!=0)
		{
			if(countRow('id','user',"user_group='".$id."'")==0)
			{
				deleteRow('user_group',"group_id='".$id."'");
			}
		}
	}
	$title = "Nhóm thành viên";
	$xtemplate->path='com_user/';
	$content = $xtemplate->load('memberGroup');
	$block_group = $xtemplate->get_block_from_str($content,'GROUP');
	$mysql->setQuery("select * from user_group");
	$result = $mysql->query();
	$i = 0;
	while($row = mysql_fetch_assoc($result))
	{
		++$i;
		$color=($i%2==0)?'#d5d5d5':'#e5e5e5';
		$temp_group.=$xtemplate->assign_vars($block_group,array(
		'group_name'	=> $row['group_name'],
		'group_id'	=> $row['group_id'],
		'Gcolor'	=> $row['color'],
		'date'		=> date('d-m-Y \l\ú\c H:i',$row['date']),
		'modifiled'	=> ($row['modifiled']==0)?'0':date('d-m-Y \l\ú\c H:i',$row['modifiled']),
		'color'		=>	$color,
		'total_member'	=> countRow('id','user',"user_group='".$row['group_id']."'"),
		));
	}
	$content = $xtemplate->assign_blocks_content($content,array('GROUP'=>$temp_group));
?>