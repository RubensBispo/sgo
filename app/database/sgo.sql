SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `quantidade` varchar(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `dataDaCompra` date DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `fornecedor` varchar(255) DEFAULT NULL,
  `dataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `patrimonio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `itensLaboratorio` (
  `id` int(255) NOT NULL,
  `itemId` int(255) NOT NULL,
  `laboratorioId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `laboratorio` (
  `id` int(11) NOT NULL,
  `localizacao` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `program_user` (
  `id` int(255) NOT NULL,
  `system_unit_id` int(255) NOT NULL,
  `system_program_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `itensLaboratorio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_patrimonioId` (`itemId`);

ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `program_user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `itensLaboratorio`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

ALTER TABLE `laboratorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `program_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
