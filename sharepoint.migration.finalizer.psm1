# Parameter help description
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

function New-SharePointNavigationItem {
    param (
        [String] $SPWebUrl,
        [String] $LinkName,
        [String] $LinkUrl
    )
    
    Invoke-SharePointPowerShell

    $newNavigationItem = New-Object Microsoft.SharePoint.Navigation.SPNavigationNode($LinkName,$LinkUrl,$true)


    $web = Get-SPWeb -Identity $SPWebUrl 
    $web.Navigation.TopNavigationBar.AddAsFirst($newNavigationItem) 


}

