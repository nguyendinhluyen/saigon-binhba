<?php
    $title = $arr_lang['addcat'];
    $id = intval($_GET['id']);
    $check_do = 'checked';
    $btn = $arr_lang['add_cat'];
    $panel = $arr_lang['add_cat'];
    $update = 0;

    //Fill data on textbox    
    if(check_valid_tours($id)){
        $title = $arr_lang['updatecat'];
        $btn = $arr_lang['update'];
        $panel = $arr_lang['update_cat'];
        $update = 1;
        $sql = "SELECT categories_name,description,
                    keywords,parent_id,
                    sort_order,categories_status 
                FROM categories_tours WHERE categories_id = '".$id."'";
        $mysql -> setQuery($sql);        
        $row = $mysql ->loadOneRow();
        $catname = output($row['categories_name']);
        $parent_id = $row['parent_id'];
        $keywords = $row['keywords'];
        $description = $row['description'];
        $catname_old = $catname;
        $catorder = $row['sort_order'];
        $check_do = ($row['categories_status'] == '1')?'checked':'';
    }		

    if(isset($_POST['btnadd'])){
        $catname = output($_POST['txtcats_name']);
        $catorder = intval($_POST['txtcats_order']);
        $keywords = $_POST['keywords'];
        $description = $_POST['description'];
        $parent_id = intval($_POST['dl_subcats']);
        if($parent_id !=0){
            $level = getLevel_tours($parent_id) + 1;
        }
        else{
            $level = 1;
        }
        if($_POST['chkb_status']!='on'){								
            $check_do ='';
            $status = '0';
        }
        else{
            $status = '1';
        }
        $catkey = vitoen($catname,'-');
        if(!isset($catname{1})) {
            $error = $arr_lang['err_cat_name_short'].' !<br>';
        }
        if(check_cats_name(input($catname),$id)) {
            $error = $arr_lang['err_cat_name_valid'].' !';$catname = $catname_old;
        }

        if(empty($error))
        {
            include(_CLASS.'cache.php');
            $cache =  new cache();
            $cache -> flush(_HOME.'home/cache/');

            //Update			
            if($update == 1) {
                $sql = "UPDATE categories_tours 
                        SET categories_name = '".input($catname)
                                ."',keywords='".$keywords
                                ."',description='".$description
                                ."',categories_key = '".input($catkey).'-'.$id
                                ."',parent_id = ".intval($parent_id)
                                .",level ='".$level
                                ."',sort_order = '".$catorder
                                ."',categories_status = '".$status
                                ."',modified_date = ".time().
                        " WHERE categories_id = ".$id."";
                $mysql -> setQuery($sql);
                $mysql -> query();
                if($_GET['order'] != ""){
                    header('location:./?show=catalogue_tours&p='.intval($_GET['p']).'&order='.$_GET['order']);
                }
                else{
                    header('location:./?show=catalogue_tours&p='.intval($_GET['p']));
                }
            }

            //Insert				
            else{
                $sql = "INSERT INTO categories_tours(categories_name,keywords,description,parent_id,level,sort_order,categories_status,date_added,language)
                values('".input($catname)."','".$keywords."','".$description."',".intval($parent_id).",'".intval($level)."',".$catorder.",".$status.",".time().",'".$_SESSION['lag']."')";
                $mysql -> setQuery($sql);
                $mysql -> query();
                $id = $mysql->lastId;
                $mysql->setQuery("UPDATE categories_tours SET categories_key ='".input($catkey).'-'.$id."' WHERE categories_id='".$id."'");
                $mysql->query();
                if($_GET['order'] != ""){
                    header('location:./?show=catalogue_tours&p='.intval($_GET['p']).'&order='.$_GET['order']);
                }
                else{
                    header('location:./?show=catalogue_tours&p='.intval($_GET['p']));
                }
            }				
        }
    }
    $xtemplate -> path = 'com_catalogue_tours/';
    $content = $xtemplate -> load('CatalogueOpt');
    $content = $xtemplate ->replace($content,array(
        'lag_cats_name'		=> $arr_lang['cat_name'],
        'keywords'		=> $keywords,
        'description'		=> $description,
        'add_cat'		=> $panel,
        'lag_order'      	=> $arr_lang['order'],
        'dl_subcats'      	=> dl_subcats_tours($parent_id,200),
        'reset'			=> $arr_lang['reset'],	
        'lag_show'		=> $arr_lang['show'],
        'btn'			=> $btn,
        'txt_cats_name'		=> output($catname),
        'txt_cats_order'	=> $catorder,
        'check_do'		=> $check_do,
        'ofcatalogue'		=> $arr_lang['ofcatalogue'],
        'error'			=> $error
    ));
?>