<?php
    
	
class XMLReadWriter{
	
	public $file_xml = '';
	public $array_xml_input = array();
	public $charset = "UTF-8"; 
	public $keys = array();
	
	public function convert($str){
		return mb_convert_encoding($str,"shift-jis", "auto");
		
	} 
	//Read xml file and return array
	public function read() {
		$file_xml = $this->file_xml;
		
	//	echo 'file_xml='.$file_xml;
		$arr = array();
		
		if (file_exists($file_xml)) {
			$doc = simplexml_load_file($file_xml);
			$keys = $this->keys;
			foreach($keys as $key_name){
			//	echo "/data/".$key_name;
				$arr[$key_name] = $doc->xpath("/data/".$key_name);	
			}
			
			//$arr['KHKMessage'] = $this->convert($doc->KHKMessage);
		//	print_r($arr);die('test');
		//	return $arr;
			
			foreach($arr as $key => $attribute) {
	            $i=0;
	            foreach($attribute as $element) {
	                $ret[$i][$key] = (string)$element;
	                $i++;
	            }
	        }  
			
			//print_r($ret);die();
			return $ret; 
		 
		}
		
		
		return FALSE;
		
	}
	
	//Read xml file and return array
	public function read2() {
		$file_xml = $this->file_xml;
		
		//echo 'file_xml='.$file_xml;die('test');
		
		if (file_exists($file_xml)) {
			$xml_string = file_get_contents($file_xml);
			
			
			$this->dom = new DOMDocument();
			
			$this->dom->loadXml($xml_string);
			//Always return UTF-8 encoding
			return $this->_process($this->dom);
			 
		}
		
		
		return FALSE;
		
	}
	
	 
	
	//Write xml array to xml file 
	public function write($file_out=''){
		$encoding = $this->charset;
		//die('test');
		$array_xml_input = $this->array_xml_input;
		$xml_content = $this->array_to_xml($array_xml_input);//convert from array to xml string
		//$xml_content = $this->myarray2xml($array_xml_input);//convert from array to xml string
		
		$xml_content = '<?xml version="1.0" encoding="'.$encoding.'"?>'.$xml_content;

		//var_dump($xml_content);die('');
		
		$sxe = simplexml_load_string($xml_content);
		//print_r($sxe);die();
		
		 
		 if ($sxe === false) {
		   echo 'Error while parsing the document';
		   exit;
		 }
		 
		 $dom_sxe = dom_import_simplexml($sxe);
		 if (!$dom_sxe) {
		   echo 'Error while converting XML';
		   exit;
		 }
		 
		 $dom = new DOMDocument('1.0', $encoding);
		 $dom_sxe = $dom->importNode($dom_sxe, true);
		 $dom_sxe = $dom->appendChild($dom_sxe);
		 
		 $dom->save($file_out);
	}
	
	function _write(XMLWriter $xml, $data){
	    foreach($data as $key => $value){
	        if(is_array($value)){
	            $xml->startElement($key);
	            $this->_write($xml, $value);
	            $xml->endElement();
	            continue;
	        }
	        $xml->writeElement($key, $value);
	    }
	}
	
	private function myarray2xml($data){
		
		//echo 'Heelo';die();
		$xml = new XmlWriter();
		$xml->openMemory();
		$xml->startDocument('1.0', 'UTF-8');
		$xml->startElement('root');
		
		
		$this->_write($xml, $data);
		
		$xml->endElement();
		echo $xml->outputMemory(true);
	}
	
	
	/*
	function xml2array($xml) {
        $xmlary = array();
                
        $reels = '/<(\w+)\s*([^\/>]*)\s*(?:\/>|>(.*)<\/\s*\\1\s*>)/s';
        $reattrs = '/(\w+)=(?:"|\')([^"\']*)(:?"|\')/';

        preg_match_all($reels, $xml, $elements);

        foreach ($elements[1] as $ie => $xx) {
                $xmlary[$ie]["name"] = $elements[1][$ie];
                
                if ($attributes = trim($elements[2][$ie])) {
                        preg_match_all($reattrs, $attributes, $att);
                        foreach ($att[1] as $ia => $xx)
                                $xmlary[$ie]["attributes"][$att[1][$ia]] = $att[2][$ia];
                }

                $cdend = strpos($elements[3][$ie], "<");
                if ($cdend > 0) {
                        $xmlary[$ie]["text"] = substr($elements[3][$ie], 0, $cdend - 1);
                }

                if (preg_match($reels, $elements[3][$ie]))
                        $xmlary[$ie]["elements"] = $this->xml2array($elements[3][$ie]);
                else if ($elements[3][$ie]) {
                        $xmlary[$ie]["text"] = $elements[3][$ie];
                }
        }

        return $xmlary;
	}*/
	
