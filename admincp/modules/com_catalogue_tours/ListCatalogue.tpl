<form method='POST' enctype='multipart/form-data' id = "frm" name = "frm">
    <div class = "title" style ="text-indent:10px">{lag_cat_manager}</div>
    <div>{lag_page} : {page}</div>
    <div><img src ="../style/images/folderopen.gif"><a href = "./?show=catalogueTree_tours">{viewastree}</a></div>
    <div style = "float:left">
        <div class = "title" style = 'width:851px'>
            <div class = "con_title" style = "width:50px;text-align:center">
                <input style ='margin-left:3px' type="checkbox" name="chkall" onclick="chkallClick(this);">
            </div>
            <div class = "con_title" style = "width:50px">{lag_delete}</div>
            <div class = "con_title" style = "width:50px">{lag_edit}</div>				
            <div class = "con_title" style = "width:170px ;">
                <a href = './?show=catalogue_tours&order=name&p={p}' style="text-decoration:underline">{lag_cats_name} (a->z)</a>
                <span>&nbsp;&nbsp;-&nbsp; </span>
                <span>
                    <a href = './?show=catalogue_tours&order=name_desc&p={p}'style = "text-decoration:underline">(z->a)</a> 
                </span>
            </div>                                
            <div class = "con_title" style = "width:170px;">
                <a href = './?show=catalogue_tours&order=catalogue&p={p}' style="text-decoration:underline">{ofcatalogue}</a>
                <span>&nbsp;&nbsp;&nbsp </span>
                <span>
                    <a href = './?show=catalogue_tours&order=catalogue_desc&p={p}'style = "text-decoration:underline"></a> 
                </span>
            </div>                
            <div class = "con_title" style = "width:55px">{lag_order}</div>				
            <div class = "con_title" style = "width:65px;">
                <a href = './?show=catalogue_tours&order=status&p={p}'style='text-decoration:underline'>{lag_status}</a>
            </div>				                
            <div class = "con_title" style = "width:141px;border:0px;">
                <a href = './?show=catalogue_tours&order=dateadd&p={p}' style="text-decoration:underline">{lag_date_create} (cũ)</a>
                <span>&nbsp;&nbsp;-&nbsp;</span>
                <span>
                    <a href = './?show=catalogue_tours&order=dateadd_desc&p={p}'style = "text-decoration:underline">(mới)</a> 
                </span>
            </div>                                                
            <div class = "con_title" style = "width:100px;border:0px;">
                <a href = './?show=catalogue_tours&order=datemodifiled&p={p}' style="text-decoration:underline">Sửa (cũ)</a>
                <span>&nbsp&nbsp-&nbsp </span>
                <span>
                    <a href = './?show=catalogue_tours&order=datemodifiled_desc&p={p}'style = "text-decoration:underline">(mới)</a> 
                </span>
            </div>
        </div>
        <div>
            <!--BEGINLIST_CATALOGUE-->
            <!--BEGIN_CATALOGUE-->
            <div class = "con_list_con" style = "width:50px;background-color:{color};height:30px;text-align:center">
                <input style ='margin-top:8px' type="checkbox" name="chk[]" value="{id}">
            </div>
            <div class = "con_list_con" style = "width:50px;background-color:{color};height:30px;">
                <a href="./?show=catalogue_tours&action=del&id={id}&p={p}&order={orderby}" onclick="return confirm('{del_confirm} ?');">{lag_delete}</a>
            </div>
            <div class = "con_list_con" style = "width:50px;background-color:{color};height:30px;">
                <a href="./?show=CatalogueOpt_tours&id={id}&p={p}&order={orderby}">{lag_edit}</a>
            </div>
            <div class = "con_list_con" style = "width:170px;background-color:{color};height:30px;" id ="{id}">{cat_name}</div>
            <div class = "con_list_con" style = "width:170px;background-color:{color};height:30px;" id ="{id}_parent_name">{parent_name}</div>
            <div class = "con_list_con" style = "width:55px;background-color:{color};height:30px;" id ="{id}_order">{order}</div>
            <div class = "con_list_con" style = "width:65px;background-color:{color};height:30px" id ="{id}_status">{status}</div>
            <div class = "con_list_con" style = "width:140px;border:0px;background-color:{color};height:30px">{date_create}</div>
            <div class = "con_list_con" style = "width:100px;border:0px;background-color:{color};height:30px">{date_modifiled}</div>
            <div class ='clear'></div>
            <!--END_CATALOGUE-->
            <!--ENDLIST_CATALOGUE-->
        </div>
    </div>
    <input class = "button" type = "submit" name = "btndel" value = "{delete_check}" onclick="return confirm('{del_confirm}?');">
    <input class = "button" type = "submit" name = "btnstatus" value = "{shi}" onclick = "return chkselected();">
    <input class = "button" type = "button" value = "{add_cat}" onclick="window.location='./?show=CatalogueOpt_tours{type_of_order}&p={page}'">
</form>