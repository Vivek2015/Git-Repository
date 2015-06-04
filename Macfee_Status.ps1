#Add title to the Script
$host.UI.RawUI.WindowTitle = "McAfee Status Report Tool"

#Add Computer Names list in list.txt file
$PCs=(Get-Content G:\list.txt)

#invoke Command will help in invoking the result into the current window
Invoke-Command -ComputerName $PCs -Credential admin {Get-Service -DisplayName "Mcafee*"|`
Select-Object @{expression={$_.Name}; label="Services"},`
              @{expression={$_.DisplayName}; label="Discreption"},`
              status, PSComputerName}|`
              Select-Object * -ExcludeProperty RunspaceId, PSShowComputerName|`

#Export the Status (Running/Stopped) services report the the desired location 
              Export-Csv G:\mcafee_Status_$((Get-Date).ToString('dd-MM-yyyy')).csv -NoTypeInformation
