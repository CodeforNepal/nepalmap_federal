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
DROP INDEX IF EXISTS public.wazimap_geography_2fc6351a;
DROP INDEX IF EXISTS public.wazimap_geography_84cdc76c;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_9a5128d2_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Tablespace:
--

CREATE TABLE wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    year integer,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(100)
);


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public
--

CREATE SEQUENCE wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public
--

ALTER SEQUENCE wazimap_geography_id_seq OWNED BY wazimap_geography.id;

ALTER TABLE ONLY wazimap_geography ALTER COLUMN id SET DEFAULT nextval('wazimap_geography_id_seq'::regclass);


COPY wazimap_geography (name, geo_code, year, parent_level, long_name, geo_level, parent_code) FROM stdin WITH DELIMITER ',';
Nepal,NP,2016,\N,Nepal,country,\N
Province No. 1,1,2016,country,Province No. 1,province,NP
Province No. 2,2,2016,country,Province No. 2,province,NP
Province No. 3,3,2016,country,Province No. 3,province,NP
Province No. 4,4,2016,country,Province No. 4,province,NP
Province No. 5,5,2016,country,Province No. 5,province,NP
Province No. 6,6,2016,country,Province No. 6,province,NP
Province No. 7,7,2016,country,Province No. 7,province,NP
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
Terhathum,74,2016,province,Terhathum,district,1
Udayapur,75,2016,province,Udayapur,district,1
Nawalparasi West,76,2016,province,Nawalparasi West,district,5
Rukum West,77,2016,province,Rukum West,district,6
Aamchowk,10001,2016,district,Aamchowk,local,11
Arun,10002,2016,district,Arun,local,11
Bhojpur,10003,2016,district,Bhojpur,local,11
Hatuwagadhi,10004,2016,district,Hatuwagadhi,local,11
Pauwadungma,10005,2016,district,Pauwadungma,local,11
Ramprasad Rai,10006,2016,district,Ramprasad Rai,local,11
Salpasilichho,10007,2016,district,Salpasilichho,local,11
Shadananda,10008,2016,district,Shadananda,local,11
Tyamkemaiyung,10009,2016,district,Tyamkemaiyung,local,11
Aathrai Tribeni,1001,2016,district,Aathrai Tribeni,local,73
Maiwakhola,1002,2016,district,Maiwakhola,local,73
Meringden,1003,2016,district,Meringden,local,73
Mikwakhola,1004,2016,district,Mikwakhola,local,73
Phaktanglung,1005,2016,district,Phaktanglung,local,73
Phungling,1006,2016,district,Phungling,local,73
Sidingba,1007,2016,district,Sidingba,local,73
Sirijangha,1008,2016,district,Sirijangha,local,73
Yangwarak,1009,2016,district,Yangwarak,local,73
Dudhkaushika,11001,2016,district,Dudhkaushika,local,68
Dudhkoshi,11002,2016,district,Dudhkoshi,local,68
Khumbupasanglahmu,11003,2016,district,Khumbupasanglahmu,local,68
Likhupike,11004,2016,district,Likhupike,local,68
Mahakulung,11005,2016,district,Mahakulung,local,68
Nechasalyan,11006,2016,district,Nechasalyan,local,68
Solududhakunda,11007,2016,district,Solududhakunda,local,68
Sotang,11008,2016,district,Sotang,local,68
Champadevi,12001,2016,district,Champadevi,local,49
Chisankhugadhi,12002,2016,district,Chisankhugadhi,local,49
Khijidemba,12003,2016,district,Khijidemba,local,49
Likhu,12004,2016,district,Likhu,local,49
Manebhanjyang,12005,2016,district,Manebhanjyang,local,49
Molung,12006,2016,district,Molung,local,49
Siddhicharan,12007,2016,district,Siddhicharan,local,49
Sunkoshi,12008,2016,district,Sunkoshi,local,49
Ainselukhark,13001,2016,district,Ainselukhark,local,37
Barahapokhari,13002,2016,district,Barahapokhari,local,37
Diprung,13003,2016,district,Diprung,local,37
Halesi Tuwachung,13004,2016,district,Halesi Tuwachung,local,37
Jantedhunga,13005,2016,district,Jantedhunga,local,37
Kepilasagadhi,13006,2016,district,Kepilasagadhi,local,37
Khotehang,13007,2016,district,Khotehang,local,37
Lamidanda,13008,2016,district,Lamidanda,local,37
Rupakot Majhuwagadhi,13009,2016,district,Rupakot Majhuwagadhi,local,37
Sakela,13010,2016,district,Sakela,local,37
Belaka,14001,2016,district,Belaka,local,75
Chaudandigadhi,14002,2016,district,Chaudandigadhi,local,75
Katari,14003,2016,district,Katari,local,75
Rautamai,14004,2016,district,Rautamai,local,75
Sunkoshi,14005,2016,district,Sunkoshi,local,75
Tapli,14006,2016,district,Tapli,local,75
Triyuga,14007,2016,district,Triyuga,local,75
Udayapurgadhi,14008,2016,district,Udayapurgadhi,local,75
Koshi Tappu Wildlife Reserve,14099,2016,district,Koshi Tappu Wildlife Reserve,local,75
Agnisair Krishna Savaran,15001,2016,district,Agnisair Krishna Savaran,local,63
Balan Bihul,15002,2016,district,Balan Bihul,local,63
Belhi Chapena,15003,2016,district,Belhi Chapena,local,63
Bishnupur,15004,2016,district,Bishnupur,local,63
Bode Barsain,15005,2016,district,Bode Barsain,local,63
Chhinnamasta,15006,2016,district,Chhinnamasta,local,63
Dakneshwori,15007,2016,district,Dakneshwori,local,63
Hanumannagar Kankalini,15008,2016,district,Hanumannagar Kankalini,local,63
Kanchanrup,15009,2016,district,Kanchanrup,local,63
Khadak,15010,2016,district,Khadak,local,63
Mahadeva,15011,2016,district,Mahadeva,local,63
Rajbiraj,15012,2016,district,Rajbiraj,local,63
Rupani,15013,2016,district,Rupani,local,63
Saptakoshi,15014,2016,district,Saptakoshi,local,63
Shambhunath,15015,2016,district,Shambhunath,local,63
Surunga,15016,2016,district,Surunga,local,63
Tilathi Koiladi,15017,2016,district,Tilathi Koiladi,local,63
Tirahut,15018,2016,district,Tirahut,local,63
Koshi Tappu Wildlife Reserve,15099,2016,district,Koshi Tappu Wildlife Reserve,local,63
Arnama,16001,2016,district,Arnama,local,67
Aurahi,16002,2016,district,Aurahi,local,67
Bariyarpatti,16003,2016,district,Bariyarpatti,local,67
Bhagawanpur,16004,2016,district,Bhagawanpur,local,67
Bishnupur,16005,2016,district,Bishnupur,local,67
Dhangadhimai,16006,2016,district,Dhangadhimai,local,67
Golbazar,16007,2016,district,Golbazar,local,67
Kalyanpur,16008,2016,district,Kalyanpur,local,67
Karjanha,16009,2016,district,Karjanha,local,67
Lahan,16010,2016,district,Lahan,local,67
Laxmipur Patari,16011,2016,district,Laxmipur Patari,local,67
Mirchaiya,16012,2016,district,Mirchaiya,local,67
Naraha,16013,2016,district,Naraha,local,67
Nawarajpur,16014,2016,district,Nawarajpur,local,67
Sakhuwanankarkatti,16015,2016,district,Sakhuwanankarkatti,local,67
Siraha,16016,2016,district,Siraha,local,67
Sukhipur,16017,2016,district,Sukhipur,local,67
Aaurahi,17001,2016,district,Aaurahi,local,19
Bateshwor,17002,2016,district,Bateshwor,local,19
Bideha,17003,2016,district,Bideha,local,19
Chhireshwornath,17004,2016,district,Chhireshwornath,local,19
Dhanauji,17005,2016,district,Dhanauji,local,19
Dhanusadham,17006,2016,district,Dhanusadham,local,19
Ganeshman Charnath,17007,2016,district,Ganeshman Charnath,local,19
Hansapur,17008,2016,district,Hansapur,local,19
Janaknandani,17009,2016,district,Janaknandani,local,19
Janakpur,17010,2016,district,Janakpur,local,19
Kamala,17011,2016,district,Kamala,local,19
Lakshminiya,17012,2016,district,Lakshminiya,local,19
Mithila,17013,2016,district,Mithila,local,19
Mithila Bihari,17014,2016,district,Mithila Bihari,local,19
Mukhiyapatti Musarmiya,17015,2016,district,Mukhiyapatti Musarmiya,local,19
Nagarain,17016,2016,district,Nagarain,local,19
Sabaila,17017,2016,district,Sabaila,local,19
Sahidnagar,17018,2016,district,Sahidnagar,local,19
Aurahi,18001,2016,district,Aurahi,local,40
Balwa,18002,2016,district,Balwa,local,40
Bardibas,18003,2016,district,Bardibas,local,40
Bhangaha,18004,2016,district,Bhangaha,local,40
Ekdanra,18005,2016,district,Ekdanra,local,40
Gaushala,18006,2016,district,Gaushala,local,40
Jaleswor,18007,2016,district,Jaleswor,local,40
Loharpatti,18008,2016,district,Loharpatti,local,40
Mahottari,18009,2016,district,Mahottari,local,40
Manra Siswa,18010,2016,district,Manra Siswa,local,40
Matihani,18011,2016,district,Matihani,local,40
Pipra,18012,2016,district,Pipra,local,40
Ramgopalpur,18013,2016,district,Ramgopalpur,local,40
Samsi,18014,2016,district,Samsi,local,40
Sonama,18015,2016,district,Sonama,local,40
Bagmati,19001,2016,district,Bagmati,local,64
Balara,19002,2016,district,Balara,local,64
Barahathawa,19003,2016,district,Barahathawa,local,64
Basbariya,19004,2016,district,Basbariya,local,64
Bishnu,19005,2016,district,Bishnu,local,64
Bramhapuri,19006,2016,district,Bramhapuri,local,64
Chakraghatta,19007,2016,district,Chakraghatta,local,64
Chandranagar,19008,2016,district,Chandranagar,local,64
Dhankaul,19009,2016,district,Dhankaul,local,64
Godaita,19010,2016,district,Godaita,local,64
Haripur,19011,2016,district,Haripur,local,64
Haripurwa,19012,2016,district,Haripurwa,local,64
Hariwan,19013,2016,district,Hariwan,local,64
Ishworpur,19014,2016,district,Ishworpur,local,64
Kabilasi,19015,2016,district,Kabilasi,local,64
Kaudena,19016,2016,district,Kaudena,local,64
Lalbandi,19017,2016,district,Lalbandi,local,64
Malangawa,19018,2016,district,Malangawa,local,64
Parsa,19019,2016,district,Parsa,local,64
Ramnagar,19020,2016,district,Ramnagar,local,64
Dudhouli,20001,2016,district,Dudhouli,local,65
Ghanglekh,20002,2016,district,Ghanglekh,local,65
Golanjor,20003,2016,district,Golanjor,local,65
Hariharpurgadhi,20004,2016,district,Hariharpurgadhi,local,65
Kamalamai,20005,2016,district,Kamalamai,local,65
Marin,20006,2016,district,Marin,local,65
Phikkal,20007,2016,district,Phikkal,local,65
Sunkoshi,20008,2016,district,Sunkoshi,local,65
Tinpatan,20009,2016,district,Tinpatan,local,65
Falelung,2001,2016,district,Falelung,local,51
Falgunanda,2002,2016,district,Falgunanda,local,51
Hilihang,2003,2016,district,Hilihang,local,51
Kummayak,2004,2016,district,Kummayak,local,51
Miklajung,2005,2016,district,Miklajung,local,51
Phidim,2006,2016,district,Phidim,local,51
Tumbewa,2007,2016,district,Tumbewa,local,51
Yangwarak,2008,2016,district,Yangwarak,local,51
Doramba,21001,2016,district,Doramba,local,55
Gokulganga,21002,2016,district,Gokulganga,local,55
Khadadevi,21003,2016,district,Khadadevi,local,55
Likhu,21004,2016,district,Likhu,local,55
Manthali,21005,2016,district,Manthali,local,55
Ramechhap,21006,2016,district,Ramechhap,local,55
Sunapati,21007,2016,district,Sunapati,local,55
Umakunda,21008,2016,district,Umakunda,local,55
Baiteshwor,22001,2016,district,Baiteshwor,local,20
Bhimeshwor,22002,2016,district,Bhimeshwor,local,20
Bigu,22003,2016,district,Bigu,local,20
Gaurishankar,22004,2016,district,Gaurishankar,local,20
Jiri,22005,2016,district,Jiri,local,20
Kalinchok,22006,2016,district,Kalinchok,local,20
Melung,22007,2016,district,Melung,local,20
Sailung,22008,2016,district,Sailung,local,20
Tamakoshi,22009,2016,district,Tamakoshi,local,20
Balefi,23001,2016,district,Balefi,local,66
Barhabise,23002,2016,district,Barhabise,local,66
Bhotekoshi,23003,2016,district,Bhotekoshi,local,66
Chautara Sangachokgadhi,23004,2016,district,Chautara Sangachokgadhi,local,66
Helambu,23005,2016,district,Helambu,local,66
Indrawati,23006,2016,district,Indrawati,local,66
Jugal,23007,2016,district,Jugal,local,66
Lisangkhu Pakhar,23008,2016,district,Lisangkhu Pakhar,local,66
Melamchi,23009,2016,district,Melamchi,local,66
Panchpokhari Thangpal,23010,2016,district,Panchpokhari Thangpal,local,66
Sunkoshi,23011,2016,district,Sunkoshi,local,66
Tripurasundari,23012,2016,district,Tripurasundari,local,66
Banepa,24001,2016,district,Banepa,local,36
Bethanchowk,24002,2016,district,Bethanchowk,local,36
Bhumlu,24003,2016,district,Bhumlu,local,36
Chaurideurali,24004,2016,district,Chaurideurali,local,36
Dhulikhel,24005,2016,district,Dhulikhel,local,36
Khanikhola,24006,2016,district,Khanikhola,local,36
Mahabharat,24007,2016,district,Mahabharat,local,36
Mandandeupur,24008,2016,district,Mandandeupur,local,36
Namobuddha,24009,2016,district,Namobuddha,local,36
Panauti,24010,2016,district,Panauti,local,36
Panchkhal,24011,2016,district,Panchkhal,local,36
Roshi,24012,2016,district,Roshi,local,36
Temal,24013,2016,district,Temal,local,36
Bagmati,25001,2016,district,Bagmati,local,38
Godawari,25002,2016,district,Godawari,local,38
Konjyosom,25003,2016,district,Konjyosom,local,38
Lalitpur,25004,2016,district,Lalitpur,local,38
Mahalaxmi,25005,2016,district,Mahalaxmi,local,38
Mahankal,25006,2016,district,Mahankal,local,38
Bhaktapur,26001,2016,district,Bhaktapur,local,10
Changunarayan,26002,2016,district,Changunarayan,local,10
Madhyapur Thimi,26003,2016,district,Madhyapur Thimi,local,10
Suryabinayak,26004,2016,district,Suryabinayak,local,10
Budhanilakantha,27001,2016,district,Budhanilakantha,local,35
Chandragiri,27002,2016,district,Chandragiri,local,35
Dakshinkali,27003,2016,district,Dakshinkali,local,35
Gokarneshwor,27004,2016,district,Gokarneshwor,local,35
Kageshwori Manahora,27005,2016,district,Kageshwori Manahora,local,35
Kathmandu,27006,2016,district,Kathmandu,local,35
Kirtipur,27007,2016,district,Kirtipur,local,35
Nagarjun,27008,2016,district,Nagarjun,local,35
Shankharapur,27009,2016,district,Shankharapur,local,35
Tarakeshwor,27010,2016,district,Tarakeshwor,local,35
Tokha,27011,2016,district,Tokha,local,35
Belkotgadhi,28001,2016,district,Belkotgadhi,local,48
Bidur,28002,2016,district,Bidur,local,48
Dupcheshwar,28003,2016,district,Dupcheshwar,local,48
Kakani,28004,2016,district,Kakani,local,48
Kispang,28005,2016,district,Kispang,local,48
Likhu,28006,2016,district,Likhu,local,48
Meghang,28007,2016,district,Meghang,local,48
Panchakanya,28008,2016,district,Panchakanya,local,48
Shivapuri,28009,2016,district,Shivapuri,local,48
Suryagadhi,28010,2016,district,Suryagadhi,local,48
Tadi,28011,2016,district,Tadi,local,48
Tarkeshwar,28012,2016,district,Tarkeshwar,local,48
Shivapuri Watershed And Wildlife Reserve,28088,2016,district,Shivapuri Watershed And Wildlife Reserve,local,48
Langtang National Park,28099,2016,district,Langtang National Park,local,48
Gosaikunda,29001,2016,district,Gosaikunda,local,56
Kalika,29002,2016,district,Kalika,local,56
Naukunda,29003,2016,district,Naukunda,local,56
Parbati Kunda,29004,2016,district,Parbati Kunda,local,56
Uttargaya,29005,2016,district,Uttargaya,local,56
Benighat Rorang,30001,2016,district,Benighat Rorang,local,17
Dhunibesi,30002,2016,district,Dhunibesi,local,17
Gajuri,30003,2016,district,Gajuri,local,17
Galchi,30004,2016,district,Galchi,local,17
Gangajamuna,30005,2016,district,Gangajamuna,local,17
Jwalamukhi,30006,2016,district,Jwalamukhi,local,17
Khaniyabash,30007,2016,district,Khaniyabash,local,17
Netrawati,30008,2016,district,Netrawati,local,17
Nilakantha,30009,2016,district,Nilakantha,local,17
Chulachuli,3001,2016,district,Chulachuli,local,26
Rubi Valley,30010,2016,district,Rubi Valley,local,17
Siddhalek,30011,2016,district,Siddhalek,local,17
Thakre,30012,2016,district,Thakre,local,17
Tripura Sundari,30013,2016,district,Tripura Sundari,local,17
Deumai,3002,2016,district,Deumai,local,26
Fakphokthum,3003,2016,district,Fakphokthum,local,26
Illam,3004,2016,district,Illam,local,26
Mai,3005,2016,district,Mai,local,26
Maijogmai,3006,2016,district,Maijogmai,local,26
Mangsebung,3007,2016,district,Mangsebung,local,26
Rong,3008,2016,district,Rong,local,26
Sandakpur,3009,2016,district,Sandakpur,local,26
Suryodaya,3010,2016,district,Suryodaya,local,26
Bagmati,31001,2016,district,Bagmati,local,41
Bakaiya,31002,2016,district,Bakaiya,local,41
Bhimphedi,31003,2016,district,Bhimphedi,local,41
Hetauda,31004,2016,district,Hetauda,local,41
Indrasarowar,31005,2016,district,Indrasarowar,local,41
Kailash,31006,2016,district,Kailash,local,41
Makawanpurgadhi,31007,2016,district,Makawanpurgadhi,local,41
Manahari,31008,2016,district,Manahari,local,41
Raksirang,31009,2016,district,Raksirang,local,41
Thaha,31010,2016,district,Thaha,local,41
Parsa Wildlife Reserve,31088,2016,district,Parsa Wildlife Reserve,local,41
Chitawan National Park,31099,2016,district,Chitawan National Park,local,41
Baudhimai,32001,2016,district,Baudhimai,local,57
Brindaban,32002,2016,district,Brindaban,local,57
Chandrapur,32003,2016,district,Chandrapur,local,57
Dewahhi Gonahi,32004,2016,district,Dewahhi Gonahi,local,57
Durga Bhagwati,32005,2016,district,Durga Bhagwati,local,57
Gadhimai,32006,2016,district,Gadhimai,local,57
Garuda,32007,2016,district,Garuda,local,57
Gaur,32008,2016,district,Gaur,local,57
Gujara,32009,2016,district,Gujara,local,57
Ishanath,32010,2016,district,Ishanath,local,57
Katahariya,32011,2016,district,Katahariya,local,57
Madhav Narayan,32012,2016,district,Madhav Narayan,local,57
Maulapur,32013,2016,district,Maulapur,local,57
Paroha,32014,2016,district,Paroha,local,57
Phatuwa Bijayapur,32015,2016,district,Phatuwa Bijayapur,local,57
Rajdevi,32016,2016,district,Rajdevi,local,57
Rajpur,32017,2016,district,Rajpur,local,57
Yemunamai,32018,2016,district,Yemunamai,local,57
Adarshkotwal,33001,2016,district,Adarshkotwal,local,08
Baragadhi,33002,2016,district,Baragadhi,local,08
Bishrampur,33003,2016,district,Bishrampur,local,08
Devtal,33004,2016,district,Devtal,local,08
Jitpur Simara,33005,2016,district,Jitpur Simara,local,08
Kalaiya,33006,2016,district,Kalaiya,local,08
Karaiyamai,33007,2016,district,Karaiyamai,local,08
Kolhabi,33008,2016,district,Kolhabi,local,08
Mahagadhimai,33009,2016,district,Mahagadhimai,local,08
Nijgadh,33010,2016,district,Nijgadh,local,08
Pacharauta,33011,2016,district,Pacharauta,local,08
Parwanipur,33012,2016,district,Parwanipur,local,08
Pheta,33013,2016,district,Pheta,local,08
Prasauni,33014,2016,district,Prasauni,local,08
Simraungadh,33015,2016,district,Simraungadh,local,08
Suwarna,33016,2016,district,Suwarna,local,08
Parsa Wildlife Reserve,33099,2016,district,Parsa Wildlife Reserve,local,08
Bahudaramai,34001,2016,district,Bahudaramai,local,53
Bindabasini,34002,2016,district,Bindabasini,local,53
Birgunj,34003,2016,district,Birgunj,local,53
Chhipaharmai,34004,2016,district,Chhipaharmai,local,53
Dhobini,34005,2016,district,Dhobini,local,53
Jagarnathpur,34006,2016,district,Jagarnathpur,local,53
Jirabhawani,34007,2016,district,Jirabhawani,local,53
Kalikamai,34008,2016,district,Kalikamai,local,53
Pakahamainpur,34009,2016,district,Pakahamainpur,local,53
Parsagadhi,34010,2016,district,Parsagadhi,local,53
Paterwasugauli,34011,2016,district,Paterwasugauli,local,53
Pokhariya,34012,2016,district,Pokhariya,local,53
Sakhuwaprasauni,34013,2016,district,Sakhuwaprasauni,local,53
Thori,34014,2016,district,Thori,local,53
Chitwan National Park,34099,2016,district,Chitwan National Park,local,53
Bharatpur,35001,2016,district,Bharatpur,local,12
Ichchhyakamana,35002,2016,district,Ichchhyakamana,local,12
Kalika,35003,2016,district,Kalika,local,12
Khairahani,35004,2016,district,Khairahani,local,12
Madi,35005,2016,district,Madi,local,12
Rapti,35006,2016,district,Rapti,local,12
Ratnanagar,35007,2016,district,Ratnanagar,local,12
Chitawan National Park,35099,2016,district,Chitawan National Park,local,12
Aarughat,36001,2016,district,Aarughat,local,23
Ajirkot,36002,2016,district,Ajirkot,local,23
Bhimsen,36003,2016,district,Bhimsen,local,23
Chum Nubri,36004,2016,district,Chum Nubri,local,23
Dharche,36005,2016,district,Dharche,local,23
Gandaki,36006,2016,district,Gandaki,local,23
Gorkha,36007,2016,district,Gorkha,local,23
Palungtar,36008,2016,district,Palungtar,local,23
Sahid Lakhan,36009,2016,district,Sahid Lakhan,local,23
Siranchok,36010,2016,district,Siranchok,local,23
Sulikot,36011,2016,district,Sulikot,local,23
Besishahar,37001,2016,district,Besishahar,local,39
Dordi,37002,2016,district,Dordi,local,39
Dudhpokhari,37003,2016,district,Dudhpokhari,local,39
Kwholasothar,37004,2016,district,Kwholasothar,local,39
Madhyanepal,37005,2016,district,Madhyanepal,local,39
Marsyangdi,37006,2016,district,Marsyangdi,local,39
Rainas,37007,2016,district,Rainas,local,39
Sundarbazar,37008,2016,district,Sundarbazar,local,39
Anbukhaireni,38001,2016,district,Anbukhaireni,local,72
Bandipur,38002,2016,district,Bandipur,local,72
Bhanu,38003,2016,district,Bhanu,local,72
Bhimad,38004,2016,district,Bhimad,local,72
Byas,38005,2016,district,Byas,local,72
Devghat,38006,2016,district,Devghat,local,72
Ghiring,38007,2016,district,Ghiring,local,72
Myagde,38008,2016,district,Myagde,local,72
Rhishing,38009,2016,district,Rhishing,local,72
Shuklagandaki,38010,2016,district,Shuklagandaki,local,72
Aandhikhola,39001,2016,district,Aandhikhola,local,71
Arjunchaupari,39002,2016,district,Arjunchaupari,local,71
Bhirkot,39003,2016,district,Bhirkot,local,71
Biruwa,39004,2016,district,Biruwa,local,71
Chapakot,39005,2016,district,Chapakot,local,71
Galyang,39006,2016,district,Galyang,local,71
Harinas,39007,2016,district,Harinas,local,71
Kaligandagi,39008,2016,district,Kaligandagi,local,71
Phedikhola,39009,2016,district,Phedikhola,local,71
Putalibazar,39010,2016,district,Putalibazar,local,71
Waling,39011,2016,district,Waling,local,71
Annapurna,40001,2016,district,Annapurna,local,34
Machhapuchchhre,40002,2016,district,Machhapuchchhre,local,34
Madi,40003,2016,district,Madi,local,34
Pokhara Lekhnath,40004,2016,district,Pokhara Lekhnath,local,34
Rupa,40005,2016,district,Rupa,local,34
Arjundhara,4001,2016,district,Arjundhara,local,28
Barhadashi,4002,2016,district,Barhadashi,local,28
Bhadrapur,4003,2016,district,Bhadrapur,local,28
Birtamod,4004,2016,district,Birtamod,local,28
Buddhashanti,4005,2016,district,Buddhashanti,local,28
Damak,4006,2016,district,Damak,local,28
Gauradhaha,4007,2016,district,Gauradhaha,local,28
Gauriganj,4008,2016,district,Gauriganj,local,28
Haldibari,4009,2016,district,Haldibari,local,28
Jhapa,4010,2016,district,Jhapa,local,28
Kachankawal,4011,2016,district,Kachankawal,local,28
Kamal,4012,2016,district,Kamal,local,28
Kankai,4013,2016,district,Kankai,local,28
Mechinagar,4014,2016,district,Mechinagar,local,28
Shivasataxi,4015,2016,district,Shivasataxi,local,28
Chame,41001,2016,district,Chame,local,42
Narphu,41002,2016,district,Narphu,local,42
Nashong,41003,2016,district,Nashong,local,42
Neshyang,41004,2016,district,Neshyang,local,42
Barhagaun Muktikhsetra,42001,2016,district,Barhagaun Muktikhsetra,local,45
Dalome,42002,2016,district,Dalome,local,45
Gharapjhong,42003,2016,district,Gharapjhong,local,45
Lomanthang,42004,2016,district,Lomanthang,local,45
Thasang,42005,2016,district,Thasang,local,45
Annapurna,43001,2016,district,Annapurna,local,46
Beni,43002,2016,district,Beni,local,46
Dhaulagiri,43003,2016,district,Dhaulagiri,local,46
Malika,43004,2016,district,Malika,local,46
Mangala,43005,2016,district,Mangala,local,46
Raghuganga,43006,2016,district,Raghuganga,local,46
Dhorpatan Hunting Reserve,43099,2016,district,Dhorpatan Hunting Reserve,local,46
Bihadi,44001,2016,district,Bihadi,local,52
Jaljala,44002,2016,district,Jaljala,local,52
Kushma,44003,2016,district,Kushma,local,52
Mahashila,44004,2016,district,Mahashila,local,52
Modi,44005,2016,district,Modi,local,52
Painyu,44006,2016,district,Painyu,local,52
Phalebas,44007,2016,district,Phalebas,local,52
Badigad,45001,2016,district,Badigad,local,03
Baglung,45002,2016,district,Baglung,local,03
Bareng,45003,2016,district,Bareng,local,03
Dhorpatan,45004,2016,district,Dhorpatan,local,03
Galkot,45005,2016,district,Galkot,local,03
Jaimuni,45006,2016,district,Jaimuni,local,03
Kanthekhola,45007,2016,district,Kanthekhola,local,03
Nisikhola,45008,2016,district,Nisikhola,local,03
Taman Khola,45009,2016,district,Taman Khola,local,03
Tara Khola,45010,2016,district,Tara Khola,local,03
Dhorpatan Hunting Reserve,45099,2016,district,Dhorpatan Hunting Reserve,local,03
Chandrakot,46001,2016,district,Chandrakot,local,24
Chatrakot,46002,2016,district,Chatrakot,local,24
Dhurkot,46003,2016,district,Dhurkot,local,24
Gulmidarbar,46004,2016,district,Gulmidarbar,local,24
Isma,46005,2016,district,Isma,local,24
Kaligandaki,46006,2016,district,Kaligandaki,local,24
Madane,46007,2016,district,Madane,local,24
Malika,46008,2016,district,Malika,local,24
Musikot,46009,2016,district,Musikot,local,24
Resunga,46010,2016,district,Resunga,local,24
Ruru,46011,2016,district,Ruru,local,24
Satyawati,46012,2016,district,Satyawati,local,24
Bagnaskali,47001,2016,district,Bagnaskali,local,50
Mathagadhi,47002,2016,district,Mathagadhi,local,50
Nisdi,47003,2016,district,Nisdi,local,50
Purbakhola,47004,2016,district,Purbakhola,local,50
Rainadevi Chhahara,47005,2016,district,Rainadevi Chhahara,local,50
Rambha,47006,2016,district,Rambha,local,50
Rampur,47007,2016,district,Rampur,local,50
Ribdikot,47008,2016,district,Ribdikot,local,50
Tansen,47009,2016,district,Tansen,local,50
Tinau,47010,2016,district,Tinau,local,50
Bardaghat,48001,2016,district,Bardaghat,local,76
Palhi Nandan,48002,2016,district,Palhi Nandan,local,76
Pratappur,48003,2016,district,Pratappur,local,76
Ramgram,48004,2016,district,Ramgram,local,76
Sarawal,48005,2016,district,Sarawal,local,76
Sunwal,48006,2016,district,Sunwal,local,76
Susta,48007,2016,district,Susta,local,76
Butwal,49001,2016,district,Butwal,local,60
Devdaha,49002,2016,district,Devdaha,local,60
Gaidahawa,49003,2016,district,Gaidahawa,local,60
Kanchan,49004,2016,district,Kanchan,local,60
Kotahimai,49005,2016,district,Kotahimai,local,60
Lumbini Sanskritik,49006,2016,district,Lumbini Sanskritik,local,60
Marchawari,49007,2016,district,Marchawari,local,60
Mayadevi,49008,2016,district,Mayadevi,local,60
Omsatiya,49009,2016,district,Omsatiya,local,60
Rohini,49010,2016,district,Rohini,local,60
Sainamaina,49011,2016,district,Sainamaina,local,60
Sammarimai,49012,2016,district,Sammarimai,local,60
Siddharthanagar,49013,2016,district,Siddharthanagar,local,60
Siyari,49014,2016,district,Siyari,local,60
Sudhdhodhan,49015,2016,district,Sudhdhodhan,local,60
Tillotama,49016,2016,district,Tillotama,local,60
Lumbini Sanskritik Development Area,49099,2016,district,Lumbini Sanskritik Development Area,local,60
Banganga,50001,2016,district,Banganga,local,33
Bijayanagar,50002,2016,district,Bijayanagar,local,33
Buddhabhumi,50003,2016,district,Buddhabhumi,local,33
Kapilbastu,50004,2016,district,Kapilbastu,local,33
Krishnanagar,50005,2016,district,Krishnanagar,local,33
Maharajgunj,50006,2016,district,Maharajgunj,local,33
Mayadevi,50007,2016,district,Mayadevi,local,33
Shivaraj,50008,2016,district,Shivaraj,local,33
Suddhodhan,50009,2016,district,Suddhodhan,local,33
Belbari,5001,2016,district,Belbari,local,43
Yashodhara,50010,2016,district,Yashodhara,local,33
Biratnagar,5002,2016,district,Biratnagar,local,43
Budhiganga,5003,2016,district,Budhiganga,local,43
Dhanpalthan,5004,2016,district,Dhanpalthan,local,43
Gramthan,5005,2016,district,Gramthan,local,43
Jahada,5006,2016,district,Jahada,local,43
Kanepokhari,5007,2016,district,Kanepokhari,local,43
Katahari,5008,2016,district,Katahari,local,43
Kerabari,5009,2016,district,Kerabari,local,43
Letang,5010,2016,district,Letang,local,43
Miklajung,5011,2016,district,Miklajung,local,43
Patahrishanishchare,5012,2016,district,Patahrishanishchare,local,43
Rangeli,5013,2016,district,Rangeli,local,43
Ratuwamai,5014,2016,district,Ratuwamai,local,43
Sundarharaicha,5015,2016,district,Sundarharaicha,local,43
Sunwarshi,5016,2016,district,Sunwarshi,local,43
Uralabari,5017,2016,district,Uralabari,local,43
Bhumekasthan,51001,2016,district,Bhumekasthan,local,02
Chhatradev,51002,2016,district,Chhatradev,local,02
Malarani,51003,2016,district,Malarani,local,02
Panini,51004,2016,district,Panini,local,02
Sandhikharka,51005,2016,district,Sandhikharka,local,02
Sitganga,51006,2016,district,Sitganga,local,02
Ayirabati,52001,2016,district,Ayirabati,local,54
Gaumukhi,52002,2016,district,Gaumukhi,local,54
Jhimruk,52003,2016,district,Jhimruk,local,54
Mallarani,52004,2016,district,Mallarani,local,54
Mandavi,52005,2016,district,Mandavi,local,54
Naubahini,52006,2016,district,Naubahini,local,54
Pyuthan,52007,2016,district,Pyuthan,local,54
Sarumarani,52008,2016,district,Sarumarani,local,54
Sworgadwary,52009,2016,district,Sworgadwary,local,54
Duikholi,53001,2016,district,Duikholi,local,58
Lungri,53002,2016,district,Lungri,local,58
Madi,53003,2016,district,Madi,local,58
Rolpa,53004,2016,district,Rolpa,local,58
Runtigadi,53005,2016,district,Runtigadi,local,58
Sukidaha,53006,2016,district,Sukidaha,local,58
Sunchhahari,53007,2016,district,Sunchhahari,local,58
Suwarnabati,53008,2016,district,Suwarnabati,local,58
Thawang,53009,2016,district,Thawang,local,58
Tribeni,53010,2016,district,Tribeni,local,58
Aathbiskot,54001,2016,district,Aathbiskot,local,77
Banfikot,54002,2016,district,Banfikot,local,77
Chaurjahari,54003,2016,district,Chaurjahari,local,77
Musikot,54004,2016,district,Musikot,local,77
Sani Bheri,54005,2016,district,Sani Bheri,local,77
Tribeni,54006,2016,district,Tribeni,local,77
Bagchaur,55001,2016,district,Bagchaur,local,61
Bangad Kupinde,55002,2016,district,Bangad Kupinde,local,61
Chhatreshwori,55003,2016,district,Chhatreshwori,local,61
Darma,55004,2016,district,Darma,local,61
Dhorchaur,55005,2016,district,Dhorchaur,local,61
Kalimati,55006,2016,district,Kalimati,local,61
Kapurkot,55007,2016,district,Kapurkot,local,61
Kumakhmalika,55008,2016,district,Kumakhmalika,local,61
Sharada,55009,2016,district,Sharada,local,61
Tribeni,55010,2016,district,Tribeni,local,61
Babai,56001,2016,district,Babai,local,15
Banglachuli,56002,2016,district,Banglachuli,local,15
Dangisharan,56003,2016,district,Dangisharan,local,15
Gadhawa,56004,2016,district,Gadhawa,local,15
Ghorahi,56005,2016,district,Ghorahi,local,15
Lamahi,56006,2016,district,Lamahi,local,15
Rajpur,56007,2016,district,Rajpur,local,15
Rapti,56008,2016,district,Rapti,local,15
Shantinagar,56009,2016,district,Shantinagar,local,15
Tulsipur,56010,2016,district,Tulsipur,local,15
Baijanath,57001,2016,district,Baijanath,local,07
Duduwa,57002,2016,district,Duduwa,local,07
Janki,57003,2016,district,Janki,local,07
Khajura,57004,2016,district,Khajura,local,07
Kohalpur,57005,2016,district,Kohalpur,local,07
Narainapur,57006,2016,district,Narainapur,local,07
Nepalgunj,57007,2016,district,Nepalgunj,local,07
Rapti Sonari,57008,2016,district,Rapti Sonari,local,07
Badhaiyatal,58001,2016,district,Badhaiyatal,local,09
Bansagadhi,58002,2016,district,Bansagadhi,local,09
Barbardiya,58003,2016,district,Barbardiya,local,09
Geruwa,58004,2016,district,Geruwa,local,09
Gulariya,58005,2016,district,Gulariya,local,09
Madhuwan,58006,2016,district,Madhuwan,local,09
Rajapur,58007,2016,district,Rajapur,local,09
Thakurbaba,58008,2016,district,Thakurbaba,local,09
Bardiya National Park,58099,2016,district,Bardiya National Park,local,09
Barahtal,59001,2016,district,Barahtal,local,70
Bheriganga,59002,2016,district,Bheriganga,local,70
Birendranagar,59003,2016,district,Birendranagar,local,70
Chaukune,59004,2016,district,Chaukune,local,70
Chingad,59005,2016,district,Chingad,local,70
Gurbhakot,59006,2016,district,Gurbhakot,local,70
Lekbeshi,59007,2016,district,Lekbeshi,local,70
Panchpuri,59008,2016,district,Panchpuri,local,70
Simta,59009,2016,district,Simta,local,70
Aathabis,60001,2016,district,Aathabis,local,14
Bhagawatimai,60002,2016,district,Bhagawatimai,local,14
Bhairabi,60003,2016,district,Bhairabi,local,14
Chamunda Bindrasaini,60004,2016,district,Chamunda Bindrasaini,local,14
Dullu,60005,2016,district,Dullu,local,14
Dungeshwor,60006,2016,district,Dungeshwor,local,14
Gurans,60007,2016,district,Gurans,local,14
Mahabu,60008,2016,district,Mahabu,local,14
Narayan,60009,2016,district,Narayan,local,14
Barah,6001,2016,district,Barah,local,69
Naumule,60010,2016,district,Naumule,local,14
Thantikandh,60011,2016,district,Thantikandh,local,14
Barju,6002,2016,district,Barju,local,69
Bhokraha,6003,2016,district,Bhokraha,local,69
Dewanganj,6004,2016,district,Dewanganj,local,69
Dharan,6005,2016,district,Dharan,local,69
Duhabi,6006,2016,district,Duhabi,local,69
Gadhi,6007,2016,district,Gadhi,local,69
Harinagara,6008,2016,district,Harinagara,local,69
Inaruwa,6009,2016,district,Inaruwa,local,69
Itahari,6010,2016,district,Itahari,local,69
Koshi,6011,2016,district,Koshi,local,69
Ramdhuni,6012,2016,district,Ramdhuni,local,69
Koshi Tappu Wildlife Reserve,6099,2016,district,Koshi Tappu Wildlife Reserve,local,69
Barekot,61001,2016,district,Barekot,local,27
Bheri,61002,2016,district,Bheri,local,27
Chhedagad,61003,2016,district,Chhedagad,local,27
Junichande,61004,2016,district,Junichande,local,27
Kuse,61005,2016,district,Kuse,local,27
Shiwalaya,61006,2016,district,Shiwalaya,local,27
Tribeni Nalagad,61007,2016,district,Tribeni Nalagad,local,27
Chharka Tangsong,62001,2016,district,Chharka Tangsong,local,21
Dolpo Buddha,62002,2016,district,Dolpo Buddha,local,21
Jagadulla,62003,2016,district,Jagadulla,local,21
Kaike,62004,2016,district,Kaike,local,21
Mudkechula,62005,2016,district,Mudkechula,local,21
Shey Phoksundo,62006,2016,district,Shey Phoksundo,local,21
Thuli Bheri,62007,2016,district,Thuli Bheri,local,21
Tripurasundari,62008,2016,district,Tripurasundari,local,21
Chandannath,63001,2016,district,Chandannath,local,29
Guthichaur,63002,2016,district,Guthichaur,local,29
Hima,63003,2016,district,Hima,local,29
Kanakasundari,63004,2016,district,Kanakasundari,local,29
Patrasi,63005,2016,district,Patrasi,local,29
Sinja,63006,2016,district,Sinja,local,29
Tatopani,63007,2016,district,Tatopani,local,29
Tila,63008,2016,district,Tila,local,29
Kalika,64001,2016,district,Kalika,local,31
Khandachakra,64002,2016,district,Khandachakra,local,31
Mahawai,64003,2016,district,Mahawai,local,31
Naraharinath,64004,2016,district,Naraharinath,local,31
Pachaljharana,64005,2016,district,Pachaljharana,local,31
Palata,64006,2016,district,Palata,local,31
Raskot,64007,2016,district,Raskot,local,31
Sanni Tribeni,64008,2016,district,Sanni Tribeni,local,31
Tilagufa,64009,2016,district,Tilagufa,local,31
Chhayanath Rara,65001,2016,district,Chhayanath Rara,local,44
Khatyad,65002,2016,district,Khatyad,local,44
Mugum Karmarong,65003,2016,district,Mugum Karmarong,local,44
Soru,65004,2016,district,Soru,local,44
Adanchuli,66001,2016,district,Adanchuli,local,25
Chankheli,66002,2016,district,Chankheli,local,25
Kharpunath,66003,2016,district,Kharpunath,local,25
Namkha,66004,2016,district,Namkha,local,25
Sarkegad,66005,2016,district,Sarkegad,local,25
Simkot,66006,2016,district,Simkot,local,25
Tanjakot,66007,2016,district,Tanjakot,local,25
Badimalika,67001,2016,district,Badimalika,local,06
Budhiganga,67002,2016,district,Budhiganga,local,06
Budhinanda,67003,2016,district,Budhinanda,local,06
Chhededaha,67004,2016,district,Chhededaha,local,06
Gaumul,67005,2016,district,Gaumul,local,06
Himali,67006,2016,district,Himali,local,06
Pandav Gupha,67007,2016,district,Pandav Gupha,local,06
Swami Kartik,67008,2016,district,Swami Kartik,local,06
Tribeni,67009,2016,district,Tribeni,local,06
Khaptad National Park,67099,2016,district,Khaptad National Park,local,06
Bithadchir,68001,2016,district,Bithadchir,local,05
Bungal,68002,2016,district,Bungal,local,05
Chabispathivera,68003,2016,district,Chabispathivera,local,05
Durgathali,68004,2016,district,Durgathali,local,05
Jayaprithivi,68005,2016,district,Jayaprithivi,local,05
Kanda,68006,2016,district,Kanda,local,05
Kedarseu,68007,2016,district,Kedarseu,local,05
Khaptadchhanna,68008,2016,district,Khaptadchhanna,local,05
Masta,68009,2016,district,Masta,local,05
Surma,68010,2016,district,Surma,local,05
Talkot,68011,2016,district,Talkot,local,05
Thalara,68012,2016,district,Thalara,local,05
Khaptad National Park,68099,2016,district,Khaptad National Park,local,05
Bannigadhi Jayagadh,69001,2016,district,Bannigadhi Jayagadh,local,01
Chaurpati,69002,2016,district,Chaurpati,local,01
Dhakari,69003,2016,district,Dhakari,local,01
Kamalbazar,69004,2016,district,Kamalbazar,local,01
Mangalsen,69005,2016,district,Mangalsen,local,01
Mellekh,69006,2016,district,Mellekh,local,01
Panchadewal Binayak,69007,2016,district,Panchadewal Binayak,local,01
Ramaroshan,69008,2016,district,Ramaroshan,local,01
Sanphebagar,69009,2016,district,Sanphebagar,local,01
Turmakhad,69010,2016,district,Turmakhad,local,01
Khaptad National Park,69099,2016,district,Khaptad National Park,local,01
Adharsha,70001,2016,district,Adharsha,local,22
Badikedar,70002,2016,district,Badikedar,local,22
Bogtan,70003,2016,district,Bogtan,local,22
Dipayal Silgadi,70004,2016,district,Dipayal Silgadi,local,22
Jorayal,70005,2016,district,Jorayal,local,22
K I Singh,70006,2016,district,K I Singh,local,22
Purbichauki,70007,2016,district,Purbichauki,local,22
Sayal,70008,2016,district,Sayal,local,22
Shikhar,70009,2016,district,Shikhar,local,22
Chaubise,7001,2016,district,Chaubise,local,18
Chhathar Jorpati,7002,2016,district,Chhathar Jorpati,local,18
Dhankuta,7003,2016,district,Dhankuta,local,18
Khalsa Chhintang Shahidbhumi,7004,2016,district,Khalsa Chhintang Shahidbhumi,local,18
Mahalaxmi,7005,2016,district,Mahalaxmi,local,18
Pakhribas,7006,2016,district,Pakhribas,local,18
Sangurigadhi,7007,2016,district,Sangurigadhi,local,18
Khaptad National Park,70099,2016,district,Khaptad National Park,local,22
Bardagoriya,71001,2016,district,Bardagoriya,local,30
Bhajani,71002,2016,district,Bhajani,local,30
Chure,71003,2016,district,Chure,local,30
Dhangadhi,71004,2016,district,Dhangadhi,local,30
Gauriganga,71005,2016,district,Gauriganga,local,30
Ghodaghodi,71006,2016,district,Ghodaghodi,local,30
Godawari,71007,2016,district,Godawari,local,30
Janaki,71008,2016,district,Janaki,local,30
Joshipur,71009,2016,district,Joshipur,local,30
Kailari,71010,2016,district,Kailari,local,30
Lamkichuha,71011,2016,district,Lamkichuha,local,30
Mohanyal,71012,2016,district,Mohanyal,local,30
Tikapur,71013,2016,district,Tikapur,local,30
Bedkot,72001,2016,district,Bedkot,local,32
Belauri,72002,2016,district,Belauri,local,32
Beldandi,72003,2016,district,Beldandi,local,32
Bhimdatta,72004,2016,district,Bhimdatta,local,32
Krishnapur,72005,2016,district,Krishnapur,local,32
Laljhadi,72006,2016,district,Laljhadi,local,32
Mahakali,72007,2016,district,Mahakali,local,32
Punarbas,72008,2016,district,Punarbas,local,32
Shuklaphanta,72009,2016,district,Shuklaphanta,local,32
Shuklaphanta National Park,72099,2016,district,Shuklaphanta National Park,local,32
Ajaymeru,73001,2016,district,Ajaymeru,local,13
Alital,73002,2016,district,Alital,local,13
Amargadhi,73003,2016,district,Amargadhi,local,13
Bhageshwar,73004,2016,district,Bhageshwar,local,13
Ganayapdhura,73005,2016,district,Ganayapdhura,local,13
Nawadurga,73006,2016,district,Nawadurga,local,13
Parashuram,73007,2016,district,Parashuram,local,13
Dasharathchanda,74001,2016,district,Dasharathchanda,local,04
Dilasaini,74002,2016,district,Dilasaini,local,04
Dogadakedar,74003,2016,district,Dogadakedar,local,04
Melauli,74004,2016,district,Melauli,local,04
Pancheshwar,74005,2016,district,Pancheshwar,local,04
Patan,74006,2016,district,Patan,local,04
Purchaudi,74007,2016,district,Purchaudi,local,04
Shivanath,74008,2016,district,Shivanath,local,04
Sigas,74009,2016,district,Sigas,local,04
Surnaya,74010,2016,district,Surnaya,local,04
Apihimal,75001,2016,district,Apihimal,local,16
Byas,75002,2016,district,Byas,local,16
Dunhu,75003,2016,district,Dunhu,local,16
Lekam,75004,2016,district,Lekam,local,16
Mahakali,75005,2016,district,Mahakali,local,16
Malikaarjun,75006,2016,district,Malikaarjun,local,16
Marma,75007,2016,district,Marma,local,16
Naugad,75008,2016,district,Naugad,local,16
Shailyashikhar,75009,2016,district,Shailyashikhar,local,16
Binayee Tribeni,76001,2016,district,Binayee Tribeni,local,47
Bulingtar,76002,2016,district,Bulingtar,local,47
Bungdikali,76003,2016,district,Bungdikali,local,47
Devchuli,76004,2016,district,Devchuli,local,47
Gaidakot,76005,2016,district,Gaidakot,local,47
Hupsekot,76006,2016,district,Hupsekot,local,47
Kawasoti,76007,2016,district,Kawasoti,local,47
Madhyabindu,76008,2016,district,Madhyabindu,local,47
Chitawan National Park,76099,2016,district,Chitawan National Park,local,47
Bhume,77001,2016,district,Bhume,local,59
Putha Uttarganga,77002,2016,district,Putha Uttarganga,local,59
Sisne,77003,2016,district,Sisne,local,59
Dhorpatan Hunting Reserve,77099,2016,district,Dhorpatan Hunting Reserve,local,59
Aathrai,8001,2016,district,Aathrai,local,74
Chhathar,8002,2016,district,Chhathar,local,74
Laligurans,8003,2016,district,Laligurans,local,74
Menchayam,8004,2016,district,Menchayam,local,74
Myanglung,8005,2016,district,Myanglung,local,74
Phedap,8006,2016,district,Phedap,local,74
Bhotkhola,9001,2016,district,Bhotkhola,local,62
Chainpur,9002,2016,district,Chainpur,local,62
Chichila,9003,2016,district,Chichila,local,62
Dharmadevi,9004,2016,district,Dharmadevi,local,62
Khandbari,9005,2016,district,Khandbari,local,62
Madi,9006,2016,district,Madi,local,62
Makalu,9007,2016,district,Makalu,local,62
Panchakhapan,9008,2016,district,Panchakhapan,local,62
Sabhapokhari,9009,2016,district,Sabhapokhari,local,62
Silichong,9010,2016,district,Silichong,local,62
\.

--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 1, false);
--
-- Name: wazimap_geography_geo_level_9a5128d2_uniq; Type: CONSTRAINT; Schema: public; Tablespace:
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_9a5128d2_uniq UNIQUE (geo_level, geo_code);


--
-- Name: wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Tablespace:
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);

--
-- Name: wazimap_geography_2fc6351a; Type: INDEX; Schema: public; Tablespace:
--

CREATE INDEX wazimap_geography_2fc6351a ON wazimap_geography USING btree (long_name);


--
-- Name: wazimap_geography_84cdc76c; Type: INDEX; Schema: public; Tablespace:
--

CREATE INDEX wazimap_geography_84cdc76c ON wazimap_geography USING btree (year);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Tablespace:
--

CREATE INDEX wazimap_geography_b068931c ON wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Tablespace:
--

CREATE INDEX wazimap_geography_name_36b79089_like ON wazimap_geography USING btree (name varchar_pattern_ops);

--
-- PostgreSQL database dump complete
--

