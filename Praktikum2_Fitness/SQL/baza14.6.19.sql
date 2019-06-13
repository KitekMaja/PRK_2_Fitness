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
(1, 'Venum Challenger MMA rokavice', 'RokaviceVenum_1', 'Ro�no izdelane na Tajskem', 44.00, 4),
(2, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_1', 'Zelena barva', 44.00, 2),
(3, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_2', 'Siva barva', 44.00, 2),
(4, 'Venum Challanger 2.0 rokavice', 'RokaviceVenum_2', 'Ro�no izdelane na Tajskem', 47.99, 4),
(5, 'RSN - Whey Protein Isolate 1816g', 'RSNProteini_1', 'RSN Whey Protein Isolate je izdelek najvi?je kakovosti narejen izklju�no iz �istega sirotkinega izolata.', 49.99, 1);

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
(1, '2019-06-03', '10 nasvetov za zdravo �ivljenje', '<h5 align=\"center\">Poskrbite za zdravo prehranjevanje</h5></br>\r\nPa saj to za vas ni nobena novica, kajne? O zdravem prehranjevanju govorijo prav vsi, saj je predpogoj za zdravo �ivljenje. Na ta na�in se lahko izognete �tevilnim kroni�nim boleznim, med katere sodijo kardiovaskularna obolenja, diabetes tipa 2 in nekatere vrste raka. Priporo�amo uravnote�eno prehrano, ki naj sestoji iz veliko sadja, zelenjave ter polnozrnatih izdelkov, pa tudi nemastnega mesa, rib in mle�nih proizvodov. Izogibajte se predelanim �ivilom in hitri hrani.\r\n</br>\r\n<h5 align=\"center\">Bodite aktivni vsaj 30 minut na dan</h5></br>\r\n<p>�ivljenje si lahko podalj�ate tudi z rednim gibanjem. S tem ne mislimo na kak�no te�ko, rigorozno vadbo (�eprav vam tudi ta ne bi �kodila). Gibanje je lahko tako preprosto kot igra z otroki, sprehod s psom, kolesarjenje, plavanje, tek ali ples. Vse to bo pripomoglo k temu, da bo va�e telo pripravljeno na nove izzive, obenem pa boste prepre�ili tudi tveganje za nastanek bolezni srca, kapi, visokega krvnega pritiska in podobno. Tudi kakovost va�ega �ivljenja se bo precej izbolj�ala.</p>\r\n</br>\r\n<h5  align=\"center\">Prenehajte s kajenjem </h5></br>\r\n<p>Kaj sploh �e lahko napi�emo o tej izredno �kodljivi razvadi? S prenehanjem kajenja boste prepre�ili �tevilne bolezni in si zagotovili dalj�e in bolj zdravo �ivljenje.</p>\r\n</br>\r\n<h5 align=\"center\">Smejte se</h5></br>\r\n<p>Z raziskavami so dokazali, da lahko spontan smeh vodi do tega, da bo va�e �ivljenje bolj kakovostno, vi pa boste ob tem (p)ostali zdravi. S smehom naj bi namre� okrepili svoj imunski sistem, zmanj�ali krvni pritisk ter odpravili stres ter depresijo.</p>\r\n</br>\r\n<h5 align=\"center\">Zmanj�ajte koli�ino alkohola</h5></br>\r\n<p>Ni� ni narobe s kozar�kom vina na dan. A dolgotrajna zloraba alkohola vsekakor ni najbolj zdrava ideja. S �ezmernim pitjem boste namre� spet pove�ali mo�nost za nastanek razli�ni bolezni, vse od bolezni jeter, visokega krvnega pritiska, kapi pa do diabetesa in po�kodb srca. Poskrbite za zdravo �ivljenje in pazite na to, koliko alkohola spijete.</p>\r\n</br>\r\n<h5  align=\"center\">Poskrbite za za��ito na soncu</h5></br>\r\n<p>�e en super nasvet za zdravo �ivljenje. Kadarkoli ste izpostavljeni soncu, �e posebej pa poleti, poskrbite za ustrezno za��ito va�e ko�e s primerno kremo za son�enje. Ni� ne bo �kodilo, �e si boste nadeli tudi klobuk. Ogromno ljudi namre� umre zaradi ko�nega raka, ki ga lahko prepre�ite na povsem enostaven na�in, s predhodno opisanimi nasveti.</p>\r\n</br>\r\n<h5  align=\"center\">Nau�ite se globoko dihati</h5></br>\r\n<p>Ve�ina ljudi dandanes �ivi kaoti�no in prav ni� zdravo �ivljenje, zato ni ni� �udnega, da smo vsi preve� obremenjeni in pod stresom. Na�e telo pa se proti stresu bori na na�in �bojuj se ali zbe�i. Zato prihaja do pove�anega utripa srca, pospe�enega dihanja in pove�anega krvnega pritiska. �im dalj �asa je na�e telo podvr�eno stresu, tem ve�jo �kodo lahko le-ta povzro�i.</p>\r\n</br>\r\n<p>Nau�ite se globoko dihati in obvladati stres. Zato vam svetujemo, da se vpi�ete v te�aj joge, kjer se boste nau�ili pravilnih tehnik dihanja.</p>\r\n</br>\r\n<h5 align=\"center\">Negujte otroka v sebi</h5></br>\r\n<p>Staranje je povezano tudi s tem, kako stari se po�utite. Z raziskavami so namre� dokazali, da ljudje, ki se po�utijo nekaj let mlaj�i, kot resni�no so, �ivijo dalj �asa.  Po�utite se torej mladostno in si zagotovite dalj�e �ivljenje.</p>\r\n</br>\r\n<h5 align=\"center\">Redno obiskujte zdravnika</h5></br>\r\n<p>Jabolko na dan odganja zdravnika stran.Vsaj tako pravi vsem znan pregovor. Mi vam pa vseeno priporo�amo redne letne obiske zdravnika, ki bo z razli�nimi pregledi lahko pravo�asno odkril bolezen in poskrbel, da bo va�e �ivljenje �e naprej zdravo.</p>\r\n</br>\r\n<h5  align=\"center\">Poskrbite za kakovostno spanje</h5></br>\r\n<p>Zdravo �ivljenje je odvisno tudi od tega, da spite dobro in dovolj, saj se med spanjem va�e telo obnavlja in pripravlja na izzive, ki jih bo prinesel nov dan.</p>\r\n\r\n<p>Pazite na svoje zdravje. Tudi tako, da upo�tevate na�e koristne nasvete in �elimo vam dolgo in zdravo �ivljenje.</p>', 1),
(2, '2019-06-08', '3 hitri na�ini, kako shuj�ati s toplo vodo', '<b>Verjetno ni pripadnice �enskega spola, ki v nekem trenutku ne bi bila na dieti, hotela pospe�iti metabolizma in izbolj�ati prebave. Gre za scenarij, v katerem se vsaj enkrat v �ivljenju najde marsikatera, in tistih, ki se vsak ponedeljek odlo�ijo za drugo dieto, ni malo. Re�itev pa je lahko povsem preprosta, saj �e s kozarcem tople vode lahko izbolj�ate po�utje in izgubite kak�en kilogram!</b></br></br></br>\r\n<p>Za vse, ki ste v preteklosti poskusile 1001 dieto, a se nobena ni obnesla in i��ete na�in, ki vam bo pomagal izbolj�ati po�utje in se hitreje znebiti odve�nih kilogramov, strokovnjaki svetujejo, da poskusite s pitjem tople vode. Ne le, da ta pospe�i prebavo in �isti ko�o, ampak pomaga tudi pri huj�anju in boju proti celulitu.</p></br>\r\n<u>Napitek za zjutraj, ki pomaga pri huj�anju in pospe�i metabolizem:</u>\r\n<p>kozarec tople vode</p>\r\n\r\n<p>2 �lici limoninega soka</p>\r\n<p>�lica medu</p></br>\r\n<u>Napitek za zjutraj in zve�er, ki stabilizira sladkor v krvi, ustvarja ob�utek sitosti:</u>\r\n<p>kozarec tople vode</p>\r\n<p>�lica medu</p>\r\n<p>�lica cimeta</p> \r\n\r\n<p>Spijte polovico kozarca na prazen trebuh zjutraj in ostalo polovico zve�er po ve�erji.</p>\r\n\r\n<u>Napitek, ki si ga privo��ite tekom dneva in ubla�i potrebo po sladicah in izbolj�a prebavo:</u></br>\r\n<p>kozarec tople vode</p>\r\n<p>�lica limoninega soka</p>\r\n<p>�lica medu</p>\r\n<p>�lica cimeta</p></br>\r\n\r\n<p>Temperatura vode naj bo tak�na, da jo boste lahko normalno pili. V kolikor katere od dodanih sestavin ne marate, lahko pijete samo toplo vodo.</p>\r\n', 1),
(3, '2019-06-10', 'Pove�anje mi�i�ne mase, 10 kratkih nasvetov', '\r\n<h5>1.Pove�ajte intenzivnost treninga  </h5>\r\n\r\n<p>-pove�anje vzdr�ljivosti, brez ob�utnega pove�anja mi�i�ne mase in mo�i (12-15 ponovitev) </p>\r\n<p>-pove�anje mi�i�ne mase in mo�i (6-8 ponovitev) </p>\r\n<p>-pove�anje mo�i (2-4 ponovitve) </p>\r\n\r\n<p>Najbolj produktiven je trening, ki hkrati vpliva na pove�anje mo�i in intenzivnosti. Priporo�ljivo je, da se trenira po ciklih, in sicer, da se na�in treninga menja vsaka 2-3 mesece. Po tem obdobju lahko vklju�imo en teden treninga izklju�no za mo� in nato sledi nadaljevanje novega 2-3 mese�nega cikla treninga. </p>\r\n</br>\r\n\r\n<h5>2. Obremenitev dvigujte eksplozivno</h5>\r\n\r\n<p>Koli�ina prirasti mi�i�ne mase je sorazmerna s koli�ino uporabljene mo�i, da se dolo�ena obremenitev premaga.Mo� je definirana kot te�a, ki jo dvignete, pomno�a s pospe�kom (hitrostjo s katero potiskate te�avzgor, proti uporu). Da bi proizvedli ve� mo�i, morate pove�ati te�ako, da breme dvigujete kar se da sunkovito (pove�ate hitrost dviga, v primerjavi s hitrostjo spusta bremena).</p>\r\n\r\n\r\n</br>\r\n<h5>3. Poudarite negativne ponovitve (spust bremena)</h5>\r\n<p>Rast mi�ic je odvisna od mi�i�nega kr�enja. Posebej pomembno je, da breme spu��amo po�asi, kontrolirano. Tako dosegamo ve� mi�e napetosti v fazi raztegovanja mi�ice. Dalj�e �as oziroma po�asneje kot spu��amo breme, ve�ja je rast mi�e mase. </p>\r\n\r\n<p>Najbolj produktiven na�in treninga je po�asen spust in hiter, vendar maksimalno kontroliran dvig. </p>\r\n\r\n\r\n</br>\r\n<h5>4. Pozabite na aerobne aktivnosti</h5>\r\n<p>Aerobna vadba ovira pove�anje mo�i ter okrevanje po treningu. Prazni nam zaloge glikogena, kar omejuje napredek v mi�i�ni rasti. </p>\r\n\r\n\r\n</br>\r\n<h5>5. Po�ivajte</h5>\r\n<p>Veliko �tevilo posameznikov zaradi prevelike �elje po �im hitrej�em uspehu dela osnovno napako, trenira neprekinjeno ve� dni zapored. Telesu je potrebno zagotoviti dovolj po�itka in regeneracije. Potrebno si je vzeti dovolj dni v tednu za po�itek (2 dni), da si telo odpo�ije, obnovi,  da se napolnijo glikogenske zaloge in, da se hormoni (testosteron in kortizol) vrnejo na optimalno raven. </p>\r\n\r\n\r\n</br>\r\n<h5>6. Ob�utno pove�ajte kalorijski vnos za obdobje treh dni</h5>\r\n<p>Z nizkokalori�no dieto ni mogo�e dose�i pozitivnega nitrogenskega ravnovesja. Potrebno je pove�ati kalorijski vnos tri dni v tednu. S tem boste spodbudili mi�i�no rast in metabolizem. Pove�a se ob�utljivost celic na inzulin in napolnijo se glikogenske zaloge. </p>\r\n\r\n\r\n</br>\r\n<h5>7.Pove�ajte vnos natrija-soli </h5>\r\n<p>Natrij je izredno pomemben mineral, �eprav je na slabem glasu zaradi vezave vode v mi�icah. Mi�ice potrebujejo natrij za rast, prav tako izbolj�a odzivnost celic na inzulin. </p>\r\n\r\n\r\n</br>\r\n<h5>8. Riba,riba,riba.....</h5>\r\n<p>Ribe so bogate z beljakovinami in Omega 3 ma��obnimi kislinami. Slednje pove�ujejo odzivnost celic na inzulin, kar vpliva na zaloge glikogena. Pove�a se pretok aminokislin v mi�ice, kar ohranja zaloge glutamina. </p>\r\n\r\n\r\n</br>\r\n<h5>9. Zau�ijte beljakovinski napitek sredi no�i</h5>\r\n<p>Rast mi�ic je odvisna od kalori�nega vnosa. �tevilo obrokov, ki vsebujejo beljakovine je potrebno porazdeliti na ve� manj�ih. V nasprotnem primeru telo ne bo sposobno absorbirati zadostne koli�ine beljakovin, prese�ek pa bo pripeljal do kopi�enja ma��obnih oblog. Beljakovinski napitek sredi no�i bo spodbudil anabolni u�inek in prepre�il katabolizem. </p>\r\n\r\n\r\n</br>\r\n<h5>10. Glutamin, kreatin, BCAA </h5>\r\n<p>Glutamin je aminokislina, ki skrbi za dvig odpornosti. Posebej je priporo�ljiva, kadar je telo podvr�eno stresu zaradi diete in intenzivnega treninga. Kreatin pospe�i proces nastajanja ATP, ki je pomemben za rast in vzdr�ljivost. Aminokisline z razvejano verigo (BCAA) L-levcin, L-izolevcin in L.valin spadajo k esencialnim aminokislinam. BCAA so tako gradnik kot tudi vir signala za pospe�eno gradnjo mi�i�ne mase.</p> ', 1),
(4, '2019-06-10', 'u�ivanje rib za zdrav stil �ivljenja', '- Priporo�amo pestro u�ivanje rib enkrat do dvakrat tedensko, predvsem kot zamenjavo za rde�e meso in mesne izdelke;\r\n</br><p>- Ribe imajo ugodno hranilno sestavo, so bogat vir biolo�ko visoko vrednih beljakovin, vitaminov in mineralov in so edinstvene po vsebnosti esencialnih omega3 ma��obnih kislin, ki so pomembne za zdravje srca;</p>\r\n</br><p>- Zlasti manj�e ribe, ki jih zau�ijemo s kostmi vred, so vir vitamina D, kalcija, fosforja, morske ribe pa tudi joda in selena;</p>\r\n</br><p>- Ribe so lahko prebavljive, z malo vezivnega tkiva ter rahlo celi�no strukturo in veljajo za kakovosten in uravnote�en obrok, �e posebej v kombinaciji z zelenjavo (npr. blitvo); </p>\r\n</br><p>- Zaradi vseh omenjenih koristi naj bi tedensko zau�ili okoli 200 gramov ribjega mesa, od tega polovico mastnih modrih morskih rib;</p>\r\n</br><p>- Najbolj koristne ribje jedi so pripravljene iz sve�ih ali zamrznjenih rib, prehransko manj primerni so ribji pripravki (npr. panirane ribje pal�ke);</p>\r\n</br><p>- Vse ribe na trgu morajo glede mikrobiolo�ke in kemijske varnosti ustrezati predpisom, nadzor pa redno izvajajo pristojne in�titucije;</p>\r\n</br><p>- Ribe in ribji izdelki lahko vsebujejo zdravju �kodljiva onesna�evala. S pestro izbiro manj�ih rib (sardela, sardon, sku�a, mol, �par, postrv, cipelj, orada, morski list itd.), ki so kratko�ive in ni�je v prehranjevalni verigi, lahko ta tveganja za zdravje bistveno zmanj�amo. Z morebitnimi �kodljivimi onesna�evali so praviloma bolj obremenjene dolgo �ive�e, ve�je ter roparske ribe;</p>\r\n</br><p>- Ribe in ribji izdelki so za posameznike lahko alergeni, zato morajo biti v skladu z zakonodajo ustrezno ozna�eni.</p>', 1);

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
(2, 'Obla�ila'),
(3, 'Fitness oprema'),
(4, 'Borilne ve?�ine'),
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
(34, 'Huj�anje', 'Vaj za huj�anje. Predvsem veliko kardia in vaj za noge.', 'Javen', 'Izguba kilogramov', '13.06.2019', 2);

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
(15, 'Voja�ki poskoki', 'Lahko jih uporabite proti koncu vadbe ali kot del kro�nega treninga, v vsakem primeru pa bodo v hitrem �asu pospe�ili va� sr�ni utrip. Zlasti so primerni, �e nimate veliko �asa ali �e �elite dodatni intenzivnost va�i obi�ajni vadbi.', 'https://www.youtube.com/embed/swoN7PkJRKc', 2, 5, 0, 1, 1),
(16, 'Skakanje s kolebnico', 'Pri skakanju s kolebnico sodelujejo vse mi�ice v telesu, vklju�no s srcem. Z vsakim skokom utrdite zgornji del telesa, roke in noge.', 'https://www.youtube.com/embed/sRbFp957qn4', 3, 4, 0, 1, 1),
(17, 'Poskakovanje levo in desno', 'Prekri�ajte levo nogo za desno ob upogibu desnega kolena za 90 stopinj. Desno roko iztegnite in z levo roko zamahnite prek desno noge. <br> Izmeni�no menjujte levo in desno ob ponavljanju vaje.', 'https://www.youtube.com/embed/4RuxhVJ4-pg', 0, 7, 8, 1, 1),
(18, 'HIIT', 'HIIT ali slovensko VIIT je visokointenzivni intervalni trening, ki ga sestavljajo kratki intervali energi�nih vaj z lastno te�o (izpadni koraki, poskoki, voja�ki poskoki �), tem pa sledijo kratka obdobja po�itka. HIIT profesionalni in rekreativni �portniki radi delajo tudi na kardio napravah in si tako izbolj�ajo kondicijo in vzdr�ljivost.', 'https://www.youtube.com/embed/gAo7lJ1R6TM', 20, 0, 0, 1, 1),
(19, 'Kettlebell', 'Idealen trening sestoji iz 8 do 12 ponovitev, lahko za�etniki v za�etnih nekaj mesecih hitro in dobro napredujejo pri pridobivanju mi�i�ne mase. Vendar pa mi�ice nikdar ve� ne bodo rasle in se krepile s tako hitrostjo kot na za�etku. V dolo�enem trenutku ste tudi sami dosegli to prvo raven, ko ste ugotovili, da vas enostaven sistem treninga s serijami od 8 do 12 ponovitev ne bo ve� dale� pripeljal.', 'https://www.youtube.com/embed/cbHNNHgd340', 0, 5, 12, 1, 3),
(20, 'Kettlebell Press', 'Vajo izvajate samo z eno kettlebell ute�jo naenkrat. <br> Idealen trening sestoji iz 8 do 12 ponovitev, lahko za�etniki v za�etnih nekaj mesecih hitro in dobro napredujejo pri pridobivanju mi�i�ne mase. Vendar pa mi�ice nikdar ve� ne bodo rasle in se krepile s tako hitrostjo kot na za�etku. V dolo�enem trenutku ste tudi sami dosegli to prvo raven, ko ste ugotovili, da vas enostaven sistem treninga s serijami od 8 do 12 ponovitev ne bo ve� dale� pripeljal.', 'https://www.youtube.com/embed/nSVWHDLw8Iw', 0, 10, 5, 1, 3),
(21, 'Mrtvi dvig', 'Najla�je se boste orientirali tako, da pred dvigom stisnete hrbtne mi�ice-hrbet je popolnoma raven (slika2). Na�in dvigovanja brez razmi�ljanja in z zvitim hrbtom je napa�en in nevaren (slika 1). To je najve�krat razlog za po�kodbe pri tej vaji. Te�ava nastane, ker se veliko ljudi ne po�uti sposobne postaviti svoje telo v to pozicijo. Po mojih izku�njah je razlog za to najve�krat v ��zakr�enih�� medeni�nih mi�icah in mi�icah zadnje lo�e. Vzrok je verjetno na� na�in �ivljenja (udobno sedenje na visokih sedi��ih), kjer prakti�no ni ve� potrebe po mobilnosti teh mi�ic. Ker omenjene mi�ice niso dovolj podajne, se dr�a pri the gibih pokvari, posameznik pa ima ob�utek, da vaja druga�e ni izvedljiva. Enako velja za po�ep.', 'https://www.youtube.com/embed/MGOWyz47jak', 0, 5, 15, 1, 2),
(22, 'Mrtvi dvig', 'Najla�je se boste orientirali tako, da pred dvigom stisnete hrbtne mi�ice-hrbet je popolnoma raven (slika2). Na�in dvigovanja brez razmi�ljanja in z zvitim hrbtom je napa�en in nevaren (slika 1). To je najve�krat razlog za po�kodbe pri tej vaji. Te�ava nastane, ker se veliko ljudi ne po�uti sposobne postaviti svoje telo v to pozicijo. Po mojih izku�njah je razlog za to najve�krat v ��zakr�enih�� medeni�nih mi�icah in mi�icah zadnje lo�e. Vzrok je verjetno na� na�in �ivljenja (udobno sedenje na visokih sedi��ih), kjer prakti�no ni ve� potrebe po mobilnosti teh mi�ic. Ker omenjene mi�ice niso dovolj podajne, se dr�a pri the gibih pokvari, posameznik pa ima ob�utek, da vaja druga�e ni izvedljiva. Enako velja za po�ep.', 'https://www.youtube.com/embed/MGOWyz47jak', 0, 5, 12, 1, 3),
(23, 'German Volume Training', 'Ena vaja. Opravljate po eno vajo za vsak posamezen del telesa. Uporabljate sestavljive ute�i, s katerimi obremenite vse glavne mi�i�ne skupine. Ker se pri tem na�inu treninga izvaja omejeno �tevilo vaj na teden, je ustrezna in pravilna izbira vaj zelo pomembna za maksimiranje u�inkov tega treninga. 100 ponovitev. Za vsako posamezno vajo se izvaja 10 serij po 10 ponovitev. Vendar pa se ponovitve za�ne opravljati s 50- do 60-odstotno mo�jo dolo�ene obremenitve. Naredi se toliko ponovitev, kolikor je mogo�e za vsako od desetih serij. Nobene potrebe ni, da trenirate do konca oz. do prenehanja zaradi pretiravanja. Vedno trenirajte blizu limita. Ko lahko opravite vseh 100 ponovitev oz. 10 serij po 10 ponovitev, naslednji� dodajte pribli�no 2 kilograma in postopek ponovite. Po�itek. Po�itek med serijami traja pribli�no 60 do 90 sekund. Po internetu kro�ijo �tevilne oblike \"German Volume\" treninga, tudi kot razli�ica \"Vince Gironda\'s 8x8\" treninga in pa nekatere z neverjetno kratkimi �asi po�itka. Vendar pa se izogibajte nasvetom, da skraj�ajte �ase po�itka pod 60 sekund. Omejevanje in zmanj�evanje po�itka vas bo namre� prisililo, da boste morali zmanj�ati obremenitve, kar pa ni dobro, saj tako mi�ic ne �okirate in jih ne spodbujate k rasti. Za ve�ino vaj je 60-sekundni po�itek ravno prav�nji, medtem ko je za bolj zahtevne vaje, kot je na primer po�ep, potreben po�itek 90 sekund.', 'https://www.youtube.com/embed/StzxwwnHluo', 0, 1, 100, 1, 4),
(24, 'Skleci', 'Ule�emo se na trebuh, dlani polo�imo na tla v �irini ramen (bli�je kot so roke oziroma komolci ob trupu, bolj bo pri vaji sodeloval triceps). Dvignemo se tako, da iztegnemo roke, telo je vzravnano, pogled je usmerjen naprej, ne v tla. To je za�etni polo�aj.  Vdihnemo in vajo izvedemo tako, da telo, ki je ves �as vzravnano in v le�ni opori, s kr�enjem rok v komolcih spustimo proti tlom. Ko je telo vzporedno s tlemi oziroma se s prsmi skoraj dotikamo tal, se z iztegovanjem komolcev dvignemo nazaj v za�etni polo�aj. Med dvigovanjem telesa izdihnemo.  Pri izvajanju sklece je najpomembnej�e vzravnano telo. To pomeni, da ne pu��amo glave, da nam visi z vratu, da nimamo preve� vbo�enega hrbta in da ga tudi nimamo izbo�enega. Ljudje s slabo koordinacijo lahko pravilen polo�aj za skleco vadijo tako, da si na hrbet polo�ijo palico oziroma metlin ro�. Ta se mora dotikati glave, hrbta med lopaticami in zadnjice.', 'https://www.youtube.com/embed/eFOSh8vpd6I', 0, 8, 15, 1, 4),
(25, 'Skleci', 'Ule�emo se na trebuh, dlani polo�imo na tla v �irini ramen (bli�je kot so roke oziroma komolci ob trupu, bolj bo pri vaji sodeloval triceps). Dvignemo se tako, da iztegnemo roke, telo je vzravnano, pogled je usmerjen naprej, ne v tla. To je za�etni polo�aj. Vdihnemo in vajo izvedemo tako, da telo, ki je ves �as vzravnano in v le�ni opori, s kr�enjem rok v komolcih spustimo proti tlom. Ko je telo vzporedno s tlemi oziroma se s prsmi skoraj dotikamo tal, se z iztegovanjem komolcev dvignemo nazaj v za�etni polo�aj. Med dvigovanjem telesa izdihnemo. Pri izvajanju sklece je najpomembnej�e vzravnano telo. To pomeni, da ne pu��amo glave, da nam visi z vratu, da nimamo preve� vbo�enega hrbta in da ga tudi nimamo izbo�enega. Ljudje s slabo koordinacijo lahko pravilen polo�aj za skleco vadijo tako, da si na hrbet polo�ijo palico oziroma metlin ro�. Ta se mora dotikati glave, hrbta med lopaticami in zadnjice.	', 'https://www.youtube.com/embed/eFOSh8vpd6I', 0, 8, 15, 1, 3),
(26, 'Drse�e dlani', 'Prve na sporedu so drse�e dlani, vaja, s katero se osredoto�imo predvsem na zgornja vlakna velike preme trebu�ne mi�ice.  Vajo izvede� tako, da se ule�e� na hrbet, pokr�i� kolena, dlani pa polo�i� na stegna. Roke so ves �as iztegnjene, glava pa v podalj�ku hrbtenice. Ko za�ne� z vajo, se osredoto�i� predvsem na to, da dlani spravi� �im bli�je kolenom in pazi� na pravilno dihanje. V fazi dviganja je na vrsti izdih, v fazi spu��anja pa vdih.  Kar pomeni, ko dose�e� skrajno to�ko, so tvoje mi�ice maksimalno pokr�ene, v polo�aju ostane� dobro sekundo in se vrne� v za�etni polo�aj.', 'https://www.youtube.com/embed/HtWeAqNOGXg', 0, 10, 10, 1, 5),
(27, 'Zibajo�i boki', 'Naslednja na sporedu je vaja zibajo�i boki.  Da vajo lahko pravilno izvede�, mora� hrbet po celi dol�ini pritisniti ob podlago, �e posebej popazi pri ledvenem delu, dlani pa polo�i� na tla. Noge pokr�i�, jih odmakne� od podlage in se pripravi� na za�etek.  Iz za�etnega polo�aja kolena pribli�a� prsnemu ko�u, boke odmakne� od podlage in izdihne� zrak ter poskrbi� za maksimalno kontrakcijo. Takoj, ko ti to uspe, kolena po�asi vrne� v za�etni polo�aj in vdihne� zrak. Ne pozabi na pravilo 3-1.  �e je le mo�nost, so stopala ves �as odmaknjena od podlage.  Po 30 sekundah po�itka sledi tretja vaja, ki je po mojem mnenju, v sklopu dana�njih, najbolj zahtevna.', 'https://www.youtube.com/embed/', 2, 5, 0, 1, 5),
(28, 'Sede�a rotacija', 'Postavi� se v sede�i polo�aj, poravna� hrbet in pokr�ene roke postavi� predse. Preden z vajo za�ne�, stopala nekoliko dvigne� od podlage in poskrbi� za ravnote�je. Iz tega polo�aja za�ne� z izmeni�nim gibanjem v stran.  Za maksimalno kontrakcijo, gibanje razdeli� na tri razli�ne dele in se osredoto�i� na dihanje. Kar pomeni, obrat v levo stran, vra�anje v za�etni polo�aj in potem �e obrat v desno stran. Vsaki�, ko dose�e� skrajno to�ko, je na vrsti izdih in mo�no kr�enje mi�i�nih vlaken.', 'https://www.youtube.com/embed/HtWeAqNOGXg', 5, 4, 0, 1, 5),
(29, 'Sumo po�epi', 'Za�neva z vajo, ki jo verjetno �e pozna�, s tem, da danes poskrbiva za manj�o posodobitev. Ekstra sumo po�epi so vaja, pri kateri bova poskrbela za povezavo mo�gani-mi�ice. �e slu�ajno ne ve�, o �em govorim, brez skrbi. Vse razlo�im v nadaljevanju.', 'https://www.youtube.com/embed/7FBbi14OOFg', 2, 5, 0, 1, 6),
(30, 'Izpadni korak nazaj', 'Stojite vzravnano, s stopali v �irini ramen. Roke uprite v boke.  Levo nogo pokr�eno dvignite naprej tako visoko, da bo koleno v vi�ini bokov.  Z izdihom spustite dvignjeno nogo nazaj v izpadni korak in jo z vdihom dvignite v za�etni polo�aj.  Zaradi doseganja bolj�e stabilnosti ponovite vajo najprej na eni strani in nato enako, z istim �tevilom ponovitev, naredite �e z drugo nogo.', 'https://www.youtube.com/embed/J34eHMQV-8c', 0, 20, 5, 1, 6),
(31, 'Izpadni korak vstran', 'Iz za�etnega polo�aja naredite dolg korak vstran in se spustite v stranski izpadni korak do pravega kota v kolenu. Pri tem boke potisnite nazaj, da koleno pokr�ene noge ne gre prek stopala. Druga noga ostane iztegnjena in stopalo je v celoti na tleh.  Z najni�je to�ke se �im bolj eksplozivno odrinite nazaj v za�etni polo�aj in ponovite z drugo nogo.  Ob�utiti morate napetost v sprednji stegenski mi�ici.', 'https://www.youtube.com/embed/WPR2x-3v4g4', 0, 10, 5, 1, 6),
(32, 'Po�ep', 'Va�a stopala naj bodo pribli�no v �irini va�ih bokov, nato pa se spustite navzdol; zadnjico pri tem potisnite navzdol in nazaj, obenem pa pazite, da va�a kolena ostanejo za linijo va�ih stopal.', 'https://www.youtube.com/embed/VpEbUaL9RE0', 0, 8, 20, 1, 6);

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
