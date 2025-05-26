const express = require('express');
const cors = require('cors');
const path = require('path');

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

// Serve assets da pasta raiz (fora da pasta /api)
app.use('/assets', express.static(path.join(__dirname, '..', 'assets')));
app.use(express.static(path.join(__dirname, '..'))); // Para servir todos os .html, etc.

// Rota principal padrão "/"
app.get('/', (req, res) => {
  res.sendFile(path.resolve(__dirname, '..', 'index.html'));
});

// Rota opcional /inicio
app.get('/inicio', (req, res) => {
  res.sendFile(path.resolve(__dirname, '..', 'index.html'));
});

// rotas da API
const contatoRoutesUsuario = require('./routes/usuario');
const clienteRoutesDemanda = require('./routes/demanda');
const clienteRoutesLogin = require('./routes/login');

app.use('/usuario', contatoRoutesUsuario);
app.use('/demanda', clienteRoutesDemanda);
app.use('/login', clienteRoutesLogin);

app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
