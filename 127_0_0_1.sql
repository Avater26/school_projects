-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 21. 09 2019 kl. 12:10:23
-- Serverversion: 5.6.24
-- PHP-version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `birgers_bolcher`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bolche`
--

CREATE TABLE IF NOT EXISTS `bolche` (
  `id` int(11) NOT NULL,
  `navn` varchar(10) NOT NULL,
  `farve` varchar(7) NOT NULL,
  `vægt` int(11) NOT NULL,
  `surhed` varchar(11) NOT NULL,
  `styrke` varchar(6) NOT NULL,
  `smag` varchar(8) NOT NULL,
  `råvarepris` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `bolche`
--

INSERT INTO `bolche` (`id`, `navn`, `farve`, `vægt`, `surhed`, `styrke`, `smag`, `råvarepris`) VALUES
(1, 'Jordbær', 'Rød', 11, 'Sødt', 'Mild', 'Jordbær', 16),
(2, 'Appelsin', 'Orange', 12, 'Sødt', 'Mild', 'Appelsin', 13),
(3, 'Citron', 'Gul', 10, 'Bittert', 'Mild', 'Citron', 14),
(4, 'Salmiaktop', 'Sort', 6, 'Sødt', 'Stærk', 'Salmial', 12),
(5, 'Blå Haj', 'Lyseblå', 22, 'Let bittert', 'Medium', 'Anis', 19),
(6, 'Rød Perle', 'Rød', 8, 'Sødt', 'Medium', 'Jordbær', 9),
(7, 'Gul Perle', 'Gul', 8, 'Bittert', 'Medium', 'Citron', 10),
(8, 'Blå Perle', 'Blå', 8, 'Let bittert', 'Stærk', 'Anis', 11);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bolche_v2`
--

