const express = require('express');
const cors = require('cors');

const app = express();
const PORT = 3000;

const contatoRoutes = require('./routes/contato');
const clienteRoutes = require('./routes/clientes');

app.use(cors());
app.use(express.json()); // Para receber JSON no body das requisições

// Rotas organizadas
app.use('/contato', contatoRoutes);
app.use('/clientes', clienteRoutes);

app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
