function Show-Menu
{
    param (
        [string]$Title = 'Cisco?'
        )
        Clear-Host
        Write-Host "============= $Title ============="

        Write-Host ""
        Write-Host "1: Yes install Cisco"
        Write-Host "2: No do not install Cisco"
        Write-Host "quit"
        Write-Host ""

                

        }

do
{
        'Dell'        
        Start-Process "\\wingroup\csv\Software\Windows\General Software Installers\Systems-Management_Application_H2CN6_WN_2.0.0_A00.exe" /s
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\dell.vbs"
        
        Start-Sleep -s 6
        
        'Cert'       
        Start-Process "\\wingroup\csv\Software\Windows\General Software Installers\certs\CordRootCA2026.cer"
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\certAuto.vbs"
        
        Pause

        'FireFox'        
        Start-Process "\\wingroup\csv\Software\Windows\General Software Installers\Firefox Setup 60.0.1.exe" /s
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\AdobeAuto.vbs"

        Pause

        'Chrome'
        $Path = $env:TEMP; 
        $Installer = "chrome_installer.exe"; 
        Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer; 
        Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer;

        'Viper'
        Start-Process "\\wingroup\csv\Software\Windows\Vipre Business\Vipre Cloud Agents - Use this\vipre_agent_ActiveProtection_10.0.7238.msi" /quiet

        Pause

        'VNC'  
        & "\\wingroup\csv\Software\Windows\RealVNC Connect\New License 11222017.txt"     
        Start-Process "\\wingroup\csv\Software\Windows\RealVNC Connect\VNC-Server-6.2.1-Windows-en-64bit.msi"
        Start-Sleep -s 2
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\VNCAuto.vbs"



        Pause
        
        'Adobe'
        Copy-Item "\\wingroup\csv\Software\Windows\General Software Installers\flashplayer30pp_xa_install.exe" -Destination C:\Users\dude\Desktop

        Start-Sleep -s 1
                
        Start-Process "\\wingroup\csv\Software\Windows\General Software Installers\AdobeAIRInstaller.exe" /S
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\AdobeAuto.vbs"

        Start-Sleep -s 8
        
        Start-Process "\\wingroup\csv\Software\Windows\General Software Installers\Shockwave_Installer_Slim.exe" /S
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\AdobeAuto.vbs"

        Start-Sleep -s 8
        
        Start-Process "\\wingroup\csv\Software\Windows\General Software Installers\AcroRdrDC1502320053_en_US" -ArgumentList "/sPB /rs"
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\AdobeAuto.vbs"

        Start-Sleep -s 16
                
        Start-Process "C:\Users\dude\Desktop\flashplayer30pp_xa_install.exe" /S
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\AdobeAuto.vbs"
        
        Pause

        'VLC'
        Start-Process "\\wingroup\csv\Software\Windows\General Software Installers\vlc-3.0.2-win64" -ArgumentList "/S /V/qn"
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\AdobeAuto.vbs"

        Pause

        'Microsoft Office'
        Start-Process "\\wingroup\csv\Software\Windows\Microsoft Office\Office Pro Plus 2016\Office 2016 Pro Plus 32Bit\setup.exe" 
        & "\\wingroup\csv\Software\Windows\Microsoft Office\Office Pro Plus 2016\Office 2016 key.txt"

        Pause

Show-Menu -Title 'Cisco?'
$selection = Read-Host "Please make a selection"
switch ($selection)
{
    '1' {

        'CISCO VPN Software'
        Start-Process "\\wingroup\csv\Software\Windows\Cisco VPN Software\Cisco VPN Client CURRENT\anyconnect-win-3.1.13015-pre-deploy-k9.msi"
        Start-Process "\\wingroup\csv\Helpdesk\Scripts\ImagingProgramScrips\Auto Keys\VPNAuto.vbs"
        Copy-item "\\wingroup\csv\Software\Windows\Cisco VPN Software\Cisco VPN and Remote Desktop Instructions.docx" -Destination C:\Users\public\Desktop

        Pause

        Start-Process "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
        Start-Process "C:\Program Files (x86)\VIPRE Business Agent\sbamui.exe"
        Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe"
        Start-Process "C:\Program Files (x86)\Microsoft Office\Office16\WINWORD.EXE"
        

        } '2'{

        Start-Process "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
        Start-Process "C:\Program Files (x86)\VIPRE Business Agent\sbamui.exe"
        Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe"
        Start-Process "C:\Program Files (x86)\Microsoft Office\Office16\WINWORD.EXE"

        }

        
    }
    pause
}
until ($selection -eq 'quit')
