#New-NetFirewallRule -DisplayName "Permitir RDP" -Direction Inbound -Protocol TCP -LocalPort 3389 -Action Allow

#New-NetFirewallRule -DisplayName "Bloquear FTP Saliente" -Direction Outbound -Protocol TCP -RemotePort 21 -Action Block

#Get-NetFirewallRule | Where-Object { $_.DisplayName -like "*File and Printer Sharing*" } | Set-NetFirewallRule -Enabled True

#New-NetFirewallRule -DisplayName "ReglaPrueba" -Direction Inbound -Protocol TCP -LocalPort 9999 -Action Allow

#Remove-NetFirewallRule -DisplayName "ReglaPrueba"

#Get-NetFirewallRule | Where-Object { $_.Profile -eq "Domain" -and $_.Enabled -eq "True" }

#New-NetFirewallRule -DisplayName "Permitir HTTP Privado" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Allow -Profile Private

#netsh advfirewall export "C:\firewall_backup.wfw"

#netsh advfirewall import "C:\firewall_backup.wfw"

#Get-NetFirewallRule | Where-Object {
 #   ($_.Direction -eq 'Inbound') -and
  #  (Get-NetFirewallPortFilter -AssociatedNetFirewallRule $_ | Where-Object { $_.LocalPort -eq 1433 })
#}

#Set-NetFirewallProfile -Profile Domain,Private,Public -Enabled True