CREATE DATABASE IF NOT EXISTS `iptables` 
USE `iptables`;

CREATE TABLE IF NOT EXISTS `nat_rules` (
  `idNat` int(11) DEFAULT NULL,
  `nameNat` varchar(50) DEFAULT NULL,
  `ipAddress` varchar(15) DEFAULT NULL,
  `port` smallint(6) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `nat_rules` (`idNat`, `nameNat`, `ipAddress`, `port`, `type`) VALUES
	(1, 'NAT le port 22 sur le serveur Web1', '10.0.0.1', 22, 'Source Nat');