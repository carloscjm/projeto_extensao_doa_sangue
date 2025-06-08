const express = require('express');
const pool = require('../db');
const router = express.Router();
const crypto = require('crypto');
const validaToken = require('../middleware/validaToken');

router.post('/check_login', validaToken, async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM usuario');
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  }
});


router.post('/login', async (req, res) => {
  try {
    const hash = crypto.createHash('md5').update(req.body.senha).digest('hex');
    const [rows] = await pool.query('SELECT * FROM usuario where email = "'+req.body.email+'" and senha="'+hash+'"');
    const jwt = require('jsonwebtoken');

    if (rows.length > 0) {
        let id_usr = rows[0].id;
        let tipo_usr = rows[0].tipo;

        // Dados a codificar no token
        const payload = {
            id: rows.id,
            nome: rows.nome,
            email: rows.email
        };

        // Chave secreta
        const segredo = '81dc9bdb52d04dc20036dbd8313ed055';

        // Tempo de expiração opcional
        const options = {
            expiresIn: '1h'
        };

        // Geração do token
        const token = jwt.sign(payload, segredo, options);
        res.json({"id_usr":id_usr, "tipo":tipo_usr, "jwt": token}); 
    } else {
        res.json('Email e senha nao encontrados');
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  }
}); 

module.exports = router;
