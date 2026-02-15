FROM node:20-slim

WORKDIR /app

# AQUI ESTÁ A CORREÇÃO:
# Adicionamos "vite" na lista de instalação para ele não reclamar que falta
RUN npm install -g evolution-manager fs-extra vite

# Link simbólico para garantir que o sistema ache o Node
RUN ln -s /usr/local/bin/node /usr/bin/node

# Comando de inicialização
CMD ["evolution-manager", "server", "start"]

EXPOSE 9615
