const express = require('express');
const router = express.Router();

// GET /contato/
router.get('/', (req, res) => {
  res.json({
    nome: 'Maria Oliveira',
    email: 'maria@example.com',
    telefone: '(11) 91234-5678'
  });
});

// Exemplo de outro endpoint
// GET /contato/detalhes
router.get('/detalhes', (req, res) => {
  res.json({ mensagem: 'Detalhes do contato' });
});

module.exports = router;
