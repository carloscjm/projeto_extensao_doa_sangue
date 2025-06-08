-- --------------------------------------------------------
-- Servidor:                     10.107.0.121
-- Versão do servidor:           10.5.9-MariaDB-log - MariaDB Server
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para projeto_extensao
CREATE DATABASE IF NOT EXISTS `projeto_extensao` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `projeto_extensao`;

-- Copiando estrutura para tabela projeto_extensao.centro
CREATE TABLE `centro` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`rua` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`numero` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`bairro` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`cidade` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`estado` VARCHAR(2) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`telefone` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb3_unicode_ci'
ENGINE=InnoDB
;

-- Copiando dados para a tabela projeto_extensao.centro: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela projeto_extensao.centro_usuario
CREATE TABLE IF NOT EXISTS `centro_usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_centro` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_centro`),
  KEY `id_centro` (`id_centro`),
  CONSTRAINT `centro_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `centro_usuario_ibfk_2` FOREIGN KEY (`id_centro`) REFERENCES `centro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela projeto_extensao.centro_usuario: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela projeto_extensao.demanda
CREATE TABLE `demanda` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`centro` INT(10) NULL DEFAULT NULL,
	`usuario` INT(10) NULL DEFAULT NULL,
	`titulo` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`descricao` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`requisitos` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`tipo_sangue` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`urgencia` ENUM('Nivel Estavel','Urgente','Estoque Baixo') NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`horario` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `id` (`id`) USING BTREE
)
COLLATE='utf8mb3_unicode_ci'
ENGINE=InnoDB
;

-- Copiando dados para a tabela projeto_extensao.demanda: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela projeto_extensao.usuario
CREATE TABLE `usuario` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`email` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`peso` DECIMAL(5,2) NULL DEFAULT NULL,
	`idade` INT(10) NULL DEFAULT NULL,
	`tipo_sanguineo` VARCHAR(5) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`senha` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	`tipo` ENUM('Clinica','Doador') NULL DEFAULT NULL COLLATE 'utf8mb3_unicode_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb3_unicode_ci'
ENGINE=InnoDB
;

-- Copiando dados para a tabela projeto_extensao.usuario: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
