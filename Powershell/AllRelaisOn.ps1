# Find the Virtual Serial Port
$COM = [System.IO.Ports.SerialPort]::getportnames()

# Connect to the Port
$port = New-Object System.IO.Ports.SerialPort
$port.PortName = "$COM"
$port.BaudRate = "9600"
$port.Parity = "None"
$port.DataBits = 8
$port.StopBits = 1

# Open Serial Connection
$port.open()

# Power on ALL Relais
$port.Write("255`r")
Write-Output "ALL RELAIS: ON!"

sleep 10

$port.Write("0`r")
Write-Output "ALL RELAIS: OFF!"

# Close the Connection
$port.Close()

# ...quick and dirty by "Wir-sind-die-Matrix.de"
