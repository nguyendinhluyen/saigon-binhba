<?php
class cache_tdw {
    var $file;
    var $path='cache/';
	var $ext ='.cache';
	var $r =0;
    function cache($path='cache/',$file)
	{
		$this->path = $path;
		$this->file = $file;
		if (is_dir($this->path)===false) 
		{
			mkdir($this->path,0777);
			ob_start();
			$this->r=1;
			return 0;
		}
		else if(file_exists($this->path.$this->file.$this->ext))
		{
			$FC = fopen($this->path.$this->file.$this->ext,'r');
			$menu = fread ($FC, filesize ($this->path.$this->file.$this->ext) );
			fclose($FC);
			return $menu;
		
		}
		else
		{
			return 0;
		}
    }
    function end($menu) 
	{	
		$fp = fopen($this->path.$this->file.$this->ext,'w'); 
		fputs($fp,$menu); 
		fclose($fp);
		
    }
}
?>