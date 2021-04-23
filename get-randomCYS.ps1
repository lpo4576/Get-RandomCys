Add-Type -AssemblyName System.Windows.Forms
$names = New-Object System.Windows.Forms.OpenFileDialog
$names.filter = "csv (*.csv)| *.csv"
$names.Title = "Select list of names"
[void]$names.ShowDialog()
$names.FileName

$name2 = import-csv -Path $names.FileName

Get-Random -InputObject $name2

pause