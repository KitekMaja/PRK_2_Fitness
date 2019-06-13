-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2019 at 01:20 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baza`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `idArtikel` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `koda` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `cena` double(10,2) NOT NULL,
  `tk_kategorija` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`idArtikel`, `naziv`, `koda`, `opis`, `cena`, `tk_kategorija`) VALUES
(1, 'Venum Challenger MMA rokavice', 'RokaviceVenum_1', 'Roèno izdelane na Tajskem', 44.00, 4),
(2, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_1', 'Zelena barva', 44.00, 2),
(3, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_2', 'Siva barva', 44.00, 2),
(4, 'Venum Challanger 2.0 rokavice', 'RokaviceVenum_2', 'Roèno izdelane na Tajskem', 47.99, 4),
(5, 'RSN - Whey Protein Isolate 1816g', 'RSNProteini_1', 'RSN Whey Protein Isolate je izdelek najvi?je kakovosti narejen izkljuèno iz èistega sirotkinega izolata.', 49.99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clanek`
--

CREATE TABLE `clanek` (
  `idClanek` int(11) NOT NULL,
  `datumVnosa` date NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `vsebina` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `tk_clanek_uporabnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `clanek`
--

INSERT INTO `clanek` (`idClanek`, `datumVnosa`, `naziv`, `vsebina`, `tk_clanek_uporabnik`) VALUES
(1, '2019-06-03', '10 nasvetov za zdravo življenje', '<h5 align=\"center\">Poskrbite za zdravo prehranjevanje</h5></br>\r\nPa saj to za vas ni nobena novica, kajne? O zdravem prehranjevanju govorijo prav vsi, saj je predpogoj za zdravo življenje. Na ta naèin se lahko izognete številnim kroniènim boleznim, med katere sodijo kardiovaskularna obolenja, diabetes tipa 2 in nekatere vrste raka. Priporoèamo uravnoteženo prehrano, ki naj sestoji iz veliko sadja, zelenjave ter polnozrnatih izdelkov, pa tudi nemastnega mesa, rib in mleènih proizvodov. Izogibajte se predelanim živilom in hitri hrani.\r\n</br>\r\n<h5 align=\"center\">Bodite aktivni vsaj 30 minut na dan</h5></br>\r\n<p>življenje si lahko podaljšate tudi z rednim gibanjem. S tem ne mislimo na kakšno težko, rigorozno vadbo (èeprav vam tudi ta ne bi škodila). Gibanje je lahko tako preprosto kot igra z otroki, sprehod s psom, kolesarjenje, plavanje, tek ali ples. Vse to bo pripomoglo k temu, da bo vaše telo pripravljeno na nove izzive, obenem pa boste prepreèili tudi tveganje za nastanek bolezni srca, kapi, visokega krvnega pritiska in podobno. Tudi kakovost vašega življenja se bo precej izboljšala.</p>\r\n</br>\r\n<h5  align=\"center\">Prenehajte s kajenjem </h5></br>\r\n<p>Kaj sploh še lahko napišemo o tej izredno škodljivi razvadi? S prenehanjem kajenja boste prepreèili številne bolezni in si zagotovili daljše in bolj zdravo življenje.</p>\r\n</br>\r\n<h5 align=\"center\">Smejte se</h5></br>\r\n<p>Z raziskavami so dokazali, da lahko spontan smeh vodi do tega, da bo vaše življenje bolj kakovostno, vi pa boste ob tem (p)ostali zdravi. S smehom naj bi namreè okrepili svoj imunski sistem, zmanjšali krvni pritisk ter odpravili stres ter depresijo.</p>\r\n</br>\r\n<h5 align=\"center\">Zmanjšajte kolièino alkohola</h5></br>\r\n<p>Niè ni narobe s kozarèkom vina na dan. A dolgotrajna zloraba alkohola vsekakor ni najbolj zdrava ideja. S èezmernim pitjem boste namreè spet poveèali možnost za nastanek razlièni bolezni, vse od bolezni jeter, visokega krvnega pritiska, kapi pa do diabetesa in poškodb srca. Poskrbite za zdravo življenje in pazite na to, koliko alkohola spijete.</p>\r\n</br>\r\n<h5  align=\"center\">Poskrbite za zašèito na soncu</h5></br>\r\n<p>Še en super nasvet za zdravo življenje. Kadarkoli ste izpostavljeni soncu, še posebej pa poleti, poskrbite za ustrezno zašèito vaše kože s primerno kremo za sonèenje. Niè ne bo škodilo, èe si boste nadeli tudi klobuk. Ogromno ljudi namreè umre zaradi kožnega raka, ki ga lahko prepreèite na povsem enostaven naèin, s predhodno opisanimi nasveti.</p>\r\n</br>\r\n<h5  align=\"center\">Nauèite se globoko dihati</h5></br>\r\n<p>Veèina ljudi dandanes živi kaotièno in prav niè zdravo življenje, zato ni niè èudnega, da smo vsi preveè obremenjeni in pod stresom. Naše telo pa se proti stresu bori na naèin šbojuj se ali zbeši. Zato prihaja do poveèanega utripa srca, pospešenega dihanja in poveèanega krvnega pritiska. Èim dalj èasa je naše telo podvrženo stresu, tem veèjo škodo lahko le-ta povzroèi.</p>\r\n</br>\r\n<p>Nauèite se globoko dihati in obvladati stres. Zato vam svetujemo, da se vpišete v teèaj joge, kjer se boste nauèili pravilnih tehnik dihanja.</p>\r\n</br>\r\n<h5 align=\"center\">Negujte otroka v sebi</h5></br>\r\n<p>Staranje je povezano tudi s tem, kako stari se poèutite. Z raziskavami so namreè dokazali, da ljudje, ki se poèutijo nekaj let mlajši, kot resnièno so, živijo dalj èasa.  Poèutite se torej mladostno in si zagotovite daljše življenje.</p>\r\n</br>\r\n<h5 align=\"center\">Redno obiskujte zdravnika</h5></br>\r\n<p>Jabolko na dan odganja zdravnika stran.Vsaj tako pravi vsem znan pregovor. Mi vam pa vseeno priporoèamo redne letne obiske zdravnika, ki bo z razliènimi pregledi lahko pravoèasno odkril bolezen in poskrbel, da bo vaše življenje še naprej zdravo.</p>\r\n</br>\r\n<h5  align=\"center\">Poskrbite za kakovostno spanje</h5></br>\r\n<p>Zdravo življenje je odvisno tudi od tega, da spite dobro in dovolj, saj se med spanjem vaše telo obnavlja in pripravlja na izzive, ki jih bo prinesel nov dan.</p>\r\n\r\n<p>Pazite na svoje zdravje. Tudi tako, da upoštevate naše koristne nasvete in želimo vam dolgo in zdravo življenje.</p>', 1),
(2, '2019-06-08', '3 hitri naèini, kako shujšati s toplo vodo', '<b>Verjetno ni pripadnice ženskega spola, ki v nekem trenutku ne bi bila na dieti, hotela pospešiti metabolizma in izboljšati prebave. Gre za scenarij, v katerem se vsaj enkrat v življenju najde marsikatera, in tistih, ki se vsak ponedeljek odloèijo za drugo dieto, ni malo. Rešitev pa je lahko povsem preprosta, saj že s kozarcem tople vode lahko izboljšate poèutje in izgubite kakšen kilogram!</b></br></br></br>\r\n<p>Za vse, ki ste v preteklosti poskusile 1001 dieto, a se nobena ni obnesla in išèete naèin, ki vam bo pomagal izboljšati poèutje in se hitreje znebiti odveènih kilogramov, strokovnjaki svetujejo, da poskusite s pitjem tople vode. Ne le, da ta pospeši prebavo in èisti kožo, ampak pomaga tudi pri hujšanju in boju proti celulitu.</p></br>\r\n<u>Napitek za zjutraj, ki pomaga pri hujšanju in pospeši metabolizem:</u>\r\n<p>kozarec tople vode</p>\r\n\r\n<p>2 žlici limoninega soka</p>\r\n<p>žlica medu</p></br>\r\n<u>Napitek za zjutraj in zveèer, ki stabilizira sladkor v krvi, ustvarja obèutek sitosti:</u>\r\n<p>kozarec tople vode</p>\r\n<p>žlica medu</p>\r\n<p>žlica cimeta</p> \r\n\r\n<p>Spijte polovico kozarca na prazen trebuh zjutraj in ostalo polovico zveèer po veèerji.</p>\r\n\r\n<u>Napitek, ki si ga privošèite tekom dneva in ublaži potrebo po sladicah in izboljša prebavo:</u></br>\r\n<p>kozarec tople vode</p>\r\n<p>žlica limoninega soka</p>\r\n<p>žlica medu</p>\r\n<p>žlica cimeta</p></br>\r\n\r\n<p>Temperatura vode naj bo takšna, da jo boste lahko normalno pili. V kolikor katere od dodanih sestavin ne marate, lahko pijete samo toplo vodo.</p>\r\n', 1),
(3, '2019-06-10', 'Poveèanje mišiène mase, 10 kratkih nasvetov', '\r\n<h5>1.Poveèajte intenzivnost treninga  </h5>\r\n\r\n<p>-poveèanje vzdržljivosti, brez obèutnega poveèanja mišiène mase in moèi (12-15 ponovitev) </p>\r\n<p>-poveèanje mišiène mase in moèi (6-8 ponovitev) </p>\r\n<p>-poveèanje moèi (2-4 ponovitve) </p>\r\n\r\n<p>Najbolj produktiven je trening, ki hkrati vpliva na poveèanje moèi in intenzivnosti. Priporoèljivo je, da se trenira po ciklih, in sicer, da se naèin treninga menja vsaka 2-3 mesece. Po tem obdobju lahko vkljuèimo en teden treninga izkljuèno za moè in nato sledi nadaljevanje novega 2-3 meseènega cikla treninga. </p>\r\n</br>\r\n\r\n<h5>2. Obremenitev dvigujte eksplozivno</h5>\r\n\r\n<p>Kolièina prirasti mišiène mase je sorazmerna s kolièino uporabljene moèi, da se doloèena obremenitev premaga.Moè je definirana kot teža, ki jo dvignete, pomnoža s pospeškom (hitrostjo s katero potiskate tešavzgor, proti uporu). Da bi proizvedli veè moèi, morate poveèati težako, da breme dvigujete kar se da sunkovito (poveèate hitrost dviga, v primerjavi s hitrostjo spusta bremena).</p>\r\n\r\n\r\n</br>\r\n<h5>3. Poudarite negativne ponovitve (spust bremena)</h5>\r\n<p>Rast mišic je odvisna od mišiènega krèenja. Posebej pomembno je, da breme spušèamo poèasi, kontrolirano. Tako dosegamo veè miše napetosti v fazi raztegovanja mišice. Daljše èas oziroma poèasneje kot spušèamo breme, veèja je rast miše mase. </p>\r\n\r\n<p>Najbolj produktiven naèin treninga je poèasen spust in hiter, vendar maksimalno kontroliran dvig. </p>\r\n\r\n\r\n</br>\r\n<h5>4. Pozabite na aerobne aktivnosti</h5>\r\n<p>Aerobna vadba ovira poveèanje moèi ter okrevanje po treningu. Prazni nam zaloge glikogena, kar omejuje napredek v mišièni rasti. </p>\r\n\r\n\r\n</br>\r\n<h5>5. Poèivajte</h5>\r\n<p>Veliko število posameznikov zaradi prevelike želje po èim hitrejšem uspehu dela osnovno napako, trenira neprekinjeno veè dni zapored. Telesu je potrebno zagotoviti dovolj poèitka in regeneracije. Potrebno si je vzeti dovolj dni v tednu za poèitek (2 dni), da si telo odpoèije, obnovi,  da se napolnijo glikogenske zaloge in, da se hormoni (testosteron in kortizol) vrnejo na optimalno raven. </p>\r\n\r\n\r\n</br>\r\n<h5>6. Obèutno poveèajte kalorijski vnos za obdobje treh dni</h5>\r\n<p>Z nizkokalorièno dieto ni mogoèe doseèi pozitivnega nitrogenskega ravnovesja. Potrebno je poveèati kalorijski vnos tri dni v tednu. S tem boste spodbudili mišièno rast in metabolizem. Poveèa se obèutljivost celic na inzulin in napolnijo se glikogenske zaloge. </p>\r\n\r\n\r\n</br>\r\n<h5>7.Poveèajte vnos natrija-soli </h5>\r\n<p>Natrij je izredno pomemben mineral, èeprav je na slabem glasu zaradi vezave vode v mišicah. Mišice potrebujejo natrij za rast, prav tako izboljša odzivnost celic na inzulin. </p>\r\n\r\n\r\n</br>\r\n<h5>8. Riba,riba,riba.....</h5>\r\n<p>Ribe so bogate z beljakovinami in Omega 3 mašèobnimi kislinami. Slednje poveèujejo odzivnost celic na inzulin, kar vpliva na zaloge glikogena. Poveèa se pretok aminokislin v mišice, kar ohranja zaloge glutamina. </p>\r\n\r\n\r\n</br>\r\n<h5>9. Zaužijte beljakovinski napitek sredi noèi</h5>\r\n<p>Rast mišic je odvisna od kaloriènega vnosa. Število obrokov, ki vsebujejo beljakovine je potrebno porazdeliti na veè manjših. V nasprotnem primeru telo ne bo sposobno absorbirati zadostne kolièine beljakovin, presežek pa bo pripeljal do kopièenja mašèobnih oblog. Beljakovinski napitek sredi noèi bo spodbudil anabolni uèinek in prepreèil katabolizem. </p>\r\n\r\n\r\n</br>\r\n<h5>10. Glutamin, kreatin, BCAA </h5>\r\n<p>Glutamin je aminokislina, ki skrbi za dvig odpornosti. Posebej je priporoèljiva, kadar je telo podvrženo stresu zaradi diete in intenzivnega treninga. Kreatin pospeši proces nastajanja ATP, ki je pomemben za rast in vzdržljivost. Aminokisline z razvejano verigo (BCAA) L-levcin, L-izolevcin in L.valin spadajo k esencialnim aminokislinam. BCAA so tako gradnik kot tudi vir signala za pospešeno gradnjo mišiène mase.</p> ', 1),
(4, '2019-06-10', 'uživanje rib za zdrav stil življenja', '- Priporoèamo pestro uživanje rib enkrat do dvakrat tedensko, predvsem kot zamenjavo za rdeèe meso in mesne izdelke;\r\n</br><p>- Ribe imajo ugodno hranilno sestavo, so bogat vir biološko visoko vrednih beljakovin, vitaminov in mineralov in so edinstvene po vsebnosti esencialnih omega3 mašèobnih kislin, ki so pomembne za zdravje srca;</p>\r\n</br><p>- Zlasti manjše ribe, ki jih zaužijemo s kostmi vred, so vir vitamina D, kalcija, fosforja, morske ribe pa tudi joda in selena;</p>\r\n</br><p>- Ribe so lahko prebavljive, z malo vezivnega tkiva ter rahlo celièno strukturo in veljajo za kakovosten in uravnotežen obrok, še posebej v kombinaciji z zelenjavo (npr. blitvo); </p>\r\n</br><p>- Zaradi vseh omenjenih koristi naj bi tedensko zaužili okoli 200 gramov ribjega mesa, od tega polovico mastnih modrih morskih rib;</p>\r\n</br><p>- Najbolj koristne ribje jedi so pripravljene iz svežih ali zamrznjenih rib, prehransko manj primerni so ribji pripravki (npr. panirane ribje palèke);</p>\r\n</br><p>- Vse ribe na trgu morajo glede mikrobiološke in kemijske varnosti ustrezati predpisom, nadzor pa redno izvajajo pristojne inštitucije;</p>\r\n</br><p>- Ribe in ribji izdelki lahko vsebujejo zdravju škodljiva onesnaževala. S pestro izbiro manjših rib (sardela, sardon, skuša, mol, špar, postrv, cipelj, orada, morski list itd.), ki so kratkožive in nižje v prehranjevalni verigi, lahko ta tveganja za zdravje bistveno zmanjšamo. Z morebitnimi škodljivimi onesnaževali so praviloma bolj obremenjene dolgo živeèe, veèje ter roparske ribe;</p>\r\n</br><p>- Ribe in ribji izdelki so za posameznike lahko alergeni, zato morajo biti v skladu z zakonodajo ustrezno oznaèeni.</p>', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `imenapdf`
-- (See below for the actual view)
--
CREATE TABLE `imenapdf` (
`idVaje` int(11)
,`imeVaje` varchar(255)
,`cas` int(3)
,`sets` int(3)
,`rep` int(3)
);

-- --------------------------------------------------------

--
-- Table structure for table `kategorijavaje`
--

CREATE TABLE `kategorijavaje` (
  `idKategorijaVaje` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorijavaje`
--

INSERT INTO `kategorijavaje` (`idKategorijaVaje`, `naziv`) VALUES
(1, 'Cardio'),
(2, 'Rame'),
(3, 'Roke'),
(4, 'Prsa'),
(5, 'Trebuh'),
(6, 'Noge');

-- --------------------------------------------------------

--
-- Table structure for table `kategorije_artiklov`
--

CREATE TABLE `kategorije_artiklov` (
  `idKategorijeArtiklov` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `kategorije_artiklov`
--

INSERT INTO `kategorije_artiklov` (`idKategorijeArtiklov`, `naziv`) VALUES
(1, 'Prehrana'),
(2, 'Oblaèila'),
(3, 'Fitness oprema'),
(4, 'Borilne ve?èine'),
(5, 'Gimnastika/Aerobika'),
(6, 'Indoor/Outdoor ?porti');

-- --------------------------------------------------------

--
-- Table structure for table `meritev`
--

CREATE TABLE `meritev` (
  `idMeritev` int(11) NOT NULL,
  `teza` double NOT NULL,
  `datum` date NOT NULL,
  `tk_meritev_uporabnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meritev`
--

INSERT INTO `meritev` (`idMeritev`, `teza`, `datum`, `tk_meritev_uporabnik`) VALUES
(1, 62, '2019-06-11', 1),
(2, 59, '2019-06-13', 1),
(3, 64, '2019-06-17', 1),
(4, 60, '2019-06-23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meritve`
--

CREATE TABLE `meritve` (
  `idMeritve` int(11) NOT NULL,
  `teza` double NOT NULL,
  `visina` double NOT NULL,
  `datumVnosa` date NOT NULL,
  `tk_meritve_uporabnik` int(11) NOT NULL,
  `cilj` varchar(20) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `meritve`
--

INSERT INTO `meritve` (`idMeritve`, `teza`, `visina`, `datumVnosa`, `tk_meritve_uporabnik`, `cilj`) VALUES
(1, 65, 170, '2019-06-10', 1, 'hujsanje');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `idPlan` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `opisPlana` longtext NOT NULL,
  `tipPlana` varchar(50) NOT NULL,
  `ciljPlana` varchar(50) NOT NULL,
  `datumNastanka` varchar(45) NOT NULL,
  `tk_plan_uporabnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`idPlan`, `naziv`, `opisPlana`, `tipPlana`, `ciljPlana`, `datumNastanka`, `tk_plan_uporabnik`) VALUES
(34, 'Hujšanje', 'Vaj za hujšanje. Predvsem veliko kardia in vaj za noge.', 'Javen', 'Izguba kilogramov', '13.06.2019', 2);

-- --------------------------------------------------------

--
-- Table structure for table `planvaja`
--

CREATE TABLE `planvaja` (
  `idPlanVaja` int(11) NOT NULL,
  `tk_planvaja_plan` int(11) NOT NULL,
  `tk_planvaja_vaja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planvaja`
--

INSERT INTO `planvaja` (`idPlanVaja`, `tk_planvaja_plan`, `tk_planvaja_vaja`) VALUES
(142, 34, 15),
(143, 34, 16),
(144, 34, 17),
(145, 34, 18),
(146, 34, 29),
(147, 34, 30),
(148, 34, 31),
(149, 34, 32);

-- --------------------------------------------------------

--
-- Table structure for table `seznam`
--

CREATE TABLE `seznam` (
  `id` int(11) NOT NULL,
  `Uporabnik_id` int(11) NOT NULL,
  `Clanek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seznam`
--

INSERT INTO `seznam` (`id`, `Uporabnik_id`, `Clanek_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slike`
--

CREATE TABLE `slike` (
  `idSlike` int(11) NOT NULL,
  `imeSlike` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `tk_slike_clanek` int(11) DEFAULT NULL,
  `tk_slike_uporabnik` int(11) DEFAULT NULL,
  `tk_slike_vaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `slike`
--

INSERT INTO `slike` (`idSlike`, `imeSlike`, `tk_slike_clanek`, `tk_slike_uporabnik`, `tk_slike_vaje`) VALUES
(1, 'https://i.guim.co.uk/img/media/9ebfe6eb392f208e944a21d1903b698965d35527/0_0_7360_4417/master/7360.jpg?width=1200&height=630&quality=85&auto=format&fit=crop&overlay-align=bottom%2Cleft&overlay-width=100p&overlay-base64=L2ltZy9zdGF0aWMvb3ZlcmxheXMvdGctZGVmYXVsdC5wbmc&s=edff7a7fac62c140017e4ff2ddbc3053', 2, NULL, NULL),
(2, 'https://images.indianexpress.com/2018/07/fish-sustainanbel-759.jpg', 4, NULL, NULL),
(3, 'https://resize.indiatvnews.com/en/resize/newbucket/715_-/2018/10/healthy-lifestyle-tips-1539427430.jpg', 1, NULL, NULL),
(4, 'https://image.shutterstock.com/image-vector/arm-bicep-strong-hand-icon-260nw-1054690373.jpg', 3, NULL, NULL),
(5, 'slikep/1201540978blank-profile-picture-973461_960_720test.png', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uporabnik`
--

CREATE TABLE `uporabnik` (
  `idUporabnik` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `priimek` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `geslo` varchar(255) NOT NULL,
  `spol` varchar(1) NOT NULL,
  `tip_uporabnika` varchar(255) NOT NULL,
  `google_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uporabnik`
--

INSERT INTO `uporabnik` (`idUporabnik`, `ime`, `priimek`, `email`, `geslo`, `spol`, `tip_uporabnika`, `google_id`) VALUES
(1, 'test', 'test', 'test@test.test', '098f6bcd4621d373cade4e832627b4f6', 'M', 'trener', ''),
(2, 'Maja', 'Kitek', 'maja.kitek@gmail.com', '926b021c23fbd4d79af4144cd5d9113d', 'Z', 'navadni', ''),
(3, 'toni', 'zunec', 'toni.zunec14@gmail.com', 'dce6345ea5b90d6ea53f0ef5c4b4c72c', 'm', 'u', ''),
(4, 'Toni', '?unec', 'toni.zunec@student.um.si', 'dce6345ea5b90d6ea53f0ef5c4b4c72c', 'm', 'navadni', '');

-- --------------------------------------------------------

--
-- Table structure for table `vaje`
--

CREATE TABLE `vaje` (
  `idVaje` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `video` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `cas` int(3) NOT NULL,
  `sets` int(3) NOT NULL,
  `rep` int(3) NOT NULL,
  `tk_vaje_uporabnik` int(11) NOT NULL,
  `tk_vaje_kategorijavaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `vaje`
--

INSERT INTO `vaje` (`idVaje`, `naziv`, `opis`, `video`, `cas`, `sets`, `rep`, `tk_vaje_uporabnik`, `tk_vaje_kategorijavaje`) VALUES
(15, 'Vojaški poskoki', 'Lahko jih uporabite proti koncu vadbe ali kot del krožnega treninga, v vsakem primeru pa bodo v hitrem èasu pospešili vaš srèni utrip. Zlasti so primerni, èe nimate veliko èasa ali èe želite dodatni intenzivnost vaši obièajni vadbi.', 'https://www.youtube.com/embed/swoN7PkJRKc', 2, 5, 0, 1, 1),
(16, 'Skakanje s kolebnico', 'Pri skakanju s kolebnico sodelujejo vse mišice v telesu, vkljuèno s srcem. Z vsakim skokom utrdite zgornji del telesa, roke in noge.', 'https://www.youtube.com/embed/sRbFp957qn4', 3, 4, 0, 1, 1),
(17, 'Poskakovanje levo in desno', 'Prekrižajte levo nogo za desno ob upogibu desnega kolena za 90 stopinj. Desno roko iztegnite in z levo roko zamahnite prek desno noge. <br> Izmenièno menjujte levo in desno ob ponavljanju vaje.', 'https://www.youtube.com/embed/4RuxhVJ4-pg', 0, 7, 8, 1, 1),
(18, 'HIIT', 'HIIT ali slovensko VIIT je visokointenzivni intervalni trening, ki ga sestavljajo kratki intervali energiènih vaj z lastno težo (izpadni koraki, poskoki, vojaški poskoki …), tem pa sledijo kratka obdobja poèitka. HIIT profesionalni in rekreativni športniki radi delajo tudi na kardio napravah in si tako izboljšajo kondicijo in vzdržljivost.', 'https://www.youtube.com/embed/gAo7lJ1R6TM', 20, 0, 0, 1, 1),
(19, 'Kettlebell', 'Idealen trening sestoji iz 8 do 12 ponovitev, lahko zaèetniki v zaèetnih nekaj mesecih hitro in dobro napredujejo pri pridobivanju mišiène mase. Vendar pa mišice nikdar veè ne bodo rasle in se krepile s tako hitrostjo kot na zaèetku. V doloèenem trenutku ste tudi sami dosegli to prvo raven, ko ste ugotovili, da vas enostaven sistem treninga s serijami od 8 do 12 ponovitev ne bo veè daleè pripeljal.', 'https://www.youtube.com/embed/cbHNNHgd340', 0, 5, 12, 1, 3),
(20, 'Kettlebell Press', 'Vajo izvajate samo z eno kettlebell utežjo naenkrat. <br> Idealen trening sestoji iz 8 do 12 ponovitev, lahko zaèetniki v zaèetnih nekaj mesecih hitro in dobro napredujejo pri pridobivanju mišiène mase. Vendar pa mišice nikdar veè ne bodo rasle in se krepile s tako hitrostjo kot na zaèetku. V doloèenem trenutku ste tudi sami dosegli to prvo raven, ko ste ugotovili, da vas enostaven sistem treninga s serijami od 8 do 12 ponovitev ne bo veè daleè pripeljal.', 'https://www.youtube.com/embed/nSVWHDLw8Iw', 0, 10, 5, 1, 3),
(21, 'Mrtvi dvig', 'Najlažje se boste orientirali tako, da pred dvigom stisnete hrbtne mišice-hrbet je popolnoma raven (slika2). Naèin dvigovanja brez razmišljanja in z zvitim hrbtom je napaèen in nevaren (slika 1). To je najveèkrat razlog za poškodbe pri tej vaji. Težava nastane, ker se veliko ljudi ne poèuti sposobne postaviti svoje telo v to pozicijo. Po mojih izkušnjah je razlog za to najveèkrat v ‘’zakrèenih’’ medeniènih mišicah in mišicah zadnje lože. Vzrok je verjetno naš naèin življenja (udobno sedenje na visokih sedišèih), kjer praktièno ni veè potrebe po mobilnosti teh mišic. Ker omenjene mišice niso dovolj podajne, se drža pri the gibih pokvari, posameznik pa ima obèutek, da vaja drugaèe ni izvedljiva. Enako velja za poèep.', 'https://www.youtube.com/embed/MGOWyz47jak', 0, 5, 15, 1, 2),
(22, 'Mrtvi dvig', 'Najlažje se boste orientirali tako, da pred dvigom stisnete hrbtne mišice-hrbet je popolnoma raven (slika2). Naèin dvigovanja brez razmišljanja in z zvitim hrbtom je napaèen in nevaren (slika 1). To je najveèkrat razlog za poškodbe pri tej vaji. Težava nastane, ker se veliko ljudi ne poèuti sposobne postaviti svoje telo v to pozicijo. Po mojih izkušnjah je razlog za to najveèkrat v ‘’zakrèenih’’ medeniènih mišicah in mišicah zadnje lože. Vzrok je verjetno naš naèin življenja (udobno sedenje na visokih sedišèih), kjer praktièno ni veè potrebe po mobilnosti teh mišic. Ker omenjene mišice niso dovolj podajne, se drža pri the gibih pokvari, posameznik pa ima obèutek, da vaja drugaèe ni izvedljiva. Enako velja za poèep.', 'https://www.youtube.com/embed/MGOWyz47jak', 0, 5, 12, 1, 3),
(23, 'German Volume Training', 'Ena vaja. Opravljate po eno vajo za vsak posamezen del telesa. Uporabljate sestavljive uteži, s katerimi obremenite vse glavne mišiène skupine. Ker se pri tem naèinu treninga izvaja omejeno število vaj na teden, je ustrezna in pravilna izbira vaj zelo pomembna za maksimiranje uèinkov tega treninga. 100 ponovitev. Za vsako posamezno vajo se izvaja 10 serij po 10 ponovitev. Vendar pa se ponovitve zaène opravljati s 50- do 60-odstotno moèjo doloèene obremenitve. Naredi se toliko ponovitev, kolikor je mogoèe za vsako od desetih serij. Nobene potrebe ni, da trenirate do konca oz. do prenehanja zaradi pretiravanja. Vedno trenirajte blizu limita. Ko lahko opravite vseh 100 ponovitev oz. 10 serij po 10 ponovitev, naslednjiè dodajte približno 2 kilograma in postopek ponovite. Poèitek. Poèitek med serijami traja približno 60 do 90 sekund. Po internetu krožijo številne oblike \"German Volume\" treninga, tudi kot razlièica \"Vince Gironda\'s 8x8\" treninga in pa nekatere z neverjetno kratkimi èasi poèitka. Vendar pa se izogibajte nasvetom, da skrajšajte èase poèitka pod 60 sekund. Omejevanje in zmanjševanje poèitka vas bo namreè prisililo, da boste morali zmanjšati obremenitve, kar pa ni dobro, saj tako mišic ne šokirate in jih ne spodbujate k rasti. Za veèino vaj je 60-sekundni poèitek ravno pravšnji, medtem ko je za bolj zahtevne vaje, kot je na primer poèep, potreben poèitek 90 sekund.', 'https://www.youtube.com/embed/StzxwwnHluo', 0, 1, 100, 1, 4),
(24, 'Skleci', 'Uležemo se na trebuh, dlani položimo na tla v širini ramen (bližje kot so roke oziroma komolci ob trupu, bolj bo pri vaji sodeloval triceps). Dvignemo se tako, da iztegnemo roke, telo je vzravnano, pogled je usmerjen naprej, ne v tla. To je zaèetni položaj.  Vdihnemo in vajo izvedemo tako, da telo, ki je ves èas vzravnano in v ležni opori, s krèenjem rok v komolcih spustimo proti tlom. Ko je telo vzporedno s tlemi oziroma se s prsmi skoraj dotikamo tal, se z iztegovanjem komolcev dvignemo nazaj v zaèetni položaj. Med dvigovanjem telesa izdihnemo.  Pri izvajanju sklece je najpomembnejše vzravnano telo. To pomeni, da ne pušèamo glave, da nam visi z vratu, da nimamo preveè vboèenega hrbta in da ga tudi nimamo izboèenega. Ljudje s slabo koordinacijo lahko pravilen položaj za skleco vadijo tako, da si na hrbet položijo palico oziroma metlin roè. Ta se mora dotikati glave, hrbta med lopaticami in zadnjice.', 'https://www.youtube.com/embed/eFOSh8vpd6I', 0, 8, 15, 1, 4),
(25, 'Skleci', 'Uležemo se na trebuh, dlani položimo na tla v širini ramen (bližje kot so roke oziroma komolci ob trupu, bolj bo pri vaji sodeloval triceps). Dvignemo se tako, da iztegnemo roke, telo je vzravnano, pogled je usmerjen naprej, ne v tla. To je zaèetni položaj. Vdihnemo in vajo izvedemo tako, da telo, ki je ves èas vzravnano in v ležni opori, s krèenjem rok v komolcih spustimo proti tlom. Ko je telo vzporedno s tlemi oziroma se s prsmi skoraj dotikamo tal, se z iztegovanjem komolcev dvignemo nazaj v zaèetni položaj. Med dvigovanjem telesa izdihnemo. Pri izvajanju sklece je najpomembnejše vzravnano telo. To pomeni, da ne pušèamo glave, da nam visi z vratu, da nimamo preveè vboèenega hrbta in da ga tudi nimamo izboèenega. Ljudje s slabo koordinacijo lahko pravilen položaj za skleco vadijo tako, da si na hrbet položijo palico oziroma metlin roè. Ta se mora dotikati glave, hrbta med lopaticami in zadnjice.	', 'https://www.youtube.com/embed/eFOSh8vpd6I', 0, 8, 15, 1, 3),
(26, 'Drseèe dlani', 'Prve na sporedu so drseèe dlani, vaja, s katero se osredotoèimo predvsem na zgornja vlakna velike preme trebušne mišice.  Vajo izvedeš tako, da se uležeš na hrbet, pokrèiš kolena, dlani pa položiš na stegna. Roke so ves èas iztegnjene, glava pa v podaljšku hrbtenice. Ko zaèneš z vajo, se osredotoèiš predvsem na to, da dlani spraviš èim bližje kolenom in paziš na pravilno dihanje. V fazi dviganja je na vrsti izdih, v fazi spušèanja pa vdih.  Kar pomeni, ko dosežeš skrajno toèko, so tvoje mišice maksimalno pokrèene, v položaju ostaneš dobro sekundo in se vrneš v zaèetni položaj.', 'https://www.youtube.com/embed/HtWeAqNOGXg', 0, 10, 10, 1, 5),
(27, 'Zibajoèi boki', 'Naslednja na sporedu je vaja zibajoèi boki.  Da vajo lahko pravilno izvedeš, moraš hrbet po celi dolžini pritisniti ob podlago, še posebej popazi pri ledvenem delu, dlani pa položiš na tla. Noge pokrèiš, jih odmakneš od podlage in se pripraviš na zaèetek.  Iz zaèetnega položaja kolena približaš prsnemu košu, boke odmakneš od podlage in izdihneš zrak ter poskrbiš za maksimalno kontrakcijo. Takoj, ko ti to uspe, kolena poèasi vrneš v zaèetni položaj in vdihneš zrak. Ne pozabi na pravilo 3-1.  Èe je le možnost, so stopala ves èas odmaknjena od podlage.  Po 30 sekundah poèitka sledi tretja vaja, ki je po mojem mnenju, v sklopu današnjih, najbolj zahtevna.', 'https://www.youtube.com/embed/', 2, 5, 0, 1, 5),
(28, 'Sedeèa rotacija', 'Postaviš se v sedeèi položaj, poravnaš hrbet in pokrèene roke postaviš predse. Preden z vajo zaèneš, stopala nekoliko dvigneš od podlage in poskrbiš za ravnotežje. Iz tega položaja zaèneš z izmeniènim gibanjem v stran.  Za maksimalno kontrakcijo, gibanje razdeliš na tri razliène dele in se osredotoèiš na dihanje. Kar pomeni, obrat v levo stran, vraèanje v zaèetni položaj in potem še obrat v desno stran. Vsakiè, ko dosežeš skrajno toèko, je na vrsti izdih in moèno krèenje mišiènih vlaken.', 'https://www.youtube.com/embed/HtWeAqNOGXg', 5, 4, 0, 1, 5),
(29, 'Sumo poèepi', 'Zaèneva z vajo, ki jo verjetno že poznaš, s tem, da danes poskrbiva za manjšo posodobitev. Ekstra sumo poèepi so vaja, pri kateri bova poskrbela za povezavo možgani-mišice. Èe sluèajno ne veš, o èem govorim, brez skrbi. Vse razložim v nadaljevanju.', 'https://www.youtube.com/embed/7FBbi14OOFg', 2, 5, 0, 1, 6),
(30, 'Izpadni korak nazaj', 'Stojite vzravnano, s stopali v širini ramen. Roke uprite v boke.  Levo nogo pokrèeno dvignite naprej tako visoko, da bo koleno v višini bokov.  Z izdihom spustite dvignjeno nogo nazaj v izpadni korak in jo z vdihom dvignite v zaèetni položaj.  Zaradi doseganja boljše stabilnosti ponovite vajo najprej na eni strani in nato enako, z istim številom ponovitev, naredite še z drugo nogo.', 'https://www.youtube.com/embed/J34eHMQV-8c', 0, 20, 5, 1, 6),
(31, 'Izpadni korak vstran', 'Iz zaèetnega položaja naredite dolg korak vstran in se spustite v stranski izpadni korak do pravega kota v kolenu. Pri tem boke potisnite nazaj, da koleno pokrèene noge ne gre prek stopala. Druga noga ostane iztegnjena in stopalo je v celoti na tleh.  Z najnižje toèke se èim bolj eksplozivno odrinite nazaj v zaèetni položaj in ponovite z drugo nogo.  Obèutiti morate napetost v sprednji stegenski mišici.', 'https://www.youtube.com/embed/WPR2x-3v4g4', 0, 10, 5, 1, 6),
(32, 'Poèep', 'Vaša stopala naj bodo približno v širini vaših bokov, nato pa se spustite navzdol; zadnjico pri tem potisnite navzdol in nazaj, obenem pa pazite, da vaša kolena ostanejo za linijo vaših stopal.', 'https://www.youtube.com/embed/VpEbUaL9RE0', 0, 8, 20, 1, 6);

-- --------------------------------------------------------

--
-- Structure for view `imenapdf`
--
DROP TABLE IF EXISTS `imenapdf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `imenapdf`  AS  select `vaje`.`idVaje` AS `idVaje`,`vaje`.`naziv` AS `imeVaje`,`vaje`.`cas` AS `cas`,`vaje`.`sets` AS `sets`,`vaje`.`rep` AS `rep` from (((`planvaja` join `vaje` on((`planvaja`.`tk_planvaja_vaja` = `vaje`.`idVaje`))) join `kategorijavaje` on((`vaje`.`tk_vaje_kategorijavaje` = `kategorijavaje`.`idKategorijaVaje`))) join `plan` on((`planvaja`.`tk_planvaja_plan` = `plan`.`idPlan`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`idArtikel`),
  ADD UNIQUE KEY `koda_artikla` (`koda`),
  ADD KEY `fk_artikel_kategorija` (`tk_kategorija`);

--
-- Indexes for table `clanek`
--
ALTER TABLE `clanek`
  ADD PRIMARY KEY (`idClanek`),
  ADD KEY `fk_clanek_uporabnik` (`tk_clanek_uporabnik`);

--
-- Indexes for table `kategorijavaje`
--
ALTER TABLE `kategorijavaje`
  ADD PRIMARY KEY (`idKategorijaVaje`);

--
-- Indexes for table `kategorije_artiklov`
--
ALTER TABLE `kategorije_artiklov`
  ADD PRIMARY KEY (`idKategorijeArtiklov`);

--
-- Indexes for table `meritev`
--
ALTER TABLE `meritev`
  ADD PRIMARY KEY (`idMeritev`),
  ADD KEY `fk_meritev_uporabnik` (`tk_meritev_uporabnik`) USING BTREE;

--
-- Indexes for table `meritve`
--
ALTER TABLE `meritve`
  ADD PRIMARY KEY (`idMeritve`),
  ADD KEY `fk_meritve_uporabnik` (`tk_meritve_uporabnik`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`idPlan`),
  ADD KEY `tk_plan_uporabnik` (`tk_plan_uporabnik`);

--
-- Indexes for table `planvaja`
--
ALTER TABLE `planvaja`
  ADD PRIMARY KEY (`idPlanVaja`),
  ADD KEY `tk_planvaja_plan` (`tk_planvaja_plan`),
  ADD KEY `tk_planvaja_vaja` (`tk_planvaja_vaja`);

--
-- Indexes for table `seznam`
--
ALTER TABLE `seznam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Uporabnik` (`Uporabnik_id`),
  ADD KEY `fk_Clanek` (`Clanek_id`);

--
-- Indexes for table `slike`
--
ALTER TABLE `slike`
  ADD PRIMARY KEY (`idSlike`),
  ADD KEY `fk_slike_clanek` (`tk_slike_clanek`),
  ADD KEY `fk_slike_uporabnik` (`tk_slike_uporabnik`),
  ADD KEY `fk_slike_vaje` (`tk_slike_vaje`);

--
-- Indexes for table `uporabnik`
--
ALTER TABLE `uporabnik`
  ADD PRIMARY KEY (`idUporabnik`);

--
-- Indexes for table `vaje`
--
ALTER TABLE `vaje`
  ADD PRIMARY KEY (`idVaje`),
  ADD KEY `fk_vaje_uporabnik` (`tk_vaje_uporabnik`),
  ADD KEY `tk_vaje_kategorijavaje` (`tk_vaje_kategorijavaje`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `idArtikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clanek`
--
ALTER TABLE `clanek`
  MODIFY `idClanek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategorijavaje`
--
ALTER TABLE `kategorijavaje`
  MODIFY `idKategorijaVaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategorije_artiklov`
--
ALTER TABLE `kategorije_artiklov`
  MODIFY `idKategorijeArtiklov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meritev`
--
ALTER TABLE `meritev`
  MODIFY `idMeritev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meritve`
--
ALTER TABLE `meritve`
  MODIFY `idMeritve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `idPlan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `planvaja`
--
ALTER TABLE `planvaja`
  MODIFY `idPlanVaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `seznam`
--
ALTER TABLE `seznam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `idSlike` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uporabnik`
--
ALTER TABLE `uporabnik`
  MODIFY `idUporabnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaje`
--
ALTER TABLE `vaje`
  MODIFY `idVaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategorija` FOREIGN KEY (`tk_kategorija`) REFERENCES `kategorije_artiklov` (`idKategorijeArtiklov`);

--
-- Constraints for table `clanek`
--
ALTER TABLE `clanek`
  ADD CONSTRAINT `fk_clanek_uporabnik` FOREIGN KEY (`tk_clanek_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `meritev`
--
ALTER TABLE `meritev`
  ADD CONSTRAINT `fk_meritev_uporabnik` FOREIGN KEY (`tk_meritev_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `meritve`
--
ALTER TABLE `meritve`
  ADD CONSTRAINT `fk_meritve_uporabnik` FOREIGN KEY (`tk_meritve_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`tk_plan_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `planvaja`
--
ALTER TABLE `planvaja`
  ADD CONSTRAINT `planvaja_ibfk_1` FOREIGN KEY (`tk_planvaja_plan`) REFERENCES `plan` (`idPlan`),
  ADD CONSTRAINT `planvaja_ibfk_2` FOREIGN KEY (`tk_planvaja_vaja`) REFERENCES `vaje` (`idVaje`);

--
-- Constraints for table `seznam`
--
ALTER TABLE `seznam`
  ADD CONSTRAINT `fk_Clanek` FOREIGN KEY (`Clanek_id`) REFERENCES `clanek` (`idClanek`),
  ADD CONSTRAINT `fk_Uporabnik` FOREIGN KEY (`Uporabnik_id`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `slike`
--
ALTER TABLE `slike`
  ADD CONSTRAINT `fk_slike_clanek` FOREIGN KEY (`tk_slike_clanek`) REFERENCES `clanek` (`idClanek`),
  ADD CONSTRAINT `fk_slike_uporabnik` FOREIGN KEY (`tk_slike_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`),
  ADD CONSTRAINT `fk_slike_vaje` FOREIGN KEY (`tk_slike_vaje`) REFERENCES `vaje` (`idVaje`);

--
-- Constraints for table `vaje`
--
ALTER TABLE `vaje`
  ADD CONSTRAINT `fk_vaje_uporabnik` FOREIGN KEY (`tk_vaje_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`),
  ADD CONSTRAINT `vaje_ibfk_1` FOREIGN KEY (`tk_vaje_kategorijavaje`) REFERENCES `kategorijavaje` (`idKategorijaVaje`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
