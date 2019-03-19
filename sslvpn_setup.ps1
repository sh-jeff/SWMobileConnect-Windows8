## Quick & Dirty script to set up MobileConnect VPN connections.
## Requires MobileConnect app to be installed (Windows 10)
## Windows 8.1 should have it built in.

## Get our Connection name, server (IP or DNS), and port
Param(
     [Parameter(Mandatory=$true, Position=0, HelpMessage="Name of the connection")]
     [string]$ConnectionName,
	 
	 [Parameter(Mandatory=$true, Position=1, HelpMessage="IP or DNS name of Sonicwall")]
	 [string]$Server,
	 
	 ## Default to 4433
	 [Parameter(Mandatory=$false, Position=2, HelpMessage="SSL Port (Defaults to 4433)")]
	 [string]$Port = "4433"
   )


## Build Custom XML
$xml = "<MobileConnect><Port>$Port</Port></MobileConnect>"
$sourceXml=New-Object System.Xml.XmlDocument
$sourceXml.LoadXml($xml)

## Add the connection
Add-VpnConnection -Name $ConnectionName -ServerAddress $Server -SplitTunneling $True -PluginApplicationID SonicWALL.MobileConnect_cw5n1h2txyewy -CustomConfiguration $sourceXml
read-host 'press enter to continue'
