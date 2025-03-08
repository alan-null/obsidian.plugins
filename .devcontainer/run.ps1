try {
    Push-Location $PSScriptRoot

    . .\scripts\menu.ps1

    $validPlugins = Get-ChildItem -Path .env -Filter *.env | Select-Object -ExpandProperty Basename
    Write-Host "Select a plugin to run:" -ForegroundColor Green
    Write-Host ""
    $pluginName = Menu $validPlugins

    docker-compose --env-file ".env\$pluginName.env" run --rm local.dev
}
catch {
    Write-Error $_.Exception.Message
    exit 1
}
finally {
    Pop-Location
}
