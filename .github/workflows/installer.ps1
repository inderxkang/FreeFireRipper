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
Remove-Item -Path $MyInvocation.MyCommand.Source