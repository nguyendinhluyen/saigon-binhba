<?php    $title = $arr_lang['cat_manage'];    $xtemplate -> path = 'com_catalogue_tours/';    $content = $xtemplate -> load('ListCatalogueTree');    $sql = "select categories_id,categories_name,parent_id from categories_tours where language ='".$_SESSION['lag']."' order by sort_order";    $mysql -> setQuery($sql);    $row = $mysql->loadAllRow();    $n = count($row);    $catsTree = '';    for($i=0 ; $i<$n ; ++$i){        $id = $row[$i]['categories_id'];        $parent = $row[$i]['parent_id'];        $name = $row[$i]['categories_name'];        if($parent =='0'){            $catsTree .="d.add($id,$parent,'<b>$name</b>','./?show=CatalogueOpt_tours&id=$id','$name');";        }        else{            $total = get_total_product($id);            $catsTree .="d.add($id,$parent,'$name ($total)','./?show=CatalogueOpt_tours&id=$id','$name');";        }    }    $content = $xtemplate ->replace($content,array(        'catsTree'          => $catsTree,        'viewlist'          => $arr_lang['viewlist'],        'cat_managertree'   => $arr_lang['cat_managertree'],        'expand'            => $arr_lang['expand'],        'collapse'          => $arr_lang['collapse'],	    ));    $script = $xtemplate ->get_block_from_str($content,"SCRIPT");    $content = $xtemplate ->assign_blocks_content($content,array("SCRIPT" => ''));?>