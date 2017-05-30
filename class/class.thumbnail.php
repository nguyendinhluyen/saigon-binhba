
<?php

/*
    PHP_Thumbnail
    Version 0.5
    Ryan Flynn (ryan@ryanflynn || DALnet->#php->pizza_milkshake)
    Monday, June 25 2001
    
    This class was created to simplify the process of representing images with
    thumbnails. This class simply gets the image's size, converts the height and width
    depending on what you've set the class to do and then outputs and HTML <img> tag with
    the appropriate values. It requires no additional libraries and is cross-os compatible.
    
    Example usage:
    
    require("class.thumbnail.php");
    $t=new PHP_Thumbnail(50, 50, '%');  //set to 50% of default size
    $t->show("tst.gif", "alt=\"this image is at 50% real size\"");
    $t->set_size(50, 50);               //set to 50x50 pixels
    $t->show("tst.gif", "alt=\"this image is at 50x50 pixels\"");
    ====================================================
    Example of displaying thumbnails of all .gif files in a directory:
    
    require("class.thumbnail.php");
    $t=new PHP_Thumbnail(50, 50);  //set to 50x50 pixels
    $dir=opendir("somedirectory");
    while($img=readdir($dir)){
        if(strpos($img, ".gif")){
            $t->show($img, "alt=\"this image is at 50% real size\"");
            echo "<br>";
        }
    }
    
    
    This class has been tested with PHP 4.0.x on Windows 2000/IIS. This calss SHOULD
    work with PHP3 but is untested. Feel free to email me with any question, suggestions
    and/or bug reports.
    
    Notes:
        Yes, images in .gif format will probably look crappy when resized.
*/

    class PHP_Thumbnail
	{
    
        var $pct=true;
        var $height=0;
        var $width=0;
    
            function PHP_Thumbnail($w, $h, $pct=''){
            
            /*
                $w = width in pixels or percentage of the image's default width
                $h = height in pixels or percentage of the image's default height
                $measure = optional third argument. set it to '%' to use percentage, set it to anything but '%' (or leave it out completely) to use absolute pixels
            */
            
                if($pct != '%'){
                    $this->pct = false;
                    $this->width=abs($w);
                    $this->height=abs($h);
                }else
				{
                    $this->width=($w/100);
                    $this->height=($h/100);
                }
            }
            
            
        // exterior
        
            function show($img, $extra=''){
            
            /*
                $img = image file path
                $extra = any extra text you want in the <img> tag, i.e. 'alt', 'border' or 'onclick', etc
                $extra should look like this (single quotes or escaped doublequotes):
                "alt=\"the alt tag\" onmousover=\"location.href='page.html';\""
            */
            
                if(!file_exists($img)){
                    echo "<!-- file '$img' not found -->";
                    return false;
                }
                
                if(strlen($extra))
                    $extra = " ".$extra;
                
                if($this->pct){ //show 
                    $tmp = GetImageSize($img);
                    if($tmp){
                        $w=round($tmp[0]*$this->width);
                        $h=round($tmp[1]*$this->height);
                        echo "<img src=\"$img\" height=\"{$h}\" width=\"{$w}\"$extra>";
                    }else{
                        echo "<!-- file '$img' is not an image -->";
                    }
                }else{
                    echo "<img src=\"$img\" height=\"{$this->height}\" width=\"{$this->width}\"$extra>";
                }
            }
        
        function set_size($w, $h, $measure=''){
        
        /*
            this function allows you to dynamically change your image sizing without
            creating a new object
        */
        
            $this->PHP_Thumbnail($w, $h, $measure);
        }
    
    }

?>