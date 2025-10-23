const express = require('express');
const pool = require('../db');
const router = express.Router();
const crypto = require('crypto');
const jwt = require('jsonwebtoken');
const validaToken = require('../middleware/validaToken');


router.post('/pega_evento', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar demandas' });
    }
    const [rows] = await pool.query('SELECT * FROM eventos WHERE id = "'+req.body.id_evento+'"');
    console.log('Retorno eventos ', rows);
    res.json(rows);
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao buscar Eventos' });
  } 
});

router.post('/pega_lista_evento_por_usuario', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar demandas' });
    }
    const [rows] = await pool.query('SELECT * FROM eventos WHERE id_organizador = "'+req.body.usuario+'"');
    console.log('Retorno eventos ', rows);
    res.json(rows);
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  } 
});

router.post('/cadastra_evento', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar eventos' });
    }
    let body = req.body;
    await pool.query(`INSERT INTO eventos (titulo, descricao, data_inicio, data_fim, local) VALUES ("`+body.titulo+`", "`+body.descricao+`", "`+body.data_inicio+`", "`+body.data_fim+`", "`+body.local+`")`);
    res.json('Evento inserida');
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao cadastrar evento' });
  } 
});

router.post('/edita_evento', async (req, res) => {
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

router.post('/lista_eventos_por_data', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar eventos' });
    }
    const [rows] = await pool.query('SELECT * FROM eventos WHERE data_inicio like "'+req.body.data+'%"');
    console.log('Retorno eventos ', rows);
    res.json(rows);
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao buscar eventos' });
  } 
});

module.exports = router;
