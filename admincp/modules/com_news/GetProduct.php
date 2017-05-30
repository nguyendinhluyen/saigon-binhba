<?php        
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    if(!empty($_POST["name"])){
        //$connection  = @mysql_connect('localhost', 'root', '');
        $connection  = @mysql_connect('localhost', 'nanapet_user', '-#cLp.SMaa0J');
        mysql_set_charset('utf8',$connection);
        if (!$connection ){
            echo('Không kết nối được dữ liệu');
        }
        $db = "nanapet_db";
        if ($db != '' && !@mysql_select_db( $db, $connection)){
            echo('Dữ liệu NanaPet bị lỗi');
        }
        $sql = "SELECT products_id, products_name, products_image
                FROM products
                WHERE products_name LIKE '%".$_POST["name"]." %' AND products_status = 1";
        $cursor = mysql_query($sql, $connection);
        if(!$cursor){
            echo("Không truy cập được dữ liệu sản phẩm");
        }
        else{
            while ($row = mysql_fetch_assoc($cursor)){
                $array[] = $row;
            }
            mysql_free_result($cursor);                                    
            echo json_encode($array);
        }
    }
    else if($_POST["id"]){
        $connection = @mysql_connect('localhost', 'root', '');
        //$connection  = @mysql_connect('localhost', 'nanapet_user', '-#cLp.SMaa0J');
        mysql_set_charset('utf8',$connection);
        if (!$connection ){
            echo('Không kết nối được dữ liệu');
        }
        $db = "nanapet_db";
        if ($db != '' && !@mysql_select_db( $db, $connection)){
            echo('Dữ liệu NanaPet bị lỗi');
        }
        $sql = "SELECT products_id, products_name, products_image
                FROM products
                WHERE products_id = ".$_POST["id"]." AND products_status = 1";        
        $cursor = mysql_query($sql, $connection);
        if(!$cursor){
            echo("Không truy cập được dữ liệu sản phẩm");
        }
        else{
            while ($row = mysql_fetch_assoc($cursor)){
                $array[] = $row;
            }
            mysql_free_result($cursor);                                    
            echo json_encode($array);
        }        
    }
    else{
        echo("Không có sản phẩm");
    }
?>