FROM node:20-slim

WORKDIR /app

# Copiar tudo
COPY . .

# Instalar dependências
RUN npm install

# Fazer o build
RUN npm run build

# Instalar globalmente
RUN npm install -g .

# Manter o container vivo para debug
CMD ["tail", "-f", "/dev/null"]

EXPOSE 9615
