<?php
session_start();
$baseDir="../../../jgallery/";
include( $baseDir . "includes/db_mysql.inc.php");
include( $baseDir . "includes/global.inc.php");?>
		 <ul>
<?php
$str_sql_sel  = "SELECT * FROM $gTableName where img_galary_id=".$_SESSION['s_img_galary_id']." ORDER BY $gPosfield ASC";
$db=new DB_Sql;
$db->query($str_sql_sel)    ;
				while($db->next_record())
				{
                    $row=$db->Record;
				?>
					<li id="recordsArray_<?php echo $row['recordID']; ?>">
                    <div class="pad">
                     <div class="move"><img src="../jgallery/images/arrow.png" title="Di chuyển" alt="move" width="16" height="16" class="handle" /></div>
                      <div class="delete"><a href="javascript:deleteImage('<?php echo $row['recordID']; ?>');"><img title="Xóa ảnh này" src="../jgallery/images/trash.gif" alt="delete" width="16" height="16"   /></a></div>
                      <?php if (file_exists($baseDir . $gUploadDir . $row['recordText']))
                            {?> <img src="<?= $gUploadDir . $row['recordText']?>" class="imgThumb"/><?} else {?>
                                <?=$gUploadDir . $row['recordText']?><?}?>
                     </div></li>


				<?  } ?>
</ul>