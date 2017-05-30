<?php
class whois
{
	var $cmd ='';
	function checkWhois($domain,$ext)
	{
		switch($ext)
		{
			case 'com':
				$server ='whois.crsnic.net';
				$findtext = 'No match for';
			break;
			
			case 'eu':
				$server ='whois.eu';
				$findtext = 'FREE';
			break;
			
			case 'tv':
				$server ='whois.internic.net';
				$findtext = 'No match for';
			break;
			
			case 'ca':
				$server ='whois.cira.ca';
				$findtext = 'AVAIL';
			break;
			
			case 'de':
				$server ='whois.denic.de';
				$findtext = 'not found in database';
			break;
			
			case 'co.uk':
				$server ='whois.nic.uk';
				$findtext = 'No match for';
			break;
			
			case 'ws':
				$server ='whois.nic.ws';
				$findtext = 'No match for';
			break;
			
			case 'ro':
				$server ='whois.rotld.ro';
				$findtext = 'No entries found for the selected source';
			break;
			
			case 'biz':
				$server ='whois.crsnic.net';
				$findtext = 'Not found';
			break;
			
			case 'us':
				$server ='whois.nic.biz';
				$findtext = 'Not found';
			break;
			
			case 'name':
				$server ='whois.nic.name';
				$findtext = 'No match';
			break;
			
			case 'info':
				$server ='whois.afilias.net';
				$findtext = 'NOT FOUND';
			break;
			
			case 'org':
				$server ='whois.publicinterestregistry.net';
				$findtext = 'NOT FOUND';
			break;
			
			case 'net':
				$server ='whois.crsnic.net';
				$findtext = 'No match for ';
			break;
			default:
				return false;
		}
		$con = fsockopen($server, 80);
		if (!$con) return false;
		fputs($con, $domain.'.'.$ext."\r\n");
		$response = ' :';
		while(!feof($con))
		{
			$response .= fgets($con,128); 
		}
		fclose($con);
		if (strpos($response, $findtext))
		{
			return true;
		}
		else 
		{
			return false;   
		}
	}
	function set_whois_cmd()
	{
			if (file_exists('/usr/local/bin/whois'))
			{
				$this->cmd = '/usr/local/bin/whois';
			}
			elseif (file_exists('/usr/bin/whois'))
			{
				$this->cmd = '/usr/bin/whois';
			}
			elseif (file_exists('/bin/whois'))
			{
				$this->cmd = '/bin/whois';
			}
			else
			{
				die("<h1>Error:</h1>\n<p>Couldn't locate the 'whois' program.</p>");
			}
	}
	function query($domain) 
	{
		/**
		 * return the whois results with text linebreaks converted into html linebreaks 
		 */
		return nl2br(shell_exec(escapeshellcmd($this->cmd ." ". $domain)));
	}
}
?>