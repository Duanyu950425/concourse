[CmdletBinding()]
param(
    [string] $private_key
)

$CommandName = $PSCmdlet.MyInvocation.InvocationName;
$ParameterList = (Get-Command -Name $CommandName).Parameters;

foreach ($parameter in $ParameterList) {
    Get-Variable -Name $parameter.Values.Name -ErrorAction SilentlyContinue;
}  
