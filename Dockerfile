FROM node:20-slim

WORKDIR /app

# Copiar TUDO primeiro (não só package.json)
COPY . .

# Instalar dependências (agora o lib/postinstall.js já existe)
RUN npm install

# Fazer o build
RUN npm run build

# Instalar globalmente após o build
RUN npm install -g .

# Link simbólico para garantir que o sistema ache o Node
RUN ln -s /usr/local/bin/node /usr/bin/node || true

# Comando de inicialização
CMD ["evolution-manager", "server", "start"]

EXPOSE 9615
