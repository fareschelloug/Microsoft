$admin = [Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()
if ($admin.IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Output "L'utilisateur en cours est un administrateur."
    Exit 1
} else {
    Write-Output "L'utilisateur en cours n'est pas un administrateur."
    Exit 0
}
