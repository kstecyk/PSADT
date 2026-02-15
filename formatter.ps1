$path = ".\test.ps1"

$content = Get-Content $path -Raw
$formatted = Invoke-Formatter -ScriptDefinition $content

Set-Content -Path $path -Value $formatted -Encoding UTF8

Invoke-ScriptAnalyzer -Path $path

echo


