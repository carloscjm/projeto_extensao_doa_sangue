CREATE DATABASE IF NOT EXISTS `projeto_extensao`
USE projeto_extensao;

CREATE TABLE usuario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  senha VARCHAR(255) NOT NULL,
  tipo ENUM('organizador','participante','admin') DEFAULT 'participante',
  criado_em DATETIME DEFAULT CURRENT_TIMESTAMP,
  atualizado_em DATETIME ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE categorias (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE eventos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  descricao TEXT,
  data_inicio DATETIME NOT NULL,
  data_fim DATETIME,
  local VARCHAR(200),
  id_categoria INT,
  id_organizador INT,
  criado_em DATETIME DEFAULT CURRENT_TIMESTAMP,
  atualizado_em DATETIME ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
  FOREIGN KEY (id_organizador) REFERENCES usuario(id)
);

CREATE TABLE posts (
  id_post INT AUTO_INCREMENT PRIMARY KEY,
  id_evento INT,
  id_usuario INT,
  conteudo TEXT,
  imagem_url VARCHAR(255),
  criado_em DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_evento) REFERENCES eventos(id),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

CREATE TABLE reacoes (
  id_reacao INT AUTO_INCREMENT PRIMARY KEY,
  id_post INT,
  id_usuario INT,
  tipo ENUM('curtir','amei','interessado'),
  criado_em DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_post) REFERENCES posts(id_post),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

CREATE TABLE favoritos (
  id_usuario INT,
  id_evento INT,
  criado_em DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_usuario, id_evento),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id),
  FOREIGN KEY (id_evento) REFERENCES eventos(id)
);




INSERT INTO `usuario` (`id`, `nome`, `email`,  `senha`) VALUES (1, 'Admin', 'admin@admin.com', '202cb962ac59075b964b07152d234b70');
INSERT INTO `eventos` (`id`, `titulo`, `descricao`, `data_inicio`, `data_fim`, `local`, `id_categoria`, `id_organizador`, `criado_em`, `atualizado_em`) VALUES (1, 'ssss', 'ssss', '2025-10-23 17:50:04', '2025-10-23 17:50:05', 'adsa asd as', NULL, 1, '2025-10-23 20:50:11', '2025-10-23 20:50:23');
