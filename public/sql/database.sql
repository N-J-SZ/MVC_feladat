-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2022. Már 28. 13:50
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `214SZFTE_mvc_project`
--
CREATE DATABASE IF NOT EXISTS `214SZFTE_mvc_project` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214SZFTE_mvc_project`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `concerts`
--

CREATE TABLE `concerts` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `description` text COLLATE utf8_hungarian_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `concerts`
--

INSERT INTO `concerts` (`ID`, `date`, `place`, `description`, `price`) VALUES
(1, '2022-03-26', 'Baja', 'Papa Fleigh emlékkoncert', 2000),
(2, '2022-04-02', 'Pécs', 'Jazz Koncert', 2500),
(3, '2022-04-09', 'Szeged', 'Fesztivál', 3000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `contents`
--

CREATE TABLE `contents` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `content` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `contents`
--

INSERT INTO `contents` (`ID`, `title`, `content`) VALUES
(1, 'bio', 'Hot Jazz Band biográfia\n\nAz 1985-ben alapított Hot Jazz Band egyedülálló eredményeket, páratlan karriert tudhat magáénak. A hat zenész mégis a legbüszkébb arra lehet, hogy eredeti célkitűzésük, hogy újra életre keltsék, megismertessék és megszerettessék a jazzkorszak hangzásvilágát, elérte célját.\n\nA megalakuláskor még főként dixielandet játszó zenészek hamar rájöttek, hogy ez a műfaj sokkal gazdagabb, mint az elsőre megismert dixieland-repertoár. Az 1920-as, ’30-as, ’40-es évek muzsikája talán a legszínesebb könnyűzenei műfaj. A méltán népszerű charleston, shimmy, fox trott táncok dallamai, a ’20-as évek gramofonos hangzása, a ’30-as évek fox, szving táncok lüktető zenéje és a ’40-es évek szving és amerikai dixieland revival stílusai keltek életre általuk. Amint első lemezük kritikájában 1996-ban a MaJazz folyóiratban Fridrich Károly, a Liszt Ferenc Zeneakadémia Jazztanszékének jazztörténet professzora írta:\n\n    Ez a zenekar a hazai be-bop előtti stílust játszó együttesek közül az egyetlen, amely kétség kívül jazzt játszik.\n\nA kezdetektől céljuk volt az ugyanebből a korból származó magyar szerzemények repertoárra tűzése. Ez a törekvésük hozta meg igazán az áttörést számukra Magyarországon. Ebben a témában egyedüliként négy koncertnyi anyagot dolgoztak fel, s nevük egybeforrt a Kabos, Jávor, Karády, Tolnay, Latabár filmek zenéivel. Egyedi hangszereléseik s játékmodoruk, amivel a filmzenéket a jazz-re jellemző rögtönzéssel is vegyítették, utánozhatatlan hangzást kölcsönöznek műsoraiknak. A zenekar alapítója, trombitás, bendzsós, énekese Bényei Tamás a kort idéző énekmodorával nemcsak a közönség soraiban népszerű, 2002-ben ezért részesítették eMeRTon díjban. Azóta számos tradicionális jazz együttes követte példájukat, s a kortárs könnyűzene jeles sztárjai is már a Hot Jazz Band által újraélesztett dalokat énekelik, ám velük ellentétben az együttes sajátja azonban még mindig az, hogy igazi időutazásra viszik hallgatóságukat a teljesen korhű hangzás és megjelenés által. Műsoraikat színesíti bendzsózenekaruk és mosódeszka show is. Koncertjeiket a derűs hangulat, a vicces konferanszok és a közönséggel közös éneklések jellemzik.\n\nA Hot Jazz Band négy nemzetközi díjat nyert külföldön, köztük Európa, egyben a világ legnagyobb létszámú tradicionális versenyén lettek elsők a franciaországi Saint Raphaelben, 1995-ben. Az, hogy négy év alatt zsinórban négy nemzetközi versenyen diadalmaskodtak, ezzel világviszonylatban is egyedül állóak lettek, s hasonló teljesítménnyel egyetlen hazai nagy elődjük vagy kortársuk sem dicsekedhet. \n\nA hazai elismerések sem várattak magukra, a Magyar Rádió könnyűzenei díját, az eMeRTon díjat, két ízben nyerték el - ebből egy alkalommal Bényei Tamás, mint az év férfi énekese -, miközben a Líra, a Louis Armstrong és az Ezüst Életfa díjat is megkapták. \n\nkossuth-dij\n\n2015-ben Magyarország köztársasági elnöke – a kormány előterjesztésére – a Hot Jazz Band-nek páratlanul sikeres, külföldön is nagyra értékelt, a tradicionális dzsessz autentikus megszólaltatására épülő előadóművészi tevékenységük, valamint a magyar könnyűzenei örökség ápolását szolgáló, értékőrző művészi munkájuk elismeréseként a legmagasabb állami kitüntetést, a Kossuth-díjat adományozta.\n\nA magyar zenekarok közül egyedüliként kapott a Hot Jazz Band hatszor meghívást az Amerikai Egyesült Államokba, a rangos Sacramento Jazz Jubelee-ra, ahol kétszer választották a fesztivál legnépszerűbb zenekarának, s egyik koncertjüket a kaliforniai állami rádió élőben közvetítette. Olyan fesztiválokon is szerepeltek többek között Marciacban, Helsinkiben, Samois-ban, Korzikán, Isztambulban, Londonban, ahol még hazai formáció sosem járt. Európa huszonegy országa, Szlovákia, Csehország, Lengyelország, Horvátország, Szerbia, Románia, Ausztria, Németország, Svájc, Olaszország, Monaco, Franciaország, Hollandia, Dánia, Svédország, Finnország, Belgium, Észtroszág, Nagy Britannia, Törökország, Szlovénia, az amerikai kontinensen, az USA-ban Sacramento, Lake Tahoe, Ázsiában, Kinában, Shanghaj és Ningbo látta vendégül a Hot Jazz Bandet. Számtalan magyar és nemzetközi híresség fordult meg műsoraikban itthon és külföldön egyaránt.\n\nA Hot Jazz Band a hazai tradicionális együttesek közül egyedüliként élvezheti a honi komolyzenei élet világszínvonalú képviselőinek meghívását. Több közös koncertet adtak a Budapesti Vonósokkal, a Miskolci Szimfonikusokkal, a Győri Filharmonikusokkal, a Tatabányai Kamara Filharmonikusokkal, a Gödöllői Szimfonikusokkal, a veszprémi Mendelsshon Kamarazenekarral, a Kodály Filharmonikus Debrecennel, a Solti Kamarazenekarral, a Kossuth-díjas Amadinda együttessel, a Zuglói Filharmonikusokkal, a Békésmegyei Szimfonikus Zenekarral, a MÁV Szimfonikusokkal, a Talamba ütősegyüttessel, ezen kívül az erdélyi Csíki Kamarazenekarral is. 2022-ben a világsztár operaénekesnő, Rost Andrea invitálta meg közös koncertsorozatra a zenekart.\n\nHatalmas elismerés és megtiszteltetés a Hot Jazz Band-nek, hogy 2010-ben Szabó István, Oscar-díjas filmrendező meginvitálta az együttest a Rokonok című filmjének zenei betétjeiben közreműködni. A zenekar a következő filmekben vállalt alkotói szerepet: 2004 Bergendy Péter - Állítsátok meg Terézanyut, 2006 Elek Judit - A hét nyolcadik napja, 2006 Szabó István - Rokonok, 2013 Tóth Roland - Gondolatok a pincében (animációs film, zeneszerző Bényei Tamás) 2015 Gárdos Péter – Hajnali láz (zeneszerző Pacsay Attila, ez a mű nyerte a legjobb játékfilm díját a dráma kategóriában, a Cinequest Filmfesztiválon, a kaliforniai San Joséban, az USA-ban, majd 2016-ban az olaszországi Parmai Filmzenei Fesztválon is első díjat nyert), 2017 Gárdos Éva - Budapest Noire (zeneszerző Pacsay Attila). 2019-ben Vitézy László rendező Házasságtörés című TV-filmjében pedig már képernyőre is került a zenekar, a Lesz még nekünk szebb életünk című dal erejéig, 2022-ben pedig a szintén Vitézy László által rendezett Az énekesnő című TV-film zenéjét játszotta a Hot Jazz Band.\n\nA Hot Jazz Band napjainkban is a legfoglalkoztatottabb együttesek közé tartozik. 13 megjelent CD-jük mellé új lemezt készítenek, s az ország minél több pontjára szeretnék elvinni műsorukat, vidám percekkel ajándékozva meg hallgatóságukat.\nA Hot Jazz Band díjai\n\n    1994 Le Havre, Louis Armstrong Nemzetközi Jazz Verseny, I. díj,\n    1994 Salgótarján Országos Dixieland Verseny, I. díj\n    1995 Saint Raphael, Nemzetközi New Orleans Jazz Verseny, 54 zenekar, I. díj,\n    1995 Salgótarján Országos Dixieland Verseny, I. díj\n    1996 eMeRTon-díj (az év jazz-zenekara)\n    1997 Megéve Nemzetközi Jazz Verseny, I. díj\n    1997 Saint Address, Louis Armstrong Nemzetközi Jazz Verseny, II. díj\n    1998 Saint Address, Louis Armstrong Nemzetközi Jazz Verseny, I. díj\n    1998 Saint Address, Louis Armstrong Nemzetközi Jazz Verseny, a legjobb szólista díja, Bényei Tamás\n    1999 Líra díj, A Magyar Előadó-művészetért Alapítvány díja\n    2002 eMeRTon-díj, az év énekese Bényei Tamás\n    2006 Louis Armstrong emlékdíj a Swing Jazz Kultúráért Alapítvány díja\n    2015 Ezüst Életfa díj, a Magyar Önkormányzatok Szövetségének díja\n    2015 Kossuth-díj\n'),
(2, 'contacts', '\nKapcsolat\n\nA Hot Jazz Band a legkülönfélébb alkalmakkor vállal közreműködést, koncerten, fesztiválon, gálaesteken, vállalati és magánrendezvényeken, esküvőn, születésnapon. Ez lehet koncertműsor, háttérzene, vacsorazene, tánczene (slow fox, keringő, tangó). Legújabb műsorunk egy interaktív 60 perces program gyerekeknek. Felkérés és érdeklődés esetén e-mailben keressék Bényei Tamás zenekarvezetőt.\n\nTel.: +36 30 425 4848\n\nE-mail:\nhotjazzband@hotjazzband.hu');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `members`
--

CREATE TABLE `members` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `description` text COLLATE utf8_hungarian_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `members`
--

INSERT INTO `members` (`ID`, `name`, `position`, `description`, `picture`) VALUES
(1, 'Fodor László', 'klarinét, szaxofon', '1969 november 22-én születtem Sárváron, egy tizenötezres nyugat dunántúli kisvárosban. Szüleim 10 évesen írattak be a helyi zeneiskolába akkor még nem tudva, hogy a zene az egész életemet meg fogja határozni.\r\n\r\n13 éves koromtól tudatosan zenész szerettem volna lenni, és ez a vágyam azóta is töretlen.\r\n\r\nA győri Richter János Zeneművészeti Szakközépiskolában érettségiztem, majd sikeres felvételi után főiskolai tanulmányaimat a Liszt Ferenc Zeneművészeti Főiskola Zeneiskolai Tanárképző Intézetének győri tagozatán folytattam.\r\n\r\nEkkor ismertem meg kezdetben lemezről, majd személyes találkozás útján a Molnár Dixieland klarinétosát, Molnár Gyulát, akinek játéka nagyon nagy hatással volt rám, és tulajdonképpen meghatározta további életem alakulását.\r\n\r\nA klarinét- és szolfézstanári diploma megszerzése után felvételt nyertem a budapesti Zeneakadémiára, ahol 1993-ban művésztanári diplomát szereztem Kovács Béla osztályában.\r\n\r\nAz akadémiai évek alatt, 1992-ben álláslehetőséget kaptam a gödöllői Frederic Chopin zeneiskolába, melyet elvállaltam, és a következő évben meg is kaptam a klarinéttanári kinevezést az intézmény akkori igazgatónőjétől, Ferenczi Annától.\r\n\r\n1990-től tagja lettem a kecskeméti Bohém Ragtime Jazzbandnak, ahol legnagyobb kedvencemnek, a dixieland és ragtime zenélésnek hódolhattam. Sokat tanultam az együttes tagjaitól, különösen a zenekar vezetőjétől, Ittzés Tamástól a 20-as 30-as évek stílusáról, előadásmódjáról, de emberségről és összetartásról is. Ezekben az években tanítottam másfél tanéven keresztül a gödöllői Premontrei Szent Norbert Gimnáziumban is.\r\n\r\n2000-ben meghívást kaptam Magyarország legjobb dixieland zenekarába a Hot Jazz Bandba. Egyszerre két vágyam is teljesült; egyrészt a legprofibb együttesben játszhattam, másrészt az általam ikonként tisztelt Molnár Gyula meghívott a zenekarába játszani. Természetesen nem mentem el, mert milyen lett volna a Molnár Dixieland Molnár Gyula nélkül egy koncerten, de szerencsére, azóta többször is sikerült együtt muzsikálnunk, nagy örömömre. Közben 2002-ben megnősültem, feleségem Buka Enikő, aki a zeneiskola igazgatója, munkahelyi és otthoni főnököm.\r\n\r\nA Hot Jazz Bandes évek alatt a tanítás is változott, hiszen 2007-ben egy iskolai gyermek dixieland zenekart alapítottam Dixix Rhythm néven, akik 2010 óta önálló együttesként színesítik Gödöllő zenei palettáját, valamint 2011-ben egy másik együttessel kezdtünk el dolgozni, akik maguknak a Forest Dixie Band nevet adták. Ezen felül néhány éve a zeneiskola Ifjúsági Fúvószenekarát is én irányítom. 2013 tavaszán a vezetésem alatt álló Forest Dixie Band az Országos Kamarazenei Versenyen, Székesfehérváron első díjat kapott, 2014-ben az Országos Zenekari Versenyen, Dunaújvárosban az Ifjúsági Fúvószenekarral másodikak lettünk.\r\n\r\n2012-ben Gödöllő Város Önkormányzata pedagógiai és szakmai munkám elismeréseként Gödöllő Kultúrájáért díjat adományozott.\r\n\r\n2014-ben Gödöllő város egyik művészeti alapítványa, a Körösfői Alapítvány, Körösfői díjat adományozott.\r\n\r\nRendkívül meghatottan és boldogan vettem át a Hot Jazz Band tagjaként 2015-ben, sok éves munkánk elismeréseként, Magyarország Köztársasági Elnökétől, Áder János Úrtól a Parlament kupolatermében a legrangosabb állami kitüntetést, a Kossuth díjat, melyet az együttes tagjaival megosztva kaptunk. A hatalmas elismerés mellett külön öröm volt számomra, hogy azok mellett állhattam a díj átvételénél, akikkel a legszívesebben játszom azt a műfajt, melynek szeretete 16 éves korom óta kitörölhetetlenül belém ivódott, a dixielandet és a swinget.\r\n\r\n2016-ban Gödöllő Város Önkormányzata, zenetanári munkámért, valamint a városban és a városon kívül folytatott kulturális tevékenységemért Gödöllő Városért Díjat adományozott, ami hatalmas megtiszteltetés a számomra. Jelenleg ezeket a díjakat igyekszem „megszolgálni” akár a Hot Jazz Band koncertjein, a növendékeim tanításában és koncertjein, vagy a növendékegyütteseim (dixizenekarok, fúvószenekar, klarinét kvartett) tanításában és hangversenyein.', 'fodor-laszlo.jpg'),
(2, 'Galbács István', 'dob', 'Születtem Budapesten, az időm kezdetén, szemüvegesen - ha emlékeim nem csalnak -, bár ez elég rég történt, mikor is a frissen újjáépített Erzsébet hídon még a 44-es villamos vitt át Budára.\r\n\r\nKözéposztálybéli szüleim már korán nagy hangsúlyt fektettek zenei ízlésem formálására, ezért néha egy-egy a rádióban elhangzó Poór Péter és Aradszky László szám között kikapcsolták a készüléket. Persze még sokáig ez maradt számomra az egyetlen zenei forrás, ami miatt mostanában is ér meglepetés, ha régi, \"elfeledettnek\" hitt felvételeket hallok, és rájövök, hogy emlékszem a szövegükre.\r\n\r\nTízéves koromban egy \"toborzó\" keretében lettem a kerületi zeneiskola tanulója, és első tanáromnak (Siklósi Gábor - ma Szegeden tanít) köszönhetően rövid időn belül különbséget tudtam tenni az LGT és az Illés együttes között (minden értelemben). Ezt követően több éven keresztül hosszú, fáradságos utat jártam be, mialatt diáktársaim a szolfézstermek padjait koptatták. Ez az idő azonban nem múlt el nyomtalanul, ekkor szerzett tapasztalataimnak köszönhetően ma jobban ismerem Budapest utcáit, mint a zeneelmélet rögös útját. Sajnos. így nem is csoda, ha első sikeremet nem zenei téren, hanem egy építőtábori (fiúknak rendezett) lábszépségversenyen arattam. Az ifjabbak kedvéért: az építőtábor egy koedukált szórakozási lehetőség volt középiskolás diákok részére, azzal a céllal, hogy minél kisebb kárt okozzanak a mezőgazdaságnak.\r\n\r\nA jazz-t az életembe Billy Cobhamnek, (mint a Frankfurti Rádió Big Band vendégszólistájának) az első magyarországi fellépése hozta el, s tett a műfaj mindenevő rajongójává. Ez az évek során sokat csiszolódott - köszönhető ez annak a véletlennek is, minek segítségével megismertem Bényei Tamást, s 1988-ban a Hot Jazz Band tagja lettem.\r\n\r\nMég a kedvenceimről egy pár szó:\r\nNo1 zenekar: Benny Goodman & His Orchestra 1935 - 38\r\nNo1 felvétel: Gene Krupa & His Orchestra - Ball of Fire 1942\r\n\r\nS miért ezt a fajta zenét kedvelem?\r\nMert benne van az a ki nem alvó tűz, amitől mozdul a láb, lüktet a szív. Ez az az utánozhatatlan izgalom, melyet úgy hívnak: SWING.', 'galbacs-istvan.jpg'),
(3, 'Szabó Lóránt', 'gitár, bendzsó', '1976-ban születtem Siófokon. Mivel életem nagy részét itt éltem le, így a zenélés is a környékbeli zenekarokhoz köthető. A muzsikálás sokféle változatát kipróbáltam, templomi kórust kísérve és a beszédek között klasszikus darabokat játszva, vegyes kar tenor szólamában énekelve, helyi amatőr beat és rockzenekarokban, latin és dixieland zenekarban, jazz trióban, akusztikus gitár duóban, gitáron, basszusgitáron, vokált énekelve.\r\n\r\nFontosabb zenekaraim az Apáti Dixieland Band 1997-től 2013-ig - itt volt lehetőségem Apáti János irányításával magamba szívni a korai jazz alapjait -, Blokk együttes 2004-től 2012-ig, Los Companeros és Noah’s Ark.\r\n\r\nZenei tanulmányaimról: 1990-ben 14 évesen kezdtem el gitározni egy magántanárnál Zamárdiban. Nála két évet tanultam főként klasszikus darabokat. Utána néhány évig tartó autodidakta időszak következett, ami alatt az improvizálás területén kezdtem el bontogatni szárnyaimat. Ezután Budapestre jártam Tornóczky Ferenchez, akitől rengeteget tanultam. Ő készített fel az akkor még szárnyait bontogató Kőbányai Zenei Stúdió felvételiére. Itt 1997-től 2001-ig tanultam gitárt, majd 2002-től 2005-ig a dob szakot is elvégeztem. Ebben az időszakban tanáraim voltak gitáron: Tornóczky Ferenc és Maróthy Zoltán, dobon: Sramkó János, zenekari gyakorlaton: Babos Gyula, Fekete István, Fekete Kovács Kornél, László Attila, Maróthy Zoltán és Tóth János Rudolf.\r\n\r\nEzután a Kodolányi János Főiskola frissen induló jazz tanszakára jelentkeztem, ahol 2010-ben diplomáztam jazzgitár előadóművészként. Hangszeresen itt Birta Miklós és Czírják Csaba volt segítségemre a fejlődésben.\r\n\r\nFontosnak tartom megemlíteni a balatonföldvári zeneiskolát, ahol 11 csodás évet töltöttem el 2001-től 2012-ig gitártanárként.\r\n\r\n2012 szeptemberében költöztem Budapestre. A város központi jellege és mérete miatt természetesen magában hordozta a nagyobb lehetőségeket is. A lehetőség pedig telefonhívás formájában idővel meg is érkezett, amikor Bényei Tamás a Hot Jazz Band vezetője felhívott és felkért a zenekar gitáros/bendzsós posztjának betöltésére. Mivel már régóta áhítoztam arra, hogy ilyen színvonalú zenekarban játsszak, azonnal igent mondtam. Számos próbajáték és “mély víz” - a bendzsón való játék elsajátításának sürgető megvalósítása - után végül 2014 májusától váltam hivatalosan a Hot Jazz Band tagjává. A zenekar a következő évben, 2015-ben 30 éven át tartó zenei tevékenységét megkoronázandó, megkapta a legnagyobb államilag zenekarnak adható elismerést, a Kossuth-díjat. Remélem sikerül a zene iránti alázattal és a zenésztársak iránti tisztelettel, valamint rengeteg munkával és gyakorlással megfelelni e díj által támasztott követelményeknek a Hot Jazz Band tagjaként.', 'szabo-lorant.jpg'),
(4, 'Juhász Zoltán', 'bőgő', '1962. január 30-án születtem Győrött. Gyermekéveimet is ebben a szép dunántúli városban töltöttem.\r\n\r\nSokat sportoltam: tíz évig úsztam és két évig kenuztam. Az általános iskola befejezése után szakmát tanultam. Zenei pályafutásom viszonylag későn kezdődött tizenhat éves koromban. Hartyándi Jenő barátom segítségével jutottam jazz-felvételekhez. Ebben az időben ez nem is volt egyszerű feladat. Jenő révén ismertem meg Tiborc Dénest, akitől egy évig szaxofonozni és basszusgitározni tanultam. Dénes testvére Tiborc András ekkor a Lakatos Tóni Quartett nagybőgőse volt. Egy győri koncertjük meghallgatása után úgy éreztem a nagybőgő az én hangszerem. Akkori munkahelyemen felmondtam, majd újságkihordóként kezdtem dolgozni. Emellett a munka mellett elegendő időm maradt a jazz-konzervatóriumi felvételire való felkészülésre. Ebben Tiborc András volt a segítségemre. Sokat köszönhetek neki.\r\n\r\nGyőri barátaim segítségével jutottam el addig, hogy 1981-ben sikeres felvételi vizsgát tettem a Bartók Béla Zeneművészeti Szakközépiskola Jazz-bőgő szakára. Ezután három évig Berkes Balázs növendéke ként gyarapítottam tudásomat. Rengeteg kiváló muzsikussal ismerkedtem meg és zenéltem együtt. Párhuzamosan több zenekarban is játszottam. Elsőként a Regős Qiuntettet említeném. Ezzel a zenekarral évekig megtalálhatóak voltunk a Medicor Jazz Klubban heti rendszerességgel. Nagyszerű zenészek alkották a zenekart: Regős István - zongora, szaxofon, Borbély Mihály - szaxofon, Gyárfás István - gitár, Baló István - dob. Másodikként Süle László zongorista trióját említem, ahol Sramkó János volt a dobos. Süle László mint zeneszerző is kiváló volt. Ezzel a zenekarral jazz-klubokban és jazz-fesztiválokon léptünk fel. Egy alkalommal egy hétig Finnországban szerepeltünk nagy sikerrel. A harmadik zenekar Gadó Gábor triója volt, amiben rövid ideig (egy évig) működtem közre: Gadó Gábor - gitár, a dobos poszton felváltva Nagy Károly és Szende Gábor. Itt életem egy korszaka lezárult, mivel 1984-86 között sorkatonai szolgálatot teljesítettem a Veszprémi Katona Zenekarban.\r\n\r\nEzután tagja lettem az Oldsmobile Dixieland Band-nek. Itt nyolc évig zenéltem. Ez a zenekar rengeteg hazai és külföldi fellépéssel büszkélkedhetett. Mindenképp megemlíteném az együttes trombitás-énekesét Forgács Lászlót (Papa Fleigh), akitől sokunk megtanulta a tradicionális jazz játékstílusát. 1994-ben lettem a Hot Jazz Band tagja, ahol a mai napig zenélek. Külföldi turnéink során sok kiváló zenésszel játszottam együtt például: Acker Bilk, Marcel Zanini, Bill Allred, Leroy Jones, Peter Ecklund. Egy alkalommal Franciaországban abban a szerencsében volt részünk, hogy együtt játszhattunk Wynton Marsalis-szal egy fesztivál záró rendezvényén.\r\n\r\nRemélem továbbra is zenészként dolgozhatok, minél több derűs percet nyújtva hallgatóságomnak. Szabadidőmben mindig a családommal vagyok, ugyanis három gyermekem van: Orsi, Dóri és Viktor, akik nagyon sok örömet szereznek.', 'juhasz-zoltan-2.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menuItems`
--

CREATE TABLE `menuItems` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `menuItems`
--

INSERT INTO `menuItems` (`ID`, `name`, `url`) VALUES
(1, 'Biográfia', 'index'),
(2, 'Tagjaink', 'members'),
(3, 'Zenéink', 'musics'),
(4, 'Koncertek', 'concerts'),
(5, 'Elérhetőségeink', 'contacts');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `musics`
--

CREATE TABLE `musics` (
  `ID` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `musics`
--

INSERT INTO `musics` (`ID`, `title`, `url`) VALUES
(1, 'Wonderful World', 'gkAgmPeDtGQ'),
(2, 'Just a Gigolo', 'eAORLDN7xdI'),
(3, 'Oda vagyok magáért', 'KFQ-YXJKPo0');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `menuItems`
--
ALTER TABLE `menuItems`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `concerts`
--
ALTER TABLE `concerts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `contents`
--
ALTER TABLE `contents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `members`
--
ALTER TABLE `members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `menuItems`
--
ALTER TABLE `menuItems`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `musics`
--
ALTER TABLE `musics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
