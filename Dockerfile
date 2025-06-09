FROM node:18

WORKDIR /app/api

COPY api/package*.json ./
RUN npm install
RUN npm install -g nodemon

WORKDIR /app

COPY . .

WORKDIR /app/api

EXPOSE 3000

CMD ["npm", "run", "dev"]