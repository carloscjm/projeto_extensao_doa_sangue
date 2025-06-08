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
const crypto = require('crypto');
const jwt = require('jsonwebtoken');
const validaToken = require('../middleware/validaToken');


router.post('/retorna_usuario', validaToken, async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM usuario');
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  }
});

router.post('/cadastra_usuario', validaToken, async (req, res) => { 
  console.log('teste ', req.body);
  if (!req.body) {
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  }
  try {
    const [usuarios] = await pool.query('SELECT * FROM usuario where email = "'+req.body.email+'"');
    if (usuarios.length >= 1) {
      return res.status(500).json({ error: 'Ja existe um usuario com esse email' });
    }
    let body = req.body;
    let senha = body.senha; 
    senha = senha.toString();
    const hash = crypto.createHash('md5').update(body.senha).digest('hex');
    await pool.query(`insert into usuario (senha, nome, email) VALUES ("`+hash+`", "`+body.nome+`", "`+body.email+`")`);
    res.json('Usuario inserido');
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  }
});

module.exports = router;
