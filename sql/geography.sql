--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;


SET search_path = public, pg_catalog;
DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_2af72f10;
DROP INDEX IF EXISTS public.wazimap_geography_2fc6351a;
DROP INDEX IF EXISTS public.wazimap_geography_84cdc76c;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
DROP INDEX IF EXISTS public.wazimap_geography_long_name_9b8409f5_like;
DROP INDEX IF EXISTS public.wazimap_geography_version_01953818_like;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_9a5128d2_uniq;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_bbe3c9fc_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Tablespace:
--

CREATE TABLE public.wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(100),
    version character varying(100)
);


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public
--

CREATE SEQUENCE public.wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public
--

ALTER SEQUENCE public.wazimap_geography_id_seq OWNED BY public.wazimap_geography.id;

ALTER TABLE ONLY public.wazimap_geography ALTER COLUMN id SET DEFAULT nextval('public.wazimap_geography_id_seq'::regclass);


COPY public.wazimap_geography (name, geo_code, version, parent_level, long_name, geo_level, parent_code) FROM stdin WITH DELIMITER ',';
Nepal,NP,2016,\N,Nepal,country,\N
Province No. 1,1,2016,country,Province No. 1,province,NP
Province No. 2,2,2016,country,Province No. 2,province,NP
Province No. 3,3,2016,country,Province No. 3,province,NP
Gandaki Province,4,2016,country,Gandaki Province,province,NP
Province No. 5,5,2016,country,Province No. 5,province,NP
Karnali Province,6,2016,country,Karnali Province,province,NP
Sudurpashchim Province,7,2016,country,Sudurpashchim Province,province,NP
Achham,01,2016,province,Achham,district,7
Arghakhanchi,02,2016,province,Arghakhanchi,district,5
Baglung,03,2016,province,Baglung,district,4
Baitadi,04,2016,province,Baitadi,district,7
Bajhang,05,2016,province,Bajhang,district,7
Bajura,06,2016,province,Bajura,district,7
Banke,07,2016,province,Banke,district,5
Bara,08,2016,province,Bara,district,2
Bardiya,09,2016,province,Bardiya,district,5
Bhaktapur,10,2016,province,Bhaktapur,district,3
Bhojpur,11,2016,province,Bhojpur,district,1
Chitwan,12,2016,province,Chitwan,district,3
Dadeldhura,13,2016,province,Dadeldhura,district,7
Dailekh,14,2016,province,Dailekh,district,6
Dang,15,2016,province,Dang,district,5
Darchula,16,2016,province,Darchula,district,7
Dhading,17,2016,province,Dhading,district,3
Dhankuta,18,2016,province,Dhankuta,district,1
Dhanusa,19,2016,province,Dhanusa,district,2
Dolakha,20,2016,province,Dolakha,district,3
Dolpa,21,2016,province,Dolpa,district,6
Doti,22,2016,province,Doti,district,7
Gorkha,23,2016,province,Gorkha,district,4
Gulmi,24,2016,province,Gulmi,district,5
Humla,25,2016,province,Humla,district,6
Ilam,26,2016,province,Ilam,district,1
Jajarkot,27,2016,province,Jajarkot,district,6
Jhapa,28,2016,province,Jhapa,district,1
Jumla,29,2016,province,Jumla,district,6
Kailali,30,2016,province,Kailali,district,7
Kalikot,31,2016,province,Kalikot,district,6
Kanchanpur,32,2016,province,Kanchanpur,district,7
Kapilbastu,33,2016,province,Kapilbastu,district,5
Kaski,34,2016,province,Kaski,district,4
Kathmandu,35,2016,province,Kathmandu,district,3
Kavrepalanchowk,36,2016,province,Kavrepalanchowk,district,3
Khotang,37,2016,province,Khotang,district,1
Lalitpur,38,2016,province,Lalitpur,district,3
Lamjung,39,2016,province,Lamjung,district,4
Mahottari,40,2016,province,Mahottari,district,2
Makwanpur,41,2016,province,Makwanpur,district,3
Manang,42,2016,province,Manang,district,4
Morang,43,2016,province,Morang,district,1
Mugu,44,2016,province,Mugu,district,6
Mustang,45,2016,province,Mustang,district,4
Myagdi,46,2016,province,Myagdi,district,4
Nawalparasi East,47,2016,province,Nawalparasi East,district,4
Nuwakot,48,2016,province,Nuwakot,district,3
Okhaldhunga,49,2016,province,Okhaldhunga,district,1
Palpa,50,2016,province,Palpa,district,5
Panchthar,51,2016,province,Panchthar,district,1
Parbat,52,2016,province,Parbat,district,4
Parsa,53,2016,province,Parsa,district,2
Pyuthan,54,2016,province,Pyuthan,district,5
Ramechhap,55,2016,province,Ramechhap,district,3
Rasuwa,56,2016,province,Rasuwa,district,3
Rautahat,57,2016,province,Rautahat,district,2
Rolpa,58,2016,province,Rolpa,district,5
Rukum East,59,2016,province,Rukum East,district,5
Rupandehi,60,2016,province,Rupandehi,district,5
Salyan,61,2016,province,Salyan,district,6
Sankhuwasabha,62,2016,province,Sankhuwasabha,district,1
Saptari,63,2016,province,Saptari,district,2
Sarlahi,64,2016,province,Sarlahi,district,2
Sindhuli,65,2016,province,Sindhuli,district,3
Sindhupalchowk,66,2016,province,Sindhupalchowk,district,3
Siraha,67,2016,province,Siraha,district,2
Solukhumbu,68,2016,province,Solukhumbu,district,1
Sunsari,69,2016,province,Sunsari,district,1
Surkhet,70,2016,province,Surkhet,district,6
Syangja,71,2016,province,Syangja,district,4
Tanahu,72,2016,province,Tanahu,district,4
Taplejung,73,2016,province,Taplejung,district,1
Tehrathum,74,2016,province,Terhathum,district,1
Udayapur,75,2016,province,Udayapur,district,1
Nawalparasi West,76,2016,province,Nawalparasi West,district,5
Rukum West,77,2016,province,Rukum West,district,6
Aamchok,10001,2016,district,Aamchok Rural Municipality,local,11
Arun,10002,2016,district,Arun Rural Municipality,local,11
Bhojpur,10003,2016,district,Bhojpur Municipality,local,11
Hatuwagadhi,10004,2016,district,Hatuwagadhi Rural Municipality,local,11
Pauwadungma,10005,2016,district,Pauwadungma Rural Municipality,local,11
Ramprasad Rai,10006,2016,district,Ramprasad Rai Rural Municipality,local,11
Salpasilichho,10007,2016,district,Salpasilichho Rural Municipality,local,11
Sadananda,10008,2016,district,Sadananda Municipality,local,11
Temkemaiyung,10009,2016,district,Temkemaiyung Rural Municipality,local,11
Aathrai Triveni,1001,2016,district,Aathrai Triveni Rural Municipality,local,73
Maiwakhola,1002,2016,district,Maiwakhola Rural Municipality,local,73
Marin,1003,2016,district,Marin Rural Municipality,local,73
Mikwakhola,1004,2016,district,Mikwakhola Rural Municipality,local,73
Phaktanglung,1005,2016,district,Phaktanglung Rural Municipality,local,73
Phungling,1006,2016,district,Phungling Municipality,local,73
Sidingwa,1007,2016,district,Sidingwa Rural Municipality,local,73
Sirijangha,1008,2016,district,Sirijangha Rural Municipality,local,73
Pathibhara Yangwarak,1009,2016,district,Pathibhara Yangwarak Rural Municipality,local,73
Thulung Dudhkoshi,11001,2016,district,Thulung Dudhkoshi Rural Municipality,local,68
Mapya Dudhkoshi,11002,2016,district,Mapya Dudhkoshi Rural Municipality,local,68
Khumbu Pasanglhamu,11003,2016,district,Khumbu Pasanglhamu Rural Municipality,local,68
Likhupike,11004,2016,district,Likhupike Rural Municipality,local,68
Mahakulung,11005,2016,district,Mahakulung Rural Municipality,local,68
Nechasalyan,11006,2016,district,Nechasalyan Rural Municipality,local,68
Solu Dudhkunda,11007,2016,district,Solu Dudhkunda Municipality,local,68
Sotang,11008,2016,district,Sotang Rural Municipality,local,68
Champadevi,12001,2016,district,Champadevi Rural Municipality,local,49
Chishankhugadhi,12002,2016,district,Chishankhugadhi Rural Municipality,local,49
Khijidemba,12003,2016,district,Khijidemba Rural Municipality,local,49
Likhu,12004,2016,district,Likhu Rural Municipality,local,49
Manebhanjyang,12005,2016,district,Manebhanjyang Rural Municipality,local,49
Molung,12006,2016,district,Molung Rural Municipality,local,49
Siddhicharan,12007,2016,district,Siddhicharan Municipality,local,49
Sunkoshi,12008,2016,district,Sunkoshi Rural Municipality,local,49
Ainselukharka,13001,2016,district,Ainselukharka Rural Municipality,local,37
Barahapokhari,13002,2016,district,Barahapokhari Rural Municipality,local,37
Diprung Chuichumma,13003,2016,district,Diprung Chuichumma Rural Municipality,local,37
Halesi Tuwachung,13004,2016,district,Halesi Tuwachung Municipality,local,37
Jantedhunga,13005,2016,district,Jantedhunga Rural Municipality,local,37
Kepilasgadhi,13006,2016,district,Kepilasgadhi Rural Municipality,local,37
Khotehang,13007,2016,district,Khotehang Rural Municipality,local,37
Rawabesi,13008,2016,district,Rawabesi Rural Municipality,local,37
Diktel Rupakot Majhuwagadhi,13009,2016,district,Diktel Rupakot Majhuwagadhi Municipality,local,37
Sakela,13010,2016,district,Sakela Rural Municipality,local,37
Belaka,14001,2016,district,Belaka Municipality,local,75
Chaudandigadhi,14002,2016,district,Chaudandigadhi Municipality,local,75
Katari,14003,2016,district,Katari Municipality,local,75
Rautamai,14004,2016,district,Rautamai Rural Municipality,local,75
Sunkoshi,14005,2016,district,Sunkoshi Rural Municipality,local,75
Tapli,14006,2016,district,Tapli Rural Municipality,local,75
Triyuga,14007,2016,district,Triyuga Municipality,local,75
Udayapurgadhi,14008,2016,district,Udayapurgadhi Rural Municipality,local,75
Koshi Tappu Wildlife Reserve,14099,2016,district,Koshi Tappu Wildlife Reserve,local,75
Agnisair Krishnasawaran,15001,2016,district,Agnisair Krishnasawaran Rural Municipality,local,63
Balanbihul,15002,2016,district,Balanbihul Rural Municipality,local,63
Rajgadh,15003,2016,district,Rajgadh Rural Municipality,local,63
Bishnupur,15004,2016,district,Bishnupur Rural Municipality,local,63
Bodebarsain,15005,2016,district,Bodebarsain Municipality,local,63
Chhinnamasta,15006,2016,district,Chhinnamasta Rural Municipality,local,63
Dakneshwori,15007,2016,district,Dakneshwori Municipality,local,63
Hanumannagar Kankalini,15008,2016,district,Hanumannagar Kankalini Municipality,local,63
Kanchanrup,15009,2016,district,Kanchanrup Municipality,local,63
Khadak,15010,2016,district,Khadak Municipality,local,63
Mahadeva,15011,2016,district,Mahadeva Rural Municipality,local,63
Rajbiraj,15012,2016,district,Rajbiraj Municipality,local,63
Rupani,15013,2016,district,Rupani Rural Municipality,local,63
Saptakoshi,15014,2016,district,Saptakoshi Municipality,local,63
Shambhunath,15015,2016,district,Shambhunath Municipality,local,63
Surunga,15016,2016,district,Surunga Municipality,local,63
Tilathi Koiladi,15017,2016,district,Tilathi Koiladi Rural Municipality,local,63
Tirahut,15018,2016,district,Tirahut Rural Municipality,local,63
Koshi Tappu Wildlife Reserve,15099,2016,district,Koshi Tappu Wildlife Reserve,local,63
Arnama,16001,2016,district,Arnama Rural Municipality,local,67
Aurahi,16002,2016,district,Aurahi Rural Municipality,local,67
Bariyarpatti,16003,2016,district,Bariyarpatti Rural Municipality,local,67
Bhagwanpur,16004,2016,district,Bhagwanpur Rural Municipality,local,67
Bishnupur,16005,2016,district,Bishnupur Rural Municipality,local,67
Dhangadhimai,16006,2016,district,Dhangadhimai Municipality,local,67
Golbazar,16007,2016,district,Golbazar Municipality,local,67
Kalyanpur,16008,2016,district,Kalyanpur Municipality,local,67
Karjanha,16009,2016,district,Karjanha Municipality,local,67
Lahan,16010,2016,district,Lahan Municipality,local,67
Laxmipur Patari,16011,2016,district,Laxmipur Patari Rural Municipality,local,67
Mirchaiya,16012,2016,district,Mirchaiya Municipality,local,67
Naraha,16013,2016,district,Naraha Rural Municipality,local,67
Navarajpur,16014,2016,district,Navarajpur Rural Municipality,local,67
Sakhuwa Nankarkatti,16015,2016,district,Sakhuwa Nankarkatti Rural Municipality,local,67
Siraha,16016,2016,district,Siraha Municipality,local,67
Sukhipur,16017,2016,district,Sukhipur Municipality,local,67
Aurahi,17001,2016,district,Aurahi Rural Municipality,local,19
Bateshwor,17002,2016,district,Bateshwor Rural Municipality,local,19
Bideha,17003,2016,district,Bideha Municipality,local,19
Kshireshwornath,17004,2016,district,Kshireshwornath Municipality,local,19
Dhanauji,17005,2016,district,Dhanauji Rural Municipality,local,19
Dhanusadham,17006,2016,district,Dhanusadham Municipality,local,19
Ganeshman Charnath,17007,2016,district,Ganeshman Charnath Municipality,local,19
Hansapur,17008,2016,district,Hansapur Municipality,local,19
Janaknandini,17009,2016,district,Janaknandini Rural Municipality,local,19
Janakpurdham,17010,2016,district,Janakpurdham Sub-Metropolitan City,local,19
Kamala,17011,2016,district,Kamala Municipality,local,19
Laxminiya,17012,2016,district,Laxminiya Rural Municipality,local,19
Mithila,17013,2016,district,Mithila Municipality,local,19
Mithila Bihari,17014,2016,district,Mithila Bihari Municipality,local,19
Mukhiyapatti Musaharmiya,17015,2016,district,Mukhiyapatti Musaharmiya Rural Municipality,local,19
Nagarain,17016,2016,district,Nagarain Municipality,local,19
Sabaila,17017,2016,district,Sabaila Municipality,local,19
Shahidnagar,17018,2016,district,Shahidnagar Municipality,local,19
Aurahi,18001,2016,district,Aurahi Municipality,local,40
Balawa,18002,2016,district,Balawa Municipality,local,40
Bardibas,18003,2016,district,Bardibas Municipality,local,40
Bhangaha,18004,2016,district,Bhangaha Municipality,local,40
Ekdara,18005,2016,district,Ekdara Rural Municipality,local,40
Gaushala,18006,2016,district,Gaushala Municipality,local,40
Jaleshwor,18007,2016,district,Jaleshwor Municipality,local,40
Loharpatti,18008,2016,district,Loharpatti Municipality,local,40
Mahottari,18009,2016,district,Mahottari Rural Municipality,local,40
Manara Shiswa,18010,2016,district,Manara Shiswa Municipality,local,40
Matihani,18011,2016,district,Matihani Municipality,local,40
Pipara,18012,2016,district,Pipara Rural Municipality,local,40
Ramgopalpur,18013,2016,district,Ramgopalpur Municipality,local,40
Samsi,18014,2016,district,Samsi Rural Municipality,local,40
Sonma,18015,2016,district,Sonma Rural Municipality,local,40
Bagmati,19001,2016,district,Bagmati Municipality,local,64
Balara,19002,2016,district,Balara Municipality,local,64
Barahathawa,19003,2016,district,Barahathawa Municipality,local,64
Basbariya,19004,2016,district,Basbariya Rural Municipality,local,64
Bishnu,19005,2016,district,Bishnu Rural Municipality,local,64
Brahmapuri,19006,2016,district,Brahmapuri Rural Municipality,local,64
Chakraghatta,19007,2016,district,Chakraghatta Rural Municipality,local,64
Chandranagar,19008,2016,district,Chandranagar Rural Municipality,local,64
Dhanakaul,19009,2016,district,Dhanakaul Rural Municipality,local,64
Godaita,19010,2016,district,Godaita Municipality,local,64
Haripur,19011,2016,district,Haripur Municipality,local,64
Haripurwa,19012,2016,district,Haripurwa Municipality,local,64
Hariwan,19013,2016,district,Hariwan Municipality,local,64
Ishworpur,19014,2016,district,Ishworpur Municipality,local,64
Kabilasi,19015,2016,district,Kabilasi Municipality,local,64
Kaudena,19016,2016,district,Kaudena Rural Municipality,local,64
Lalbandi,19017,2016,district,Lalbandi Municipality,local,64
Malangawa,19018,2016,district,Malangawa Municipality,local,64
Parsa,19019,2016,district,Parsa Rural Municipality,local,64
Ramnagar,19020,2016,district,Ramnagar Rural Municipality,local,64
Dudhauli,20001,2016,district,Dudhauli Municipality,local,65
Ghyanglekh,20002,2016,district,Ghyanglekh Rural Municipality,local,65
Golanjor,20003,2016,district,Golanjor Rural Municipality,local,65
Hariharpurgadhi,20004,2016,district,Hariharpurgadhi Rural Municipality,local,65
Kamalamai,20005,2016,district,Kamalamai Municipality,local,65
Marin,20006,2016,district,Marin Rural Municipality,local,65
Phikkal,20007,2016,district,Phikkal Rural Municipality,local,65
Sunkoshi,20008,2016,district,Sunkoshi Rural Municipality,local,65
Tinpatan,20009,2016,district,Tinpatan Rural Municipality,local,65
Phalelung,2001,2016,district,Phalelung Rural Municipality,local,51
Phalgunanda,2002,2016,district,Phalgunanda Rural Municipality,local,51
Hilihang,2003,2016,district,Hilihang Rural Municipality,local,51
Kummayak,2004,2016,district,Kummayak Rural Municipality,local,51
Miklajung,2005,2016,district,Miklajung Rural Municipality,local,51
Phidim,2006,2016,district,Phidim Municipality,local,51
Tumbewa,2007,2016,district,Tumbewa Rural Municipality,local,51
Yangwarak,2008,2016,district,Yangwarak Rural Municipality,local,51
Doramba,21001,2016,district,Doramba Rural Municipality,local,55
Gokulganga,21002,2016,district,Gokulganga Rural Municipality,local,55
Khandadevi,21003,2016,district,Khandadevi Rural Municipality,local,55
Likhu Tamakoshi,21004,2016,district,Likhu Tamakoshi Rural Municipality,local,55
Manthali,21005,2016,district,Manthali Municipality,local,55
Ramechhap,21006,2016,district,Ramechhap Municipality,local,55
Sunapati,21007,2016,district,Sunapati Rural Municipality,local,55
Umakunda,21008,2016,district,Umakunda Rural Municipality,local,55
Baiteshwor,22001,2016,district,Baiteshwor Rural Municipality,local,20
Bhimeshwor,22002,2016,district,Bhimeshwor Municipality,local,20
Bigu,22003,2016,district,Bigu Rural Municipality,local,20
Gaurishankar,22004,2016,district,Gaurishankar Rural Municipality,local,20
Jiri,22005,2016,district,Jiri Municipality,local,20
Kalinchok,22006,2016,district,Kalinchok Rural Municipality,local,20
Melung,22007,2016,district,Melung Rural Municipality,local,20
Shailung,22008,2016,district,Shailung Rural Municipality,local,20
Tamakoshi,22009,2016,district,Tamakoshi Rural Municipality,local,20
Balephi,23001,2016,district,Balephi Rural Municipality,local,66
Bahrabise,23002,2016,district,Bahrabise Municipality,local,66
Bhotekoshi,23003,2016,district,Bhotekoshi Rural Municipality,local,66
Chautara Sangachokgadhi,23004,2016,district,Chautara Sangachokgadhi Municipality,local,66
Helambu,23005,2016,district,Helambu Rural Municipality,local,66
Indrawati,23006,2016,district,Indrawati Rural Municipality,local,66
Jugal,23007,2016,district,Jugal Rural Municipality,local,66
Lisankhupakhar,23008,2016,district,Lisankhupakhar Rural Municipality,local,66
Melamchi,23009,2016,district,Melamchi Municipality,local,66
Panchpokhari Thangpal,23010,2016,district,Panchpokhari Thangpal Rural Municipality,local,66
Sunkoshi,23011,2016,district,Sunkoshi Rural Municipality,local,66
Tripurasundari,23012,2016,district,Tripurasundari Rural Municipality,local,66
Banepa,24001,2016,district,Banepa Municipality,local,36
Bethanchok,24002,2016,district,Bethanchok Rural Municipality,local,36
Bhumlu,24003,2016,district,Bhumlu Rural Municipality,local,36
Chauri Deurali,24004,2016,district,Chauri Deurali Rural Municipality,local,36
Dhulikhel,24005,2016,district,Dhulikhel Municipality,local,36
Khanikhola,24006,2016,district,Khanikhola Rural Municipality,local,36
Mahabharat,24007,2016,district,Mahabharat Rural Municipality,local,36
Mandan Deupur,24008,2016,district,Mandan Deupur Municipality,local,36
Namobuddha,24009,2016,district,Namobuddha Municipality,local,36
Panauti,24010,2016,district,Panauti Municipality,local,36
Panchkhal,24011,2016,district,Panchkhal Municipality,local,36
Roshi,24012,2016,district,Roshi Rural Municipality,local,36
Temal,24013,2016,district,Temal Rural Municipality,local,36
Bagmati,25001,2016,district,Bagmati Rural Municipality,local,38
Godawari,25002,2016,district,Godawari Municipality,local,38
Konjyosom,25003,2016,district,Konjyosom Rural Municipality,local,38
Lalitpur,25004,2016,district,Lalitpur Metropolitan,local,38
Mahalaxmi,25005,2016,district,Mahalaxmi Municipality,local,38
Mahankal,25006,2016,district,Mahankal Rural Municipality,local,38
Bhaktapur,26001,2016,district,Bhaktapur Municipality,local,10
Changunarayan,26002,2016,district,Changunarayan Municipality,local,10
Madhyapur Thimi,26003,2016,district,Madhyapur Thimi Municipality,local,10
Suryabinayak,26004,2016,district,Suryabinayak Municipality,local,10
Budhanilkantha,27001,2016,district,Budhanilkantha Municipality,local,35
Chandragiri,27002,2016,district,Chandragiri Municipality,local,35
Dakshinkali,27003,2016,district,Dakshinkali Municipality,local,35
Gokarneshwor,27004,2016,district,Gokarneshwor Municipality,local,35
Kageshwori Manohara,27005,2016,district,Kageshwori Manohara Municipality,local,35
Kathmandu,27006,2016,district,Kathmandu Metropolitan,local,35
Kirtipur,27007,2016,district,Kirtipur Municipality,local,35
Nagarjun,27008,2016,district,Nagarjun Municipality,local,35
Shankharapur,27009,2016,district,Shankharapur Municipality,local,35
Tarakeshwor,27010,2016,district,Tarakeshwor Municipality,local,35
Tokha,27011,2016,district,Tokha Municipality,local,35
Belkotgadhi,28001,2016,district,Belkotgadhi Municipality,local,48
Bidur,28002,2016,district,Bidur Municipality,local,48
Dupcheshwor,28003,2016,district,Dupcheshwor Rural Municipality,local,48
Kakani,28004,2016,district,Kakani Rural Municipality,local,48
Kispang,28005,2016,district,Kispang Rural Municipality,local,48
Likhu,28006,2016,district,Likhu Rural Municipality,local,48
Myagang,28007,2016,district,Myagang Rural Municipality,local,48
Panchakanya,28008,2016,district,Panchakanya Rural Municipality,local,48
Shivapuri,28009,2016,district,Shivapuri Rural Municipality,local,48
Suryagadhi,28010,2016,district,Suryagadhi Rural Municipality,local,48
Tadi,28011,2016,district,Tadi Rural Municipality,local,48
Tarakeshwor,28012,2016,district,Tarakeshwor Rural Municipality,local,48
Shivapuri Watershed And Wildlife Reserve,28088,2016,district,Shivapuri Watershed And Wildlife Reserve,local,48
Langtang National Park,28099,2016,district,Langtang National Park,local,48
Gosainkunda,29001,2016,district,Gosainkunda Rural Municipality,local,56
Kalika,29002,2016,district,Kalika Rural Municipality,local,56
Naukunda,29003,2016,district,Naukunda Rural Municipality,local,56
Parbatikunda,29004,2016,district,Parbatikunda Rural Municipality,local,56
Uttargaya,29005,2016,district,Uttargaya Rural Municipality,local,56
Benighat Rorang,30001,2016,district,Benighat Rorang Rural Municipality,local,17
Dhunibesi,30002,2016,district,Dhunibesi Municipality,local,17
Gajuri,30003,2016,district,Gajuri Rural Municipality,local,17
Galchhi,30004,2016,district,Galchhi Rural Municipality,local,17
Gangajamuna,30005,2016,district,Gangajamuna Rural Municipality,local,17
Jwalamukhi,30006,2016,district,Jwalamukhi Rural Municipality,local,17
Khaniyabas,30007,2016,district,Khaniyabas Rural Municipality,local,17
Netrawati Dabjong,30008,2016,district,Netrawati Dabjong Rural Municipality,local,17
Nilkantha,30009,2016,district,Nilkantha Municipality,local,17
Chulachuli,3001,2016,district,Chulachuli Rural Municipality,local,26
Rubivalley,30010,2016,district,Rubivalley Rural Municipality,local,17
Siddhalek,30011,2016,district,Siddhalek Rural Municipality,local,17
Thakre,30012,2016,district,Thakre Rural Municipality,local,17
Tripurasundari,30013,2016,district,Tripurasundari Rural Municipality,local,17
Deumai,3002,2016,district,Deumai Municipality,local,26
Phakphokthum,3003,2016,district,Phakphokthum Rural Municipality,local,26
Ilam,3004,2016,district,Ilam Municipality,local,26
Mai,3005,2016,district,Mai Municipality,local,26
Maijogmai,3006,2016,district,Maijogmai Rural Municipality,local,26
Mangsebung,3007,2016,district,Mangsebung Rural Municipality,local,26
Rong,3008,2016,district,Rong Rural Municipality,local,26
Sandakpur,3009,2016,district,Sandakpur Rural Municipality,local,26
Suryodaya,3010,2016,district,Suryodaya Municipality,local,26
Bagmati,31001,2016,district,Bagmati Rural Municipality,local,41
Bakaiya,31002,2016,district,Bakaiya Rural Municipality,local,41
Bhimphedi,31003,2016,district,Bhimphedi Rural Municipality,local,41
Hetaunda,31004,2016,district,Hetaunda Sub-Metropolitan City,local,41
Indrasarowar,31005,2016,district,Indrasarowar Rural Municipality,local,41
Kailash,31006,2016,district,Kailash Rural Municipality,local,41
Makwanpurgadhi,31007,2016,district,Makwanpurgadhi Rural Municipality,local,41
Manahari,31008,2016,district,Manahari Rural Municipality,local,41
Raksirang,31009,2016,district,Raksirang Rural Municipality,local,41
Thaha,31010,2016,district,Thaha Municipality,local,41
Parsa Wildlife Reserve,31088,2016,district,Parsa Wildlife Reserve,local,41
Chitawan National Park,31099,2016,district,Chitawan National Park,local,41
Baudhimai,32001,2016,district,Baudhimai Municipality,local,57
Brindaban,32002,2016,district,Brindaban Municipality,local,57
Chandrapur,32003,2016,district,Chandrapur Municipality,local,57
Dewahi Gonahi,32004,2016,district,Dewahi Gonahi Municipality,local,57
Durgabhagawati,32005,2016,district,Durgabhagawati Rural Municipality,local,57
Gadhimai,32006,2016,district,Gadhimai Municipality,local,57
Garuda,32007,2016,district,Garuda Municipality,local,57
Gaur,32008,2016,district,Gaur Municipality,local,57
Gujara,32009,2016,district,Gujara Municipality,local,57
Ishnath,32010,2016,district,Ishnath Municipality,local,57
Katahariya,32011,2016,district,Katahariya Municipality,local,57
Madhavnarayan,32012,2016,district,Madhavnarayan Municipality,local,57
Maulapur,32013,2016,district,Maulapur Municipality,local,57
Paroha,32014,2016,district,Paroha Municipality,local,57
Phatuwa Bijayapur,32015,2016,district,Phatuwa Bijayapur Municipality,local,57
Rajdevi,32016,2016,district,Rajdevi Municipality,local,57
Rajpur,32017,2016,district,Rajpur Municipality,local,57
Yamunamai,32018,2016,district,Yamunamai Rural Municipality,local,57
Aadarsha Kotwal,33001,2016,district,Aadarsha Kotwal Rural Municipality,local,08
Baragadhi,33002,2016,district,Baragadhi Rural Municipality,local,08
Bishrampur,33003,2016,district,Bishrampur Rural Municipality,local,08
Devtal,33004,2016,district,Devtal Rural Municipality,local,08
Jitpur Simra,33005,2016,district,Jitpur Simra Sub-Metropolitan City,local,08
Kalaiya,33006,2016,district,Kalaiya Sub-Metropolitan City,local,08
Karaiyamai,33007,2016,district,Karaiyamai Rural Municipality,local,08
Kolhawi,33008,2016,district,Kolhawi Municipality,local,08
Mahagadhimai,33009,2016,district,Mahagadhimai Municipality,local,08
Nijgadh,33010,2016,district,Nijgadh Municipality,local,08
Pachrauta,33011,2016,district,Pachrauta Municipality,local,08
Parwanipur,33012,2016,district,Parwanipur Rural Municipality,local,08
Pheta,33013,2016,district,Pheta Rural Municipality,local,08
Prasauni,33014,2016,district,Prasauni Rural Municipality,local,08
Simraungadh,33015,2016,district,Simraungadh Municipality,local,08
Suvarna,33016,2016,district,Suvarna Rural Municipality,local,08
Parsa Wildlife Reserve,33099,2016,district,Parsa Wildlife Reserve,local,08
Bahudarmai,34001,2016,district,Bahudarmai Municipality,local,53
Bindabasini,34002,2016,district,Bindabasini Rural Municipality,local,53
Birgunj,34003,2016,district,Birgunj Metropolitan,local,53
Chhipaharmai,34004,2016,district,Chhipaharmai Rural Municipality,local,53
Dhobini,34005,2016,district,Dhobini Rural Municipality,local,53
Jagarnathpur,34006,2016,district,Jagarnathpur Rural Municipality,local,53
Jirabhawani,34007,2016,district,Jirabhawani Rural Municipality,local,53
Kalikamai,34008,2016,district,Kalikamai Rural Municipality,local,53
Pakaha Mainpur,34009,2016,district,Pakaha Mainpur Rural Municipality,local,53
Parsagadhi,34010,2016,district,Parsagadhi Municipality,local,53
Paterwa Sugauli,34011,2016,district,Paterwa Sugauli Rural Municipality,local,53
Pokhariya,34012,2016,district,Pokhariya Municipality,local,53
Sakhuwa Prasauni,34013,2016,district,Sakhuwa Prasauni Rural Municipality,local,53
Thori,34014,2016,district,Thori Rural Municipality,local,53
Chitwan National Park,34099,2016,district,Chitwan National Park,local,53
Bharatpur,35001,2016,district,Bharatpur Metropolitan,local,12
Ichchhakamana,35002,2016,district,Ichchhakamana Rural Municipality,local,12
Kalika,35003,2016,district,Kalika Municipality,local,12
Khairahani,35004,2016,district,Khairahani Municipality,local,12
Madi,35005,2016,district,Madi Municipality,local,12
Rapti,35006,2016,district,Rapti Municipality,local,12
Ratnanagar,35007,2016,district,Ratnanagar Municipality,local,12
Chitawan National Park,35099,2016,district,Chitawan National Park,local,12
Aarughat,36001,2016,district,Aarughat Rural Municipality,local,23
Ajirkot,36002,2016,district,Ajirkot Rural Municipality,local,23
Bhimsen Thapa,36003,2016,district,Bhimsen Thapa Rural Municipality,local,23
Chumnubri,36004,2016,district,Chumnubri Rural Municipality,local,23
Dharche,36005,2016,district,Dharche Rural Municipality,local,23
Gandaki,36006,2016,district,Gandaki Rural Municipality,local,23
Gorkha,36007,2016,district,Gorkha Municipality,local,23
Palungtar,36008,2016,district,Palungtar Municipality,local,23
Shahid Lakhan,36009,2016,district,Shahid Lakhan Rural Municipality,local,23
Siranchok,36010,2016,district,Siranchok Rural Municipality,local,23
Barpak Sulikot,36011,2016,district,Barpak Sulikot Rural Municipality,local,23
Besishahar,37001,2016,district,Besishahar Municipality,local,39
Dordi,37002,2016,district,Dordi Rural Municipality,local,39
Dudhpokhari,37003,2016,district,Dudhpokhari Rural Municipality,local,39
Kwholasothar,37004,2016,district,Kwholasothar Rural Municipality,local,39
Madhyanepal,37005,2016,district,Madhyanepal Municipality,local,39
Marsyangdi,37006,2016,district,Marsyangdi Rural Municipality,local,39
Rainas,37007,2016,district,Rainas Municipality,local,39
Sundarbazar,37008,2016,district,Sundarbazar Municipality,local,39
Aanbukhaireni,38001,2016,district,Aanbukhaireni Rural Municipality,local,72
Bandipur,38002,2016,district,Bandipur Rural Municipality,local,72
Bhanu,38003,2016,district,Bhanu Municipality,local,72
Bhimad,38004,2016,district,Bhimad Municipality,local,72
Byas,38005,2016,district,Byas Municipality,local,72
Devghat,38006,2016,district,Devghat Rural Municipality,local,72
Ghiring,38007,2016,district,Ghiring Rural Municipality,local,72
Myagde,38008,2016,district,Myagde Rural Municipality,local,72
Rishing,38009,2016,district,Rishing Rural Municipality,local,72
Shuklagandaki,38010,2016,district,Shuklagandaki Municipality,local,72
Aandhikhola,39001,2016,district,Aandhikhola Rural Municipality,local,71
Arjunchaupari,39002,2016,district,Arjunchaupari Rural Municipality,local,71
Bhirkot,39003,2016,district,Bhirkot Municipality,local,71
Biruwa,39004,2016,district,Biruwa Rural Municipality,local,71
Chapakot,39005,2016,district,Chapakot Municipality,local,71
Galyang,39006,2016,district,Galyang Municipality,local,71
Harinas,39007,2016,district,Harinas Rural Municipality,local,71
Kaligandaki,39008,2016,district,Kaligandaki Rural Municipality,local,71
Phedikhola,39009,2016,district,Phedikhola Rural Municipality,local,71
Putalibazar,39010,2016,district,Putalibazar Municipality,local,71
Waling,39011,2016,district,Waling Municipality,local,71
Annapurna,40001,2016,district,Annapurna Rural Municipality,local,34
Machhapuchchhre,40002,2016,district,Machhapuchchhre Rural Municipality,local,34
Madi,40003,2016,district,Madi Rural Municipality,local,34
Pokhara,40004,2016,district,Pokhara Metropolitan,local,34
Rupa,40005,2016,district,Rupa Rural Municipality,local,34
Arjundhara,4001,2016,district,Arjundhara Municipality,local,28
Bahradashi,4002,2016,district,Bahradashi Rural Municipality,local,28
Bhadrapur,4003,2016,district,Bhadrapur Municipality,local,28
Birtamod,4004,2016,district,Birtamod Municipality,local,28
Buddhashanti,4005,2016,district,Buddhashanti Rural Municipality,local,28
Damak,4006,2016,district,Damak Municipality,local,28
Gauradaha,4007,2016,district,Gauradaha Municipality,local,28
Gaurigunj,4008,2016,district,Gaurigunj Rural Municipality,local,28
Haldibari,4009,2016,district,Haldibari Rural Municipality,local,28
Jhapa,4010,2016,district,Jhapa Rural Municipality,local,28
Kachankawal,4011,2016,district,Kachankawal Rural Municipality,local,28
Kamal,4012,2016,district,Kamal Rural Municipality,local,28
Kankai,4013,2016,district,Kankai Municipality,local,28
Mechinagar,4014,2016,district,Mechinagar Municipality,local,28
Shivasatakshi,4015,2016,district,Shivasatakshi Municipality,local,28
Chame,41001,2016,district,Chame Rural Municipality,local,42
Narpabhumi,41002,2016,district,Narpabhumi Rural Municipality,local,42
Nason,41003,2016,district,Nason Rural Municipality,local,42
Manang Ngisyang,41004,2016,district,Manang Ngisyang Rural Municipality,local,42
Baragung Muktikshetra,42001,2016,district,Baragung Muktikshetra Rural Municipality,local,45
Lo-Ghekar Damodarkunda,42002,2016,district,Lo-Ghekar Damodarkunda Rural Municipality,local,45
Gharpajhong,42003,2016,district,Gharpajhong Rural Municipality,local,45
Lomanthang,42004,2016,district,Lomanthang Rural Municipality,local,45
Thasang,42005,2016,district,Thasang Rural Municipality,local,45
Annapurna,43001,2016,district,Annapurna Rural Municipality,local,46
Beni,43002,2016,district,Beni Municipality,local,46
Dhawalagiri,43003,2016,district,Dhawalagiri Rural Municipality,local,46
Malika,43004,2016,district,Malika Rural Municipality,local,46
Mangala,43005,2016,district,Mangala Rural Municipality,local,46
Raghuganga,43006,2016,district,Raghuganga Rural Municipality,local,46
Dhorpatan Hunting Reserve,43099,2016,district,Dhorpatan Hunting Reserve,local,46
Bihadi,44001,2016,district,Bihadi Rural Municipality,local,52
Jaljala,44002,2016,district,Jaljala Rural Municipality,local,52
Kushma,44003,2016,district,Kushma Municipality,local,52
Mahashila,44004,2016,district,Mahashila Rural Municipality,local,52
Modi,44005,2016,district,Modi Rural Municipality,local,52
Paiyun,44006,2016,district,Paiyun Rural Municipality,local,52
Phalebas,44007,2016,district,Phalebas Municipality,local,52
Badigad,45001,2016,district,Badigad Rural Municipality,local,03
Baglung,45002,2016,district,Baglung Municipality,local,03
Bareng,45003,2016,district,Bareng Rural Municipality,local,03
Dhorpatan,45004,2016,district,Dhorpatan Municipality,local,03
Galkot,45005,2016,district,Galkot Municipality,local,03
Jaimini,45006,2016,district,Jaimini Municipality,local,03
Kathekhola,45007,2016,district,Kathekhola Rural Municipality,local,03
Nisikhola,45008,2016,district,Nisikhola Rural Municipality,local,03
Tamankhola,45009,2016,district,Tamankhola Rural Municipality,local,03
Tarakhola,45010,2016,district,Tarakhola Rural Municipality,local,03
Dhorpatan Hunting Reserve,45099,2016,district,Dhorpatan Hunting Reserve,local,03
Chandrakot,46001,2016,district,Chandrakot Rural Municipality,local,24
Chhatrakot,46002,2016,district,Chhatrakot Rural Municipality,local,24
Dhurkot,46003,2016,district,Dhurkot Rural Municipality,local,24
Gulmidarbar,46004,2016,district,Gulmidarbar Rural Municipality,local,24
Isma,46005,2016,district,Isma Rural Municipality,local,24
Kaligandaki,46006,2016,district,Kaligandaki Rural Municipality,local,24
Madane,46007,2016,district,Madane Rural Municipality,local,24
Malika,46008,2016,district,Malika Rural Municipality,local,24
Musikot,46009,2016,district,Musikot Municipality,local,24
Resunga,46010,2016,district,Resunga Municipality,local,24
Ruru,46011,2016,district,Ruru Rural Municipality,local,24
Satyawati,46012,2016,district,Satyawati Rural Municipality,local,24
Baganaskali,47001,2016,district,Baganaskali Rural Municipality,local,50
Mathagadhi,47002,2016,district,Mathagadhi Rural Municipality,local,50
Nisdi,47003,2016,district,Nisdi Rural Municipality,local,50
Purbakhola,47004,2016,district,Purbakhola Rural Municipality,local,50
Rainadevi Chhahara,47005,2016,district,Rainadevi Chhahara Rural Municipality,local,50
Rambha,47006,2016,district,Rambha Rural Municipality,local,50
Rampur,47007,2016,district,Rampur Municipality,local,50
Ribdikot,47008,2016,district,Ribdikot Rural Municipality,local,50
Tansen,47009,2016,district,Tansen Municipality,local,50
Tinau,47010,2016,district,Tinau Rural Municipality,local,50
Bardaghat,48001,2016,district,Bardaghat Municipality,local,76
Palhinandan,48002,2016,district,Palhinandan Rural Municipality,local,76
Pratappur,48003,2016,district,Pratappur Rural Municipality,local,76
Ramgram,48004,2016,district,Ramgram Municipality,local,76
Sarawal,48005,2016,district,Sarawal Rural Municipality,local,76
Sunwal,48006,2016,district,Sunwal Municipality,local,76
Susta,48007,2016,district,Susta Rural Municipality,local,76
Butwal,49001,2016,district,Butwal Sub-Metropolitan City,local,60
Devdaha,49002,2016,district,Devdaha Municipality,local,60
Gaidahawa,49003,2016,district,Gaidahawa Rural Municipality,local,60
Kanchan,49004,2016,district,Kanchan Rural Municipality,local,60
Kotahimai,49005,2016,district,Kotahimai Rural Municipality,local,60
Lumbini Sanskritik,49006,2016,district,Lumbini Sanskritik Municipality,local,60
Marchawari,49007,2016,district,Marchawari Rural Municipality,local,60
Mayadevi,49008,2016,district,Mayadevi Rural Municipality,local,60
Omsatiya,49009,2016,district,Omsatiya Rural Municipality,local,60
Rohini,49010,2016,district,Rohini Rural Municipality,local,60
Sainamaina,49011,2016,district,Sainamaina Municipality,local,60
Sammarimai,49012,2016,district,Sammarimai Rural Municipality,local,60
Siddharthanagar,49013,2016,district,Siddharthanagar Municipality,local,60
Siyari,49014,2016,district,Siyari Rural Municipality,local,60
Shuddhodan,49015,2016,district,Shuddhodan Rural Municipality,local,60
Tilottama,49016,2016,district,Tilottama Municipality,local,60
Lumbini Sanskritik Development Area,49099,2016,district,Lumbini Sanskritik Development Area,local,60
Banganga,50001,2016,district,Banganga Municipality,local,33
Bijayanagar,50002,2016,district,Bijayanagar Rural Municipality,local,33
Buddhabhumi,50003,2016,district,Buddhabhumi Municipality,local,33
Kapilbastu,50004,2016,district,Kapilbastu Municipality,local,33
Krishnanagar,50005,2016,district,Krishnanagar Municipality,local,33
Maharajgunj,50006,2016,district,Maharajgunj Municipality,local,33
Mayadevi,50007,2016,district,Mayadevi Rural Municipality,local,33
Shivaraj,50008,2016,district,Shivaraj Municipality,local,33
Shuddhodan,50009,2016,district,Shuddhodan Rural Municipality,local,33
Belbari,5001,2016,district,Belbari Municipality,local,43
Yashodhara,50010,2016,district,Yashodhara Rural Municipality,local,33
Biratnagar,5002,2016,district,Biratnagar Metropolitan,local,43
Budhiganga,5003,2016,district,Budhiganga Rural Municipality,local,43
Dhanpalthan,5004,2016,district,Dhanpalthan Rural Municipality,local,43
Gramthan,5005,2016,district,Gramthan Rural Municipality,local,43
Jahada,5006,2016,district,Jahada Rural Municipality,local,43
Kanepokhari,5007,2016,district,Kanepokhari Rural Municipality,local,43
Katahari,5008,2016,district,Katahari Rural Municipality,local,43
Kerabari,5009,2016,district,Kerabari Rural Municipality,local,43
Letang,5010,2016,district,Letang Municipality,local,43
Miklajung,5011,2016,district,Miklajung Rural Municipality,local,43
Pathari Shanishchare,5012,2016,district,Pathari Shanishchare Municipality,local,43
Rangeli,5013,2016,district,Rangeli Municipality,local,43
Ratuwamai,5014,2016,district,Ratuwamai Municipality,local,43
Sundarharaincha,5015,2016,district,Sundarharaincha Municipality,local,43
Sunbarsi,5016,2016,district,Sunbarsi Municipality,local,43
Urlabari,5017,2016,district,Urlabari Municipality,local,43
Bhumikasthan,51001,2016,district,Bhumikasthan Municipality,local,02
Chhatradev,51002,2016,district,Chhatradev Rural Municipality,local,02
Malarani,51003,2016,district,Malarani Rural Municipality,local,02
Panini,51004,2016,district,Panini Rural Municipality,local,02
Sandhikharka,51005,2016,district,Sandhikharka Municipality,local,02
Shitganga,51006,2016,district,Shitganga Municipality,local,02
Airawati,52001,2016,district,Airawati Rural Municipality,local,54
Gaumukhi,52002,2016,district,Gaumukhi Rural Municipality,local,54
Jhimruk,52003,2016,district,Jhimruk Rural Municipality,local,54
Mallarani,52004,2016,district,Mallarani Rural Municipality,local,54
Mandavi,52005,2016,district,Mandavi Rural Municipality,local,54
Naubahini,52006,2016,district,Naubahini Rural Municipality,local,54
Pyuthan,52007,2016,district,Pyuthan Municipality,local,54
Sarumarani,52008,2016,district,Sarumarani Rural Municipality,local,54
Swargadwari,52009,2016,district,Swargadwari Municipality,local,54
Parivartan,53001,2016,district,Parivartan Rural Municipality,local,58
Lungri,53002,2016,district,Lungri Rural Municipality,local,58
Madi,53003,2016,district,Madi Rural Municipality,local,58
Rolpa,53004,2016,district,Rolpa Municipality,local,58
Runtigadhi,53005,2016,district,Runtigadhi Rural Municipality,local,58
Gangadev,53006,2016,district,Gangadev Rural Municipality,local,58
Sunchhahari,53007,2016,district,Sunchhahari Rural Municipality,local,58
Sunil Smriti,53008,2016,district,Sunil Smriti Rural Municipality,local,58
Thawang,53009,2016,district,Thawang Rural Municipality,local,58
Triveni,53010,2016,district,Triveni Rural Municipality,local,58
Aathbiskot,54001,2016,district,Aathbiskot Municipality,local,77
Banphikot,54002,2016,district,Banphikot Rural Municipality,local,77
Chaurjahari,54003,2016,district,Chaurjahari Municipality,local,77
Musikot,54004,2016,district,Musikot Municipality,local,77
Sanibheri,54005,2016,district,Sanibheri Rural Municipality,local,77
Triveni,54006,2016,district,Triveni Rural Municipality,local,77
Bagchaur,55001,2016,district,Bagchaur Municipality,local,61
Bangad Kupinde,55002,2016,district,Bangad Kupinde Municipality,local,61
Chhatreshwori,55003,2016,district,Chhatreshwori Rural Municipality,local,61
Darma,55004,2016,district,Darma Rural Municipality,local,61
Siddhakumakh,55005,2016,district,Siddhakumakh Rural Municipality,local,61
Kalimati,55006,2016,district,Kalimati Rural Municipality,local,61
Kapurkot,55007,2016,district,Kapurkot Rural Municipality,local,61
Kumakh,55008,2016,district,Kumakh Rural Municipality,local,61
Sharada,55009,2016,district,Sharada Municipality,local,61
Triveni,55010,2016,district,Triveni Rural Municipality,local,61
Babai,56001,2016,district,Babai Rural Municipality,local,15
Bangalachuli,56002,2016,district,Bangalachuli Rural Municipality,local,15
Dangisharan,56003,2016,district,Dangisharan Rural Municipality,local,15
Gadhawa,56004,2016,district,Gadhawa Rural Municipality,local,15
Ghorahi,56005,2016,district,Ghorahi Sub-Metropolitan City,local,15
Lamahi,56006,2016,district,Lamahi Municipality,local,15
Rajpur,56007,2016,district,Rajpur Rural Municipality,local,15
Rapti,56008,2016,district,Rapti Rural Municipality,local,15
Shantinagar,56009,2016,district,Shantinagar Rural Municipality,local,15
Tulsipur,56010,2016,district,Tulsipur Sub-Metropolitan City,local,15
Baijanath,57001,2016,district,Baijanath Rural Municipality,local,07
Duduwa,57002,2016,district,Duduwa Rural Municipality,local,07
Janaki,57003,2016,district,Janaki Rural Municipality,local,07
Khajura,57004,2016,district,Khajura Rural Municipality,local,07
Kohalpur,57005,2016,district,Kohalpur Municipality,local,07
Narainapur,57006,2016,district,Narainapur Rural Municipality,local,07
Nepalgunj,57007,2016,district,Nepalgunj Sub-Metropolitan City,local,07
Rapti Sonari,57008,2016,district,Rapti Sonari Rural Municipality,local,07
Badhaiyatal,58001,2016,district,Badhaiyatal Rural Municipality,local,09
Bansgadhi,58002,2016,district,Bansgadhi Municipality,local,09
Barbardiya,58003,2016,district,Barbardiya Municipality,local,09
Geruwa,58004,2016,district,Geruwa Rural Municipality,local,09
Gulariya,58005,2016,district,Gulariya Municipality,local,09
Madhuban,58006,2016,district,Madhuban Municipality,local,09
Rajapur,58007,2016,district,Rajapur Municipality,local,09
Thakurbaba,58008,2016,district,Thakurbaba Municipality,local,09
Bardiya,58099,2016,district,Bardiya National Park,local,09
Barahatal,59001,2016,district,Barahatal Rural Municipality,local,70
Bheriganga,59002,2016,district,Bheriganga Municipality,local,70
Birendranagar,59003,2016,district,Birendranagar Municipality,local,70
Chaukune,59004,2016,district,Chaukune Rural Municipality,local,70
Chingad,59005,2016,district,Chingad Rural Municipality,local,70
Gurbhakot,59006,2016,district,Gurbhakot Municipality,local,70
Lekbesi,59007,2016,district,Lekbesi Municipality,local,70
Panchapuri,59008,2016,district,Panchapuri Municipality,local,70
Simta,59009,2016,district,Simta Rural Municipality,local,70
Aathbis,60001,2016,district,Aathbis Municipality,local,14
Bhagawatimai,60002,2016,district,Bhagawatimai Rural Municipality,local,14
Bhairavi,60003,2016,district,Bhairavi Rural Municipality,local,14
Chamunda Bindrasaini,60004,2016,district,Chamunda Bindrasaini Municipality,local,14
Dullu,60005,2016,district,Dullu Municipality,local,14
Dungeshwor,60006,2016,district,Dungeshwor Rural Municipality,local,14
Gurans,60007,2016,district,Gurans Rural Municipality,local,14
Mahabu,60008,2016,district,Mahabu Rural Municipality,local,14
Narayan,60009,2016,district,Narayan Municipality,local,14
Barahakshetra,6001,2016,district,Barahakshetra Municipality,local,69
Naumule,60010,2016,district,Naumule Rural Municipality,local,14
Thantikandh,60011,2016,district,Thantikandh Rural Municipality,local,14
Barju,6002,2016,district,Barju Rural Municipality,local,69
Bhokraha Narsingh,6003,2016,district,Bhokraha Narsingh Rural Municipality,local,69
Dewangunj,6004,2016,district,Dewangunj Rural Municipality,local,69
Dharan,6005,2016,district,Dharan Sub-Metropolitan City,local,69
Duhabi,6006,2016,district,Duhabi Municipality,local,69
Gadhi,6007,2016,district,Gadhi Rural Municipality,local,69
Harinagar,6008,2016,district,Harinagar Rural Municipality,local,69
Inaruwa,6009,2016,district,Inaruwa Municipality,local,69
Itahari,6010,2016,district,Itahari Sub-Metropolitan City,local,69
Koshi,6011,2016,district,Koshi Rural Municipality,local,69
Ramdhuni,6012,2016,district,Ramdhuni Municipality,local,69
Koshi Tappu,6099,2016,district,Koshi Tappu Wildlife Reserve,local,69
Barekot,61001,2016,district,Barekot Rural Municipality,local,27
Bheri,61002,2016,district,Bheri Municipality,local,27
Chhedagad,61003,2016,district,Chhedagad Municipality,local,27
Junichande,61004,2016,district,Junichande Rural Municipality,local,27
Kushe,61005,2016,district,Kushe Rural Municipality,local,27
Shivalaya,61006,2016,district,Shivalaya Rural Municipality,local,27
Nalgad,61007,2016,district,Nalgad Municipality,local,27
Chharka Tangsong,62001,2016,district,Chharka Tangsong Rural Municipality,local,21
Dolpobuddha,62002,2016,district,Dolpobuddha Rural Municipality,local,21
Jagadulla,62003,2016,district,Jagadulla Rural Municipality,local,21
Kaike,62004,2016,district,Kaike Rural Municipality,local,21
Mudkechula,62005,2016,district,Mudkechula Rural Municipality,local,21
Shey Phoksundo,62006,2016,district,Shey Phoksundo Rural Municipality,local,21
Thulibheri,62007,2016,district,Thulibheri Municipality,local,21
Tripurasundari,62008,2016,district,Tripurasundari Municipality,local,21
Chandannath,63001,2016,district,Chandannath Municipality,local,29
Guthichaur,63002,2016,district,Guthichaur Rural Municipality,local,29
Hima,63003,2016,district,Hima Rural Municipality,local,29
Kanakasundari,63004,2016,district,Kanakasundari Rural Municipality,local,29
Patarasi,63005,2016,district,Patarasi Rural Municipality,local,29
Sinja,63006,2016,district,Sinja Rural Municipality,local,29
Tatopani,63007,2016,district,Tatopani Rural Municipality,local,29
Tila,63008,2016,district,Tila Rural Municipality,local,29
Shuvakalika,64001,2016,district,Shuvakalika Rural Municipality,local,31
Khandachakra,64002,2016,district,Khandachakra Municipality,local,31
Mahawai,64003,2016,district,Mahawai Rural Municipality,local,31
Naraharinath,64004,2016,district,Naraharinath Rural Municipality,local,31
Pachaljharna,64005,2016,district,Pachaljharna Rural Municipality,local,31
Palata,64006,2016,district,Palata Rural Municipality,local,31
Raskot,64007,2016,district,Raskot Municipality,local,31
Sanni Triveni,64008,2016,district,Sanni Triveni Rural Municipality,local,31
Tilagupha,64009,2016,district,Tilagupha Municipality,local,31
Chhayanath Rara,65001,2016,district,Chhayanath Rara Municipality,local,44
Khatyad,65002,2016,district,Khatyad Rural Municipality,local,44
Mugum Karmarong,65003,2016,district,Mugum Karmarong Rural Municipality,local,44
Soru,65004,2016,district,Soru Rural Municipality,local,44
Adanchuli,66001,2016,district,Adanchuli Rural Municipality,local,25
Chankheli,66002,2016,district,Chankheli Rural Municipality,local,25
Kharpunath,66003,2016,district,Kharpunath Rural Municipality,local,25
Namkha,66004,2016,district,Namkha Rural Municipality,local,25
Sarkegad,66005,2016,district,Sarkegad Rural Municipality,local,25
Simkot,66006,2016,district,Simkot Rural Municipality,local,25
Tanjakot,66007,2016,district,Tanjakot Rural Municipality,local,25
Badimalika,67001,2016,district,Badimalika Municipality,local,06
Budhiganga,67002,2016,district,Budhiganga Municipality,local,06
Budhinanda,67003,2016,district,Budhinanda Municipality,local,06
Khaptad Chhededaha,67004,2016,district,Khaptad Chhededaha Rural Municipality,local,06
Gaumul,67005,2016,district,Gaumul Rural Municipality,local,06
Himali,67006,2016,district,Himali Rural Municipality,local,06
Jagannath,67007,2016,district,Jagannath Rural Municipality,local,06
Swamikartik Khapar,67008,2016,district,Swamikartik Khapar Rural Municipality,local,06
Triveni,67009,2016,district,Triveni Municipality,local,06
Khaptad National Park,67099,2016,district,Khaptad National Park,local,06
Bitthadchir,68001,2016,district,Bitthadchir Rural Municipality,local,05
Bungal,68002,2016,district,Bungal Municipality,local,05
Chhabis Pathibhera,68003,2016,district,Chhabis Pathibhera Rural Municipality,local,05
Durgathali,68004,2016,district,Durgathali Rural Municipality,local,05
Jayaprithvi,68005,2016,district,Jayaprithvi Municipality,local,05
Saipal,68006,2016,district,Saipal Rural Municipality,local,05
Kedarsyun,68007,2016,district,Kedarsyun Rural Municipality,local,05
Khaptadchhanna,68008,2016,district,Khaptadchhanna Rural Municipality,local,05
Masta,68009,2016,district,Masta Rural Municipality,local,05
Surma,68010,2016,district,Surma Rural Municipality,local,05
Talkot,68011,2016,district,Talkot Rural Municipality,local,05
Thalara,68012,2016,district,Thalara Rural Municipality,local,05
Khaptad National Park,68099,2016,district,Khaptad National Park,local,05
Bannigadhi Jayagadh,69001,2016,district,Bannigadhi Jayagadh Rural Municipality,local,01
Chaurpati,69002,2016,district,Chaurpati Rural Municipality,local,01
Dhakari,69003,2016,district,Dhakari Rural Municipality,local,01
Kamalbazar,69004,2016,district,Kamalbazar Municipality,local,01
Mangalsen,69005,2016,district,Mangalsen Municipality,local,01
Mellekh,69006,2016,district,Mellekh Rural Municipality,local,01
Panchdeval Binayak,69007,2016,district,Panchdeval Binayak Municipality,local,01
Ramaroshan,69008,2016,district,Ramaroshan Rural Municipality,local,01
Sanphebagar,69009,2016,district,Sanphebagar Municipality,local,01
Turmakhand,69010,2016,district,Turmakhand Rural Municipality,local,01
Khaptad National Park,69099,2016,district,Khaptad National Park,local,01
Aadarsha,70001,2016,district,Aadarsha Rural Municipality,local,22
Badikedar,70002,2016,district,Badikedar Rural Municipality,local,22
Bogatan Phudsil,70003,2016,district,Bogatan Phudsil Rural Municipality,local,22
Dipayal Silgadhi,70004,2016,district,Dipayal Silgadhi Municipality,local,22
Jorayal,70005,2016,district,Jorayal Rural Municipality,local,22
K.I. Singh,70006,2016,district,K.I. Singh Rural Municipality,local,22
Purbichauki,70007,2016,district,Purbichauki Rural Municipality,local,22
Sayal,70008,2016,district,Sayal Rural Municipality,local,22
Shikhar,70009,2016,district,Shikhar Municipality,local,22
Chaubise,7001,2016,district,Chaubise Rural Municipality,local,18
Chhathar Jorpati,7002,2016,district,Chhathar Jorpati Rural Municipality,local,18
Dhankuta,7003,2016,district,Dhankuta Municipality,local,18
Shahidbhumi,7004,2016,district,Shahidbhumi Rural Municipality,local,18
Mahalaxmi,7005,2016,district,Mahalaxmi Municipality,local,18
Pakhribas,7006,2016,district,Pakhribas Municipality,local,18
Sangurigadhi,7007,2016,district,Sangurigadhi Rural Municipality,local,18
Khaptad National Park,70099,2016,district,Khaptad National Park,local,22
Bardgoriya,71001,2016,district,Bardgoriya Rural Municipality,local,30
Bhajani,71002,2016,district,Bhajani Municipality,local,30
Chure,71003,2016,district,Chure Rural Municipality,local,30
Dhangadhi,71004,2016,district,Dhangadhi Sub-Metropolitan City,local,30
Gauriganga,71005,2016,district,Gauriganga Municipality,local,30
Ghodaghodi,71006,2016,district,Ghodaghodi Municipality,local,30
Godawari,71007,2016,district,Godawari Municipality,local,30
Janaki,71008,2016,district,Janaki Rural Municipality,local,30
Joshipur,71009,2016,district,Joshipur Rural Municipality,local,30
Kailari,71010,2016,district,Kailari Rural Municipality,local,30
Lamkichuha,71011,2016,district,Lamkichuha Municipality,local,30
Mohanyal,71012,2016,district,Mohanyal Rural Municipality,local,30
Tikapur,71013,2016,district,Tikapur Municipality,local,30
Bedkot,72001,2016,district,Bedkot Municipality,local,32
Belauri,72002,2016,district,Belauri Municipality,local,32
Beldandi,72003,2016,district,Beldandi Rural Municipality,local,32
Bhimdatta,72004,2016,district,Bhimdatta Municipality,local,32
Krishnapur,72005,2016,district,Krishnapur Municipality,local,32
Laljhadi,72006,2016,district,Laljhadi Rural Municipality,local,32
Mahakali,72007,2016,district,Mahakali Municipality,local,32
Punarbas,72008,2016,district,Punarbas Municipality,local,32
Shuklaphanta,72009,2016,district,Shuklaphanta Municipality,local,32
Shuklaphanta,72099,2016,district,Shuklaphanta National Park,local,32
Ajayameru,73001,2016,district,Ajayameru Rural Municipality,local,13
Aalital,73002,2016,district,Aalital Rural Municipality,local,13
Amargadhi,73003,2016,district,Amargadhi Municipality,local,13
Bhageshwor,73004,2016,district,Bhageshwor Rural Municipality,local,13
Ganyapdhura,73005,2016,district,Ganyapdhura Rural Municipality,local,13
Navadurga,73006,2016,district,Navadurga Rural Municipality,local,13
Parashuram,73007,2016,district,Parashuram Municipality,local,13
Dasharath Chand,74001,2016,district,Dasharath Chand Municipality,local,04
Dilasaini,74002,2016,district,Dilasaini Rural Municipality,local,04
Dogadakedar,74003,2016,district,Dogadakedar Rural Municipality,local,04
Melauli,74004,2016,district,Melauli Municipality,local,04
Pancheshwor,74005,2016,district,Pancheshwor Rural Municipality,local,04
Patan,74006,2016,district,Patan Municipality,local,04
Purchaudi,74007,2016,district,Purchaudi Municipality,local,04
Shivanath,74008,2016,district,Shivanath Rural Municipality,local,04
Sigas,74009,2016,district,Sigas Rural Municipality,local,04
Surnaya,74010,2016,district,Surnaya Rural Municipality,local,04
Apihimal,75001,2016,district,Apihimal Rural Municipality,local,16
Vyans,75002,2016,district,Vyans Rural Municipality,local,16
Duhun,75003,2016,district,Duhun Rural Municipality,local,16
Lekam,75004,2016,district,Lekam Rural Municipality,local,16
Mahakali,75005,2016,district,Mahakali Municipality,local,16
Malikarjun,75006,2016,district,Malikarjun Rural Municipality,local,16
Marma,75007,2016,district,Marma Rural Municipality,local,16
Naugad,75008,2016,district,Naugad Rural Municipality,local,16
Shailyashikhar,75009,2016,district,Shailyashikhar Municipality,local,16
Binayi Triveni,76001,2016,district,Binayi Triveni Rural Municipality,local,47
Bulingtar,76002,2016,district,Bulingtar Rural Municipality,local,47
Baudikali,76003,2016,district,Baudikali Rural Municipality,local,47
Devchuli,76004,2016,district,Devchuli Municipality,local,47
Gaindakot,76005,2016,district,Gaindakot Municipality,local,47
Hupsekot,76006,2016,district,Hupsekot Rural Municipality,local,47
Kawasoti,76007,2016,district,Kawasoti Municipality,local,47
Madhyabindu,76008,2016,district,Madhyabindu Municipality,local,47
Chitwan National Park,76099,2016,district,Chitwan National Park,local,47
Bhume,77001,2016,district,Bhume Rural Municipality,local,59
Putha Uttarganga,77002,2016,district,Putha Uttarganga Rural Municipality,local,59
Sisne,77003,2016,district,Sisne Rural Municipality,local,59
Dhorpatan Hunting Reserve,77099,2016,district,Dhorpatan Hunting Reserve,local,59
Aatharai,8001,2016,district,Aatharai Rural Municipality,local,74
Chhathar,8002,2016,district,Chhathar Rural Municipality,local,74
Laligurans,8003,2016,district,Laligurans Municipality,local,74
Menchhayayem,8004,2016,district,Menchhayayem Rural Municipality,local,74
Myanglung,8005,2016,district,Myanglung Municipality,local,74
Phedap,8006,2016,district,Phedap Rural Municipality,local,74
Bhotkhola,9001,2016,district,Bhotkhola Rural Municipality,local,62
Chainpur,9002,2016,district,Chainpur Municipality,local,62
Chichila,9003,2016,district,Chichila Rural Municipality,local,62
Dharmadevi,9004,2016,district,Dharmadevi Municipality,local,62
Khandbari,9005,2016,district,Khandbari Municipality,local,62
Madi,9006,2016,district,Madi Municipality,local,62
Makalu,9007,2016,district,Makalu Rural Municipality,local,62
Panchkhapan,9008,2016,district,Panchkhapan Municipality,local,62
Sabhapokhari,9009,2016,district,Sabhapokhari Rural Municipality,local,62
Silichong,9010,2016,district,Silichong Rural Municipality,local,62
\.

--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 1, false);

--
-- Name: wazimap_geography wazimap_geography_geo_level_bbe3c9fc_uniq; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_bbe3c9fc_uniq UNIQUE (geo_level, geo_code, version);


--
-- Name: wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Tablespace:
--

ALTER TABLE ONLY public.wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);

--
-- Name: wazimap_geography_2af72f10; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_2af72f10 ON public.wazimap_geography USING btree (version);


--
-- Name: wazimap_geography_2fc6351a; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_2fc6351a ON public.wazimap_geography USING btree (long_name);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_b068931c ON public.wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_long_name_9b8409f5_like; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_long_name_9b8409f5_like ON public.wazimap_geography USING btree (long_name varchar_pattern_ops);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_name_36b79089_like ON public.wazimap_geography USING btree (name varchar_pattern_ops);


--
-- Name: wazimap_geography_version_01953818_like; Type: INDEX; Schema: public; Owner: wazimap_np
--

CREATE INDEX wazimap_geography_version_01953818_like ON public.wazimap_geography USING btree (version varchar_pattern_ops);

--
-- PostgreSQL database dump complete
--
