-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2018 at 01:52 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filtro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_categorias`
--

CREATE TABLE `tb_categorias` (
  `id` int(11) NOT NULL,
  `nome_cate` varchar(200) NOT NULL,
  `num_cate` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_categorias`
--

INSERT INTO `tb_categorias` (`id`, `nome_cate`, `num_cate`) VALUES
(1, 'Programacao', '1'),
(2, 'Sistemas Operacionais', '2'),
(3, 'Design', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cursos`
--

CREATE TABLE `tb_cursos` (
  `id` int(11) NOT NULL,
  `nome_curso` varchar(200) NOT NULL,
  `ch` varchar(200) NOT NULL,
  `nivel` varchar(200) NOT NULL,
  `categoria` enum('1','2','3') NOT NULL,
  `imagem` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cursos`
--

INSERT INTO `tb_cursos` (`id`, `nome_curso`, `ch`, `nivel`, `categoria`, `imagem`) VALUES
(14, 'PHP/MySQL', '100', 'avancado', '1', '95d820c4f947bd955f2c6f38638ee84a.jpg'),
(15, 'Linux', '90', 'intermediario', '2', '0c97cfb0df5aa7a34560ecfc4c6bfd5d.jpg'),
(16, 'Photoshop', '90', 'avancado', '3', '274065e297cb630f988f94d58d3c3f99.jpg'),
(17, 'PHP', '100', 'avancado', '1', '189e96f89451593d0152d398bf089d70.jpg'),
(18, 'HTML5 e CSS3', '150', 'avancado', '1', '0e5ea1881e42de311174e5bbb9898fd7.jpg'),
(19, 'Bootstrap', '90', 'intermediario', '1', 'f68f7d0df9eef8b6d7dd2395a79df7d6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_categorias`
--
ALTER TABLE `tb_categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoria` (`nome_cate`);

--
-- Indexes for table `tb_cursos`
--
ALTER TABLE `tb_cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `curso` (`nome_curso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_categorias`
--
ALTER TABLE `tb_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_cursos`
--
ALTER TABLE `tb_cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
