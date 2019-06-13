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
(1, 'Venum Challenger MMA rokavice', 'RokaviceVenum_1', 'Ro�no izdelane na Tajskem', 44.00, 4),
(2, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_1', 'Zelena barva', 44.00, 2),
(3, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_2', 'Siva barva', 44.00, 2),
(4, 'Venum Challanger 2.0 rokavice', 'RokaviceVenum_2', 'Ro�no izdelane na Tajskem', 47.99, 4),
(5, 'RSN - Whey Protein Isolate 1816g', 'RSNProteini_1', 'RSN Whey Protein Isolate je izdelek najvi�je kakovosti narejen izklju�no iz �istega sirotkinega izolata.', 49.99, 1);

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
(4, '2019-06-10','U�ivanje rib za zdrav stil �ivljenja',  '- Priporo�amo pestro u�ivanje rib enkrat do dvakrat tedensko, predvsem kot zamenjavo za rde�e meso in mesne izdelke;
</br><p>- Ribe imajo ugodno hranilno sestavo, so bogat vir biolo�ko visoko vrednih beljakovin, vitaminov in mineralov in so edinstvene po vsebnosti esencialnih omega3 ma��obnih kislin, ki so pomembne za zdravje srca;</p>
</br><p>- Zlasti manj�e ribe, ki jih zau�ijemo s kostmi vred, so vir vitamina D, kalcija, fosforja, morske ribe pa tudi joda in selena;</p>
</br><p>- Ribe so lahko prebavljive, z malo vezivnega tkiva ter rahlo celi�no strukturo in veljajo za kakovosten in uravnote�en obrok, �e posebej v kombinaciji z zelenjavo (npr. blitvo); </p>
</br><p>- Zaradi vseh omenjenih koristi naj bi tedensko zau�ili okoli 200 gramov ribjega mesa, od tega polovico mastnih modrih morskih rib;</p>
</br><p>- Najbolj koristne ribje jedi so pripravljene iz sve�ih ali zamrznjenih rib, prehransko manj primerni so ribji pripravki (npr. panirane ribje pal�ke);</p>
</br><p>- Vse ribe na trgu morajo glede mikrobiolo�ke in kemijske varnosti ustrezati predpisom, nadzor pa redno izvajajo pristojne in�titucije;</p>
</br><p>- Ribe in ribji izdelki lahko vsebujejo zdravju �kodljiva onesna�evala. S pestro izbiro �manj�ih� rib (sardela, sardon, sku�a, mol, �par, postrv, cipelj, orada, morski list itd.), ki so kratko�ive in ni�je v prehranjevalni verigi, lahko ta tveganja za zdravje bistveno zmanj�amo. Z morebitnimi �kodljivimi onesna�evali so praviloma bolj obremenjene dolgo �ive�e, ve�je ter roparske ribe;</p>
</br><p>- Ribe in ribji izdelki so za posameznike lahko alergeni, zato morajo biti v skladu z zakonodajo ustrezno ozna�eni.</p>', 1),

(1, '2019-06-03','10 nasvetov za zdravo �ivljenje',  '<h5 align="center">Poskrbite za zdravo prehranjevanje</h5></br>
Pa saj to za vas ni nobena novica, kajne? O zdravem prehranjevanju govorijo prav vsi, saj je predpogoj za zdravo �ivljenje. Na ta na�in se lahko izognete �tevilnim kroni�nim boleznim, med katere sodijo kardiovaskularna obolenja, diabetes tipa 2 in nekatere vrste raka. Priporo�amo uravnote�eno prehrano, ki naj sestoji iz veliko sadja, zelenjave ter polnozrnatih izdelkov, pa tudi nemastnega mesa, rib in mle�nih proizvodov. Izogibajte se predelanim �ivilom in hitri hrani.
</br>
<h5 align="center">Bodite aktivni vsaj 30 minut na dan</h5></br>
<p>�ivljenje si lahko podalj�ate tudi z rednim gibanjem. S tem ne mislimo na kak�no te�ko, rigorozno vadbo (�eprav vam tudi ta ne bi �kodila). Gibanje je lahko tako preprosto kot igra z otroki, sprehod s psom, kolesarjenje, plavanje, tek ali ples. Vse to bo pripomoglo k temu, da bo va�e telo pripravljeno na nove izzive, obenem pa boste prepre�ili tudi tveganje za nastanek bolezni srca, kapi, visokega krvnega pritiska in podobno. Tudi kakovost va�ega �ivljenja se bo precej izbolj�ala.</p>
</br>
<h5  align="center">Prenehajte s kajenjem </h5></br>
<p>Kaj sploh �e lahko napi�emo o tej izredno �kodljivi razvadi? S prenehanjem kajenja boste prepre�ili �tevilne bolezni in si zagotovili dalj�e in bolj zdravo �ivljenje.</p>
</br>
<h5 align="center">Smejte se</h5></br>
<p>Z raziskavami so dokazali, da lahko spontan smeh vodi do tega, da bo va�e �ivljenje bolj kakovostno, vi pa boste ob tem (p)ostali zdravi. S smehom naj bi namre� okrepili svoj imunski sistem, zmanj�ali krvni pritisk ter odpravili stres ter depresijo.</p>
</br>
<h5 align="center">Zmanj�ajte koli�ino alkohola</h5></br>
<p>Ni� ni narobe s kozar�kom vina na dan. A dolgotrajna zloraba alkohola vsekakor ni najbolj zdrava ideja. S �ezmernim pitjem boste namre� spet pove�ali mo�nost za nastanek razli�ni bolezni, vse od bolezni jeter, visokega krvnega pritiska, kapi pa do diabetesa in po�kodb srca. Poskrbite za zdravo �ivljenje in pazite na to, koliko alkohola spijete.</p>
</br>
<h5  align="center">Poskrbite za za��ito na soncu</h5></br>
<p>�e en super nasvet za zdravo �ivljenje. Kadarkoli ste izpostavljeni soncu, �e posebej pa poleti, poskrbite za ustrezno za��ito va�e ko�e s primerno kremo za son�enje. Ni� ne bo �kodilo, �e si boste nadeli tudi klobuk. Ogromno ljudi namre� umre zaradi ko�nega raka, ki ga lahko prepre�ite na povsem enostaven na�in, s predhodno opisanimi nasveti.</p>
</br>
<h5  align="center">Nau�ite se globoko dihati</h5></br>
<p>Ve�ina ljudi dandanes �ivi kaoti�no in prav ni� zdravo �ivljenje, zato ni ni� �udnega, da smo vsi preve� obremenjeni in pod stresom. Na�e telo pa se proti stresu bori na na�in �bojuj se ali zbe�i�. Zato prihaja do pove�anega utripa srca, pospe�enega dihanja in pove�anega krvnega pritiska. �im dalj �asa je na�e telo podvr�eno stresu, tem ve�jo �kodo lahko le-ta povzro�i.</p>
</br>
<p>Nau�ite se globoko dihati in obvladati stres. Zato vam svetujemo, da se vpi�ete v te�aj joge, kjer se boste nau�ili pravilnih tehnik dihanja.</p>
</br>
<h5 align="center">Negujte otroka v sebi</h5></br>
<p>Staranje je povezano tudi s tem, kako stari se po�utite. Z raziskavami so namre� dokazali, da ljudje, ki se po�utijo nekaj let mlaj�i, kot resni�no so, �ivijo dalj �asa.  Po�utite se torej mladostno in si zagotovite dalj�e �ivljenje.</p>
</br>
<h5 align="center">Redno obiskujte zdravnika</h5></br>
<p>Jabolko na dan odganja zdravnika stran.Vsaj tako pravi vsem znan pregovor. Mi vam pa vseeno priporo�amo redne letne obiske zdravnika, ki bo z razli�nimi pregledi lahko pravo�asno odkril bolezen in poskrbel, da bo va�e �ivljenje �e naprej zdravo.</p>
</br>
<h5  align="center">Poskrbite za kakovostno spanje</h5></br>
<p>Zdravo �ivljenje je odvisno tudi od tega, da spite dobro in dovolj, saj se med spanjem va�e telo obnavlja in pripravlja na izzive, ki jih bo prinesel nov dan.</p>

<p>Pazite na svoje zdravje. Tudi tako, da upo�tevate na�e koristne nasvete � �elimo vam dolgo in zdravo �ivljenje.</p>', 1),


(2, '2019-06-08','3 hitri na�ini, kako shuj�ati s toplo vodo',  '<b>Verjetno ni pripadnice �enskega spola, ki v nekem trenutku ne bi bila na dieti, hotela pospe�iti metabolizma in izbolj�ati prebave. Gre za scenarij, v katerem se vsaj enkrat v �ivljenju najde marsikatera, in tistih, ki se vsak ponedeljek odlo�ijo za drugo dieto, ni malo. Re�itev pa je lahko povsem preprosta, saj �e s kozarcem tople vode lahko izbolj�ate po�utje in izgubite kak�en kilogram!</b></br></br></br>
<p>Za vse, ki ste v preteklosti poskusile 1001 dieto, a se nobena ni obnesla in i��ete na�in, ki vam bo pomagal izbolj�ati po�utje in se hitreje znebiti odve�nih kilogramov, strokovnjaki svetujejo, da poskusite s pitjem tople vode. Ne le, da ta pospe�i prebavo in �isti ko�o, ampak pomaga tudi pri huj�anju in boju proti celulitu.</p></br>
<u>Napitek za zjutraj, ki pomaga pri huj�anju in pospe�i metabolizem:</u>
<p>kozarec tople vode</p>

<p>2 �lici limoninega soka</p>
<p>�lica medu</p></br>
<u>Napitek za zjutraj in zve�er, ki stabilizira sladkor v krvi, ustvarja ob�utek sitosti:</u>
<p>kozarec tople vode</p>
<p>�lica medu</p>
<p>�lica cimeta</p> 

<p>Spijte polovico kozarca na prazen trebuh zjutraj in ostalo polovico zve�er po ve�erji.</p>

<u>Napitek, ki si ga privo��ite tekom dneva in ubla�i potrebo po sladicah in izbolj�a prebavo:</u></br>
<p>kozarec tople vode</p>
<p>�lica limoninega soka</p>
<p>�lica medu</p>
<p>�lica cimeta</p></br>

<p>Temperatura vode naj bo tak�na, da jo boste lahko normalno pili. V kolikor katere od dodanih sestavin ne marate, lahko pijete samo toplo vodo.</p>
', 1),

(3, '2019-06-10','Pove�anje mi�i�ne mase, 10 kratkih nasvetov',  '
<h5>1.Pove�ajte intenzivnost treninga</h5>

<p>-pove�anje vzdr�ljivosti, brez ob�utnega pove�anja mi�i�ne mase in mo�i (12-15 ponovitev) </p>
<p>-pove�anje mi�i�ne mase in mo�i (6-8 ponovitev) </p>
<p>-pove�anje mo�i (2-4 ponovitve) </p>

<p>Najbolj produktiven je trening, ki hkrati vpliva na pove�anje mo�i in intenzivnosti. Priporo�ljivo je, da se trenira po ciklih, in sicer, da se na�in treninga menja vsaka 2-3 mesece. Po tem obdobju lahko vklju�imo en teden treninga izklju�no za mo� in nato sledi nadaljevanje novega 2-3 mese�nega cikla treninga. </p>
</br>

<h5>2. Obremenitev dvigujte eksplozivno</h5>

<p>Koli�ina prirasti mi�i�ne mase je sorazmerna s koli�ino uporabljene mo�i, da se dolo�ena obremenitev premaga.Mo� je definirana kot te�a, ki jo dvignete, pomno�ena s pospe�kom (hitrostjo s katero potiskate te�o navzgor, proti uporu). Da bi proizvedli ve� mo�i, morate pove�ati te�o tako, da breme dvigujete kar se da sunkovito (pove�ate hitrost dviga, v primerjavi s hitrostjo spusta bremena).</p>


</br>
<h5>3. Poudarite negativne ponovitve (spust bremena)</h5>
<p>Rast mi�ic je odvisna od mi�i�nega kr�enja. Posebej pomembno je, da breme spu��amo po�asi, kontrolirano. Tako dosegamo ve� mi�i�ne napetosti v fazi raztegovanja mi�ice. Dalj�i je �as oziroma po�asneje kot spu��amo breme, ve�ja je rast mi�i�ne mase. </p>

<p>Najbolj produktiven na�in treninga je po�asen spust in hiter, vendar maksimalno kontroliran dvig. </p>


</br>
<h5>4. Pozabite na aerobne aktivnosti</h5>
<p>Aerobna vadba ovira pove�anje mo�i ter okrevanje po treningu. Prazni nam zaloge glikogena, kar omejuje napredek v mi�i�ni rasti. </p>


</br>
<h5>5. Po�ivajte</h5>
<p>Veliko �tevilo posameznikov zaradi prevelike �elje po �im hitrej�em uspehu dela osnovno napako, trenira neprekinjeno ve� dni zapored. Telesu je potrebno zagotoviti dovolj po�itka in regeneracije. Potrebno si je vzeti dovolj dni v tednu za po�itek (2 dni), da si telo odpo�ije, obnovi,  da se napolnijo glikogenske zaloge in, da se hormoni (testosteron in kortizol) vrnejo na optimalno raven. </p>


</br>
<h5>6. Ob�utno pove�ajte kalorijski vnos za obdobje treh dni</h5>
<p>Z nizkokalori�no dieto ni mogo�e dose�i pozitivnega nitrogenskega ravnovesja. Potrebno je pove�ati kalorijski vnos tri dni v tednu. S tem boste spodbudili mi�i�no rast in metabolizem. Pove�a se ob�utljivost celic na inzulin in napolnijo se glikogenske zaloge. </p>


</br>
<h5>7.Pove�ajte vnos natrija-soli </h5>
<p>Natrij je izredno pomemben mineral, �eprav je na slabem glasu zaradi vezave vode v mi�icah. Mi�ice potrebujejo natrij za rast, prav tako izbolj�a odzivnost celic na inzulin. </p>


</br>
<h5>8. Riba,riba,riba.....</h5>
<p>Ribe so bogate z beljakovinami in Omega 3 ma��obnimi kislinami. Slednje pove�ujejo odzivnost celic na inzulin, kar vpliva na zaloge glikogena. Pove�a se pretok aminokislin v mi�ice, kar ohranja zaloge glutamina. </p>


</br>
<h5>9. Zau�ijte beljakovinski napitek sredi no�i</h5>
<p>Rast mi�ic je odvisna od kalori�nega vnosa. �tevilo obrokov, ki vsebujejo beljakovine je potrebno porazdeliti na ve� manj�ih. V nasprotnem primeru telo ne bo sposobno absorbirati zadostne koli�ine beljakovin, prese�ek pa bo pripeljal do kopi�enja ma��obnih oblog. Beljakovinski napitek sredi no�i bo spodbudil anabolni u�inek in prepre�il katabolizem. </p>


</br>
<h5>10. Glutamin, kreatin, BCAA </h5>
<p>Glutamin je aminokislina, ki skrbi za dvig odpornosti. Posebej je priporo�ljiva, kadar je telo podvr�eno stresu zaradi diete in intenzivnega treninga. Kreatin pospe�i proces nastajanja ATP, ki je pomemben za rast in vzdr�ljivost. Aminokisline z razvejano verigo (BCAA) L-levcin, L-izolevcin in L.valin spadajo k esencialnim aminokislinam. BCAA so tako gradnik kot tudi vir signala za pospe�eno gradnjo mi�i�ne mase.</p> ', 1)




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
(2, 'Obla�ila'),
(3, 'Fitness oprema'),
(4, 'Borilne ve��ine'),
(5, 'Gimnastika/Aerobika'),
(6, 'Indoor/Outdoor �porti');

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
(4, 'Toni', '�unec', 'toni.zunec@student.um.si', 'dce6345ea5b90d6ea53f0ef5c4b4c72c', 'm', 'navadni', '');

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
(13, 'Dogodek', '�iglkc', 'https://www.youtube.com/embed/FjPvXMwTwQo', 15, 2, 12, 1, 5),
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
