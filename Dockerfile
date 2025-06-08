# FROM node:18

# WORKDIR /app/api

# COPY api/package*.json ./
# RUN npm install
# RUN npm install -g nodemon

# WORKDIR /app

# COPY api/package.json api/package-lock.json ./

# WORKDIR /app/api

# EXPOSE 3000

# CMD ["npm", "run", "dev"]


# 1. Use uma imagem base do Node.js leve e específica para consistência
FROM node:18.20.8-slim

# 2. Defina UM ÚNICO diretório de trabalho principal para a sua API
WORKDIR /app

# 3. Copie os arquivos de dependência da sua pasta local 'api' para a raiz do WORKDIR (/app)
COPY api/package.json api/package-lock.json ./

# 4. Instale APENAS as dependências de produção. É mais rápido e gera uma imagem menor.
#    Isso vai criar a pasta /app/node_modules
RUN npm install --production

# 5. Copie o restante do código da sua API para o WORKDIR.
#    O "api/." copia todo o conteúdo da pasta 'api' local para a raiz do WORKDIR (/app).
COPY api/. .

# 6. Expõe a porta que sua aplicação usa
EXPOSE 3000

# 7. Comando final para rodar a aplicação em um ambiente de produção
#    Nodemon é para desenvolvimento. Em produção, usamos o node diretamente.
#    (Assumindo que seu arquivo de entrada é 'index.js' dentro da pasta 'api')
CMD [ "node", "index.js" ]