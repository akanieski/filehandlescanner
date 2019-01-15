param([String]$query, [String]$outfile="filehandlescanner.log")

if ([System.IO.File]::Exists($outfile) -And (Get-Item $outfile).length -gt 10240kb) {
	Write-Host "Exceeded log file size limit!"
	exit
}
$stamp = Get-Date -Format g
$result = handle.exe -nobanner $query

if ($result -contains "No matching handles found.") {
	Write-Host "No file handles found open for '$query'"
} else {
	Add-Content $outfile "DATE $stamp" 
	Add-Content $outfile $result
}
