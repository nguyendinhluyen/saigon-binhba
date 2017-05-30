<?php
/*******************************************************************************
 * System           : sega
 * Sub System       : XmlParse
 * File Name        : XmlParse.class.php
 * Description      : Convert XML to Data return array.
 * Version          : 1.0
 * ------------- ----- ---------------- ----------------------------------------
 *  Date          Ver.  Editor           Description
 * ------------- ----- ---------------- ----------------------------------------
 *  2009/12/09    1.0   Hieunt       
 *******************************************************************************
 * MEMO * COMMENT * ETC
 * @require				
		- function commentary of the methods public:
			1. load_xml
			2. parse_xml_to_arr
 * example:
		$obj_xml_parse = new XmlParser();
		$str_xml_path = 'http://xml.example.com/analytics/analytics.xml';
		$obj_xml_parse->load_xml($str_xml_path);  #$strXmlPath = the path of xml 
		if(! $obj_xml_parse->error_no )
		{
			$arrData = $obj_xml_parse->parse_xml_to_arr('UTF-8');
		}
		else
		{
			#Error
		}
 ******************************************************************************/
class XmlParser
{
	/**
	* Internal PHP XML parser
	*
	* @var	resource
	*/
	protected $obj_xml_parser;
	
	/**
	* Error number (0 for no error)
	*
	* @var	integer
	*/
	protected $int_error_no = 0;

	/**
	* The actual XML data being processed
	*
	* @var	string
	*/
	protected $str_xml_data = '';
	
	/**
	* The path of file XML
	*
	* @var	string
	*/
	protected $str_path_xml = '';

	/**
	* The final, outputtable data
	*
	* @var	array
	*/
	protected $arr_parsed_data = array();

	/**
	* Intermediate stack value used while parsing.
	*
	* @var	array
	*/
	protected $arr_stack = array();

	/**
	* Current CData being parsed
	*
	* @var	string
	*/
	protected $str_cdata = '';

	/**
	* Number of tags open currently
	*
	* @var	integer
	*/
	protected $int_tag_count = 0;

	/**
	* Kludge to include the top level element since this parser was written to not return it and now all of the XML functions assume it to not be there
	*
	* @var	boolean
	*/
	protected $bol_include_first_tag = false;

	/**
	* Constructor
	*
	* @param	mixed	XML data or boolean false
	* @param	string	Path to XML file to be parsed
	*/
	function XmlParser($xml=false, $str_path = '')
	{
		if ($xml !== false)
		{
			$this->str_xml_data = $xml;
		}
		else
		{
			if (empty($str_path))
			{
				$this->int_error_no = 1;
			}
			else if (!($this->str_xml_data = file_get_contents($str_path)))
			{
				$this->int_error_no = 2;
			}
		}
		$this->str_path_xml = $str_path;
	}
	
	/**
	* get & set function
	**/
	//obj_xml_parser
	public function get_xml_parser () {
		return $this->obj_xml_parser;
	}

	public function set_xml_parser ($obj_xml_parser) {
		$this->obj_xml_parser = $obj_xml_parser;
	}
	//int_error_no
	public function get_error_no () {
		return $this->int_error_no;
	}
	public function get_message_error () {
		$str_message = '';
		if($this->int_error_no==1)
			$str_message = 'xml path is empty';
		else if($this->int_error_no==2)
			$str_message = 'xml file is error , error line ' . $this->error_line();
		if($this->int_error_no==3)
			$str_message = 'error not create xml parser';
		return $str_message;
	}
	//arr_parsed_data
	public function get_parsed_data () {
		return $this->arr_parsed_data;
	}
	
	public function get_stack () {
		return $this->arr_stack;
	}
	//str_xml_data
	public function get_xml_data () {
		return $this->str_xml_data;
	}
	
	public function set_xml_data ($str_xml_data) {
		$this->str_xml_data = $str_xml_data;
	}	
	//str_cdata
	public function get_cdata () {
		return $this->str_cdata;
	}

	public function set_cdata ($str_cdata) {
		$this->str_cdata = $str_cdata;
	}
	//getTagCount
	public function getTagCount () {
		return $this->int_tag_count;
	}

	public function setTagCount ($int_tag_count) {
		$this->int_tag_count = $int_tag_count;
	}
	//get_include_first_tag
	public function get_include_first_tag () {
		return $this->bol_include_first_tag;
	}

