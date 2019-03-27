# get  process with name and  id
get-process | Select-Object -Property name, @{name = 'procid'; expression = {$_.id}}

# get help on a certain process
Get-help Stop-Process -Full

# get process greater then 1000
$procs = Get-Process | where handles -gt 1000
$procs