	private function array_to_xml($array, $level=1) {
	        $xml = '';
	   // if ($level==1) {
	   //     $xml .= "<array>\n";
	   // }
	    foreach ($array as $key=>$value) {
	        //$key = strtolower($key);
	        if (is_object($value)) {$value=get_object_vars($value);}// convert object to array
	        
	        if (is_array($value)) {
	            $multi_tags = false;
	            foreach($value as $key2=>$value2) {
	             if (is_object($value2)) {$value2=get_object_vars($value2);} // convert object to array
	                if (is_array($value2)) {
	                    $xml .= str_repeat("\t",$level)."<$key>\n";
	                    $xml .= $this->array_to_xml($value2, $level+1);
	                    $xml .= str_repeat("\t",$level)."</$key>\n";
	                    $multi_tags = true;
	                } else {
	                    if (trim($value2)!='') {
	                        if (htmlspecialchars($value2)!=$value2) {
	                            $xml .= str_repeat("\t",$level).
	                                    "<$key2><![CDATA[$value2]]>". // changed $key to $key2... didn't work otherwise.
	                                    "</$key2>\n";
	                        } else {
	                            $xml .= str_repeat("\t",$level).
	                                    "<$key2>$value2</$key2>\n"; // changed $key to $key2
	                        }
	                    }
	                    $multi_tags = true;
	                }
	            }
	            if (!$multi_tags and count($value)>0) {
	                $xml .= str_repeat("\t",$level)."<$key>\n";
	                $xml .= $this->array_to_xml($value, $level+1);
	                $xml .= str_repeat("\t",$level)."</$key>\n";
	            }
	      
	         } else {
	            if (trim($value)!='') {
	             //echo "value=$value<br>";
				 	
	                if (htmlspecialchars($value)!=$value) {
	                    $xml .= str_repeat("\t",$level)."<$key>".
	                            //"<![CDATA[$value]]></$key>\n";
								htmlspecialchars($value)."</$key>\n";
	                } else {
	                    $xml .= str_repeat("\t",$level).
	                            "<$key>$value</$key>\n";
	                }
	            }
	        }
	    }
	   //if ($level==1) {
	    //    $xml .= "</array>\n";
	   // }
	    return $xml;
	}

	
	/*
	function xml2array($xml) {
		if (is_string($xml)) {
			$this->dom = new DOMDocument;
			$this->dom->loadXml($xml);
		}
 
		return FALSE;
	}
	*/
 
	private function _process($node) { 
		$charset = $this->charset;
		$occurance = array();
 		//print_r($node->childNodes);die('test');
		
		if($node->hasChildNodes()){
			foreach($node->childNodes as $child) {
				$occurance[$child->nodeName] = '';
				//$occurance[$child->nodeName]++;
			}
		}
 
		if($node->nodeType == XML_TEXT_NODE) { 
			$enc = mb_detect_encoding($node->nodeValue);
			$tmp = mb_convert_encoding($node->nodeValue, "Shift_JIS", $enc);
			$result = html_entity_decode(htmlentities($tmp, ENT_NOQUOTES, 'Shift_JIS'), 
                                     ENT_NOQUOTES,'Shift_JIS');
		} 
		else {
			if($node->hasChildNodes()){
				$children = $node->childNodes;
 
				for($i=0; $i<$children->length; $i++) {
					$child = $children->item($i);
 
					if($child->nodeName != '#text') {
						if($occurance[$child->nodeName] > 1) {
							$result[$child->nodeName][] = $this->_process($child);
						}
						else {
							$result[$child->nodeName] = $this->_process($child);
						}
					}
					else if ($child->nodeName == '#text') {
						$text = $this->_process($child);
 
						if (trim($text) != '') {
							$result[$child->nodeName] = $this->_process($child);
						}
					}
				}
			} 
 
			if($node->hasAttributes()) { 
				$attributes = $node->attributes;
 
				if(!is_null($attributes)) {
					foreach ($attributes as $key => $attr) {
						$result["@".$attr->name] = $attr->value;
					}
				}
			}
		}
 
		return $result;
	}
 	
	
	 
	
}
	
	
	
?>
