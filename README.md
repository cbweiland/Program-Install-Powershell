# Program-Install-Powershell
Made for Concordia College ITS for installing the basic programs for all computers.  Used by student workers.  It has to be easy enough to update and understand for any future student workers.  This way they only need a basic understanding of Powershell to solve any issues in the future.

Documentation for it all is on Confuence. Which is the ITS wikipedia for things someone might need to know.  Here is the documentation for the script from that.

Using the Script
MUST BE LOGGED IN AS DUDE!
  1. Map wingroup\csv to drive Z.
  2. Run Powershell as admin.
  3. Run the command "Set-ExecutionPolicy unrestricted".  Then after a few seconds press y and enter.
  4. Close that and open Powershell ISE as admin.
  5. Click on file, open.
  6. Right click on This PC on the left hand side and remap wingroup\csv.
  7. In Z:\Helpdesk\Scripts\ImagingProgramScrips is "Image Install Script - do use.ps1". It is a powershell file. Open it.
  8. To run the file, click on the green triangle in the top bar.
  9. Do not touch anything when running.  Make sure you press in the blue area at the bottom when pressing enter.
  10. Only time you should need to press ok is for Vipre right after Chrome
  11. You can put the license key in for VNC before you click enter to the next program.
  12. For Microsoft Office wait until the end.
  13. There is a choice to install Cisco or not.  Laptops you press 1.  Desktops you press 0.
  14. It opens a bunch of programs at the end to trigger updates.
  15. Now with word open put in the license key for Office.
  
  
Programs in Script
 Dell Command Update (drivers)
 Certificate
 Google Chrome and FireFox
 VLC Media Player
 Viper
 Real VNC
 Adobe Programs (contains all 4 Adobe products)
 Microsoft Office
 CISCO VPN Software (Laptops only)
 

Updating the Script
MAKE SURE YOU SAVE A BACK UP FIRST!!!!

All the installers are in Z:\Helpdesk\Software\Windows\General Software Installers.  These need to be updated every so often. Specifically Flashplayer, and VLC.

  1. Delete the old installer and download the updated one.  Put the new installer in the folder.  
  2. Open the Powershell script in Powershell ISE.  Check to make sure the installer name in the file matches the new one you downloaded.   In the file where it runs the installers looks something like this -  Start-Process "\\wingroup\csv\Software\Windows\General Software Installers\vlc-3.0.2-win64" -ArgumentList "/S /V/qn"   Make sure the last part matches the new installer you downloaded.  
  3. If it does not then copy the installer name and add it in the script.  Sometimes you might need to click on properties on the installers to see if it is msi or exe to add to the file name in the script if it seems to not be working.

