$message = "Installing!  "
$star = @("/", "|", "\", "-")
$messLength = $message.Length + 2
$startPos = $HOST.UI.RawUI.CursorPosition
#Write-Host $message
$i = 0

While ($true) {
	Write-Host -nonewline $message $star[$i] " "
	Start-Sleep -milliseconds 50
	$HOST.UI.RawUI.CursorPosition = $startPos
	$i++
	if ($i -eq 4) { $i = 0 }
}