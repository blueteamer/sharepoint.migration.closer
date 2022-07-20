function Invoke-SharePointPowerShell {

    try {
        Add-PSSnapin -Name "Microsoft.SharePoint.PowerShell"
        Write-Output "SharePoint PowerShell successfully loaded."
    }
    catch {       
        Write-Error "Could not load 'SharePoint PowerShell'."
        Write-Error "Are you on the correct machine? Should be a SharePoint Server."
        Write-Error $_
    }
}