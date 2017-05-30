<style>
    .topNews td{
        font-family: Tahoma; 
        font-size: 12px;
        color:#333333;
        height:20px;
        line-height:20px;
        text-align:left;
        margin:5px;
        padding:5px;
    }
    .danhmuc{
        color: #420062;
    }
    .danhmuc a{
        color: #420062;
    }
</style>

<div class ="container">
    <div class ="row">   
        <div class ="col-xs-9 col-sm-9 col-md-9 col-lg-9">            
            <div id="breakcrumb" style="font-size:14px; 
                                        font-family: RobotoSlabRegular;
                                        margin-top: 30px;
                                        margin-bottom: 15px">
                {breadcrumbs_path}
            </div>
                        
            <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <div class="tieude_help" style = "margin-bottom: 15px; ">
                                <span style="font-size: 30px; 
                                             color: #0099FF; 
                                             font-family: PoetsenOne;">
                                    {tieude}
                                </span>                                
                            </div>                                                        
                        </td>
                    </tr>                    
                    <tr>
                        <td>
                            <div class="noidung_help"
                                 style = "margin-bottom: 20px;
                                          font-family: RobotoSlabLight;
                                          font-size: 14px;
                                          text-align: justify;
                                          line-height: 25px">
                                {noidung}
                            </div>
                        </td>
                    </tr>
                </table>                                                            
            </form>			      
        </div>     
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3">            
            <img src="{linkS}layout/bootstrap/images/gioi_thieu.png"
                 style="float: right; 
                        clear: both; 
                        width: 100%; 
                        margin-top: 30px;
                        margin-bottom: 20px;"/>
            {category}
        </div>                                                                                                               
    </div>                                  
</div>
                    