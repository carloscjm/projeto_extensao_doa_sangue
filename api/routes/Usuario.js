// const express = require('express');
// const router = express.Router();

// // GET /contato/
// router.get('/', (req, res) => {
//   res.json({
//     nome: 'Maria Oliveira',
//     email: 'maria@example.com',
//     telefone: '(11) 91234-5678'
//   });
// });

// // Exemplo de outro endpoint
// // GET /contato/detalhes
// router.get('/detalhes', (req, res) => {
//   res.json({ mensagem: 'Detalhes do contato' });
// });

// module.exports = router;



const express = require('express');
const pool = require('../db');
const router = express.Router();

router.get('/retorna_usuario', async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM usuario');
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  }
});

module.exports = router;
