const jwt = require('jsonwebtoken');

function validaToken(req, res, next) {
  const authHeader = req.headers['authorization'];

  if (!authHeader || !authHeader.startsWith('Bearer ')) {
    return res.status(401).json({ error: 'Token ausente ou inválido' });
  }

  const token = authHeader.split(' ')[1];

  try {
    const decoded = jwt.verify(token, '81dc9bdb52d04dc20036dbd8313ed055'); // Decodifica
    req.user = decoded; // Armazenar os dados decodificados para uso posterior
    next(); // Autorizado, segue para a próxima função
  } catch (err) {
    return res.status(403).json({ error: 'Token inválido ou expirado' });
  }
}

module.exports = validaToken;
