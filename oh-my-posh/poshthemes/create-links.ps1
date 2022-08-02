$poshFolder = $env:POSH_THEMES_PATH
$poshGitFolder = "$($env:workspace)/Environments/oh-my-posh/poshthemes"
Get-ChildItem $poshGitFolder -Filter *.omp.json | 
Foreach-Object {    
    $linkName = "$($poshFolder)\$($_.Name)"
    
    $arquivoExiste = Test-Path -Path $linkName -PathType Leaf

    if($arquivoExiste){
        Remove-Item $linkName
    }

    New-Item -Path $linkName -ItemType SymbolicLink -Value $_.FullName
    
    Write-Output $_.FullName
}