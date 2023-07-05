-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 01:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rybak`
--

-- --------------------------------------------------------

--
-- Table structure for table `bait`
--

CREATE TABLE `bait` (
  `BaitID` tinyint(4) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `bait`
--

INSERT INTO `bait` (`BaitID`, `name`) VALUES
(1, 'kukurydza'),
(2, 'kulki proteinowe'),
(3, 'ziemniaki'),
(4, 'czerwone i białe robaki'),
(5, 'chrząszcze i szarańczaki'),
(6, 'przynęty sztuczne\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `fish`
--

CREATE TABLE `fish` (
  `fishID` smallint(6) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `nameLatin` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `nameEng` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `img` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL,
  `maxLength` float NOT NULL,
  `maxWeight` float NOT NULL,
  `recordWeight` float DEFAULT NULL,
  `protect` smallint(6) DEFAULT NULL,
  `protectPoss` mediumint(9) DEFAULT NULL,
  `additionalPixels` smallint(6) NOT NULL DEFAULT 0,
  `width` smallint(6) NOT NULL,
  `margin` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fish`
--

INSERT INTO `fish` (`fishID`, `name`, `nameLatin`, `nameEng`, `img`, `maxLength`, `maxWeight`, `recordWeight`, `protect`, `protectPoss`, `additionalPixels`, `width`, `margin`) VALUES
(1, 'Amur biały', '(Ctenopharyngodon idella)', 'Grass carp', '../images/amur_bialy.png', 1, 25000, 39.2, NULL, NULL, 145, 184, 170),
(2, 'Boleń', '(Aspius aspius)', 'Asp', '../images/bolen.png', 0.8, 8000, 8.05, 25, 5000, 400, 164, 135);

-- --------------------------------------------------------

--
-- Table structure for table `fishbaits`
--

