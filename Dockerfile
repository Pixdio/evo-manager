FROM node:20-slim

WORKDIR /app

# Copiar tudo
COPY . .

# Instalar dependências
RUN npm install

# Fazer o build
RUN npm run build

# Instalar globalmente após o build
RUN npm install -g .

# Comando de inicialização com opções
CMD ["sh", "-c", "evolution-manager server start || tail -f /dev/null"]

EXPOSE 9615
