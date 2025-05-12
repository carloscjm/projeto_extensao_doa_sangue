# Usa imagem oficial do Node
FROM node:18

# Cria diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos
COPY . .

# Expõe a porta da API
EXPOSE 3000

# Comando para rodar o app
CMD ["node", "index.js"]
