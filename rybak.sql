-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lip 06, 2023 at 03:00 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

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
-- Struktura tabeli dla tabeli `bait`
--

CREATE TABLE `bait` (
  `BaitID` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL
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
(6, 'przynęty sztuczne\r\n'),
(7, 'larwy ochotki'),
(8, 'larwy owadów'),
(9, 'sztuczne muchy'),
(10, 'czerwone robaki'),
(11, 'ziarna zbóż'),
(12, 'pasty');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fish`
--

CREATE TABLE `fish` (
  `fishID` smallint(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nameLatin` varchar(50) NOT NULL,
  `nameEng` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
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
(1, 'Amur biały', '(Ctenopharyngodon idella)', 'Grass carp', '../images/amur_bialy.png', 1, 25000, 39.2, NULL, NULL, 0, 146, 170),
(2, 'Boleń', '(Aspius aspius)', 'Asp', '../images/bolen.png', 0.8, 8000, 8.05, 25, 5000, 120, 164, 135),
(3, 'Certa', '(Vimba vimba)', 'Vimba', '../images/certa.png', 0.45, 1000, 1.74, 30, 5, -50, 178, 170),
(4, 'Jaź', '(Leuciscus idus)', 'Ide', '../images/jaz.png', 0.6, 7000, 5.1, NULL, 5000, -200, 145, 135),
(5, 'Jelec', '(Leuciscus leuciscus)', 'Dace', '../images/jelec.png', 0.3, 200, NULL, 15, 5000, -80, 184, 170),
(6, 'Karaś srebrzysty', '(Carassius auratus gibelio)', 'Prussian carp', '../images/karas_srebrzysty.png', 0.4, 2000, 3.4, NULL, NULL, -90, 180, 170),
(7, 'Karp', '(Cyprinus carpio)', 'Carp', '../images/karp.png', 1.2, 30000, 30, 30, 3, -50, 184, 170),
(8, 'Kleń', '(Squalius cephalus)', 'Chub', '../images/klen.png', 0.6, 2500, 3.71, 25, 5000, -160, 145, 130),
(9, 'Krąp', '(Abramis bjoerkna)', 'White bream', '../images/krap.png', 0.3, 650, 2.2, NULL, NULL, -100, 184, 170),
(10, 'Leszcz', '(Abramis brama)', 'Common bream', '../images/leszcz.png', 0.7, 6000, 6.95, NULL, NULL, 0, 184, 170),
(11, 'Płoć', '(Rutilus rutilus)', 'Roach', '../images/ploc.png', 0.4, 1500, 2.2, NULL, NULL, -50, 200, 192),
(12, 'Świnka', '(Chondrostoma nasus)', 'Nase', '../images/swinka.png', 0.5, 1500, 2.24, 25, 5, -100, 170, 150),
(13, 'Tołpyga biała', '(Hypophthalmichthys molitrix)', 'Silver carp', '../images/tolpyga_biala.png', 0.9, 1200, NULL, NULL, NULL, -30, 140, 130),
(14, 'Tołpyga pstra', '(Aristichthys nobilis)', 'Bighead carp', '../images/tolpyga_pstra.png', 1.5, 40000, 54, NULL, NULL, -20, 184, 170),
(15, 'Wzdręga', '(Scardinius erythrophthalmus)', 'Rudd', '../images/wzdrega.png', 0.4, 1200, 1.69, 15, 5000, -50, 200, 192);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fishbaits`
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
(2, 6),
(3, 4),
(3, 7),
(4, 4),
(4, 5),
(4, 6),
(5, 4),
(5, 8),
(5, 9),
(6, 1),
(6, 4),
(7, 2),
(7, 1),
(7, 10),
(7, 3),
(8, 4),
(8, 5),
(8, 6),
(9, 4),
(9, 7),
(9, 11),
(9, 12),
(10, 4),
(10, 7),
(10, 11),
(10, 12),
(11, 4),
(11, 5),
(11, 6),
(12, 4),
(12, 7),
(12, 11),
(13, 2),
(14, 2),
(14, 1),
(14, 3),
(15, 11),
(15, 4),
(15, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fishdesc`
--

CREATE TABLE `fishdesc` (
  `fishID` smallint(6) NOT NULL,
  `desc` varchar(2000) NOT NULL,
  `chara` varchar(2000) NOT NULL,
  `reprod` varchar(2000) NOT NULL,
  `appearImg` varchar(500) NOT NULL,
  `appear` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fishdesc`
--

INSERT INTO `fishdesc` (`fishID`, `desc`, `chara`, `reprod`, `appearImg`, `appear`) VALUES
(1, 'Amur biały to duża ryba słodkowodna z rodziny karpiowatych, charakteryzująca się długim, wydłużonym ciałem i szeroką głową. Dorosłe osobniki mogą osiągać imponującą długość nawet ponad 2 metry. Ich ubarwienie jest srebrzyste lub szare, a boki ciała często mają złociste lub żółte odcienie. Amur biały jest endemitem dorzecza Amuru w Azji Wschodniej, występując w rzekach o wartkim nurcie i kamienistym dnie. Jest cenioną rybą sportową i stanowi ważny gatunek w rybołówstwie.', 'Ciało wydłużone, smukłe, nieznacznie spłaszczone bocznie. Pokryte dużymi łuskami, z widocznym ciemniejszym obrzeżem na tylnej krawędzi. Grzbiet ma intensywnie zielony do czarnozielonego koloru, boki mają odcień oliwkowozielony, a brzuch jest jaśniejszy. Głowa szeroka, z tępo zakończonym pyskiem i dużym otworem gębowym, otoczonym mięsistymi wargami.', 'Amur biały jest obcym gatunkiem w Polsce. Nie rozmnaża się naturalnie w naszych wodach. Wszystkie osobniki pochodzą z zarybień, gdzie są hodowane w specjalnych ośrodkach.', 'https://atlasryb.online/zdjecia/mapy/map_4.jpg', 'Amur biały jest pochodzenia chińskiego i występował pierwotnie w dorzeczu rzeki Amur, choć dokładny zasięg jest trudny do ustalenia. Gatunek ten jest hodowany od X wieku i został szeroko aklimatyzowany w wielu krajach, w tym w Europie od 1950 roku. W Polsce został wprowadzony od 1964 roku, a w kolejnych latach rozprzestrzenił się również w rzekach. Znajduje się na terenach takich jak Ameryka Północna, Australia, Indie, Dania, Rosja, Ameryka Południowa, Afryka Zachodnia i Południowa, oraz Kazachstan. Amur biały żyje w stadach liczących kilka do kilkunastu osobników i zimuje blisko dna.'),
(2, 'Boleń to słodkowodna ryba z rodziny łososiowatych, charakteryzująca się charakterystycznym srebrzystym ubarwieniem ciała. Jest to ryba o średniej wielkości, osiągająca zazwyczaj długość od 40 do 70 cm, choć niektóre osobniki mogą przekraczać metr. Bolen preferuje szybko płynące rzeki o dobrze natlenionych wodach. Jest drapieżnikiem, polującym głównie na małe ryby, ale także na skorupiaki, owady wodne i larwy. Jego smukłe ciało i silne mięśnie pozwalają mu na dynamiczne i precyzyjne poruszanie się w wodzie, co czyni go wyjątkowo sprawny w łowieniu swojej zdobyczy.', 'Ciało bolenia jest wydłużone i delikatnie bocznie spłaszczone. Głowa jest spiczasta, a oczy niewielkie. Charakterystyczną cechą jest duży, głęboko wcięty otwór gębowy, którego krawędź sięga poza gałkę oczną. Tęczówki oczu mają żółty odcień. Grzbiet ryby ma ciemny kolor, przypominający stalowoszary lub oliwkowozielony. Boki ciała są srebrzyste, lśniące delikatnym odcieniem żółtawym. Brzuch ma srebrzystobiały kolor. Płetwy brzuszne i piersiowe są czerwonoszare.', 'Tarło bolenia odbywa się wczesną wiosną, zazwyczaj od końca marca do maja. Odbywa się w płytkich wodach o szybkim nurcie, którym towarzyszy żwirowe lub kamieniste dno. U samców można zaobserwować wysypkę tarłową na pokrywach skrzelowych oraz na płetwach piersiowych. Ikra bolenia jest składana na kamieniach, gdzie przylega do powierzchni podłoża.', 'https://atlasryb.online/zdjecia/mapy/map_53.jpg', 'Występuje głównie w Europie Środkowej na wschód od Renu oraz na północ od Dunaju, sięgając aż do obszarów Uralu i Morza Kaspijskiego. Spotyka się go również w południowej Skandynawii. Wśród podgatunków bolenia znajduje się Aspius aspius taeniatus, który jest rybą wędrowną i zamieszkuje południowe rejonu Morza Kaspijskiego. Klen występuje w większych i średnich rzekach nizinnych, jak również w zbiornikach zaporowych. Można go spotkać zarówno w wodach płynących, jak i w większych jeziorach i zatokach. Młode osobniki klena tworzą małe stada, zazwyczaj w pobliżu brzegów. W miarę dorastania, stają się bardziej samotnicze, trzymając się głównego nurta rzeki.'),
(3, 'Certa, to gatunek ryby z rodziny karpiowatych. Ma wydłużone ciało pokryte dużymi łuskami i srebrzyste ubarwienie z niebieskawym połyskiem. Charakterystyczną cechą certy jest duża, zaokrąglona głowa z szerokim otworem gębowym. Płetwy certy są dobrze rozwinięte, a płetwy grzbietowa i ogonowa mają szare lub niebieskawe zabarwienie. Certy występują w różnych typach wód, takich jak rzeki, jeziora i stawy, gdzie tworzą liczne stada.', 'Ryba o silnie spłaszczone bocznym ciele, wydłużonym kształcie i szaroniebieskim ubarwieniu. Jej brzuch jest biały z srebrzystym połyskiem. Charakterystyczną cechą certy jest duży otwór gębowy z grubymi wargami, umieszczony w dolnej części wystającego pyska. Na grzbiecie, od końca głowy do nasady płetwy grzbietowej, biegnie wąski pas nieosłoniętej łuskami skóry. Płetwy certy są jasnożółte, z wyjątkiem płetwy grzbietowej i ogonowej, które mają jasnoszary kolor.', 'Tarło porcyjne certy trwa od drugiej połowy maja do końca czerwca, w zależności od regionu geograficznego. Proces rozmnażania odbywa się stadnie w płytkich wodach rzek o piaszczystym i żwirowym dnie. W tym okresie samce certy przybierają intensywne ciemne kolory. Na ich głowie, grzbiecie i bokach ciała pojawia się charakterystyczna wysypka tarłowa.', 'https://atlasryb.online/zdjecia/mapy/map_77.jpg', 'Certy występują w zlewiskach Morza Północnego na wschód od Renu, Bałtyckiego, Azowskiego, Czarnego i Kaspijskiego, oraz jeziora Ładoga i Pejpus. Zamieszkują dolne partie rzek i przybrzeżne wody morskie. Podczas tarła podejmują dalekie wędrówki w górę rzek, docierając do krainy lipienia.'),
(4, 'Jaź to ryba słodkowodna z rodziny karpiowatych, występująca w Europie i Azji. Ma wydłużone i spłaszczone ciało pokryte drobnymi łuskami oraz charakterystycznie skośny otwór gębowy umiejscowiony na dolnej stronie ciała. Preferuje ciepłe, płytkie wody, takie jak stawy, zbiorniki wodne i rzeki o wolnym nurcie.', 'Jaź ma smukłe, wydłużone ciało, które jest spłaszczone na boki. Jej skóra jest pokryta delikatnymi, białosrebrnymi łuskami, a grzbiet ma ciemne zabarwienie. Płetwy mają intensywny kolor pomarańczowo-czerwony, a oczy wyraźnie żółto-pomarańczowe. Zwraca uwagę również wklęsła krawędź płetwy odbytowej.', 'Wiosną, między kwietniem a majem, jaź rozpoczyna okres tarła. Ikra jest składana na roślinności wodnej, piasku, kamieniach i zatopionych gałęziach. Samce jaźi w czasie tarła wykształcają charakterystyczną wysypkę tarłową.', 'https://atlasryb.online/zdjecia/mapy/map_123.jpg', 'Europa na wschód od Renu i na północ od Alp, oraz Azja. Występuje w wodach płynących, rzadziej stojących, oraz w słonawych wodach przy ujściach rzek. Żyje stadnie.'),
(5, 'Jelec to słodkowodna ryba z rodziny karpiowatych, wyróżniająca się charakterystycznym, żółtym ubarwieniem ciała. Jest to ryba o średniej wielkości, zazwyczaj osiągająca długość od 15 do 30 cm. Jelec preferuje spokojne i dobrze natlenione wody, takie jak stawy, jeziora i wolno płynące rzeki. Jest drapieżnikiem i odżywia się głównie owadami wodnymi, skorupiakami i larwami. Jelec słynie z aktywności i zwinności w wodzie, co czyni go popularnym celem wędkarskim.', 'Ciało jelca jest wydłużone i wysmukłe, o owalnym przekroju. Mała głowa posiada zaostrzony pysk, a otwór gębowy skierowany jest ku dołowi. Grzbiet jelec ma ciemny, stalowoszary kolor, który dodatkowo jest ozdobiony metalicznym połyskiem. Boki ciała są srebrzyste, natomiast brzuch ma delikatny odcień białożółtawy. Zarówno płetwa grzbietowa, jak i ogonowa, mają ciemnoszary kolor.', 'Tarło jelca odbywa się w stadach na wiosnę, zazwyczaj od kwietnia do maja. Wybierane są wody o szybkim nurcie, często wśród roślinności wodnej. Najczęściej ikra jelec jest składana w miejscach o piaszczystym lub żwirowatym dnie. W stadzie tarłaków, liczebniejszą grupę stanowią samce.', 'https://atlasryb.online/zdjecia/mapy/map_124.jpg', 'Jelec występuje w różnych strumieniach, rzekach i jeziorach Europy, z wyjątkiem Półwyspu Iberyjskiego, Bałkanów, części półwyspu Apenińskiego, Szkocji i północnej Skandynawii. Rzadko można go również spotkać w Bałtyku, głównie w zatokach o niskim poziomie zasolenia. Jelec preferuje życie w stadach.'),
(6, 'Karas srebrzysty to słodkowodna ryba z rodziny karpiowatych. Ma wydłużone, lekko spłaszczone ciało o srebrzystym lub srebrzystozielonym ubarwieniu. Osiąga przeciętnie 10-20 cm długości. Jest stadną rybą, preferującą płytkie i dobrze natlenione wody. Żywi się głównie roślinnością wodną i drobnymi organizmami. Jest ceniony w rybołówstwie rekreacyjnym i hodowli, a także pełni ważną rolę ekologiczną w ekosystemach wodnych.', 'Ciało karasia srebrzystego jest pokryte gładkimi łuskami, które nadają mu srebrzystoszary kolor z delikatnym zielonym połyskiem. Brzuch ryby jest biały. Płetwy grzbietowa i ogonowa występują w różnych odcieniach szarości. Czasem płetwy parzyste i odbytowa mają zaróżowione nasady.', 'Tarło porcyjne (2, 3-krotne) karasia srebrzystego odbywa się w płytkich, ciepłych i zarośniętych przybrzeżnych strefach zbiorników wodnych. Ikra o zielonkawym kolorze jest przyklejana do miękkiej roślinności wodnej.', 'https://www.fishing.pl/var/news/storage/images/media/fotki/mapy_geograficzne/obszar_wystepowania_karas_srebrzysty/108023-2-pol-PL/obszar_wystepowania_karas_srebrzysty.jpg', 'Występuje głównie w stojących i wolno płynących wodach o miękkim, gęsto porośniętym roślinnością podłożu. Naturalnie spotykany we wschodniej Azji od basenu Amuru po Syberię. Obecnie został sztucznie wprowadzony do wielu wód europejskich.'),
(7, 'Karp to słodkowodna ryba z rodziny karpiowatych, charakteryzująca się charakterystycznym ubarwieniem ciała w różnych odcieniach, zwykle od złocistego do brązowego. Jest to ryba o średniej wielkości, zazwyczaj osiągająca długość od 30 do 90 cm, choć niektóre osobniki mogą być znacznie większe. Karp preferuje spokojne i dobrze zarośnięte wody, takie jak stawy, jeziora i rzeki o wolnym nurcie. Jest rybą wszystkożerną, żywiącą się roślinami wodnymi, bezkręgowcami i detrytusem. Karp jest znany ze swojej wytrzymałości i walczącej natury, co sprawia, że jest popularnym celem wędkarskim na całym świecie.', 'Karp wyróżnia się na tle karasia pospolitego i karasia srebrzystego poprzez obecność dwóch długich wąsików o jasnym zabarwieniu oraz dwóch krótszych, ciemniejszych wąsików, które są widoczne w kącikach po obu stronach otworu gębowego.', 'W polskich wodach naturalnych karp nie rozmnaża się naturalnie. Ryby występujące w naszych wodach pochodzą z introdukcji. Rozród odbywa się w specjalnych ośrodkach hodowlanych, w płytkich i zarośniętych stawach, zazwyczaj na przełomie maja i czerwca. Alternatywnie, ikrę od samic oraz nasienie od samców można pozyskać w kontrolowanych warunkach.', 'https://atlasryb.online/zdjecia/mapy/map_144.jpg', 'Zlewiska mórz Czarnego, Kaspijskiego i Aralskiego są naturalnym środowiskiem karpa. Jednak liczne odmiany hodowlane tej ryby są rozpowszechnione zarówno w hodowli, jak i w wodach otwartych niemal na całym świecie. Karp występuje w różnych środowiskach, takich jak głębokie rzeki, starorzecza, odnogi rzek, rozlewiska, jeziora i stawy.'),
(8, 'Kleń to słodkowodna ryba z rodziny karpiowatych, posiadająca charakterystyczne żółte ubarwienie ciała. Jest to ryba średniej wielkości, osiągająca zazwyczaj długość od 15 do 30 cm. Kleń preferuje spokojne i dobrze natlenione wody, takie jak stawy, jeziora i wolno płynące rzeki. Jest drapieżnikiem, polującym na owady wodne, skorupiaki i larwy.', 'Ciało jest wydłużone i walcowate, pokryte dużymi, ciemnymi łuskami. Płetwa grzbietowa i ogonowa mają odcień od ciemnozielonego do szarozielonego. Pozostałe płetwy mają kolor czerwonopomarańczowy lub czerwony. Krawędź płetwy odbytowej jest wypukła.', 'Kleń przystępuje do tarła na przełomie maja i czerwca. Tarło odbywa się w dobrze nasłonecznionych wodach o piaszczystym i żwirowym dnie. Ryba rozpoczyna tarło w południe. Kleista ikra jest składana i przykleja się do podłoża.', 'https://atlasryb.online/zdjecia/mapy/map_157.jpg', 'Występuje w Europie, z wyjątkiem wysp Morza Śródziemnego, Portugalii, Irlandii, Islandii, północnej Szkocji oraz dorzecza Wołgi, Uralu, Tygrysu i Eufratu. W zasadzie jest rybą słodkowodną, jednak można go spotkać także w jeziorach, zbiornikach zaporowych i zatokach morskich. Kleń nie podejmuje większych wędrówek.'),
(9, 'Krąp to słodkowodna ryba z rodziny karpiowatych, charakteryzująca się krągłym, wyżłobionym ciałem. Jest to ryba o umiarkowanej wielkości, osiągająca zwykle długość od 15 do 30 cm. Krąp występuje głównie w spokojnych wodach, takich jak stawy, jeziora i wolno płynące rzeki. Jest roślinożerna i odżywia się głównie roślinami wodnymi, glonami i detrytusem. Krąp jest popularnym gatunkiem wędkarskim ze względu na swoje walory kulinarne i atrakcyjną walkę na wędkę.', 'Ciało krąpa jest srebrzyste i mocno spłaszczone bocznie, z łukowatym, ciemniejszym grzbietem. Płetwy grzbietowa, ogonowa i odbytowa mają stalowe lub czarne zabarwienie. Płetwy parzyste, takie jak piersiowe i brzuszne, są różowoszare, a u nasady czerwone. Nasada płetwy grzbietowej znajduje się pomiędzy płetwami brzusznymi a odbytową. Wszystkie płetwy mają ostre zakończenie. Ponad źrenicą oka można zauważyć zielonkawą plamkę, a tęczówka oka jest srebrzysta.', 'Krąp, podobnie jak inne gatunki ryb, przystępuje do tarła porcyjnego. Pierwszy raz odbywa się to na przełomie maja i czerwca. Krąp składa ikrę na podłożu roślinnym, często na zalanych łąkach. Jaja są przyklejane do roślin, gdzie się rozwijają.', 'https://atlasryb.online/zdjecia/mapy/map_181.jpg', 'Krąp występuje w Europie, na obszarze na północ od Pirenejów. Jej zasięg sięga południowo-wschodniej Anglii i południowej Skandynawii. Można ją spotkać w dolnych biegach rzek, stawach, jeziorach, zbiornikach zaporowych, starorzeczach i rozlewiskach.'),
(10, 'Leszcz to słodkowodna ryba z rodziny karpiowatych, charakteryzująca się srebrzystym ubarwieniem ciała. Jest to ryba o umiarkowanej wielkości, osiągająca zazwyczaj długość od 20 do 40 cm. Leszcz preferuje spokojne i dobrze natlenione wody, takie jak stawy, jeziora oraz średnie i duże rzeki. Jest rybą stadną i żywi się głównie roślinnością wodną, skorupiakami i larwami owadów.', 'Ciało leszcza jest mocno bocznie spłaszczone, pokryte srebrzystymi łuskami, a grzbiet ma ciemniejszy odcień. Starsze osobniki mogą mieć złocisty lub brunatny kolor. Nasada płetwy grzbietowej znajduje się na linii płetw brzusznych, a płetwy piersiowe mają niebieskoszary kolor.', 'Leszcze odbywają tarło w dużych stadach, zazwyczaj w drugiej połowie maja, głównie w godzinach porannych. Samice składają ikrę na roślinach wodnych, w płytkiej wodzie. U samców można zaobserwować wyraźną wysypkę tarłową.', 'https://atlasryb.online/zdjecia/mapy/map_190.jpg', 'Występuje w większości Europy i zachodniej Azji. Brak go na Półwyspie Iberyjskim, w zachodniej Francji, południowej części Półwyspu Bałkańskiego, północnej Szkocji i północnej Skandynawii. Jest również obecny w Syberii poza swoim naturalnym zasięgiem. W Polsce jest powszechny w dużych jeziorach, rzekach nizinnych i w przybrzeżnej strefie Bałtyku. W Europie można wyróżnić dwa podgatunki leszcza: Abramis brama orientalis z rejonu Morza Kaspijskiego i Aralskiego oraz Abramis brama danubu z dorzecza Dunaju. Leszcze tworzą stadne społeczności w dolnych odcinkach dużych rzek, jeziorach i zbiornikach zaporowych, preferując głębokie wody z bujną roślinnością. W niektórych zbiornikach populacje leszcza są bardzo liczne, co może prowadzić do karłowacenia ryb.'),
(11, 'Płoć posiada wydłużone, lekko spłaszczone ciało pokryte drobnymi łuskami. Jej ubarwienie jest zazwyczaj srebrzyste, a na bokach można dostrzec delikatne odcienie. Jest to ryba o średniej wielkości, osiągająca przeciętnie od 15 do 30 cm długości. Płoć preferuje ciepłe, płytkie wody, takie jak stawy, zbiorniki wodne i rzeki o wolnym nurcie. Jest aktywna i towarzysko usposobiona, często tworząca liczne grupy.', 'Ciało płoci jest całkowicie pokryte łuskami. Grzbiet ciała jest ciemny, boki mają srebrzysty odcień, a brzuch jest biały. Płetwy grzbietowa i ogonowa są ciemnoszare z delikatnymi czerwonymi przebarwieniami. Płetwy piersiowe są czerwonopomarańczowe. Nasada płetwy grzbietowej znajduje się bezpośrednio nad nasadą płetw brzusznych. Tęczówka oczu jest czerwona.', 'Płoć rozpoczyna tarło w okresie od kwietnia do maja. Tarło odbywa się w przybrzeżnych strefach zbiorników wodnych lub na płytkich rozlewiskach. Ikra jest przyklejana do podłoża. W czasie tarła u samców na głowie i górnych partiach ciała występuje charakterystyczna wysypka tarłowa, manifestująca się jako białawe, szorstkie grudki.', 'https://atlasryb.online/zdjecia/mapy/map_254.jpg', 'Występuje w całej Europie, z wyjątkiem obszarów takich jak Półwysep Iberyjski, zlewisko Adriatyku, Grecja oraz północna Skandynawia. Wieloma miejscami występowania są również obszary wschodniej Europy, gdzie jej siedlisko sięga daleko w głąb Azji. W Polsce płoć można spotkać we wszystkich wodach słodkich, w tym rzekach, jeziorach i stawach, z wyjątkiem obszarów górskich. Ponadto, można ją znaleźć także w wodach przybrzeżnych Bałtyku.'),
(12, 'Ryba świnka to gatunek ryby słodkowodnej o zaokrąglonym ciele i charakterystycznym pyszczku przypominającym ryjkę. Jej ubarwienie może być różnorodne, często występują żółte, pomarańczowe lub czerwone plamki na srebrzystym tle. Żyje głównie w spokojnych wodach, takich jak jeziora, stawy i rzeki o wolnym nurcie', 'Ciało ryby świnki jest wydłużone, pokryte dużymi i wyraźnymi łuskami o srebrzystoszarym odcieniu, z ciemnym, stalowozielonym grzbietem. Brzuch ryby jest biały. Otwór gębowy znajduje się w dolnej części wystającego pyska, a ryba posiada również wyraźne, duże otwory nosowe. Płetwy grzbietowa i ogonowa mają kolor brunatny lub ciemnoszary, natomiast płetwy brzuszne, piersiowe i odbytowa są w odcieniu pomarańczowym do czerwonego.', 'Świnki przystępują do tarła w drugiej połowie kwietnia, w płytkich miejscach z kamienisto-żwirowym dnem i szybkim przepływem wody. Podczas tarła często można zaobserwować, jak ryby wyskakują ponad powierzchnię wody. Samce charakteryzują się występowaniem wysypki tarłowej.', 'https://atlasryb.online/zdjecia/mapy/map_379.jpg', 'Świnka jest rozpowszechniona w Europie środkowej oraz północno-zachodniej Azji. Preferuje bystre, podgórskie rzeki, szczególnie w obszarze występowania lipienia i brzany. Żyje w dużych grupach w płytkich miejscach (do 2 metrów) o szybkim nurcie i podłożu z kamieni, piasku lub lekko zaburzonego mułu.'),
(13, 'Tołpyga biała to słodkowodna ryba z rodziny karpiowatych. Ma wydłużone ciało, pokryte srebrzystymi łuskami. Grzbiet jest ciemniejszy niż brzuch. Płetwy są przezroczyste lub lekko zabarwione. Tołpyga biała występuje w wielu europejskich rzekach i jeziorach. Preferuje spokojne wody o dobrze natlenionym dnie. Jest rybą stadną, żyjącą w grupach. Odżywia się przede wszystkim larwami owadów wodnych, skorupiakami i innymi drobnymi organizmami. Tołpyga biała jest popularnym gatunkiem wędkarskim, cenionym ze względu na smaczne mięso i sportowe wartości.', 'Tołpyga biała ma wydłużone i bardzo mocno spłaszczone ciało. Jej głowa jest duża, a otwór gębowy znajduje się u góry. Oczy są stosunkowo małe i umieszczone poniżej linii symetrii ciała. Grzbiet tołpygi jest zielonoszary, brzuch srebrzysty, a boki przybierają srebrzystoszary kolor, który ciemnieje wraz z wiekiem. Płetwy parzyste mają żółtawy odcień, a płetwy piersiowe nie sięgają do nasady płetw brzusznych.', 'Tołpyga biała, będąc gatunkiem obcym, nie rozmnaża się w polskich wodach. Wszystkie osobniki tego gatunku pochodzą z zarybień, gdzie są wyhodowane w specjalnych ośrodkach zarybieniowych.', 'https://www.researchgate.net/publication/254845317/figure/fig3/AS:297944117989379@1448046821497/Natural-range-of-the-silver-carp-Hypophthalmichthys-molitrixTaken-from-Kolar-et-al.png', 'Tołpyga biała wywodzi się z Chin i wschodniej Syberii, występuję od dorzecza rzeki Amur na północy po dorzecze rzeki Xi Jiang na południu. Została również introdukowana w różnych częściach świata, w tym w Europie, w celach hodowlanych i sportowych.'),
(14, 'Tołpyga pstra lub tołpyga amurska, to gatunek ryby słodkowodnej z rodziny karpiowatych. Jej ciało jest mocno wydłużone, bocznie spłaszczone i pokryte dużymi łuskami. Charakteryzuje się kontrastowym ubarwieniem, które obejmuje srebrzystą bazę z ciemnymi plamkami. Dorosłe osobniki mogą osiągać imponujące rozmiary, sięgając nawet 1 metra długości. Tołpyga pstroa jest rodzimym gatunkiem w Chinach i wschodniej Syberii, występując w zlewisku rzeki Amur na północy oraz w zlewisku rzeki Xi Jiang na południu. Jest rybą stadną i preferuje płytkie i dobrze natlenione wody, takie jak jeziora, rzeki i zbiorniki zaporowe. Jest roślinożerna, żywiąc się głównie roślinami wodnymi.', 'Ciało tołpygi pstrej jest silnie spłaszczone bocznie, podobnie jak u tołpygi białej, ale wyróżnia się większą głową i oczy umiejscowionymi niżej. Jej ubarwienie jest złotawoszare z marmurkowym wzorem. Płetwy piersiowe sięgają do nasady płetw brzusznych.', 'W polskich warunkach tołpyga pstra nie występuje naturalnie. Jest to gatunek obcy, który nie rozmnaża się w naszych wodach. Wszystkie osobniki tołpygi pstrej pochodzą z zarybień materiałem wyhodowanym w ośrodkach zarybieniowych.', 'https://www.researchgate.net/publication/254845317/figure/fig3/AS:297944117989379@1448046821497/Natural-range-of-the-silver-carp-Hypophthalmichthys-molitrixTaken-from-Kolar-et-al.png', 'Tołpyga biała wywodzi się z Chin i wschodniej Syberii, występuję od dorzecza rzeki Amur na północy po dorzecze rzeki Xi Jiang na południu. Została również introdukowana w różnych częściach świata, w tym w Europie, w celach hodowlanych i sportowych.'),
(15, 'Wzdręga to ryba słodkowodna o wydłużonym, lekko spłaszczonym ciele i drobnych łuskach. Jej ubarwienie jest zazwyczaj srebrzyste lub oliwkowe, z czarnymi plamkami na bokach. Preferuje różnorodne środowiska wodne, takie jak rzeki, jeziora i stawy. Jest drapieżnikiem, polującym na inne ryby, skorupiaki i owady wodne. Wzdręga jest aktywna i samotnicza. Jest popularna w wędkarstwie i ma wartość ekologiczną dla zachowania równowagi w środowisku wodnym.', 'Ciało wzdręgi jest lekko spłaszczone na boki i całkowicie pokryte drobnymi łuskami. Grzbiet ma ciemne ubarwienie, boki prezentują srebrzysto-złotawe odcienie, a brzuch jest biały. Płetwy wyróżniają się intensywnym, pięknym czerwonym zabarwieniem. Nasada płetwy grzbietowej jest wyraźnie przesunięta ku tyłowi, wykraczając poza nasadę płetw brzusznych. Tęczówka oczu wzdręgi jest pomarańczowa, dodając jej uroku.', 'Tarło wzdręgi rozpoczyna się w drugiej połowie maja i trwa przez około 2 tygodnie. Ikra, która jest lepka, składana jest na roślinności wodnej. Podczas tarła samce wzdręgi wykazują wysypkę tarłową na głowie i górnej części ciała, choć jest ona mniej intensywna niż u płoci.', 'https://atlasryb.online/zdjecia/mapy/map_431.jpg', 'Występuje w wodach większości obszarów Europy, z wyjątkiem Półwyspu Iberyjskiego, Szkocji, północnej Skandynawii i Krymu. Preferuje nizinne rzeki o wolnym nurcie lub jeziora, które są silnie zarośnięte i mają muliste dno. Jest rybą stadną, często tworzącą małe grupy i przebywającą bliżej powierzchni w ciepłych i spokojnych zatoczkach. Wzdręga nadaje się również do hodowli w małych prywatnych stawkach.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fishlocs`
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
(2, 2),
(3, 6),
(3, 7),
(4, 8),
(4, 4),
(4, 9),
(5, 10),
(5, 11),
(5, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(7, 17),
(7, 12),
(7, 18),
(7, 19),
(8, 5),
(8, 1),
(8, 2),
(9, 20),
(9, 21),
(9, 4),
(10, 12),
(10, 17),
(10, 22),
(11, 24),
(11, 4),
(12, 25),
(13, 2),
(13, 1),
(13, 4),
(14, 2),
(14, 1),
(14, 4),
(15, 2),
(15, 4),
(15, 26),
(15, 27);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `loc`
--

CREATE TABLE `loc` (
  `locID` tinyint(4) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `loc`
--

INSERT INTO `loc` (`locID`, `name`) VALUES
(1, 'starorzeczna'),
(2, 'jeziora i stawy'),
(3, 'zbiorniki wodne z bogatą roślinnością'),
(4, 'zbiorniki zaporowe'),
(5, 'wszelkie typy wód płynących o szybkim prądzie'),
(6, 'ryba wędrowna, dwuśrodowiskowa, zamieszkuje przybrzeżne partie morza i wędruje w górne partie rzek na tarło'),
(7, 'populacje osiadłe żyją w rzekach o dość bystrym nurcie, z piaszczysto-kamienistym dnem'),
(8, 'rzeki'),
(9, 'duże jeziora'),
(10, 'górne i środkowe odcinki rzek o piaszczystym dnie'),
(11, 'strumienie'),
(12, 'jeziora'),
(13, 'wszystkie typy zbiorników wody słodkiej'),
(14, 'płytkie stawy'),
(15, 'przybrzeżne strefy większych jezior'),
(16, 'zbiorniki zarastające i wysychające'),
(17, 'rzeki nizinne'),
(18, 'stawy'),
(19, 'płytike, ciepłe wody'),
(20, 'przybrzeżne strefy wód stojących'),
(21, 'brzegi i rozlewiska rzek'),
(22, 'zbiorniki wodne o dnie pokrytym warstwą mułu'),
(23, 'zarośnięte strefy przybrzeżne jezior i stawów'),
(24, 'rzeki z wolno płynącą wodą, z wyjątkiem rzek i strumieni wysokogórskich'),
(25, 'górne odcinki rzek o szybkim nurcie i kamienistym podłożu'),
(26, 'rzeki z wolno płynącą lub stojącą wodą'),
(27, 'zarośnięte strefy przybrzeżne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `protecttimes`
--

CREATE TABLE `protecttimes` (
  `fishID` smallint(6) NOT NULL,
  `protectID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `protecttimes`
--

INSERT INTO `protecttimes` (`fishID`, `protectID`) VALUES
(3, 1),
(3, 2),
(12, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ptime`
--

CREATE TABLE `ptime` (
  `protectID` tinyint(4) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ptime`
--

INSERT INTO `ptime` (`protectID`, `name`) VALUES
(1, 'W rzece Wiśle od zapory we Włocławku do jej ujścia od 1 września do 30 listopada,'),
(2, 'W rzece Wiśle powyżej zapory we Włocławku i w pozostałych rzekach od 1 stycznia do 30 czerwca'),
(3, 'od 1 sty.\r\ndo 15 maj.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bait`
--
ALTER TABLE `bait`
  ADD PRIMARY KEY (`BaitID`);

--
-- Indeksy dla tabeli `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`fishID`);

--
-- Indeksy dla tabeli `fishdesc`
--
ALTER TABLE `fishdesc`
  ADD PRIMARY KEY (`fishID`);

--
-- Indeksy dla tabeli `loc`
--
ALTER TABLE `loc`
  ADD PRIMARY KEY (`locID`);

--
-- Indeksy dla tabeli `ptime`
--
ALTER TABLE `ptime`
  ADD PRIMARY KEY (`protectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bait`
--
ALTER TABLE `bait`
  MODIFY `BaitID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fish`
--
ALTER TABLE `fish`
  MODIFY `fishID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fishdesc`
--
ALTER TABLE `fishdesc`
  MODIFY `fishID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `loc`
--
ALTER TABLE `loc`
  MODIFY `locID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ptime`
--
ALTER TABLE `ptime`
  MODIFY `protectID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
