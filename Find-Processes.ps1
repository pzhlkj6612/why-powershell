# Tested on PowerShell 5.

# Open 4 PowerShell prompts:
#   - x86
#   - x86 (Admin)
#   - x64
#   - x64 (Admin)

"I'm ${PID}."


# Compare the results.

Get-Process | Where-Object { $_.ProcessName -ieq 'PowerShell' } | Format-List Name, Id, Path

# Why don't you ask... the Magic WMI, Squidward?
#   https://stackoverflow.com/questions/5497064/how-to-get-the-full-path-of-running-process
#   https://stackoverflow.com/questions/7446887/get-command-line-string-of-64-bit-process-from-32-bit-process

Get-WmiObject Win32_Process | Where-Object { $_.Name -ieq 'PowerShell.exe' } | Format-List Name, ProcessId, Path, ExecutablePath
# For newer PowerShell
#   https://devblogs.microsoft.com/scripting/should-i-use-cim-or-wmi-with-windows-powershell/
Get-CIMInstance CIM_Process | Where-Object { $_.Name -ieq 'PowerShell.exe' } | Format-List Name, ProcessId, Path, ExecutablePath
