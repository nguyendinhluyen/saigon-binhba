<?php



class ConstLength{
	var $unit_char = true;
	var $count = 0;
	var $const_text = array();
	function const_length(){
        if (is_array($this->text)){////for array value
            for($i=0;$i<count($this->text);$i++){
                $return = $this->_re_const($this->text[$i]);
            }
        }
        else{///for string value
            $return = $this->_re_const($this->text);
        }

        return($this->const_text);
	}

    function breakEnter($value){
        $arr_tmp = array();

        $arr = explode("\n", $value);
        if (isset($arr[0])){
            foreach($arr as $row){
                if ($row!=''){
                    $arr_tmp[] = $row;
                }
            }
        }

        return $arr_tmp;

    }



     function _re_const($value){
        //$length = strlen($value);
		if ($this->unit_char){
			$length = mb_strlen ($value,$this->lang);	
		}else{
			$length = strlen($value);
		}
        

        if($length <= $this->max_length){

            $arr_tmp = $this->breakEnter($value);

            $width = 0;

            if (isset($arr_tmp[0])){

                $max = count($arr_tmp);
                for($i=0;$i<$max;$i++){
                    $this->const_text[$this->count] = $arr_tmp[$i];
                    $this->count++;
                }
            }

        }else{
			if ($this->unit_char){
				$tmp =  mb_substr($value,0,$this->max_length,$this->lang);//mb_substr($value, 0, $this->max_length, 'EUC-JP');
				 $width_tmp = strlen($tmp);	
			}else{
				$tmp =  mb_strimwidth($value,0,$this->max_length,'',$this->lang);//mb_substr($value, 0, $this->max_length, 'EUC-JP');
				$width_tmp = mb_strlen ($tmp,$this->lang);
			}
				
            //$tmp =  mb_strimwidth($value,0,$this->max_length,'',$this->lang);//mb_substr($value, 0, $this->max_length, 'EUC-JP');
			

            //$width_tmp = strlen($tmp);
			//$width_tmp = mb_strlen ($tmp,$this->lang);

            $arr_tmp = $this->breakEnter($tmp);

            $width = 0;
            $enter_count = 0;
            if (isset($arr_tmp[1])){

                $max = count($arr_tmp);
                for($i=0;$i<$max-1;$i++){
                    $this->const_text[$this->count] = $arr_tmp[$i];
                    $this->count++;
                }
				
				
                $width_left = strlen($arr_tmp[$max-1]);
		//		$width_left = mb_strlen($arr_tmp[$max-1], $this->lang);
				

                $extra = substr($value, $width_tmp - $width_left);

            }

            else{
             //   $this->const_text[$this->count] =
            //    mb_strimwidth($value,0,$this->max_length,'',$this->lang);
        //$width = strlen($this->const_text[$this->count]);
			   if ($this->unit_char){
			   		$this->const_text[$this->count] =
                    	mb_substr($value, 0, $this->max_length, $this->lang);	
			   }
			   else{
			   		$this->const_text[$this->count] =
               			 mb_strimwidth($value,0,$this->max_length,'',$this->lang);
        
			   }
               
                $width = strlen($this->const_text[$this->count]);

                $this->count++;

                $extra = substr($value, $width);
            }





            /*
            $this->const_text[$this->count] =
                    mb_substr($value, 0, $this->max_length, 'EUC-JP');
            //echo '<br/>'.$this->count.'~'.$this->const_text[$this->count].'~~COUNT='.strlen($this->const_text[$this->count]);
            $width = strlen($this->const_text[$this->count]);

            $this->count++;
            */
            $this->_re_const($extra);
        }
		
	 }
}   




?>
