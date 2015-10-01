$KeyPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"
New-ItemProperty -Path $KeyPath -Name EnableSmartScreen -Value 0 -PropertyType DWord -Force | Out-Null
Write-Host "Turned off SmartScreen successfully."
                        