# TinySA-CSV-convertor
Convert CSV file from TinySAapp to use with shure wireless workbench.


How to use script

A: Check Setting the PowerShell Execution Policy
  - Open PowerShell run as administrator.
	- Type " get-executionpolicy " to check policy.
	- Restricted - No scripts can be run. Windows PowerShell can be used only in interactive mode.
	- AllSigned - Only scripts signed by a trusted publisher can be run.
	- RemoteSigned - Downloaded scripts must be signed by a trusted publisher before they can be run.
	- Unrestricted - No restrictions; all scripts can be run.
    - This script can run with Unrestricted ONLY !
   	- Change PowerShell policy to Unrestricted, Type " set-executionpolicy unrestricted " and type " A " to continue .
    
 B: How to run script
  - Open script with PowerShell. [TinytoWWB.ps1]
  - Drag CSV file from TinySAapp to PowerShell for input file location and please Enter.
  - Drage same CSV file from TinySAapp to PowerShell for output file location, rename and please Enter.
