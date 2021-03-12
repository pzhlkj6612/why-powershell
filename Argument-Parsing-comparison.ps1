# Execute the following code in PowerShell 5 and 6+ respectively.
#
# EchoArgs.exe is from https://ss64.com/ps/call.html.

# 1.1.
& 'EchoArgs.exe' `
    'a', 'b', `
    'c', 'd'
& 'EchoArgs.exe' 'a', 'b', 'c', 'd'

# 1.2.
& 'EchoArgs.exe' @(`
    'a', 'b', `
    'c', 'd')
& 'EchoArgs.exe' @('a', 'b', 'c', 'd')


# 2.1.
& 'EchoArgs.exe' `
    'a','b',`
    'c','d'
& 'EchoArgs.exe' 'a','b','c','d'

# 2.2.
& 'EchoArgs.exe' @(`
    'a','b',`
    'c','d')
& 'EchoArgs.exe' @('a','b','c','d')


# 3.
& 'EchoArgs.exe' `
    'a' 'b' `
    'c' 'd'
& 'EchoArgs.exe' 'a' 'b' 'c' 'd'
