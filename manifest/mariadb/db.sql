CREATE DATABASE IF NOT EXISTS `Webook` ;

USE `Webook`;

CREATE TABLE IF NOT EXISTS `Webook`.`Livre` (
  `idLivre` int(11) DEFAULT NULL,
  `Titre` varchar(100) DEFAULT NULL,
  `Auteur` varchar(100) DEFAULT NULL,
  `Genre` varchar(20) DEFAULT NULL,
  `Image` varchar(400) DEFAULT NULL,
  `Description` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `Webook`.`Commentaire` (
  `idCommentaire` int(11) DEFAULT NULL,
  `Commentaire` varchar(200) DEFAULT NULL,
  `Pseudo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  1, 'Ton absence n’est que ténèbres', 'Jón Kalman Stefánsson', 'Roman', '/Absence.jpeg', 'Prix du livre étranger 2022.
  Ton absence n’est que ténèbres frappe par son ampleur, sa construction et son audace : le nombre de personnages, les époques enjambées, la puissance des sentiments, la violence des destins – tout semble superlatif dans ce nouveau roman de Jón Kalman Stefánsson. Les récits s’enchâssent les uns dans les autres, se perdent, se croisent ou se répondent, puis finissent par former une mosaïque romanesque extraordinaire, comme si l’auteur islandais avait voulu reconstituer la mémoire perdue non pas d’un personnage mais de l’humanité tout entière. Le résultat est d’une intensité incandescente.'
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  2, 'Celui qui veille', 'Louise Erdrich', 'Roman', '/CeluiQuiVeille.jpg', 'Prix Pulitzer 2021.
  Inspirée par la figure de son grand-père maternel, qui a lutté pour préserver les droits de son peuple, Louise Erdrich nous entraîne dans une aventure humaine peuplée de personnages inoubliables. Couronné par le prix Pulitzer, ce majestueux roman consacre la place unique qui est la sienne dans la littérature américaine contemporaine.'
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  3, 'Le Grand Monde', 'Pierre Lemaitre', 'Roman', '/GrandMonde.jpeg', 'La famille Pelletier. Trois histoires d’amour, un lanceur d’alerte, une adolescente égarée, deux processions, Bouddha et Confucius, un journaliste ambitieux, une mort tragique, le chat Joseph, une épouse impossible, un sale trafic, une actrice incognito, une descente aux enfers, cet imbécile de Doueiri, un accent mystérieux, la postière de Lamberghem, grosse promotion sur le linge de maison, le retour du passé, un parfum d’exotisme, une passion soudaine et irrésistible.
Et quelques meurtres.
Les romans de Pierre Lemaitre ont été récompensés par de nombreux prix  littéraires nationaux et internationaux. Après sa remarquable fresque de l’entre-deux-guerres, il nous propose aujourd’hui une plongée mouvementée et jubilatoire dans les Trente Glorieuses.'
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  4, 'L’Avenir de la famille - Saint-Elme, tome 2', 'Serge Lehma', 'BD','/images/SaintElme.jpg', 'Paru trois mois après le premier volet, on ne constatera aucune rupture avec ce second tome, qui continue à nous captiver grâce à un scénario tendu comme un arc. Ce polar noir et électrique va encore évoluer ici dans une tension croissante, et Franck Sangaré va prendre cher, très cher même. Ce détective taciturne et peu amène va finalement réussir à susciter l’empathie du lecteur dans une scène spectaculaire évoquant « Reservoir Dogs » où il jouera les souffre-douleurs du Derviche, le jeune homme en fugue qu’il était censé ramener chez sa riche maman, laquelle espérait peut-être le sortir du milieu peu recommandable où il était tombé du fait de son addiction à la dope. Celui qu’on avait entrevu dans le premier tome et dont le regard halluciné nous avait marqué se révèlera être un véritable psychopathe d’une cruauté implacable et guidé par une folie comparable à celle du célèbre Joker.'
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  5, 'Zoc', 'Jade Khoo', 'BD','/images/Zoc.jpg', 'Zoc a un pouvoir peu commun, elle peut trainer l’eau avec ses cheveux. Lorsque les adultes autour d’elle demandent à la jeune fille ses futurs projets de carrière, elle réclame haut et fort qu’elle veut faire quelque chose de cet atout. Alors que tout le monde lui dit d’être un peu sérieuse, Zoc persévère dans ses idées. Lorsqu’un village non loin est inondé elle décide de leur démontrer qu’ils se trompent.
Un trait et un rythme emprunts de poésie pour cette quête initiatique originale.'
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  6, 'Helena - Banana Sioule, tome 1', 'Michaël Sanlaville', 'BD', '/images/BananaSioule.jpg', 'Dans ce sport, sorti du cerveau machiavélique de Michael Sanlaville, tous les coups sont permis, des plus féroces aux plus tordus.
Et malgré les multiples polémiques, la compétition obtient rapidement une popularité mondiale et engrange les bénéfices.
Cependant, pour redorer son image, la fédération crée une école dont l’objectif est de former la future élite de ce sport.
Bien loin de ça, Helena passe son temps à aider son père aux taches quotidiennes de la ferme.
Lui, aimerait que sa fille trouve sa propre voix en ne s’enterrant pas dans un métier exigeant et épuisant mais Helena est bien où elle est , c’est à dire auprès de ses amis, sans trop se préoccuper du lendemain.
Jusqu’au jour où après une énième dispute avec son père, elle tombe sur des jeunes qui l’invitent à faire une partie de Sioule ... Et c’est la révélation.'
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  7, 'Look Back', 'Tatsuki Fujimoto ', 'Manga', '/images/LookBack.jpg', 'Fujino est une élève de CM1 qui dessine des manga pour le journal de l’école. Elle est la star de sa classe grâce à ses dessins, mais elle apprend un jour qu’une certaine Kyomoto, une élève qui ne vient jamais à l’école, désire aussi être publiée dans le journal de l’école...' 
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  8, 'Goodbye, Eri', 'Tatsuki Fujimoto', 'Manga', '/images/GoodbyeEri.jpg', 'Tout est toujours aussi bien ficelé, on est tenu en haleine tout le long du récit grâce à des questions dont on obtient les réponses avec toujours ce découpage qu’on pourrait presque qualifier de fujimotesque tant c’est devenu sa marque de fabrique ! Quelle lecture émouvante, Fujimoto joue toujours aussi bien avec notre doute par rapport à ce qui est réel et ce qui ne l’est pas.'
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  9, 'L’Intégrale des histoires de Don Rosa (2002) - Les Trésors de Picsou, tome 58', 'Don Rosa' , 'Comics', '/images/LesTrésorsDePicsou.jpg', 'Les Trésors de Picsou est un magazine lancé en 1998 par Disney Hachette Presse sous le nom de La Jeunesse de Picsou. Il est initialement constitué d’un seul volume contenant l’intégrale de La Jeunesse de Picsou (1998) puis de deux tomes, publiés respectivement en 2004 et 2005, reprenant dans une nouvelle édition les mêmes histoires en y ajoutant dans le 2ème volume des épisodes BIS. 
  Les premiers numéros publient La Jeunesse de Picsou, série de bande dessinée écrite et dessinée par Don Rosa et racontant le parcours du personnage de Picsou. Le premier volume (1998) publie intégralement sa jeunesse, quant aux deux tomes suivants, ils reprennent les douze chapitres constituant la trame principale, mais 6 épisodes BIS viennent se greffer dans le second volume (2005). 
  En devenant Les Trésors de Picsou en 2006, la publication a désormais pour vocation de publier les meilleures histoires de Carl Barks, Don Rosa, Marco Rota, Daan Jippes et occasionnellement d’autres auteurs, agrémentées de couvertures d’époque inédites en France et d’articles explicatifs replaçant les récits dans leur contexte. 
  Pour célébrer le 70ème anniversaire de Picsou, la rédaction entreprend entre 2016 et 2018 la republication complète des récits de La Jeunesse de Picsou, accompagnés d’histoires de Carl Barks et d’annotations historiques, afin d’éclairer la lecture d’une telle œuvre.'
);

INSERT INTO `Webook`.`Livre` (`idLivre`, `Titre`, `Auteur`, `Genre`, `Image`, `Description`) VALUES (
  10, 'Connemara', 'Nicolas Mathieu', 'Roman', '/images/Connemara.jpg', 'Hélène a bientôt quarante ans. Elle est née dans une petite ville de l’Est de la France. Elle a fait de belles études, une carrière, deux filles et vit dans une maison d’architecte sur les hauteurs de Nancy. Elle a réalisé le programme des magazines et le rêve de son adolescence : se tirer, changer de milieu, réussir. Et pourtant le sentiment de gâchis est là, les années ont passé, tout a déçu.
  Christophe, lui, vient de dépasser la quarantaine. Il n’a jamais quitté ce bled où ils ont grandi avec Hélène. Il n’est plus si beau. Il a fait sa vie à petits pas, privilégiant les copains, la teuf, remettant au lendemain les grands efforts, les grandes décisions, l’âge des choix. Aujourd’hui, il vend de la bouffe pour chien, rêve de rejouer au hockey comme à seize ans, vit avec son père et son fils, une petite vie peinarde et indécise. On pourrait croire qu’il a tout raté. Et pourtant il croit dur comme fer que tout est encore possible.
  Connemara c’est cette histoire des comptes qu’on règle avec le passé et du travail aujourd’hui, entre PowerPoint et open space. C’est surtout le récit de ce tremblement au mitan de la vie, quand le décor est bien planté et que l’envie de tout refaire gronde en nous. Le récit d’un amour qui se cherche par-delà les distances dans un pays qui chante Sardou et va voter contre soi.'
);