$host.ui.RawUI.WindowTitle = "disable_uac.ps1"

$ProgressPreference = "SilentlyContinue"

Set-ItemProperty -Path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA -Value 0 -Force