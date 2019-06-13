-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 04:05 PM
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
(5, 'RSN - Whey Protein Isolate 1816g', 'RSNProteini_1', 'RSN Whey Protein Isolate je izdelek najvišje kakovosti narejen izkljuèno iz èistega sirotkinega izolata.', 49.99, 1);

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
(4, '2019-06-10','Uživanje rib za zdrav stil življenja',  '- Priporoèamo pestro uživanje rib enkrat do dvakrat tedensko, predvsem kot zamenjavo za rdeèe meso in mesne izdelke;
</br><p>- Ribe imajo ugodno hranilno sestavo, so bogat vir biološko visoko vrednih beljakovin, vitaminov in mineralov in so edinstvene po vsebnosti esencialnih omega3 mašèobnih kislin, ki so pomembne za zdravje srca;</p>
</br><p>- Zlasti manjše ribe, ki jih zaužijemo s kostmi vred, so vir vitamina D, kalcija, fosforja, morske ribe pa tudi joda in selena;</p>
</br><p>- Ribe so lahko prebavljive, z malo vezivnega tkiva ter rahlo celièno strukturo in veljajo za kakovosten in uravnotežen obrok, še posebej v kombinaciji z zelenjavo (npr. blitvo); </p>
</br><p>- Zaradi vseh omenjenih koristi naj bi tedensko zaužili okoli 200 gramov ribjega mesa, od tega polovico mastnih modrih morskih rib;</p>
</br><p>- Najbolj koristne ribje jedi so pripravljene iz svežih ali zamrznjenih rib, prehransko manj primerni so ribji pripravki (npr. panirane ribje palèke);</p>
</br><p>- Vse ribe na trgu morajo glede mikrobiološke in kemijske varnosti ustrezati predpisom, nadzor pa redno izvajajo pristojne inštitucije;</p>
</br><p>- Ribe in ribji izdelki lahko vsebujejo zdravju škodljiva onesnaževala. S pestro izbiro »manjših« rib (sardela, sardon, skuša, mol, špar, postrv, cipelj, orada, morski list itd.), ki so kratkožive in nižje v prehranjevalni verigi, lahko ta tveganja za zdravje bistveno zmanjšamo. Z morebitnimi škodljivimi onesnaževali so praviloma bolj obremenjene dolgo živeèe, veèje ter roparske ribe;</p>
</br><p>- Ribe in ribji izdelki so za posameznike lahko alergeni, zato morajo biti v skladu z zakonodajo ustrezno oznaèeni.</p>', 1),

(1, '2019-06-03','10 nasvetov za zdravo življenje',  '<h5 align="center">Poskrbite za zdravo prehranjevanje</h5></br>
Pa saj to za vas ni nobena novica, kajne? O zdravem prehranjevanju govorijo prav vsi, saj je predpogoj za zdravo življenje. Na ta naèin se lahko izognete številnim kroniènim boleznim, med katere sodijo kardiovaskularna obolenja, diabetes tipa 2 in nekatere vrste raka. Priporoèamo uravnoteženo prehrano, ki naj sestoji iz veliko sadja, zelenjave ter polnozrnatih izdelkov, pa tudi nemastnega mesa, rib in mleènih proizvodov. Izogibajte se predelanim živilom in hitri hrani.
</br>
<h5 align="center">Bodite aktivni vsaj 30 minut na dan</h5></br>
<p>Življenje si lahko podaljšate tudi z rednim gibanjem. S tem ne mislimo na kakšno težko, rigorozno vadbo (èeprav vam tudi ta ne bi škodila). Gibanje je lahko tako preprosto kot igra z otroki, sprehod s psom, kolesarjenje, plavanje, tek ali ples. Vse to bo pripomoglo k temu, da bo vaše telo pripravljeno na nove izzive, obenem pa boste prepreèili tudi tveganje za nastanek bolezni srca, kapi, visokega krvnega pritiska in podobno. Tudi kakovost vašega življenja se bo precej izboljšala.</p>
</br>
<h5  align="center">Prenehajte s kajenjem </h5></br>
<p>Kaj sploh še lahko napišemo o tej izredno škodljivi razvadi? S prenehanjem kajenja boste prepreèili številne bolezni in si zagotovili daljše in bolj zdravo življenje.</p>
</br>
<h5 align="center">Smejte se</h5></br>
<p>Z raziskavami so dokazali, da lahko spontan smeh vodi do tega, da bo vaše življenje bolj kakovostno, vi pa boste ob tem (p)ostali zdravi. S smehom naj bi namreè okrepili svoj imunski sistem, zmanjšali krvni pritisk ter odpravili stres ter depresijo.</p>
</br>
<h5 align="center">Zmanjšajte kolièino alkohola</h5></br>
<p>Niè ni narobe s kozarèkom vina na dan. A dolgotrajna zloraba alkohola vsekakor ni najbolj zdrava ideja. S èezmernim pitjem boste namreè spet poveèali možnost za nastanek razlièni bolezni, vse od bolezni jeter, visokega krvnega pritiska, kapi pa do diabetesa in poškodb srca. Poskrbite za zdravo življenje in pazite na to, koliko alkohola spijete.</p>
</br>
<h5  align="center">Poskrbite za zašèito na soncu</h5></br>
<p>Še en super nasvet za zdravo življenje. Kadarkoli ste izpostavljeni soncu, še posebej pa poleti, poskrbite za ustrezno zašèito vaše kože s primerno kremo za sonèenje. Niè ne bo škodilo, èe si boste nadeli tudi klobuk. Ogromno ljudi namreè umre zaradi kožnega raka, ki ga lahko prepreèite na povsem enostaven naèin, s predhodno opisanimi nasveti.</p>
</br>
<h5  align="center">Nauèite se globoko dihati</h5></br>
<p>Veèina ljudi dandanes živi kaotièno in prav niè zdravo življenje, zato ni niè èudnega, da smo vsi preveè obremenjeni in pod stresom. Naše telo pa se proti stresu bori na naèin “bojuj se ali zbeži”. Zato prihaja do poveèanega utripa srca, pospešenega dihanja in poveèanega krvnega pritiska. Èim dalj èasa je naše telo podvrženo stresu, tem veèjo škodo lahko le-ta povzroèi.</p>
</br>
<p>Nauèite se globoko dihati in obvladati stres. Zato vam svetujemo, da se vpišete v teèaj joge, kjer se boste nauèili pravilnih tehnik dihanja.</p>
</br>
<h5 align="center">Negujte otroka v sebi</h5></br>
<p>Staranje je povezano tudi s tem, kako stari se poèutite. Z raziskavami so namreè dokazali, da ljudje, ki se poèutijo nekaj let mlajši, kot resnièno so, živijo dalj èasa.  Poèutite se torej mladostno in si zagotovite daljše življenje.</p>
</br>
<h5 align="center">Redno obiskujte zdravnika</h5></br>
<p>Jabolko na dan odganja zdravnika stran.Vsaj tako pravi vsem znan pregovor. Mi vam pa vseeno priporoèamo redne letne obiske zdravnika, ki bo z razliènimi pregledi lahko pravoèasno odkril bolezen in poskrbel, da bo vaše življenje še naprej zdravo.</p>
</br>
<h5  align="center">Poskrbite za kakovostno spanje</h5></br>
<p>Zdravo življenje je odvisno tudi od tega, da spite dobro in dovolj, saj se med spanjem vaše telo obnavlja in pripravlja na izzive, ki jih bo prinesel nov dan.</p>

<p>Pazite na svoje zdravje. Tudi tako, da upoštevate naše koristne nasvete … Želimo vam dolgo in zdravo življenje.</p>', 1),


(2, '2019-06-08','3 hitri naèini, kako shujšati s toplo vodo',  '<b>Verjetno ni pripadnice ženskega spola, ki v nekem trenutku ne bi bila na dieti, hotela pospešiti metabolizma in izboljšati prebave. Gre za scenarij, v katerem se vsaj enkrat v življenju najde marsikatera, in tistih, ki se vsak ponedeljek odloèijo za drugo dieto, ni malo. Rešitev pa je lahko povsem preprosta, saj že s kozarcem tople vode lahko izboljšate poèutje in izgubite kakšen kilogram!</b></br></br></br>
<p>Za vse, ki ste v preteklosti poskusile 1001 dieto, a se nobena ni obnesla in išèete naèin, ki vam bo pomagal izboljšati poèutje in se hitreje znebiti odveènih kilogramov, strokovnjaki svetujejo, da poskusite s pitjem tople vode. Ne le, da ta pospeši prebavo in èisti kožo, ampak pomaga tudi pri hujšanju in boju proti celulitu.</p></br>
<u>Napitek za zjutraj, ki pomaga pri hujšanju in pospeši metabolizem:</u>
<p>kozarec tople vode</p>

<p>2 žlici limoninega soka</p>
<p>žlica medu</p></br>
<u>Napitek za zjutraj in zveèer, ki stabilizira sladkor v krvi, ustvarja obèutek sitosti:</u>
<p>kozarec tople vode</p>
<p>žlica medu</p>
<p>žlica cimeta</p> 

<p>Spijte polovico kozarca na prazen trebuh zjutraj in ostalo polovico zveèer po veèerji.</p>

<u>Napitek, ki si ga privošèite tekom dneva in ublaži potrebo po sladicah in izboljša prebavo:</u></br>
<p>kozarec tople vode</p>
<p>žlica limoninega soka</p>
<p>žlica medu</p>
<p>žlica cimeta</p></br>

<p>Temperatura vode naj bo takšna, da jo boste lahko normalno pili. V kolikor katere od dodanih sestavin ne marate, lahko pijete samo toplo vodo.</p>
', 1),

(3, '2019-06-10','Poveèanje mišiène mase, 10 kratkih nasvetov',  '
<h5>1.Poveèajte intenzivnost treninga</h5>

<p>-poveèanje vzdržljivosti, brez obèutnega poveèanja mišiène mase in moèi (12-15 ponovitev) </p>
<p>-poveèanje mišiène mase in moèi (6-8 ponovitev) </p>
<p>-poveèanje moèi (2-4 ponovitve) </p>

<p>Najbolj produktiven je trening, ki hkrati vpliva na poveèanje moèi in intenzivnosti. Priporoèljivo je, da se trenira po ciklih, in sicer, da se naèin treninga menja vsaka 2-3 mesece. Po tem obdobju lahko vkljuèimo en teden treninga izkljuèno za moè in nato sledi nadaljevanje novega 2-3 meseènega cikla treninga. </p>
</br>

<h5>2. Obremenitev dvigujte eksplozivno</h5>

<p>Kolièina prirasti mišiène mase je sorazmerna s kolièino uporabljene moèi, da se doloèena obremenitev premaga.Moè je definirana kot teža, ki jo dvignete, pomnožena s pospeškom (hitrostjo s katero potiskate težo navzgor, proti uporu). Da bi proizvedli veè moèi, morate poveèati težo tako, da breme dvigujete kar se da sunkovito (poveèate hitrost dviga, v primerjavi s hitrostjo spusta bremena).</p>


</br>
<h5>3. Poudarite negativne ponovitve (spust bremena)</h5>
<p>Rast mišic je odvisna od mišiènega krèenja. Posebej pomembno je, da breme spušèamo poèasi, kontrolirano. Tako dosegamo veè mišiène napetosti v fazi raztegovanja mišice. Daljši je èas oziroma poèasneje kot spušèamo breme, veèja je rast mišiène mase. </p>

<p>Najbolj produktiven naèin treninga je poèasen spust in hiter, vendar maksimalno kontroliran dvig. </p>


</br>
<h5>4. Pozabite na aerobne aktivnosti</h5>
<p>Aerobna vadba ovira poveèanje moèi ter okrevanje po treningu. Prazni nam zaloge glikogena, kar omejuje napredek v mišièni rasti. </p>


</br>
<h5>5. Poèivajte</h5>
<p>Veliko število posameznikov zaradi prevelike želje po èim hitrejšem uspehu dela osnovno napako, trenira neprekinjeno veè dni zapored. Telesu je potrebno zagotoviti dovolj poèitka in regeneracije. Potrebno si je vzeti dovolj dni v tednu za poèitek (2 dni), da si telo odpoèije, obnovi,  da se napolnijo glikogenske zaloge in, da se hormoni (testosteron in kortizol) vrnejo na optimalno raven. </p>


</br>
<h5>6. Obèutno poveèajte kalorijski vnos za obdobje treh dni</h5>
<p>Z nizkokalorièno dieto ni mogoèe doseèi pozitivnega nitrogenskega ravnovesja. Potrebno je poveèati kalorijski vnos tri dni v tednu. S tem boste spodbudili mišièno rast in metabolizem. Poveèa se obèutljivost celic na inzulin in napolnijo se glikogenske zaloge. </p>


</br>
<h5>7.Poveèajte vnos natrija-soli </h5>
<p>Natrij je izredno pomemben mineral, èeprav je na slabem glasu zaradi vezave vode v mišicah. Mišice potrebujejo natrij za rast, prav tako izboljša odzivnost celic na inzulin. </p>


</br>
<h5>8. Riba,riba,riba.....</h5>
<p>Ribe so bogate z beljakovinami in Omega 3 mašèobnimi kislinami. Slednje poveèujejo odzivnost celic na inzulin, kar vpliva na zaloge glikogena. Poveèa se pretok aminokislin v mišice, kar ohranja zaloge glutamina. </p>


</br>
<h5>9. Zaužijte beljakovinski napitek sredi noèi</h5>
<p>Rast mišic je odvisna od kaloriènega vnosa. Število obrokov, ki vsebujejo beljakovine je potrebno porazdeliti na veè manjših. V nasprotnem primeru telo ne bo sposobno absorbirati zadostne kolièine beljakovin, presežek pa bo pripeljal do kopièenja mašèobnih oblog. Beljakovinski napitek sredi noèi bo spodbudil anabolni uèinek in prepreèil katabolizem. </p>


</br>
<h5>10. Glutamin, kreatin, BCAA </h5>
<p>Glutamin je aminokislina, ki skrbi za dvig odpornosti. Posebej je priporoèljiva, kadar je telo podvrženo stresu zaradi diete in intenzivnega treninga. Kreatin pospeši proces nastajanja ATP, ki je pomemben za rast in vzdržljivost. Aminokisline z razvejano verigo (BCAA) L-levcin, L-izolevcin in L.valin spadajo k esencialnim aminokislinam. BCAA so tako gradnik kot tudi vir signala za pospešeno gradnjo mišiène mase.</p> ', 1)




;

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
(4, 'Borilne vešèine'),
(5, 'Gimnastika/Aerobika'),
(6, 'Indoor/Outdoor športi');

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
(28, 'qq', 'qq', 'public', 'hujsanje', '11.06.2019', 2),
(29, 'www', 'www', 'public', 'hujsanje', '11.06.2019', 2),
(30, 'javen1', 'd', 'public', 'kondicija', '11.06.2019', 2),
(31, 'public1', 'q', 'public', 'pridobivanje', '11.06.2019', 2),
(32, 'privatw1', 'q', 'privat', 'hujsanje', '11.06.2019', 2);

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
(128, 29, 1),
(129, 29, 7),
(130, 29, 10),
(131, 28, 2),
(132, 28, 8),
(133, 30, 1),
(134, 30, 1),
(135, 30, 1),
(136, 30, 2),
(137, 30, 12),
(138, 30, 12),
(139, 31, 1),
(140, 32, 7),
(141, 32, 10);

-- --------------------------------------------------------

--
-- Table structure for table `seznam`
--

CREATE TABLE `seznam` (
  `id` int(11) NOT NULL,
  `Uporabnik_id` int(11) NOT NULL,
  `Clanek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

INSERT INTO `slike` (`idSlike`, `imeSlike`, `tk_slike_clanek`) VALUES
(1,'https://i.guim.co.uk/img/media/9ebfe6eb392f208e944a21d1903b698965d35527/0_0_7360_4417/master/7360.jpg?width=1200&height=630&quality=85&auto=format&fit=crop&overlay-align=bottom%2Cleft&overlay-width=100p&overlay-base64=L2ltZy9zdGF0aWMvb3ZlcmxheXMvdGctZGVmYXVsdC5wbmc&s=edff7a7fac62c140017e4ff2ddbc3053', 2),
(2, 'https://images.indianexpress.com/2018/07/fish-sustainanbel-759.jpg', 4),
(3, 'https://resize.indiatvnews.com/en/resize/newbucket/715_-/2018/10/healthy-lifestyle-tips-1539427430.jpg', 1),
(4, 'https://image.shutterstock.com/image-vector/arm-bicep-strong-hand-icon-260nw-1054690373.jpg', 3);

INSERT INTO `slike` (`idSlike`, `imeSlike`, `tk_slike_uporabnik`) VALUES 
(5, 'slikep/1201540978blank-profile-picture-973461_960_720test.png',1);

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
(4, 'Toni', 'Žunec', 'toni.zunec@student.um.si', 'dce6345ea5b90d6ea53f0ef5c4b4c72c', 'm', 'navadni', '');

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
(1, 'Vaja1', 'Opis1', 'video1', 11, 1, 99, 1, 1),
(2, 'Vaja2', 'Opis2', 'video2', 22, 2, 88, 1, 2),
(3, 'Vaja3', 'Opis3', 'video3', 33, 3, 77, 1, 3),
(4, 'Vaja4', 'Opis4', 'video4', 44, 4, 66, 1, 4),
(5, 'Vaja5', 'Opis5', 'video5', 55, 5, 55, 1, 5),
(6, 'Vaja6', 'Opis6', 'video6', 66, 6, 44, 1, 6),
(7, 'Vaja7', 'Opis7', 'video7', 77, 7, 33, 1, 1),
(8, 'Vaja8', 'Opis8', 'video8', 88, 8, 22, 1, 2),
(9, 'Vaja9', 'Opis9', 'video9', 99, 9, 11, 1, 3),
(10, 'Vaja10', 'Opis10', 'video10', 100, 10, 222, 1, 1),
(11, 'Vaja11', 'Opis11', 'video11', 110, 11, 333, 1, 5),
(12, 'Vaja12', 'Opis12', 'video12', 120, 12, 444, 1, 6),
(13, 'Dogodek', 'èiglkc', 'https://www.youtube.com/embed/FjPvXMwTwQo', 15, 2, 12, 1, 5),
(14, 'weqweqeweqe', 'aweffefwefwe', 'https://www.youtube.com/embed/8kVI621fZug', 11, 22, 33, 1, 4);

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
  MODIFY `idClanek` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `idMeritev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meritve`
--
ALTER TABLE `meritve`
  MODIFY `idMeritve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `idPlan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `planvaja`
--
ALTER TABLE `planvaja`
  MODIFY `idPlanVaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `seznam`
--
ALTER TABLE `seznam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `idSlike` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uporabnik`
--
ALTER TABLE `uporabnik`
  MODIFY `idUporabnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vaje`
--
ALTER TABLE `vaje`
  MODIFY `idVaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
