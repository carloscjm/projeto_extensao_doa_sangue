-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.4.5 - MySQL Community Server - GPL
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              12.6.0.6765
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
CREATE DATABASE IF NOT EXISTS `projeto_extensao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projeto_extensao`;

-- Copiando estrutura para tabela projeto_extensao.centro
CREATE TABLE IF NOT EXISTS `centro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rua` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `numero` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bairro` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cidade` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telefone` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Copiando dados para a tabela projeto_extensao.centro: ~99 rows (aproximadamente)
INSERT INTO `centro` (`id`, `nome`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `telefone`) VALUES
	(1, 'Hemocentro Itajuba', 'Avenida Henriqueto Cardinale', '237', 'Varginha', 'Itajuba', 'MG', '35 36223444'),
	(2, 'Hemocentro Pouso Alegre', NULL, NULL, NULL, 'Pouso Alegre', NULL, NULL),
	(3, 'Hemocentro Maria da Fé', NULL, NULL, NULL, 'Maria da Fé', NULL, NULL),
	(100, 'Fundação Pró-Sangue - Posto Clínicas', 'Av. Dr. Enéas de Carvalho Aguiar', '255', 'Cerqueira César', 'São Paulo', 'SP', '(11) 4573-7800'),
	(101, 'Fundação Pró-Sangue - Posto Dante Pazzanese', 'Av. Dr. Dante Pazzanese', '500', 'Ibirapuera', 'São Paulo', 'SP', '(11) 4573-7800'),
	(102, 'Fundação Pró-Sangue - Posto Mandaqui', 'Rua Voluntários da Pátria', '4227', 'Mandaqui', 'São Paulo', 'SP', '(11) 4573-7800'),
	(103, 'Fundação Pró-Sangue - Posto Regional de Osasco', 'Rua Ari Barroso', '355', 'Presidente Altino', 'Osasco', 'SP', '(11) 4573-7800'),
	(104, 'Fundação Pró-Sangue - Posto Barueri', 'Rua Angela Mirella', '354', 'Jardim Barueri', 'Barueri', 'SP', '(11) 4573-7800'),
	(105, 'Colsan - Associação Beneficente de Coleta de Sangue', 'Av. Jandira', '1260', 'Indianópolis', 'São Paulo', 'SP', '(11) 5055-1474'),
	(106, 'Hemocentro da Santa Casa de São Paulo', 'Rua Dr. Cesário Mota Júnior', '112', 'Vila Buarque', 'São Paulo', 'SP', '(11) 2176-7258'),
	(107, 'Hemocentro de Campinas - Unicamp', 'Rua Carlos Chagas', '480', 'Cidade Universitária', 'Campinas', 'SP', '(19) 3521-8705'),
	(108, 'Hemonúcleo de Piracicaba', 'Av. Independência', '946', 'Cidade Alta', 'Piracicaba', 'SP', '(19) 3422-2019'),
	(109, 'Hemocentro de Ribeirão Preto - USP', 'Rua Tenente Catão Roxo', '2501', 'Vila Monte Alegre', 'Ribeirão Preto', 'SP', '(16) 2101-9300'),
	(110, 'Hemocentro de Marília', 'Rua Lourival Freire', '240', 'Fragata', 'Marília', 'SP', '(14) 3402-1850'),
	(111, 'Hemocentro de Botucatu - Unesp', 'Av. Prof. Mário Rubens Guimarães Montenegro', 's/n', 'Unesp Campus Botucatu', 'Botucatu', 'SP', '(14) 3811-6041'),
	(112, 'Núcleo de Hemoterapia de Bauru', 'Rua Monsenhor Claro', '8-88', 'Centro', 'Bauru', 'SP', '(14) 3104-3511'),
	(113, 'Hemonúcleo de Santos', 'Rua Oswaldo Cruz', '197', 'Boqueirão', 'Santos', 'SP', '(13) 3233-4269'),
	(114, 'Hemonúcleo de São José do Rio Preto', 'Av. Jamil Feres Kfouri', '80', 'Jardim Panorama', 'São José do Rio Preto', 'SP', '(17) 3201-5055'),
	(115, 'Hemorio', 'Rua Frei Caneca', '8', 'Centro', 'Rio de Janeiro', 'RJ', '(21) 2332-8611'),
	(116, 'Hemonúcleo do Hospital Federal de Bonsucesso', 'Av. Londres', '616', 'Bonsucesso', 'Rio de Janeiro', 'RJ', '(21) 3977-9595'),
	(117, 'Hemonúcleo de Niterói', 'Rua Marquês de Paraná', '303', 'Centro', 'Niterói', 'RJ', '(21) 2629-9063'),
	(118, 'Hemonúcleo de Campos dos Goytacazes', 'Rua Rocha Leão', '2', 'Caju', 'Campos dos Goytacazes', 'RJ', '(22) 2737-2300'),
	(119, 'Hemonúcleo de Friburgo', 'Rua General Osório', '322', 'Centro', 'Nova Friburgo', 'RJ', '(22) 2523-9078'),
	(120, 'Hemonúcleo de Volta Redonda', 'Av. Getúlio Vargas', '1190', 'Centro', 'Volta Redonda', 'RJ', '(24) 3348-1179'),
	(121, 'Hemonúcleo de Macaé', 'Rua Dr. Télio Barreto', '796', 'Centro', 'Macaé', 'RJ', '(22) 2762-5069'),
	(122, 'Hemominas - Belo Horizonte', 'Rua Grão Pará', '882', 'Santa Efigênia', 'Belo Horizonte', 'MG', '(31) 3768-4500'),
	(123, 'Hemominas - Unidade Estação BH', 'Av. Cristiano Machado', '11833', 'Vila Clóris', 'Belo Horizonte', 'MG', '(31) 3768-4500'),
	(124, 'Hemominas - Juiz de Fora', 'Rua Barão de Cataguases', 's/n', 'Centro', 'Juiz de Fora', 'MG', '(32) 3249-4500'),
	(125, 'Hemominas - Uberaba', 'Av. Getúlio Guaritá', '250', 'Nossa Sra. da Abadia', 'Uberaba', 'MG', '(34) 3312-5077'),
	(126, 'Hemominas - Uberlândia', 'Av. Levino de Souza', '1845', 'Umuarama', 'Uberlândia', 'MG', '(34) 3088-9200'),
	(127, 'Hemominas - Montes Claros', 'Rua Urbino Viana', '640', 'Vila Guilhermina', 'Montes Claros', 'MG', '(38) 3218-7800'),
	(128, 'Hemominas - Governador Valadares', 'Rua Barão do Rio Branco', '707', 'Centro', 'Governador Valadares', 'MG', '(33) 3212-5800'),
	(129, 'Hemominas - Pouso Alegre', 'Rua Comendador José Garcia', '848', 'Centro', 'Pouso Alegre', 'MG', '(35) 3449-9900'),
	(130, 'Hemominas - Poços de Caldas', 'Av. José Remígio de Oliveira', '365', 'Jardim da Vivaldi', 'Poços de Caldas', 'MG', '(35) 2101-9300'),
	(131, 'Hemominas - Divinópolis', 'Rua José Gabriel de Medeiros', '221', 'Padre Libério', 'Divinópolis', 'MG', '(37) 3216-6500'),
	(132, 'Hemominas - Passos', 'Rua Dr. José de Lemos', '45', 'Jardim Aclimação', 'Passos', 'MG', '(35) 3522-8900'),
	(133, 'Hemominas - Patos de Minas', 'Rua Major Gote', '1255', 'Centro', 'Patos de Minas', 'MG', '(34) 3818-3000'),
	(134, 'Hemoes - Vitória', 'Av. Marechal Campos', '1468', 'Maruípe', 'Vitória', 'ES', '(27) 3636-7900'),
	(135, 'Hemoes - Serra', 'Av. Eudes Scherrer de Souza', 's/n', 'Parque Residencial Laranjeiras', 'Serra', 'ES', '(27) 3636-7900'),
	(136, 'Hemoes - Linhares', 'Av. João Felipe Calmon', '1305', 'Centro', 'Linhares', 'ES', '(27) 3264-1500'),
	(137, 'Hemoes - Colatina', 'Rua Cassiano Castelo', 's/n', 'Centro', 'Colatina', 'ES', '(27) 3721-5000'),
	(138, 'Hemoes - São Mateus', 'Rodovia BR-101 Sul', 's/n', 'Cidade Nova', 'São Mateus', 'ES', '(27) 3767-4515'),
	(139, 'Hemepar - Curitiba', 'Travessa João Prosdócimo', '145', 'Alto da XV', 'Curitiba', 'PR', '(41) 3281-4000'),
	(140, 'Hemepar - Londrina', 'Rua Cláudio Donisete Cavalieri', '156', 'Jardim Arco-Íris', 'Londrina', 'PR', '(43) 3371-2218'),
	(141, 'Hemepar - Maringá', 'Av. Mandacaru', '1600', 'Parque das Laranjeiras', 'Maringá', 'PR', '(44) 3011-9150'),
	(142, 'Hemepar - Cascavel', 'Rua Avaetés', '370', 'Santo Onofre', 'Cascavel', 'PR', '(45) 3226-4549'),
	(143, 'Hemepar - Foz do Iguaçu', 'Av. Gramado', '364', 'Vila A', 'Foz do Iguaçu', 'PR', '(45) 3576-8020'),
	(144, 'Hemepar - Ponta Grossa', 'Rua General Osório', '427', 'Centro', 'Ponta Grossa', 'PR', '(42) 3223-1616'),
	(145, 'Hemosc - Florianópolis', 'Av. Othon Gama D Eça', '756', 'Centro', 'Florianópolis', 'SC', '(48) 3251-9700'),
	(146, 'Hemosc - Joinville', 'Av. Getúlio Vargas', '198', 'Anita Garibaldi', 'Joinville', 'SC', '(47) 3481-7400'),
	(147, 'Hemosc - Blumenau', 'Rua Theodoro Holtrup', '40', 'Vila Nova', 'Blumenau', 'SC', '(47) 3222-9800'),
	(148, 'Hemosc - Criciúma', 'Av. Centenário', '1700', 'Santa Bárbara', 'Criciúma', 'SC', '(48) 3444-7400'),
	(149, 'Hemosc - Lages', 'Rua Felipe Schmidt', '33', 'Centro', 'Lages', 'SC', '(49) 3289-7000'),
	(150, 'Hemosc - Chapecó', 'Rua São Leopoldo', '391 D', 'Centro', 'Chapecó', 'SC', '(49) 3700-6400'),
	(151, 'Hemocentro do Estado do Rio Grande do Sul', 'Av. Bento Gonçalves', '3722', 'Partenon', 'Porto Alegre', 'RS', '(51) 3336-6755'),
	(152, 'Hemocentro Regional de Pelotas', 'Av. Bento Gonçalves', '4569', 'Centro', 'Pelotas', 'RS', '(53) 3222-3002'),
	(153, 'Hemocentro Regional de Caxias do Sul', 'Rua Ernesto Alves', '2260', 'Centro', 'Caxias do Sul', 'RS', '(54) 3290-4543'),
	(154, 'Hemocentro Regional de Santa Maria', 'Alameda Santiago do Chile', '35', 'Nossa Sra. de Lourdes', 'Santa Maria', 'RS', '(55) 3221-5262'),
	(155, 'Hemocentro Regional de Passo Fundo', 'Av. Sete de Setembro', '1055', 'Centro', 'Passo Fundo', 'RS', '(54) 3311-5555'),
	(156, 'Fundação Hemocentro de Brasília', 'SMHN Quadra 3 Conjunto A Bloco 3', 's/n', 'Asa Norte', 'Brasília', 'DF', '(61) 3327-4447'),
	(157, 'Hemocentro de Goiás - Hemogo', 'Av. Anhanguera', '5195', 'Setor Coimbra', 'Goiânia', 'GO', '(62) 3201-4574'),
	(158, 'Hemocentro Regional de Rio Verde', 'Rua Augusta Bastos', '815', 'Setor Central', 'Rio Verde', 'GO', '(64) 2101-8500'),
	(159, 'Hemocentro Regional de Jataí', 'Rua Joaquim de Carvalho', '840', 'Setor Central', 'Jataí', 'GO', '(64) 2102-0850'),
	(160, 'Hemocentro Regional de Catalão', 'Rua Nilo Margon', '12', 'Centro', 'Catalão', 'GO', '(64) 3441-3550'),
	(161, 'Hemocentro de Mato Grosso - MT Hemocentro', 'Rua 13 de Junho', '1055', 'Porto', 'Cuiabá', 'MT', '(65) 3623-0044'),
	(162, 'UCT de Sinop', 'Rua das Amendoeiras', '150', 'Setor Comercial', 'Sinop', 'MT', '(66) 3531-1823'),
	(163, 'UCT de Rondonópolis', 'Rua Rio Branco', '1959', 'Vila Aurora', 'Rondonópolis', 'MT', '(66) 3422-0648'),
	(164, 'Hemosul - Campo Grande', 'Av. Fernando Corrêa da Costa', '1304', 'Centro', 'Campo Grande', 'MS', '(67) 3312-1500'),
	(165, 'Hemosul - Dourados', 'Rua Waldomiro de Souza', '295', 'Vila Industrial', 'Dourados', 'MS', '(67) 3424-0400'),
	(166, 'Hemosul - Três Lagoas', 'Rua Manoel Rodrigues Artez', '520', 'Jardim Primaveril', 'Três Lagoas', 'MS', '(67) 3522-7933'),
	(167, 'Hemoce - Fortaleza', 'Av. José Bastos', '3390', 'Rodolfo Teófilo', 'Fortaleza', 'CE', '(85) 3101-2296'),
	(168, 'Hemoce - Crato', 'Rua Coronel Antônio Luis', '1111', 'Pimenta', 'Crato', 'CE', '(88) 3102-1260'),
	(169, 'Hemoce - Juazeiro do Norte', 'Rua Beata Maria de Araújo', '30', 'Romeirão', 'Juazeiro do Norte', 'CE', '(88) 3102-1169'),
	(170, 'Hemoce - Sobral', 'Rua Gerardo Rangel', 's/n', 'Derby Clube', 'Sobral', 'CE', '(88) 3677-4624'),
	(171, 'Hemoce - Iguatu', 'Rua Edilson de Melo', '10', 'Prado', 'Iguatu', 'CE', '(88) 3581-9429'),
	(172, 'Hemoba - Salvador', 'Ladeira do Hospital Geral', 's/n', 'Brotas', 'Salvador', 'BA', '(71) 3116-5600'),
	(173, 'Hemoba - Feira de Santana', 'Av. Presidente Dutra', 's/n', 'Centro', 'Feira de Santana', 'BA', '(75) 3614-1556'),
	(174, 'Hemoba - Vitória da Conquista', 'Av. Filipinas', 's/n', 'Jurema', 'Vitória da Conquista', 'BA', '(77) 3229-2445'),
	(175, 'Hemoba - Itabuna', 'Rua Antônio Muniz', '200', 'Pontalzinho', 'Itabuna', 'BA', '(73) 3613-1126'),
	(176, 'Hemoba - Juazeiro', 'Rua Joaquim Bispo dos Santos', 's/n', 'Santo Antônio', 'Juazeiro', 'BA', '(74) 3611-7366'),
	(177, 'Hemope - Recife', 'Rua Joaquim Nabuco', '171', 'Graças', 'Recife', 'PE', '(81) 3182-4600'),
	(178, 'Hemope - Caruaru', 'Av. Oswaldo Cruz', 's/n', 'Maurício de Nassau', 'Caruaru', 'PE', '(81) 3721-3522'),
	(179, 'Hemope - Petrolina', 'Rua Dr. Pacífico da Luz', 's/n', 'Centro', 'Petrolina', 'PE', '(87) 3866-6601'),
	(180, 'Hemopi - Teresina', 'Rua 1º de Maio', '235', 'Centro', 'Teresina', 'PI', '(86) 3221-8320'),
	(181, 'Hemopi - Parnaíba', 'Rua das Palmeiras', 's/n', 'Pindorama', 'Parnaíba', 'PI', '(86) 3321-2829'),
	(182, 'Hemoam - Manaus', 'Av. Constantino Nery', '4397', 'Chapada', 'Manaus', 'AM', '(92) 3655-0100'),
	(183, 'Hemopa - Belém', 'Travessa Padre Eutíquio', '2109', 'Batista Campos', 'Belém', 'PA', '(91) 3242-9100'),
	(184, 'Hemopa - Santarém', 'Av. Frei Vicente', 's/n', 'Aeroporto Velho', 'Santarém', 'PA', '(93) 3524-7300'),
	(185, 'Hemopa - Marabá', 'Rodovia Transamazônica', 's/n', 'Nova Marabá', 'Marabá', 'PA', '(94) 3322-2939'),
	(186, 'Hemoacre - Rio Branco', 'Av. Ceará', '1999', 'Jardim de Alah', 'Rio Branco', 'AC', '(68) 3228-1500'),
	(187, 'Fhemeron - Porto Velho', 'Av. Governador Jorge Teixeira', '3766', 'Industrial', 'Porto Velho', 'RO', '(69) 3216-2234'),
	(188, 'Hemocentro Coordenador de Palmas', '301 Norte, Conj. 2, Lote 1', 's/n', 'Plano Diretor Norte', 'Palmas', 'TO', '(63) 3218-3232'),
	(189, 'HemoMar - São Luís', 'Rua 5 de Janeiro', 's/n', 'Jordoa', 'São Luís', 'MA', '(98) 3216-1100'),
	(190, 'Hemoraima - Boa Vista', 'Av. Brigadeiro Eduardo Gomes', '3418', 'Aeroporto', 'Boa Vista', 'RR', '(95) 2121-0883'),
	(191, 'Hemose - Aracaju', 'Av. Tancredo Neves', 's/n', 'Capucho', 'Aracaju', 'SE', '(79) 3225-8000'),
	(192, 'Hemoal - Maceió', 'Rua Dr. Jorge de Lima', '58', 'Trapiche da Barra', 'Maceió', 'AL', '(82) 3315-2105'),
	(193, 'Hemocentro da Paraíba - João Pessoa', 'Av. Dom Pedro II', '1119', 'Centro', 'João Pessoa', 'PB', '(83) 3218-7600'),
	(194, 'Hemocentro de Campina Grande', 'Rua Profa. Eutécia Vital', 's/n', 'Catolé', 'Campina Grande', 'PB', '(83) 3344-5470'),
	(195, 'Hemonorte - Natal', 'Av. Almirante Alexandrino de Alencar', '1800', 'Tirol', 'Natal', 'RN', '(84) 3232-6700');

-- Copiando estrutura para tabela projeto_extensao.centro_usuario
CREATE TABLE IF NOT EXISTS `centro_usuario` (
  `id_usuario` int NOT NULL,
  `id_centro` int NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_centro`),
  KEY `id_centro` (`id_centro`),
  CONSTRAINT `centro_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `centro_usuario_ibfk_2` FOREIGN KEY (`id_centro`) REFERENCES `centro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Copiando dados para a tabela projeto_extensao.centro_usuario: ~3 rows (aproximadamente)
