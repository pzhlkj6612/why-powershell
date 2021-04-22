# Tested on PowerShell 5.

# Open 4 PowerShell prompts:
#   - x86
#   - x86 (Admin)
#   - x64
#   - x64 (Admin)

"I'm ${PID}."


# Compare the results.

Get-Process | Where-Object { $_.ProcessName -ieq 'PowerShell' } | Format-List Name, Id, Path

Get-WmiObject Win32_Process | Where-Object { $_.Name -ieq 'PowerShell.exe' } | Format-List Name, ProcessId, Path, ExecutablePath
# For newer PowerShell
#   https://devblogs.microsoft.com/scripting/should-i-use-cim-or-wmi-with-windows-powershell/
Get-CIMInstance CIM_Process | Where-Object { $_.Name -ieq 'PowerShell.exe' } | Format-List Name, ProcessId, Path, ExecutablePath
