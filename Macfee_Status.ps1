$PCs=(Get-Content G:\list.txt)
Invoke-Command -ComputerName $PCs -Credential admin {Get-Service -DisplayName "Mcafee*"|`
Select-Object @{expression={$_.Name}; label="Services"},`
              @{expression={$_.DisplayName}; label="Discreption"},`
              status, PSComputerName}|`
              Select-Object * -ExcludeProperty RunspaceId, PSShowComputerName|`
              Export-Csv G:\mcafee_Status_$((Get-Date).ToString('dd-MM-yyyy')).csv -NoTypeInformation