	public function set_include_first_tag ($bol_include_first_tag) {
		$this->bol_include_first_tag = $bol_include_first_tag;
	}
	//str_path_xml
	public function get_path_xml () {
		return $this->str_path_xml;
	}

	public function set_path_xml ($str_path_xml) {
		$this->str_path_xml = $str_path_xml;
	}
	
	/**
	* Parses XML document into an array
	*
	* @param	string	Encoding of the inputted XML file
	* @param	bool	Empty the XML data string after parsing
	*
	* @return	mixed	array or false on error
	*/
	public function parse_xml_to_arr($strEncoding = 'ISO-8859-1', $bol_empty_data = true)
	{
		if (empty($this->str_xml_data) || $this->int_error_no > 0)
		{
			return false;
		}

		if (!($this->obj_xml_parser = xml_parser_create($strEncoding)))
		{
			$this->int_error_no = 3;//error not create xml parser
			return false;
		}
		//start to processing parser
		xml_parser_set_option($this->obj_xml_parser, XML_OPTION_SKIP_WHITE, 0);
		xml_parser_set_option($this->obj_xml_parser, XML_OPTION_CASE_FOLDING, 0);
		xml_set_character_data_handler($this->obj_xml_parser, array(&$this, 'handle_cdata'));
		xml_set_element_handler($this->obj_xml_parser, array(&$this, 'handle_element_start'), array(&$this, 'handle_element_end'));
		
		xml_parse($this->obj_xml_parser, $this->str_xml_data);
		$err = xml_get_error_code($this->obj_xml_parser);

		if ($bol_empty_data)
		{
			$this->str_xml_data = '';
			$this->arr_stack = array();
			$this->str_cdata = '';
		}

		if ($err)//check error
		{
			return false;
		}

		xml_parser_free($this->obj_xml_parser);
		
		//end to processing parse

		return $this->arr_parsed_data;		
	}	

	/**
	* XML parser callback. Handles CDATA values.
	*
	* @param	resource	Parser that called this
	* @param	string		The CDATA
	*/
	protected function handle_cdata(&$obj_parser, $str_data)
	{
		$this->str_cdata .= $str_data;
	}

	/**
	* XML parser callback. Handles tag opens.
	*
	* @param	resource	Parser that called this
	* @param	string		The name of the tag opened
	* @param	array		The tag's attributes
	*/
	protected function handle_element_start(&$obj_parser, $str_name, $arr_attribs)
	{
		$this->str_cdata = '';

		foreach ($arr_attribs AS $key => $val)
		{
			if (preg_match('#&[a-z]+;#i', $val))
			{
				$arr_attribs["$key"] = unhtmlspecialchars($val);
			}
		}
		if(count($arr_attribs)>0) $arr_attribs = array('item_attributes'=>$arr_attribs);

		array_unshift($this->arr_stack, array('name' => $str_name, 'attribs' => $arr_attribs, 'tag_count' => ++$this->int_tag_count));
	}

	/**
	* XML parser callback. Handles tag closes.
	*
	* @param	resource	Parser that called this
	* @param	string		The name of the tag closed
	*/
	protected function handle_element_end(&$obj_parser, $str_name)
	{
		$tag = array_shift($this->arr_stack);
		if ($tag['name'] != $str_name)
		{
			// there's no reason this should actually happen -- it'd mean invalid xml
			return;
		}

		$output = $tag['attribs'];

		if (trim($this->str_cdata) !== '' OR $tag['tag_count'] == $this->int_tag_count)
		{
			if (sizeof($output) == 0)
			{
				$output = $this->unescape_cdata($this->str_cdata);
			}
			else
			{
				$this->add_node($output, 'value', $this->unescape_cdata($this->str_cdata));
			}
		}

		if (isset($this->arr_stack[0]))
		{
			$this->add_node($this->arr_stack[0]['attribs'], $str_name, $output);
		}
		else
		{
			// popped off the first element
			// this should complete parsing
			if ($this->bol_include_first_tag)
			{
				$this->arr_parsed_data = array($str_name => $output);
			}
			else
			{
				$this->arr_parsed_data = $output;
			}
		}
		
		$this->str_cdata = '';
	}

	/**
	* Returns parser error string
	*
	* @return	mixed error message
	*/
	public function error_string()
	{
		if ($error_string = @xml_error_string($this->error_code()))
		{
			return $error_string;
		}
		else
		{
			return 'unknown';
		}
	}