CREATE TABLE IF NOT EXISTS `bolche_v2` (
  `id` int(11) NOT NULL,
  `navn` varchar(10) NOT NULL,
  `farve` int(11) NOT NULL,
  `vægt` int(11) NOT NULL,
  `surhed` int(11) NOT NULL,
  `styrke` int(11) NOT NULL,
  `smag` int(11) NOT NULL,
  `råvarepris` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `bolche_v2`
--

INSERT INTO `bolche_v2` (`id`, `navn`, `farve`, `vægt`, `surhed`, `styrke`, `smag`, `råvarepris`) VALUES
(1, 'Jordbær', 1, 11, 1, 1, 1, 16),
(2, 'Appelsin', 2, 12, 1, 1, 2, 13),
(3, 'Citron', 3, 10, 2, 1, 3, 14),
(4, 'Salmiaktop', 4, 6, 1, 2, 4, 12),
(5, 'Blå Haj', 5, 22, 3, 3, 5, 19),
(6, 'Rød Perle', 1, 8, 1, 3, 1, 9),
(7, 'Gul Perle', 3, 8, 2, 3, 3, 10),
(8, 'Blå Perle', 6, 8, 3, 2, 5, 11);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `farve`
--

CREATE TABLE IF NOT EXISTS `farve` (
  `id` int(11) NOT NULL,
  `farve` varchar(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `farve`
--

INSERT INTO `farve` (`id`, `farve`) VALUES
(1, 'Rød'),
(2, 'Orange'),
(3, 'Gul'),
(4, 'Sort'),
(5, 'Lyseblå'),
(6, 'Blå');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `smag`
--

CREATE TABLE IF NOT EXISTS `smag` (
  `id` int(11) NOT NULL,
  `smag` varchar(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `smag`
--

INSERT INTO `smag` (`id`, `smag`) VALUES
(1, 'Jordbær'),
(2, 'Appelsin'),
(3, 'Citron'),
(4, 'Salmial'),
(5, 'Anis');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `styrke`
--

CREATE TABLE IF NOT EXISTS `styrke` (
  `id` int(11) NOT NULL,
  `styrke` varchar(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `styrke`
--

INSERT INTO `styrke` (`id`, `styrke`) VALUES
(1, 'Mild'),
(2, 'Stærk'),
(3, 'Medium');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `surhed`
--

CREATE TABLE IF NOT EXISTS `surhed` (
  `id` int(11) NOT NULL,
  `surhed` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `surhed`
--

INSERT INTO `surhed` (`id`, `surhed`) VALUES
(1, 'Sødt'),
(2, 'Bittert'),
(3, 'Let bittert');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `bolche`
--
ALTER TABLE `bolche`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `bolche_v2`
--
ALTER TABLE `bolche_v2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `farve`
--
ALTER TABLE `farve`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `smag`
--
ALTER TABLE `smag`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `styrke`
--
ALTER TABLE `styrke`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `surhed`
--
ALTER TABLE `surhed`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `bolche`
--
ALTER TABLE `bolche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Tilføj AUTO_INCREMENT i tabel `bolche_v2`
--
ALTER TABLE `bolche_v2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Tilføj AUTO_INCREMENT i tabel `farve`
--
ALTER TABLE `farve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Tilføj AUTO_INCREMENT i tabel `smag`
--
ALTER TABLE `smag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `styrke`
--
ALTER TABLE `styrke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tilføj AUTO_INCREMENT i tabel `surhed`
--
ALTER TABLE `surhed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `brians_ostebiks`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `oste`
--

CREATE TABLE IF NOT EXISTS `oste` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `weight` decimal(6,2) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `descib` text NOT NULL,
  `img` varchar(15) NOT NULL,
  `family` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `oste`
--

INSERT INTO `oste` (`id`, `name`, `weight`, `price`, `descib`, `img`, `family`) VALUES
(1, 'Roquefort', '25.00', '195.00', 'Roquefort er en blåskimmelost opkaldt efter den franske by Roquefort-sur-Soulzon. Roquefortostens historie kan spores tilbage til år 79 e.Kr.', 'roquefort.jpg', 1),
(2, 'Halloumi', '200.00', '20.00', 'Halloumi er en halvhård, umodnet, brinedost fremstillet af en blanding af ged- og fåremælk, og til tider også ko mælk.', 'halloumi.jpg', 2),
(3, 'Feta', '100.00', '8.50', 'Feta er betegnelsen på en hvid græsk ost af fåremælk, sjældnere af fåre- og gedemælk (næsten aldrig af ren gedemælk) med halvfast til fast konsistens, og let til skarp salt smag.', 'feta.jpg', 3),
(4, 'Parmesan', '250.00', '47.00', 'Parmigiano-Reggiano eller parmesan er en hård riveost lavet af komælk. Revet parmesanost bruges ofte på pastaretter, ligesom det er almindeligt at bruge i risotto.', 'parmesan.jpg', 4),
(5, 'Mascarpone', '250.00', '31.00', 'Mascarpone er en mild, cremet friskost lavet af creme fraiche og fløde der koaguleres med syre f.eks. citronsyre og sommetider tilsættes der også kærnemælk.', 'mascarpone.jpg', 5),
(6, 'Mozzarella', '210.00', '15.50', 'Mozzarella er en traditionelt sydlig italiensk ost lavet af italiensk bøffelmælk ved hjælp af pasta filata-metoden.', 'mozzarella.jpg', 6),
(7, 'Manchego', '1000.00', '272.00', 'Manchego er en ost fremstillet af fåremælk lagret i min. 60 dage. Den er produceret i Castilla-La Mancha-regionen i Spanien. Manchego er en af Spaniens mest kendte ost og kan købes i de fleste danske supermarkeder.', 'manchego.jpg', 7),
(8, 'Port Salut', '100.00', '23.50', 'Port Salut er en halvfast rødkitsost med en mild, noget syrlig smag. Den syrlige smag skyldes mælkesyrebakterier, der tilføjes ved fremstillingen af osten. Port Salut er fremstillet af komælk og har en bleggul farve og en karakteristisk orange skorpe, som er spiselig.', 'portsalut.jpg', 8),
(9, 'Camembert', '250.00', '39.00', 'Camembert er en velkendt fransk dessertost. Det er en blød hvidskimmelsost. Osten er opfundet af Marie Harel i 1791 og er opkaldt efter en by i Normandiet. Skimmelsvampe, som anvendes, er Penicillium camemberti og Penicillium candida.', 'camembert.jpg', 9),
(10, 'Brie', '1000.00', '194.00', 'Brie er en mild hvidskimmelost, der kommer fra den franske historiske region Brie.', 'brie.jpg', 10);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Blå'),
(2, 'Pasta filata'),
(3, 'Feta'),
(4, 'Parmesan'),
(5, 'Mascarpone'),
(6, 'Italiensk ost'),
(7, 'Manchego'),
(8, 'Port Salut'),
(9, 'Camembert'),
(10, 'Brie');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `oste`
--
ALTER TABLE `oste`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `oste`
--
ALTER TABLE `oste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Data dump for tabellen `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `cmk_møbler`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Sofa'),
(2, 'Sofabord'),
(3, 'Spisebord'),
(4, 'Spisestol');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `contact_info`
--

CREATE TABLE IF NOT EXISTS `contact_info` (
  `id` int(11) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `contact_info`
--

INSERT INTO `contact_info` (`id`, `address`, `city`, `phone`, `fax`, `email`) VALUES
(1, 'Esplanaden 52', '2100 København K', 33633363, 33634108, 'info@cmkmobler.dk');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `designers`
--

CREATE TABLE IF NOT EXISTS `designers` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `designers`
--

INSERT INTO `designers` (`id`, `name`) VALUES
(1, 'Karl Rüdiger'),
(2, 'Hans J. Wegner'),
(3, 'Bruno Mathsson'),
(4, 'Morten Voss'),
(5, 'Kasper Salto');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `primary_img` tinyint(4) NOT NULL DEFAULT '0',
  `fk_product` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `path`, `primary_img`, `fk_product`) VALUES
(1, 'less_rod.jpg', 1, 1),
(2, 'less_sort.jpg', 0, 1),
(3, 'less_grey.jpg', 0, 1),
(4, 'brisbane_rod.jpg', 1, 2),
(5, 'brisbane_grey.jpg', 0, 2),
(6, 'brisbane_sort.jpg', 0, 2),
(7, 'bari_boe.jpg', 1, 3),
(8, 'bari_eg.jpg', 0, 3),
(9, 'bari_valnut.jpg', 0, 3),
(10, 'como_crome.jpg', 1, 4),
(11, 'como_eg.jpg', 0, 4),
(12, 'como_valnut.jpg', 0, 4),
(13, 'corona_eg.jpg', 1, 5),
(14, 'corona_hvid.jpg', 0, 5),
(15, 'corona_sort.jpg', 0, 5),
(16, 'ETC_orange.jpg', 1, 6),
(17, 'ETC_smoke.jpg', 0, 6),
(18, 'ETC_red.jpg', 0, 6),
(21, '1568976070972.jpg', 0, 15),
(22, '1568976070974.jpg', 1, 15),
(23, '1568976070975.jpg', 0, 15),
(24, '1568976070975.jpg', 0, 15),
(30, '1568976822997.jpg', 0, 15);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `headline` varchar(72) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `author` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `news`
--

INSERT INTO `news` (`id`, `headline`, `text`, `date`, `author`) VALUES
(1, 'En salatskål - er ikke bare en salatskål...', 'Nej, en salatskål fra det århusianske firma Ego skal være både flot, fræk og ikke mindst funktionel. Fx med en forhøjning i midten, hvor salatbestikket kan hvile, mener direktør i Ego, Michael Bruun, og designer Steffen Schmelling. Sammen står de bag en række lækre produkter til køkken og spisebord. - Vores design er lidt en reaktion på noget, der har været meget af, nmelig "holderen til holderen" - design for designets skyld. Det skal være super funktionelt og samtidig noget der overrasker brugeren, mener Michael Bruun. Både indkøbere og kunder har taget overmåde godt imod produkterne, som også møder succes internationalt, og de vil være at finde i butikkerne fra juni 2006.', '2019-08-11', 'Iber Børgesen'),
(2, 'Formland 2006 - Potten i gummi fik prisen', 'Pot for One Flower - vinder af Formland Prisen i foråret 2006. 10 farver, to stk. for 149 kr., Normann Copenhagen. En ganske lille, men alligevel helt innovativ urtepotte i gummi løb med Formland Prisen, der uddeles hvert halve år på messen Formland i Herning. Med prisen følger 100.000 kr. til markedsføring. Pot for One Flower, som vinderen hedder, er designet af Boris Berlin og Poul Christiansen fra Komplot Design for Normann Copenhagen. Fra dommer-komiteen lød det, at Normann tidligere har anvendt gummi til bl.a. en vaskebalje, et dørslag og en tragt, og nu fuldendes serien med et produkt til bordet. De to andre nominerede til Formland Prisen var et par solide børnemøbler fra firmaet Collect Furniture samt vasen Confetti fra Rosendahl. Møblerne er designet i skæve vinkler, der hindrer, at de vælter, og vasen er designet af Lin Utzon, der har dekoreret med forårsglade farver i nye sammensætninger.', '2019-08-09', 'Dorte Mosbæk'),
(3, 'Innovativ duo bag ny møbelkollektion', 'Danskproducerede møbler til "den moderne design- og kvalitetsbeviste forbruger", som ikke vil købe de samme møbler som sine forældre.Det er nyeste idé fra den 28-årige møbelarkitekt René Hovgaard og møbelmanden Jens Hornbak, 32. Sammen danner de firmaet dnmark, som lige nu er aktuel med en helt ny møbelkollektion, der sælges landet over. Kollektionen indeholder bl.a. Daybed i læder fra 25.500 kr., stolen Pablo fra 1375 kr. og bordet Hornsleth Café skabt i samarbejde med kunstneren Kristian von Hornsleth fra 3300 kr.', '2019-08-05', 'Reimer Bo'),
(4, 'Lightyears udfordrer markedet for designede lamper', 'Ny lampevirksomhed bag ambitiøs lancering af dansk design. I 2005 introduceres 15 forskellige lampeserier alle initieret af nulevende førende designere. Lightyears A/S er navnet på den nye aktør på markedet for boligbelysning i Skandinavien, som på Copenhagen International Furniture Fair i maj præsenterer den mest ambitiøse produktlancering for designede belysningsprodukter i Danmark i mange år. Designede lamper af høj kvalitet til en fair pris er den bærende forretningsidé. ”Visionen er at gøre designede lamper tilgængelige for en bred målgruppe af design- og kvalitetsbevidste forbrugere,” siger adm. dir. Lars Østergaard Olsen.', '2019-07-26', 'Finn Jørgensen'),
(5, 'Montana / Bang & Olufsen arrangement i butikken i august.', 'Vi arrangerer med B&O i Vingårdsgade et spændende arrangement, hvor vi præsenterer nyheder fra B&O samt Montana. Indretningsarkitekt fra Montana samt specialister fra B&O vil være tilstede. Vi er vært ved en let forfriskning. For nærmere info. / dato samt tidspunkter venligst kontakt Jan Sørensen i butikken.', '2019-07-24', 'Bent Bøf');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(2, 'magnusthestrup@hotmail.com'),
(3, 'magnusthestrup@hotmail.com'),
(4, 'magnusthestrup@hotmail.com');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `open_times`
--

CREATE TABLE IF NOT EXISTS `open_times` (
  `id` int(11) NOT NULL,
  `days` varchar(20) NOT NULL,
  `open` time NOT NULL,
  `close` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `open_times`
--

INSERT INTO `open_times` (`id`, `days`, `open`, `close`) VALUES
(2, 'Mandag-Torsdag', '10:00:00', '17:00:00'),
(3, 'Fredag', '10:00:00', '16:00:00'),
(4, 'Lørdag', '12:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `description` text NOT NULL,
  `product_nr` int(11) NOT NULL,
  `fk_designer` int(11) NOT NULL,
  `design_year` int(11) NOT NULL,
  `fk_category` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `product_nr`, `fk_designer`, `design_year`, `fk_category`) VALUES
(1, 'Less', '4470.00', 'Less er det seneste bud på en danskproduceret kvalitetssofa, der repræsenterer det bedste i CMK møblers designfilosifi. Gennemført kvalitet til menneskelige priser. Det er eget design helt fra bunden med en kerne i massivt træ og polstring i det bedste skum. Derfor er der også 7 års garanti mod deformation på puderne. Ben i rustfrit stål.', 123456, 1, 2004, 1),
(2, 'Brisbane', '5765.00', 'Brisbane-serien har et stramt, stilsikkert formsprog, der fuldendes af et elegant chromstel. Vælg mellem to eksklusive læderkvaliteter og en blød stofudgave – alle i mange spændende farvevarianter.', 132456, 1, 2005, 1),
(3, 'Bari', '2999.00', 'Bari bordet er ægte dansk håndværk af massiv amerikansk ege- eller valnøddetræ. Stellet er i  Rustfrit stål. Bordet leveres incl. Olieplejesæt.', 241345, 2, 2004, 2),
(4, 'Cromo', '6599.00', 'De mange variationsmuligheder i materialer, former og størrelser gør cromo bord-serien velegnet til et utal af formål. Med deres kvadratiske, rektangulære, cirkulære, super-cirkulære eller superelliptiske former tilgodeser bordene stort set alle indretningsbehov. Spændebenene fås forkromet og satinforkromet, mens søjlefodsbordene har satinpoleret aluminiumsfod.', 412632, 3, 2006, 3),
(5, 'Corona', '12999.00', 'Ovalt eller rundt bord i finer, mdf og stål. Lakeret, lamineret eller fineret bordplade mat eller højglans lak. Polerede ben i rustfrit stål og aluminium. Højde 73 cm. eller 43 cm.', 214325, 4, 2001, 3),
(6, 'ETC', '1349.00', 'ETC er innovation fra fremtiden designet af Kasper Salto. ETC har dyderne med fra fortidens klassiske stole omsat til nutidens materialevalg og er velegnet både til indendørs og udendørs brug. Rammen er aluminium, og ryggen og sædet er støbt i kunststof. Resultatet er en let, meget komfortabel og robust stol. Satinlooket fuldender indtrykket af Ice som en stol fra fremtiden.', 482616, 5, 2006, 4),
(7, 'test', '2500.00', '123', 420, 4, 2005, 3),
(8, 'test', '213.00', '123', 213124, 3, 12421, 4),
(9, 'test', '432.00', 'fge', 432, 3, 3245, 1),
(10, 'asf', '1432.00', 'afe', 2344, 1, 3142, 1),
(11, 'qwr', '412.00', 'rqw', 124, 1, 142, 1),
(12, 'qwr', '412.00', 'rqw', 124, 1, 142, 1),
(15, 'test1', '1234.00', 'afe', 65, 1, 0, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `roles`
--

INSERT INTO `roles` (`id`, `name`, `level`) VALUES
(1, 'SuperAdmin', 100),
(2, 'admin', 99);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(72) NOT NULL,
  `fk_role` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fk_role`) VALUES
(3, 'admin', '$2a$10$FsbjZR0u4IRNrdlN6qNSue79e9HKA4csxpT1IB0aS3hCLf8GwRDdy', 1);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `designers`
--
ALTER TABLE `designers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_images_products_idx` (`fk_product`);

--
-- Indeks for tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `open_times`
--
ALTER TABLE `open_times`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_product_category_idx` (`fk_category`), ADD KEY `fk_product_designer_idx` (`fk_designer`);

--
-- Indeks for tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_users_roles_idx` (`fk_role`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tilføj AUTO_INCREMENT i tabel `designers`
--
ALTER TABLE `designers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- Tilføj AUTO_INCREMENT i tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `open_times`
--
ALTER TABLE `open_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Tilføj AUTO_INCREMENT i tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `fk_images_products` FOREIGN KEY (`fk_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrænsninger for tabel `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`fk_category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_product_designer` FOREIGN KEY (`fk_designer`) REFERENCES `designers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrænsninger for tabel `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `fk_users_roles` FOREIGN KEY (`fk_role`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `armor`
--

CREATE TABLE IF NOT EXISTS `armor` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `defense_physical` varchar(45) NOT NULL,
  `defense_elemental` varchar(45) NOT NULL,
  `resistance` varchar(45) NOT NULL,
  `poise` int(11) NOT NULL,
  `durability` int(11) NOT NULL,
  `weight` float NOT NULL,
  `armor_slot` int(11) NOT NULL,
  `notes` text,
  `picture` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `armor`
--

INSERT INTO `armor` (`id`, `name`, `defense_physical`, `defense_elemental`, `resistance`, `poise`, `durability`, `weight`, `armor_slot`, `notes`, `picture`) VALUES
(1, 'Helm of the Wise', '18/17.1/20.7/18', '12/13/10', '11/7/18', 8, 500, 5.1, 1, NULL, 'armors\\helm-of-the-wise.png'),
(2, 'Armor of the Glorious', '47/44.6/54.1/47', '31/34/25', '28/19/24', 20, 500, 13.3, 2, NULL, 'armors\\armor-of-the-glorious.png'),
(3, 'Gauntlets Of The Vanquisher	', '11/10.5/12.7/11', '7/7/6', '6/5/4', 4, 500, 3, 3, NULL, 'armors\\gauntlets-of-the-vanquisher.png'),
(4, 'Boots Of The Explorer', '14/13.3/16.1/14', '10/11/7', '8/6/5', 6, 500, 4, 4, NULL, 'armors\\boots-of-the-explorer.png'),
(5, 'Crown of Dusk', '5/5/5/5', '11/2/6', '5/5/20', 0, 150, 0.4, 1, 'Boosts spell damage by 20%, but takes 30% additional damage from magic attacks', 'armors\\crown-of-dusk.png'),
(6, 'Antiquated Dress', '14/14/14/14', '33/6/19', '14/14/26', 0, 150, 1, 2, NULL, 'armors\\antiquated-dress.png'),
(7, 'Antiquated Gloves', '8/8/8/8', '19/3/11', '8/8/16', 0, 150, 0.6, 3, NULL, 'armors\\antiquated-gloves.png'),
(8, 'Antiquated Skirt', '15/15/15/15', '35/17/21', '20/20/52', 0, 150, 3, 4, NULL, 'armors\\antiquated-skirt.png'),
(9, 'Balder Helm', '14/13.7/17.1/13.4', '6/8/6', '8/6/0', 6, 450, 4.2, 1, NULL, 'armors\\balder-helm.png'),
(10, 'Balder Armor', '37/36.3/45.1/35.5', '15/18/15', '20/16/0', 16, 450, 10.9, 2, NULL, 'armors\\balder-armor.png'),
(11, 'Balder Gauntlets', '12/11.8/14.6/11.5', '7/8/5', '6/5/0', 5, 450, 3.5, 3, NULL, 'armors\\balder-gauntlets.png'),
(12, 'Balder Leggings', '22/21.6/26.8/21.1', '12/14/9', '14/12/0', 9, 405, 6.4, 4, NULL, 'armors\\balder-leggings.png'),
(13, 'Brigand Hood', '9/9.9/9/8.1', '8/5/6', '8/8/0', 0, 200, 1.2, 1, NULL, 'armors\\brigand-hood.png'),
(14, 'Brigand Armor', '23/25.3/23/20.7', '20/13/17', '20/20/0', 0, 200, 3.1, 2, NULL, 'armors\\brigand-armor.png'),
(15, 'Brigand Gauntlets', '14/15.4/14/12.6', '12/8/10', '12/12/0', 0, 200, 1.8, 3, NULL, 'armors\\brigand-gauntlets.png'),
(16, 'Brigand Trousers', '14/15.4/14/12.6', '12/8/10', '12/12/0', 0, 200, 1.8, 4, NULL, 'armors\\brigand-trousers.png'),
(17, 'Big Hat', '14/15.4/15.4/12.6', '43/7/17', '13/13/0', 0, 250, 3, 1, NULL, 'armors\\big-hat.png'),
(18, 'Sage Robe', '41/43.3/42.6/41', '28/29/35', '49/49/0', 0, 250, 4, 2, NULL, 'armors\\sage-robe.png'),
(19, 'Traveling Gloves', '12/13/12.5/12', '16/8/10', '14/14/0', 0, 250, 1.6, 3, NULL, 'armors\\traveling-gloves.png'),
(20, 'Traveling Boots', '12/13/12.5/12', '16/8/10', '14/14/0', 0, 250, 1.6, 4, NULL, 'armors\\traveling-boots.png'),
(21, 'Black Iron Helm', '27/25.7/31.1/27', '11/19/8', '17/10/5', 12, 600, 6, 1, NULL, 'armors\\black-iron-helm.png'),
(22, 'Black Iron Armor', '68/64.6/78.2/68', '30/51/21', '43/25/13', 31, 600, 15.6, 2, NULL, 'armors\\black-iron-armor.png'),
(23, 'Black Iron Gauntlets', '40/38/46/40', '17/30/13', '25/14/8', 18, 600, 9.2, 3, NULL, 'armors\\black-iron-gauntlets.png'),
(24, 'Black Iron Leggings', '40/38/46/40', '17/30/13', '25/14/8', 18, 600, 9.2, 4, NULL, 'armors\\black-iron-leggings.png'),
(25, 'Black Knight Helm', '21/19.9/23.7/20.6', '11/18/6', '12/6/0', 8, 550, 5, 1, NULL, 'armors\\black-knight-helm.png'),
(26, 'Black Knight Armor', '57/54.2/64.4/55.9', '29/48/17', '32/15/0', 21, 550, 13, 2, NULL, 'armors\\black-knight-armor.png'),
(27, 'Black Knight Gauntlets', '26/24.7/29.4/25.5', '14/23/8', '15/8/0', 10, 550, 6, 3, NULL, 'armors\\black-knight-gauntlets.png'),
(28, 'Black Knight Leggings', '30/28.5/33.9/29.4', '15/26/9', '17/9/0', 11, 550, 7, 4, NULL, 'armors\\black-knight-leggings.png'),
(29, 'Mask of Velka', '12/13.1/12/12', '12/10/7', '9/9/20', 0, 400, 2.5, 1, NULL, 'armors\\mask-of-velka.png'),
(30, 'Black Cleric Robe', '23/25.1/23/23', '29/25/19', '22/22/13', 0, 400, 3.9, 2, NULL, 'armors\\black-cleric-robe.png'),
(31, 'Black Manchette', '11/12/11/11', '14/11/9', '10/10/5', 0, 400, 1.8, 3, NULL, 'armors\\black-manchette.png'),
(32, 'Black Tights', '16/17.4/16/16', '22/17/13', '15/15/9', 0, 400, 2.8, 4, NULL, 'armors\\black-tights.png'),
(33, 'Black Sorcerer Hat', '5/5.1/5.5/5', '11/8/8', '12/12/2', 0, 200, 0.7, 1, NULL, 'armors\\black-sorcerer-hat.png'),
(34, 'Black Sorcerer Cloak', '13/13.4/14.2/13', '28/21/21', '31/31/4', 0, 200, 1.8, 2, NULL, 'armors\\black-sorcerer-cloak.png'),
(35, 'Black Sorcerer Gauntlets', '8/8.2/8.7/8', '17/12/12', '18/18/2', 0, 200, 1, 3, NULL, 'armors\\black-sorcerer-gauntlets.png'),
(36, 'Black Sorcerer Boots', '8/8.2/8.7/8', '17/12/12', '18/18/2', 0, 200, 1, 4, NULL, 'armors\\black-sorcerer-boots.png'),
(37, 'Brass Helm', '18/17.3/20.3/18', '12/11/11', '11/9/6', 8, 600, 5.1, 1, NULL, 'armors\\brass-helm.png'),
(38, 'Brass Armor', '37/35.5/41.8/37', '27/25/25', '24/20/11', 16, 600, 10.9, 2, NULL, 'armors\\brass-armor.png'),
(39, 'Brass Gauntlets', '19/18.2/21.5/19', '14/12/12', '12/10/6', 8, 600, 5.4, 3, NULL, 'armors\\brass-gauntlets.png'),
(40, 'Brass Leggings', '23/22.1/26/23', '16/15/15', '14/12/7', 9, 600, 6.4, 4, NULL, 'armors\\brass-leggings.png'),
(41, 'Catarina Helm', '22/21.8/25.3/22', '12/13/7', '13/9/0', 8, 400, 4.5, 1, NULL, 'armors\\catarina-helm.png'),
(42, 'Catarina Armor', '57/56.4/65.5/57', '31/37/19', '34/24/0', 21, 400, 11.7, 2, NULL, 'armors\\catarina-armor.png'),
(43, 'Catarina Gauntlets', '34/33.7/39.1/34', '18/21/12', '21/13/0', 13, 400, 6.9, 3, NULL, 'armors\\catarina-gauntlets.png'),
(44, 'Catarina Leggings', '34/33.7/39.1/34', '18/21/12', '21/13/0', 13, 400, 6.9, 4, NULL, 'armors\\catarina-leggings.png'),
(45, 'Chain Helm', '12/12/14.4/11.6', '10/8/3', '10/6/0', 5, 300, 3, 1, NULL, 'armors\\chain-helm.png'),
(46, 'Chain Armor', '30/30/36/29.1', '21/16/7', '20/12/0', 9, 300, 6, 2, NULL, 'armors\\chain-armor.png'),
(47, 'Leather Gauntlets', '12/12/14.4/11.6', '10/8/4', '12/7/0', 5, 300, 3.6, 3, NULL, 'armors\\leather-gauntlets.png'),
(48, 'Chain Leggings', '18/18/21.6/17.5', '14/12/5', '15/9/0', 7, 300, 4.6, 4, NULL, 'armors\\chain-leggings.png'),
(49, 'Snickering Top Hat', '12/16.2/12/12', '13/9/12', '19/14/0', 0, 300, 2, 1, NULL, 'armors\\snickering-top-hat.png'),
(50, 'Chester''s Long Coat', '27/36.5/27/27', '30/21/28', '44/32/0', 0, 300, 4.5, 2, NULL, 'armors\\chester-s-long-coat.png'),
(51, '	Chester''s Gloves', '10/13.5/10/10', '10/7/10', '15/11/0', 0, 300, 1.5, 3, NULL, 'armors\\chesters-gloves.png'),
(52, 'Chester''s Trousers', '19/25.6/19/19', '21/15/20', '31/23/0', 0, 300, 3.2, 4, NULL, 'armors\\chester-s-trousers.png'),
(53, 'Cleric Helm', '15/15/17.3/15', '9/8/6', '9/6/0', 8, 500, 4.8, 1, NULL, 'armors\\cleric-helm.png'),
(54, 'Cleric Armor', '40/40/46/40', '23/21/15', '23/16/0', 20, 500, 12.5, 2, NULL, 'armors\\cleric-armor.png'),
(55, 'Cleric Gauntlets', '24/24/27.6/24', '13/12/9', '14/9/0', 12, 500, 7.4, 3, NULL, 'armors\\cleric-gauntlets.png'),
(56, 'Cleric Leggings', '24/24/27.6/24', '13/12/9', '25/9/0', 12, 500, 7.4, 4, NULL, 'armors\\cleric-leggings.png'),
(57, 'Mask of the Sealer', '12/13.2/12/12', '12/7/9', '8/8/8', 0, 400, 1.5, 1, NULL, 'armors\\mask-of-the-sealer.png'),
(58, 'Crimson Robe', '32/35.2/32/32', '33/19/24', '21/21/21', 0, 400, 3.9, 2, NULL, 'armors\\crimson-robe.png'),
(59, 'Crimson Gloves', '7/7.7/7/7', '7/4/5', '4/4/4', 0, 400, 0.8, 3, NULL, 'armors\\crimson-gloves.png'),
(60, 'Crimson Waistcloth', '29/31.9/29/29', '29/17/21', '19/19/19', 0, 400, 3.5, 4, NULL, 'armors\\crimson-waistcloth.png'),
(61, 'Crystalline Helm', '25/21.3/28.8/25', '8/6/2', '6/0/0', 6, 150, 4.2, 1, NULL, 'armors\\crystalline-helm.png'),
(62, 'Crystalline Armor', '59/50.1/67.9/59', '21/15/7', '15/0/0', 16, 150, 10.9, 2, NULL, 'armors\\crystalline-armor.png'),
(63, 'Crystalline Gauntlets', '37/31.5/42.6/37', '12/9/4', '9/0/0', 9, 150, 6.4, 3, NULL, 'armors\\crystalline-gauntlets.png'),
(64, 'Crystalline Leggings', '37/31.5/42.6/37', '12/9/4', '9/0/0', 9, 150, 6.4, 4, NULL, 'armors\\crystalline-leggings.png'),
(65, 'Dark Mask', '18/18/19.8/16.9', '12/12/10', '12/8/0', 6, 300, 3.8, 1, NULL, 'armors\\dark-mask.png'),
(66, 'Dark Armor', '45/45/49.5/42.3', '30/31/27', '30/21/0', 16, 300, 9.8, 2, NULL, 'armors\\dark-armor.png'),
(67, 'Dark Gauntlets', '27/27/29.7/25.4', '18/18/15', '18/12/0', 9, 300, 5.8, 3, NULL, 'armors\\dark-gauntlets.png'),
(68, 'Dark Leggings', '27/27/29.7/25.4', '18/18/15', '18/12/0', 9, 300, 5.8, 4, NULL, 'armors\\dark-leggings.png'),
(69, 'Dingy Hood', '6/7.5/6/6', '8/5/6', '9/7/9', 0, 150, 0.8, 1, NULL, 'armors\\dingy-hood.png'),
(70, 'Dingy Robe', '23/28.8/23/23', '33/19/25', '35/26/35', 0, 150, 3, 2, NULL, 'armors\\dingy-robe.png'),
(71, 'Dingy Gloves', '9/11.3/9/9', '13/8/10', '14/10/14', 0, 150, 1.2, 3, NULL, 'armors\\dingy-gloves.png'),
(72, 'Blood-Stained Skirt', '13/16.3/13/13', '27/16/21', '29/22/29', 0, 150, 2.5, 4, NULL, 'armors\\blood-stained-skirt.png'),
(73, 'Eastern Helm', '17/16.2/21.1/16.5', '6/12/7', '15/11/0', 8, 450, 4.7, 1, NULL, 'armors\\eastern-helm.png'),
(74, 'Eastern Armor', '45/42.7/55.8/43.6', '15/33/18', '38/28/0', 20, 450, 12.3, 2, NULL, 'armors\\eastern-armor.png'),
(75, 'Eastern Gauntlets', '6/5.7/7.4/5.8', '1/4/2', '5/4/0', 2, 450, 1.5, 3, NULL, 'armors\\eastern-gauntlets.png'),
(76, 'Eastern Leggings', '15/14.2/18.6/14.5', '5/11/6', '12/10/0', 6, 450, 4, 4, NULL, 'armors\\eastern-leggings.png'),
(77, 'Elite Knight Helm', '15/14.5/17.4/15', '7/8/6', '9/6/0', 8, 450, 4.5, 1, NULL, 'armors\\elite-knight-helm.png'),
(78, 'Elite Knight Armor', '39/37.8/45.2/39', '17/18/15', '23/16/0', 20, 450, 11.7, 2, NULL, 'armors\\elite-knight-armor.png'),
(79, 'Elite Knight Gauntlets', '18/17.5/20.9/18', '7/8/5', '7/5/0', 6, 450, 3.7, 3, NULL, 'armors\\elite-knight-gauntlets.png'),
(80, 'Elite Knight Leggings', '23/22.3/26.7/23', '11/11/9', '14/9/0', 12, 450, 6.9, 4, NULL, 'armors\\elite-knight-leggings.png'),
(81, 'Giant Helm', '27/24.8/30.5/27', '13/19/13', '13/8/0', 14, 600, 6.3, 1, NULL, 'armors\\giant-helm.png'),
(82, 'Giant Armor', '72/66.2/81.4/72', '32/48/33', '32/19/0', 35, 600, 16.4, 2, NULL, 'armors\\giant-armor.png'),
(83, 'Giant Gauntlets', '41/37.7/46.3/41', '19/29/19', '19/11/0', 21, 600, 9.7, 3, NULL, 'armors\\giant-gauntlets.png'),
(84, 'Giant Leggings', '41/37.7/46.3/41', '19/29/19', '19/11/0', 21, 600, 9.7, 4, NULL, 'armors\\giant-leggings.png'),
(85, 'Gold-Hemmed Black Hood', '11/11.8/11/11', '15/22/8', '16/36/0', 0, 400, 1.4, 1, NULL, 'armors\\gold-hemmed-black-hood.png'),
(86, 'Gold-Hemmed Black Cloak', '31/33.2/31/31', '38/58/21', '40/94/0', 0, 400, 3.5, 2, NULL, 'armors\\gold-hemmed-black-cloak.png'),
(87, 'Gold-Hemmed Black Gloves', '12/12.8/12/12', '13/24/8', '14/32/0', 0, 400, 1.2, 3, NULL, 'armors\\gold-hemmed-black-gloves.png'),
(88, 'Gold-Hemmed Black Skirt', '23/24.6/23/23', '27/49/17', '32/78/0', 0, 400, 3, 4, NULL, 'armors\\gold-hemmed-black-skirt.png'),
(89, 'Golem Helm', '35/32.2/40.9/35', '17/16/6', '17/12/0', 13, 700, 6.3, 1, NULL, 'armors\\golem-helm.png'),
(90, 'Golem Armor', '91/83.7/106.5/91', '45/41/17', '45/31/0', 33, 700, 16.4, 2, NULL, 'armors\\golem-armor.png'),
(91, 'Golem Gauntlets', '54/49.7/63.2/54', '25/23/10', '27/17/0', 20, 700, 9.7, 3, NULL, 'armors\\golem-gauntlets.png'),
(92, 'Golem Leggings', '54/49.7/63.2/54', '25/23/10', '27/17/0', 20, 700, 9.7, 4, NULL, 'armors\\golem-leggings.png'),
(93, 'Guardian Helm', '41/38.5/47.1/41', '23/19/23', '17/6/0', 15, 800, 7.2, 1, NULL, 'armors\\guardian-helm.png'),
(94, 'Guardian Armor', '86/80.8/98.9/86', '50/42/50', '42/14/0', 37, 800, 17, 2, NULL, 'armors\\guardian-armor.png'),
(95, 'Guardian Gauntlets', '54/50.8/62.1/54', '33/27/33', '27/10/0', 23, 800, 10.4, 3, NULL, 'armors\\guardian-gauntlets.png'),
(96, 'Guardian Leggings', '54/50.8/62.1/54', '33/27/33', '27/10/0', 23, 800, 10.4, 4, NULL, 'armors\\guardian-leggings.png'),
(97, 'Havel''s Helm', '36/30.6/41.4/36', '22/22/18', '18/4/9', 18, 900, 7.5, 1, NULL, 'armors\\havel-s-helm.png'),
(98, 'Havel''s Armor', '92/78.2/105.8/92', '56/54/49', '45/11/22', 47, 900, 19.5, 2, NULL, 'armors\\havel-s-armor.png'),
(99, 'Havel''s Gauntlets', '54/45.9/62.1/54', '32/32/29', '27/5/13', 28, 900, 11.5, 3, NULL, 'armors\\havels-gauntlets.png'),
(100, 'Havel''s Leggings', '54/45.9/62.1/54', '32/32/29', '27/5/13', 28, 900, 11.5, 4, NULL, 'armors\\havel-s-leggings.png'),
(101, 'Gough''s Helm', '25/25/26.2/23.8', '14/21/11', '11/6/0', 9, 450, 6.5, 1, NULL, 'armors\\gough-s-helm.png'),
(102, 'Gough''s Armor', '50/50/52.5/47.5', '28/41/21', '21/12/0', 19, 450, 13, 2, NULL, 'armors\\gough-s-armor.png'),
(103, 'Gough''s Gauntlets', '27/27/28.3/25.6', '15/22/11', '11/6/0', 12, 450, 7, 3, NULL, 'armors\\goughs-gauntlets.png'),
(104, 'Gough''s Leggings', '31/31/32.5/29.4', '17/25/13', '13/7/0', 13, 450, 8, 4, NULL, 'armors\\gough-s-leggings.png'),
(105, 'Hollow Soldier Helm', '10/10/11.1/8.8', '6/6/4', '7/5/0', 5, 200, 3, 1, NULL, 'armors\\hollow-soldier-helm.png'),
(106, 'Hollow Soldier Armor', '26/26/28.9/22.9', '16/17/10', '18/13/0', 12, 200, 7.8, 2, NULL, 'armors\\hollow-soldier-armor.png'),
(107, 'Hollow Soldier Waistcloth', '13/13/14.4/11.4', '8/8/6', '10/6/0', 7, 200, 1.5, 4, NULL, 'armors\\hollow-soldier-waistcloth.png'),
(108, 'Hollow Thief''s Hood', '8/8.7/8/8.3', '8/5/7', '6/11/0', 0, 250, 1.1, 1, NULL, 'armors\\hollow-thief-s-hood.png'),
(109, 'Hollow Thief''s Leather Armor', '21/22.9/21/21.8', '20/13/18', '15/29/0', 0, 250, 2.8, 2, NULL, 'armors\\hollow-thief-s-leather-armor.png'),
(110, 'Hollow Thief''s Tights', '12/13.1/12/12.5', '11/8/10', '9/17/0', 0, 250, 1.7, 4, NULL, 'armors\\hollow-thief-s-tights.png'),
(111, 'Hollow Warrior Helm', '10/9.7/10.3/9.5', '6/5/6', '5/5/0', 3, 250, 2.6, 1, NULL, 'armors\\hollow-warrior-helm.png'),
(112, 'Hollow Warrior Armor', '24/23.3/24.7/22.8', '16/12/17', '13/13/0', 8, 250, 6.6, 2, NULL, 'armors\\hollow-warrior-armor.png'),
(113, 'Hollow Warrior Waistcloth', '13/12.6/13.4/12.3', '8/6/8', '6/6/0', 5, 250, 1.4, 4, NULL, 'armors\\hollow-warrior-waistcloth.png'),
(114, 'Priest''s Hat', '8/9.4/8/8', '9/5/7', '9/8/0', 0, 350, 1.2, 1, NULL, 'armors\\priest-s-hat.png'),
(115, 'Holy Robe', '22/26/22/22', '23/14/19', '24/20/0', 0, 350, 4, 2, NULL, 'armors\\holy-robe.png'),
(116, 'Traveling Gloves', '5/5.9/5/5', '5/3/4', '5/4/0', 0, 350, 0.7, 3, NULL, 'armors\\traveling-gloves-logan.png'),
(117, 'Holy Trousers', '14/16.5/14/14', '15/8/12', '15/13/0', 0, 350, 2, 4, NULL, 'armors\\holy-trousers.png'),
(118, 'Pharis''s Hat', '7/7.4/7/7', '5/7/6', '6/5/0', 0, 250, 1.2, 1, NULL, 'armors\\pharis-s-hat.png'),
(119, 'Leather Armor', '24/25.4/24/24', '20/12/23', '21/20/0', 0, 250, 4.7, 2, NULL, 'armors\\leather-armor.png'),
(120, 'Leather Gloves', '12/12.7/12/12', '12/6/13', '13/12/0', 0, 250, 2.8, 3, NULL, 'armors\\leather-gloves.png'),
(121, 'Leather Boots', '12/12.7/12/12', '12/6/13', '13/12/0', 0, 250, 2.8, 4, NULL, 'armors\\leather-boots.png'),
(122, 'Iron Helm', '14/14/14/13.7', '10/10/9', '12/8/2', 8, 350, 4.5, 1, NULL, 'armors\\iron-helm.png'),
(123, 'Armor of the Sun', '35/35/35/34.3', '21/21/19', '23/16/10', 16, 350, 9, 2, NULL, 'armors\\armor-of-the-sun.png'),
(124, 'Iron Bracelet', '17/17/17/16.7', '10/10/9', '11/7/2', 7, 350, 4.3, 3, NULL, 'armors\\iron-bracelet.png'),
(125, 'Iron Leggings', '21/21/21/20.6', '12/12/11', '14/9/2', 9, 350, 5.3, 4, NULL, 'armors\\iron-leggings.png'),
(126, 'Knight Helm', '14/13.3/16.2/13.7', '6/8/5', '9/6/0', 8, 400, 4.2, 1, NULL, 'armors\\knight-helm.png'),
(127, 'Knight Armor', '37/35.1/42.9/36.3', '16/18/13', '23/16/0', 20, 400, 10.9, 2, NULL, 'armors\\knight-armor.png'),
(128, 'Knight Gauntlets', '17/16.2/19.7/16.7', '7/8/4', '8/5/0', 6, 400, 3.5, 3, NULL, 'armors\\knight-gauntlets.png'),
(129, 'Knight Leggings', '22/20.9/25.5/21.6', '10/11/8', '14/9/0', 12, 400, 6.4, 4, NULL, 'armors\\knight-leggings.png'),
(130, 'Porcelain Mask', '13/13/13.6/14.3', '10/12/8', '11/19/11', 3, 250, 2.5, 1, NULL, 'armors\\porcelain-mask.png'),
(131, 'Lord''s Blade Robe', '34/34/35.7/37.4', '26/32/20', '28/49/25', 8, 250, 6.4, 2, NULL, 'armors\\lord-s-blade-robe.png'),
(132, 'Lord''s Blade Gloves', '15/15/15.7/16.7', '11/14/9', '12/22/11', 3, 250, 2.8, 3, NULL, 'armors\\lords-blade-gloves.png'),
(133, 'Lord''s Blade Waistcloth', '27/27/28.3/29.7', '20/25/16', '22/38/20', 6, 250, 5, 4, NULL, 'armors\\lord-s-blade-waistcloth.png'),
(134, 'Maiden Hood', '7/8.2/7/7', '8/5/6', '9/7/3', 0, 150, 0.8, 1, NULL, 'armors\\maiden-hood.png'),
(135, 'Maiden Robe', '19/22.2/19/19', '22/13/17', '23/18/8', 0, 150, 2, 2, NULL, 'armors\\maiden-robe.png'),
(136, 'Maiden Gloves', '11/12.9/11/11', '13/8/10', '14/10/5', 0, 150, 1.2, 3, NULL, 'armors\\maiden-gloves.png'),
(137, 'Maiden Skirt', '14/16.4/14/14', '27/16/21', '29/22/10', 0, 150, 2.5, 4, NULL, 'armors\\maiden-skirt.png'),
(138, 'Crown of the Dark Sun', '12/12/12/12', '12/6/6', '9/9/12', 0, 300, 3, 1, 'Boosts spell damage by 10%', 'armors\\crown-of-the-dark-sun.png'),
(139, 'Moonlight Robe', '20/20/20/20', '31/17/17', '23/23/31', 0, 80, 3.1, 2, NULL, 'armors\\moonlight-robe.png'),
(140, 'Moonlight Gloves', '3/3/3/3', '5/3/3', '4/4/5', 0, 80, 0.5, 3, NULL, 'armors\\moonlight-gloves.png'),
(141, 'Moonlight Waistcloth', '12/12/12/12', '18/10/10', '14/14/18', 0, 80, 1.8, 4, NULL, 'armors\\moonlight-waistcloth.png'),
(142, 'Ornstein''s Helm', '32/30.4/36.2/32', '16/22/18', '18/8/8', 9, 700, 5.5, 1, NULL, 'armors\\ornstein-s-helm.png'),
(143, 'Ornstein''s Armor', '70/66.5/79.1/70', '36/46/40', '38/18/18', 19, 700, 12, 2, NULL, 'armors\\ornstein-s-armor.png'),
(144, 'Ornstein''s Gauntlets', '29/27.6/32.8/29', '12/16/14', '12/6/6', 6, 700, 4, 3, NULL, 'armors\\ornsteins-gauntlets.png'),
(145, 'Ornstein''s Leggings', '40/38/45.2/40', '20/28/24', '22/12/12', 11, 700, 7, 4, NULL, 'armors\\ornstein-s-leggings.png'),
(146, 'Painting Guardian Hood', '3.0/3.6/3.0/3.0', '31.0/11.0/8.0', '12.0/30.0/6.0', 0, 150, 0.6, 1, NULL, 'armors\\painting-guardian-hood.png'),
(147, 'Painting Guardian Robe', '9.0/10.8/9.0/9.0', '34.0/29.0/21.0', '32.0/78.0/16.0', 0, 150, 1.6, 2, NULL, 'armors\\painting-guardian-robe.png'),
(148, 'Painting Guardian Gloves', '6.0/7.2/6.0/6.0', '22.0/17.0/12.0', '18.0/46.0/10.0', 0, 150, 0.9, 3, NULL, 'armors\\painting-guardian-gloves.png'),
(149, 'Painting Guardian Waistcloth', '22.0/26.4/22.0/22.0', '30.0/22.0/21.0', '21.0/51.0/10.0', 0, 150, 4, 4, NULL, 'armors\\painting-guardian-waistcloth.png'),
(150, 'Paladin Helm', '22/20.9/25.3/22', '12/13/7', '13/9/22', 8, 500, 5, 1, NULL, 'armors\\paladin-helm.png'),
(151, 'Paladin Armor', '59/56.1/67.9/59', '31/37/19', '34/24/57', 20, 500, 12.9, 2, NULL, 'armors\\paladin-armor.png'),
(152, 'Paladin Gauntlets', '35/33.3/40.3/35', '19/21/12', '21/13/34', 12, 500, 7.6, 3, NULL, 'armors\\paladin-gauntlets.png'),
(153, 'Paladin Leggings', '35/33.3/40.3/35', '19/21/12', '21/13/34', 12, 500, 7.6, 4, NULL, 'armors\\paladin-leggings.png'),
(154, 'Tattered Cloth Hood', '8.0/8.9/8.0/8.0', '9/12/6', '9/23/1', 0, 400, 1.1, 1, NULL, 'armors\\tattered-cloth-hood.png'),
(155, 'Tattered Cloth Robe', '21.0/23.3/21.0/21.0', '23/30/17', '23/59/2', 0, 400, 2.7, 2, NULL, 'armors\\tattered-cloth-robe.png'),
(156, 'Tattered Cloth Manchette', '12.0/13.3/12.0/12.0', '14/18/10', '14/35/1', 0, 400, 1.6, 3, NULL, 'armors\\tattered-cloth-manchette.png'),
(157, 'Heavy Boots', '12.0/13.3/12.0/12.0', '14/18/10', '14/35/1', 0, 400, 1.6, 4, NULL, 'armors\\heavy-boots.png'),
(158, 'Helm of Artorias', '18/16.2/20.7/18.9', '9/19/9', '9/9/9', 6, 600, 4.2, 1, NULL, 'armors\\helm-of-artorias.png'),
(159, 'Armor of Artorias', '42/37.8/48.3/44.1', '22/46/22', '22/22/20', 15, 600, 10.5, 2, NULL, 'armors\\armor-of-artorias.png'),
(160, 'Gauntlets Of Artorias', '20/18/23/21', '10/21/10', '10/10/9', 7, 600, 4.6, 3, NULL, 'armors\\gauntlets-of-artorias.png'),
(161, 'Leggings of Artorias', '23/20.7/26.4/24.1', '11/24/11', '11/11/10', 9, 600, 5.5, 4, NULL, 'armors\\leggings-of-artorias.png'),
(162, 'Helm of Favor', '18/17.1/20.9/18', '10/11/7', '11/8/8', 8, 500, 4.5, 1, NULL, 'armors\\helm-of-favor.png'),
(163, 'Embraced Armor of Favor', '48/45.6/55.7/48', '23/30/19', '28/22/22', 20, 500, 11.7, 2, NULL, 'armors\\embraced-armor-of-favor.png'),
(164, 'Gauntlets of Favor', '21/19.9/24.4/21', '10/12/8', '11/10/10', 8, 500, 5, 3, NULL, 'armors\\gauntlets-of-favor.png'),
(165, 'Leggings of Favor', '28/26.6/32.5/28', '14/18/11', '15/14/14', 11, 500, 6.9, 4, NULL, 'armors\\leggings-of-favor.png'),
(166, 'Helm of Thorns', '17/16.1/18.5/17', '10/12/8', '10/7/0', 6, 250, 4.1, 1, 'Adds a small amount of damage to your dodge rolls', 'armors\\helm-of-thorns.png'),
(167, 'Armor of Thorns', '45/42.7/49.1/45', '28/33/20', '26/18/0', 16, 250, 10.5, 2, 'Adds a small amount of damage to your dodge rolls', 'armors\\armor-of-thorns.png'),
(168, 'Gauntlets of Thorns', '26/24.7/28.3/26', '16/18/12', '16/10/0', 9, 250, 6.2, 3, 'Adds a small amount of damage to your dodge rolls', 'armors\\gauntlets-of-thorns.png'),
(169, 'Leggings of Thorns', '26/24.7/28.3/26', '16/18/12', '16/10/0', 9, 250, 6.2, 4, 'Adds a small amount of damage to your dodge rolls', 'armors\\leggings-of-thorns.png'),
(170, 'Six-Eyed Helm of the Channelers', '20/19.2/22.8/20', '18/17/13', '15/13/0', 5, 300, 3.9, 1, NULL, 'armors\\six-eyed-helm-of-the-channelers.png'),
(171, 'Robe of the Channelers', '53/50.9/60.4/53', '45/45/35', '38/33/0', 12, 300, 10.1, 2, NULL, 'armors\\robe-of-the-channelers.png'),
(172, 'Gauntlets of the Channelers', '17/16.3/19.4/17', '13/13/10', '0/0/0', 3, 300, 3, 3, NULL, 'armors\\gauntlets-of-the-channelers.png'),
(173, 'Waistcloth of the Channelers', '32/30.7/36.5/32', '27/27/20', '23/20/0', 7, 300, 6, 4, NULL, 'armors\\waistcloth-of-the-channelers.png'),
(174, 'Crown of the Great Lord', '16/17.3/18.4/14.7', '16/21/21', '15/8/20', 0, 800, 3, 1, NULL, 'armors\\crown-of-the-great-lord.png'),
(175, 'Robe of the Great Lord', '32/34.6/36.8/29.4', '32/41/41', '30/15/40', 0, 400, 6, 2, NULL, 'armors\\robe-of-the-great-lord.png'),
(176, 'Bracelet of the Great Lord', '15/16.2/17.3/13.8', '15/19/19', '14/7/18', 0, 400, 2.8, 3, NULL, 'armors\\bracelet-of-the-great-lord.png'),
(177, 'Anklet of the Great Lord', '15/16.2/17.3/13.8', '15/19/19', '14/7/18', 0, 400, 2.8, 4, NULL, 'armors\\anklet-of-the-great-lord.png'),
(178, 'Shadow Mask', '9/9.9/9/9', '5/6/6', '15/18/0', 0, 200, 0.9, 1, NULL, 'armors\\shadow-mask.png'),
(179, 'Shadow Garb', '23/25.5/23/23', '12/16/17', '39/47/0', 0, 200, 2.3, 2, NULL, 'armors\\shadow-garb.png'),
(180, 'Shadow Gauntlets', '13/14.3/13/13', '7/9/10', '23/28/0', 0, 200, 1.4, 3, NULL, 'armors\\shadow-gauntlets.png'),
(181, 'Shadow Leggings', '13/14.3/13/13', '7/9/10', '23/28/0', 0, 200, 1.4, 4, NULL, 'armors\\shadow-leggings.png'),
(182, 'Silver Knight Helm', '21/19.7/24.1/20.6', '10/11/14', '9/5/1', 8, 600, 4.8, 1, NULL, 'armors\\silver-knight-helm.png'),
(183, 'Silver Knight Armor', '52/48.9/59.8/51', '26/29/34', '24/12/2', 19, 600, 12, 2, NULL, 'armors\\silver-knight-armor.png'),
(184, 'Silver Knight Gauntlets', '25/23.5/28.7/24.5', '12/14/16', '11/6/1', 9, 600, 5.5, 3, NULL, 'armors\\silver-knight-gauntlets.png'),
(185, 'Silver Knight Leggings', '28/26.3/32.2/27.4', '15/16/19', '14/7/1', 11, 600, 6.5, 4, NULL, 'armors\\silver-knight-leggings.png'),
(186, 'Smough''s Helm', '40/34.8/46/40', '19/26/21', '21/12/5', 14, 700, 6.8, 1, NULL, 'armors\\smough-s-helm.png'),
(187, 'Smough''s Armor', '106/92.2/121.9/106', '52/66/59', '54/28/9', 35, 700, 17.5, 2, NULL, 'armors\\smough-s-armor.png'),
(188, 'Smough''s Gauntlets', '61/53.1/70.2/61', '31/40/33', '33/16/5', 21, 700, 10.4, 3, NULL, 'armors\\smoughs-gauntlets.png'),
(189, 'Smough''s Leggings', '61/53.1/70.2/61', '31/40/33', '33/16/5', 21, 700, 10.4, 4, NULL, 'armors\\smough-s-leggings.png'),
(190, 'Sorcerer Hat', '8/8.6/8.3/8', '10/5/6', '6/5/0', 0, 200, 0.9, 1, NULL, 'armors\\sorcerer-hat.png'),
(191, 'Sorcerer Cloak', '20/21.6/20.8/20', '27/13/17', '16/12/0', 0, 200, 2.3, 2, NULL, 'armors\\sorcerer-cloak.png'),
(192, 'Sorcerer Gauntlets	', '12/13/12.5/12', '16/8/10', '9/7/0', 0, 200, 1.4, 3, NULL, 'armors\\sorcerer-gauntlets.png'),
(193, 'Sorcerer Boots', '12/13/12.5/12', '16/8/10', '9/7/0', 0, 200, 1.4, 4, NULL, 'armors\\sorcerer-boots.png'),
(194, 'Steel Helm', '16/15/18.4/16', '8/8/5', '9/6/0', 9, 500, 5.4, 1, NULL, 'armors\\steel-helm.png'),
(195, 'Steel Armor', '42/39.5/48.3/42', '22/21/13', '23/16/0', 23, 500, 14, 2, NULL, 'armors\\steel-armor.png'),
(196, 'Steel Gauntlets', '25/23.5/28.8/25', '13/12/8', '14/9/0', 14, 500, 8.3, 3, NULL, 'armors\\steel-gauntlets.png'),
(197, 'Steel Leggings', '25/23.5/28.8/25', '13/12/8', '14/9/0', 14, 500, 8.3, 4, NULL, 'armors\\steel-leggings.png'),
(198, 'Stone Helm', '35/32.9/40.3/35', '17/21/21', '17/6/0', 15, 800, 6.8, 1, NULL, 'armors\\stone-helm.png'),
(199, 'Stone Armor', '91/85.5/104.7/91', '45/54/54', '45/16/0', 39, 800, 17.6, 2, NULL, 'armors\\stone-armor.png'),
(200, 'Stone Gauntlets', '54/50.8/62.1/54', '27/33/33', '27/10/0', 23, 800, 10.4, 3, NULL, 'armors\\stone-gauntlets.png'),
(201, 'Stone Leggings', '54/50.8/62.1/54', '27/33/33', '27/10/0', 23, 800, 10.4, 4, NULL, 'armors\\stone-leggings.png'),
(202, 'Thief Mask', '9/9.6/9/9', '8/5/6', '9/12/0', 0, 250, 1.2, 1, NULL, 'armors\\thief-mask.png'),
(203, 'Black Leather Armor', '23/24.6/23/23', '20/14/16', '23/31/0', 0, 250, 3.1, 2, NULL, 'armors\\black-leather-armor.png'),
(204, 'Black Leather Gloves', '13/13.9/13/13', '12/8/9', '14/18/0', 0, 250, 1.8, 3, NULL, 'armors\\black-leather-gloves.png'),
(205, 'Black Leather Boots', '12/12.8/12/12', '19/13/15', '23/31/0', 0, 250, 3, 4, NULL, 'armors\\black-leather-boots.png'),
(206, 'Wanderer Hood', '9/9.6/9.6/9', '8/10/9', '8/8/0', 0, 400, 1.4, 1, NULL, 'armors\\wanderer-hood.png'),
(207, 'Wanderer Coat', '23/24.6/24.6/23', '21/26/23', '21/21/0', 0, 400, 3.5, 2, NULL, 'armors\\wanderer-coat.png'),
(208, 'Wanderer Manchette', '14/15/15/14', '12/15/13', '13/13/0', 0, 400, 2.1, 3, NULL, 'armors\\wanderer-manchette.png'),
(209, 'Wanderer Boots', '14/15/15/14', '12/15/13', '13/13/0', 0, 400, 2.1, 4, NULL, 'armors\\wanderer-boots.png'),
(210, 'Standard Helm', '14/8/16/14', '8/8/3', '9/8/0', 5, 250, 3.5, 1, NULL, 'armors\\standard-helm.png'),
(211, 'Hard Leather Armor', '26/27.6/26/26', '20/13/23', '23/20/0', 0, 250, 5.9, 2, NULL, 'armors\\hard-leather-armor.png'),
(212, 'Hard Leather Gauntlets', '13/13.8/13/13', '12/7/13', '14/12/0', 0, 250, 3.5, 3, NULL, 'armors\\hard-leather-gauntlets.png'),
(213, 'Hard Leather Boots', '13/13.8/13/13', '12/7/13', '14/12/0', 0, 250, 3.5, 4, NULL, 'armors\\hard-leather-boots.png'),
(214, 'Witch Hat', '9/10/9/9', '12/6/7', '10/10/11', 0, 250, 1.1, 1, NULL, 'armors\\witch-hat.png'),
(215, 'Witch Cloak', '33/36.6/33/33', '43/20/26', '36/36/12', 0, 250, 4, 2, NULL, 'armors\\witch-cloak.png'),
(216, 'Witch Gloves', '14/15.5/14/14', '18/9/11', '16/16/6', 0, 250, 1.7, 3, NULL, 'armors\\witch-gloves.png'),
(217, 'Witch Skirt', '17/18.9/17/17', '27/12/17', '23/28/8', 0, 250, 2.5, 4, NULL, 'armors\\witch-skirt.png'),
(218, 'Xanthous Crown', '18/27.7/18/15.3', '15/3/8', '8/11/35', 0, 400, 5, 1, NULL, 'armors\\xanthous-crown.png'),
(219, 'Xanthous Overcoat', '32/35.8/32/29.1', '37/7/23', '22/29/0', 0, 400, 3.9, 2, NULL, 'armors\\xanthous-overcoat.png'),
(220, 'Xanthous Gloves', '18/20.2/18/16.4', '22/4/14', '12/18/0', 0, 400, 2.3, 3, NULL, 'armors\\xanthous-gloves.png'),
(221, 'Xanthous Waistcloth', '32/35.8/32/29.1', '39/7/23', '22/30/0', 0, 400, 4, 4, NULL, 'armors\\xanthous-waistcloth.png'),
(222, 'Bloated Head', '17/17/17/17', '17/9/11', '16/32/10', 0, 150, 2.5, 1, NULL, 'armors\\bloated-head.png'),
(223, 'Bloated Sorcerer Head', '14/14/14/14', '22/9/13', '8/38/15', 0, 150, 2.2, 1, NULL, 'armors\\bloated-sorcerer-head.png'),
(224, 'Fang Boar Helm', '26/23.4/31.2/26', '5/4/4', '13/8/0', 12, 600, 8, 1, NULL, 'armors\\fang-boar-helm.png'),
(225, 'Gargoyle Helm', '15/12.3/19.1/13.7', '15/15/15', '22/19/0', 8, 500, 3.5, 1, NULL, 'armors\\gargoyle-helm.png'),
(226, 'Mask of the Child', '6/6/6/6', '10/8/10', '6/0/0', 0, 200, 1.2, 1, 'Increases stamina regeneration by about 10 per second', 'armors\\mask-of-the-child.png'),
(227, 'Mask of the Father', '6/6/6/6', '10/6/8', '6/0/0', 0, 200, 1.2, 1, 'Raises Maximum Equipment Load by 5%', 'armors\\mask-of-the-father.png'),
(228, 'Mask of the Mother', '6/6/6/6', '12/6/8', '10/0/0', 0, 200, 1.2, 1, 'Raises maximum HP by 10%', 'armors\\mask-of-the-mother.png'),
(229, 'Royal Helm', '16.0/13.9/16.0/16.0', '10.0/10.0/6.0', '16.0/12.0/0.0', 8, 500, 4.5, 1, NULL, 'armors\\royal-helm.png'),
(230, 'Sack', '6/10/6/5', '6/8/4', '12/10/0', 0, 150, 0.6, 1, NULL, 'armors\\sack.png'),
(231, 'Sunlight Maggot', '6/6/6/6', '5/24/13', '0/0/0', 0, 80, 1.4, 1, 'Wearing this helmet gives the player a permanent Cast Light effect until removed.', 'armors\\sunlight-maggot.png'),
(232, 'Symbol of Avarice', '21/10.9/21/21', '8/2/2', '10/0/0', 15, 0, 10, 1, 'Drains health at the rate of 5 HP/Second. Adds +200 to Item Discovery and increases soul drop by 20%.', 'armors\\symbol-of-avarice.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `armor_slots`
--

CREATE TABLE IF NOT EXISTS `armor_slots` (
  `id` int(11) NOT NULL,
  `slot_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `armor_slots`
--

INSERT INTO `armor_slots` (`id`, `slot_name`) VALUES
(1, 'Head'),
(2, 'Chest'),
(3, 'Hands'),
(4, 'Legs');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `position` int(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `position`) VALUES
(1, 'Frontpage', '/', 1),
(3, 'Profile', '/profile', 9),
(4, 'Weapons', '/weapons', 3),
(5, 'Shields', '/shields', 4),
(6, 'Spell Tools', '/spell_tools', 5),
(7, 'Armor', '/armor', 7),
(8, 'Rings', '/rings', 8),
(9, 'Spells', '/spells', 6),
(10, 'Create new item', '/new', 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `rank`
--

INSERT INTO `rank` (`id`, `name`, `desc`) VALUES
(1, 'Admin', 'Full accsess'),
(2, 'User', 'Can edit own creations');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `rings`
--

CREATE TABLE IF NOT EXISTS `rings` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `effect` text NOT NULL,
  `picture` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `rings`
--

INSERT INTO `rings` (`id`, `name`, `effect`, `picture`) VALUES
(1, 'Bellowing Dragoncrest Ring', 'Increases sorcery and pyromancy damage by 20%~24% depending on the spell.', 'rings/1561232498616_bellowing-dragoncrest-ring.png'),
(2, 'Bloodbite Ring', 'Boosts natural bleed resistance by 400%.', 'rings\\bloodbite-ring.png'),
(3, 'Blue Tearstone Ring', 'Boosts defense by 50% when health is under 20%.', 'rings\\blue-tearstone-ring.png'),
(4, 'Calamity Ring', 'Doubles damage taken by the wearer.', 'rings\\calamity-ring.png'),
(5, 'Cat Covenant Ring', 'When wearing this ring Alvina may summon you anytime from almost any place in your world into the world of another player to help her fend off human invaders in the Darkroot Garden.', 'rings\\cat-covenant-ring.png'),
(6, 'Cloranthy Ring', 'Increases rate of stamina regeneration by about 20 per second (~45% more than base) when equipped.', 'rings\\cloranthy-ring.png'),
(7, 'Covenant of Artorias', 'Traverse The Abyss, allowing you to fight The Four Kings.', 'rings\\covenant-of-artorias.png'),
(8, 'Covetous Gold Serpent Ring', 'Boosts wearer''s item discovery by 200.', 'rings\\covetous-gold-serpent-ring.png'),
(9, 'Covetous Silver Serpent Ring', 'Increases Souls from fallen enemies by 20%.', 'rings\\covetous-silver-serpent-ring.png'),
(10, 'Cursebite Ring', 'Increases Curse Resistance granted by player stats and Humanity by 400%.', 'rings\\cursebite-ring.png'),
(11, 'Darkmoon Blade Covenant Ring', 'Similar to the Cat Covenant Ring, equipping this ring allows you to be summoned to invade other players in darkened Anor Londo. Its use is restricted to members of the Blade of the Darkmoon covenant.', 'rings\\darkmoon-blade-covenant-ring.png'),
(12, 'Darkmoon Seance Ring', 'Grants additional attunement slot, similar to the White Seance Ring. Also removes the illusory wall (in the shape of Gwyn) at the bottom of the rotating bridge in Anor Londo, allowing you to join Blade of the Darkmoon without needing to kill Gwynevere. See the Covenant''s page for more details.', 'rings\\darkmoon-seance-ring.png'),
(13, 'Dark Wood Grain Ring', 'Changes the quick roll (0% to 25% Equip Burden) animation to a cartwheel that has several properties. Gives more invulnerability frames (14 frames, compared to normal 12), faster recovery (8 frames, compared to normal 12) and while flipping across lava you take (roughly) half as much damage from lava as you would when you would run.', 'rings\\dark-wood-grain-ring.png'),
(14, 'Dusk Crown Ring', 'Grants 50% more castings for Miracles, Sorceries and Pyromancies, but cuts Max HP in half.', 'rings\\dusk-crown-ring.png'),
(15, 'East Wood Grain Ring', 'Slows loss of weapon durability by half.', 'rings\\east-wood-grain-ring.png'),
(16, 'Flame Stoneplate Ring', 'Increases Flame Defense by 50.', 'rings\\flame-stoneplate-ring.png'),
(17, 'Havel''s Ring', 'Wearing the ring raises maximum equipment burden by 50%.', 'rings\\havel-s-ring.png'),
(18, 'Hawk Ring', 'Boosts bow and crossbow range by 50%. ', 'rings\\hawk-ring.png'),
(19, 'Hornet Ring', 'Boosts critical attacks by 30%.', 'rings\\hornet-ring.png'),
(20, 'Leo Ring', 'Further boosts Counter damage by 40%, for a total of ~67% additional damage.', 'rings\\leo-ring.png'),
(21, 'Lingering Dragoncrest Ring', 'Extends the duration of sorceries and pyromancies cast while this ring is equipped by 50%.', 'rings\\lingering-dragoncrest-ring.png'),
(22, 'Old Witch''s Ring', 'Allows the player to understand Quelaag''s Sister when equipped. It doesn''t have any other gameplay effects.', 'rings\\old-witch-s-ring.png'),
(23, 'Orange Charred Ring', 'Reduces 80% of lava damage. Adds a small amount of Fire damage to kicking attacks and damage to enemies from falling on them, without using a plunging attack.', 'rings\\orange-charred-ring.png'),
(24, 'Poisonbite Ring', 'Boosts poison resistance by 90 points.', 'rings\\poisonbite-ring.png'),
(25, 'Rare Ring of Sacrifice', 'With this ring equipped, the player will not be hollowed, lose any souls or humanity upon death and will not be cursed if a curse was the cause of death. The ring will then break.', 'rings\\rare-ring-of-sacrifice.png'),
(26, 'Red Tearstone Ring', 'Increase the attack power of the player by at least 50% when the player''s health is under 20%. This allegedly applies to every form of offense including spells etc.', 'rings\\red-tearstone-ring.png'),
(27, 'Ring of Favor and Protection', 'Increases max health, max stamina and max equip burden by 20%. Be aware that this ring is destroyed and removed from inventory if ever unequipped.', 'rings\\ring-of-favor-and-protection.png'),
(28, 'Ring of Fog', 'Turns body nearly invisible, reducing enemies'' visual range. Enemies also tend to forget about the character and ''de-aggro'' if the character stays outside of the reduced visual range.', 'rings\\ring-of-fog.png'),
(29, 'Ring of Sacrifice', 'Lose nothing upon death, but Ring breaks. Doesn''t work if you died from Curse.', 'rings\\ring-of-sacrifice.png'),
(30, 'Ring of Steel Protection', 'Raises physical defense against strike, slash, and thrust by 50.', 'rings\\ring-of-steel-protection.png'),
(31, 'Ring of the Evil Eye', 'Heals 30 HP from fallen enemies.', 'rings\\ring-of-the-evil-eye.png'),
(32, 'Ring of the Sun''s Firstborn', 'Increases offensive miracle damage by approximately 25%, depending on the spell.', 'rings\\ring-of-the-sun-princess.png'),
(33, 'Ring of the Sun Princess', 'Acts as a portable miracle resonance sign.', 'rings\\ring-of-the-sun-s-firstborn.png'),
(34, 'Rusted Iron Ring', 'Eliminates the speed penalty imposed by walking through water, swamp, or tar-pits.', 'rings\\rusted-iron-ring.png'),
(35, 'Slumbering Dragoncrest Ring', 'Silences all wearer''s movements.', 'rings\\slumbering-dragoncrest-ring.png'),
(36, 'Speckled Stoneplate Ring', 'Boosts your Magic, Fire, and Lightning defense by 25 each.', 'rings\\speckled-stoneplate-ring.png'),
(37, 'Spell Stoneplate Ring', 'Increases Magic defense by 50.', 'rings\\spell-stoneplate-ring.png'),
(38, 'Thunder Stoneplate Ring', 'Increases Lightning defense by 50.', 'rings\\thunder-stoneplate-ring.png'),
(39, 'Tiny Being''s Ring', 'Increases maximum hit points by 5%.', 'rings\\tiny-being-s-ring.png'),
(40, 'White Seance Ring', 'Grants a single additional Attunement slot, similar to the Darkmoon Seance Ring.', 'rings\\white-seance-ring.png'),
(41, 'Wolf Ring', 'Adds 40 Poise.', 'rings\\wolf-ring.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `shield_size`
--

CREATE TABLE IF NOT EXISTS `shield_size` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `shield_size`
--

INSERT INTO `shield_size` (`id`, `name`) VALUES
(1, 'Small Shield'),
(2, 'Normal Shield'),
(3, 'Large Shield'),
(4, 'Unique Shield'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `spell_tool`
--

CREATE TABLE IF NOT EXISTS `spell_tool` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `spell_tool`
--

INSERT INTO `spell_tool` (`id`, `name`) VALUES
(1, 'Catalyst'),
(2, 'Talisman'),
(3, 'Pyromancy Flame');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `spell_types`
--

CREATE TABLE IF NOT EXISTS `spell_types` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `spell_types`
--

INSERT INTO `spell_types` (`id`, `name`) VALUES
(1, 'Sorcery'),
(2, 'Miracle'),
(3, 'Pyromancy');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `spells`
--

CREATE TABLE IF NOT EXISTS `spells` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `effect` text NOT NULL,
  `uses` int(11) NOT NULL,
  `slots` int(11) NOT NULL,
  `spell_type` varchar(45) NOT NULL,
  `faith_need` int(11) DEFAULT NULL,
  `int_need` int(11) DEFAULT NULL,
  `notes` text,
  `picture` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `spells`
--

INSERT INTO `spells` (`id`, `name`, `effect`, `uses`, `slots`, `spell_type`, `faith_need`, `int_need`, `notes`, `picture`) VALUES
(1, 'Aural Decoy', 'Fires a projectile which creates a sound wherever it collides with a surface. This attracts the attention of enemies.', 20, 1, '1', 0, 10, NULL, 'spells\\aural-decoy.png'),
(2, 'Cast Light', 'Creates a small orb of light over the player''s head that amplifies player''s light distance by approximately four times.', 3, 1, '1', 0, 14, NULL, 'spells\\cast-light.png'),
(3, 'Chameleon', 'Depending on current location, transforms the caster into a piece of scenery.', 11, 1, '1', 0, 14, NULL, 'spells\\chameleon.png'),
(4, 'Crystal Magic Weapon', 'Adds magic damage to right hand weapon. Magic damage added is catalyst''s MagAdjust * 1.4', 3, 1, '1', 0, 25, NULL, 'spells\\crystal-magic-weapon.png'),
(5, 'Crystal Soul Spear', 'Fires a large crystal spear projectile. Stronger version of Soul Spear. Magic damage is 3.2 * catalyst''s MagAdjust.', 4, 1, '1', 0, 44, NULL, 'spells\\crystal-soul-spear.png'),
(6, 'Dark Bead', 'This Dark sorcery fires seven projectiles at a 90° spread in front of the caster.', 6, 1, '1', 0, 16, 'The magic damage scales with the INT scaling of the equipped catalyst, and the physical damage scales with the STR and DEX scaling of the equipped catalyst.', 'spells\\dark-bead.png'),
(7, 'Dark Fog', 'This Dark sorcery creates an Area of Effect poison cloud on target. When infected, deals 4 HP/second.', 2, 1, '1', 0, 18, NULL, 'spells\\dark-fog.png'),
(8, 'Dark Orb', 'This spell is the Dark equivalent of Heavy Soul Arrow.', 12, 1, '1', 0, 16, 'The magic damage of dark sorceries scales with the INT scaling of the equipped catalyst, and the physical damage scales with the STR and DEX scaling of the equipped catalyst.', 'spells\\dark-orb.png'),
(9, 'Fall Control', 'Grants buff that removes damage and noise from fall.', 10, 1, '1', 0, 15, 'Does not prevent death from falls that would normally instantly kill the caster', 'spells\\fall-control.png'),
(10, 'Great Heavy Soul Arrow', 'Fires a large, purplish bolt of light at enemies. Stronger version of Heavy Soul Arrow. Magic damage is 2.2 * catalyst''s MagAdjust.', 8, 1, '1', 0, 16, NULL, 'spells\\great-heavy-soul-arrow.png'),
(11, 'Great Magic Weapon', 'Adds magic damage to right hand weapon. Magic damage added is catalyst''s MagAdjust * 1.1.', 3, 1, '1', 0, 15, NULL, 'spells\\great-magic-weapon.png'),
(12, 'Great Soul Arrow', 'Similar to Soul Arrow, fires a purple bolt of light at enemies. Magic damage is 1.3 * catalyst''s MagAdjust.', 20, 1, '1', 0, 14, NULL, 'spells\\great-soul-arrow.png'),
(13, 'Heavy Soul Arrow', 'Fires a large, blue bolt of light at enemies. Slower casting time than Soul Arrow/Great Soul Arrow, but deals higher damage. Magic damage is 1.8 * catalyst''s MagAdjust.', 12, 1, '1', 0, 12, NULL, 'spells\\heavy-soul-arrow.png'),
(14, 'Hidden Body', 'Turns body nearly invisible, reducing enemies'' visual range. Enemies also tend to forget about the character and ''de-aggro'' if the character stays outside of the reduced visual range.', 3, 1, '1', 0, 14, NULL, 'spells\\hidden-body.png'),
(15, 'Hidden Weapon', 'Makes weapon turn invisible. If the weapon has a sheath, the sheath will remain visible.', 3, 1, '1', 0, 14, NULL, 'spells\\hidden-weapon.png'),
(16, 'Homing Crystal Soulmass', 'Creates up to five powerful orbs of light that attack the nearest enemy.', 10, 1, '1', 0, 24, NULL, 'spells\\homing-crystal-soulmass.png'),
(17, 'Homing Soulmass', 'Creates up to five powerful orbs of light that attack the nearest enemy', 10, 1, '1', 0, 18, NULL, 'spells\\homing-soulmass.png'),
(18, 'Hush', 'Silences all caster''s movements.', 6, 1, '1', 0, 15, NULL, 'spells\\hush.png'),
(19, 'Magic Shield', 'Increases stability stat on left hand shield by 20% and cuts Magic damage taken through blocking by 70%.', 5, 1, '1', 0, 10, NULL, 'spells\\magic-shield.png'),
(20, 'Magic Weapon', 'Adds magic damage to right hand weapon. Magic damage added is catalyst''s MagAdjust * 0.8.', 5, 1, '1', 0, 10, NULL, 'spells\\magic-weapon.png'),
(21, 'Pursuers', 'This spell is the Dark equivalent of Homing Soulmass. The projectiles are also much slower but home-in very aggressively.', 3, 2, '1', 0, 32, 'The magic damage scales with the INT scaling of the equipped catalyst, and the physical damage scales with the STR and DEX scaling of the equipped catalyst.', 'spells\\pursuers.png'),
(22, 'Remedy', 'Reduces Bleed, Poison, and Toxic build-up. Removes Poison and Toxic status effects.', 4, 1, '1', 0, 16, NULL, 'spells\\remedy.png'),
(23, 'Repair', 'Repairs 150 durability to equipped weapons and armor. This does not repair any unequipped items.', 1, 1, '1', 0, 14, NULL, 'spells\\repair.png'),
(24, 'Resist Curse', 'Reduces curse build-up. Despite what the item description suggests, this spell cannot remove cursed status and using it does not actually cost Humanity.', 4, 1, '1', 0, 16, NULL, 'spells\\resist-curse.png'),
(25, 'Soul Arrow', 'Fires a blue bolt of light at enemies. Magic damage is 0.9 * catalyst''s MagAdjust.', 30, 1, '1', 0, 10, NULL, 'spells\\soul-arrow.png'),
(26, 'Soul Spear', 'Fires a large blue spearlike projectile. The projectile continues to travel through the first target, hitting any behind it. Magic damage is 2.7 * catalyst''s MagAdjust.', 4, 1, '1', 0, 36, NULL, 'spells\\soul-spear.png'),
(27, 'Strong Magic Shield', 'Increases stability on left hand shield by 50% and will negate all damage that is successfully blocked, often resulting in both no Stamina being consumed and no damage being taken.', 3, 1, '1', 0, 15, NULL, 'spells\\strong-magic-shield.png'),
(28, 'White Dragon Breath', 'Fires laser at 45° angle. On contact with the ground, will spawn crystal spikes that follow the terrain. The crystal spikes will travel up walls or trees, across ceilings, and down cliffs, though not very far.', 20, 1, '1', 0, 50, NULL, 'spells\\white-dragon-breath.png'),
(29, 'Bountiful Sunlight', 'Grants HP regeneration at the rate of 10 HP/Second to self and all party members in range.', 2, 2, '2', 36, 0, NULL, 'spells\\bountiful-sunlight.png'),
(30, 'Darkmoon Blade', 'Adds magic damage to right hand weapon. Magic damage scales with talisman''s MagAdjust and Blade of the Darkmoon''s covenant level.', 1, 1, '2', 30, 0, 'Requires being a member of the Blade of the Darkmoon covenant to be able to cast it. It can still be equipped by those who are not members of the covenant but they will not be able to use it.', 'spells\\darkmoon-blade.png'),
(31, 'Emit Force', 'Fires an orb of force that creates a shockwave on impact that causes damage, and can knock down or stun enemies.', 6, 1, '2', 18, 0, NULL, 'spells\\emit-force.png'),
(32, 'Force', 'Creates a non-damaging shockwave that can stun or knock down enemies.', 21, 1, '2', 12, 0, NULL, 'spells\\force.png'),
(33, 'Gravelord Greatsword Dance', 'Several swords will pierce the ground impaling enemies in the area. It is essentially, a more powerful version of Gravelord Sword Dance: the area of effect is expanded with increased damage. Deals 3.1*MagAdjust magic damage, plus 0.1*MagAdjust per Gravelord Servant rank (3.4*MagAdjust at +3).', 40, 1, '2', 0, 0, 'Each casting consumes 20 uses, meaning it can only be cast twice.', 'spells\\gravelord-greatsword-dance.png'),
(34, 'Gravelord Sword Dance', 'Several swords will pierce the ground impaling enemies in the area. Deals 2.5*MagAdjust magic damage, plus 0.1*MagAdjust per Gravelord Servant rank (2.8*MagAdjust at +3).', 40, 1, '2', 0, 0, 'Each casting consumes 20 uses, meaning it can only be cast twice.', 'spells\\gravelord-sword-dance.png'),
(35, 'Great Heal Excerpt', 'The middle variant of heal miracles. Heals like Great Heal, but only one use. Amount healed is 8 times the Talisman''s MagAdjust', 1, 1, '2', 14, 0, NULL, 'spells\\great-heal-excerpt.png'),
(36, 'Great Heal', 'The strongest variant of the heal miracles. Amount healed is 8 times the Talisman''s MagAdjust', 3, 1, '2', 24, 0, NULL, 'spells\\great-heal.png'),
(37, 'Great Lightning Spear', 'Deals 3 * talisman''s MagAdjust lightning damage.', 10, 1, '2', 30, 0, NULL, 'spells\\great-lightning-spear.png'),
(38, 'Great Magic Barrier', 'Stronger version of Magic Barrier. Reduces magic damage by 85-95% for 40 seconds.', 2, 1, '2', 24, 0, NULL, 'spells\\great-magic-barrier.png'),
(39, 'Heal', 'The weakest variant of heal miracles. Amount healed is 3 times the Talisman''s MagAdjust.', 5, 1, '2', 12, 0, NULL, 'spells\\heal.png'),
(40, 'Homeward', 'Spell form of the Homeward Bone item. Returns to the last bonfire rested at and restores HP, charges of attuned spells, and respawns all enemies.', 1, 1, '2', 18, 0, NULL, 'spells\\homeward.png'),
(41, 'Karmic Justice', 'When cast, it creates a visible buff effect on the player that lasts for 60 seconds. If the player is hit 5 times in a row while Karmic Justice is active, it will trigger and create a large, highly damaging shockwave similar to Wrath of the Gods. Effect lasts 60 seconds.', 4, 1, '2', 20, 0, NULL, 'spells\\karmic-justice.png'),
(42, 'Lightning Spear', 'Throws a javelin of lightning at the enemy dealing 2.7 * talisman''s MagAdjust.', 10, 1, '2', 20, 0, NULL, 'spells\\lightning-spear.png'),
(43, 'Magic Barrier', 'Covers body in magic damage-reducing buff. Reduces magic damage by 45-50%. Lasts 40 seconds.', 4, 1, '2', 14, 0, NULL, 'spells\\magic-barrier.png'),
(44, 'Replenishment', 'Grants HP regeneration at the rate of 10 HP/seconds for 60 seconds.', 2, 1, '2', 16, 0, NULL, 'spells\\replenishment.png'),
(45, 'Seek Guidance', 'Display more online messages written using the Orange Guidance Soapstone. Also shows hidden messages written by the developer. These messages have the Knight of Astora icon and may contain phrases that cannot be used by players. Lasts 30 seconds.', 5, 1, '2', 12, 0, NULL, 'spells\\seek-guidance.png'),
(46, 'Soothing Sunlight', 'Special variant of heal miracles. Heals 6 times the Talisman''s MagAdjust for self and all party members in range.', 3, 2, '2', 48, 0, NULL, 'spells\\soothing-sunlight.png'),
(47, 'Sunlight Blade', 'Adds lightning damage to right hand weapon. Lightning damage added is talisman''s MagAdjust * 1.8.', 1, 1, '2', 30, 0, NULL, 'spells\\sunlight-blade.png'),
(48, 'Sunlight Spear', 'Hurl a sunlight spear that deals 3.7 * talisman''s MagAdjust lightning damage.', 5, 2, '2', 50, 0, NULL, 'spells\\sunlight-spear.png'),
(49, 'Tranquil Walk of Peace', 'Creates an aura that slows the movement speed of nearby enemies. Against other player, the aura adds 50% encumberance.', 5, 1, '2', 18, 0, NULL, 'spells\\tranquil-walk-of-peace.png'),
(50, 'Vow of Silence', 'Creates an aura that prohibits all spell casting, the caster and allied Phantoms included.', 2, 2, '2', 30, 0, NULL, 'spells\\vow-of-silence.png'),
(51, 'Wrath of the Gods', 'Create powerful damaging shockwave. Has neither cast nor recast time.', 3, 1, '2', 28, 0, NULL, 'spells\\wrath-of-the-gods.png'),
(52, 'Acid Surge', 'Breathe forth an acidic cloud that damages the weapons and armors of an enemy.', 2, 1, '3', 0, 0, NULL, 'spells\\acid-surge.png'),
(53, 'Black Flame', 'Deals 1.6*MagAdjust Physical + 2.0*MagAdjust Fire damage.', 8, 1, '3', 0, 0, 'This pyromancy is the Dark equivalent of Great Combustion.', 'spells\\black-flame.png'),
(54, 'Chaos Fire Whip', 'Chaos Fire Whip deals the same damage as Fire Whip: 2.33 * pyromancy flame''s MagAdjust per hit (hits 2 times). Lava patches on all Chaos pyromancies deal 1.8 * pyromancy flame''s MagAdjust.', 80, 2, '3', 0, 0, 'The same as Fire Whip, but the "fireballs" will leave a lava patch after hitting a surface.', 'spells\\chaos-fire-whip.png'),
(55, 'Chaos Storm', 'Each pillar deals 3.6 * pyromancy flame''s MagAdjust. Lava patches on all Chaos pyromancies deal 1.0 * pyromancy flame''s MagAdjust.', 20, 2, '3', 0, 0, 'Acts similar to Firestorm, but each flame pillar leaves a patch of lava.', 'spells\\chaos-storm.png'),
(56, 'Combustion', 'Summon forth a burst of flame from one''s hand. Short ranged, but fast execution. Fire damage is 2.0 * MagAdjust.', 16, 1, '3', 0, 0, NULL, 'spells\\combustion.png'),
(57, 'Fire Orb', 'Similar to Fireball, but stronger and wider area of effect. Fire damage is about 2.2 * pyromancy flame''s MagAdjust.', 6, 1, '3', 0, 0, NULL, 'spells\\fire-orb.png'),
(58, 'Fire Surge', 'Shoots a plume of flame per charge, if the attack button is held it will shoot streams of fire much like a flamethrower, while consuming charges. Fire damage is 0.38 * pyromancy flame''s MagAdjust per pulse.', 80, 1, '3', 0, 0, 'Interestingly, can be used while in Chameleon without cancelling the effect.', 'spells\\fire-surge.png'),
(59, 'Fire Tempest', 'Stronger version of Firestorm - fire damage is 3.9 times the MagAdjust of the Pyromancy Flame per flame pillar.', 20, 1, '3', 0, 0, NULL, 'spells\\fire-tempest.png'),
(60, 'Fire Whip', 'Short ranged sweep with a "fire whip". It''s actually small fireballs that chains, looking like a fire whip. Fire damage of this pyromancy is about - 2.33 * pyromancy flame''s MagAdjust per hit (hits 2 times).', 80, 1, '3', 0, 0, NULL, 'spells\\fire-whip.png'),
(61, 'Fireball', 'Throws a ball of flame which creates a small explosion upon impact, able to damage tightly packed enemies. Fire damage is 1.8 * pyromancy flame''s MagAdjust.', 8, 1, '3', 0, 0, NULL, 'spells\\fireball.png'),
(62, 'Firestorm', 'Generates pillars of flame at random locations around the player. These flame pillars have a knockback effect on enemies who are hit. Fire damage is 3.2 times the MagAdjust of the Pyromancy Flame per flame pillar.', 20, 1, '3', 0, 0, NULL, 'spells\\firestorm.png'),
(63, 'Flash Sweat', 'Coats body with water. Reduces fire damage by 45% for 1 minute.', 3, 1, '3', 0, 0, NULL, 'spells\\flash-sweat.png'),
(64, 'Great Chaos Fireball', 'Same damage and property as Great Fireball (2.7 * pyromancy flame''s MagAdjust), but leaves lava patches on the surface the explosion touches. Lava patches on all Chaos pyromancies deal 1.8 * pyromancy flame''s MagAdjust.', 4, 2, '3', 0, 0, NULL, 'spells\\great-chaos-fireball.png'),
(65, 'Great Combustion', 'Similar to Combustion, but higher damage and wider area of effect. Fire damage is 3.0 * MagAdjust.', 8, 1, '3', 0, 0, NULL, 'spells\\great-combustion.png'),
(66, 'Great Fireball', 'Similar to Fireball and Fire Orb, but with even greater damage and wider area of effect. Fire damage is 2.7 * pyromancy flame''s MagAdjust.', 4, 1, '3', 0, 0, NULL, 'spells\\great-fireball.png'),
(67, 'Iron Flesh', 'Turns caster''s body to that of solid metal,cutting physical damage by 40% and raising Lightning damage by 45% with no effect on fire defense. Gains Heavy Deflection effect and disables/reduces running and dodging. Lasts 30 seconds.', 3, 1, '3', 0, 0, NULL, 'spells\\iron-flesh.png'),
(68, 'Poison Mist', 'Breathe out a cloud of mist that gives Poison status to enemies who touch it. After infected, does 3 HP/second damage regardless of Pyromancy Flame level.', 3, 1, '3', 0, 0, NULL, 'spells\\poison-mist.png'),
(69, 'Power Within', 'Increases all damage by 40% and stamina regeneration, but constantly drains HP at the rate of 1% of max HP per second, rounded down. For example, a player with 573 health will take 5 damage per second while Power Within is active. This means that the HP drain alone cannot kill you unless your maximum health is divisible by 100.', 1, 1, '3', 0, 0, NULL, 'spells\\power-within.png'),
(70, 'Toxic Mist', 'Breathe out a cloud of mist that builds up Toxic to enemies who touch it. The toxin''s HP loss rate is 6 HP/seconds.', 1, 1, '3', 0, 0, NULL, 'spells\\toxic-mist.png'),
(71, 'Undead Rapport', 'Turns certain Undead enemies into allies. The charmed Undead''s eyes will glow when under the effect of Undead Rapport.', 7, 1, '3', 0, 0, NULL, 'spells\\undead-rapport.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(72) NOT NULL,
  `picture` varchar(64) DEFAULT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `picture`, `rank_id`) VALUES
(2, 'admin', '$2a$10$q/G48dB82FydOhKxuyPfNOP2g439KYHWFEqgXI7vRM238CW78TKda', NULL, 1),
(3, 'testuser', '$2a$10$f4tIrLJiy.uX1veWED2iye6.pTDCN08LEuGyqKQsYgegiFNndfiIa', NULL, 2),
(7, 'user1', '$2a$10$sS6crPTgPQt8.pwZBAj/yO8hFURyK1w718hOFKi1oHSQD/jRYa7wq', NULL, 2),
(8, 'avater26', '$2a$10$Zo14j9ZEug/.PSEVaFvyYuY29TebMMLtihPYrpk0pWAUDQ.4VlG0m', NULL, 2),
(9, 'testusernew', '1234123', NULL, 1),
(10, 'testing single', 'nice', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `weapon_type`
--

CREATE TABLE IF NOT EXISTS `weapon_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `weapon_type`
--

INSERT INTO `weapon_type` (`id`, `name`) VALUES
(1, 'Fist'),
(2, 'Hammer'),
(3, 'Great Hammer'),
(4, 'Axe'),
(5, 'Greataxe'),
(6, 'Dagger'),
(7, 'Thrusting Sword'),
(8, 'Straight Sword'),
(9, 'Greatsword'),
(10, 'Ultra Greatsword'),
(11, 'Katana'),
(12, 'Curved Sword'),
(13, 'Curved Greatsword'),
(14, 'Spear'),
(15, 'Halberd'),
(16, 'Bow'),
(17, 'Crossbow'),
(18, 'Greatbow'),
(19, 'Whip');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `weapons`
--

CREATE TABLE IF NOT EXISTS `weapons` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `mag_adjust` int(11) DEFAULT NULL,
  `damage` varchar(45) NOT NULL,
  `aux_effect` varchar(45) DEFAULT NULL,
  `damage_reduction` varchar(45) DEFAULT NULL,
  `critical` int(11) DEFAULT NULL,
  `durability` int(11) NOT NULL,
  `range` int(11) DEFAULT NULL,
  `stability` int(11) DEFAULT NULL,
  `weight` float NOT NULL,
  `stats_req` varchar(45) NOT NULL,
  `stats_scale` varchar(45) NOT NULL,
  `weapon_type` int(11) DEFAULT NULL,
  `shield_size` int(11) DEFAULT NULL,
  `spell_tool_type` int(11) DEFAULT NULL,
  `notes` longtext,
  `picture` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `weapons`
--

INSERT INTO `weapons` (`id`, `name`, `mag_adjust`, `damage`, `aux_effect`, `damage_reduction`, `critical`, `durability`, `range`, `stability`, `weight`, `stats_req`, `stats_scale`, `weapon_type`, `shield_size`, `spell_tool_type`, `notes`, `picture`) VALUES
(1, 'Caestus', NULL, '66/0/0/0', '0/0/0/0', '0/0/0/0', 100, 300, 0, 0, 0.5, '5/8/0/0', 'C/C/-/-', 1, NULL, NULL, NULL, 'weapons/caestus.png'),
(2, 'Claw', NULL, '72/0/0/0', '300/-/-/-', '0/0/0/0', 100, 150, NULL, 0, 1, '6/14/0/0', 'E/B/-/-', 1, NULL, NULL, NULL, 'weapons/claw.png'),
(3, 'Dark Hand', NULL, '200/0/0/0', '-/-/-/130', '80/80/80/80', 100, 999, NULL, 30, 0, '0/0/0/0', '-/-/-/-', 1, 5, NULL, 'When equipped in the left hand slot it functions as a shield. When equipped in the right hand slot, the strong attack will do a grab attack, similar to the Darkwraith enemy, that can absorb (soft) Humanity from invading online players and some NPCs.', 'weapons/dark-hand.png'),
(4, 'Dragon Bone Fist', NULL, '95/0/0/0', NULL, '0/0/0/0', 100, 999, NULL, 0, 8, '20/0/0/0', 'A/-/-/-', 1, NULL, NULL, 'Cannot be two-handed. ', 'weapons/dragon-bone-fist.png'),
(5, 'Blacksmith Giant Hammer', NULL, '120/0/0/200', NULL, '45/10/30/30', 100, 250, NULL, 30, 6, '16/0/0/0', 'D/-/-/-', 2, NULL, NULL, NULL, 'weapons/blacksmith-giant-hammer.png'),
(6, 'Blacksmith Hammer', NULL, '87/0/0/0', NULL, '45/10/30/30	', 100, 250, NULL, 30, 5, '14/0/0/0', 'C/-/-/-', 2, NULL, NULL, NULL, 'weapons/blacksmith-hammer.png'),
(7, 'Club', NULL, '87/0/0/0', NULL, '45/10/30/30	', 100, 250, NULL, 30, 3, '10/0/0/0', 'A/-/-/-', 2, NULL, NULL, NULL, 'weapons/club.png'),
(8, 'Hammer of Vamos', NULL, '115/0/64/0', NULL, '45/10/30/30', 100, 250, NULL, 26, 5, '14/0/0/0', 'C/-/-/-', 2, NULL, NULL, NULL, 'weapons/hammer-of-vamos.png'),
(9, 'Mace', NULL, '91/0/0/0', NULL, '45/10/30/30', 100, 250, NULL, 30, 4, '12/0/0/0', 'B/-/-/-', 2, NULL, NULL, NULL, 'weapons/mace.png'),
(10, 'Morning Star', NULL, '83/0/0/0', '300/-/-/-', '45/10/30/30', 180, 200, NULL, 30, 4, '11/0/0/0', 'C/-/-/-', 2, NULL, NULL, NULL, 'weapons/morning-star.png'),
(11, 'Pickaxe', NULL, '89/0/0/0', NULL, '45/10/30/30', 100, 250, NULL, 30, 4, '14/0/0/0', 'B/-/-/-', 2, NULL, NULL, NULL, 'weapons/pickaxe.png'),
(12, 'Reinforced Club', NULL, '97/0/0/0', '300/-/-/-', '45/10/30/30', 100, 100, NULL, 30, 4, '12/0/0/0', 'C/-/-/-', 2, NULL, NULL, NULL, 'weapons/reinforced-club.png'),
(13, 'Warpick', NULL, '91/0/0/0', NULL, '45/10/30/30', 100, 220, NULL, 30, 3, '11/0/0/0', 'C/D/-/-', 2, NULL, NULL, NULL, 'weapons/warpick.png'),
(14, 'Demon''s Grate Hammer', NULL, '138/0/0/0', NULL, '50/10/35/35', 100, 600, NULL, 32, 22, '46/0/0/0', 'B/-/-/-', 3, NULL, NULL, NULL, 'weapons/demon-s-great-hammer.png'),
(15, 'Dragon Tooth', NULL, '290/0/0/0', NULL, '50/10/35/35', 100, 999, NULL, 32, 18, '40/0/0/0', 'D/-/-/-', 3, NULL, NULL, 'Raises Fire and Magic defense by 20 points.', 'weapons/dragon-tooth.png'),
(16, 'Grant', NULL, '130/130/0/0', '-/-/130/-', '50/10/35/35', 100, 600, NULL, 32, 24, '50/0/0/30', 'B/-/-/A', 3, NULL, NULL, 'Two-handed strong attack is replaced by a Wrath of the Gods effect that scales with the weapon''s Magic damage. This attack uses 200 durability points per use.', 'weapons/grant.png'),
(17, 'Great Club', NULL, '135/0/0/0', NULL, '50/10/35/35', 100, 250, NULL, 32, 12, '28/0/0/0', 'B/-/-/-', 3, NULL, NULL, NULL, 'weapons/great-club.png'),
(18, 'Large Club', NULL, '120/0/0/0', '-/180/-/-', '55/10/40/40', 100, 250, NULL, 32, 11, '26/0/0/0', 'A/-/-/-', 3, NULL, NULL, NULL, 'weapons/large-club.png'),
(19, 'Smough''s Hammer', NULL, '300/0/0/0', NULL, '50/10/35/35', 100, 600, NULL, 32, 28, '58/0/0/0', 'D/-/-/-', 3, NULL, NULL, 'Restores 10 HP each time an enemy is hit.', 'weapons/smough-s-hammer.png'),
(20, 'Battle Axe', NULL, '95/0/0/0', NULL, '55/10/40/40', 100, 250, NULL, 36, 4, '12/8/0/0', 'C/D/-/-', 4, NULL, NULL, NULL, 'weapons/battle-axe.png'),
(21, 'Butcher Knife', NULL, '90/0/0/0', NULL, '55/10/40/40', 100, 250, NULL, 36, 10, '24/0/0/0', 'B/-/-/-', 4, NULL, NULL, 'Restores 5 HP each time an enemy is hit.', 'weapons/butcher-knife.png'),
(22, 'Crescent Axe', NULL, '115/115/0/0', '-/-/120/-', '55/10/40/40', 100, 180, NULL, 36, 7, '18/12/0/16', 'D/D/-/B', 4, NULL, NULL, NULL, 'weapons/crescent-axe.png'),
(23, 'Gargoyle Tail Axe', NULL, '93/0/0/0', NULL, '55/10/40/40', 100, 150, NULL, 36, 5, '14/14/0/0', 'D/C/-/-', 4, NULL, NULL, 'Increases Bleeding and Poison resistance.', 'weapons/gargoyle-tail-axe.png'),
(24, 'Golem Axe', NULL, '170/0/0/0', NULL, '55/10/40/40', 100, 600, NULL, 36, 16, '36/8/0/0', 'C/E/-/-', 4, NULL, NULL, '1-handed strong attack is replaced by a wind projectile attack that inflicts damage identical to a 1-handed weak attack and causes knockdown on hit. This attack consumes 30 durability.', 'weapons/golem-axe.png'),
(25, 'Hand Axe', NULL, '80/0/0/0', NULL, '55/10/40/40', 100, 250, NULL, 36, 2, '8/8/0/0', 'C/D/-/-', 4, NULL, NULL, NULL, 'weapons/hand-axe.png'),
(26, 'Black Knight Greataxe', NULL, '229/0/0/0', NULL, '55/10/40/40', 100, 300, NULL, 38, 16, '36/18/0/0', 'B/E/-/-', 5, NULL, NULL, NULL, 'weapons/black-knight-greataxe.png'),
(27, 'Demon''s Greataxe', NULL, '114/0/0/0', NULL, '55/10/40/40', 100, 600, NULL, 38, 22, '46/0/0/0', 'A/-/-/-', 5, NULL, NULL, NULL, 'weapons/demon-s-greataxe.png'),
(28, 'Dragon King Greataxe', NULL, '380/0/0/0', NULL, '55/10/40/40', 100, 400, NULL, 38, 24, '50/8/0/0', '-/-/-/-', 5, NULL, NULL, 'Increases your Magic and Fire Defense by 20. Two handed strong attack is replaced by a very large area of effect Magic attack around the wielder. This attack gains bonus damage from the weapon''s enchantment. Consumes 50 durability points per use.', 'weapons/dragon-king-greataxe.png'),
(29, 'Greataxe', NULL, '140/0/0/0', NULL, '55/10/40/40', 100, 230, NULL, 38, 14, '32/8/0/0', 'C/E/-/-', 5, NULL, NULL, NULL, 'weapons/greataxe.png'),
(30, 'Stone Greataxe', NULL, '190/0/0/0', NULL, '55/10/40/40', 100, 700, NULL, 38, 24, '48/10/0/0', 'B/E/-/-', 5, NULL, NULL, NULL, 'weapons/stone-greataxe.png'),
(31, 'Bandit''s Knife', NULL, '56/0/0/0', '300/-/-/-', '45/10/30/30', 147, 200, NULL, 26, 1, '6/12/0/0', 'E/B/-/-', 6, NULL, NULL, NULL, 'weapons/bandit-s-knife.png'),
(32, 'Dagger', NULL, '56/0/0/0', NULL, '45/10/30/30', 131, 200, NULL, 26, 0.5, '5/8/0/0', 'E/B/-/-', 6, NULL, NULL, NULL, 'weapons/dagger.png'),
(33, 'Dark Silver Tracer', NULL, '75/0/0/0', 'Toxic', '45/10/30/30', 160, 120, NULL, 26, 1, '6/25/0/0', 'E/S/-/-', 6, NULL, NULL, 'Strong attack''s toxin buildup is 36 per strike. When inflicted, HP loss rate is 6 HP/seconds', 'weapons/dark-silver-tracer.png'),
(34, 'Ghost Blade', NULL, '110/0/0/0', NULL, '45/10/30/30', 127, 100, NULL, 26, 0.5, '5/0/0/0', 'E/-/-/-', 6, NULL, NULL, 'Can damage ghosts without the user being cursed.', 'weapons/ghost-blade.png'),
(35, 'Parrying Dagger', NULL, '54/0/0/0', NULL, '45/10/30/30', 131, 200, NULL, 26, 0.5, '5/14/0/0', 'E/B/-/-', 6, NULL, NULL, NULL, 'weapons/parrying-dagger.png'),
(36, 'Priscilla''s Dagger', NULL, '80/0/0/0', '500/-/-/110', '45/10/30/30', 100, 100, NULL, 26, 1, '6/20/0/0', '-/A/-/-', 6, NULL, NULL, NULL, 'weapons/priscilla-s-dagger.png'),
(37, 'Estoc', NULL, '75/0/0/0', NULL, '45/10/30/30', 100, 150, NULL, 22, 3, '10/12/0/0', 'D/C/-/-', 7, NULL, NULL, NULL, 'weapons/estoc.png'),
(38, 'Mail Breaker', NULL, '57/0/0/0', NULL, '45/10/30/30', 120, 200, NULL, 22, 0.5, '5/12/0/0', 'D/C/-/-', 7, NULL, NULL, NULL, 'weapons/mail-breaker.png'),
(39, 'Rapier', NULL, '73/0/0/0', NULL, '45/10/30/30', 110, 150, NULL, 22, 1, '7/12/0/0', 'D/C/-/-', 7, NULL, NULL, NULL, 'weapons/rapier.png'),
(40, 'Ricard''s Rapier', NULL, '70/0/0/0', NULL, '45/10/30/30', 100, 100, NULL, 22, 2, '8/20/0/0', 'E/B/-/-', 7, NULL, NULL, NULL, 'weapons/ricard-s-rapier.png'),
(41, 'Velka''s Rapier', NULL, '62/104/0/0', '-/-/-/110', '45/10/30/30', 100, 130, NULL, 22, 2, '8/16/16/0', 'E/C/B/-', 7, NULL, NULL, NULL, 'weapons/velka-s-rapier.png'),
(42, 'Astora''s Straight Sword', NULL, '80/80/0/0', '-/-/120/-', '50/10/35/45', 100, 160, NULL, 32, 3, '10/10/0/14', 'C/C/-/C', 8, NULL, NULL, NULL, 'weapons/astora-s-straight-sword.png'),
(43, 'Balder Side Sword', NULL, '80/0/0/0', NULL, '50/10/35/45', 100, 120, NULL, 32, 3, '10/14/0/0', 'E/B/-/-', 8, NULL, NULL, NULL, 'weapons/balder-side-sword.png'),
(44, 'Barbed Straight Sword', NULL, '80/0/0/0', '300/-/-/-', '50/10/35/45', 100, 160, NULL, 32, 3, '10/10/0/0', 'D/D/-/-', 8, NULL, NULL, NULL, 'weapons/barbed-straight-sword.png'),
(45, 'Broad Sword', NULL, '82/0/0/0', NULL, '50/10/35/45', 100, 200, NULL, 32, 3, '10/10/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/broad-sword.png'),
(46, 'Broken Straight Sword', NULL, '40/0/0/0', NULL, '20/5/15/15', 100, 200, NULL, 16, 2, '8/8/0/0', 'D/D/-/-', 8, NULL, NULL, NULL, 'weapons/broken-straight-sword.png'),
(47, 'Crystal Straight Sword', NULL, '150/0/0/0', NULL, '50/10/35/35', 100, 60, NULL, 32, 6, '16/10/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/crystal-straight-sword.png'),
(48, 'Dark Sword', NULL, '82/0/0/0', NULL, '50/10/35/35', 100, 200, NULL, 32, 6, '16/16/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/dark-sword.png'),
(49, 'Drake Sword', NULL, '200/0/0/0', NULL, '50/10/35/35', 100, 360, NULL, 32, 6, '16/10/0/0', '-/-/-/-', 8, NULL, NULL, 'Raises Fire and Magic defense by 15 points. Move set is identical to Broadsword''s, except that 2-handed strong attack is replaced by a downward slash that releases a shockwave projectile. Costs 30 weapon durability per use.', 'weapons/drake-sword.png'),
(50, 'Longsword', NULL, '80/0/0/0', NULL, '50/10/35/35', 100, 200, NULL, 32, 3, '10/10/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/longsword.png'),
(51, 'Shortsword', NULL, '78/0/0/0', NULL, '50/10/35/35', 100, 200, NULL, 32, 2, '8/10/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/shortsword.png'),
(52, 'Silver Knight Straight Sword', NULL, '175/0/0/0', NULL, '50/10/35/35', 100, 300, NULL, 32, 6, '16/22/0/0', 'E/C/-/-', 8, NULL, NULL, NULL, 'weapons/silver-knight-straight-sword.png'),
(53, 'Straight Sword Hilt', NULL, '20/0/0/0', NULL, '20/5/15/15', 100, 200, NULL, 10, 1, '6/6/0/0', 'E/E/-/-', 8, NULL, NULL, NULL, 'weapons/straight-sword-hilt.png'),
(54, 'Sunlight Straight Sword', NULL, '82/0/0/0', NULL, '50/10/35/35', 100, 240, NULL, 32, 4, '12/12/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/sunlight-straight-sword.png'),
(55, 'Abyss Greatsword', NULL, '160/0/0/0', NULL, '40/50/40/40', 100, 300, NULL, 38, 9, '22/18/18/18', 'C/C/-/-', 9, NULL, NULL, NULL, 'weapons/abyss-greatsword.png'),
(56, 'Bastard Sword', NULL, '105/0/0/0', NULL, '60/10/40/40', 100, 200, NULL, 38, 6, '16/10/0/0', 'C/C/-/-', 9, NULL, NULL, NULL, 'weapons/bastard-sword.png'),
(57, 'Black Knight Sword', NULL, '220/0/0/0', NULL, '60/10/40/40', 100, 300, NULL, 38, 8, '20/18/0/0', 'C/E/-/-', 9, NULL, NULL, NULL, 'weapons/black-knight-sword.png'),
(58, 'Claymore', NULL, '103/0/0/0', NULL, '60/10/40/40', 100, 200, NULL, 38, 6, '16/10/0/0', 'C/C/-/-', 9, NULL, NULL, NULL, 'weapons/claymore.png'),
(59, 'Crystal Greatsword', NULL, '190/0/0/0', NULL, '60/10/40/40', 100, 60, NULL, 38, 8, '20/10/0/0', 'C/C/-/-', 9, NULL, NULL, NULL, 'weapons\\crystal-greatsword.png'),
(60, 'Flamberge', NULL, '100/0/0/0', '300/-/-/-', '60/10/40/40', 100, 160, NULL, 38, 6, '16/14/0/0', 'D/C/-/-', 9, NULL, NULL, NULL, 'weapons/flamberge.png'),
(61, 'Great Lord Greatsword', NULL, '256/0/0/0', NULL, '60/10/40/40', 100, 400, NULL, 26, 8, '20/10/0/0', 'D/D/-/-', 9, NULL, NULL, NULL, 'weapons/great-lord-greatsword.png'),
(62, 'Greatsword of Artorias', NULL, '120/85/0/0', '-/-/140/-', '60/10/40/40', 100, 400, NULL, 38, 10, '24/18/20/20', 'C/C/B/B', 9, NULL, NULL, NULL, 'weapons/greatsword-of-artorias.png'),
(63, 'Greatsword of Artorias (Cursed)', NULL, '178/0/0/0', NULL, '60/10/40/40', 100, 400, NULL, 38, 10, '24/18/18/18', 'C/C/C/C', 9, NULL, NULL, 'Can damage ghosts without the user being cursed.', 'weapons/greatsword-of-artorias-cursed.png'),
(64, 'Man Serpent Greatsword', NULL, '110/0/0/0', NULL, '60/10/40/40', 100, 300, NULL, 38, 10, '24/0/0/0', 'B/-/-/-', 9, NULL, NULL, NULL, 'weapons/man-serpent-greatsword.png'),
(65, 'Moonlight Greatsword', NULL, '0/132/0/0', NULL, '60/10/40/40', 100, 300, NULL, 38, 6, '16/10/28/0', '-/-/A/-', 9, NULL, NULL, 'One-handed strong attack is replaced with a charged vertical slash that releases an energy wave (Consumes 20 durability points). Two-handed strong attack is replaced with a charged horizontal slash that releases an energy wave. The energy wave explodes on impact, dealing splash damage (Consumes 40 durability points)', 'weapons/moonlight-greatsword.png'),
(66, 'Obsidian Greatsword', NULL, '320/0/0/0', NULL, '60/10/40/40', 100, 350, NULL, 38, 8, '20/16/0/0', '-/-/-/-', 9, NULL, NULL, 'Two-handed strong attack is replaced by a black flame Area of Effect attack centered at the player. Consumes 50 durability per use.', 'weapons/obsidian-greatsword.png'),
(67, 'Stone Greatsword', NULL, '148/100/0/0', NULL, '60/10/40/40', 100, 800, NULL, 38, 18, '40/10/0/0', 'C/C/E/-', 9, NULL, NULL, NULL, 'weapons/stone-greatsword.png'),
(68, 'Black Knight Greatsword', NULL, '220/0/0/0', NULL, '70/10/50/50', 100, 300, NULL, 44, 14, '32/18/0/0', 'B/E/-/-', 10, NULL, NULL, NULL, 'weapons/black-knight-greatsword.png'),
(69, 'Demon Great Machete', NULL, '133/0/0/0', NULL, '70/10/50/50', 100, 600, NULL, 44, 18, '40/0/0/0', 'B/-/-/-', 10, NULL, NULL, NULL, 'weapons/demon-great-machete.png'),
(70, 'Dragon Greatsword', NULL, '390/0/0/0', NULL, '70/10/50/50', 100, 400, NULL, 44, 24, '50/10/0/0', '-/-/-/-', 10, NULL, NULL, 'Raises Magic and Fire defense by 20 points. Two handed strong attack is replaced by a overhead chop that creates a shockwave. Consumes 50 durability points per use.', 'weapons/dragon-greatsword.png'),
(71, 'Greatsword', NULL, '130/0/0/0', NULL, '70/10/50/50', 100, 200, NULL, 44, 12, '28/10/0/0', 'C/D/-/-', 10, NULL, NULL, NULL, 'weapons/greatsword.png'),
(72, 'Zweihander', NULL, '130/0/0/0', NULL, '70/10/50/50', 100, 200, NULL, 44, 10, '24/10/0/0', 'C/D/-/-', 10, NULL, NULL, NULL, 'weapons/zweihander.png'),
(73, 'Chaos Blade', NULL, '144/0/0/0', '300/-/-/-', '45/10/30/30', 100, 120, NULL, 30, 6, '16/14/0/0', '-/B/-/-', 11, NULL, NULL, 'Drains 20 HP per strike from the wielder.', 'weapons/chaos-blade.png'),
(74, 'Iaito', NULL, '88/0/0/0', '300/-/-/-', '45/10/30/30', 100, 80, NULL, 30, 5, '14/20/0/0', '-/B/-/-', 11, NULL, NULL, NULL, 'weapons/iaito.png'),
(75, 'Uchigatana', NULL, '90/0/0/0', '300/-/-/-', '45/10/30/30', 100, 80, NULL, 30, 5, '14/14/0/0', '-/B/-/-', 11, NULL, NULL, NULL, 'weapons/uchigatana.png'),
(76, 'Washing Pole', NULL, '90/0/0/0', '300/-/-/-', '45/10/30/30', 100, 60, NULL, 30, 8, '20/16/0/0', 'D/D/-/-', 11, NULL, NULL, NULL, 'weapons/washing-pole.png'),
(77, 'Falchion', NULL, '82/0/0/0', NULL, '45/10/30/30', 100, 160, NULL, 30, 2, '9/13/0/0', 'E/B/-/-', 12, NULL, NULL, NULL, 'weapons/falchion.png'),
(78, 'Gold Tracer', NULL, '130/0/0/0', '300/-/-/-', '45/10/30/30', 100, 240, NULL, 30, 2, '9/25/0/0', 'E/A/-/-', 12, NULL, NULL, NULL, 'weapons/gold-tracer.png'),
(79, 'Jagged Ghost Blade', NULL, '155/0/0/0', '300/-/-/-', '45/10/30/30', 100, 100, NULL, 30, 1, '7/0/0/0', 'E/-/-/-', 12, NULL, NULL, 'Can damage ghosts without the user being cursed.', 'weapons/jagged-ghost-blade.png'),
(80, 'Painting Guardian Sword', NULL, '76/0/0/0', '300/-/-/-', '45/10/30/30', 100, 100, NULL, 30, 1, '7/20/0/0', 'E/A/-/-', 12, NULL, NULL, NULL, 'weapons/painting-guardian-sword.png'),
(81, 'Quelaag''s Fury Sword', NULL, '60/0/180/0', NULL, '45/10/30/30', 100, 600, NULL, 30, 3, '11/13/0/0', 'E/B/-/-', 12, NULL, NULL, 'Damage scales with Humanity.', 'weapons/quelaag-s-furysword.png'),
(82, 'Scimitar', NULL, '80/0/0/0', NULL, '45/10/30/30', 100, 160, NULL, 30, 1, '7/13/0/0', 'E/B/-/-', 12, NULL, NULL, NULL, 'weapons/scimitar.png'),
(83, 'Shotel', NULL, '82/0/0/0', NULL, '45/10/30/30', 100, 120, NULL, 30, 2, '9/14/0/0', 'E/C/-/-', 12, NULL, NULL, NULL, 'weapons/shotel.png'),
(84, 'Gravelord Sword', NULL, '265/0/0/0', 'Toxic', '60/10/40/40', 100, 600, NULL, 36, 10, '24/13/0/0', 'E/E/-/-', 13, NULL, NULL, 'The toxin''s HP loss rate is 5 HP/seconds', 'weapons/gravelord-sword.png'),
(85, 'Murakumo', NULL, '133/0/0/0', NULL, '60/10/40/40', 100, 180, NULL, 36, 12, '28/13/0/0', 'E/B/-/-', 13, NULL, NULL, NULL, 'weapons/murakumo.png'),
(86, 'Server', NULL, '107/0/0/0', NULL, '60/10/40/40', 100, 140, NULL, 36, 10, '24/13/0/0', 'E/C/-/-', 13, NULL, NULL, 'Restores 7 HP each time an enemy is hit.', 'weapons/server.png'),
(87, 'Channeler''s Trident', NULL, '70/115/0/0', NULL, '40/10/30/30', 100, 240, NULL, 26, 6, '16/16/24/0', 'E/C/B/-', 14, NULL, NULL, '2-handed strong attack is replaced by an area of effect dance that increases allies'' attack power for a duration. This move consumes 80 durability.', 'weapons/channeler-s-trident.png'),
(88, 'Demon''s Spear', NULL, '100/0/0/120', NULL, '40/10/30/30', 100, 400, NULL, 26, 4, '12/10/0/0', 'C/C/-/-', 14, NULL, NULL, NULL, 'weapons/demon-s-spear.png'),
(89, 'Dragonslayer Spear', NULL, '95/0/0/65', NULL, '40/10/30/30', 100, 300, NULL, 26, 10, '24/24/0/0', 'C/B/-/B', 14, NULL, NULL, 'One-handed strong attack is a long range lightning bolt that scales with the weapon''s Faith scaling, that consumes 20 durability per use. Two-handed strong attack is a slow strike forward. Pressing R2 a second time will result in a close-range, delayed upward thrust that can knock opponent airborne. The second attack consumes 20 durability.', 'weapons/dragon-slayer-spear.png'),
(90, 'Four-Pronged Plow', NULL, '75/0/0/0', NULL, '40/10/30/30', 100, 300, NULL, 26, 5.5, '15/12/0/0', 'D/C/-/-', 14, NULL, NULL, NULL, 'weapons/four-pronged-plow.png'),
(91, 'Moonlight Butterfly Horn', NULL, '0/120/0/0', NULL, '40/10/30/30', 100, 160, NULL, 26, 4, '12/0/14/0', '-/-/B/-', 14, NULL, NULL, NULL, 'weapons/moonlight-butterfly-horn.png'),
(92, 'Partizan', NULL, '80/0/0/0', NULL, '40/10/30/30', 100, 160, NULL, 26, 4.5, '13/12/0/0', 'D/C/-/-', 14, NULL, NULL, NULL, 'weapons/partizan.png'),
(93, 'Pike', NULL, '86/0/0/0', NULL, '40/10/30/30', 100, 180, NULL, 26, 10, '24/10/0/0', 'D/C/-/-', 14, NULL, NULL, NULL, 'weapons/pike.png'),
(94, 'Silver Knight Spear', NULL, '163/0/0/0', '-/-/110/-', '40/10/30/30', 100, 300, NULL, 26, 6, '16/22/0/0', 'E/C/-/-', 14, NULL, NULL, NULL, 'weapons/silver-knight-spear.png'),
(95, 'Spear', NULL, '80/0/0/0', NULL, '40/10/30/30', 100, 180, NULL, 26, 3.5, '11/10/0/0', 'D/C/-/-', 14, NULL, NULL, NULL, 'weapons/spear.png'),
(96, 'Winged Spear', NULL, '86/0/0/0', NULL, '40/10/30/30', 100, 140, NULL, 26, 4.5, '13/15/0/0', 'E/C/-/-', 14, NULL, NULL, NULL, 'weapons/winged-spear.png'),
(97, 'Black Knight Halberd', NULL, '245/0/0/0', NULL, '40/10/30/30', 100, 300, NULL, 26, 14, '32/18/0/0', 'D/E/-/-', 15, NULL, NULL, NULL, 'weapons/black-knight-halberd.png'),
(98, 'Gargoyle''s Halberd', NULL, '115/0/0/0', NULL, '40/10/30/30', 100, 200, NULL, 26, 6, '16/12/0/0', 'D/D/-/-', 15, NULL, NULL, 'Increases Bleed and Poison resistance by 25', 'weapons/gargoyle-s-halberd.png'),
(99, 'Giant''s Halberd', NULL, '140/0/0/135', NULL, '40/10/30/30', 100, 300, NULL, 26, 16, '36/12/0/0', 'D/D/-/-', 15, NULL, NULL, NULL, 'weapons/giant-s-halberd.png'),
(100, 'Great Scythe', NULL, '100/0/0/0', '300/-/-/-', '40/10/30/30', 100, 130, NULL, 26, 5, '14/14/0/0', 'E/B/-/-', 15, NULL, NULL, NULL, 'weapons/great-scythe.png'),
(101, 'Halberd', NULL, '110/0/0/0', NULL, '40/10/30/30', 100, 200, NULL, 26, 6, '16/12/0/0', 'D/D/-/-', 15, NULL, NULL, NULL, 'weapons/halberd.png'),
(102, 'Lifehunt Scythe', NULL, '180/0/0/0', '500/-/-/-', '40/10/30/30', 100, 100, NULL, 22, 6, '16/14/0/0', 'E/B/-/-', 15, NULL, NULL, '40 bleed buildup towards self on hit', 'weapons/lifehunt-scythe.png'),
(103, 'Lucerne', NULL, '110/0/0/0', NULL, '40/10/30/30', 100, 200, NULL, 26, 5.5, '15/12/0/0', 'D/D/-/-', 15, NULL, NULL, NULL, 'weapons/lucerne.png'),
(104, 'Scythe', NULL, '110/0/0/0', NULL, '40/10/30/30', 100, 130, NULL, 26, 5, '14/12/0/0', 'E/C/-/-', 15, NULL, NULL, NULL, 'weapons/scythe.png'),
(105, 'Titanite Catch Pole', NULL, '125/145/0/0', NULL, '40/10/30/30', 100, 600, NULL, 26, 6, '16/14/0/0', 'D/D/D/-', 15, NULL, NULL, NULL, 'weapons/titanite-catch-pole.png'),
(106, 'Black Bow of Pharis', NULL, '34/0/0/0', NULL, '0/0/0/0', 100, 100, 65, NULL, 1, '9/18/0/0', 'E/S/-/-', 16, NULL, NULL, NULL, 'weapons/black-bow-of-pharis.png'),
(107, 'Composite Bow', NULL, '55/0/0/0', NULL, '0/0/0/0', 100, 100, 38, NULL, 1, '11/12/0/0', 'C/C/-/-', 16, NULL, NULL, NULL, 'weapons/composite-bow.png'),
(108, 'Darkmoon Bow', NULL, '85/85/0/0', NULL, '0/0/0/0', 100, 400, 50, NULL, 1, '7/16/0/16', 'E/D/-/D', 16, NULL, NULL, NULL, 'weapons/darkmoon-bow.png'),
(109, 'Long Bow', NULL, '36/0/0/0', NULL, '0/0/0/0', 100, 100, 50, NULL, 1, '9/14/0/0', 'D/A/-/-', 16, NULL, NULL, NULL, 'weapons/long-bow.png'),
(110, 'Short Bow', NULL, '31/0/0/0', NULL, '0/0/0/0', 100, 100, 50, NULL, 0.5, '7/12/0/0', 'D/A/-/-', 16, NULL, NULL, NULL, 'weapons/short-bow.png'),
(111, 'Avelyn', NULL, '38/0/0/0', NULL, '0/0/0/0', 100, 150, 50, NULL, 6, '16/14/0/0', '-/-/-/-', 17, NULL, NULL, 'Shoots three bolts per shot.', 'weapons/avelyn.png'),
(112, 'Heavy Crossbow', NULL, '55/0/0/0', NULL, '0/0/0/0', 100, 150, 50, NULL, 5, '14/8/0/0', '-/-/-/-', 17, NULL, NULL, NULL, 'weapons/heavy-crossbow.png'),
(113, 'Light Crossbow', NULL, '50/0/0/0', NULL, '0/0/0/0', 100, 150, 50, NULL, 3, '10/8/0/0', '-/-/-/-', 17, NULL, NULL, NULL, 'weapons/light-crossbow.png'),
(114, 'Sniper Crossbow', NULL, '52/0/0/0', NULL, '0/0/0/0', 100, 150, 70, NULL, 8, '20/16/0/0', '-/-/-/-', 17, NULL, NULL, NULL, 'weapons/sniper-crossbow.png'),
(115, 'Dragonslayer Greatbow', NULL, '90/0/0/0', NULL, '0/0/0/0', 100, 100, 50, NULL, 10, '20/20/0/0', 'C/C/-/-', 18, NULL, NULL, NULL, 'weapons/dragonslayer-greatbow.png'),
(116, 'Gough''s Greatbow', NULL, '85/0/0/0', NULL, '0/0/0/0', 100, 100, 55, NULL, 13, '27/20/0/0', 'B/C/-/-', 18, NULL, NULL, NULL, 'weapons/gough-s-greatbow.png'),
(117, 'Guardian Tail', NULL, '84/0/0/0', '-/180/-/-', '30/10/20/20', 100, 250, NULL, 16, 5, '15/10/0/0', '-/C/-/-', 19, NULL, NULL, NULL, 'weapons/guardian-tail.png'),
(118, 'Notched Whip', NULL, '76/0/0/0', '300/-/-/-', '30/10/20/20', 100, 200, NULL, 16, 2, '8/16/0/0', '-/B/-/-', 19, NULL, NULL, NULL, 'weapons/notched-whip.png'),
(119, 'Whip', NULL, '80/0/0/0', '0/0/0/0', '30/10/20/20', 100, 200, 0, 16, 1.5, '7/14/0/0', '-/B/-/-', 19, NULL, NULL, NULL, 'weapons/whip.png'),
(120, 'Buckler', NULL, '55/0/0/0', '0/0/0/0', '76/32/65/53', 0, 140, NULL, 40, 1.5, '7/13/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/buckler.png'),
(121, 'Caduceus Round Shield', NULL, '50/0/0/0', NULL, '85/65/30/65', 0, 180, NULL, 40, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/caduceus-round-shield.png'),
(122, 'Cracked Round Shield', NULL, '46/0/0/0', NULL, '65/55/10/45', 0, 60, NULL, 30, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/cracked-round-shield.png'),
(123, 'Effigy Shield', NULL, '60/0/0/0', NULL, '90/40/70/90', 0, 180, NULL, 45, 3, '10/0/0/16', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/effigy-shield.png'),
(124, 'Leather Shield', NULL, '42/0/0/0', NULL, '85/35/60/60', 0, 200, NULL, 45, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/leather-shield.png'),
(125, 'Plank Shield', NULL, '52/0/0/0', NULL, '75/40/20/55', 0, 120, NULL, 45, 1.5, '7/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/plank-shield.png'),
(126, 'Red and White Round Shield', NULL, '50/0/0/0', NULL, '85/65/30/64', 0, 180, NULL, 40, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/red-and-white-round-shield.png'),
(127, 'Small Leather Shield', NULL, '40/0/0/0', NULL, '80/35/60/60', 0, 200, NULL, 40, 0.5, '5/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/small-leather-shield.png'),
(128, 'Target Shield', NULL, '56/0/0/0', NULL, '78/30/65/50', 0, 150, NULL, 45, 2, '8/11/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/target-shield.png'),
(129, 'Warrior''s Round Shield', NULL, '50/0/0/0', NULL, '85/65/30/65', 0, 180, NULL, 40, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/warrior-s-round-shield.png'),
(130, 'Balder Shield', NULL, '66/0/0/0', NULL, '100/20/60/50', 0, 220, NULL, 63, 4, '12/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons/balder-shield.png'),
(131, 'Black Knight Shield', NULL, '68/0/0/0', NULL, '100/25/95/65', 0, 250, NULL, 62, 6, '16/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons/black-knight-shield.png'),
(132, 'Bloodshield', NULL, '62/0/0/0', NULL, '100/30/70/50', 0, 240, NULL, 53, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, 'Increases Bleed, Poison and Curse Resistances by 50%', 'weapons/bloodshield.png'),
(133, 'Caduceus Kite Shield', NULL, '64/0/0/0', NULL, '100/30/70/50', 0, 250, NULL, 58, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons/caduceus-kite-shield.png'),
(134, 'Crest Shield', NULL, '62/0/0/0', NULL, '100/80/55/45', 0, 300, NULL, 55, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\crest-shield.png'),
(135, 'Dragon Crest Shield', NULL, '62/0/0/0', NULL, '100/20/85/45', 0, 300, NULL, 55, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\dragon-crest-shield.png'),
(136, 'East-West Shield', NULL, '52/0/0/0', NULL, '88/40/30/65', 0, 160, NULL, 44, 1, '6/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\east-west-shield.png'),
(137, 'Gargoyle''s Shield', NULL, '62/0/0/0', NULL, '85/40/75/70', 0, 300, NULL, 56, 4, '12/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\gargoyle-s-shield.png'),
(138, 'Grass Crest Shield', NULL, '62/0/0/0', NULL, '95/42/70/50', 0, 200, NULL, 51, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, 'Increases stamina regen by about 10 per second.', 'weapons\\grass-crest-shield.png'),
(139, 'Heater Shield', NULL, '60/0/0/0', NULL, '100/30/70/50', 0, 250, NULL, 55, 2, '8/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\heater-shield.png'),
(140, 'Hollow Soldier Shield', NULL, '66/0/0/0', NULL, '100/30/65/50', 0, 250, NULL, 56, 3.5, '11/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\hollow-soldier-shield.png'),
(141, 'Iron Round Shield', NULL, '68/0/0/0', NULL, '100/30/72/46', 0, 280, NULL, 55, 5, '14/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\iron-round-shield.png'),
(142, 'Knight Shield', NULL, '68/0/0/0', NULL, '100/30/60/40', 0, 200, NULL, 56, 5.5, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\knight-shield.png'),
(143, 'Large Leather Shield', NULL, '46/0/0/0', NULL, '91/35/60/60', 0, 200, NULL, 52, 1.5, '7/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\large-leather-shield.png'),
(144, 'Sanctus', NULL, '62/0/0/0', NULL, '95/40/70/50', 0, 410, NULL, 51, 3, '10/0/0/18', 'D/-/-/-', NULL, 2, NULL, 'Generates approximately two HP every two seconds.', 'weapons\\sanctus.png'),
(145, 'Silver Knight Shield', NULL, '66/0/0/0', NULL, '100/40/75/65', 0, 250, NULL, 64, 5, '14/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\silver-knight-shield.png'),
(146, 'Spider Shield', NULL, '62/0/0/0', NULL, '100/30/72/48', 0, 230, NULL, 56, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\spider-shield.png'),
(147, 'Sunlight Shield', NULL, '64/0/0/0', NULL, '100/30/75/50', 0, 280, NULL, 57, 4, '12/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\sunlight-shield.png'),
(148, 'Tower Kite Shield', NULL, '64/0/0/0', NULL, '100/30/70/50', 0, 250, NULL, 58, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\tower-kite-shield.png'),
(149, 'Wooden Shield', NULL, '54/0/0/0', NULL, '93/40/30/65', 0, 160, NULL, 52, 1.5, '7/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\wooden-shield.png'),
(150, 'Black Iron Greatshield', NULL, '80/0/0/0', NULL, '100/40/90/50', 0, 230, NULL, 71, 16, '34/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\black-iron-greatshield.png'),
(151, 'Bonewheel Shield', NULL, '80/0/0/0', NULL, '90/30/30/51', 0, 200, NULL, 66, 12, '30/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\bonewheel-shield.png'),
(152, 'Cleansing Greatshield', NULL, '75/0/0/0', NULL, '80/80/80/70', 0, 300, NULL, 77, 14.5, '31/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\cleansing-greatshield.png'),
(153, 'Eagle Shield', NULL, '62/0/0/0', NULL, '95/55/45/75', 0, 300, NULL, 70, 6, '16/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\eagle-shield.png'),
(154, 'Giant Shield', NULL, '80/0/0/0', NULL, '10/60/75/75', 0, 300, NULL, 68, 18, '36/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\giant-shield.png'),
(155, 'Greatshield of Artorias', NULL, '80/0/0/0', NULL, '100/50/80/40', 0, 600, NULL, 88, 16, '34/0/0/0', 'D/-/-/-', NULL, 3, NULL, '100% Poison, Toxic, and Bleed resistance when blocking.', 'weapons\\greatshield-of-artorias.png'),
(156, 'Havel''s Greatshield', NULL, '84/0/0/0', NULL, '100/90/80/80', 0, 500, NULL, 84, 26, '50/0/0/0', 'D/-/-/-', NULL, 3, NULL, 'The parry/shield bash (when held in left hand) and strong attacks (when held in right hand) are replaced by a buff that boosts your poise and gives your body a Heavy Deflection effect that lasts 30 seconds.This buff requires you to meet the strength requirement, otherwise the parry/strong attack will be the slow, heaving shield bash.', 'weapons\\havel-s-greatshield.png'),
(157, 'Stone Greatshield', NULL, '82/0/0/0', NULL, '100/80/75/65', 0, 400, NULL, 80, 20, '38/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\stone-greatshield.png'),
(158, 'Tower Shield', NULL, '80/0/0/0', NULL, '100/40/75/50', 0, 300, NULL, 72, 13, '30/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\tower-shield.png'),
(159, 'Crystal Ring Shield', NULL, '0/100/0/0', NULL, '70/90/70/40', 0, 120, NULL, 40, 3, '10/0/0/0', '-/-/-/-', NULL, 4, NULL, 'Parry/strong attacks are replaced by a crystal ring projectile attack. Consumes 4 durability points per use.', 'weapons\\crystal-ring-shield.png'),
(160, 'Crystal Shield', NULL, '70/0/0/0', NULL, '100/60/80/80', 0, 250, NULL, 60, 5, '14/0/0/0', 'D/-/-/-', NULL, 4, NULL, NULL, 'weapons\\crystal-shield.png'),
(161, 'Spiked Shield', NULL, '78/0/0/0', '300/-/-/-', '90/28/69/40', 0, 160, NULL, 48, 3, '10/12/0/0', 'D/C/-/-', NULL, 4, NULL, NULL, 'weapons\\spiked-shield.png'),
(162, 'Pierce Shield', NULL, '82/0/0/0', NULL, '95/30/70/34', 0, 180, NULL, 49, 3.5, '11/14/0/0', 'D/C/-/-', NULL, 4, NULL, NULL, 'weapons\\pierce-shield.png'),
(163, 'Skull Lantern', NULL, '30/0/75/0', NULL, '26/8/20/20', 100, 60, NULL, 16, 0.5, '5/0/0/0', 'E/-/-/-', NULL, 5, NULL, 'As long as it''s held up (equip in left hand and hold the block button), it activates a light aura effect similar to Cast Light.', 'weapons\\skull-lantern.png'),
(164, 'Beatrice''s Catalyst', 240, '40/0/0/0', '0/0/0/0', '26/8/20/20', 100, 90, NULL, 16, 2, '6/0/10/0', 'E/-/A/-', NULL, NULL, 1, NULL, 'weapons\\beatrice-s-catalyst.png'),
(165, 'Demon''s Catalyst', 200, '110/0/170/0', NULL, '26/8/20/20', 100, 300, NULL, 16, 4, '12/10/10/0', 'D/D/B/-', NULL, NULL, 1, NULL, 'weapons\\demon-s-catalyst.png'),
(166, 'Izalith Catalyst', 240, '40/0/0/0', NULL, '26/8/20/20', 100, 300, NULL, 16, 2, '6/0/14/0', 'E/-/A/-', NULL, NULL, 1, NULL, 'weapons\\izalith-catalyst.png'),
(167, 'Logan''s Catalyst', 250, '46/0/0/0', NULL, '26/8/20/20', 100, 90, NULL, 16, 2, '6/0/24/0', 'E/-/S/-', NULL, NULL, 1, NULL, 'weapons\\logan-s-catalyst.png'),
(168, 'Manus Catalyst', 295, '190/0/0/0', NULL, '26/8/20/20', 100, 200, NULL, 16, 5, '14/0/13/0', 'B/-/S/-', NULL, NULL, 1, 'Increases damage of sorceries but halves casts.', 'weapons\\manus-catalyst.png'),
(169, 'Oolacile Catalyst', 180, '40/0/0/0', '-/180/-/-', '26/8/20/20', 100, 55, NULL, 16, 2, '6/0/10/0', 'E/-/C/-', NULL, NULL, 1, NULL, 'weapons\\oolacile-catalyst.png'),
(170, 'Oolacile Ivory Catalyst', 180, '24/0/0/0', NULL, '26/8/20/20', 100, 30, NULL, 16, 0.5, '3/0/12/0', 'E/-/C/-', NULL, NULL, 1, NULL, 'weapons\\oolacile-ivory-catalyst.png'),
(171, 'Sorcerer''s Catalyst', 240, '40/0/0/0', NULL, '26/8/20/20', 100, 90, NULL, 16, 2, '6/0/10/0', 'E/-/A/-', NULL, NULL, 1, NULL, 'weapons\\sorcerer-s-catalyst.png'),
(172, 'Tin Banishment Catalyst', 220, '145/0/0/0', NULL, '26/8/20/20', 100, 160, NULL, 16, 3, '10/10/12/0', 'E/D/A/-', NULL, NULL, 1, NULL, 'weapons\\tin-banishment-catalyst.png'),
(173, 'Tin Crystallization Catalyst', 315, '240/0/0/0', NULL, '26/8/20/20', 100, 90, NULL, 16, 2.5, '7/0/32/0', 'E/-/S/-', NULL, NULL, 1, NULL, 'weapons\\tin-crystallization-catalyst.png'),
(174, 'Tin Darkmoon Catalyst', 230, '44/0/0/0', NULL, '26/8/20/20', 100, 60, NULL, 16, 1, '4/0/0/16', 'E/-/-/A', NULL, NULL, 1, 'Catalyst that scales with Faith rather than Intelligence.', 'weapons\\tin-darkmoon-catalyst.png'),
(175, 'Canvas Talisman', 220, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/14', '-/-/-/A', NULL, NULL, 2, NULL, 'weapons\\canvas-talisman.png'),
(176, 'Darkmoon Talisman', 240, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/24', '-/-/-/A', NULL, NULL, 2, NULL, 'weapons\\darkmoon-talisman.png'),
(177, 'Ivory Talisman', 234, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/16', '-/-/-/A', NULL, NULL, 2, NULL, 'weapons\\ivory-talisman.png'),
(178, 'Sunlight Talisman', 234, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/14', '-/-/-/A', NULL, NULL, 2, NULL, 'weapons\\sunlight-talisman.png'),
(179, 'Talisman', 200, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/10', '-/-/-/B', NULL, NULL, 2, NULL, 'weapons\\talisman.png'),
(180, 'Thorolund Talisman', 165, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/10', '-/-/-/C', NULL, NULL, 2, NULL, 'weapons\\thorolund-talisman.png'),
(181, 'Velka''s Talisman', 220, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/16/0', '-/-/A/-', NULL, NULL, 2, NULL, 'weapons\\velka-s-talisman.png'),
(182, 'Pyromancy Flame', 100, '0/0/40/0', NULL, '26/8/20/20', 100, 30, NULL, 16, 0, '4/0/0/0', '-/-/-/-', NULL, NULL, 3, NULL, 'weapons\\pyromancy-flame.png'),
(183, 'Ascended Pyromancy Flame', 196, '0/0/60/0', NULL, '26/8/20/20', 100, 30, NULL, 16, 0, '4/0/0/0', '-/-/-/-', NULL, NULL, 3, NULL, 'weapons\\ascended-pyromancy-flame.png');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `armor`
--
ALTER TABLE `armor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `armor_slots`
--
ALTER TABLE `armor_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `rings`
--
ALTER TABLE `rings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `shield_size`
--
ALTER TABLE `shield_size`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `spell_tool`
--
ALTER TABLE `spell_tool`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `spell_types`
--
ALTER TABLE `spell_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `spells`
--
ALTER TABLE `spells`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `weapon_type`
--
ALTER TABLE `weapon_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `armor`
--
ALTER TABLE `armor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=233;
--
-- Tilføj AUTO_INCREMENT i tabel `armor_slots`
--
ALTER TABLE `armor_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `rings`
--
ALTER TABLE `rings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- Tilføj AUTO_INCREMENT i tabel `shield_size`
--
ALTER TABLE `shield_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `spell_tool`
--
ALTER TABLE `spell_tool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tilføj AUTO_INCREMENT i tabel `spell_types`
--
ALTER TABLE `spell_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tilføj AUTO_INCREMENT i tabel `spells`
--
ALTER TABLE `spells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `weapon_type`
--
ALTER TABLE `weapon_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- Tilføj AUTO_INCREMENT i tabel `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=184;--
-- Database: `emailtest`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `user`
--

INSERT INTO `user` (`id`, `mail`, `password`) VALUES
(1, 'magnusthestrup@hotmail.com', NULL),
(2, 'magnus@hotmail.com', NULL),
(3, 'magnusthestrup2@hotmail.com', NULL);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `hifi`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'CD afspillere'),
(2, 'DVD afspillere'),
(3, 'Effekt forstærkere'),
(4, 'For forstærkere'),
(5, 'Højtalere'),
(6, 'Int forstærkere'),
(7, 'Pladespillere'),
(8, 'Rør forstærkere');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Magnus Holm', 'magnusthestrup@hotmail.com', 'Test'),
(2, 'Magnus Holm', 'magnusthestrup@hotmail.com', 'Test'),
(3, 'Magnus Holm', 'magnusthestrup@hotmail.com', 'test'),
(4, 'Magnus Holm', 'magnusthestrup@hotmail.com', 'test'),
(5, 'Magnus Holm', 'bla@bla.bla', 'bla'),
(6, 'Magnus Holm', 'magnusthestrup@hotmail.com', 'test');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `creators`
--

CREATE TABLE IF NOT EXISTS `creators` (
  `id` int(11) NOT NULL,
  `creator` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `creators`
--

INSERT INTO `creators` (`id`, `creator`) VALUES
(1, 'Creek'),
(2, 'Exposure'),
(3, 'Bosendorfer'),
(4, 'Epos'),
(5, 'Harbeth'),
(6, 'Jolida'),
(7, 'Manley'),
(8, 'Parasound'),
(9, 'PRO-JECT');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(27) NOT NULL,
  `info` text NOT NULL,
  `price` int(5) NOT NULL,
  `picture` text NOT NULL,
  `category_id` int(1) NOT NULL,
  `creator_id` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `products`
--

INSERT INTO `products` (`id`, `name`, `info`, `price`, `picture`, `category_id`, `creator_id`) VALUES
(1, 'Creek Classic', 'Placeholder', 1999, '/img/cd_afspillere/creek_classic_cd.jpg', 1, 1),
(2, 'Creek EVO', 'Placeholder', 2499, '/img/cd_afspillere/creek_Destiny_CD.jpg', 1, 1),
(3, 'Creek Destiny', 'Placeholder', 2999, '/img/cd_afspillere/creek_evo_cd.jpg', 1, 1),
(4, 'Exposure 2010S', 'Placeholder', 8199, '/img/cd_afspillere/Exp_2010S_CD.gif', 1, 2),
(5, 'Creek Classic', 'Placeholder', 999, '/img/dvdafspillere/creek_classic.jpg', 2, 1),
(6, 'Exposure 2010S', 'Placeholder', 2199, '/img/dvdafspillere/exposure_2010S.jpg', 2, 2),
(7, 'Parasound D200', 'Placeholder', 2390, '/img/dvdafspillere/parasound_d200.jpg', 2, 8),
(8, 'Parasound Halod3', 'Placeholder', 5999, '/img/dvdafspillere/parasound_halod3.jpg', 2, 8),
(9, 'Manley Mahi', 'Placeholder', 5999, '/img/effektforstaerkere/manley_mahi.jpg', 3, 7),
(10, 'Manley Neoclassic 300B', 'Placeholder', 29900, '/img/effektforstaerkere/manley_neoclassic300b.jpg', 3, 7),
(11, 'Manley Snapper', 'Placeholder', 7499, '/img/effektforstaerkere/manley_snapper.jpg', 3, 7),
(12, 'Parasound Haloa 23', 'Placeholder', 4195, '/img/effektforstaerkere/parasound_haloa23.jpg', 3, 8),
(13, 'Creek OBH 22 Passive Preamp', 'Placeholder', 24999, '/img/forforstaerkere/Creek_OBH_22_Passive_Preamp.jpg', 4, 1),
(14, 'Parasound Classic 7100', 'Placeholder', 6499, '/img/forforstaerkere/parasound_classic7100.jpg', 4, 8),
(15, 'Parasound Halop 3', 'Placeholder', 4999, '/img/forforstaerkere/parasound_halop3.jpg', 4, 8),
(16, 'PRO-JECT Prebox', 'Placeholder', 8999, '/img/forforstaerkere/Project_prebox.jpg', 4, 9),
(17, 'Bosendorfer VCS Wall', 'Placeholder', 10999, '/img/hojtalere/boesendorfer_vcs_wall.gif', 5, 3),
(18, 'Epos M5', 'Placeholder', 2399, '/img/hojtalere/epos_m5.gif', 5, 4),
(19, 'Harbeth HL7ES2', 'Placeholder', 6999, '/img/hojtalere/harbeth_hl7es2.jpg', 5, 5),
(20, 'Harbeth Monitor 30', 'Placeholder', 5999, '/img/hojtalere/harbeth_monitor30.jpg', 5, 5),
(21, 'Harbeth P3ES2', 'Placeholder', 4999, '/img/hojtalere/harbeth_p3es2.jpg', 5, 5),
(22, 'Creek A50I', 'Placeholder', 1590, '/img/int_forstaerkere/creek_a50I.jpg', 6, 1),
(23, 'Creek Classic 5350SE', 'Placeholder', 2499, '/img/int_forstaerkere/creek_classic5350SE.jpg', 6, 1),
(24, 'Creek Destiny AMP', 'Placeholder', 3950, '/img/int_forstaerkere/creek_destinyamp.jpg', 6, 1),
(25, 'Manley Snapper', 'Placeholder', 5295, '/img/int_forstaerkere/manley_snapper.jpg', 6, 7),
(26, 'Manley Stingray', 'Placeholder', 7150, '/img/int_forstaerkere/Manley_Stingray.jpg', 6, 7),
(27, 'PRO-JECT Debut 3 (Blå)', 'Placeholder', 3499, '/img/pladespillere/Pro_ject_Debut_3_bl.jpg', 7, 9),
(28, 'PRO-JECT Debut 2 (Rød)', 'Placeholder', 2999, '/img/pladespillere/Pro_ject_Debut_III_red_1.jpg', 7, 9),
(29, 'PRO-JECT Debut 2 (Gul)', 'Placeholder', 2999, '/img/pladespillere/Pro_ject_Debut_III_yellow_1.jpg', 7, 9),
(30, 'PRO-JECT RPM 5', 'Placeholder', 6999, '/img/pladespillere/Pro_ject_rpm_5.jpg', 7, 9),
(31, 'PRO-JECT RPM 10', 'Placeholder', 16999, '/img/pladespillere/Pro_ject_rpm10.jpg', 7, 9),
(32, 'Jolida JD102B', 'Placeholder', 1999, '/img/roer_forstaerkere/jolida_JD102b.jpg', 8, 6),
(33, 'Jolida JD202A', 'Placeholder', 2399, '/img/roer_forstaerkere/jolida_JD202a.jpg', 8, 6),
(34, 'Jolida JD300B', 'Placeholder', 3999, '/img/roer_forstaerkere/jolida_JD300b.jpg', 8, 6),
(35, 'Jolida JD302B', 'Placeholder', 4499, '/img/roer_forstaerkere/jolida_JD302b.jpg', 8, 6),
(36, 'Jolida JD502B', 'Placeholder', 4999, '/img/roer_forstaerkere/jolida_JD502b.jpg', 8, 6);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `passphrase` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `passphrase`) VALUES
(1, 'test_user', '1234');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `creators`
--
ALTER TABLE `creators`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Tilføj AUTO_INCREMENT i tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Tilføj AUTO_INCREMENT i tabel `creators`
--
ALTER TABLE `creators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Tilføj AUTO_INCREMENT i tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `kontor`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `img` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `ads`
--

INSERT INTO `ads` (`id`, `name`, `price`, `img`) VALUES
(1, 'Kontorplads 1', '100', '1557917147390_tumblr_ppthlcOHjV1w31rsvo1_1280.png'),
(2, 'Kontorplads 2', '200', '1557740363078_tumblr_pqbo32gHsj1wcouzy_540.jpg'),
(3, 'Kontorplads 3', '300', '1557905947355_Udklip.PNG'),
(5, 'Test spell', '250', '1558009539504_tumblr_pr4injLM3j1raj203o1_1280.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestart` time NOT NULL,
  `timeend` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `bookings`
--

INSERT INTO `bookings` (`id`, `date`, `user_id`, `timestart`, `timeend`) VALUES
(15, '2019-05-17', 1, '12:30:00', '14:00:00'),
(17, '2019-06-01', 1, '00:00:00', '03:00:00'),
(18, '2019-05-31', 2, '02:02:00', '19:09:00'),
(19, '2019-05-17', 2, '12:30:00', '14:30:00'),
(20, '2019-12-12', 1, '12:43:00', '13:43:00');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `ranks`
--

CREATE TABLE IF NOT EXISTS `ranks` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `ranks`
--

INSERT INTO `ranks` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Lejer');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(108) NOT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `rank_id`) VALUES
(1, 'admin', '$2a$10$TZwrxU4/kdjB9ZSWCvD9F.vzC8RllyXTBy/7Ig6NLks1eSHyudOHy', 1),
(2, 'Avater26', '$2a$10$LzyFYQlLRpDvRsykw304NukpyG/KxJIDZpGCp4gQa4wOqRcHuW3E2', 1);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- Tilføj AUTO_INCREMENT i tabel `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `kulturhuset`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `event_type`
--

CREATE TABLE IF NOT EXISTS `event_type` (
  `id` int(11) NOT NULL,
  `event_type_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `event_type`
--

INSERT INTO `event_type` (`id`, `event_type_name`) VALUES
(1, 'Film'),
(2, 'Teater');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `info` text NOT NULL,
  `date` datetime NOT NULL,
  `time_length` varchar(16) NOT NULL,
  `location` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `event_type_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `events`
--

INSERT INTO `events` (`id`, `name`, `info`, `date`, `time_length`, `location`, `price`, `event_type_id`) VALUES
(1, 'test', 'en test', '2020-03-22 00:00:00', '2.5 timer', 'Roskilde', 69, 1),
(2, 'test2', 'en test', '2019-03-23 12:26:34', '2.5 timer', 'Ringsted', 69, 2),
(3, 'test3', 'en test', '2019-03-24 12:26:34', '2.5 timer', 'Roskilde', 69, 1),
(4, 'test4', 'en test', '2019-03-25 12:26:34', '2.5 timer', 'Roskilde', 69, 2),
(5, 'test5', 'en test', '2019-03-26 12:26:34', '2.5 timer', 'Ringsted', 69, 1),
(6, 'test6', 'en test', '2019-03-27 12:26:34', '2.5 timer', 'Roskilde', 69, 1),
(7, 'test7', 'en test', '2019-03-28 12:26:34', '2.5 timer', 'Ringsted', 69, 2),
(8, 'test8', 'en test', '2019-03-29 12:26:34', '2.5 timer', 'Ringsted', 69, 1),
(9, 'test9', 'en test', '2019-03-30 12:26:34', '2.5 timer', 'Roskilde', 69, 2),
(10, 'test10', 'en test', '2019-03-31 12:26:34', '2.5 timer', 'Ringsted', 69, 1),
(11, 'test11', '', '2019-04-01 12:26:34', '2.5 timer', 'Roskilde', 69, 1),
(15, 'Test spell', 'jklsavdlihvaslh', '2019-06-02 00:00:00', '30 min', 'RTS', 200, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `ranks`
--

CREATE TABLE IF NOT EXISTS `ranks` (
  `id` int(11) NOT NULL,
  `rank` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `ranks`
--

INSERT INTO `ranks` (`id`, `rank`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `seats` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `reservations`
--

INSERT INTO `reservations` (`id`, `event_id`, `user_id`, `user_phone`, `user_name`, `seats`) VALUES
(1, 1, 0, '', '', NULL),
(2, 1, 1, '', '', NULL),
(3, 1, 0, '123456789', 'Magnus Holm', NULL),
(4, 1, 1, '', '', NULL),
(5, 1, 1, '', '', NULL);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(108) NOT NULL,
  `picture` varchar(108) DEFAULT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `picture`, `rank_id`) VALUES
(1, 'admin', '$2a$10$oENodu60qV4LLNtdLnP80OtUuh6hJRljlisSSCOt8.YtnytxhLMOu', 'bruger/1556265550787_tumblr_inline_pphritl85n1umirbg_540.png', 1),
(2, 'test_user', '$2a$10$14ubgbDAogF1uCJ1Ic8HQ.YO1IqImCba9WuB.y1RvbavF6jHsZTxG', 'bruger/1556265587268_Udklip.PNG', 2),
(3, 'test_user', '$2a$10$1wkHmkQ5xS/lSgxyQ1UiMeITcOz2MkMJxL/XW4LpooC1Q46DCWnre', 'bruger/1557474612008_tumblr_padr2ths731x9b48ro1_400.png', 2);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `event_type`
--
ALTER TABLE `event_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Tilføj AUTO_INCREMENT i tabel `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `landdrup`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `passphrase` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `admins`
--

INSERT INTO `admins` (`id`, `username`, `passphrase`) VALUES
(1, 'admin', 'test');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `age_groups`
--

CREATE TABLE IF NOT EXISTS `age_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `age_groups`
--

INSERT INTO `age_groups` (`id`, `title`) VALUES
(1, 'Ca. 3-5 år'),
(2, 'Ca. 6-8 år'),
(3, 'Ca. 9-14 år'),
(4, 'Ca. 15-18 år'),
(5, 'Voksen');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `age_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `style_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `classes`
--

INSERT INTO `classes` (`id`, `name`, `age_id`, `level_id`, `style_id`, `instructor_id`, `price`) VALUES
(12, 'Hip Hop 1', 3, 1, 1, 3, 2500),
(13, 'Funk 1', 5, 1, 4, 4, 1500),
(14, 'Disco hold 1', 5, 2, 3, 2, 3500),
(15, 'Breakdance 1', 3, 3, 2, 4, 2600),
(16, 'House 1', 4, 1, 5, 2, 2500),
(17, 'Jitterbug 1', 5, 2, 6, 1, 1500),
(18, 'Standard 1', 4, 1, 7, 4, 2500),
(19, 'Latin 1', 5, 2, 8, 1, 5000),
(20, 'Brugsdans', 5, 2, 9, 1, 25000),
(21, 'Hiphop hold 2', 4, 2, 1, 1, 1500);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `dance_styles`
--

CREATE TABLE IF NOT EXISTS `dance_styles` (
  `id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `dance_styles`
--

INSERT INTO `dance_styles` (`id`, `title`, `description`, `image`) VALUES
(1, 'Hip Hop', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'hiphop.jpg'),
(2, 'Breakdance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'breakdance.jpg'),
(3, 'Disco', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'disco.jpg'),
(4, 'Funk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'funk.jpg'),
(5, 'House', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'house.jpg'),
(6, 'Jitterbug', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'jitterbug.jpg'),
(7, 'Standard', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'standard.jpg'),
(8, 'Latin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'latin.jpg'),
(9, 'Brugsdans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis. Praesent lobortis turpis eget arcu euismod tempus. Integer eu ligula ut odio varius luctus eget et risus. Integer nisl turpis, pellentesque vitae est in, consequat mollis nisl.', 'brugsdans.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `frontpage`
--

CREATE TABLE IF NOT EXISTS `frontpage` (
  `id` int(11) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `frontpage_slider`
--

CREATE TABLE IF NOT EXISTS `frontpage_slider` (
  `id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `instructors`
--

CREATE TABLE IF NOT EXISTS `instructors` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `image`, `description`) VALUES
(1, 'Bo', 'ph.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis.'),
(2, 'Ib', 'ph.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis.'),
(3, 'Flemming', 'ph.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis.'),
(4, 'Hanne', 'ph.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue, ipsum at imperdiet tincidunt, eros lectus lacinia elit, eu egestas lorem lorem dictum felis. Aenean varius a ipsum sed hendrerit. Nullam mollis finibus blandit. Quisque eu leo lobortis orci sodales blandit ac sit amet dolor. Aliquam erat volutpat. Cras bibendum, arcu in varius ultrices, eros libero pulvinar nibh, vitae tincidunt elit mi ut odio. Curabitur egestas massa at tellus euismod venenatis.');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `levels`
--

INSERT INTO `levels` (`id`, `title`) VALUES
(1, 'Begynder'),
(2, 'Øvet'),
(3, 'Elite');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passphrase` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `passphrase`) VALUES
(1, 'user', 'b', '1234');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `age_groups`
--
ALTER TABLE `age_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `dance_styles`
--
ALTER TABLE `dance_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `frontpage`
--
ALTER TABLE `frontpage`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `frontpage_slider`
--
ALTER TABLE `frontpage_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tilføj AUTO_INCREMENT i tabel `age_groups`
--
ALTER TABLE `age_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- Tilføj AUTO_INCREMENT i tabel `dance_styles`
--
ALTER TABLE `dance_styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Tilføj AUTO_INCREMENT i tabel `frontpage`
--
ALTER TABLE `frontpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `frontpage_slider`
--
ALTER TABLE `frontpage_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `lokaler`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `anvendelser`
--

CREATE TABLE IF NOT EXISTS `anvendelser` (
  `id` int(11) NOT NULL,
  `anvendelse` varchar(9) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `anvendelser`
--

INSERT INTO `anvendelser` (`id`, `anvendelse`) VALUES
(1, 'Klasse'),
(2, 'Samtale'),
(3, 'Værksted'),
(4, 'Bibliotek');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `lokaler`
--

CREATE TABLE IF NOT EXISTS `lokaler` (
  `id` int(11) NOT NULL,
  `navn` varchar(9) NOT NULL,
  `etage` varchar(1) NOT NULL,
  `max_elever` int(11) NOT NULL,
  `pc_antal` int(11) NOT NULL,
  `projektor` int(11) NOT NULL,
  `anvendelse` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `lokaler`
--

INSERT INTO `lokaler` (`id`, `navn`, `etage`, `max_elever`, `pc_antal`, `projektor`, `anvendelse`) VALUES
(1, 'C102', '1', 30, 2, 1, 1),
(2, 'B203', '2', 35, 2, 1, 1),
(3, 'C103', '1', 10, 0, 0, 1),
(4, 'A101', '1', 10, 0, 0, 2),
(5, 'KemiA', '3', 25, 1, 1, 3),
(6, 'KemiB', '3', 25, 1, 1, 3),
(7, 'Bibliotek', 'K', 75, 15, 0, 4),
(8, 'A102', '1', 10, 0, 0, 2);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `anvendelser`
--
ALTER TABLE `anvendelser`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `lokaler`
--
ALTER TABLE `lokaler`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `anvendelser`
--
ALTER TABLE `anvendelser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `lokaler`
--
ALTER TABLE `lokaler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;--
-- Database: `osteapi`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `oster`
--

CREATE TABLE IF NOT EXISTS `oster` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `oster`
--

INSERT INTO `oster` (`id`, `name`, `price`) VALUES
(1, 'Roquefort', '195.00'),
(2, 'Halloumi', '20.00'),
(3, 'Feta', '8.50'),
(4, 'Parmesan', '47.00'),
(5, 'Mascarpone', '31.00'),
(6, 'Mozzarella', '15.50'),
(7, 'Manchego', '272.00'),
(8, 'Port Salut', '23.50'),
(9, 'Camembert', '39.00'),
(10, 'Brie', '194.00');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `oster_styrker`
--

CREATE TABLE IF NOT EXISTS `oster_styrker` (
  `oste_id` int(11) NOT NULL,
  `styrke_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `oster_styrker`
--

INSERT INTO `oster_styrker` (`oste_id`, `styrke_id`) VALUES
(1, 1),
(1, 5),
(2, 3),
(2, 7),
(3, 2),
(3, 5),
(4, 1),
(4, 8),
(5, 2),
(5, 7),
(6, 4),
(6, 8),
(7, 4),
(7, 6),
(8, 3),
(8, 5),
(9, 1),
(9, 7),
(10, 2),
(10, 6);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `styrker`
--

CREATE TABLE IF NOT EXISTS `styrker` (
  `id` int(11) NOT NULL,
  `name` varchar(17) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `styrker`
--

INSERT INTO `styrker` (`id`, `name`) VALUES
(1, 'Meget Mild Smag'),
(2, 'Mild Smag'),
(3, 'Stærk Smag'),
(4, 'Meget Stærk Smag'),
(5, 'Meget Mild Lugt'),
(6, 'Mild Lugt'),
(7, 'Stærk Lugt'),
(8, 'Meget Stærk Lugt');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `oster`
--
ALTER TABLE `oster`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `styrker`
--
ALTER TABLE `styrker`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `oster`
--
ALTER TABLE `oster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `styrker`
--
ALTER TABLE `styrker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Data dump for tabellen `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"cms","table":"weapons"},{"db":"recipes","table":"users"},{"db":"osteapi","table":"oster"},{"db":"phpmyadmin","table":"pma_column_info"},{"db":"phpmyadmin","table":"pma_designer_coords"},{"db":"phpmyadmin","table":"pma_history"},{"db":"phpmyadmin","table":"pma_pdf_pages"},{"db":"phpmyadmin","table":"pma_recent"},{"db":"phpmyadmin","table":"pma_relation"},{"db":"cdcol","table":"cds"}]');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
  `id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Data dump for tabellen `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-10-02 13:05:19', '{"lang":"da","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks for tabel `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks for tabel `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks for tabel `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks for tabel `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indeks for tabel `pma_recent`
--
ALTER TABLE `pma_recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks for tabel `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks for tabel `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks for tabel `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks for tabel `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks for tabel `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks for tabel `pma_tracking`
--
ALTER TABLE `pma_tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks for tabel `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks for tabel `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks for tabel `pma_users`
--
ALTER TABLE `pma_users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `recipes`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `amount` int(11) NOT NULL,
  `measure` decimal(6,2) DEFAULT NULL,
  `recipes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `photos`
--

INSERT INTO `photos` (`id`, `name`) VALUES
(1, 'default.jpg'),
(2, '1546939523757_49864635_229975484443913_2001655206059704320_n.jpg'),
(3, '1546939598056_Dave_Strider.png'),
(4, '1547022630113_tumblr_inline_nmmpgcTeCN1s67jct_500.gif'),
(5, '1547022639810_1519882455966.gif'),
(6, '1547022656312_4Iv0lL2.gif'),
(7, '1547022680733_tumblr_inline_opia494jsv1tqmwkj_540.gif'),
(8, '1547022699397_tumblr_inline_ozosuyve4r1r12q76_540.gif'),
(9, '1547033822315_iswmd.jpg'),
(10, '1547110245410_Dd5aO3eU8AAKTQ2.jpg'),
(11, '1547110267532_index.html'),
(12, '1547110948691_Capture.JPG'),
(13, '1547111014460_Dd5bwo5VQAA7tfl.jpg'),
(14, '1547111152845_tumblr_inline_p2ign4LJzY1r4ew79_540.jpg'),
(15, '1547111855320_Dd5bwo5VQAA7tfl.jpg'),
(16, '1547112394241_Capture.JPG'),
(17, '1547112645015_Dd5bwo5VQAA7tfl.jpg'),
(18, '1547455038439_iswmd.jpg'),
(19, '1547538864697_Capture.JPG'),
(20, '1547538877950_iswmd.jpg'),
(21, '1547539094454_Dd5aO3eU8AAKTQ2.jpg'),
(22, '1547539160040_712a4747e35f8503a25ca931d529b520.jpg'),
(23, '1547539453716_Capture.JPG'),
(24, '1547539562465_tumblr_padr2ths731x9b48ro1_400.png'),
(25, '1547539789933_iswmd.jpg'),
(26, '1547539889093_70e.jpg'),
(27, '1547540062701_iswmd.jpg'),
(28, '1547540142874_70e.jpg'),
(29, '1547540337988_Capture.JPG'),
(30, '1547540407787_70e.jpg'),
(31, '1547540549092_iswmd.jpg'),
(32, '1547540717543_Capture.JPG'),
(33, '1547540859981_70e.jpg'),
(34, '1547541012523_Capture.JPG'),
(35, '1547541105048_70e.jpg'),
(36, '1547541151543_Capture.JPG'),
(37, '1547541358217_70e.jpg'),
(38, '1547541378377_Capture.JPG'),
(39, '1547541480969_70e.jpg'),
(40, '1547541498336_Capture.JPG'),
(41, '1547541527227_70e.jpg'),
(42, '1547543802830_Capture.JPG'),
(43, '1547543834128_70e.jpg'),
(44, '1547543870796_Capture.JPG'),
(45, '1547544817906_70e.jpg'),
(46, '1547546230398_Capture.JPG'),
(47, '1547546288831_70e.jpg'),
(48, '1547547368537_Capture.JPG'),
(49, '1547547429899_70e.jpg'),
(50, '1547547472603_Capture.JPG'),
(51, '1547548365277_70e.jpg'),
(52, '1547548391760_Capture.JPG'),
(53, '1547548573266_70e.jpg'),
(54, '1547548846538_Capture.JPG'),
(55, '1547552653710_Dd5aO3eU8AAKTQ2.jpg'),
(56, '1549717157182_tumblr_inline_p2ign4LJzY1r4ew79_540.jpg'),
(57, '1549717222082_apache_pb2.gif');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `bio` text,
  `users_id` int(11) NOT NULL,
  `photos_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `profiles`
--

INSERT INTO `profiles` (`id`, `firstname`, `lastname`, `bio`, `users_id`, `photos_id`) VALUES
(1, 'ssdfsd', '6789', 'A dude', 1, 57),
(2, NULL, NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `recipe_comment`
--

CREATE TABLE IF NOT EXISTS `recipe_comment` (
  `id` int(11) NOT NULL,
  `recipes_id` int(11) NOT NULL,
  `comments_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `recipe_photo`
--

CREATE TABLE IF NOT EXISTS `recipe_photo` (
  `id` int(11) NOT NULL,
  `recipes_id` int(11) NOT NULL,
  `photos_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `recipe_photo`
--

INSERT INTO `recipe_photo` (`id`, `recipes_id`, `photos_id`) VALUES
(1, 1, 55),
(2, 2, 55),
(3, 3, 55),
(4, 4, 55),
(5, 5, 55),
(6, 6, 55),
(7, 7, 55),
(8, 8, 55),
(9, 9, 55),
(10, 10, 55),
(11, 11, 55);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
  `id` int(11) NOT NULL,
  `header` varchar(45) NOT NULL,
  `description` text,
  `procedure` text NOT NULL,
  `author` int(11) NOT NULL,
  `published` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `recipes`
--

INSERT INTO `recipes` (`id`, `header`, `description`, `procedure`, `author`, `published`) VALUES
(1, 'hej', 'hehe', 'heheheh', 1, 1),
(2, 'hej1', 'test694', 'test6954', 1, 0),
(3, 'last', 'last', 'last', 1, 0),
(4, 'last', 'last', 'last', 1, 1),
(5, 'last', 'last', 'last', 1, 1),
(6, 'last', 'last', 'last', 1, 1),
(7, 'last', 'last', 'last', 1, 1),
(8, 'last', 'last', 'last', 1, 1),
(9, 'last', 'last', 'last', 1, 1),
(10, 'last', 'last', 'last', 1, 1),
(11, 'last', 'last', 'last', 1, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `roles`
--

INSERT INTO `roles` (`id`, `name`, `level`) VALUES
(1, 'Super admin', 100),
(2, 'Admin', 90),
(3, 'Moderator', 80),
(4, 'Author', 20),
(5, 'User', 10),
(6, 'Guest', 1);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `userprofiles`
--
CREATE TABLE IF NOT EXISTS `userprofiles` (
`id` int(11)
,`username` varchar(100)
,`firstname` varchar(45)
,`lastname` varchar(45)
,`fullname` varchar(90)
,`bio` text
,`photo` varchar(120)
,`role` varchar(15)
);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(76) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `roles_id`) VALUES
(1, 'admin', '$2a$10$V/SDGlGrflSKnHHVXJW0lOiamrfxmM.FMQxCMMFl5zoYQUQeOOJCe', 1),
(2, 'user1', '$2a$10$J375CjMIC9mz0vECWPPPFeQvAG/ncA6vcocqeczT8KtLUGF/iQUMK', 1);

--
-- Triggers/udløsere `users`
--
DELIMITER $$
CREATE TRIGGER `createprofile` AFTER INSERT ON `users`
 FOR EACH ROW BEGIN
	INSERT INTO profiles SET users_id = NEW.id, photos_id = 1;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL,
  `recipes_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur for visning `userprofiles`
--
DROP TABLE IF EXISTS `userprofiles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userprofiles` AS select `users`.`id` AS `id`,`users`.`username` AS `username`,`profiles`.`firstname` AS `firstname`,`profiles`.`lastname` AS `lastname`,concat(`profiles`.`firstname`,'',`profiles`.`lastname`) AS `fullname`,`profiles`.`bio` AS `bio`,`photos`.`name` AS `photo`,`roles`.`name` AS `role` from (((`users` join `profiles` on((`users`.`id` = `profiles`.`id`))) join `photos` on((`profiles`.`photos_id` = `photos`.`id`))) join `roles` on((`users`.`roles_id` = `roles`.`id`)));

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `recipe_comment`
--
ALTER TABLE `recipe_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `recipe_photo`
--
ALTER TABLE `recipe_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- Tilføj AUTO_INCREMENT i tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `recipe_comment`
--
ALTER TABLE `recipe_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `recipe_photo`
--
ALTER TABLE `recipe_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Tilføj AUTO_INCREMENT i tabel `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Tilføj AUTO_INCREMENT i tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` text,
  `frontpage` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `frontpage`) VALUES
(1, 'Forside', '<p>Dette er en forside</p>', 1),
(2, 'Underside', '<p>en test</p>', 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Ash', 'isuck'),
(2, 'Ash', 'isuck'),
(3, 'Ash', 'isuck'),
(4, 'Ash', 'isuck'),
(7, 'hej', '$2a$15$A/5yVfdo.eaGIB1AZmBfJeTrImtd5g/GByWyFUNz./mMvcqzhMRwa');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `message` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `name`, `message`) VALUES
(1, 'Bit', 'Connect'),
(2, 'Big', 'Chungus');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Weapons', 'Swords, axes, maces, guns ect.'),
(2, 'test', 'test');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `path`) VALUES
(1, '1566473129122_tumblr_35cd5830e6787797f722702ad50ccdc2_38e0deef_640.png'),
(2, '1566476009566_tumblr_punj77mkEy1xp1nxxo1_500.jpg'),
(3, '1566476111280_tumblr_pundeq6hZy1xp1nxxo1_540.jpg'),
(4, '1566476292559_tumblr_punj77mkEy1xp1nxxo1_500.jpg'),
(5, '1566551139462_tumblr_ptr2hrkyr21rahdz1_540.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `weight` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `fk_category` int(11) NOT NULL,
  `fk_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf32 NOT NULL,
  `email` varchar(45) NOT NULL,
  `fk_image` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `email`, `fk_image`) VALUES
(28, 'admin_User', 'magnusthestrup@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `roles`
--

INSERT INTO `roles` (`id`, `name`, `level`) VALUES
(1, 'SuperAdmin', 100),
(2, 'Admin', 99),
(3, 'Employe', 50),
(4, 'Customer', 10),
(5, 'Guest', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(12) CHARACTER SET utf32 NOT NULL,
  `password` varchar(72) NOT NULL,
  `fk_profile` int(11) NOT NULL,
  `fk_role` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fk_profile`, `fk_role`) VALUES
(16, 'admin', '$2a$10$8l.VxMlYyhQeCkNJ91Mx7eRtkv9PAUUgIqsI5Nn2Uj/2xT8RpKVvK', 28, 1);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`), ADD KEY `products_categories_fk_idx` (`fk_category`), ADD KEY `products_images_fk_idx` (`fk_image`);

--
-- Indeks for tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD KEY `fk_profile_image_idx` (`fk_image`);

--
-- Indeks for tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD KEY `fk_profile_idx` (`fk_profile`), ADD KEY `users_roles_fk_idx` (`fk_role`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- Tilføj AUTO_INCREMENT i tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `products_categories_fk` FOREIGN KEY (`fk_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `products_images_fk` FOREIGN KEY (`fk_image`) REFERENCES `images` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrænsninger for tabel `profiles`
--
ALTER TABLE `profiles`
ADD CONSTRAINT `fk_profile_image` FOREIGN KEY (`fk_image`) REFERENCES `images` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrænsninger for tabel `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_profile_fk` FOREIGN KEY (`fk_profile`) REFERENCES `profiles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `users_role_fk` FOREIGN KEY (`fk_role`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Data dump for tabellen `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `user_pwd`
--
ALTER TABLE `user_pwd`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
