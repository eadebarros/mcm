-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13-Jul-2016 às 04:35
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcmtaekwondoteam`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbacademia`
--

CREATE TABLE `tbacademia` (
  `id` int(11) NOT NULL,
  `id_cadastro` int(11) DEFAULT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `alunos` int(10) DEFAULT NULL,
  `evento` varchar(255) DEFAULT NULL,
  `ativo` double DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbaluno`
--

CREATE TABLE `tbaluno` (
  `id` int(11) NOT NULL,
  `id_cadastro` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel_residencial` int(11) DEFAULT NULL,
  `tel_celular` int(11) DEFAULT NULL,
  `faixa` varchar(255) DEFAULT NULL,
  `academia` varchar(255) DEFAULT NULL,
  `professor` varchar(255) DEFAULT NULL,
  `exame` varchar(255) DEFAULT NULL,
  `ativo` double DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcadastro`
--

CREATE TABLE `tbcadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `faixa` varchar(255) DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL,
  `academia` varchar(255) DEFAULT NULL,
  `professor` varchar(255) DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcadastro_academia`
--

CREATE TABLE `tbcadastro_academia` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `alunos` int(10) DEFAULT NULL,
  `ativo` double DEFAULT NULL,
  `data_alteracao` datetime DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbevento`
--

CREATE TABLE `tbevento` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbresultado`
--

CREATE TABLE `tbresultado` (
  `id` int(11) NOT NULL,
  `participante` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `faixa` varchar(255) DEFAULT NULL,
  `academia` varchar(255) DEFAULT NULL,
  `evento` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `resultado` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbacademia`
--
ALTER TABLE `tbacademia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbaluno`
--
ALTER TABLE `tbaluno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbcadastro`
--
ALTER TABLE `tbcadastro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbcadastro_academia`
--
ALTER TABLE `tbcadastro_academia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbevento`
--
ALTER TABLE `tbevento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbresultado`
--
ALTER TABLE `tbresultado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbacademia`
--
ALTER TABLE `tbacademia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbaluno`
--
ALTER TABLE `tbaluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbcadastro`
--
ALTER TABLE `tbcadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbcadastro_academia`
--
ALTER TABLE `tbcadastro_academia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbevento`
--
ALTER TABLE `tbevento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbresultado`
--
ALTER TABLE `tbresultado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
