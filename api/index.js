const express = require('express');
const cors = require('cors');
const path = require('path');

const app = express();
const PORT = 3000;

// Serve a pasta assets (com caminho correto)
app.use('/assets', express.static(path.join(__dirname, '..', 'assets')));
// Serve TODOS os arquivos estáticos da raiz (index.html, login.html, outros .html)
app.use(express.static(path.join(__dirname, '..')));

// Rota para servir o index.html na /inicio
app.get('/inicio', (req, res) => {
  res.sendFile(path.join(__dirname, '..', 'index.html'));
});

const contatoRoutes = require('./routes/usuario');
const clienteRoutes = require('./routes/demanda');

app.use(cors());
app.use(express.json()); // Para receber JSON no body das requisições

// Rotas organizadas
app.use('/usuario', contatoRoutes);
app.use('/demanda', clienteRoutes);

app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
