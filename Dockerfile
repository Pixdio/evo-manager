# Começamos com uma imagem limpa do Node 20 (leve e oficial)
FROM node:20-slim

# Definimos a pasta de trabalho
WORKDIR /app

# Instalação MANUAL e FORÇADA das dependências que estão faltando
# Aqui instalamos o manager e o fs-extra explicitamente
RUN npm install -g evolution-manager fs-extra

# Link simbólico para garantir compatibilidade
RUN ln -s /usr/local/bin/node /usr/bin/node

# Comando de inicialização correto para a versão 0.4.13+
CMD ["evolution-manager", "server", "start"]

# Expõe a porta
EXPOSE 9615
