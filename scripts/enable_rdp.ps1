$host.ui.RawUI.WindowTitle = "enable_rdp.ps1"

$ProgressPreference = "SilentlyContinue"

# Disable firewall
netsh advfirewall set allprofiles state off

# Enable Remote Desktop
set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0

# Allow incoming RDP on firewall
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

# Enable secure RDP authentication
set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1