# Start starship
Invoke-Expression (&starship init powershell)

# Configure fzf shortcuts
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# Disable suggestions
Set-PSReadLineOption -PredictionSource None
