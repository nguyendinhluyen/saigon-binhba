<script type="text/javascript">

removeConfirm="Bạn có chắc là muốn xóa ?";

 function renderImages() {
 
  $("#imagesDisplay").load("../jgallery/jss/dragdrop/list.php");

 

 $("#imagesDisplay").ajaxComplete(function(event,request, settings){
   $("#imagesDisplay ul").sortable({
            handle : '.handle', opacity: 0.6, cursor: 'move',
            update: function() {
			var order = $(this).sortable("serialize") + '&action=updateRecordsListings';
			$.post("../jgallery/jss/dragdrop/update.php", order, function(theResponse){
				//$("#contentRight").html(theResponse);
			});
		}
		});
  

 });

 }
//*/ prompt
 //function performDelete(v,m,f){ $.prompt(v +' ' + f.alertName);}
function performDelete(r,imageID)
{
    if (r)
            {
                
                $.post("../jgallery/jss/dragdrop/delete.php", { id: imageID } );
                renderImages();
            }
}
  function deleteImage(imageID)
  {
  //  $.prompt('Are you sure you want to remove this image ?',{
     //    callback: performDelete,
       //   buttons: { Ok: true, Cancel: false } });
       jConfirm(removeConfirm, 'Delete', function(r) {  performDelete(r,imageID)});

  }

 $(document).ready(function(){

 renderImages();
 

});
</script>