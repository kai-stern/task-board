$headers = @{
    "Authorization" = "token YOUR_GH_TOKEN_HERE"
    "Accept" = "application/vnd.github.v3+json"
}

$body = @{
    "name" = "task-board"
    "description" = "Kai & Omer Task Board - 24/7 AI Partner"
    "private" = $false
    "auto_init" = $true
} | ConvertTo-Json

Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Method Post -Headers $headers -Body $body
