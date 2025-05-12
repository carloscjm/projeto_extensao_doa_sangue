const express = require('express');
const router = express.Router();

// GET /clientes/
router.get('/', (req, res) => {
  res.json([
    { id: 1, nome: 'João Silva' },
    { id: 2, nome: 'Ana Souza' }
  ]);
});

// GET /clientes/:id
router.get('/:id', (req, res) => {
  const id = req.params.id;
  res.json({ id, nome: `Cliente ${id}` });
});

module.exports = router;
