param(
    [Parameter(Mandatory = $false)]
    [Alias("PluginName")]
    [string]$name = [string]::Empty
)

try {
    Push-Location $PSScriptRoot

    $validPlugins = Get-ChildItem -Path .env -Filter *.env | Select-Object -ExpandProperty Basename
    if ($name -ne [string]::Empty) {
        if ($validPlugins -contains $name) {
        }
        else {
            Write-Host "Invalid plugin name. Valid plugins are: $($validPlugins -join ', ')" -ForegroundColor Red
            return
        }
    }
    else {
        . .\scripts\menu.ps1

        Write-Host "Select a plugin to run:" -ForegroundColor Green
        Write-Host ""
        $name = Menu $validPlugins
    }

    docker-compose --env-file ".env\$name.env" run --rm local.dev
}
catch {
    Write-Error $_.Exception.Message
    exit 1
}
finally {
    Pop-Location
}
