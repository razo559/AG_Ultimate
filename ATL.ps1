
Start-Transcript -Path C:\windows\temp\ATL_QC_Log.txt -Append
Function RequireAdmin {
	If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
		Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
		Exit
	}
}
RequireAdmin
Add-Type -AssemblyName PresentationFramework, System.Drawing, System.Windows.Forms, WindowsFormsIntegration

[System.Windows.Forms.Application]::EnableVisualStyles()
$Form                            = New-Object system.Windows.Forms.Form
$SccmText                        = New-Object system.Windows.Forms.Label
$SccmCheckBox1                   = New-Object system.Windows.Forms.CheckBox
$SccmCheckBox2                   = New-Object system.Windows.Forms.CheckBox
$SelectSchool                    = New-Object system.Windows.Forms.Label
$CheckBox1                       = New-Object system.Windows.Forms.CheckBox
$CheckBox2                       = New-Object system.Windows.Forms.CheckBox
$CheckBox3                       = New-Object system.Windows.Forms.CheckBox
$CheckBox4                       = New-Object system.Windows.Forms.CheckBox
$CheckBox5                       = New-Object system.Windows.Forms.CheckBox
$CheckBox6                       = New-Object system.Windows.Forms.CheckBox
$CheckBox7                       = New-Object system.Windows.Forms.CheckBox
$CheckBox8                       = New-Object system.Windows.Forms.CheckBox
$CheckBox9                       = New-Object system.Windows.Forms.CheckBox
$Button                          = New-Object system.Windows.Forms.Button
$Button2                         = New-Object system.Windows.Forms.Button
$Button3                         = New-Object system.Windows.Forms.Button
$pictureBox                      = New-Object Windows.Forms.PictureBox
$systext                         = New-Object system.Windows.Forms.Label
$systext1                        = New-Object system.Windows.Forms.Label


#-- Form Begin
$form.StartPosition              = 'CenterScreen'
$Form.ClientSize                 = '750,620'
$Form.text                       = "AG ATL IT Department | Internal Use Only"
$Form.TopMost                    = $true
$form.MaximizeBox                = $False
$form.MinimizeBox                = $False
$form.FormBorderStyle            = 'FixedDialog'
###
$iconBase64      = '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'
$iconBytes       = [Convert]::FromBase64String($iconBase64)
$stream          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
$stream.Write($iconBytes, 0, $iconBytes.Length);
$iconImage       = [System.Drawing.Image]::FromStream($stream, $true)
$Form.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())

$base64String = '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'
$imageBytes = [Convert]::FromBase64String($base64String)
$ms = New-Object IO.MemoryStream($imageBytes, 0, $imageBytes.Length)
$ms.Write($imageBytes, 0, $imageBytes.Length);
$image1 = [System.Drawing.Image]::FromStream($ms, $true)
$image1.Save("C:\Users\Public\Pictures\AG_logo_temp.png")

$image = [System.Drawing.Image]::Fromfile("C:\Users\Public\Pictures\AG_logo_temp.png")   
$pictureBox.width=320
$pictureBox.height=240
$pictureBox.top=10
$pictureBox.left=23
$pictureBox.Image=$image

