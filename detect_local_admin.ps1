# Get who I am
$Me = whoami.exe

 # Get members of administrators group
$Admins = Get-LocalGroupMember -Name Administrateurs | 
       Select-Object -ExpandProperty name

# Check to see if this user is an administrator and act accordingly
 if ($Admins -Contains $Me) {
      "$Me is a local administrator"}
     exit 1 
    else {
     "$Me is NOT a local administrator"}
     exit 0
     
