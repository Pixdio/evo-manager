FROM node:20-slim

WORKDIR /usr/src/app

# AQUI ESTÁ A CORREÇÃO:
# Instalamos explicitamente o fs-extra e o evolution-manager para garantir que existem
RUN npm install -g vite fs-extra evolution-manager

RUN ln -s /usr/local/bin/node /usr/bin/node

# Executamos diretamente o comando instalado (sem npx para evitar downloads repetidos)
CMD ["evolution-manager", "server", "start"]

EXPOSE 9615
