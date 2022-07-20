function New-SharePointNavigationItem {
    param (
        [String] $SPWebUrl,
        [String] $LinkName,
        [String] $LinkUrl
    )
    
    $newNavigationItem = New-Object Microsoft.SharePoint.Navigation.SPNavigationNode($LinkName,$LinkUrl,$true)


    $web = Get-SPWeb -Identity $SPWebUrl 
    $web.Navigation.TopNavigationBar.AddAsFirst($newNavigationItem) 


}