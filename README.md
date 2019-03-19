## SWMobileConnect-Windows8
Script to set up Sonicwall MobileConnect VPN connections on Windows 8+. Putting on Github to share with others.

## Usage
**Attention!** This script is not signed.   
If you want to run it anyway, open PoSH and enter the following:   
`Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process`   

It is assumed that MobileConnect is installed from the Windows store. You can still run the script without it, or while downloading.   
The script accepts 3 arguments (in order), Connection Name, Server, and (optionally) Port. The default port is 4433.

`.\sslvpn_setup.ps1 "VPN Connection" 198.51.100.56 4443`
