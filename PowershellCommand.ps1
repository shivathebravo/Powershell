# get  process with name and  id
get-process | Select-Object -Property name, @{name = 'procid'; expression = {$_.id}}

# get help on a certain process
Get-help Stop-Process -Full

# get process greater then 1000
$procs = Get-Process | where handles -gt 1000
$procs

#output in grid view
get-process | Out-GridView

#copy process in notepad
get-process >procs.txt
notepad procs.txt

#export out to other format
get-process | Export-Csv C:\Temp\procs.Export-Csv
get-process | Export-clixml c:\stuff\proc.xml

#sort process by desc and select top 5
get-process | Sort ws -Descending | select -first 5

#get process by working set WS
Get-Process | measure-object WS -sum -Maximum -Minimum -Average

#get windows event logname
Get-WinEvent -LogName security -MaxEvents 5

#invoke command on multiple computers
Invoke-Command -ComputerName test1, test2 -ScriptBlock {Get-WinEvent -logname security -MaxEvents 5}

#fiter by where condition
Get-NetAdapter | Where-Object {$_.name -like "wifi*"}
