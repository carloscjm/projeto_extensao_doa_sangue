const express = require('express');
const pool = require('../db');
const router = express.Router();
const crypto = require('crypto');
const jwt = require('jsonwebtoken');
const validaToken = require('../middleware/validaToken');


router.post('/reage_post', validaToken, async (req, res) => {
//   try {
//     if (!req.body) {
//       res.status(500).json({ error: 'Erro ao buscar demandas' });
//     }
//     const [rows] = await pool.query('SELECT d.id as id_demanda, d.descricao, d.urgencia, d.tipo_sangue, d.descricao AS descricao_demanda, c.nome AS centro_nome, c.cidade FROM demanda d JOIN centro c ON c.id = d.centro JOIN usuario u ON u.id = d.usuario WHERE u.id = "'+req.body.usuario+'"');
//     console.log('aaaa ', rows);
//     res.json(rows);
//   } catch (error) {
//     console.error(error); 
//     res.status(500).json({ error: 'Erro ao buscar usuários' });
//   } 
});

router.post('/cadastra_post', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar demandas' });
    }

    let body = req.body;
    await pool.query(`INSERT INTO posts (id_evento, id_usuario, conteudo, imagem_url) VALUES ("`+body.evento+`", "`+body.usuario+`", "`+body.conteudo+`", "`+body.imagem_url+`")`);
    res.json('Evento inserida');
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  } 
});

router.post('/edita_post', async (req, res) => {
//   try {
//     if (!req.body) {
//       res.status(500).json({ error: 'Erro ao buscar demandas' });
//     }
//     const [rows] = await pool.query('SELECT * FROM centro'); 
//     console.log('aaaa ', rows);
//     res.json(rows);
//   } catch (error) {
//     console.error(error); 
//     res.status(500).json({ error: 'Erro ao buscar usuários' });
//   } 
});

router.post('/lista_posts_por_evento', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar posts' });
    }
    let body = req.body;
    const [rows] = await pool.query('SELECT * FROM posts WHERE id_evento = "'+req.body.id_evento+'"');
    console.log('Retorno posts ', rows);
    res.json(rows);
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao bucar posts' });
  } 
});

module.exports = router;
