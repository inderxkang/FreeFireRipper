##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uK1
##Nc3NCtDXThU=
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiW5
##OsHQCZGeTiiZ4tI=
##OcrLFtDXTiW5
##LM/BD5WYTiiZ4tI=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+VslQ=
##M9jHFoeYB2Hc8u+Vs1Q=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWJ0g==
##OsfOAYaPHGbQvbyVvnQX
##LNzNAIWJGmPcoKHc7Do3uAuO
##LNzNAIWJGnvYv7eVvnQX
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnQX
##P8HPFJGEFzWE8tI=
##KNzDAJWHD2fS8u+Vgw==
##P8HSHYKDCX3N8u+Vgw==
##LNzLEpGeC3fMu77Ro2k3hQ==
##L97HB5mLAnfMu77Ro2k3hQ==
##P8HPCZWEGmaZ7/K1
##L8/UAdDXTlaDjofG5iZk2WrqT2ElZ9aPq7ezy5OA2+//sDHWWaYTXl92mC76Alm0SeIXR7sQrNRx
##Kc/BRM3KXhU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
$param1=$args[0]

$line1 = @"
                                                               
 ######   ##      ##       ##    ##    ###    ##    ##  ######   
##    ##  ##  ##  ##       ##   ##    ## ##   ###   ## ##    ##  
##        ##  ##  ##       ##  ##    ##   ##  ####  ## ##        
##   #### ##  ##  ##       #####    ##     ## ## ## ## ##   #### 
##    ##  ##  ##  ##       ##  ##   ######### ##  #### ##    ##  
##    ##  ##  ##  ##       ##   ##  ##     ## ##   ### ##    ##  
 ######    ###  ###        ##    ## ##     ## ##    ##  ######
                                                              
"@
Write-Host $line1

$USER = $param1

if($USER -eq 'FreeFireRipper'){
   write-host("WELCOME TO FFRIPPER BY GW KANG")
}else {
   write-host("MAY BE YOU ARE NOT AUTHORISED OR HAVE YOU EDITED THIS CODE????"); write-host("NOW THE RIPPER WILL CLOSE THE SETUP"); exit
}

cd C:\Users\$Env:USERNAME\Documents

Invoke-WebRequest -Uri "https://drive.usercontent.google.com/download?id=1yB02lRiKkC-pP6io0TIW4G4fRABCsNLB&export=download&authuser=0&confirm=t&uuid=b9ab809c-aba9-4ea1-a7a5-7559bb2a6a72&at=AN_67v1BH-3H0--mhkmgcqn9Tmnl%3A1728122378008" -Outfile ffripper.zip

$sevenZipPath = "C:\Program Files\7-Zip\7z.exe"

$archivePath = "C:\Users\$Env:USERNAME\Documents\ffripper.zip"

$destinationPath = "C:\Users\$Env:USERNAME\Documents"

Start-Process -FilePath $sevenZipPath -ArgumentList "x", "`"$archivePath`"", "-o`"$destinationPath`"", "-y" -WindowStyle Hidden

Write-Output "Extraction started. Running the next command in parallel."

choco install chrome-remote-desktop-host googlechrome -y -r --no-progress

Write-Host "Setup Almost Done"

New-Item -Path "C:\Users\$Env:USERNAME\Desktop\GWKANG" -ItemType Directory

New-Object -ComObject WScript.Shell | %{ $_.CreateShortcut("C:\Users\$Env:USERNAME\Documents\GWKANG.lnk") } | %{ $_.TargetPath = "C:\Users\$Env:USERNAME\Desktop\GWKANG"; $_.Save() }

Start-Process "C:\Users\$Env:USERNAME\Documents\ninjaripper\x86\ninjaripper.exe" 

New-Item -ItemType SymbolicLink -Target "C:\Users\$Env:USERNAME\Documents\FenixGaga\Engine\ProjectTitan.exe" -Path "C:\Users\$Env:USERNAME\Desktop\Free Fire.lnk"

New-Item -ItemType SymbolicLink -Target "C:\Users\$Env:USERNAME\Documents\ninjaripper\x86\NinjaRipper.exe" -Path "C:\Users\$Env:USERNAME\Desktop\Ninjaripper.lnk"

New-Item -ItemType SymbolicLink -Target "C:\Users\$Env:USERNAME\Documents\noesis\Noesis64.exe" -Path "C:\Users\$Env:USERNAME\Desktop\Noesis.lnk"

New-Item -ItemType SymbolicLink -Target "C:\Users\$Env:USERNAME\Documents\FenixGaga\Engine\ProjectTitan.exe" -Path "C:\Users\$Env:USERNAME\Documents\Free Fire.lnk"

$line2 = @"
  ___ _   _ ___ ___  ___ ___ ___ ___ ___    _____      __  _  __   _   _  _  ___ 
 / __| | | | _ ) __|/ __| _ \_ _| _ ) __|  / __\ \    / / | |/ /  /_\ | \| |/ __|
 \__ \ |_| | _ \__ \ (__|   /| || _ \ _|  | (_ |\ \/\/ /  | ' <  / _ \| .` | (_ |
 |___/\___/|___/___/\___|_|_\___|___/___|  \___| \_/\_/   |_|\_\/_/ \_\_|\_|\___|
                                                                                 
"@
Write-Host $line2
