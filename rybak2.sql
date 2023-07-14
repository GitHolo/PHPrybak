-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 02:02 PM
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
-- Table structure for table `bait_en`
--

CREATE TABLE `bait_en` (
  `BaitID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `bait_en`
--

INSERT INTO `bait_en` (`BaitID`, `name`) VALUES
(1, 'corn'),
(2, 'protein balls'),
(3, 'potatoes'),
(4, 'red and white worms'),
(5, 'beetles and grasshoppers'),
(6, 'artificial lures'),
(7, 'waxworm larvae'),
(8, 'insect larvae'),
(9, 'artificial flies'),
(10, 'red worms'),
(11, 'grain seeds'),
(12, 'pastes');

-- --------------------------------------------------------

--
-- Table structure for table `bait_es`
--

CREATE TABLE `bait_es` (
  `BaitID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `bait_es`
--

INSERT INTO `bait_es` (`BaitID`, `name`) VALUES
(1, 'maíz'),
(2, 'bolas de proteína'),
(3, 'patatas'),
(4, 'gusanos rojos y blancos'),
(5, 'escarabajos y langostas'),
(6, 'señuelos artificiales'),
(7, 'larvas de gusano de cera'),
(8, 'larvas de insectos'),
(9, 'moscas artificiales'),
(10, 'gusanos rojos'),
(11, 'granos de cereales'),
(12, 'pastas');

-- --------------------------------------------------------

--
-- Table structure for table `bait_fr`
--

CREATE TABLE `bait_fr` (
  `BaitID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `bait_fr`
--

INSERT INTO `bait_fr` (`BaitID`, `name`) VALUES
(1, 'maïs'),
(2, 'boules protéinées'),
(3, 'pommes de terre'),
(4, 'vers rouges et blancs'),
(5, 'coléoptères et sauterelles'),
(6, 'leurres artificiels'),
(7, 'larves de teigne de cire'),
(8, 'larves d''insectes'),
(9, 'mouches artificielles'),
(10, 'vers rouges'),
(11, 'graines de céréales'),
(12, 'pâtes');

-- --------------------------------------------------------

--
-- Table structure for table `bait_pl`
--

CREATE TABLE `bait_pl` (
  `BaitID` tinyint(4) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `bait_pl`
--

INSERT INTO `bait_pl` (`BaitID`, `name`) VALUES
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
-- Table structure for table `fish`
--

CREATE TABLE `fish` (
  `fishID` smallint(6) NOT NULL,
  `nameLatin` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `nameEng` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `maxLength` float NOT NULL,
  `maxWeight` float NOT NULL,
  `recordWeight` float DEFAULT NULL,
  `protect` smallint(6) DEFAULT NULL,
  `protectPoss` mediumint(9) DEFAULT NULL,
  `appearImg` varchar(500) COLLATE utf8mb4_polish_ci NOT NULL,
  `additionalPixels` smallint(6) NOT NULL DEFAULT 0,
  `width` smallint(6) NOT NULL,
  `margin` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fish`
--

INSERT INTO `fish` (`fishID`, `nameLatin`, `nameEng`, `img`, `maxLength`, `maxWeight`, `recordWeight`, `protect`, `protectPoss`, `appearImg`, `additionalPixels`, `width`, `margin`) VALUES
(1, '(Ctenopharyngodon idella)', 'Grass carp', '/images/amur_bialy.png', 1, 25000, 39.2, NULL, NULL, 'https://atlasryb.online/zdjecia/mapy/map_4.jpg', 0, 146, 130),
(2, '(Aspius aspius)', 'Asp', '/images/bolen.png', 0.8, 8000, 8.05, 25, 5000, 'https://atlasryb.online/zdjecia/mapy/map_53.jpg', 120, 164, 135),
(3, '(Vimba vimba)', 'Vimba', '/images/certa.png', 0.45, 1000, 1.74, 30, 5, 'https://atlasryb.online/zdjecia/mapy/map_77.jpg', -50, 178, 170),
(4, '(Leuciscus idus)', 'Ide', '/images/jaz.png', 0.6, 7000, 5.1, NULL, 5000, 'https://atlasryb.online/zdjecia/mapy/map_123.jpg', -200, 145, 135),
(5, '(Leuciscus leuciscus)', 'Dace', '/images/jelec.png', 0.3, 200, NULL, 15, 5000, 'https://atlasryb.online/zdjecia/mapy/map_124.jpg', -80, 184, 170),
(6, '(Carassius auratus gibelio)', 'Prussian carp', '/images/karas_srebrzysty.png', 0.4, 2000, 3.4, NULL, NULL, 'https://www.fishing.pl/var/news/storage/images/media/fotki/mapy_geograficzne/obszar_wystepowania_karas_srebrzysty/108023-2-pol-PL/obszar_wystepowania_karas_srebrzysty.jpg', -90, 180, 170),
(7, '(Cyprinus carpio)', 'Carp', '/images/karp.png', 1.2, 30000, 30, 30, 3, 'https://atlasryb.online/zdjecia/mapy/map_144.jpg', -50, 184, 170),
(8, '(Squalius cephalus)', 'Chub', '/images/klen.png', 0.6, 2500, 3.71, 25, 5000, 'https://atlasryb.online/zdjecia/mapy/map_157.jpg', -160, 145, 130),
(9, '(Abramis bjoerkna)', 'White bream', '/images/krap.png', 0.3, 650, 2.2, NULL, NULL, 'https://atlasryb.online/zdjecia/mapy/map_181.jpg', -100, 184, 170),
(10, '(Abramis brama)', 'Common bream', '/images/leszcz.png', 0.7, 6000, 6.95, NULL, NULL, 'https://atlasryb.online/zdjecia/mapy/map_190.jpg', 0, 184, 170),
(11, '(Rutilus rutilus)', 'Roach', '/images/ploc.png', 0.4, 1500, 2.2, NULL, NULL, 'https://atlasryb.online/zdjecia/mapy/map_254.jpg', -50, 200, 192),
(12, '(Chondrostoma nasus)', 'Nase', '/images/swinka.png', 0.5, 1500, 2.24, 25, 5, 'https://atlasryb.online/zdjecia/mapy/map_379.jpg', -100, 170, 150),
(13, '(Hypophthalmichthys molitrix)', 'Silver carp', '/images/tolpyga_biala.png', 0.9, 1200, NULL, NULL, NULL, 'https://www.researchgate.net/publication/254845317/figure/fig3/AS:297944117989379@1448046821497/Natural-range-of-the-silver-carp-Hypophthalmichthys-molitrixTaken-from-Kolar-et-al.png', -30, 140, 130),
(14, '(Aristichthys nobilis)', 'Bighead carp', '/images/tolpyga_pstra.png', 1.5, 40000, 54, NULL, NULL, 'https://www.researchgate.net/publication/254845317/figure/fig3/AS:297944117989379@1448046821497/Natural-range-of-the-silver-carp-Hypophthalmichthys-molitrixTaken-from-Kolar-et-al.png', -20, 184, 170),
(15, '(Scardinius erythrophthalmus)', 'Rudd', '/images/wzdrega.png', 0.4, 1200, 1.69, 15, 5000, 'https://atlasryb.online/zdjecia/mapy/map_431.jpg', -50, 200, 192);

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
-- Table structure for table `fishdesc_en`
--

CREATE TABLE `fishdesc_en` (
  `fishID` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `desc` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `chara` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `reprod` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `appear` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fishdesc_en`
--

INSERT INTO `fishdesc_en` (`fishID`, `name`, `desc`, `chara`, `reprod`, `appear`) VALUES
(1, 'Grass carp', 'White amur is a large freshwater fish of the carp family, characterised by its long, elongated body and broad head. Adult specimens can reach an impressive length of over 2 metres. Their colouration is silvery or grey, and the sides of the body often have golden or yellow tones. The Grass carp is endemic to the Amur basin in East Asia, occurring in rivers with swift currents and rocky bottoms. It is a prized sport fish and is an important species in fisheries.', 'Body elongated, slender, slightly laterally flattened. Covered with large scales, with a prominent darker edge on the back edge. The back is an intense green to blackish green, the sides are olive green and the belly is paler. The head is broad, with a bluntly pointed snout and a large mouth surrounded by fleshy lips.', 'The Grass carp is an alien species in Poland. It does not breed naturally in our waters. All specimens come from stocking, where they are bred in special centres.', 'The Grass carp is of Chinese origin and originally occurred in the Amur River basin, although the exact range is difficult to determine. The species has been farmed since the 10th century and has been widely acclimatised in many countries, including Europe since 1950. It was introduced in Poland from 1964 and has also spread to rivers in subsequent years. It is found in areas such as North America, Australia, India, Denmark, Russia, South America, West and South Africa, and Kazakhstan. Grass carp live in flocks of a few to a dozen individuals and overwinter close to the bottom.'),
(2, 'Asp', 'Asp is a freshwater fish of the salmonid family, characterised by its distinctive silvery body colouration. It is a medium-sized fish, typically reaching a length of 40 to 70 cm, although some individuals may exceed a metre. Bolen prefer fast-flowing rivers with well-oxygenated waters. It is a predator, hunting mainly small fish, but also crustaceans, aquatic insects and larvae. Its slender body and strong muscles allow it to move dynamically and accurately through the water, making it extremely adept at catching its prey.', 'The body of the asp is elongated and gently laterally flattened. The head is pointed and the eyes are small. A distinctive feature is the large, deeply indented mouth, the edge of which extends beyond the eyeball. The irises of the eyes have a yellow tint. The back of the fish is dark in colour, resembling steel-grey or olive-green. The sides of the body are silvery, shining with a slight yellowish tinge. The belly is silvery white in colour. The ventral and pectoral fins are reddish grey.', 'Asp spawning takes place in early spring, usually from late March to May. It takes place in shallow waters with a fast current, accompanied by a gravel or rocky bottom. In males, spawning rash can be observed on the gill covers and pectoral fins. Asp eggs are deposited on stones where they adhere to the surface of the substrate.', 'It is found mainly in Central Europe east of the Rhine and north of the Danube, reaching as far as the Urals and Caspian Sea areas. It is also encountered in southern Scandinavia. Among the subspecies of asp is Aspius aspius taeniatus, which is a migratory fish and inhabits the southern Caspian Sea region. The chub is found in larger and medium-sized lowland rivers, as well as in dammed reservoirs. It can be found both in flowing waters and in larger lakes and bays. Young specimens of chub form small flocks, usually near the banks. As they grow up, they become more solitary, sticking to the main current of the river.'),
(3, 'Vimba', 'Vimba, is a species of fish in the carp family. It has an elongated body covered with large scales and a silvery colouration with a bluish sheen. A characteristic feature of the Vimba is the large, rounded head with a wide mouth opening. Vimba''s fins are well developed and the dorsal and caudal fins are grey or bluish in colour. Vimba are found in a variety of water types such as rivers, lakes and ponds, where they form numerous flocks.', 'A fish with a strongly flattened lateral body, elongated shape and grey-blue colouration. Its belly is white with a silvery sheen. A distinctive feature of the Vimba is the large mouth with thick lips, located at the bottom of the protruding snout. On the back, from the end of the head to the base of the dorsal fin, there runs a narrow strip of unscaled skin. Vimba''s fins are bright yellow, with the exception of the dorsal and caudal fins, which are light grey in colour.', 'Vimba spawning takes place from the second half of May to the end of June, depending on the geographical region. The spawning process takes place in flocks in the shallow waters of rivers with sandy and gravelly bottoms. During this period, male Vimba take on intense dark colours. A characteristic spawning rash appears on their head, back and sides of the body.', 'Vimba are found in the catchments of the North Sea east of the Rhine, Baltic, Azov, Black and Caspian Seas, and Lake Ladoga and Lake Pejpus. They inhabit the lower reaches of rivers and coastal marine waters. During spawning, they undertake long-distance migrations up rivers, reaching the land of the grayling.'),
(4, 'Ide', 'The ide is a freshwater fish of the carp family, found in Europe and Asia. It has an elongated and flattened body covered with fine scales and a characteristically angled mouth located on the lower side of the body. It prefers warm, shallow waters such as ponds, reservoirs and rivers with slow currents.', 'Ide has a slender, elongated body that is flattened to the sides. Its skin is covered with fine, white-silver scales and its back is darkly coloured. The fins are an intense orange-red colour and the eyes are a distinct yellow-orange. The concave edge of the anal fin is also notable.', 'In spring, between April and May, the Ide begins its spawning season. The eggs are laid on aquatic vegetation, sand, stones and submerged branches. Male spawners develop a characteristic spawning rash during spawning.', 'Europe east of the Rhine and north of the Alps, and Asia. It is found in flowing waters, less often standing waters, and in brackish waters near estuaries. It lives in flocks.'),
(5, 'Dace', 'Dace is a freshwater fish of the carp family, distinguished by its distinctive yellow body colouration. It is a medium-sized fish, usually reaching a length of 15 to 30 cm. Dace prefer calm and well-oxygenated waters such as ponds, lakes and slow-moving rivers. It is a predator and feeds mainly on aquatic insects, crustaceans and larvae. The dace is renowned for its activity and agility in the water, making it a popular fishing target.', 'The body of the dace is elongated and slender, with an oval cross-section. The small head has a pointed snout and the mouth opening points downwards. The dace''s back is a dark, steel-grey colour, which is further decorated with a metallic sheen. The sides of the body are silvery, while the belly has a slight whitish-yellowish tinge. Both the dorsal and caudal fins are dark grey in colour.', 'Dace spawn in flocks in spring, usually from April to May. Swiftly flowing waters are chosen, often among aquatic vegetation. Dace eggs are most often laid in areas with sandy or gravelly bottoms. In the spawning stock, males are the more numerous group.', 'Dace is found in various streams, rivers and lakes in Europe, except in the Iberian Peninsula, the Balkans, parts of the Apennine Peninsula, Scotland and northern Scandinavia. It is also rarely found in the Baltic Sea, mainly in bays with low salinity levels. Dace prefers to live in flocks.'),
(6, 'Prussian carp', 'Silver carp is a freshwater fish of the carp family. It has an elongated, slightly flattened body with silvery or silvery-green colouration. It reaches an average length of 10-20 cm. It is a stocky fish, preferring shallow and well-oxygenated waters. It feeds mainly on aquatic vegetation and small organisms. It is valued for recreational fishing and breeding, and plays an important ecological role in aquatic ecosystems.', 'The body of the Prussian carp is covered with smooth scales that give it a silvery-grey colour with a slight green sheen. The belly of the fish is white. The dorsal and caudal fins appear in various shades of grey. Sometimes the paired and anal fins have pinkish epiphyses.', 'Pore spawning (2, 3 times) of Prussian carp takes place in shallow, warm and overgrown coastal areas of water bodies. The greenish-coloured eggs are stuck to soft aquatic vegetation.', 'Found mainly in standing and slow-moving waters with soft, densely vegetated substrate. Naturally found in eastern Asia from the Amur Basin to Siberia. It has now been artificially introduced into many European waters.'),
(7, 'Carp', 'The carp is a freshwater fish of the cyprinid family, characterised by a distinctive body colouration of various shades, usually golden to brown. It is a medium-sized fish, usually reaching a length of between 30 and 90 cm, although some individuals can be much larger. The carp prefers calm and well vegetated waters such as ponds, lakes and rivers with slow currents. It is an omnivorous fish, feeding on aquatic plants, invertebrates and detritus. The carp is known for its toughness and fighting nature, making it a popular fishing target worldwide.', 'The carp is distinguished from the common carp and the Prussian carp by the presence of two long, light-coloured whiskers and two shorter, darker whiskers that are visible at the corners on either side of the mouth opening.', 'In Polish natural waters, the carp does not reproduce naturally. The fish found in our waters come from introductions. Breeding takes place in special breeding centres, in shallow and overgrown ponds, usually in late May and early June. Alternatively, eggs from females and semen from males can be obtained under controlled conditions.', 'The basins of the Black, Caspian and Aral seas are the natural habitat of the carp. However, numerous breeding varieties of this fish are widespread both in breeding and in open water almost all over the world. Carp are found in a variety of habitats such as deep rivers, oxbow lakes, river branches, floodplains, lakes and ponds.'),
(8, 'Chub', 'The chub is a freshwater fish of the cyprinid family, having a characteristic yellow body colouration. It is a medium-sized fish, usually reaching a length of 15 to 30 cm. Chub prefers calm and well-oxygenated waters such as ponds, lakes and slow-moving rivers. It is a predator, preying on aquatic insects, crustaceans and larvae.', 'The body is elongated and cylindrical, covered with large, dark scales. The dorsal and caudal fins range from dark green to grey-green. The other fins are reddish orange or red in colour. The edge of the anal fin is convex.', 'The chub spawns in late May and early June. Spawning takes place in well-sunlit waters with sandy and gravelly bottoms. The fish start spawning at midday. Sticky eggs are laid and stick to the substrate.', 'It is found in Europe, except in the Mediterranean islands, Portugal, Ireland, Iceland, northern Scotland and the Volga, Urals, Tigris and Euphrates basins. It is basically a freshwater fish, but can also be found in lakes, dammed reservoirs and sea bays. The chub does not undertake major migrations.'),
(9, 'White bream','White bream is a freshwater fish of the cyprinid family, characterised by a rounded, grooved body. It is a moderately sized fish, usually reaching a length of 15 to 30 cm. White bream are mainly found in calm waters such as ponds, lakes and slow-moving rivers. It is herbivorous and feeds mainly on aquatic plants, algae and detritus. White bream is a popular angling species for its culinary qualities and attractive rod fighting.', 'White bream''s body is silvery and strongly laterally flattened, with an arched, darker back. The dorsal, caudal and anal fins are steel or black in colour. Even fins, such as pectoral and ventral fins, are pinkish grey and red at the base. The base of the dorsal fin is located between the ventral and anal fins. All fins have a sharp tip. A greenish spot can be seen above the pupil of the eye and the iris of the eye is silvery.', 'White bream, like other fish species, undertake entrainment spawning. The first spawning takes place in late May/early June. White bream spawn on plant substrates, often in flooded meadows. The eggs are glued to the plants where they develop.','White bream is found in Europe, in the area north of the Pyrenees. Its range extends into south-east England and southern Scandinavia. It can be found in the lower reaches of rivers, ponds, lakes, dammed reservoirs, oxbow lakes and floodplains.'),
(10, 'Common bream', 'Bream is a freshwater fish of the cyprinid family, characterised by its silvery body colouration. It is a moderately sized fish, typically reaching a length of 20 to 40 cm. Common bream prefer calm and well-oxygenated waters such as ponds, lakes and medium to large rivers. It is a stock fish and feeds mainly on aquatic vegetation, crustaceans and insect larvae.', 'Bream''s body is strongly laterally flattened, covered with silvery scales and the back has a darker hue. Older individuals may be golden or brown in colour. The base of the dorsal fin is on the line of the ventral fins and the pectoral fins are blue-grey in colour.', 'Common breams spawn in large flocks, usually in the second half of May, mainly in the morning. Females lay their eggs on aquatic plants, in shallow water. A distinct spawning rash can be observed in males.', 'It is found in most of Europe and western Asia. It is absent from the Iberian Peninsula, western France, the southern part of the Balkan Peninsula, northern Scotland and northern Scandinavia. It is also present in Siberia outside its natural range. In Poland, it is common in large lakes, lowland rivers and the coastal zone of the Baltic Sea. Two subspecies of Common bream can be distinguished in Europe: Abramis brama orientalis from the Caspian and Aral Sea regions and Abramis brama danubu from the Danube basin. Common breams form herd communities in the lower sections of large rivers, lakes and dam reservoirs, preferring deep waters with lush vegetation. Common bream populations are very abundant in some reservoirs, which can lead to dwarfing of the fish.'),
(11, 'Roach', 'The roach has an elongated, slightly flattened body covered with fine scales. Its colouration is usually silvery, and delicate shades can be seen on the sides. It is a medium-sized fish, reaching an average length of 15 to 30 cm. The roach prefers warm, shallow waters such as ponds, reservoirs and rivers with slow currents. It is active and sociable, often forming numerous groups.', 'The body of the roach is completely covered with scales. The back of the body is dark, the sides have a silvery tinge and the belly is white. The dorsal and caudal fins are dark grey with slight red discolouration. The pectoral fins are reddish orange. The base of the dorsal fin is directly above the base of the ventral fins. The iris of the eyes is red.', 'Roach begin spawning between April and May. Spawning takes place in coastal areas of water bodies or in shallow floodplains. The eggs are glued to the substrate. During spawning, males have a characteristic spawning rash on the head and upper body, manifesting as whitish, rough papules.', 'It is found throughout Europe, except in areas such as the Iberian Peninsula, the Adriatic basin, Greece and northern Scandinavia. Areas of eastern Europe, where its habitat extends far into Asia, are also numerous. In Poland, roach can be found in all fresh waters, including rivers, lakes and ponds, except in mountainous areas. In addition, it can also be found in the coastal waters of the Baltic Sea.'),
(12, 'Nase', 'Nase fish is a species of freshwater fish with a rounded body and a distinctive snout-like mouth. Its colouration can vary, often featuring yellow, orange or red spots on a silvery background. It lives mainly in calm waters such as lakes, ponds and rivers with slow currents', 'The body of the Nase fish is elongated, covered with large and distinct scales of a silvery-grey hue, with a dark, steel-green back. The belly of the fish is white. The mouth opening is located at the bottom of the protruding snout and the fish also has distinct, large nasal openings. The dorsal and caudal fins are brown or dark grey, while the ventral, pectoral and anal fins are a shade of orange to red.', 'Nase spawn in the second half of April, in shallow areas with rocky gravel bottoms and fast water flow. During spawning, fish can often be seen jumping above the water surface. Males are characterised by the presence of a spawning rash.', 'Nase is widespread in central Europe and north-west Asia. It prefers swift, foothill rivers, especially in the grayling and barbel area. It lives in large groups in shallow places (up to 2 metres) with fast current and a substrate of stones, sand or slightly disturbed silt.'),
(13, 'Silver carp', 'Silver carp is a freshwater fish of the carp family. It has an elongated body, covered with silvery scales. The back is darker than the belly. The fins are transparent or slightly coloured. Silver carp are found in many European rivers and lakes. It prefers calm waters with a well-oxygenated bottom. It is a gregarious fish, living in groups. It feeds primarily on aquatic insect larvae, crustaceans and other small organisms. Silver carp is a popular fishing species, valued for its tasty meat and sporting values.', 'Silver carp has an elongated and very heavily flattened body. Its head is large and the mouth opening is located at the top. The eyes are relatively small and located below the line of symmetry of the body. The back of the tope is green-grey, the belly is silvery-grey and the sides take on a silvery-grey colour that darkens with age. The even fins have a yellowish tinge and the pectoral fins do not reach the base of the ventral fins.', 'Silver carp, being an alien species, does not breed in Polish waters. All specimens of this species come from stocking, where they are bred in special stocking centres.', 'The Silver carp originates from China and eastern Siberia, occurring from the Amur River basin in the north to the Xi Jiang River basin in the south. It has also been introduced in various parts of the world, including Europe, for breeding and sporting purposes.'),
(14, 'Bighead carp', 'Bighead carp or Amur carp, is a species of freshwater fish in the carp family. Its body is strongly elongated, laterally flattened and covered with large scales. It is characterised by its contrasting colouration, which includes a silvery base with dark spots. Adults can reach impressive sizes, reaching up to 1 metre in length. The trout tusk is native to China and eastern Siberia, occurring in the Amur River catchment in the north and the Xi Jiang River catchment in the south. It is a stock fish and prefers shallow and well-oxygenated waters such as lakes, rivers and dammed reservoirs. It is herbivorous, feeding mainly on aquatic plants.', 'The body of the Bighead carp is strongly laterally flattened, similar to that of the Silver carp, but is distinguished by a larger head and eyes located lower. Its colouration is golden grey with a marbled pattern. The pectoral fins reach to the base of the ventral fins.', 'Bighead carp does not occur naturally in Polish conditions. It is an alien species that does not reproduce in our waters. All Bighead carp specimens come from stocking with material bred in stocking centres.', 'The Silver carp originates from China and eastern Siberia, occurring from the Amur River basin in the north to the Xi Jiang River basin in the south. It has also been introduced in various parts of the world, including Europe, for breeding and sporting purposes.'),
(15, 'Rudd', 'Rudd is a freshwater fish with an elongated, slightly flattened body and fine scales. Its colouration is usually silvery or olive, with black spots on the sides. It prefers a variety of aquatic environments such as rivers, lakes and ponds. It is a predator, preying on other fish, crustaceans and aquatic insects. Rudd is active and solitary. It is popular with anglers and has ecological value for the balance of the aquatic environment.', 'The Rudd''s body is slightly flattened on the sides and completely covered with fine scales. The back has a dark colouration, the sides present silvery-golden tones and the belly is white. The fins are distinguished by their intense, beautiful red colouration. The base of the dorsal fin is clearly shifted backwards, extending beyond the base of the ventral fins. The iris of the Rudd''s eyes is orange, adding to its beauty.', 'Rudd spawning begins in the second half of May and lasts for about two weeks. The eggs, which are sticky, are laid on aquatic vegetation. During spawning, male Rudd show a spawning rash on the head and upper body, although this is less intense than in roach.', 'It is found in the waters of most areas of Europe, with the exception of the Iberian Peninsula, Scotland, northern Scandinavia and the Crimea. It prefers lowland free-flowing rivers or lakes that are heavily vegetated and have muddy bottoms. It is a schooling fish, often forming small groups and staying closer to the surface in warm and calm bays. Rudd is also suitable for breeding in small private ponds.');
-- --------------------------------------------------------

--
-- Table structure for table `fishdesc_es`
--

CREATE TABLE `fishdesc_es` (
  `fishID` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `desc` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `chara` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `reprod` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `appear` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fishdesc_es`
--

INSERT INTO `fishdesc_es` (`fishID`, `name`, `desc`, `chara`, `reprod`, `appear`) VALUES
(1, 'Carpa herbívora', 'El Carpa herbívora es un gran pez de agua dulce de la familia de las carpas, caracterizado por un cuerpo largo y alargado y una cabeza ancha. Los ejemplares adultos pueden alcanzar una impresionante longitud de más de 2 metros. Su coloración es plateada o gris, y los lados del cuerpo suelen tener tonos dorados o amarillos. La Carpa herbívora es endémica de la cuenca del Amur, en Asia oriental, y vive en ríos con corrientes rápidas y fondos rocosos. Es un pez deportivo muy apreciado y una especie importante en la pesca', 'Cuerpo alargado, delgado, ligeramente aplanado lateralmente. Cubierto de escamas grandes, con un borde prominente más oscuro en el borde posterior. El dorso es de color verde intenso a verde negruzco, los costados son verde oliva y el vientre es más pálido. La cabeza es ancha, con un hocico de punta roma y una boca grande rodeada de labios carnosos', 'La Carpa herbívora es una especie exótica en Polonia. No se reproduce de forma natural en nuestras aguas. Todos los ejemplares proceden de la ganadería, donde se crían en centros especiales', 'La Carpa herbívora es de origen chino y se encontraba originalmente en la cuenca del río Amur, aunque su área de distribución exacta es difícil de determinar. La especie se cría desde el siglo X y se ha aclimatado ampliamente en muchos países, incluida Europa desde 1950. Se introdujo en Polonia a partir de 1964 y también se ha extendido a los ríos en años posteriores. Se encuentra en zonas como Norteamérica, Australia, India, Dinamarca, Rusia, Sudamérica, África Occidental y Meridional y Kazajstán. La Carpa herbívora vive en bandadas de varios a una docena de individuos e inverna cerca del fondo'),
(2, 'Aspius aspius', 'El aspius es un pez de agua dulce de la familia de los salmónidos, caracterizado por la coloración plateada de su cuerpo. Es un pez de tamaño medio, que suele alcanzar una longitud de 40 a 70 cm, aunque algunos ejemplares pueden superar el metro. Prefiere los ríos caudalosos de aguas bien oxigenadas. Es un depredador que caza sobre todo peces pequeños, pero también crustáceos, insectos acuáticos y larvas. Su cuerpo esbelto y su fuerte musculatura le permiten moverse con dinamismo y precisión en el agua, lo que le hace excepcionalmente hábil en la captura de sus presas', 'El cuerpo del Aspius aspius es alargado y ligeramente aplanado lateralmente. La cabeza es puntiaguda y los ojos pequeños. Un rasgo distintivo es la boca grande y profundamente dentada, cuyo borde se extiende más allá del globo ocular. El iris de los ojos es amarillo. El dorso es oscuro, de color gris acero o verde oliva. Los lados del cuerpo son plateados, brillantes con un ligero tinte amarillento. El vientre es de color blanco plateado. Las aletas ventrales y pectorales son de color gris rojizo', 'El desove del Aspius aspius tiene lugar a principios de primavera, normalmente entre finales de marzo y mayo. Tiene lugar en aguas poco profundas con una corriente rápida, acompañada de un fondo de grava o rocoso. En los machos, puede observarse una erupción de desove en las cubiertas branquiales y las aletas pectorales. Los huevos de Aspius aspius se depositan en piedras donde se adhieren a la superficie del sustrato', 'Se encuentra principalmente en Europa Central al este del Rin y al norte del Danubio, llegando hasta los Urales y las zonas del Mar Caspio. También se encuentra en el sur de Escandinavia. Entre las subespecies de áspid se encuentra Aspius aspius taeniatus, que es un pez migratorio y habita en la región meridional del mar Caspio. El áspid se encuentra en ríos de tierras bajas grandes y medianos, así como en embalses. Puede encontrarse tanto en aguas corrientes como en lagos y bahías de mayor tamaño. Los ejemplares jóvenes de cacho forman pequeños bandos, normalmente cerca de las orillas. A medida que crecen, se vuelven más solitarios, pegándose a la corriente principal del río'),
(3, "Vimba vimba", "Vimba, es una especie de pez de la familia de las carpas. Tiene un cuerpo alargado cubierto de grandes escamas y una coloración plateada con un brillo azulado. Vimba vimba se caracteriza por una cabeza grande y redondeada con una amplia abertura bucal. Las aletas del Vimba vimba están bien desarrolladas y las aletas dorsal y caudal son de color gris o azulado. Los certidos se encuentran en diversos tipos de agua, como ríos, lagos y estanques, donde forman numerosas bandadas", "Pez de cuerpo lateral fuertemente aplanado, forma alargada y coloración gris azulada. Su vientre es blanco con un brillo plateado. Un rasgo característico del Vimba vimba es la boca grande con labios gruesos, situada en la parte inferior del hocico saliente. En el dorso, desde el extremo de la cabeza hasta la base de la aleta dorsal, corre una estrecha franja de piel sin escamas. Las aletas del Vimba vimba son de color amarillo brillante, excepto las aletas dorsal y caudal, que son de color gris claro", "El desove del Vimba vimba tiene lugar desde la segunda quincena de mayo hasta finales de junio, dependiendo de la región geográfica. El proceso de desove tiene lugar en bandadas en las aguas poco profundas de los ríos con fondos arenosos y de grava. Durante este periodo, los certillos macho adquieren colores oscuros intensos.", "Vimba vimba se encuentra en las cuencas del Mar del Norte al este del Rin, en los mares Báltico, Azov, Negro y Caspio y en los lagos Ladoga y Pejpus. Habitan los tramos inferiores de los ríos y las aguas marinas costeras. Durante el desove, emprenden migraciones de larga distancia remontando los ríos hasta llegar a la tierra del tímalo"),
(4, 'Cacho', 'El Cacho es un pez de agua dulce de la familia de los ciprínidos, que se encuentra en Europa y Asia. Tiene el cuerpo alargado y aplanado, cubierto de finas escamas, y una boca característicamente angulosa situada en la parte inferior del cuerpo. Prefiere aguas cálidas y poco profundas, como estanques, embalses y ríos con corrientes lentas', 'El Cacho tiene un cuerpo esbelto y alargado, aplanado hacia los lados. Su piel está cubierta de finas escamas blanco-plateadas y su dorso es de color oscuro. Las aletas son de color rojo anaranjado intenso y los ojos son de un marcado amarillo anaranjado. También destaca el borde cóncavo de la aleta anal', 'En primavera, entre abril y mayo, el Cacho inicia su periodo de desove. Los huevos son depositados sobre vegetación acuática, arena, piedras y ramas sumergidas. Los machos desarrollan una erupción característica durante el desove', 'Europa, al este del Rin y al norte de los Alpes, y Asia. Se encuentra en aguas corrientes, con menos frecuencia en aguas estancadas, y en aguas salobres cerca de estuarios. Vive en bandadas'),
(5, 'Leucisco', 'Leucisco es un pez de agua dulce de la familia de los ciprínidos, que se distingue por la coloración amarilla característica de su cuerpo. Es un pez de tamaño medio, que suele alcanzar una longitud de 15 a 30 cm. El Leucisco prefiere aguas tranquilas y bien oxigenadas, como estanques, lagos y ríos de corriente lenta. Es depredador y se alimenta principalmente de insectos acuáticos, crustáceos y larvas.', 'El cuerpo del Leucisco es alargado y delgado, con una sección transversal ovalada. La pequeña cabeza tiene un hocico puntiagudo y la boca apunta hacia abajo. El dorso del Leucisco es de color gris acero oscuro, decorado además con un brillo metálico. Los lados del cuerpo son plateados, mientras que el vientre tiene un ligero tinte blanquecino amarillento. Tanto la aleta dorsal como la caudal son de color gris oscuro', 'El Leucisco desova en bandadas en primavera, normalmente de abril a mayo. Eligen aguas de corriente rápida, a menudo entre la vegetación acuática. La mayoría de las veces, los huevos de Leucisco se depositan en zonas con fondos arenosos o de grava. En la población reproductora, los machos constituyen el grupo más numeroso', 'El Leucisco se encuentra en diversos arroyos, ríos y lagos de Europa, excepto en la Península Ibérica, los Balcanes, partes de la Península de los Apeninos, Escocia y el norte de Escandinavia. También se encuentra raramente en el mar Báltico, principalmente en bahías con bajos niveles de salinidad. El Leucisco prefiere vivir en bandadas'),
(6, 'Carassius gibelio', 'La carpa plateada es un pez de agua dulce de la familia de las carpas. Tiene el cuerpo alargado y ligeramente aplanado, de color plateado o verde plateado. Alcanza una longitud media de 10-20 cm. Es un pez corpulento que prefiere aguas poco profundas y bien oxigenadas. Se alimenta principalmente de vegetación acuática y pequeños organismos.', 'El cuerpo de la Carassius gibelio está cubierto de escamas lisas que le dan un color gris plateado con un ligero brillo verde. El vientre es blanco. Las aletas dorsal y caudal presentan varios tonos de gris. A veces, las aletas pares y anales tienen epífisis rosáceas', 'El desove (2, 3 veces) de la Carassius gibelio tiene lugar en zonas costeras poco profundas, cálidas y cubiertas de vegetación de las masas de agua. Los huevos, de color verdoso, se adhieren a la vegetación acuática blanda.', 'Se encuentra principalmente en aguas estancadas y de movimiento lento con sustrato blando y densamente vegetado. Se encuentra de forma natural en Asia oriental, desde la cuenca del Amur hasta Siberia. Actualmente se ha introducido artificialmente en muchas aguas europeas'),
(7, 'Carpa', 'La carpa es un pez de agua dulce de la familia de los ciprínidos, caracterizado por una coloración corporal distintiva de varios tonos, generalmente de dorado a marrón. Es un pez de tamaño medio, que suele alcanzar una longitud de entre 30 y 90 cm, aunque algunos ejemplares pueden ser mucho mayores. La Carpa común prefiere aguas tranquilas y con buena vegetación, como estanques, lagos y ríos con corrientes lentas. Es un pez omnívoro que se alimenta de plantas acuáticas, invertebrados y detritus.', 'Se distingue de la carpa común y la carpa plateada por la presencia de dos bigotes largos de color claro y dos bigotes más cortos y oscuros, visibles en las comisuras a ambos lados de la abertura bucal', 'En las aguas naturales polacas, la carpa no se reproduce de forma natural. Los peces que se encuentran en nuestras aguas proceden de introducciones. La reproducción tiene lugar en centros de cría especiales, en estanques poco profundos y cubiertos de vegetación, normalmente a finales de mayo y principios de junio. También se pueden obtener huevos de hembras y semen de machos en condiciones controladas', 'Las cuencas de los mares Negro, Caspio y Aral son el hábitat natural de la Carpa común. Sin embargo, numerosas variedades reproductoras de este pez están extendidas tanto en cría como en aguas abiertas por casi todo el mundo. La Carpa común se encuentra en diversos hábitats, como ríos profundos, cochas, brazos de ríos, llanuras aluviales, lagos y estanques.'),
(8, 'Bagre', 'El bagre es un pez de agua dulce de la familia de los ciprínidos, con un característico color amarillo en el cuerpo. Es un pez de tamaño medio, que suele alcanzar una longitud de 15 a 30 cm. El Bagre prefiere aguas tranquilas y bien oxigenadas, como estanques, lagos y ríos de corriente lenta. Es un depredador que se alimenta de insectos acuáticos, crustáceos y larvas', 'El cuerpo es alargado y cilíndrico, cubierto de grandes escamas oscuras. Las aletas dorsal y caudal van del verde oscuro al gris verdoso. Las otras aletas son de color naranja rojizo o rojo. El borde de la aleta anal es convexo', 'El Bagre desova a finales de mayo y principios de junio. El desove tiene lugar en aguas bien iluminadas con fondos arenosos y de grava. Los peces comienzan a desovar a mediodía.', 'Se encuentra en Europa, excepto en las islas mediterráneas, Portugal, Irlanda, Islandia, el norte de Escocia y las cuencas del Volga, los Urales, el Tigris y el Éufrates. Es básicamente un pez de agua dulce, pero también puede encontrarse en lagos, embalses y bahías marinas. El Bagre no realiza grandes migraciones'),
(9, 'Krąp', 'Krąp to słodkowodna ryba z rodziny karpiowatych, charakteryzująca się krągłym, wyżłobionym ciałem. Jest to ryba o umiarkowanej wielkości, osiągająca zwykle długość od 15 do 30 cm. Krąp występuje głównie w spokojnych wodach, takich jak stawy, jeziora i wolno płynące rzeki. Jest roślinożerna i odżywia się głównie roślinami wodnymi, glonami i detrytusem. Krąp jest popularnym gatunkiem wędkarskim ze względu na swoje walory kulinarne i atrakcyjną walkę na wędkę.', 'Ciało krąpa jest srebrzyste i mocno spłaszczone bocznie, z łukowatym, ciemniejszym grzbietem. Płetwy grzbietowa, ogonowa i odbytowa mają stalowe lub czarne zabarwienie. Płetwy parzyste, takie jak piersiowe i brzuszne, są różowoszare, a u nasady czerwone. Nasada płetwy grzbietowej znajduje się pomiędzy płetwami brzusznymi a odbytową. Wszystkie płetwy mają ostre zakończenie. Ponad źrenicą oka można zauważyć zielonkawą plamkę, a tęczówka oka jest srebrzysta.', 'Krąp, podobnie jak inne gatunki ryb, przystępuje do tarła porcyjnego. Pierwszy raz odbywa się to na przełomie maja i czerwca. Krąp składa ikrę na podłożu roślinnym, często na zalanych łąkach. Jaja są przyklejane do roślin, gdzie się rozwijają.', 'Krąp występuje w Europie, na obszarze na północ od Pirenejów. Jej zasięg sięga południowo-wschodniej Anglii i południowej Skandynawii. Można ją spotkać w dolnych biegach rzek, stawach, jeziorach, zbiornikach zaporowych, starorzeczach i rozlewiskach.'),
(10, 'Brema', 'La brema es un pez de agua dulce de la familia de los ciprínidos, caracterizado por la coloración plateada de su cuerpo. Es un pez de tamaño moderado, que suele alcanzar una longitud de 20 a 40 cm. La Brema prefiere aguas tranquilas y bien oxigenadas, como estanques, lagos y ríos medianos y grandes. Es un pez de población y se alimenta principalmente de vegetación acuática, crustáceos y larvas de insectos', 'El cuerpo de la Brema es fuertemente aplanado lateralmente, cubierto de escamas plateadas y el dorso tiene una tonalidad más oscura. Los ejemplares más viejos pueden ser de color dorado o marrón. La base de la aleta dorsal está en la línea de las aletas ventrales y las aletas pectorales son de color gris azulado', 'Las Bremas desovan en grandes bandadas, normalmente en la segunda quincena de mayo, principalmente por la mañana. Las hembras ponen los huevos sobre plantas acuáticas, en aguas poco profundas. En los machos puede observarse una marcada erupción de desove.', 'Se encuentra en la mayor parte de Europa y Asia occidental. Está ausente de la Península Ibérica, el oeste de Francia, el sur de la Península Balcánica, el norte de Escocia y el norte de Escandinavia. También está presente en Siberia, fuera de su área de distribución natural. En Polonia, es común en grandes lagos, ríos de tierras bajas y la zona costera del mar Báltico. En Europa se distinguen dos subespecies de Brema: Abramis brama orientalis, de las regiones del Mar Caspio y el Mar de Aral, y Abramis brama danubu, de la cuenca del Danubio. La Brema forma comunidades en forma de rebaño en las secciones inferiores de los grandes ríos, lagos y embalses de presas, prefiriendo aguas profundas con vegetación exuberante. En algunos embalses, las poblaciones de Brema son muy numerosas, lo que puede provocar el enanismo de los peces'),
(11, 'Rutilo', 'El rutilo tiene el cuerpo alargado, ligeramente aplanado y cubierto de finas escamas. Su coloración suele ser plateada con delicados matices en los costados. Es un pez de tamaño medio, que alcanza una longitud media de 15 a 30 cm. El Rutilo prefiere aguas cálidas y poco profundas, como estanques, embalses y ríos con corrientes lentas. Es un pez activo y sociable, que suele formar grupos numerosos', 'El cuerpo del Rutilo está completamente cubierto de escamas. La parte posterior del cuerpo es oscura, los costados tienen un tinte plateado y el vientre es blanco. Las aletas dorsal y caudal son de color gris oscuro con una ligera decoloración roja. Las aletas pectorales son de color naranja rojizo. La base de la aleta dorsal está directamente por encima de la base de las aletas ventrales. El iris de los ojos es rojo', 'El Rutilo desova entre abril y mayo. El desove tiene lugar en zonas costeras de masas de agua o en charcas poco profundas. Los huevos se pegan al sustrato. Durante el desove, los machos presentan una erupción característica en la cabeza y la parte superior del cuerpo, que se manifiesta como pápulas blanquecinas y rugosas', 'Se encuentra en toda Europa, excepto en zonas como la Península Ibérica, la cuenca del Adriático, Grecia y el norte de Escandinavia. También son numerosas las zonas del este de Europa, donde su hábitat se extiende hasta Asia. En Polonia, el Rutilo se encuentra en todas las aguas dulces, incluidos ríos, lagos y estanques, excepto en las zonas montañosas. Además, también puede encontrarse en las aguas costeras del mar Báltico'),
(12, 'Naso', 'El Naso es una especie de pez de agua dulce con el cuerpo redondeado y un hocico característico. Su coloración puede variar y suele presentar manchas amarillas, naranjas o rojas sobre un fondo plateado. Vive principalmente en aguas tranquilas, como lagos, estanques y ríos de curso libre', 'El cuerpo del pez Naso es alargado, cubierto de escamas grandes y definidas de un tono gris plateado, con un dorso oscuro de color verde acero. El vientre es blanco. La abertura bucal está situada en la parte inferior del hocico sobresaliente y el pez también tiene aberturas nasales grandes y marcadas. Las aletas dorsal y caudal son de color marrón o gris oscuro, mientras que las ventrales, pectorales y anales son de un tono entre naranja y rojo', 'El Naso desova en la segunda quincena de abril, en zonas poco profundas con fondos de grava rocosa y corriente rápida. Durante el desove, los peces pueden verse a menudo saltando por encima de la superficie del agua. Los machos se caracterizan por la presencia de un sarpullido durante el desove', 'El Naso está muy extendido por Europa central y el noroeste de Asia. Prefiere los ríos rápidos de piedemonte, sobre todo en la zona del tímalo y el barbo. Vive en grandes grupos en lugares poco profundos (hasta 2 metros) con corriente rápida y un sustrato de piedras, arena o limo ligeramente alterado'),
(13, 'Carpa platead', 'La carpa platead es un pez de agua dulce de la familia de las carpas. Tiene el cuerpo alargado, cubierto de escamas plateadas. El dorso es más oscuro que el vientre. Las aletas son transparentes o ligeramente coloreadas. La Carpa platead se encuentra en muchos ríos y lagos europeos. Prefiere las aguas tranquilas con un fondo bien oxigenado. Es un pez gregario que vive en grupos. Se alimenta principalmente de larvas de insectos acuáticos, crustáceos y otros pequeños organismos. La Carpa platead es una especie de pesca popular, apreciada por su carne sabrosa y su valor deportivo', 'La Carpa platead tiene el cuerpo alargado y muy aplanado. Su cabeza es grande y la abertura bucal está situada en la parte superior. Los ojos son relativamente pequeños y están situados por debajo de la línea de simetría del cuerpo. El dorso del tope es gris verdoso, el vientre gris plateado y los costados adquieren un color gris plateado que se oscurece con la edad. Las aletas pares tienen un tinte amarillento y las pectorales no llegan a la base de las ventrales', 'La Carpa platead, al ser una especie foránea, no se reproduce en aguas polacas. Todos los ejemplares de esta especie proceden de la ganadería, donde se crían en centros especiales', 'El ornitorrinco blanco es originario de China y Siberia oriental, y se da desde la cuenca del río Amur en el norte hasta la cuenca del río Xi Jiang en el sur. También se ha introducido en varias partes del mundo, incluida Europa, con fines de cría y deportivos'),
(14, 'Carpa cabezona', 'Carpa cabezona o carpa de Amur, es una especie de pez de agua dulce de la familia de las carpas. Su cuerpo es fuertemente alargado, aplanado lateralmente y cubierto de grandes escamas. Se caracteriza por su coloración contrastada, que incluye una base plateada con manchas oscuras. Los adultos pueden alcanzar tamaños impresionantes, llegando a medir hasta 1 metro de longitud. La trucha colmilleja es originaria de China y Siberia oriental, y se da en la cuenca del río Amur, en el norte, y en la del río Xi Jiang, en el sur. Es un pez de población y prefiere aguas poco profundas y bien oxigenadas, como lagos, ríos y embalses. Es herbívoro y se alimenta principalmente de plantas acuáticas', 'El cuerpo del ornitorrinco moteado es muy aplanado lateralmente, similar al del ornitorrinco blanco, pero se distingue por tener la cabeza más grande y los ojos situados más abajo. Su coloración es gris dorada con un dibujo jaspeado. Las aletas pectorales llegan hasta la base de las ventrales', 'En Polonia, el ornitorrinco moteado no se da de forma natural. Es una especie exótica que no se reproduce en nuestras aguas. Todos los ejemplares de ornitorrinco plateado proceden de la cría en centros de cría', 'El ornitorrinco blanco es originario de China y Siberia oriental, y se da desde la cuenca del río Amur en el norte hasta la cuenca del río Xi Jiang en el sur. También se ha introducido en varias partes del mundo, incluida Europa, con fines de cría y deportivos'),
(15, ' Gardí', 'Es un pez de agua dulce de cuerpo alargado, ligeramente aplanado y con escamas finas. Su coloración suele ser plateada u oliva, con manchas negras en los costados. Prefiere diversos medios acuáticos, como ríos, lagos y estanques. Es un depredador que se alimenta de otros peces, crustáceos e insectos acuáticos. Gardí es activo y solitario. Es popular para la pesca con caña y tiene valor ecológico para el equilibrio del medio acuático', 'El cuerpo del Gardí es ligeramente aplanado por los lados y está completamente cubierto de finas escamas. El dorso tiene una coloración oscura, los costados presentan tonos plateados-dorados y el vientre es blanco. Las aletas se distinguen por su intenso y hermoso color rojo. La base de la aleta dorsal está claramente desplazada hacia atrás, sobrepasando la base de las aletas ventrales. El iris de los ojos del Gardí es naranja, lo que aumenta su belleza', 'El desove del Gardí comienza en la segunda quincena de mayo y dura unas dos semanas. Los huevos, pegajosos, se depositan sobre la vegetación acuática. Durante el desove, los machos de Gardí muestran una erupción de desove en la cabeza y la parte superior del cuerpo, aunque es menos intensa que en la cucaracha', 'Se encuentra en las aguas de la mayor parte de Europa, a excepción de la Península Ibérica, Escocia, el norte de Escandinavia y Crimea. Prefiere los ríos o lagos de tierras bajas que fluyen libremente, con mucha vegetación y fondos fangosos. Es un pez de cardumen, que suele formar pequeños grupos y permanecer cerca de la superficie en bahías cálidas y tranquilas. Gardí también se cría en pequeños estanques privados');

-- --------------------------------------------------------

--
-- Table structure for table `fishdesc_fr`
--

CREATE TABLE `fishdesc_fr` (
  `fishID` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `desc` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `chara` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `reprod` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `appear` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fishdesc_fr`
--

INSERT INTO `fishdesc_fr` (`fishID`, `name`, `desc`, `chara`, `reprod`, `appear`) VALUES
(1, 'Carpe de roseau', 'Le Carpe de roseau est un grand poisson d''eau douce de la famille des carpes, caractérisé par un corps long et allongé et une tête large. Les spécimens adultes peuvent atteindre une longueur impressionnante de plus de 2 mètres. Leur coloration est argentée ou grise, et les côtés du corps ont souvent des tons dorés ou jaunes. Le Carpe de roseau est endémique du bassin de l''Amour, en Asie de l''Est, et se rencontre dans les rivières aux courants rapides et aux fonds rocheux. Il s''agit d''un poisson de sport très prisé et d''une espèce importante pour la pêche', 'Corps allongé, mince, légèrement aplati latéralement. Couvert de grandes écailles, avec un bord plus foncé proéminent sur le bord arrière. Le dos est d''un vert intense à noirâtre, les flancs sont vert olive et le ventre est plus pâle. La tête est large, avec un museau à la pointe émoussée et une grande bouche entourée de lèvres charnues', 'Le Carpe de roseau est une espèce exotique en Pologne. Il ne se reproduit pas naturellement dans nos eaux. Tous les spécimens proviennent de l''empoissonnement, où ils sont élevés dans des centres spéciaux', 'Le Carpe de roseau est d''origine chinoise et se trouvait à l''origine dans le bassin du fleuve Amour, bien que son aire de répartition exacte soit difficile à déterminer. L''espèce est élevée depuis le Xe siècle et a été largement acclimatée dans de nombreux pays, y compris en Europe depuis 1950. Elle a été introduite en Pologne à partir de 1964 et s''est également répandue dans les rivières au cours des années suivantes. On le trouve dans des régions telles que l''Amérique du Nord, l''Australie, l''Inde, le Danemark, la Russie, l''Amérique du Sud, l''Afrique de l''Ouest et du Sud, et le Kazakhstan. Le Carpe de roseau vit en bandes de quelques individus à une douzaine et hiverne près du fond.'),
(2, 'Aspe', 'L''aspe est un poisson d''eau douce de la famille des salmonidés, caractérisé par la coloration argentée caractéristique de son corps. Il s''agit d''un poisson de taille moyenne, qui atteint généralement une longueur de 40 à 70 cm, bien que certains individus puissent dépasser un mètre. Le bolen préfère les rivières à courant rapide et les eaux bien oxygénées. C''est un prédateur qui chasse principalement les petits poissons, mais aussi les crustacés, les insectes aquatiques et les larves. Son corps élancé et ses muscles puissants lui permettent de se déplacer de manière dynamique et précise dans l''eau, ce qui le rend exceptionnellement habile pour attraper ses proies', 'Le corps de l''Aspe est allongé et légèrement aplati latéralement. La tête est pointue et les yeux sont petits. La bouche, grande et profondément échancrée, dont le bord dépasse le globe oculaire, est un trait distinctif. L''iris des yeux a une teinte jaune. Le dos du poisson est de couleur sombre, ressemblant à du gris acier ou à du vert olive. Les flancs du corps sont argentés, brillants avec une légère teinte jaunâtre. Le ventre est blanc argenté. Les nageoires ventrales et pectorales sont gris rougeâtre', 'Le frai de l''Aspe a lieu au début du printemps, généralement de fin mars à mai. Il a lieu dans des eaux peu profondes avec un courant rapide, accompagné d''un fond de gravier ou de roche. Chez les mâles, des éruptions de frai peuvent être observées sur les opercules et les nageoires pectorales. Les œufs d''Aspe sont déposés sur des pierres où ils s''accrochent à la surface du substrat', 'On le trouve principalement en Europe centrale à l''est du Rhin et au nord du Danube, jusque dans les régions de l''Oural et de la mer Caspienne. On le rencontre également dans le sud de la Scandinavie. Parmi les sous-espèces d''Aspe, on trouve Aspius aspius taeniatus, qui est un poisson migrateur et habite la région méridionale de la mer Caspienne. Le chevesne est présent dans les rivières de plaine de grande et moyenne taille, ainsi que dans les réservoirs endigués. On le trouve aussi bien dans les eaux courantes que dans les grands lacs et les baies. Les jeunes spécimens de chevesnes forment de petits groupes, généralement près des berges. En grandissant, ils deviennent plus solitaires, se tenant au courant principal de la rivière'),
(3, 'Vimbe', 'Vimbe est une espèce de poisson de la famille des carpes. Son corps allongé est recouvert de grandes écailles et sa couleur est argentée avec des reflets bleutés. La caractéristique du ''Certa est une grosse tête arrondie avec une large ouverture buccale. Les nageoires de la ''Vimbe sont bien développées et les nageoires dorsale et caudale sont de couleur grise ou bleutée. On trouve les cérastes dans divers types d''eau tels que les rivières, les lacs et les étangs, où ils forment de nombreuses bandes', 'Poisson au corps latéral fortement aplati, de forme allongée et de couleur gris-bleu. Son ventre est blanc avec des reflets argentés. Un trait caractéristique du Vimbe est la grande bouche aux lèvres épaisses, située à la base du museau proéminent. Sur le dos, de l''extrémité de la tête à la base de la nageoire dorsale, s''étend une étroite bande de peau non écaillée. Les nageoires de la Vimbe sont jaune vif, à l''exception des nageoires dorsale et caudale, qui sont de couleur gris clair', 'Le frai de la Vimbe a lieu de la deuxième moitié du mois de mai à la fin du mois de juin, en fonction de la région géographique. Le frai se déroule en bandes dans les eaux peu profondes des rivières à fond sablonneux et graveleux. Durant cette période, les cerfs mâles prennent des couleurs sombres et intenses. Une éruption de frai caractéristique apparaît sur la tête, le dos et les côtés du corps', 'Les Vimbes se trouvent dans les bassins versants de la mer du Nord à l''est du Rhin, de la mer Baltique, de la mer d''Azov, de la mer Noire et de la mer Caspienne, ainsi que dans les lacs Ladoga et Pejpus. Ils vivent dans le cours inférieur des rivières et dans les eaux marines côtières. Pendant le frai, ils entreprennent de longues migrations en remontant les rivières, atteignant le pays de l''ombre.'),
(4, 'Ide mélanote', 'L''Ide mélanote est un poisson d''eau douce de la famille des carpes, que l''on trouve en Europe et en Asie. Il a un corps allongé et aplati recouvert de fines écailles et une bouche angulaire caractéristique située sur la partie inférieure du corps. Elle préfère les eaux chaudes et peu profondes, comme les étangs, les réservoirs et les rivières à faible courant', 'L''Ideanote a un corps mince et allongé, aplati sur les côtés. Sa peau est recouverte de fines écailles blanc-argent et son dos est de couleur foncée. Les nageoires sont d''un rouge orangé intense et les yeux sont d''un jaune orangé distinct. Le bord concave de la nageoire anale est également remarquable', 'Au printemps, entre avril et mai, l''Ideanote entame sa période de reproduction. Les œufs sont pondus sur la végétation aquatique, le sable, les pierres et les branches immergées. Les géniteurs mâles développent une éruption caractéristique pendant la ponte', 'Europe à l''est du Rhin et au nord des Alpes, et Asie. On le trouve dans les eaux courantes, plus rarement dans les eaux stagnantes, et dans les eaux saumâtres près des estuaires. Il vit en bandes.'),
(5, 'Vandoise', 'La vandoise est un poisson d''eau douce de la famille des carpes, qui se distingue par la coloration jaune caractéristique de son corps. Il s''agit d''un poisson de taille moyenne, atteignant généralement une longueur de 15 à 30 cm. La Vandoise préfère les eaux calmes et bien oxygénées telles que les étangs, les lacs et les rivières à faible courant. C''est un prédateur qui se nourrit principalement d''insectes aquatiques, de crustacés et de larves. La Vandoise est réputée pour son activité et son agilité dans l''eau, ce qui en fait une cible de pêche appréciée', 'Le corps de la Vandoise est allongé et mince, avec une section transversale ovale. La petite tête a un museau pointu et l''ouverture de la bouche est orientée vers le bas. Le dos de la Vandoise est d''une couleur sombre, gris acier, encore agrémentée d''un reflet métallique. Les côtés du corps sont argentés, tandis que le ventre présente une légère teinte jaune blanchâtre. Les nageoires dorsale et caudale sont toutes deux de couleur gris foncé', 'Les Vandoises se reproduisent en bandes au printemps, généralement entre avril et mai. Il choisit des eaux à débit rapide, souvent parmi la végétation aquatique. Le plus souvent, les œufs de la Vandoise sont pondus dans des zones à fond sablonneux ou graveleux. Dans le stock de géniteurs, les mâles constituent le groupe le plus nombreux', 'Le naseux se trouve dans divers ruisseaux, rivières et lacs d''Europe, à l''exception de la péninsule ibérique, des Balkans, de certaines parties de la péninsule des Apennins, de l''Écosse et du nord de la Scandinavie. Il est également rare dans la mer Baltique, principalement dans les baies à faible salinité. La Vandoise préfère vivre en troupeaux'),
(6, 'Carpe prussienne', 'La carpe prussienne est un poisson d''eau douce de la famille des carpes. Elle a un corps allongé, légèrement aplati, de couleur argentée ou vert argenté. Elle atteint une longueur moyenne de 10 à 20 cm. C''est un poisson trapu qui préfère les eaux peu profondes et bien oxygénées. Il se nourrit principalement de végétation aquatique et de petits organismes. Elle est appréciée pour la pêche de loisir et l''élevage, et joue un rôle écologique important dans les écosystèmes aquatiques.', 'Le corps de la Carpe prussienne est recouvert d''écailles lisses qui lui donnent une couleur gris argenté avec un léger reflet vert. Le ventre du poisson est blanc. Les nageoires dorsale et caudale sont de différentes nuances de gris. Parfois, les nageoires paires et anales présentent des épiphyses rosâtres', 'Le frai à pores (2, 3 fois) de la Carpe prussienne a lieu dans les zones côtières peu profondes, chaudes et envahies des plans d''eau. Les œufs de couleur verdâtre sont collés à la végétation aquatique molle', 'On la trouve principalement dans les eaux stagnantes et à faible courant avec un substrat mou et densément végétalisé. On le trouve naturellement en Asie orientale, du bassin de l''Amour à la Sibérie. Il a été introduit artificiellement dans de nombreuses eaux européennes,'),
(7, 'Carpe', 'La carpe est un poisson d''eau douce de la famille des cyprinidés, caractérisé par une coloration distinctive du corps de différentes nuances, généralement dorée à brune. Il s''agit d''un poisson de taille moyenne, qui atteint généralement une longueur comprise entre 30 et 90 cm, bien que certains individus puissent être beaucoup plus grands. La Carpe commune préfère les eaux calmes et bien végétalisées telles que les étangs, les lacs et les rivières à faible courant. C''est un poisson omnivore qui se nourrit de plantes aquatiques, d''invertébrés et de détritus. La carpe est connue pour sa robustesse et son caractère combatif, ce qui en fait une cible de pêche populaire dans le monde entier', 'La carpe se distingue de la carpe commune et de la carpe argentée par la présence de deux longues moustaches de couleur claire et de deux moustaches plus courtes et plus foncées qui sont visibles aux coins de chaque côté de l''ouverture de la bouche', 'Dans les eaux naturelles polonaises, la carpe commune ne se reproduit pas naturellement. Les poissons que l''on trouve dans nos eaux proviennent d''introductions. La reproduction a lieu dans des centres d''élevage spéciaux, dans des étangs peu profonds et envahis par la végétation, généralement à la fin du mois de mai et au début du mois de juin. Il est également possible d''obtenir des œufs de femelles et du sperme de mâles dans des conditions contrôlées', 'Les bassins des mers Noire, Caspienne et d''Aral constituent l''habitat naturel de la Carpe commune. Toutefois, de nombreuses variétés de ce poisson sont répandues dans le monde entier, tant en élevage qu''en eau libre. On trouve la Carpe commune dans divers habitats tels que les rivières profondes, les lacs en arc de cercle, les bras de rivière, les plaines inondables, les lacs et les étangs.'),
(8, 'Chevesne', 'Le chevesne est un poisson d''eau douce de la famille des cyprinidés, dont le corps présente une coloration jaune caractéristique. Il s''agit d''un poisson de taille moyenne, qui atteint généralement une longueur de 15 à 30 cm. Le Chevesne préfère les eaux calmes et bien oxygénées telles que les étangs, les lacs et les rivières à faible courant. C''est un prédateur qui se nourrit d''insectes aquatiques, de crustacés et de larves', 'Le corps est allongé et cylindrique, recouvert de grandes écailles sombres. Les nageoires dorsale et caudale vont du vert foncé au gris-vert. Les autres nageoires sont de couleur orange rougeâtre ou rouge. Le bord de la nageoire anale est convexe', 'Le Chevesne se reproduit à la fin du mois de mai et au début du mois de juin. Le frai a lieu dans des eaux bien ensoleillées avec des fonds sablonneux et graveleux. Les poissons commencent à frayer à la mi-journée. Les œufs sont collés et adhèrent au substrat', 'On le trouve en Europe, à l''exception des îles méditerranéennes, du Portugal, de l''Irlande, de l''Islande, du nord de l''Écosse et des bassins de la Volga, de l''Oural, du Tigre et de l''Euphrate. Il s''agit essentiellement d''un poisson d''eau douce, mais on le trouve également dans les lacs, les réservoirs endigués et les baies maritimes. Le Chevesne n''entreprend pas de grandes migrations'),
(9, 'Brème bordelière', 'La Brème bordelière est un poisson d''eau douce de la famille des cyprinidés, caractérisé par un corps arrondi et strié. Il s''agit d''un poisson de taille moyenne, atteignant généralement une longueur de 15 à 30 cm. La Brème bordelière se trouve principalement dans les eaux calmes telles que les étangs, les lacs et les rivières à faible courant. Elle est herbivore et se nourrit principalement de plantes aquatiques, d''algues et de détritus. La Brème bordelière est une espèce très appréciée des pêcheurs à la ligne pour ses qualités culinaires et ses combats attrayants à la canne à pêche.', 'Le corps de la Brème bordelière est argenté et fortement aplati latéralement, avec un dos arqué et plus sombre. Les nageoires dorsale, caudale et anale sont de couleur acier ou noire. D''autres nageoires, comme les nageoires pectorales et ventrales, sont gris rosé et rouges à la base. La base de la nageoire dorsale se situe entre les nageoires ventrale et anale. Toutes les nageoires ont une extrémité pointue. Une tache verdâtre est visible au-dessus de la pupille de l''œil, et l''iris de l''œil est argenté', 'La Brème bordelière, comme d''autres espèces de poissons, entre en période de frai par portion. Le premier frai a lieu fin mai/début juin. La brème bordelière fraye sur des substrats végétaux, souvent dans des prairies inondées. Les œufs sont collés aux plantes où ils se développent', 'La Brème bordelière est présente en Europe, dans la zone située au nord des Pyrénées. Son aire de répartition s''étend jusqu''au sud-est de l''Angleterre et au sud de la Scandinavie. On la trouve dans le cours inférieur des rivières, des étangs, des lacs, des réservoirs endigués, des lacs en boucle et des plaines d''inondation.'),
(10, 'Brème commune', 'La brème commune est un poisson d''eau douce de la famille des cyprinidés, caractérisé par la couleur argentée de son corps. Il s''agit d''un poisson de taille moyenne, qui atteint généralement une longueur de 20 à 40 cm. La Brème commune préfère les eaux calmes et bien oxygénées telles que les étangs, les lacs et les rivières de taille moyenne à grande. C''est un poisson de souche qui se nourrit principalement de végétation aquatique, de crustacés et de larves d''insectes', 'Le corps de la Brème commune est fortement aplati latéralement, recouvert d''écailles argentées et le dos a une teinte plus foncée. Les individus plus âgés peuvent être dorés ou bruns. La base de la nageoire dorsale se situe sur la ligne des nageoires ventrales et les nageoires pectorales sont de couleur bleu-gris.', 'Les brèmes communes se reproduisent en grandes bandes, généralement dans la deuxième moitié du mois de mai, surtout le matin. Les femelles pondent leurs œufs sur des plantes aquatiques, dans des eaux peu profondes. Chez les mâles, on peut observer une éruption cutanée distincte lors de la ponte', 'On la trouve dans la majeure partie de l''Europe et de l''Asie occidentale. Il est absent de la péninsule ibérique, de l''ouest de la France, du sud de la péninsule balkanique, du nord de l''Écosse et du nord de la Scandinavie. Il est également présent en Sibérie en dehors de son aire de répartition naturelle. En Pologne, il est commun dans les grands lacs, les rivières de plaine et la zone côtière de la mer Baltique. En Europe, on distingue deux sous-espèces de brèmes communes : Abramis brama orientalis dans les régions de la mer Caspienne et de la mer d''Aral et Abramis brama danubu dans le bassin du Danube. Les brèmes communes forment des communautés grégaires dans les parties inférieures des grands fleuves, lacs et réservoirs de barrage, préférant les eaux profondes à la végétation luxuriante. Dans certains réservoirs, les populations de brèmes communes sont très nombreuses, ce qui peut entraîner un nanisme des poissons.'),
(11, 'Gardon', 'Le gardon a un corps allongé, légèrement aplati et recouvert de fines écailles. Sa coloration est généralement argentée avec des teintes délicates sur les flancs. Il s''agit d''un poisson de taille moyenne, atteignant une longueur moyenne de 15 à 30 cm. Le Gardon préfère les eaux chaudes et peu profondes telles que les étangs, les réservoirs et les rivières à faible courant. Il est actif et sociable, formant souvent de nombreux groupes', 'Le corps du Gardon est entièrement recouvert d''écailles. L''arrière du corps est sombre, les côtés ont une teinte argentée et le ventre est blanc. Les nageoires dorsale et caudale sont gris foncé avec une légère coloration rouge. Les nageoires pectorales sont orange rougeâtre. La base de la nageoire dorsale est directement au-dessus de la base des nageoires ventrales. L''iris des yeux est rouge', 'Le Gardon commence à frayer entre avril et mai. Le frai a lieu dans les zones côtières des plans d''eau ou dans des mares peu profondes. Les œufs sont collés au substrat. Pendant la ponte, les mâles présentent une éruption caractéristique sur la tête et le haut du corps, qui se manifeste par des papules blanchâtres et rugueuses.', 'On le trouve dans toute l''Europe, à l''exception de zones telles que la péninsule ibérique, le bassin adriatique, la Grèce et le nord de la Scandinavie. Les régions d''Europe orientale, où son habitat s''étend jusqu''en Asie, sont également nombreuses. En Pologne, on trouve le Gardon dans toutes les eaux douces, y compris les rivières, les lacs et les étangs, sauf dans les zones montagneuses. En outre, on le trouve également dans les eaux côtières de la mer Baltique'),
(12, 'Hotu', 'Le poisson Hotu est une espèce de poisson d''eau douce au corps arrondi et à la bouche caractéristique en forme de museau. Sa coloration peut varier, avec souvent des taches jaunes, orange ou rouges sur un fond argenté. Il vit principalement dans les eaux calmes telles que les lacs, les étangs et les rivières à courant libre', 'Le corps du poisson Hotu est allongé, recouvert de grandes écailles distinctes de couleur gris argenté, avec un dos sombre de couleur vert acier. Le ventre du poisson est blanc. L''ouverture de la bouche est située à la base du museau proéminent et le poisson possède également de grandes ouvertures nasales distinctes. Les nageoires dorsale et caudale sont brunes ou gris foncé, tandis que les nageoires ventrale, pectorale et anale sont de couleur orange à rouge', 'Les Hotus frayent dans la seconde moitié du mois d''avril, dans des zones peu profondes avec des fonds rocheux et un débit d''eau rapide. Pendant le frai, on peut souvent voir les poissons sauter au-dessus de la surface de l''eau. Les mâles se caractérisent par la présence d''une éruption de frai', 'L''Hotu est répandu en Europe centrale et dans le nord-ouest de l''Asie. Il préfère les rivières rapides de piémont, en particulier dans la région de l''ombre et du barbeau. Il vit en grands groupes dans des endroits peu profonds (jusqu''à 2 mètres) avec un courant rapide et un substrat de pierres, de sable ou de limon légèrement perturbé'),
(13, 'Carpe argentée', ' La carpe argentée est un poisson d''eau douce de la famille des carpes. Son corps allongé est recouvert d''écailles argentées. Le dos est plus foncé que le ventre. Les nageoires sont transparentes ou légèrement colorées. La Carpe argentée se trouve dans de nombreux lacs et rivières européens. Il préfère les eaux calmes avec un fond bien oxygéné. C''est un poisson grégaire, qui vit en groupe. Il se nourrit principalement de larves d''insectes aquatiques, de crustacés et d''autres petits organismes. La carpe argentée est une espèce de pêche populaire, appréciée pour sa chair savoureuse et ses valeurs sportives', 'La carpe argentée a un corps allongé et très fortement aplati. Sa tête est large et l''ouverture de la bouche est située au sommet. Les yeux sont relativement petits et situés sous la ligne de symétrie du corps. Le dos du tope est vert-gris, le ventre est gris argenté et les flancs prennent une couleur gris argenté qui s''assombrit avec l''âge. Les nageoires paires ont une teinte jaunâtre et les nageoires pectorales n''atteignent pas la base des nageoires ventrales', 'La Carpe argentée, espèce exotique, ne se reproduit pas dans les eaux polonaises. Tous les spécimens de cette espèce proviennent de l''élevage, où ils sont élevés dans des centres d''élevage spéciaux', 'La Carpe argentée est originaire de Chine et de Sibérie orientale, présente depuis le bassin du fleuve Amour au nord jusqu''au bassin du fleuve Xi Jiang au sud. Elle a également été introduite dans diverses parties du monde, y compris en Europe, à des fins d''élevage et de sport'),
(14, 'Carpe à grosse tête', 'La truite, ou truite de l''Amour, est une espèce de poisson d''eau douce de la famille des carpes. Son corps est fortement allongé, aplati latéralement et recouvert de grandes écailles. Elle se caractérise par une coloration contrastée, qui comprend une base argentée avec des taches sombres. Les adultes peuvent atteindre des tailles impressionnantes, jusqu''à 1 mètre de long. Le brosme de la truite est originaire de Chine et de Sibérie orientale. Il est présent dans le bassin versant du fleuve Amour au nord et dans le bassin versant du fleuve Xi Jiang au sud. C''est un poisson de souche qui préfère les eaux peu profondes et bien oxygénées telles que les lacs, les rivières et les réservoirs endigués. Il est herbivore et se nourrit principalement de plantes aquatiques', 'Le corps de la Carpe à grosse tête est fortement aplati latéralement, semblable à celui de la Carpe à grosse tête, mais se distingue par une tête plus large et des yeux placés plus bas. Sa coloration est gris doré avec un motif marbré. Les nageoires pectorales atteignent la base des nageoires ventrales', 'En Pologne, l''ornithorynque tacheté n''existe pas à l''état naturel. Il s''agit d''une espèce étrangère qui ne se reproduit pas dans nos eaux. Tous les spécimens de l''ornithorynque argenté proviennent de l''élevage avec du matériel élevé dans des centres d''élevage', 'L''ornithorynque blanc est originaire de Chine et de Sibérie orientale, du bassin du fleuve Amour au nord jusqu''au bassin du fleuve Xi Jiang au sud. Il a également été introduit dans diverses parties du monde, y compris en Europe, à des fins d''élevage et de sport.'),
(15, 'Rotengle', 'Le Rotengle est un poisson d''eau douce au corps allongé, légèrement aplati et aux écailles fines. Sa coloration est généralement argentée ou olive, avec des taches noires sur les flancs. Il préfère une variété de milieux aquatiques tels que les rivières, les lacs et les étangs. C''est un prédateur qui se nourrit d''autres poissons, de crustacés et d''insectes aquatiques. Le Rotengle est actif et solitaire. Il est apprécié pour la pêche à la ligne et a une valeur écologique pour l''équilibre du milieu aquatique', 'Le corps du Rotengle est légèrement aplati sur les côtés et entièrement recouvert de fines écailles. Le dos est de couleur sombre, les flancs présentent des tons argentés et dorés et le ventre est blanc. Les nageoires se distinguent par leur belle coloration rouge intense. La base de la nageoire dorsale est nettement décalée vers l''arrière, dépassant la base des nageoires ventrales. L''iris des yeux du Rotengle est orange, ce qui ajoute à sa beauté', 'Le frai du Rotengle commence dans la deuxième moitié du mois de mai et dure environ deux semaines. Les œufs, qui sont collants, sont pondus sur la végétation aquatique. Pendant le frai, les mâles présentent une éruption cutanée sur la tête et le haut du corps, bien qu''elle soit moins intense que chez le Gardon', 'On le trouve dans les eaux de la plupart des régions d''Europe, à l''exception de la péninsule ibérique, de l''Écosse, du nord de la Scandinavie et de la Crimée. Il préfère les rivières ou les lacs de plaine à écoulement libre, fortement végétalisés et à fond vaseux. C''est un poisson en bancs, qui forme souvent de petits groupes et reste plus près de la surface dans les baies chaudes et calmes. Le Rotengle se prête également à la reproduction dans de petits étangs privés');

-- --------------------------------------------------------

--
-- Table structure for table `fishdesc_pl`
--

CREATE TABLE `fishdesc_pl` (
  `fishID` smallint(6) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `desc` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `chara` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `reprod` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL,
  `appear` varchar(2000) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `fishdesc_pl`
--

INSERT INTO `fishdesc_pl` (`fishID`, `name`, `desc`, `chara`, `reprod`, `appear`) VALUES
(1, 'Amur biały', 'Amur biały to duża ryba słodkowodna z rodziny karpiowatych, charakteryzująca się długim, wydłużonym ciałem i szeroką głową. Dorosłe osobniki mogą osiągać imponującą długość nawet ponad 2 metry. Ich ubarwienie jest srebrzyste lub szare, a boki ciała często mają złociste lub żółte odcienie. Amur biały jest endemitem dorzecza Amuru w Azji Wschodniej, występując w rzekach o wartkim nurcie i kamienistym dnie. Jest cenioną rybą sportową i stanowi ważny gatunek w rybołówstwie.', 'Ciało wydłużone, smukłe, nieznacznie spłaszczone bocznie. Pokryte dużymi łuskami, z widocznym ciemniejszym obrzeżem na tylnej krawędzi. Grzbiet ma intensywnie zielony do czarnozielonego koloru, boki mają odcień oliwkowozielony, a brzuch jest jaśniejszy. Głowa szeroka, z tępo zakończonym pyskiem i dużym otworem gębowym, otoczonym mięsistymi wargami.', 'Amur biały jest obcym gatunkiem w Polsce. Nie rozmnaża się naturalnie w naszych wodach. Wszystkie osobniki pochodzą z zarybień, gdzie są hodowane w specjalnych ośrodkach.', 'Amur biały jest pochodzenia chińskiego i występował pierwotnie w dorzeczu rzeki Amur, choć dokładny zasięg jest trudny do ustalenia. Gatunek ten jest hodowany od X wieku i został szeroko aklimatyzowany w wielu krajach, w tym w Europie od 1950 roku. W Polsce został wprowadzony od 1964 roku, a w kolejnych latach rozprzestrzenił się również w rzekach. Znajduje się na terenach takich jak Ameryka Północna, Australia, Indie, Dania, Rosja, Ameryka Południowa, Afryka Zachodnia i Południowa, oraz Kazachstan. Amur biały żyje w stadach liczących kilka do kilkunastu osobników i zimuje blisko dna.'),
(2, 'Boleń', 'Boleń to słodkowodna ryba z rodziny łososiowatych, charakteryzująca się charakterystycznym srebrzystym ubarwieniem ciała. Jest to ryba o średniej wielkości, osiągająca zazwyczaj długość od 40 do 70 cm, choć niektóre osobniki mogą przekraczać metr. Bolen preferuje szybko płynące rzeki o dobrze natlenionych wodach. Jest drapieżnikiem, polującym głównie na małe ryby, ale także na skorupiaki, owady wodne i larwy. Jego smukłe ciało i silne mięśnie pozwalają mu na dynamiczne i precyzyjne poruszanie się w wodzie, co czyni go wyjątkowo sprawny w łowieniu swojej zdobyczy.', 'Ciało bolenia jest wydłużone i delikatnie bocznie spłaszczone. Głowa jest spiczasta, a oczy niewielkie. Charakterystyczną cechą jest duży, głęboko wcięty otwór gębowy, którego krawędź sięga poza gałkę oczną. Tęczówki oczu mają żółty odcień. Grzbiet ryby ma ciemny kolor, przypominający stalowoszary lub oliwkowozielony. Boki ciała są srebrzyste, lśniące delikatnym odcieniem żółtawym. Brzuch ma srebrzystobiały kolor. Płetwy brzuszne i piersiowe są czerwonoszare.', 'Tarło bolenia odbywa się wczesną wiosną, zazwyczaj od końca marca do maja. Odbywa się w płytkich wodach o szybkim nurcie, którym towarzyszy żwirowe lub kamieniste dno. U samców można zaobserwować wysypkę tarłową na pokrywach skrzelowych oraz na płetwach piersiowych. Ikra bolenia jest składana na kamieniach, gdzie przylega do powierzchni podłoża.', 'Występuje głównie w Europie Środkowej na wschód od Renu oraz na północ od Dunaju, sięgając aż do obszarów Uralu i Morza Kaspijskiego. Spotyka się go również w południowej Skandynawii. Wśród podgatunków bolenia znajduje się Aspius aspius taeniatus, który jest rybą wędrowną i zamieszkuje południowe rejonu Morza Kaspijskiego. Klen występuje w większych i średnich rzekach nizinnych, jak również w zbiornikach zaporowych. Można go spotkać zarówno w wodach płynących, jak i w większych jeziorach i zatokach. Młode osobniki klena tworzą małe stada, zazwyczaj w pobliżu brzegów. W miarę dorastania, stają się bardziej samotnicze, trzymając się głównego nurta rzeki.'),
(3, 'Certa', 'Certa, to gatunek ryby z rodziny karpiowatych. Ma wydłużone ciało pokryte dużymi łuskami i srebrzyste ubarwienie z niebieskawym połyskiem. Charakterystyczną cechą certy jest duża, zaokrąglona głowa z szerokim otworem gębowym. Płetwy certy są dobrze rozwinięte, a płetwy grzbietowa i ogonowa mają szare lub niebieskawe zabarwienie. Certy występują w różnych typach wód, takich jak rzeki, jeziora i stawy, gdzie tworzą liczne stada.', 'Ryba o silnie spłaszczone bocznym ciele, wydłużonym kształcie i szaroniebieskim ubarwieniu. Jej brzuch jest biały z srebrzystym połyskiem. Charakterystyczną cechą certy jest duży otwór gębowy z grubymi wargami, umieszczony w dolnej części wystającego pyska. Na grzbiecie, od końca głowy do nasady płetwy grzbietowej, biegnie wąski pas nieosłoniętej łuskami skóry. Płetwy certy są jasnożółte, z wyjątkiem płetwy grzbietowej i ogonowej, które mają jasnoszary kolor.', 'Tarło porcyjne certy trwa od drugiej połowy maja do końca czerwca, w zależności od regionu geograficznego. Proces rozmnażania odbywa się stadnie w płytkich wodach rzek o piaszczystym i żwirowym dnie. W tym okresie samce certy przybierają intensywne ciemne kolory. Na ich głowie, grzbiecie i bokach ciała pojawia się charakterystyczna wysypka tarłowa.', 'Certy występują w zlewiskach Morza Północnego na wschód od Renu, Bałtyckiego, Azowskiego, Czarnego i Kaspijskiego, oraz jeziora Ładoga i Pejpus. Zamieszkują dolne partie rzek i przybrzeżne wody morskie. Podczas tarła podejmują dalekie wędrówki w górę rzek, docierając do krainy lipienia.'),
(4, 'Jaź', 'Jaź to ryba słodkowodna z rodziny karpiowatych, występująca w Europie i Azji. Ma wydłużone i spłaszczone ciało pokryte drobnymi łuskami oraz charakterystycznie skośny otwór gębowy umiejscowiony na dolnej stronie ciała. Preferuje ciepłe, płytkie wody, takie jak stawy, zbiorniki wodne i rzeki o wolnym nurcie.', 'Jaź ma smukłe, wydłużone ciało, które jest spłaszczone na boki. Jej skóra jest pokryta delikatnymi, białosrebrnymi łuskami, a grzbiet ma ciemne zabarwienie. Płetwy mają intensywny kolor pomarańczowo-czerwony, a oczy wyraźnie żółto-pomarańczowe. Zwraca uwagę również wklęsła krawędź płetwy odbytowej.', 'Wiosną, między kwietniem a majem, jaź rozpoczyna okres tarła. Ikra jest składana na roślinności wodnej, piasku, kamieniach i zatopionych gałęziach. Samce jaźi w czasie tarła wykształcają charakterystyczną wysypkę tarłową.', 'Europa na wschód od Renu i na północ od Alp, oraz Azja. Występuje w wodach płynących, rzadziej stojących, oraz w słonawych wodach przy ujściach rzek. Żyje stadnie.'),
(5, 'Jelec', 'Jelec to słodkowodna ryba z rodziny karpiowatych, wyróżniająca się charakterystycznym, żółtym ubarwieniem ciała. Jest to ryba o średniej wielkości, zazwyczaj osiągająca długość od 15 do 30 cm. Jelec preferuje spokojne i dobrze natlenione wody, takie jak stawy, jeziora i wolno płynące rzeki. Jest drapieżnikiem i odżywia się głównie owadami wodnymi, skorupiakami i larwami. Jelec słynie z aktywności i zwinności w wodzie, co czyni go popularnym celem wędkarskim.', 'Ciało jelca jest wydłużone i wysmukłe, o owalnym przekroju. Mała głowa posiada zaostrzony pysk, a otwór gębowy skierowany jest ku dołowi. Grzbiet jelec ma ciemny, stalowoszary kolor, który dodatkowo jest ozdobiony metalicznym połyskiem. Boki ciała są srebrzyste, natomiast brzuch ma delikatny odcień białożółtawy. Zarówno płetwa grzbietowa, jak i ogonowa, mają ciemnoszary kolor.', 'Tarło jelca odbywa się w stadach na wiosnę, zazwyczaj od kwietnia do maja. Wybierane są wody o szybkim nurcie, często wśród roślinności wodnej. Najczęściej ikra jelec jest składana w miejscach o piaszczystym lub żwirowatym dnie. W stadzie tarłaków, liczebniejszą grupę stanowią samce.', 'Jelec występuje w różnych strumieniach, rzekach i jeziorach Europy, z wyjątkiem Półwyspu Iberyjskiego, Bałkanów, części półwyspu Apenińskiego, Szkocji i północnej Skandynawii. Rzadko można go również spotkać w Bałtyku, głównie w zatokach o niskim poziomie zasolenia. Jelec preferuje życie w stadach.'),
(6, 'Karaś srebrzysty', 'Karas srebrzysty to słodkowodna ryba z rodziny karpiowatych. Ma wydłużone, lekko spłaszczone ciało o srebrzystym lub srebrzystozielonym ubarwieniu. Osiąga przeciętnie 10-20 cm długości. Jest stadną rybą, preferującą płytkie i dobrze natlenione wody. Żywi się głównie roślinnością wodną i drobnymi organizmami. Jest ceniony w rybołówstwie rekreacyjnym i hodowli, a także pełni ważną rolę ekologiczną w ekosystemach wodnych.', 'Ciało karasia srebrzystego jest pokryte gładkimi łuskami, które nadają mu srebrzystoszary kolor z delikatnym zielonym połyskiem. Brzuch ryby jest biały. Płetwy grzbietowa i ogonowa występują w różnych odcieniach szarości. Czasem płetwy parzyste i odbytowa mają zaróżowione nasady.', 'Tarło porcyjne (2, 3-krotne) karasia srebrzystego odbywa się w płytkich, ciepłych i zarośniętych przybrzeżnych strefach zbiorników wodnych. Ikra o zielonkawym kolorze jest przyklejana do miękkiej roślinności wodnej.', 'Występuje głównie w stojących i wolno płynących wodach o miękkim, gęsto porośniętym roślinnością podłożu. Naturalnie spotykany we wschodniej Azji od basenu Amuru po Syberię. Obecnie został sztucznie wprowadzony do wielu wód europejskich.'),
(7, 'Karp', 'Karp to słodkowodna ryba z rodziny karpiowatych, charakteryzująca się charakterystycznym ubarwieniem ciała w różnych odcieniach, zwykle od złocistego do brązowego. Jest to ryba o średniej wielkości, zazwyczaj osiągająca długość od 30 do 90 cm, choć niektóre osobniki mogą być znacznie większe. Karp preferuje spokojne i dobrze zarośnięte wody, takie jak stawy, jeziora i rzeki o wolnym nurcie. Jest rybą wszystkożerną, żywiącą się roślinami wodnymi, bezkręgowcami i detrytusem. Karp jest znany ze swojej wytrzymałości i walczącej natury, co sprawia, że jest popularnym celem wędkarskim na całym świecie.', 'Karp wyróżnia się na tle karasia pospolitego i karasia srebrzystego poprzez obecność dwóch długich wąsików o jasnym zabarwieniu oraz dwóch krótszych, ciemniejszych wąsików, które są widoczne w kącikach po obu stronach otworu gębowego.', 'W polskich wodach naturalnych karp nie rozmnaża się naturalnie. Ryby występujące w naszych wodach pochodzą z introdukcji. Rozród odbywa się w specjalnych ośrodkach hodowlanych, w płytkich i zarośniętych stawach, zazwyczaj na przełomie maja i czerwca. Alternatywnie, ikrę od samic oraz nasienie od samców można pozyskać w kontrolowanych warunkach.', 'Zlewiska mórz Czarnego, Kaspijskiego i Aralskiego są naturalnym środowiskiem karpa. Jednak liczne odmiany hodowlane tej ryby są rozpowszechnione zarówno w hodowli, jak i w wodach otwartych niemal na całym świecie. Karp występuje w różnych środowiskach, takich jak głębokie rzeki, starorzecza, odnogi rzek, rozlewiska, jeziora i stawy.'),
(8, 'Kleń', 'Kleń to słodkowodna ryba z rodziny karpiowatych, posiadająca charakterystyczne żółte ubarwienie ciała. Jest to ryba średniej wielkości, osiągająca zazwyczaj długość od 15 do 30 cm. Kleń preferuje spokojne i dobrze natlenione wody, takie jak stawy, jeziora i wolno płynące rzeki. Jest drapieżnikiem, polującym na owady wodne, skorupiaki i larwy.', 'Ciało jest wydłużone i walcowate, pokryte dużymi, ciemnymi łuskami. Płetwa grzbietowa i ogonowa mają odcień od ciemnozielonego do szarozielonego. Pozostałe płetwy mają kolor czerwonopomarańczowy lub czerwony. Krawędź płetwy odbytowej jest wypukła.', 'Kleń przystępuje do tarła na przełomie maja i czerwca. Tarło odbywa się w dobrze nasłonecznionych wodach o piaszczystym i żwirowym dnie. Ryba rozpoczyna tarło w południe. Kleista ikra jest składana i przykleja się do podłoża.', 'Występuje w Europie, z wyjątkiem wysp Morza Śródziemnego, Portugalii, Irlandii, Islandii, północnej Szkocji oraz dorzecza Wołgi, Uralu, Tygrysu i Eufratu. W zasadzie jest rybą słodkowodną, jednak można go spotkać także w jeziorach, zbiornikach zaporowych i zatokach morskich. Kleń nie podejmuje większych wędrówek.'),
(9, 'Krąp', 'Krąp to słodkowodna ryba z rodziny karpiowatych, charakteryzująca się krągłym, wyżłobionym ciałem. Jest to ryba o umiarkowanej wielkości, osiągająca zwykle długość od 15 do 30 cm. Krąp występuje głównie w spokojnych wodach, takich jak stawy, jeziora i wolno płynące rzeki. Jest roślinożerna i odżywia się głównie roślinami wodnymi, glonami i detrytusem. Krąp jest popularnym gatunkiem wędkarskim ze względu na swoje walory kulinarne i atrakcyjną walkę na wędkę.', 'Ciało krąpa jest srebrzyste i mocno spłaszczone bocznie, z łukowatym, ciemniejszym grzbietem. Płetwy grzbietowa, ogonowa i odbytowa mają stalowe lub czarne zabarwienie. Płetwy parzyste, takie jak piersiowe i brzuszne, są różowoszare, a u nasady czerwone. Nasada płetwy grzbietowej znajduje się pomiędzy płetwami brzusznymi a odbytową. Wszystkie płetwy mają ostre zakończenie. Ponad źrenicą oka można zauważyć zielonkawą plamkę, a tęczówka oka jest srebrzysta.', 'Krąp, podobnie jak inne gatunki ryb, przystępuje do tarła porcyjnego. Pierwszy raz odbywa się to na przełomie maja i czerwca. Krąp składa ikrę na podłożu roślinnym, często na zalanych łąkach. Jaja są przyklejane do roślin, gdzie się rozwijają.', 'Krąp występuje w Europie, na obszarze na północ od Pirenejów. Jej zasięg sięga południowo-wschodniej Anglii i południowej Skandynawii. Można ją spotkać w dolnych biegach rzek, stawach, jeziorach, zbiornikach zaporowych, starorzeczach i rozlewiskach.'),
(10, 'Leszcz', 'Leszcz to słodkowodna ryba z rodziny karpiowatych, charakteryzująca się srebrzystym ubarwieniem ciała. Jest to ryba o umiarkowanej wielkości, osiągająca zazwyczaj długość od 20 do 40 cm. Leszcz preferuje spokojne i dobrze natlenione wody, takie jak stawy, jeziora oraz średnie i duże rzeki. Jest rybą stadną i żywi się głównie roślinnością wodną, skorupiakami i larwami owadów.', 'Ciało leszcza jest mocno bocznie spłaszczone, pokryte srebrzystymi łuskami, a grzbiet ma ciemniejszy odcień. Starsze osobniki mogą mieć złocisty lub brunatny kolor. Nasada płetwy grzbietowej znajduje się na linii płetw brzusznych, a płetwy piersiowe mają niebieskoszary kolor.', 'Leszcze odbywają tarło w dużych stadach, zazwyczaj w drugiej połowie maja, głównie w godzinach porannych. Samice składają ikrę na roślinach wodnych, w płytkiej wodzie. U samców można zaobserwować wyraźną wysypkę tarłową.', 'Występuje w większości Europy i zachodniej Azji. Brak go na Półwyspie Iberyjskim, w zachodniej Francji, południowej części Półwyspu Bałkańskiego, północnej Szkocji i północnej Skandynawii. Jest również obecny w Syberii poza swoim naturalnym zasięgiem. W Polsce jest powszechny w dużych jeziorach, rzekach nizinnych i w przybrzeżnej strefie Bałtyku. W Europie można wyróżnić dwa podgatunki leszcza: Abramis brama orientalis z rejonu Morza Kaspijskiego i Aralskiego oraz Abramis brama danubu z dorzecza Dunaju. Leszcze tworzą stadne społeczności w dolnych odcinkach dużych rzek, jeziorach i zbiornikach zaporowych, preferując głębokie wody z bujną roślinnością. W niektórych zbiornikach populacje leszcza są bardzo liczne, co może prowadzić do karłowacenia ryb.'),
(11, 'Płoć', 'Płoć posiada wydłużone, lekko spłaszczone ciało pokryte drobnymi łuskami. Jej ubarwienie jest zazwyczaj srebrzyste, a na bokach można dostrzec delikatne odcienie. Jest to ryba o średniej wielkości, osiągająca przeciętnie od 15 do 30 cm długości. Płoć preferuje ciepłe, płytkie wody, takie jak stawy, zbiorniki wodne i rzeki o wolnym nurcie. Jest aktywna i towarzysko usposobiona, często tworząca liczne grupy.', 'Ciało płoci jest całkowicie pokryte łuskami. Grzbiet ciała jest ciemny, boki mają srebrzysty odcień, a brzuch jest biały. Płetwy grzbietowa i ogonowa są ciemnoszare z delikatnymi czerwonymi przebarwieniami. Płetwy piersiowe są czerwonopomarańczowe. Nasada płetwy grzbietowej znajduje się bezpośrednio nad nasadą płetw brzusznych. Tęczówka oczu jest czerwona.', 'Płoć rozpoczyna tarło w okresie od kwietnia do maja. Tarło odbywa się w przybrzeżnych strefach zbiorników wodnych lub na płytkich rozlewiskach. Ikra jest przyklejana do podłoża. W czasie tarła u samców na głowie i górnych partiach ciała występuje charakterystyczna wysypka tarłowa, manifestująca się jako białawe, szorstkie grudki.', 'Występuje w całej Europie, z wyjątkiem obszarów takich jak Półwysep Iberyjski, zlewisko Adriatyku, Grecja oraz północna Skandynawia. Wieloma miejscami występowania są również obszary wschodniej Europy, gdzie jej siedlisko sięga daleko w głąb Azji. W Polsce płoć można spotkać we wszystkich wodach słodkich, w tym rzekach, jeziorach i stawach, z wyjątkiem obszarów górskich. Ponadto, można ją znaleźć także w wodach przybrzeżnych Bałtyku.'),
(12, 'Świnka', 'Ryba świnka to gatunek ryby słodkowodnej o zaokrąglonym ciele i charakterystycznym pyszczku przypominającym ryjkę. Jej ubarwienie może być różnorodne, często występują żółte, pomarańczowe lub czerwone plamki na srebrzystym tle. Żyje głównie w spokojnych wodach, takich jak jeziora, stawy i rzeki o wolnym nurcie', 'Ciało ryby świnki jest wydłużone, pokryte dużymi i wyraźnymi łuskami o srebrzystoszarym odcieniu, z ciemnym, stalowozielonym grzbietem. Brzuch ryby jest biały. Otwór gębowy znajduje się w dolnej części wystającego pyska, a ryba posiada również wyraźne, duże otwory nosowe. Płetwy grzbietowa i ogonowa mają kolor brunatny lub ciemnoszary, natomiast płetwy brzuszne, piersiowe i odbytowa są w odcieniu pomarańczowym do czerwonego.', 'Świnki przystępują do tarła w drugiej połowie kwietnia, w płytkich miejscach z kamienisto-żwirowym dnem i szybkim przepływem wody. Podczas tarła często można zaobserwować, jak ryby wyskakują ponad powierzchnię wody. Samce charakteryzują się występowaniem wysypki tarłowej.', 'Świnka jest rozpowszechniona w Europie środkowej oraz północno-zachodniej Azji. Preferuje bystre, podgórskie rzeki, szczególnie w obszarze występowania lipienia i brzany. Żyje w dużych grupach w płytkich miejscach (do 2 metrów) o szybkim nurcie i podłożu z kamieni, piasku lub lekko zaburzonego mułu.'),
(13, 'Tołpyga biała', 'Tołpyga biała to słodkowodna ryba z rodziny karpiowatych. Ma wydłużone ciało, pokryte srebrzystymi łuskami. Grzbiet jest ciemniejszy niż brzuch. Płetwy są przezroczyste lub lekko zabarwione. Tołpyga biała występuje w wielu europejskich rzekach i jeziorach. Preferuje spokojne wody o dobrze natlenionym dnie. Jest rybą stadną, żyjącą w grupach. Odżywia się przede wszystkim larwami owadów wodnych, skorupiakami i innymi drobnymi organizmami. Tołpyga biała jest popularnym gatunkiem wędkarskim, cenionym ze względu na smaczne mięso i sportowe wartości.', 'Tołpyga biała ma wydłużone i bardzo mocno spłaszczone ciało. Jej głowa jest duża, a otwór gębowy znajduje się u góry. Oczy są stosunkowo małe i umieszczone poniżej linii symetrii ciała. Grzbiet tołpygi jest zielonoszary, brzuch srebrzysty, a boki przybierają srebrzystoszary kolor, który ciemnieje wraz z wiekiem. Płetwy parzyste mają żółtawy odcień, a płetwy piersiowe nie sięgają do nasady płetw brzusznych.', 'Tołpyga biała, będąc gatunkiem obcym, nie rozmnaża się w polskich wodach. Wszystkie osobniki tego gatunku pochodzą z zarybień, gdzie są wyhodowane w specjalnych ośrodkach zarybieniowych.', 'Tołpyga biała wywodzi się z Chin i wschodniej Syberii, występuję od dorzecza rzeki Amur na północy po dorzecze rzeki Xi Jiang na południu. Została również introdukowana w różnych częściach świata, w tym w Europie, w celach hodowlanych i sportowych.'),
(14, 'Tołpyga pstra', 'Tołpyga pstra lub tołpyga amurska, to gatunek ryby słodkowodnej z rodziny karpiowatych. Jej ciało jest mocno wydłużone, bocznie spłaszczone i pokryte dużymi łuskami. Charakteryzuje się kontrastowym ubarwieniem, które obejmuje srebrzystą bazę z ciemnymi plamkami. Dorosłe osobniki mogą osiągać imponujące rozmiary, sięgając nawet 1 metra długości. Tołpyga pstroa jest rodzimym gatunkiem w Chinach i wschodniej Syberii, występując w zlewisku rzeki Amur na północy oraz w zlewisku rzeki Xi Jiang na południu. Jest rybą stadną i preferuje płytkie i dobrze natlenione wody, takie jak jeziora, rzeki i zbiorniki zaporowe. Jest roślinożerna, żywiąc się głównie roślinami wodnymi.', 'Ciało tołpygi pstrej jest silnie spłaszczone bocznie, podobnie jak u tołpygi białej, ale wyróżnia się większą głową i oczy umiejscowionymi niżej. Jej ubarwienie jest złotawoszare z marmurkowym wzorem. Płetwy piersiowe sięgają do nasady płetw brzusznych.', 'W polskich warunkach tołpyga pstra nie występuje naturalnie. Jest to gatunek obcy, który nie rozmnaża się w naszych wodach. Wszystkie osobniki tołpygi pstrej pochodzą z zarybień materiałem wyhodowanym w ośrodkach zarybieniowych.', 'Tołpyga biała wywodzi się z Chin i wschodniej Syberii, występuję od dorzecza rzeki Amur na północy po dorzecze rzeki Xi Jiang na południu. Została również introdukowana w różnych częściach świata, w tym w Europie, w celach hodowlanych i sportowych.'),
(15, 'Wzdręga', 'Wzdręga to ryba słodkowodna o wydłużonym, lekko spłaszczonym ciele i drobnych łuskach. Jej ubarwienie jest zazwyczaj srebrzyste lub oliwkowe, z czarnymi plamkami na bokach. Preferuje różnorodne środowiska wodne, takie jak rzeki, jeziora i stawy. Jest drapieżnikiem, polującym na inne ryby, skorupiaki i owady wodne. Wzdręga jest aktywna i samotnicza. Jest popularna w wędkarstwie i ma wartość ekologiczną dla zachowania równowagi w środowisku wodnym.', 'Ciało wzdręgi jest lekko spłaszczone na boki i całkowicie pokryte drobnymi łuskami. Grzbiet ma ciemne ubarwienie, boki prezentują srebrzysto-złotawe odcienie, a brzuch jest biały. Płetwy wyróżniają się intensywnym, pięknym czerwonym zabarwieniem. Nasada płetwy grzbietowej jest wyraźnie przesunięta ku tyłowi, wykraczając poza nasadę płetw brzusznych. Tęczówka oczu wzdręgi jest pomarańczowa, dodając jej uroku.', 'Tarło wzdręgi rozpoczyna się w drugiej połowie maja i trwa przez około 2 tygodnie. Ikra, która jest lepka, składana jest na roślinności wodnej. Podczas tarła samce wzdręgi wykazują wysypkę tarłową na głowie i górnej części ciała, choć jest ona mniej intensywna niż u płoci.', 'Występuje w wodach większości obszarów Europy, z wyjątkiem Półwyspu Iberyjskiego, Szkocji, północnej Skandynawii i Krymu. Preferuje nizinne rzeki o wolnym nurcie lub jeziora, które są silnie zarośnięte i mają muliste dno. Jest rybą stadną, często tworzącą małe grupy i przebywającą bliżej powierzchni w ciepłych i spokojnych zatoczkach. Wzdręga nadaje się również do hodowli w małych prywatnych stawkach.');

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
-- Table structure for table `loc_en`
--

CREATE TABLE `loc_en` (
  `locID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `loc_en`
--

INSERT INTO `loc_en` (`locID`, `name`) VALUES
(1, 'oxbow lakes'),
(2, 'lakes and ponds'),
(3, 'water bodies with rich vegetation'),
(4, 'reservoirs'),
(5, 'all types of fast-flowing waters'),
(6, 'migratory fish, inhabits coastal areas of the sea and migrates to upper river parts for spawning.'),
(7, 'sedentary populations live in rivers with a moderately fast current and a sandy-gravel bottom.'),
(8, 'rivers'),
(9, 'large lakes'),
(10, 'upper and middle sections of rivers with a sandy bottom'),
(11, 'streams'),
(12, 'lakes'),
(13, 'all types of freshwater bodies'),
(14, 'shallow ponds'),
(15, 'coastal zones of larger lakes'),
(16, 'overgrown and drying reservoirs'),
(17, 'lowland rivers'),
(18, 'ponds'),
(19, 'shallow, warm waters'),
(20, 'coastal zones of still waters'),
(21, 'river banks and floodplains'),
(22, 'bodies of water with silt-covered bottoms'),
(23, 'overgrown coastal zones of lakes and ponds'),
(24, 'rivers with slow-moving water, except high mountain rivers and streams'),
(25, 'upper sections of rivers with fast current and rocky bedrock'),
(26, 'rivers with slow-flowing or stagnant water'),
(27, 'overgrown coastal zones');

-- --------------------------------------------------------

--
-- Table structure for table `loc_es`
--

CREATE TABLE `loc_es` (
  `locID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `loc_es`
--

INSERT INTO `loc_es` (`locID`, `name`) VALUES
(1, 'lagos en forma de meandro'),
(2, 'lagos y estanques'),
(3, 'cuerpos de agua con abundante vegetación'),
(4, 'embalses'),
(5, 'todos los tipos de aguas de corriente rápida'),
(6, 'pez migratorio, habita en áreas costeras del mar y migra hacia las partes altas de los ríos para desovar.'),
(7, 'las poblaciones sedentarias viven en ríos con corriente moderadamente rápida y fondo de arena y grava.'),
(8, 'ríos'),
(9, 'grandes lagos'),
(10, 'tramos superiores e intermedios de los ríos con fondo arenoso'),
(11, "arroyos"),
(12, "lagos"),
(13, "todo tipo de masas de agua dulce"),
(14, "estanques poco profundos"),
(15, "zonas costeras de lagos más grandes"),
(16, "embalses desbordados y desecados"),
(17, "ríos de tierras bajas"),
(18, "estanques"),
(19, "aguas poco profundas y cálidas"),
(20, "zonas costeras de aguas tranquilas"),
(21, "riberas y llanuras aluviales"),
(22, "masas de agua con fondos cubiertos de limo"),
(23, "zonas costeras cubiertas de lagos y estanques"),
(24, "ríos de aguas lentas, excepto los ríos y arroyos de alta montaña"),
(25, "tramos superiores de ríos con corriente rápida y lecho rocoso"),
(26, "ríos de aguas lentas o estancadas"),
(27, "zonas costeras cubiertas de vegetación");

-- --------------------------------------------------------

--
-- Table structure for table `loc_fr`
--

CREATE TABLE `loc_fr` (
  `locID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `loc_fr`
--

INSERT INTO `loc_fr` (`locID`, `name`) VALUES
(1, 'lacs en forme de méandre'),
(2, 'lacs et étangs'),
(3, 'plans d''eau riches en végétation'),
(4, 'réservoirs'),
(5, 'tous les types d''eaux à courant rapide'),
(6, 'poisson migrateur, habite les zones côtières de la mer et migre vers les parties supérieures des rivières pour se reproduire.'),
(7, 'les populations sédentaires vivent dans des rivières avec un courant modérément rapide et un fond sablo-graveleux.'),
(8, 'rivières'),
(9, 'grands lacs'),
(10, 'parties supérieures et centrales des rivières avec un fond sablonneux'),
(11, 'cours d''eau'),
(12, 'lacs'),
(13, 'tous les types de masses d''eau douce'),
(14, 'étangs peu profonds'),
(15, 'zones côtières des grands lacs'),
(16, 'réservoirs envahis par la végétation et en voie d''assèchement'),
(17, 'rivières de plaine'),
(18, 'étangs'),
(19, 'eaux chaudes et peu profondes'),
(20, 'zones côtières d''eaux calmes'),
(21, 'rives et plaines d''inondation'),
(22, 'masses d''eau dont le fond est recouvert de limon'),
(23, 'zones côtières envahies de lacs et d''étangs'),
(24, 'rivières à faible débit, à l''exception des rivières et ruisseaux de haute montagne'),
(25, 'parties supérieures des rivières à courant rapide et à fond rocheux'),
(26, 'rivières à écoulement lent ou stagnant'),
(27, 'zones côtières envahies par la végétation');

-- --------------------------------------------------------

--
-- Table structure for table `loc_pl`
--

CREATE TABLE `loc_pl` (
  `locID` tinyint(4) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `loc_pl`
--

INSERT INTO `loc_pl` (`locID`, `name`) VALUES
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
(3, 1),
(3, 2),
(12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ptime_en`
--

CREATE TABLE `ptime_en` (
  `protectID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ptime_en`
--

INSERT INTO `ptime_en` (`protectID`, `name`) VALUES
(1, 'In the Vistula River from the Wloclawek Dam to its mouth from 1 September to 30 November,'),
(2, 'In the Vistula River above the Wloclawek Dam and in other rivers from 1 January to 30 June'),
(3, 'from 1st Jan.\r\nto 15 May');

-- --------------------------------------------------------

--
-- Table structure for table `ptime_es`
--

CREATE TABLE `ptime_es` (
  `protectID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ptime_es`
--

INSERT INTO `ptime_es` (`protectID`, `name`) VALUES
(1, "En el río Vístula, desde la presa de Wloclawek hasta su desembocadura, del 1 de septiembre al 30 de noviembre"),
(2, "En el río Vístula por encima de la presa de Wloclawek y en otros ríos del 1 de enero al 30 de junio"),
(3, 'a partir del 1 de enero\r\nhasta el 15 de mayo');

-- --------------------------------------------------------

--
-- Table structure for table `ptime_fr`
--

CREATE TABLE `ptime_fr` (
  `protectID` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ptime_fr`
--

INSERT INTO `ptime_fr` (`protectID`, `name`) VALUES
(1) "Dans la Vistule, du barrage de Wloclawek à l'embouchure, du 1er septembre au 30 novembre"),
(2) "Dans la Vistule en amont du barrage de Wloclawek et dans d'autres cours d'eau, du 1er janvier au 30 juin"),
(3, "au 1er jan.\r\njusqu'au 15 mai");

-- --------------------------------------------------------

--
-- Table structure for table `ptime_pl`
--

CREATE TABLE `ptime_pl` (
  `protectID` tinyint(4) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ptime_pl`
--

INSERT INTO `ptime_pl` (`protectID`, `name`) VALUES
(1, 'W rzece Wiśle od zapory we Włocławku do jej ujścia od 1 września do 30 listopada,'),
(2, 'W rzece Wiśle powyżej zapory we Włocławku i w pozostałych rzekach od 1 stycznia do 30 czerwca'),
(3, 'od 1 sty.\r\ndo 15 maj.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bait_pl`
--
ALTER TABLE `bait_pl`
  ADD PRIMARY KEY (`BaitID`);

--
-- Indexes for table `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`fishID`);

--
-- Indexes for table `fishdesc_pl`
--
ALTER TABLE `fishdesc_pl`
  ADD PRIMARY KEY (`fishID`);

--
-- Indexes for table `loc_pl`
--
ALTER TABLE `loc_pl`
  ADD PRIMARY KEY (`locID`);

--
-- Indexes for table `ptime_pl`
--
ALTER TABLE `ptime_pl`
  ADD PRIMARY KEY (`protectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bait_pl`
--
ALTER TABLE `bait_pl`
  MODIFY `BaitID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fish`
--
ALTER TABLE `fish`
  MODIFY `fishID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fishdesc_pl`
--
ALTER TABLE `fishdesc_pl`
  MODIFY `fishID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `loc_pl`
--
ALTER TABLE `loc_pl`
  MODIFY `locID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ptime_pl`
--
ALTER TABLE `ptime_pl`
  MODIFY `protectID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
