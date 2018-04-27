do {
GC ServerList.txt | %{
	If (Test-Connection $_ -Quiet -Count 2){
	Write-Host "$_ is UP" -b Black
	}
	Else{
	Write-Host "$_ is Down" -b Red
	}
}
Write-Output --------------------
start-sleep -Seconds 120
}until($infinity)