-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Nov-2021 às 14:47
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `realize`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cli_ID` int(11) NOT NULL,
  `cli_contato` varchar(50) DEFAULT NULL,
  `usu_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cli_ID`, `cli_contato`, `usu_ID`) VALUES
(1, NULL, 8),
(2, NULL, 9),
(3, NULL, 10),
(4, NULL, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `en_ID` int(11) NOT NULL,
  `en_cep` int(11) DEFAULT NULL,
  `en_uf` varchar(2) DEFAULT NULL,
  `en_cidade` varchar(30) DEFAULT NULL,
  `en_bairro` varchar(30) DEFAULT NULL,
  `en_rua` varchar(30) DEFAULT NULL,
  `en_numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`en_ID`, `en_cep`, `en_uf`, `en_cidade`, `en_bairro`, `en_rua`, `en_numero`) VALUES
(1, 12052594, 'MA', 'São Paulo', '12', '12', 12),
(2, 12052594, 'ES', 'São Paulo', '12', '12', 12),
(3, 12052594, 'ES', 'São Paulo', '12', '12', 12),
(4, 12052594, 'MS', 'Taubaté', '12', '12', 12),
(5, 12052594, 'AC', 'São Paulo', '12', '12', 12),
(6, 12052594, 'AC', 'São Paulo', '12', '12', 12),
(7, 12052594, 'AC', 'São Paulo', '12', '12', 12),
(8, 12052594, 'PB', 'São Paulo', '12', '12', 12),
(9, 12052594, 'PB', 'São Paulo', '12', '12', 12),
(10, 12052594, 'PA', 'São Paulo', '12', '12', 12),
(11, 12313213, 'PA', 'São Paulo', '12', 'Marcus', 12),
(12, 12313213, 'SP', 'Taubaté', '12', 'Marcus', 12),
(13, 12313213, 'SP', 'Taubaté', 'Esplanada ', 'Marcus de Fontes', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `garcom`
--

CREATE TABLE `garcom` (
  `gar_ID` int(11) NOT NULL,
  `gar_avaliacaoT` float DEFAULT 0,
  `gar_avaliacaoC` int(11) DEFAULT 0,
  `gar_contato` varchar(50) NOT NULL,
  `gar_descricao` varchar(250) DEFAULT NULL,
  `usu_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `garcom`
--

INSERT INTO `garcom` (`gar_ID`, `gar_avaliacaoT`, `gar_avaliacaoC`, `gar_contato`, `gar_descricao`, `usu_ID`) VALUES
(1, NULL, NULL, '', 'Disserte sobre seus talentos, suas caracteristicas e o que te torna perfeito para ser escolhido.\r\n									', 7),
(2, NULL, NULL, '', 'Disserte sobre seus talentos, suas caracteristicas e o que te torna perfeito para ser escolhido.\r\n									', 11),
(3, 0, 0, '', 'orem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dolor nibh, semper at pretium vitae, tincidunt non risus. Aenean mattis sit amet ex nec venenatis. Pellentes tempus pellentesque efficitur. Nulla commodo bibendum quam, at imperdiet orci c', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `usu_ID` int(11) NOT NULL,
  `usu_nome` varchar(30) NOT NULL,
  `usu_email` varchar(50) NOT NULL,
  `usu_senha` varchar(50) NOT NULL,
  `usu_telefone` varchar(13) DEFAULT NULL,
  `usu_celular` varchar(13) DEFAULT NULL,
  `usu_whatts` tinyint(4) DEFAULT NULL,
  `usu_sexo` varchar(10) DEFAULT NULL,
  `usu_dataNasc` date DEFAULT NULL,
  `usu_termo` tinyint(4) DEFAULT NULL,
  `en_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`usu_ID`, `usu_nome`, `usu_email`, `usu_senha`, `usu_telefone`, `usu_celular`, `usu_whatts`, `usu_sexo`, `usu_dataNasc`, `usu_termo`, `en_ID`) VALUES
(1, 'a', 'uchihafabricio@gmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, NULL),
(2, 'a', 'uchihafabriciio@gmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, NULL),
(3, 'a', 'uchihsafabriciio@gmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, 3),
(4, 'a', 'uchih1afabricio1@gmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, 4),
(5, 'a', 'uchihafabr1icio@gmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1221-11-12', NULL, 5),
(6, 'a', 'uchihqwewqafabricio@gmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, 6),
(7, 'a', 'uchiricio@gmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, 7),
(8, 'a', 'les1a.fabricio@hotmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, 8),
(9, 'a', '12uchihafabricio@gmail.com', 'c20ad4d76fe97759aa27a0c99bff67', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, 9),
(10, 'a', '21uchihafabricio@gmail.com', '3c59dc048e8850243be8079a5c74d079', '58585468456', '(12)991559935', 1, 'Feminino', '1212-12-12', NULL, 10),
(11, 'Joao da neves', 'exemplo@ex.com', 'c20ad4d76fe97759aa27a0c99bff6710', '58585468456', '(12)241559935', 1, 'Masculino', '2211-02-21', NULL, 11),
(12, 'marcos sa silva', 'marcos@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', '58585468456', '(12)231559935', 1, 'Masculino', '1212-12-12', NULL, 12),
(13, 'Diogo Lima Oliveira', 'exemplo@exe.com', 'c20ad4d76fe97759aa27a0c99bff6710', '12982841522', '12982841522', 1, 'Feminino', '1999-02-19', NULL, 13);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cli_ID`),
  ADD KEY `usu_ID` (`usu_ID`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`en_ID`);

--
-- Índices para tabela `garcom`
--
ALTER TABLE `garcom`
  ADD PRIMARY KEY (`gar_ID`),
  ADD KEY `usu_ID` (`usu_ID`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_ID`),
  ADD KEY `en_ID` (`en_ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cli_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `en_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `garcom`
--
ALTER TABLE `garcom`
  MODIFY `gar_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`usu_ID`) REFERENCES `usuario` (`usu_ID`);

--
-- Limitadores para a tabela `garcom`
--
ALTER TABLE `garcom`
  ADD CONSTRAINT `garcom_ibfk_1` FOREIGN KEY (`usu_ID`) REFERENCES `usuario` (`usu_ID`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`en_ID`) REFERENCES `endereco` (`en_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
