-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Maio-2018 às 23:32
-- Versão do servidor: 5.7.20-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabelateste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `desenv`
--

CREATE TABLE `desenv` (
  `idDesenv` int(11) NOT NULL,
  `NomeDesenv` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `desenv`
--

INSERT INTO `desenv` (`idDesenv`, `NomeDesenv`) VALUES
(1, 'Andre'),
(2, 'João');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `idPerguntas` int(11) NOT NULL,
  `DescPergunta` varchar(45) DEFAULT NULL,
  `TipoPergunta` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`idPerguntas`, `DescPergunta`, `TipoPergunta`) VALUES
(3, 'Qual é o seu nome?', 'text'),
(4, 'Qual area?', 'select');

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas`
--

CREATE TABLE `respostas` (
  `idRespostas` int(11) NOT NULL,
  `Descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `respostas`
--

INSERT INTO `respostas` (`idRespostas`, `Descricao`) VALUES
(5, 'Front-end'),
(6, 'Back-end'),
(7, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `todos`
--

CREATE TABLE `todos` (
  `Desenv_idDesenv` int(11) NOT NULL,
  `Perguntas_idPerguntas` int(11) NOT NULL,
  `Respostas_idRespostas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `todos`
--

INSERT INTO `todos` (`Desenv_idDesenv`, `Perguntas_idPerguntas`, `Respostas_idRespostas`) VALUES
(1, 4, 5),
(1, 4, 6),
(1, 3, 7),
(2, 4, 5),
(2, 4, 6),
(2, 3, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desenv`
--
ALTER TABLE `desenv`
  ADD PRIMARY KEY (`idDesenv`);

--
-- Indexes for table `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`idPerguntas`);

--
-- Indexes for table `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`idRespostas`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`Respostas_idRespostas`,`Desenv_idDesenv`,`Perguntas_idPerguntas`),
  ADD KEY `fk_Todos_Desenv1_idx` (`Desenv_idDesenv`),
  ADD KEY `fk_Todos_Perguntas1_idx` (`Perguntas_idPerguntas`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `fk_Todos_Desenv1` FOREIGN KEY (`Desenv_idDesenv`) REFERENCES `desenv` (`idDesenv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Todos_Perguntas1` FOREIGN KEY (`Perguntas_idPerguntas`) REFERENCES `perguntas` (`idPerguntas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Todos_Respostas1` FOREIGN KEY (`Respostas_idRespostas`) REFERENCES `respostas` (`idRespostas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