###
$User2 = (get-wmiobject Win32_ComputerSystem).UserName.Split('\')[1]
$SiteCode = "CM1"
$SCCMServer = "pw1appsccm01.ibddomain.net"
#########################################################################################################
#################################SCCM###################################################################
  $FunctionReturnedResults = Get-WmiObject -Namespace root\sms\site_$SiteCode -ComputerName $SCCMServer -Query "select * from SMS_UserMachineRelationship WHERE UniqueUserName like'%$User2%' AND IsActive = '1' AND Types = '1'" | Select-Object -ExpandProperty ResourceName
  #$SccmB = Get-WmiObject -Namespace root\sms\site_$SiteCode -ComputerName $SCCMServer -Query "select * from SMS_UserMachineRelationship WHERE ResourceName like '%$Device%' AND IsActive = '1' AND Types = '1'"
  $Arr = $FunctionReturnedResults | foreach split " " # | Out-File c:\Temp\Temp.txt
  #$Arr1 = Get-Content "c:\Temp\Temp.txt"
  Write-Host = "Test $Arr"

  ####
  #Test Removal
   #$FunctionReturnedResults[0] | Remove
   # $FunctionReturnedResults[1]
  ####
  $Count = $FunctionReturnedResults.Count # Measure the number of arrayed entries in the results
     If ($Count -ne 1)  # i.e. If we find multiple entries...
	     {
		            Write-Host "SCCM Device Affinity -- Found $Count workstations with a user-affinity relationship:" -ForegroundColor Green
                    # Get the number of multiple results
                    $NumberOfMachines = $FunctionReturnedResults.Length
                    Write-Host $FunctionReturnedResults -ForegroundColor Green
                    Write-Host ""
                    $PrimaryUserDevice = $FunctionReturnedResults
                    $PUD1 = $PrimaryUserDevice[0]
                    $PUD2 = $PrimaryUserDevice[1]
                    foreach($comp1 in $FunctionReturnedResults){
                    $comp1 = $FunctionReturnedResults}
                    Write-Host $PUD1 -ForegroundColor Green
                    Write-Host $PUD2 -ForegroundColor Red
                    }
########################################################################################################
#########################################################################################################

#########################################################################################################

#########################################################################################################
$Model = (Get-WmiObject -Class:Win32_ComputerSystem).Model
$Device = (Get-CimInstance -ClassName Win32_ComputerSystem).Name
$Bios = (Get-WmiObject -Class Win32_BIOS).SMBIOSBIOSVersion
$systext.text               = "Current Computer`r`nModel: $Model `r`nComputer Name: $device`r`nBios Version: $Bios "
$systext.AutoSize           = $true
$systext.width              = 25
$systext.height             = 10
$systext.location           = New-Object System.Drawing.Point(450,25)
$systext.Font               = 'Arial,13'
$systext.BackColor = 'black'
$systext.ForeColor = 'white'


#$systext1.text               = "Test Space"
#$systext1.AutoSize           = $true
#$systext1.width              = 25
#$systext1.height             = 10
#$systext1.location           = New-Object System.Drawing.Point(450,55)
#$systext1.Font               = 'Microsoft Sans Serif,12'

#########################################################################################################

#########################################################################################################


$SelectSchool.text               = "STEP 1 `nSelect Task to Complete:"
$SelectSchool.AutoSize           = $true
$SelectSchool.width              = 25
$SelectSchool.height             = 10
$SelectSchool.location           = New-Object System.Drawing.Point(23,120)
$SelectSchool.Font               = 'Microsoft Sans Serif,14'

$CheckBox9.text                  = "Power AC - Do Nothing on Lid Close"
$CheckBox9.AutoSize              = $false
$CheckBox9.width                 = 250
$CheckBox9.height                = 20
$CheckBox9.location              = New-Object System.Drawing.Point(23,190)
$CheckBox9.Font                  = 'Microsoft Sans Serif,12'
$CheckBox9.Checked               = $false
$CheckBox9.Add_Click({
    If ($CheckBox9.Checked -eq $true){
        $CheckBox9.BackColor = 'yellow'
        $form.Refresh()
    }
    Elseif($CheckBox9.Checked -eq $false) { $CheckBox9.BackColor = 'Transparent'}
})

$CheckBox1.text                  = "Dock Driver WD15"
$CheckBox1.AutoSize              = $false
$CheckBox1.width                 = 250
$CheckBox1.height                = 20
$CheckBox1.location              = New-Object System.Drawing.Point(23,210)
$CheckBox1.Font                  = 'Microsoft Sans Serif,12'
$CheckBox1.Checked               = $false
$CheckBox1.Add_Click({
    If ($CheckBox1.Checked -eq $true){
        $Checkbox1.BackColor = 'yellow'
        $form.Refresh()
    }
    Elseif($CheckBox1.Checked -eq $false) { $Checkbox1.BackColor = 'Transparent'}
})


$CheckBox2.text                  = 'Dock Driver D6000'
$CheckBox2.AutoSize              = $false
$CheckBox2.width                 = 200
$CheckBox2.height                = 20
$CheckBox2.location              = New-Object System.Drawing.Point(23,230)
$CheckBox2.Font                  = 'Microsoft Sans Serif,12'
$CheckBox2.Checked               = $false
$CheckBox2.Add_Click({
    If ($CheckBox2.Checked -eq $true){
        $Checkbox2.BackColor = 'yellow'
        $form.Refresh()
    }
    Elseif($CheckBox2.Checked -eq $false) { $Checkbox2.BackColor = 'Transparent'}
})

$CheckBox3.text                  = "Dock Driver WD19TBS"
$CheckBox3.AutoSize              = $false
$CheckBox3.width                 = 200
$CheckBox3.height                = 20
$CheckBox3.location              = New-Object System.Drawing.Point(23,250)
$CheckBox3.Font                  = 'Microsoft Sans Serif,12'
$CheckBox3.Checked               = $false
$CheckBox3.Add_Click({
    If ($CheckBox3.Checked -eq $true){
        $Checkbox3.BackColor = 'yellow'
        #[System.Windows.MessageBox]::Show('Please note a Reboot is required after updates finish installing','BB IT DEPARTMENT','ok','Error')
           # [System.Windows.MessageBox]::Show('Please note a Reboot is required after updates finish installing','BB IT DEPARTMENT','ok','Info')
        $form.Refresh()
    }
    Elseif($CheckBox3.Checked -eq $false) { $Checkbox3.BackColor = 'Transparent'}
})



$CheckBox6.text                  = "Copy Google Bookmarks"
$CheckBox6.AutoSize              = $false
$CheckBox6.width                 = 260
$CheckBox6.height                = 27
$CheckBox6.location              = New-Object System.Drawing.Point(23,350)
$CheckBox6.Font                  = 'Microsoft Sans Serif,12'
$CheckBox6.Checked               = $false
$CheckBox6.Add_Click({
    If ($CheckBox6.Checked -eq $true){
        $CheckBox6.BackColor = 'yellow'
        $ComboBox3.Enabled = $true
        $ComboBox2.Enabled = $true
        $form.Refresh()
    }
    Elseif($CheckBox6.Checked -eq $false) { $CheckBox6.BackColor = 'Transparent'
    $ComboBox3.Enabled = $false
    $ComboBox2.Enabled = $false}
})

$CheckBox7.text                  = "Copy Outlook Signatures"
$CheckBox7.AutoSize              = $false
$CheckBox7.width                 = 260
$CheckBox7.height                = 30
$CheckBox7.location              = New-Object System.Drawing.Point(23,370)
$CheckBox7.Font                  = 'Microsoft Sans Serif,12'
$CheckBox7.Checked               = $false
$CheckBox7.Add_Click({
    If ($CheckBox7.Checked -eq $true){
        $CheckBox7.BackColor = 'yellow'
        $ComboBox3.Enabled = $true
        $ComboBox2.Enabled = $true
        $form.Refresh()
    }
    Elseif($CheckBox7.Checked -eq $false) { $CheckBox7.BackColor = 'Transparent'
    $ComboBox3.Enabled = $false
    $ComboBox2.Enabled = $false}
})

####
$label                           = New-Object System.Windows.Forms.Label
$label.Location                  = New-Object System.Drawing.Point(23,435)
$label.Size                      = New-Object System.Drawing.Size(200,20)
$label.Text                      = 'Enter UserName:'
$label.Font                      = New-Object System.Drawing.Font("Times", 11)
$form.Controls.Add($label)
#------------------------------

$ComboBox2                       = New-Object System.Windows.Forms.TextBox
$ComboBox2.location              = New-Object System.Drawing.Point(23,460) #<Location
$ComboBox2.Size                  = New-Object System.Drawing.Size(200,20)
$ComboBox2.Text                 = "$User2"

$label1                           = New-Object System.Windows.Forms.Label
$label1.Location                  = New-Object System.Drawing.Point(23,485)
$label1.Size                      = New-Object System.Drawing.Size(200,20)
$label1.Text                      = 'Enter ComputerName:'
$label1.Font                      = New-Object System.Drawing.Font("Times", 11)
$form.Controls.Add($label)
#------------------------------
#$ComboBox3                       = New-Object System.Windows.Forms.TextBox
#$ComboBox3.location              = New-Object System.Drawing.Point(23,470) #<Location
#$ComboBox3.Size                  = New-Object System.Drawing.Size(200,20)
#$ComboBox3.Text                  = ""
####
$ComboBox3                        = New-Object System.Windows.Forms.ComboBox
$ComboBox3.location               = New-Object System.Drawing.Point(23,510) #<Location
$ComboBox3.Size                   = New-Object System.Drawing.Size(200,20)
function IsThereText
{
$ComboBox3.Text = "Select DropDown"
	if ($CheckBox7.SelectedIndex -gt 0)   # .Length -ne 0)
	{
		#$OKButton.Enabled = $true
$ComboBox3.Enabled =$true
	}
	else
	{
		#$OKButton.Enabled = $false
$ComboBox3.Enabled =$false
	}
}
#----
$comboBox3.Add_TextChanged({
IsThereText
})
$ComboBox3.Items.AddRange($Arr)
$ComboBox3.Enabled = $false
###
$Button.text                     = "OK"
$Button.width                    = 60
$Button.height                   = 30
$Button.location                 = New-Object System.Drawing.Point(233,555)
$Button.Font                     = 'Microsoft Sans Serif,12'
$Button.DialogResult             = [System.Windows.Forms.DialogResult]::OK
#$Button.Enabled                  = $false
#$Button.Add_Click({VerifyForm})

$Button2.text                    = "Exit"
$Button2.width                   = 60
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(303,555)
$Button2.Font                    = 'Microsoft Sans Serif,12'
$Button2.DialogResult            = [System.Windows.Forms.DialogResult]::Cancel

$Button3.text                     = "Uncheck All"
$Button3.width                    = 130
$Button3.height                   = 30
$Button3.location                 = New-Object System.Drawing.Point(373,555)
$Button3.Font                     = 'Microsoft Sans Serif,12'
#$Button.Enabled                  = $false
#$Button.Add_Click({VerifyForm})
$Button3.Add_Click({

$CheckBox1.Checked = $False
$CheckBox2.Checked = $False
$CheckBox3.Checked = $False
$CheckBox4.Checked = $False
$CheckBox5.Checked = $False
$CheckBox6.Checked = $False
$CheckBox7.Checked = $False
$SccmCheckBox1.Checked = $False
$SccmCheckBox2.Checked = $False
})


$Form.controls.AddRange(@($SelectSchool,$CheckBox1,$CheckBox9,$CheckBox2,$CheckBox3,$Button,$Button2,$pictureBox,$label,$label1,$ComboBox2,$ComboBox3,$CheckBox6,$CheckBox7,$Button3,$ComboBox,$systext1,$systext))


Function PowerSettings {
#When I close the lid - Power Setting
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0 #Plugged in
#powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0 #Battery
}

Function Dell_DisplayLink_D6000 {
$url = "https://dl.dell.com/FOLDER07518323M/1/DisplayLink-Dock-Driver_FF21H_WIN_10.1.2814.0_A04.EXE"
$DownloadLocation = "C:\windows\Temp\Dell_Temp\"
#$DownloadLocation = "C:\Users\lrazo\Downloads"
$Dir_Temp = Test-Path "$DownloadLocation"
if (!$Dir_Temp){
New-Item -ItemType directory -Path $DownloadLocation -Force
}
$Software = "$DownloadLocation\DellDisplayLink.exe"
$arguments = "/S"

$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("$Link",$Software);

Start-Process $Software -ArgumentList $arguments -Wait
}

Function Copy_Chrome_Bookmarks {
$UserName =  $ComboBox2.Text
$ComputerName =  $ComboBox3.Text
write-Host "Hello $ComputerName "

$Test_Chrome_Path = Test-Path "\\$ComputerName\c$\Users\$UserName\AppData\Local\Google\Chrome\User Data\Default"
if($Test_Chrome_Path){

$Path = $env:TEMP
$Installer = "chrome_installer.exe" 
$Arguments1 = "/silent /install"
try {
    $G = Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer
} Catch {
    if($_.Exception.Message) {
        Write-Host $_.Exception.Message
        Write-Host "Unable to Download Google Chrome from web, Installing via UNC Instead"
        $UNCPath = "\\aus-bgp0c42\Austin_Public\Scripts\Google_Chrome\"
        $Installer = "googlechromestandaloneenterprise64.msi" 
        Copy-Item $UNCPath\$Installer -destination $Path -Force
        $Arguments1 = "/passive"
        Write-Host $Path

    } else {
        Write-Host $_
    }
}
##
Write-Host $Path\$Installer
#Start-Process -FilePath $Path\$Installer -ArgumentList "/silent /install"  -Wait
Start-Process -FilePath "$Path\$Installer" -ArgumentList $Arguments1 -Wait
Start-Sleep -Seconds 2
#############Start and Exit Chrome
 $action = New-ScheduledTaskAction -Execute "C:\Program Files\Google\Chrome\Application\chrome.exe" -Argument "www.google.com"
 $trigger = New-ScheduledTaskTrigger -Once -At (get-date).AddSeconds(-10)
 $principal = New-ScheduledTaskPrincipal -UserId (Get-CimInstance –ClassName Win32_ComputerSystem | Select-Object -expand UserName)
 $task = New-ScheduledTask -Action $action -Trigger $trigger -Principal $principal
 Register-ScheduledTask "Chrome_Launch" -InputObject $task -Force
 Start-ScheduledTask -TaskName "Chrome_Launch"
 
 $ProcessList = @(
    "Chrome" #or whatever you want to monitor
)
Do {  
    $ProcessesFound = Get-Process | ? {$ProcessList -contains $_.Name} | Select-Object -ExpandProperty Name
    If ($ProcessesFound) {
        Write-Host "Still running: $($ProcessesFound)"
#Get-Process Chrome  -ErrorAction SilentlyContinue | Stop-Process -ErrorAction SilentlyContinue -Confirm:$false
Start-Sleep -Milliseconds 500
(get-process -Name chrome).Kill()
Start-Sleep -Milliseconds 50
    }
} Until (!$ProcessesFound)
Start-Sleep -Seconds 1
Unregister-ScheduledTask -TaskName "Chrome_Launch" -Confirm:$false
 ##############
$Chrome_Installed = Test-Path "c:\Users\$UserName\AppData\Local\Google\Chrome"
#Copying Bookmarks
if($Chrome_Installed){
Write-Verbose "Chrome Installed" -Verbose
Get-ChildItem "\\$ComputerName\c$\Users\$UserName\AppData\Local\Google\Chrome\User Data\Default" -File | % {Copy-Item -Path $_.FullName -Destination "c:\Users\$UserName\AppData\Local\Google\Chrome\User Data\Default" -Force -Container }
}

}
Else{Write-Output "No Google Chrome path found on remote machine"}
}

Function Copy_Outlook_Signatures {
$UserName =  $ComboBox2.Text
$ComputerName =  $ComboBox3.Text
Get-ChildItem "\\$ComputerName\c$\Users\$UserName\AppData\Roaming\Microsoft\Signatures" | % {Copy-Item -Path $_.FullName -Destination "c:\Users\$UserName\AppData\Roaming\Microsoft\Signatures" -Force -Container -Verbose}
}


#------------------------------------------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------------------------------------------#
$result = $form.ShowDialog()
If($result -eq [System.Windows.Forms.DialogResult]::OK) {
Write-Output "Hello, I clicked ok"
#(gpupdate) -join ""

    if ($checkBox1.Checked){
    
#Function
#Bitlocker_Shortcut
    }
        if ($checkBox2.Checked){
        #Function
        Dell_DisplayLink_D6000

    }
      if ($checkBox3.Checked){

#Function
#Dell_Command
    }
        if ($checkBox4.Checked){
    
#Function
#Cisco_VPN
    }
        if ($checkBox5.Checked){

#Function
#Ethernet_Fix
    }
      if ($checkBox6.Checked){

#Function
$UserName =  $ComboBox2.Text
$ComputerName =  $ComboBox3.Text
Write-Output "$UserName is the user name" -Verbose
Write-Output "$ComputerName is the user Computer name" -Verbose

Copy_Chrome_Bookmarks
    }
      if ($checkBox7.Checked){

#Function
Copy_Outlook_Signatures
    }


              if ($checkBox9.Checked){

#Function
PowerSettings

    }


#Verify_HTML
}
Stop-Transcript

#Start-process "notepad.exe" -ArgumentList "C:\windows\temp\AUS_QC_Log.txt"
