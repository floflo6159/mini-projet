CREATE DATABASE IF NOT EXISTS `webook` ;

USE `webook`;

CREATE TABLE IF NOT EXISTS `webook`.`livre` (
  `idLivre` int(11) DEFAULT NULL,
  `nomLivre` varchar(50) DEFAULT NULL,
  `nomAuteur` varchar(15) DEFAULT NULL,
  `Genre` smallint(6) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `webook`.`commentaire` (
  `idCommentaire` int(11) DEFAULT NULL,
  `Commentaire` varchar(50) DEFAULT NULL,
  `ipAddress` varchar(15) DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `webiptables`.`nat_filter` (
  `idNat` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ipAddressSrc` varchar(15) DEFAULT NULL,
  `portSrc` smallint(6) DEFAULT NULL,
  `ipAddressDst` varchar(15) DEFAULT NULL,
  `portDst` smallint(6) DEFAULT NULL,  
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `webiptables`.`nat_rules` (`idNat`, `nameNat`, `ipAddress`, `port`, `type`) VALUES
	(1, 'NAT le port 22 sur le serveur Web1', '10.0.0.1', 22, 'Source Nat');

INSERT INTO `webiptables`.`nat_alias` (`id`, `name`, `ipAddress`, `port`) VALUES
	(1, 'SSH WebServer1', '10.0.0.1', 22);

INSERT INTO `webiptables`.`nat_alias` (`id`, `name`, `ipAddress`, `port`) VALUES
	(2, 'SSH WebServer2', '10.0.0.2', 22);