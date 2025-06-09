const express = require('express');
const pool = require('../db');
const router = express.Router();
const crypto = require('crypto');
const jwt = require('jsonwebtoken');
const validaToken = require('../middleware/validaToken');


router.post('/pega_demanda', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar demandas' });
    }
    const [rows] = await pool.query('SELECT d.id as id_demanda, d.descricao, d.urgencia, d.tipo_sangue, d.descricao AS descricao_demanda, c.nome AS centro_nome, c.cidade FROM demanda d JOIN centro c ON c.id = d.centro JOIN usuario u ON u.id = d.usuario WHERE u.id = "'+req.body.usuario+'"');
    console.log('aaaa ', rows);
    res.json(rows);
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  } 
});

router.post('/pega_centro_lista', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar demandas' });
    }
    const [rows] = await pool.query('SELECT c.id, c.nome AS centro_nome, c.cidade FROM centro c JOIN centro_usuario cr ON cr.id_centro = c.id JOIN usuario u ON u.id = cr.id_usuario WHERE u.email = "'+req.body.usuario+'"');
    console.log('aaaa ', rows);
    res.json(rows);
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  } 
});

router.post('/pega_centro_lista_cadastro', async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar demandas' });
    }
    const [rows] = await pool.query('SELECT * FROM centro'); 
    console.log('aaaa ', rows);
    res.json(rows);
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  } 
});

router.post('/cadastra_demanda', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar demandas' });
    }
    let body = req.body;
    await pool.query(`insert into demanda (centro, usuario, descricao, tipo_sangue, urgencia, horario) VALUES (`+body.centro+`, "`+body.usuario+`", "`+body.descricao+`", "`+body.tipo_sangue+`", "`+body.urgencia+`", "`+body.horario+`")`);
    res.json('Demanda inserida');
  } catch (error) {
    console.error(error); 
    res.status(500).json({ error: 'Erro ao bucadastrar demanda' });
  } 
});

router.post('/pega_demanda_por_id', validaToken, async (req, res) => {
  try {
    if (!req.body) {
      res.status(500).json({ error: 'Erro ao buscar demandas' });
    }
    const [rows] = await pool.query('SELECT d.tipo_sangue, d.descricao AS descricao_demanda, d.titulo as titulo, d.requisitos as requisitos, c.telefone, c.estado as estado, c.rua, c.numero, c.bairro, c.nome AS centro_nome, c.cidade, d.horario FROM demanda d JOIN centro c ON c.id = d.centro JOIN usuario u ON u.id = d.usuario WHERE d.id = "'+req.body.id+'"');
    console.log('aaaa ', rows);
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
