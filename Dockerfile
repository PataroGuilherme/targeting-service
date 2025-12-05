# Imagem base do Python
FROM python:3.10-slim

# Diretório de trabalho no container
WORKDIR /app

# Copia apenas o arquivo de dependências
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código, incluindo app.py e a pasta db/
COPY . .

# Expõe as portas solicitadas
EXPOSE 8000
EXPOSE 8080
EXPOSE 80
EXPOSE 443

# Comando de inicialização do serviço
CMD ["python", "app.py"]