CREATE TABLE `fishbaits` (
  `fishID` smallint(6) NOT NULL,
  `BaitID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fishbaits`
--

INSERT INTO `fishbaits` (`fishID`, `BaitID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `fishdesc`
--

CREATE TABLE `fishdesc` (
  `fishID` smallint(6) NOT NULL,
  `desc` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `chara` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `reprod` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `appear` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `appearImg` varchar(500) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fishdesc`
--

INSERT INTO `fishdesc` (`fishID`, `desc`, `chara`, `reprod`, `appear`, `appearImg`) VALUES
(1, 'Amur biały to duża ryba słodkowodna z rodziny karpiowatych, charakteryzująca się długim, wydłużonym ciałem i szeroką głową. Dorosłe osobniki mogą osiągać imponującą długość nawet ponad 2 metry. Ich ubarwienie jest srebrzyste lub szare, a boki ciała często mają złociste lub żółte odcienie. Amur biały jest endemitem dorzecza Amuru w Azji Wschodniej, występując w rzekach o wartkim nurcie i kamienistym dnie. Jest cenioną rybą sportową i stanowi ważny gatunek w rybołówstwie.', 'Ciało wydłużone, smukłe, nieznacznie spłaszczone bocznie. Pokryte dużymi łuskami, z widocznym ciemniejszym obrzeżem na tylnej krawędzi. Grzbiet ma intensywnie zielony do czarnozielonego koloru, boki mają odcień oliwkowozielony, a brzuch jest jaśniejszy. Głowa szeroka, z tępo zakończonym pyskiem i dużym otworem gębowym, otoczonym mięsistymi wargami.', 'Amur biały jest obcym gatunkiem w Polsce. Nie rozmnaża się naturalnie w naszych wodach. Wszystkie osobniki pochodzą z zarybień, gdzie są hodowane w specjalnych ośrodkach.', 'Amur biały jest pochodzenia chińskiego i występował pierwotnie w dorzeczu rzeki Amur, choć dokładny zasięg jest trudny do ustalenia. Gatunek ten jest hodowany od X wieku i został szeroko aklimatyzowany w wielu krajach, w tym w Europie od 1950 roku. W Polsce został wprowadzony od 1964 roku, a w kolejnych latach rozprzestrzenił się również w rzekach. Znajduje się na terenach takich jak Ameryka Północna, Australia, Indie, Dania, Rosja, Ameryka Południowa, Afryka Zachodnia i Południowa, oraz Kazachstan. Amur biały żyje w stadach liczących kilka do kilkunastu osobników i zimuje blisko dna.', 'https://atlasryb.online/zdjecia/mapy/map_4.jpg'),
(2, 'Boleń to słodkowodna ryba z rodziny łososiowatych, charakteryzująca się charakterystycznym srebrzystym ubarwieniem ciała. Jest to ryba o średniej wielkości, osiągająca zazwyczaj długość od 40 do 70 cm, choć niektóre osobniki mogą przekraczać metr. Bolen preferuje szybko płynące rzeki o dobrze natlenionych wodach. Jest drapieżnikiem, polującym głównie na małe ryby, ale także na skorupiaki, owady wodne i larwy. Jego smukłe ciało i silne mięśnie pozwalają mu na dynamiczne i precyzyjne poruszanie się w wodzie, co czyni go wyjątkowo sprawny w łowieniu swojej zdobyczy.', 'Ciało bolenia jest wydłużone i delikatnie bocznie spłaszczone. Głowa jest spiczasta, a oczy niewielkie. Charakterystyczną cechą jest duży, głęboko wcięty otwór gębowy, którego krawędź sięga poza gałkę oczną. Tęczówki oczu mają żółty odcień. Grzbiet ryby ma ciemny kolor, przypominający stalowoszary lub oliwkowozielony. Boki ciała są srebrzyste, lśniące delikatnym odcieniem żółtawym. Brzuch ma srebrzystobiały kolor. Płetwy brzuszne i piersiowe są czerwonoszare.', 'Tarło bolenia odbywa się wczesną wiosną, zazwyczaj od końca marca do maja. Odbywa się w płytkich wodach o szybkim nurcie, którym towarzyszy żwirowe lub kamieniste dno. U samców można zaobserwować wysypkę tarłową na pokrywach skrzelowych oraz na płetwach piersiowych. Ikra bolenia jest składana na kamieniach, gdzie przylega do powierzchni podłoża.', 'Występuje głównie w Europie Środkowej na wschód od Renu oraz na północ od Dunaju, sięgając aż do obszarów Uralu i Morza Kaspijskiego. Spotyka się go również w południowej Skandynawii. Wśród podgatunków bolenia znajduje się Aspius aspius taeniatus, który jest rybą wędrowną i zamieszkuje południowe rejonu Morza Kaspijskiego. Klen występuje w większych i średnich rzekach nizinnych, jak również w zbiornikach zaporowych. Można go spotkać zarówno w wodach płynących, jak i w większych jeziorach i zatokach. Młode osobniki klena tworzą małe stada, zazwyczaj w pobliżu brzegów. W miarę dorastania, stają się bardziej samotnicze, trzymając się głównego nurta rzeki.', 'https://atlasryb.online/zdjecia/mapy/map_53.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fishlocs`
--

CREATE TABLE `fishlocs` (
  `fishID` smallint(6) NOT NULL,
  `locID` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fishlocs`
--

INSERT INTO `fishlocs` (`fishID`, `locID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `loc`
--

CREATE TABLE `loc` (
  `locID` tinyint(4) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `loc`
--

INSERT INTO `loc` (`locID`, `name`) VALUES
(1, 'starorzeczna'),
(2, 'jeziora i stawy'),
(3, 'zbiorniki wodne z bogatą roślinnością'),
(4, 'zbiorniki zaporowe'),
(5, 'wszelkie typy wód płynących o szybkim prądzie');

-- --------------------------------------------------------

--
-- Table structure for table `protecttimes`
--

CREATE TABLE `protecttimes` (
  `fishID` smallint(6) NOT NULL,
  `protectID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `protecttimes`
--

INSERT INTO `protecttimes` (`fishID`, `protectID`) VALUES
(1, NULL),
(2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `protectID` tinyint(4) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bait`
--
ALTER TABLE `bait`
  ADD PRIMARY KEY (`BaitID`);

--
-- Indexes for table `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`fishID`);

--
-- Indexes for table `fishdesc`
--
ALTER TABLE `fishdesc`
  ADD PRIMARY KEY (`fishID`);

--
-- Indexes for table `loc`
--
ALTER TABLE `loc`
  ADD PRIMARY KEY (`locID`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`protectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bait`
--
ALTER TABLE `bait`
  MODIFY `BaitID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fish`
--
ALTER TABLE `fish`
  MODIFY `fishID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fishdesc`
--
ALTER TABLE `fishdesc`
  MODIFY `fishID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loc`
--
ALTER TABLE `loc`
  MODIFY `locID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `protectID` tinyint(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
