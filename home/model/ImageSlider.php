<?php 
class ImageSlider{
	public  function getAllImages(){
		$images = GetRows('recordText','records','1=1');
		return $images;
	}
}
?>