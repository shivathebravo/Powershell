$url = "http:shivaprogramming.com"

$timetaken = Measured-Command -Expression {

    $site = Invoke-WebRequest -Uri $url
}
$seconds = [Math]::Round($timetaken.TotalSeconds, 4)

"The page took $seconds seconds to load"