	/**
	* Returns parser error line number
	*
	* @return	int error line number
	*/
	public function error_line()
	{
		if ($errorline = @xml_get_current_line_number($this->obj_xml_parser))
		{
				return $errorline;
		}
		else
		{
			return 0;
		}
	}

	/**
	* Returns parser error code
	*
	* @return	int error line code
	*/
	public function error_code()
	{
		if ($errorcode = @xml_get_error_code($this->obj_xml_parser))
		{
			return $errorcode;
		}
		else
		{
			return 0;
		}
	}

	/**
	* Adds node with appropriate logic, multiple values get added to array where unique are their own entry
	*
	* @param	array	Reference to array node has to be added to
	* @param	string	Name of node
	* @param	string	Value of node
	*
	*/
	public function add_node(&$arr_children, $str_name, $str_value)
	{
		if (!is_array($arr_children) OR !in_array($str_name, array_keys($arr_children)))
		{ // not an array or its not currently set
			$arr_children[$str_name][] = $str_value;
		}
		else if (is_array($arr_children[$str_name]) AND isset($arr_children[$str_name][0]))
		{ // its the same tag and is already an array
			$arr_children[$str_name][] = $str_value;
		}
		else
		{  // its the same tag but its not been made an array yet
			$arr_children[$str_name] = array($arr_children[$str_name]);
			$arr_children[$str_name][] = $str_value;
		}
	}

	/**
	* Adds node with appropriate logic, multiple values get added to array where unique are their own entry
	*
	* @param	string	XML to have any of our custom CDATAs to be made into CDATA
	*
	*/
	public function unescape_cdata($str_xml)
	{
		static $arr_find, $arr_replace;

		if (!is_array($arr_find))
		{
			$arr_find = array('�![CDATA[', ']]�', "\r\n", "\n");
			$arr_replace = array('<![CDATA[', ']]>', "\n", "\r\n");
		}

		return str_replace($arr_find, $arr_replace, $str_xml);
	}
	
	public function load_xml($str_file='')
	{
		if( $str_file )
		{
			ob_start();
				$this->str_xml_data = file_get_contents($str_file);
			ob_end_clean();
			if( $this->str_xml_data )
			{
				$this->int_error_no=0;
				$this->str_path_xml = $str_file;
				return $str_file;
			}
			else return null;
		}
		return null;
	}

	public function load_xml_data($str_xml_data='')
	{
		if( is_string($str_xml_data) )
		{
			ob_start();
				$this->str_xml_data = $str_xml_data;
			ob_end_clean();
			if( $this->str_xml_data )
			{
				$this->int_error_no=0;
				return $str_xml_data;
			}
			else return null;
		}
		return null;
	}	
	public function saveArrToXml($arrData,$strFilePath,$strNameRoot)
	{
		$doc = new DOMDocument();
		$doc->encoding = 'UTF-8';
  		$root = $doc->createElement($strNameRoot);		
		$root = $this->createArrToXml($doc,$root,$arrData);
		$doc->appendChild($root);
		if (!$doc->save($strFilePath)) {
  			return false;
  		}
		return true;
	}
	function createArrToXml($doc,&$root,$arrData)
	{
		foreach($arrData as $strKey=>$objData)
		{
			for($i=0;$i<=count($objData);$i++)
			{
				$subroot = $doc->createElement($strKey);
				if(!isset($objData[$i])) break;
				if(is_array($objData[$i]))
				{				
					if(isset($objData[$i]['item_attributes']))
					{
						//add item_attributes
						foreach($objData[$i]['item_attributes'] as $strKAttr=>$strDataAttr)
						{
							$attr = $subroot->setAttributeNode(new DOMAttr($strKAttr, $strDataAttr));
						}
					}
					if(isset($objData[$i]['value']))
					{
						$subroot->appendChild($doc->createTextNode($objData[$i]['value'][0]));
						$root->appendChild($subroot);
					}
					else
					{
						if($strKey=='item_attributes') continue;						
						$temp = $this->createArrToXml($doc,$subroot,$objData[$i]);					
						$subroot = $temp;
						$root->appendChild($subroot);
					}
				}
				else
				{			
					$subroot->appendChild($doc->createTextNode($objData[$i]));
					$root->appendChild($subroot);
				}
			}
		}
		return $root;
	}
	
}// end class

?>