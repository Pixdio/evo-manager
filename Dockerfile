FROM node:20-slim

WORKDIR /app

# Copiar tudo
COPY . .

# Instalar dependências incluindo Vite
RUN npm install

# Fazer o build (isso cria a pasta dist)
RUN npm run build

# Instalar CLI globalmente
RUN npm install -g . --force

# Verificar instalação
RUN evolution-manager --version || echo "Installation check failed"

# Comando de inicialização
CMD ["evolution-manager", "server", "start"]

EXPOSE 9615
