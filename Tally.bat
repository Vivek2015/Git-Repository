@echo off

SET _options = /E /R:3 /W:3 /REG /LOG+:"G:\tallyreport.txt"

:: Retry Options :
:: /R:n :: number of Retries
:: /W:n :: Wait time between retries
:: /REG :: Save /R:n and /W:n in the Registry as default settings.

:: Log options :
:: /LOG+:file :: Output status to LOG file (append to existing log).


@ROBOCOPY "\\subratha-pc\Tally.ERP9\Data" "G:\TALLYBACKUP-NEW" /E /R:3 /W:3 /REG /LOG+:"G:\tallyreport.txt"

@echo Tally backup completed Sucessfully.


exit

