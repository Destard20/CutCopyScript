Write-Host "ATTENZIONE! `r`nConsigliato fare un backup prima di usare lo script! `r`nLA RESPONSABILITA' E' SOLTANTO TUA!"

$SCELTA = Read-Host -Prompt '[1]Copiare oppure [0]Spostare?'
$SOURCE = Read-Host -Prompt 'Cartella da cui copiare'
$DEST = Read-Host -Prompt 'Cartella in cui incollare'


if($SCELTA -eq 1)
{
	Get-ChildItem -Path $SOURCE -Recurse -File | Copy-Item -Destination $DEST -verbose
}
elseif($SCELTA -eq 0)
{
	Get-ChildItem -Path $SOURCE -Recurse -File | Move-Item -Destination $DEST -verbose
}
else
{
	Write-Host "Scelta invalida. Uscita script..."
}

Read-Host -Prompt "Finito! `r`nPremere Invio per uscire..."