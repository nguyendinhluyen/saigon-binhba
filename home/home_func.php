<?php
function GetPageInfo($key)
{
	global $title,$keywords,$description;
	$row			= GetOneRow('title,keywords,description ','keywords','page_key ="'.$key.'" and language="'.$_SESSION['lag'].'"');
	$title 			= $row['title'];
	$keywords 		= $row['keywords'];
	$description	= $row['description'];
}

function __autoload($className) { 
      if (file_exists($className . '.php')) { 
          require_once $className . '.php'; 
          return true; 
      } 
    return false; 
} 
?>