INSERT INTO `centro_usuario` (`id_usuario`, `id_centro`) VALUES
	(1, 1),
	(1, 2),
	(1, 3);

-- Copiando estrutura para tabela projeto_extensao.demanda
CREATE TABLE IF NOT EXISTS `demanda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `centro` int DEFAULT NULL,
  `usuario` int DEFAULT NULL,
  `titulo` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `descricao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `requisitos` longtext COLLATE utf8mb3_unicode_ci,
  `tipo_sangue` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `urgencia` enum('Nivel Estavel','Urgente','Estoque Baixo') COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `horario` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `demanda` (`id`, `centro`, `usuario`, `titulo`, `descricao`, `requisitos`, `tipo_sangue`, `urgencia`, `horario`) VALUES (6, 2, 1, NULL, 'Nosso banco de sangue para o tipo **O Negativo**, o doador universal, atingiu um nível crítico devido a um aumento inesperado no número de cirurgias de emergência nesta semana. Este tipo sanguíneo é vital em situações críticas, pois pode ser transfundido para qualquer paciente, independentemente do seu tipo sanguíneo.Sua doação pode ser a diferença entre a vida e a morte para alguém que chegou em nosso hospital precisando de uma intervenção imediata.', 'Ter entre 16 e 69 anos, pesar mais de 50kg e estar em boas condições de saúde.', 'O+', 'Urgente', 'Seg a Sex, das 8h às 16h');


-- Copiando dados para a tabela projeto_extensao.demanda: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela projeto_extensao.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `tipo_sanguineo` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `senha` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tipo` enum('Clinica','Doador') COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Copiando dados para a tabela projeto_extensao.usuario: ~1 rows (aproximadamente)
INSERT INTO `usuario` (`id`, `nome`, `email`, `peso`, `idade`, `tipo_sanguineo`, `senha`, `tipo`) VALUES
	(1, 'Admin', 'admin@admin.com', NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', 'Clinica');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
