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
Province No. 1,pro-1,2016,country,Province No. 1,province,NP
Province No. 2,pro-2,2016,country,Province No. 2,province,NP
Province No. 3,pro-3,2016,country,Province No. 3,province,NP
Province No. 4,pro-4,2016,country,Province No. 4,province,NP
Province No. 5,pro-5,2016,country,Province No. 5,province,NP
Province No. 6,pro-6,2016,country,Province No. 6,province,NP
Province No. 7,pro-7,2016,country,Province No. 7,province,NP
Achham,dis-01,2016,province,Achham,district,pro-7
Arghakhanchi,dis-02,2016,province,Arghakhanchi,district,pro-5
Baglung,dis-03,2016,province,Baglung,district,pro-4
Baitadi,dis-04,2016,province,Baitadi,district,pro-7
Bajhang,dis-05,2016,province,Bajhang,district,pro-7
Bajura,dis-06,2016,province,Bajura,district,pro-7
Banke,dis-07,2016,province,Banke,district,pro-5
Bara,dis-08,2016,province,Bara,district,pro-2
Bardiya,dis-09,2016,province,Bardiya,district,pro-5
Bhaktapur,dis-10,2016,province,Bhaktapur,district,pro-3
Bhojpur,dis-11,2016,province,Bhojpur,district,pro-1
Chitwan,dis-12,2016,province,Chitwan,district,pro-3
Dadeldhura,dis-13,2016,province,Dadeldhura,district,pro-7
Dailekh,dis-14,2016,province,Dailekh,district,pro-6
Dang,dis-15,2016,province,Dang,district,pro-5
Darchula,dis-16,2016,province,Darchula,district,pro-7
Dhading,dis-17,2016,province,Dhading,district,pro-3
Dhankuta,dis-18,2016,province,Dhankuta,district,pro-1
Dhanusa,dis-19,2016,province,Dhanusa,district,pro-2
Dolakha,dis-20,2016,province,Dolakha,district,pro-3
Dolpa,dis-21,2016,province,Dolpa,district,pro-6
Doti,dis-22,2016,province,Doti,district,pro-7
Gorkha,dis-23,2016,province,Gorkha,district,pro-4
Gulmi,dis-24,2016,province,Gulmi,district,pro-5
Humla,dis-25,2016,province,Humla,district,pro-6
Ilam,dis-26,2016,province,Ilam,district,pro-1
Jajarkot,dis-27,2016,province,Jajarkot,district,pro-6
Jhapa,dis-28,2016,province,Jhapa,district,pro-1
Jumla,dis-29,2016,province,Jumla,district,pro-6
Kailali,dis-30,2016,province,Kailali,district,pro-7
Kalikot,dis-31,2016,province,Kalikot,district,pro-6
Kanchanpur,dis-32,2016,province,Kanchanpur,district,pro-7
Kapilbastu,dis-33,2016,province,Kapilbastu,district,pro-5
Kaski,dis-34,2016,province,Kaski,district,pro-4
Kathmandu,dis-35,2016,province,Kathmandu,district,pro-3
Kavrepalanchowk,dis-36,2016,province,Kavrepalanchowk,district,pro-3
Khotang,dis-37,2016,province,Khotang,district,pro-1
Lalitpur,dis-38,2016,province,Lalitpur,district,pro-3
Lamjung,dis-39,2016,province,Lamjung,district,pro-4
Mahottari,dis-40,2016,province,Mahottari,district,pro-2
Makwanpur,dis-41,2016,province,Makwanpur,district,pro-3
Manang,dis-42,2016,province,Manang,district,pro-4
Morang,dis-43,2016,province,Morang,district,pro-1
Mugu,dis-44,2016,province,Mugu,district,pro-6
Mustang,dis-45,2016,province,Mustang,district,pro-4
Myagdi,dis-46,2016,province,Myagdi,district,pro-4
Nawalparasi East,dis-47,2016,province,Nawalparasi East,district,pro-4
Nuwakot,dis-48,2016,province,Nuwakot,district,pro-3
Okhaldhunga,dis-49,2016,province,Okhaldhunga,district,pro-1
Palpa,dis-50,2016,province,Palpa,district,pro-5
Panchthar,dis-51,2016,province,Panchthar,district,pro-1
Parbat,dis-52,2016,province,Parbat,district,pro-4
Parsa,dis-53,2016,province,Parsa,district,pro-2
Pyuthan,dis-54,2016,province,Pyuthan,district,pro-5
Ramechhap,dis-55,2016,province,Ramechhap,district,pro-3
Rasuwa,dis-56,2016,province,Rasuwa,district,pro-3
Rautahat,dis-57,2016,province,Rautahat,district,pro-2
Rolpa,dis-58,2016,province,Rolpa,district,pro-5
Rukum East,dis-59,2016,province,Rukum East,district,pro-5
Rupandehi,dis-60,2016,province,Rupandehi,district,pro-5
Salyan,dis-61,2016,province,Salyan,district,pro-6
Sankhuwasabha,dis-62,2016,province,Sankhuwasabha,district,pro-1
Saptari,dis-63,2016,province,Saptari,district,pro-2
Sarlahi,dis-64,2016,province,Sarlahi,district,pro-2
Sindhuli,dis-65,2016,province,Sindhuli,district,pro-3
Sindhupalchowk,dis-66,2016,province,Sindhupalchowk,district,pro-3
Siraha,dis-67,2016,province,Siraha,district,pro-2
Solukhumbu,dis-68,2016,province,Solukhumbu,district,pro-1
Sunsari,dis-69,2016,province,Sunsari,district,pro-1
Surkhet,dis-70,2016,province,Surkhet,district,pro-6
Syangja,dis-71,2016,province,Syangja,district,pro-4
Tanahu,dis-72,2016,province,Tanahu,district,pro-4
Taplejung,dis-73,2016,province,Taplejung,district,pro-1
Terhathum,dis-74,2016,province,Terhathum,district,pro-1
Udayapur,dis-75,2016,province,Udayapur,district,pro-1
Nawalparasi West,dis-76,2016,province,Nawalparasi West,district,pro-5
Rukum West,dis-77,2016,province,Rukum West,district,pro-6
Aamchowk,loc-10001,2016,district,Aamchowk,local,dis-11
Arun,loc-10002,2016,district,Arun,local,dis-11
Bhojpur,loc-10003,2016,district,Bhojpur,local,dis-11
Hatuwagadhi,loc-10004,2016,district,Hatuwagadhi,local,dis-11
Pauwadungma,loc-10005,2016,district,Pauwadungma,local,dis-11
Ramprasad Rai,loc-10006,2016,district,Ramprasad Rai,local,dis-11
Salpasilichho,loc-10007,2016,district,Salpasilichho,local,dis-11
Shadananda,loc-10008,2016,district,Shadananda,local,dis-11
Tyamkemaiyung,loc-10009,2016,district,Tyamkemaiyung,local,dis-11
Aathrai Tribeni,loc-1001,2016,district,Aathrai Tribeni,local,dis-73
Maiwakhola,loc-1002,2016,district,Maiwakhola,local,dis-73
Meringden,loc-1003,2016,district,Meringden,local,dis-73
Mikwakhola,loc-1004,2016,district,Mikwakhola,local,dis-73
Phaktanglung,loc-1005,2016,district,Phaktanglung,local,dis-73
Phungling,loc-1006,2016,district,Phungling,local,dis-73
Sidingba,loc-1007,2016,district,Sidingba,local,dis-73
Sirijangha,loc-1008,2016,district,Sirijangha,local,dis-73
Yangwarak,loc-1009,2016,district,Yangwarak,local,dis-73
Dudhkaushika,loc-11001,2016,district,Dudhkaushika,local,dis-68
Dudhkoshi,loc-11002,2016,district,Dudhkoshi,local,dis-68
Khumbupasanglahmu,loc-11003,2016,district,Khumbupasanglahmu,local,dis-68
Likhupike,loc-11004,2016,district,Likhupike,local,dis-68
Mahakulung,loc-11005,2016,district,Mahakulung,local,dis-68
Nechasalyan,loc-11006,2016,district,Nechasalyan,local,dis-68
Solududhakunda,loc-11007,2016,district,Solududhakunda,local,dis-68
Sotang,loc-11008,2016,district,Sotang,local,dis-68
Champadevi,loc-12001,2016,district,Champadevi,local,dis-49
Chisankhugadhi,loc-12002,2016,district,Chisankhugadhi,local,dis-49
Khijidemba,loc-12003,2016,district,Khijidemba,local,dis-49
Likhu,loc-12004,2016,district,Likhu,local,dis-49
Manebhanjyang,loc-12005,2016,district,Manebhanjyang,local,dis-49
Molung,loc-12006,2016,district,Molung,local,dis-49
Siddhicharan,loc-12007,2016,district,Siddhicharan,local,dis-49
Sunkoshi,loc-12008,2016,district,Sunkoshi,local,dis-49
Ainselukhark,loc-13001,2016,district,Ainselukhark,local,dis-37
Barahapokhari,loc-13002,2016,district,Barahapokhari,local,dis-37
Diprung,loc-13003,2016,district,Diprung,local,dis-37
Halesi Tuwachung,loc-13004,2016,district,Halesi Tuwachung,local,dis-37
Jantedhunga,loc-13005,2016,district,Jantedhunga,local,dis-37
Kepilasagadhi,loc-13006,2016,district,Kepilasagadhi,local,dis-37
Khotehang,loc-13007,2016,district,Khotehang,local,dis-37
Lamidanda,loc-13008,2016,district,Lamidanda,local,dis-37
Rupakot Majhuwagadhi,loc-13009,2016,district,Rupakot Majhuwagadhi,local,dis-37
Sakela,loc-13010,2016,district,Sakela,local,dis-37
Belaka,loc-14001,2016,district,Belaka,local,dis-75
Chaudandigadhi,loc-14002,2016,district,Chaudandigadhi,local,dis-75
Katari,loc-14003,2016,district,Katari,local,dis-75
Rautamai,loc-14004,2016,district,Rautamai,local,dis-75
Sunkoshi,loc-14005,2016,district,Sunkoshi,local,dis-75
Tapli,loc-14006,2016,district,Tapli,local,dis-75
Triyuga,loc-14007,2016,district,Triyuga,local,dis-75
Udayapurgadhi,loc-14008,2016,district,Udayapurgadhi,local,dis-75
Koshi Tappu Wildlife Reserve,loc-14099,2016,district,Koshi Tappu Wildlife Reserve,local,dis-75
Agnisair Krishna Savaran,loc-15001,2016,district,Agnisair Krishna Savaran,local,dis-63
Balan Bihul,loc-15002,2016,district,Balan Bihul,local,dis-63
Belhi Chapena,loc-15003,2016,district,Belhi Chapena,local,dis-63
Bishnupur,loc-15004,2016,district,Bishnupur,local,dis-63
Bode Barsain,loc-15005,2016,district,Bode Barsain,local,dis-63
Chhinnamasta,loc-15006,2016,district,Chhinnamasta,local,dis-63
Dakneshwori,loc-15007,2016,district,Dakneshwori,local,dis-63
Hanumannagar Kankalini,loc-15008,2016,district,Hanumannagar Kankalini,local,dis-63
Kanchanrup,loc-15009,2016,district,Kanchanrup,local,dis-63
Khadak,loc-15010,2016,district,Khadak,local,dis-63
Mahadeva,loc-15011,2016,district,Mahadeva,local,dis-63
Rajbiraj,loc-15012,2016,district,Rajbiraj,local,dis-63
Rupani,loc-15013,2016,district,Rupani,local,dis-63
Saptakoshi,loc-15014,2016,district,Saptakoshi,local,dis-63
Shambhunath,loc-15015,2016,district,Shambhunath,local,dis-63
Surunga,loc-15016,2016,district,Surunga,local,dis-63
Tilathi Koiladi,loc-15017,2016,district,Tilathi Koiladi,local,dis-63
Tirahut,loc-15018,2016,district,Tirahut,local,dis-63
Koshi Tappu Wildlife Reserve,loc-15099,2016,district,Koshi Tappu Wildlife Reserve,local,dis-63
Arnama,loc-16001,2016,district,Arnama,local,dis-67
Aurahi,loc-16002,2016,district,Aurahi,local,dis-67
Bariyarpatti,loc-16003,2016,district,Bariyarpatti,local,dis-67
Bhagawanpur,loc-16004,2016,district,Bhagawanpur,local,dis-67
Bishnupur,loc-16005,2016,district,Bishnupur,local,dis-67
Dhangadhimai,loc-16006,2016,district,Dhangadhimai,local,dis-67
Golbazar,loc-16007,2016,district,Golbazar,local,dis-67
Kalyanpur,loc-16008,2016,district,Kalyanpur,local,dis-67
Karjanha,loc-16009,2016,district,Karjanha,local,dis-67
Lahan,loc-16010,2016,district,Lahan,local,dis-67
Laxmipur Patari,loc-16011,2016,district,Laxmipur Patari,local,dis-67
Mirchaiya,loc-16012,2016,district,Mirchaiya,local,dis-67
Naraha,loc-16013,2016,district,Naraha,local,dis-67
Nawarajpur,loc-16014,2016,district,Nawarajpur,local,dis-67
Sakhuwanankarkatti,loc-16015,2016,district,Sakhuwanankarkatti,local,dis-67
Siraha,loc-16016,2016,district,Siraha,local,dis-67
Sukhipur,loc-16017,2016,district,Sukhipur,local,dis-67
Aaurahi,loc-17001,2016,district,Aaurahi,local,dis-19
Bateshwor,loc-17002,2016,district,Bateshwor,local,dis-19
Bideha,loc-17003,2016,district,Bideha,local,dis-19
Chhireshwornath,loc-17004,2016,district,Chhireshwornath,local,dis-19
Dhanauji,loc-17005,2016,district,Dhanauji,local,dis-19
Dhanusadham,loc-17006,2016,district,Dhanusadham,local,dis-19
Ganeshman Charnath,loc-17007,2016,district,Ganeshman Charnath,local,dis-19
Hansapur,loc-17008,2016,district,Hansapur,local,dis-19
Janaknandani,loc-17009,2016,district,Janaknandani,local,dis-19
Janakpur,loc-17010,2016,district,Janakpur,local,dis-19
Kamala,loc-17011,2016,district,Kamala,local,dis-19
Lakshminiya,loc-17012,2016,district,Lakshminiya,local,dis-19
Mithila,loc-17013,2016,district,Mithila,local,dis-19
Mithila Bihari,loc-17014,2016,district,Mithila Bihari,local,dis-19
Mukhiyapatti Musarmiya,loc-17015,2016,district,Mukhiyapatti Musarmiya,local,dis-19
Nagarain,loc-17016,2016,district,Nagarain,local,dis-19
Sabaila,loc-17017,2016,district,Sabaila,local,dis-19
Sahidnagar,loc-17018,2016,district,Sahidnagar,local,dis-19
Aurahi,loc-18001,2016,district,Aurahi,local,dis-40
Balwa,loc-18002,2016,district,Balwa,local,dis-40
Bardibas,loc-18003,2016,district,Bardibas,local,dis-40
Bhangaha,loc-18004,2016,district,Bhangaha,local,dis-40
Ekdanra,loc-18005,2016,district,Ekdanra,local,dis-40
Gaushala,loc-18006,2016,district,Gaushala,local,dis-40
Jaleswor,loc-18007,2016,district,Jaleswor,local,dis-40
Loharpatti,loc-18008,2016,district,Loharpatti,local,dis-40
Mahottari,loc-18009,2016,district,Mahottari,local,dis-40
Manra Siswa,loc-18010,2016,district,Manra Siswa,local,dis-40
Matihani,loc-18011,2016,district,Matihani,local,dis-40
Pipra,loc-18012,2016,district,Pipra,local,dis-40
Ramgopalpur,loc-18013,2016,district,Ramgopalpur,local,dis-40
Samsi,loc-18014,2016,district,Samsi,local,dis-40
Sonama,loc-18015,2016,district,Sonama,local,dis-40
Bagmati,loc-19001,2016,district,Bagmati,local,dis-64
Balara,loc-19002,2016,district,Balara,local,dis-64
Barahathawa,loc-19003,2016,district,Barahathawa,local,dis-64
Basbariya,loc-19004,2016,district,Basbariya,local,dis-64
Bishnu,loc-19005,2016,district,Bishnu,local,dis-64
Bramhapuri,loc-19006,2016,district,Bramhapuri,local,dis-64
Chakraghatta,loc-19007,2016,district,Chakraghatta,local,dis-64
Chandranagar,loc-19008,2016,district,Chandranagar,local,dis-64
Dhankaul,loc-19009,2016,district,Dhankaul,local,dis-64
Godaita,loc-19010,2016,district,Godaita,local,dis-64
Haripur,loc-19011,2016,district,Haripur,local,dis-64
Haripurwa,loc-19012,2016,district,Haripurwa,local,dis-64
Hariwan,loc-19013,2016,district,Hariwan,local,dis-64
Ishworpur,loc-19014,2016,district,Ishworpur,local,dis-64
Kabilasi,loc-19015,2016,district,Kabilasi,local,dis-64
Kaudena,loc-19016,2016,district,Kaudena,local,dis-64
Lalbandi,loc-19017,2016,district,Lalbandi,local,dis-64
Malangawa,loc-19018,2016,district,Malangawa,local,dis-64
Parsa,loc-19019,2016,district,Parsa,local,dis-64
Ramnagar,loc-19020,2016,district,Ramnagar,local,dis-64
Dudhouli,loc-20001,2016,district,Dudhouli,local,dis-65
Ghanglekh,loc-20002,2016,district,Ghanglekh,local,dis-65
Golanjor,loc-20003,2016,district,Golanjor,local,dis-65
Hariharpurgadhi,loc-20004,2016,district,Hariharpurgadhi,local,dis-65
Kamalamai,loc-20005,2016,district,Kamalamai,local,dis-65
Marin,loc-20006,2016,district,Marin,local,dis-65
Phikkal,loc-20007,2016,district,Phikkal,local,dis-65
Sunkoshi,loc-20008,2016,district,Sunkoshi,local,dis-65
Tinpatan,loc-20009,2016,district,Tinpatan,local,dis-65
Falelung,loc-2001,2016,district,Falelung,local,dis-51
Falgunanda,loc-2002,2016,district,Falgunanda,local,dis-51
Hilihang,loc-2003,2016,district,Hilihang,local,dis-51
Kummayak,loc-2004,2016,district,Kummayak,local,dis-51
Miklajung,loc-2005,2016,district,Miklajung,local,dis-51
Phidim,loc-2006,2016,district,Phidim,local,dis-51
Tumbewa,loc-2007,2016,district,Tumbewa,local,dis-51
Yangwarak,loc-2008,2016,district,Yangwarak,local,dis-51
Doramba,loc-21001,2016,district,Doramba,local,dis-55
Gokulganga,loc-21002,2016,district,Gokulganga,local,dis-55
Khadadevi,loc-21003,2016,district,Khadadevi,local,dis-55
Likhu,loc-21004,2016,district,Likhu,local,dis-55
Manthali,loc-21005,2016,district,Manthali,local,dis-55
Ramechhap,loc-21006,2016,district,Ramechhap,local,dis-55
Sunapati,loc-21007,2016,district,Sunapati,local,dis-55
Umakunda,loc-21008,2016,district,Umakunda,local,dis-55
Baiteshwor,loc-22001,2016,district,Baiteshwor,local,dis-20
Bhimeshwor,loc-22002,2016,district,Bhimeshwor,local,dis-20
Bigu,loc-22003,2016,district,Bigu,local,dis-20
Gaurishankar,loc-22004,2016,district,Gaurishankar,local,dis-20
Jiri,loc-22005,2016,district,Jiri,local,dis-20
Kalinchok,loc-22006,2016,district,Kalinchok,local,dis-20
Melung,loc-22007,2016,district,Melung,local,dis-20
Sailung,loc-22008,2016,district,Sailung,local,dis-20
Tamakoshi,loc-22009,2016,district,Tamakoshi,local,dis-20
Balefi,loc-23001,2016,district,Balefi,local,dis-66
Barhabise,loc-23002,2016,district,Barhabise,local,dis-66
Bhotekoshi,loc-23003,2016,district,Bhotekoshi,local,dis-66
Chautara Sangachokgadhi,loc-23004,2016,district,Chautara Sangachokgadhi,local,dis-66
Helambu,loc-23005,2016,district,Helambu,local,dis-66
Indrawati,loc-23006,2016,district,Indrawati,local,dis-66
Jugal,loc-23007,2016,district,Jugal,local,dis-66
Lisangkhu Pakhar,loc-23008,2016,district,Lisangkhu Pakhar,local,dis-66
Melamchi,loc-23009,2016,district,Melamchi,local,dis-66
Panchpokhari Thangpal,loc-23010,2016,district,Panchpokhari Thangpal,local,dis-66
Sunkoshi,loc-23011,2016,district,Sunkoshi,local,dis-66
Tripurasundari,loc-23012,2016,district,Tripurasundari,local,dis-66
Banepa,loc-24001,2016,district,Banepa,local,dis-36
Bethanchowk,loc-24002,2016,district,Bethanchowk,local,dis-36
Bhumlu,loc-24003,2016,district,Bhumlu,local,dis-36
Chaurideurali,loc-24004,2016,district,Chaurideurali,local,dis-36
Dhulikhel,loc-24005,2016,district,Dhulikhel,local,dis-36
Khanikhola,loc-24006,2016,district,Khanikhola,local,dis-36
Mahabharat,loc-24007,2016,district,Mahabharat,local,dis-36
Mandandeupur,loc-24008,2016,district,Mandandeupur,local,dis-36
Namobuddha,loc-24009,2016,district,Namobuddha,local,dis-36
Panauti,loc-24010,2016,district,Panauti,local,dis-36
Panchkhal,loc-24011,2016,district,Panchkhal,local,dis-36
Roshi,loc-24012,2016,district,Roshi,local,dis-36
Temal,loc-24013,2016,district,Temal,local,dis-36
Bagmati,loc-25001,2016,district,Bagmati,local,dis-38
Godawari,loc-25002,2016,district,Godawari,local,dis-38
Konjyosom,loc-25003,2016,district,Konjyosom,local,dis-38
Lalitpur,loc-25004,2016,district,Lalitpur,local,dis-38
Mahalaxmi,loc-25005,2016,district,Mahalaxmi,local,dis-38
Mahankal,loc-25006,2016,district,Mahankal,local,dis-38
Bhaktapur,loc-26001,2016,district,Bhaktapur,local,dis-10
Changunarayan,loc-26002,2016,district,Changunarayan,local,dis-10
Madhyapur Thimi,loc-26003,2016,district,Madhyapur Thimi,local,dis-10
Suryabinayak,loc-26004,2016,district,Suryabinayak,local,dis-10
Budhanilakantha,loc-27001,2016,district,Budhanilakantha,local,dis-35
Chandragiri,loc-27002,2016,district,Chandragiri,local,dis-35
Dakshinkali,loc-27003,2016,district,Dakshinkali,local,dis-35
Gokarneshwor,loc-27004,2016,district,Gokarneshwor,local,dis-35
Kageshwori Manahora,loc-27005,2016,district,Kageshwori Manahora,local,dis-35
Kathmandu,loc-27006,2016,district,Kathmandu,local,dis-35
Kirtipur,loc-27007,2016,district,Kirtipur,local,dis-35
Nagarjun,loc-27008,2016,district,Nagarjun,local,dis-35
Shankharapur,loc-27009,2016,district,Shankharapur,local,dis-35
Tarakeshwor,loc-27010,2016,district,Tarakeshwor,local,dis-35
Tokha,loc-27011,2016,district,Tokha,local,dis-35
Belkotgadhi,loc-28001,2016,district,Belkotgadhi,local,dis-48
Bidur,loc-28002,2016,district,Bidur,local,dis-48
Dupcheshwar,loc-28003,2016,district,Dupcheshwar,local,dis-48
Kakani,loc-28004,2016,district,Kakani,local,dis-48
Kispang,loc-28005,2016,district,Kispang,local,dis-48
Likhu,loc-28006,2016,district,Likhu,local,dis-48
Meghang,loc-28007,2016,district,Meghang,local,dis-48
Panchakanya,loc-28008,2016,district,Panchakanya,local,dis-48
Shivapuri,loc-28009,2016,district,Shivapuri,local,dis-48
Suryagadhi,loc-28010,2016,district,Suryagadhi,local,dis-48
Tadi,loc-28011,2016,district,Tadi,local,dis-48
Tarkeshwar,loc-28012,2016,district,Tarkeshwar,local,dis-48
Shivapuri Watershed And Wildlife Reserve,loc-28088,2016,district,Shivapuri Watershed And Wildlife Reserve,local,dis-48
Langtang National Park,loc-28099,2016,district,Langtang National Park,local,dis-48
Gosaikunda,loc-29001,2016,district,Gosaikunda,local,dis-56
Kalika,loc-29002,2016,district,Kalika,local,dis-56
Naukunda,loc-29003,2016,district,Naukunda,local,dis-56
Parbati Kunda,loc-29004,2016,district,Parbati Kunda,local,dis-56
Uttargaya,loc-29005,2016,district,Uttargaya,local,dis-56
Benighat Rorang,loc-30001,2016,district,Benighat Rorang,local,dis-17
Dhunibesi,loc-30002,2016,district,Dhunibesi,local,dis-17
Gajuri,loc-30003,2016,district,Gajuri,local,dis-17
Galchi,loc-30004,2016,district,Galchi,local,dis-17
Gangajamuna,loc-30005,2016,district,Gangajamuna,local,dis-17
Jwalamukhi,loc-30006,2016,district,Jwalamukhi,local,dis-17
Khaniyabash,loc-30007,2016,district,Khaniyabash,local,dis-17
Netrawati,loc-30008,2016,district,Netrawati,local,dis-17
Nilakantha,loc-30009,2016,district,Nilakantha,local,dis-17
Chulachuli,loc-3001,2016,district,Chulachuli,local,dis-26
Rubi Valley,loc-30010,2016,district,Rubi Valley,local,dis-17
Siddhalek,loc-30011,2016,district,Siddhalek,local,dis-17
Thakre,loc-30012,2016,district,Thakre,local,dis-17
Tripura Sundari,loc-30013,2016,district,Tripura Sundari,local,dis-17
Deumai,loc-3002,2016,district,Deumai,local,dis-26
Fakphokthum,loc-3003,2016,district,Fakphokthum,local,dis-26
Illam,loc-3004,2016,district,Illam,local,dis-26
Mai,loc-3005,2016,district,Mai,local,dis-26
Maijogmai,loc-3006,2016,district,Maijogmai,local,dis-26
Mangsebung,loc-3007,2016,district,Mangsebung,local,dis-26
Rong,loc-3008,2016,district,Rong,local,dis-26
Sandakpur,loc-3009,2016,district,Sandakpur,local,dis-26
Suryodaya,loc-3010,2016,district,Suryodaya,local,dis-26
Bagmati,loc-31001,2016,district,Bagmati,local,dis-41
Bakaiya,loc-31002,2016,district,Bakaiya,local,dis-41
Bhimphedi,loc-31003,2016,district,Bhimphedi,local,dis-41
Hetauda,loc-31004,2016,district,Hetauda,local,dis-41
Indrasarowar,loc-31005,2016,district,Indrasarowar,local,dis-41
Kailash,loc-31006,2016,district,Kailash,local,dis-41
Makawanpurgadhi,loc-31007,2016,district,Makawanpurgadhi,local,dis-41
Manahari,loc-31008,2016,district,Manahari,local,dis-41
Raksirang,loc-31009,2016,district,Raksirang,local,dis-41
Thaha,loc-31010,2016,district,Thaha,local,dis-41
Parsa Wildlife Reserve,loc-31088,2016,district,Parsa Wildlife Reserve,local,dis-41
Chitawan National Park,loc-31099,2016,district,Chitawan National Park,local,dis-41
Baudhimai,loc-32001,2016,district,Baudhimai,local,dis-57
Brindaban,loc-32002,2016,district,Brindaban,local,dis-57
Chandrapur,loc-32003,2016,district,Chandrapur,local,dis-57
Dewahhi Gonahi,loc-32004,2016,district,Dewahhi Gonahi,local,dis-57
Durga Bhagwati,loc-32005,2016,district,Durga Bhagwati,local,dis-57
Gadhimai,loc-32006,2016,district,Gadhimai,local,dis-57
Garuda,loc-32007,2016,district,Garuda,local,dis-57
Gaur,loc-32008,2016,district,Gaur,local,dis-57
Gujara,loc-32009,2016,district,Gujara,local,dis-57
Ishanath,loc-32010,2016,district,Ishanath,local,dis-57
Katahariya,loc-32011,2016,district,Katahariya,local,dis-57
Madhav Narayan,loc-32012,2016,district,Madhav Narayan,local,dis-57
Maulapur,loc-32013,2016,district,Maulapur,local,dis-57
Paroha,loc-32014,2016,district,Paroha,local,dis-57
Phatuwa Bijayapur,loc-32015,2016,district,Phatuwa Bijayapur,local,dis-57
Rajdevi,loc-32016,2016,district,Rajdevi,local,dis-57
Rajpur,loc-32017,2016,district,Rajpur,local,dis-57
Yemunamai,loc-32018,2016,district,Yemunamai,local,dis-57
Adarshkotwal,loc-33001,2016,district,Adarshkotwal,local,dis-08
Baragadhi,loc-33002,2016,district,Baragadhi,local,dis-08
Bishrampur,loc-33003,2016,district,Bishrampur,local,dis-08
Devtal,loc-33004,2016,district,Devtal,local,dis-08
Jitpur Simara,loc-33005,2016,district,Jitpur Simara,local,dis-08
Kalaiya,loc-33006,2016,district,Kalaiya,local,dis-08
Karaiyamai,loc-33007,2016,district,Karaiyamai,local,dis-08
Kolhabi,loc-33008,2016,district,Kolhabi,local,dis-08
Mahagadhimai,loc-33009,2016,district,Mahagadhimai,local,dis-08
Nijgadh,loc-33010,2016,district,Nijgadh,local,dis-08
Pacharauta,loc-33011,2016,district,Pacharauta,local,dis-08
Parwanipur,loc-33012,2016,district,Parwanipur,local,dis-08
Pheta,loc-33013,2016,district,Pheta,local,dis-08
Prasauni,loc-33014,2016,district,Prasauni,local,dis-08
Simraungadh,loc-33015,2016,district,Simraungadh,local,dis-08
Suwarna,loc-33016,2016,district,Suwarna,local,dis-08
Parsa Wildlife Reserve,loc-33099,2016,district,Parsa Wildlife Reserve,local,dis-08
Bahudaramai,loc-34001,2016,district,Bahudaramai,local,dis-53
Bindabasini,loc-34002,2016,district,Bindabasini,local,dis-53
Birgunj,loc-34003,2016,district,Birgunj,local,dis-53
Chhipaharmai,loc-34004,2016,district,Chhipaharmai,local,dis-53
Dhobini,loc-34005,2016,district,Dhobini,local,dis-53
Jagarnathpur,loc-34006,2016,district,Jagarnathpur,local,dis-53
Jirabhawani,loc-34007,2016,district,Jirabhawani,local,dis-53
Kalikamai,loc-34008,2016,district,Kalikamai,local,dis-53
Pakahamainpur,loc-34009,2016,district,Pakahamainpur,local,dis-53
Parsagadhi,loc-34010,2016,district,Parsagadhi,local,dis-53
Paterwasugauli,loc-34011,2016,district,Paterwasugauli,local,dis-53
Pokhariya,loc-34012,2016,district,Pokhariya,local,dis-53
Sakhuwaprasauni,loc-34013,2016,district,Sakhuwaprasauni,local,dis-53
Thori,loc-34014,2016,district,Thori,local,dis-53
Chitwan National Park,loc-34099,2016,district,Chitwan National Park,local,dis-53
Bharatpur,loc-35001,2016,district,Bharatpur,local,dis-12
Ichchhyakamana,loc-35002,2016,district,Ichchhyakamana,local,dis-12
Kalika,loc-35003,2016,district,Kalika,local,dis-12
Khairahani,loc-35004,2016,district,Khairahani,local,dis-12
Madi,loc-35005,2016,district,Madi,local,dis-12
Rapti,loc-35006,2016,district,Rapti,local,dis-12
Ratnanagar,loc-35007,2016,district,Ratnanagar,local,dis-12
Chitawan National Park,loc-35099,2016,district,Chitawan National Park,local,dis-12
Aarughat,loc-36001,2016,district,Aarughat,local,dis-23
Ajirkot,loc-36002,2016,district,Ajirkot,local,dis-23
Bhimsen,loc-36003,2016,district,Bhimsen,local,dis-23
Chum Nubri,loc-36004,2016,district,Chum Nubri,local,dis-23
Dharche,loc-36005,2016,district,Dharche,local,dis-23
Gandaki,loc-36006,2016,district,Gandaki,local,dis-23
Gorkha,loc-36007,2016,district,Gorkha,local,dis-23
Palungtar,loc-36008,2016,district,Palungtar,local,dis-23
Sahid Lakhan,loc-36009,2016,district,Sahid Lakhan,local,dis-23
Siranchok,loc-36010,2016,district,Siranchok,local,dis-23
Sulikot,loc-36011,2016,district,Sulikot,local,dis-23
Besishahar,loc-37001,2016,district,Besishahar,local,dis-39
Dordi,loc-37002,2016,district,Dordi,local,dis-39
Dudhpokhari,loc-37003,2016,district,Dudhpokhari,local,dis-39
Kwholasothar,loc-37004,2016,district,Kwholasothar,local,dis-39
Madhyanepal,loc-37005,2016,district,Madhyanepal,local,dis-39
Marsyangdi,loc-37006,2016,district,Marsyangdi,local,dis-39
Rainas,loc-37007,2016,district,Rainas,local,dis-39
Sundarbazar,loc-37008,2016,district,Sundarbazar,local,dis-39
Anbukhaireni,loc-38001,2016,district,Anbukhaireni,local,dis-72
Bandipur,loc-38002,2016,district,Bandipur,local,dis-72
Bhanu,loc-38003,2016,district,Bhanu,local,dis-72
Bhimad,loc-38004,2016,district,Bhimad,local,dis-72
Byas,loc-38005,2016,district,Byas,local,dis-72
Devghat,loc-38006,2016,district,Devghat,local,dis-72
Ghiring,loc-38007,2016,district,Ghiring,local,dis-72
Myagde,loc-38008,2016,district,Myagde,local,dis-72
Rhishing,loc-38009,2016,district,Rhishing,local,dis-72
Shuklagandaki,loc-38010,2016,district,Shuklagandaki,local,dis-72
Aandhikhola,loc-39001,2016,district,Aandhikhola,local,dis-71
Arjunchaupari,loc-39002,2016,district,Arjunchaupari,local,dis-71
Bhirkot,loc-39003,2016,district,Bhirkot,local,dis-71
Biruwa,loc-39004,2016,district,Biruwa,local,dis-71
Chapakot,loc-39005,2016,district,Chapakot,local,dis-71
Galyang,loc-39006,2016,district,Galyang,local,dis-71
Harinas,loc-39007,2016,district,Harinas,local,dis-71
Kaligandagi,loc-39008,2016,district,Kaligandagi,local,dis-71
Phedikhola,loc-39009,2016,district,Phedikhola,local,dis-71
Putalibazar,loc-39010,2016,district,Putalibazar,local,dis-71
Waling,loc-39011,2016,district,Waling,local,dis-71
Annapurna,loc-40001,2016,district,Annapurna,local,dis-34
Machhapuchchhre,loc-40002,2016,district,Machhapuchchhre,local,dis-34
Madi,loc-40003,2016,district,Madi,local,dis-34
Pokhara Lekhnath,loc-40004,2016,district,Pokhara Lekhnath,local,dis-34
Rupa,loc-40005,2016,district,Rupa,local,dis-34
Arjundhara,loc-4001,2016,district,Arjundhara,local,dis-28
Barhadashi,loc-4002,2016,district,Barhadashi,local,dis-28
Bhadrapur,loc-4003,2016,district,Bhadrapur,local,dis-28
Birtamod,loc-4004,2016,district,Birtamod,local,dis-28
Buddhashanti,loc-4005,2016,district,Buddhashanti,local,dis-28
Damak,loc-4006,2016,district,Damak,local,dis-28
Gauradhaha,loc-4007,2016,district,Gauradhaha,local,dis-28
Gauriganj,loc-4008,2016,district,Gauriganj,local,dis-28
Haldibari,loc-4009,2016,district,Haldibari,local,dis-28
Jhapa,loc-4010,2016,district,Jhapa,local,dis-28
Kachankawal,loc-4011,2016,district,Kachankawal,local,dis-28
Kamal,loc-4012,2016,district,Kamal,local,dis-28
Kankai,loc-4013,2016,district,Kankai,local,dis-28
Mechinagar,loc-4014,2016,district,Mechinagar,local,dis-28
Shivasataxi,loc-4015,2016,district,Shivasataxi,local,dis-28
Chame,loc-41001,2016,district,Chame,local,dis-42
Narphu,loc-41002,2016,district,Narphu,local,dis-42
Nashong,loc-41003,2016,district,Nashong,local,dis-42
Neshyang,loc-41004,2016,district,Neshyang,local,dis-42
Barhagaun Muktikhsetra,loc-42001,2016,district,Barhagaun Muktikhsetra,local,dis-45
Dalome,loc-42002,2016,district,Dalome,local,dis-45
Gharapjhong,loc-42003,2016,district,Gharapjhong,local,dis-45
Lomanthang,loc-42004,2016,district,Lomanthang,local,dis-45
Thasang,loc-42005,2016,district,Thasang,local,dis-45
Annapurna,loc-43001,2016,district,Annapurna,local,dis-46
Beni,loc-43002,2016,district,Beni,local,dis-46
Dhaulagiri,loc-43003,2016,district,Dhaulagiri,local,dis-46
Malika,loc-43004,2016,district,Malika,local,dis-46
Mangala,loc-43005,2016,district,Mangala,local,dis-46
Raghuganga,loc-43006,2016,district,Raghuganga,local,dis-46
Dhorpatan Hunting Reserve,loc-43099,2016,district,Dhorpatan Hunting Reserve,local,dis-46
Bihadi,loc-44001,2016,district,Bihadi,local,dis-52
Jaljala,loc-44002,2016,district,Jaljala,local,dis-52
Kushma,loc-44003,2016,district,Kushma,local,dis-52
Mahashila,loc-44004,2016,district,Mahashila,local,dis-52
Modi,loc-44005,2016,district,Modi,local,dis-52
Painyu,loc-44006,2016,district,Painyu,local,dis-52
Phalebas,loc-44007,2016,district,Phalebas,local,dis-52
Badigad,loc-45001,2016,district,Badigad,local,dis-03
Baglung,loc-45002,2016,district,Baglung,local,dis-03
Bareng,loc-45003,2016,district,Bareng,local,dis-03
Dhorpatan,loc-45004,2016,district,Dhorpatan,local,dis-03
Galkot,loc-45005,2016,district,Galkot,local,dis-03
Jaimuni,loc-45006,2016,district,Jaimuni,local,dis-03
Kanthekhola,loc-45007,2016,district,Kanthekhola,local,dis-03
Nisikhola,loc-45008,2016,district,Nisikhola,local,dis-03
Taman Khola,loc-45009,2016,district,Taman Khola,local,dis-03
Tara Khola,loc-45010,2016,district,Tara Khola,local,dis-03
Dhorpatan Hunting Reserve,loc-45099,2016,district,Dhorpatan Hunting Reserve,local,dis-03
Chandrakot,loc-46001,2016,district,Chandrakot,local,dis-24
Chatrakot,loc-46002,2016,district,Chatrakot,local,dis-24
Dhurkot,loc-46003,2016,district,Dhurkot,local,dis-24
Gulmidarbar,loc-46004,2016,district,Gulmidarbar,local,dis-24
Isma,loc-46005,2016,district,Isma,local,dis-24
Kaligandaki,loc-46006,2016,district,Kaligandaki,local,dis-24
Madane,loc-46007,2016,district,Madane,local,dis-24
Malika,loc-46008,2016,district,Malika,local,dis-24
Musikot,loc-46009,2016,district,Musikot,local,dis-24
Resunga,loc-46010,2016,district,Resunga,local,dis-24
Ruru,loc-46011,2016,district,Ruru,local,dis-24
Satyawati,loc-46012,2016,district,Satyawati,local,dis-24
Bagnaskali,loc-47001,2016,district,Bagnaskali,local,dis-50
Mathagadhi,loc-47002,2016,district,Mathagadhi,local,dis-50
Nisdi,loc-47003,2016,district,Nisdi,local,dis-50
Purbakhola,loc-47004,2016,district,Purbakhola,local,dis-50
Rainadevi Chhahara,loc-47005,2016,district,Rainadevi Chhahara,local,dis-50
Rambha,loc-47006,2016,district,Rambha,local,dis-50
Rampur,loc-47007,2016,district,Rampur,local,dis-50
Ribdikot,loc-47008,2016,district,Ribdikot,local,dis-50
Tansen,loc-47009,2016,district,Tansen,local,dis-50
Tinau,loc-47010,2016,district,Tinau,local,dis-50
Bardaghat,loc-48001,2016,district,Bardaghat,local,dis-76
Palhi Nandan,loc-48002,2016,district,Palhi Nandan,local,dis-76
Pratappur,loc-48003,2016,district,Pratappur,local,dis-76
Ramgram,loc-48004,2016,district,Ramgram,local,dis-76
Sarawal,loc-48005,2016,district,Sarawal,local,dis-76
Sunwal,loc-48006,2016,district,Sunwal,local,dis-76
Susta,loc-48007,2016,district,Susta,local,dis-76
Butwal,loc-49001,2016,district,Butwal,local,dis-60
Devdaha,loc-49002,2016,district,Devdaha,local,dis-60
Gaidahawa,loc-49003,2016,district,Gaidahawa,local,dis-60
Kanchan,loc-49004,2016,district,Kanchan,local,dis-60
Kotahimai,loc-49005,2016,district,Kotahimai,local,dis-60
Lumbini Sanskritik,loc-49006,2016,district,Lumbini Sanskritik,local,dis-60
Marchawari,loc-49007,2016,district,Marchawari,local,dis-60
Mayadevi,loc-49008,2016,district,Mayadevi,local,dis-60
Omsatiya,loc-49009,2016,district,Omsatiya,local,dis-60
Rohini,loc-49010,2016,district,Rohini,local,dis-60
Sainamaina,loc-49011,2016,district,Sainamaina,local,dis-60
Sammarimai,loc-49012,2016,district,Sammarimai,local,dis-60
Siddharthanagar,loc-49013,2016,district,Siddharthanagar,local,dis-60
Siyari,loc-49014,2016,district,Siyari,local,dis-60
Sudhdhodhan,loc-49015,2016,district,Sudhdhodhan,local,dis-60
Tillotama,loc-49016,2016,district,Tillotama,local,dis-60
Lumbini Sanskritik Development Area,loc-49099,2016,district,Lumbini Sanskritik Development Area,local,dis-60
Banganga,loc-50001,2016,district,Banganga,local,dis-33
Bijayanagar,loc-50002,2016,district,Bijayanagar,local,dis-33
Buddhabhumi,loc-50003,2016,district,Buddhabhumi,local,dis-33
Kapilbastu,loc-50004,2016,district,Kapilbastu,local,dis-33
Krishnanagar,loc-50005,2016,district,Krishnanagar,local,dis-33
Maharajgunj,loc-50006,2016,district,Maharajgunj,local,dis-33
Mayadevi,loc-50007,2016,district,Mayadevi,local,dis-33
Shivaraj,loc-50008,2016,district,Shivaraj,local,dis-33
Suddhodhan,loc-50009,2016,district,Suddhodhan,local,dis-33
Belbari,loc-5001,2016,district,Belbari,local,dis-43
Yashodhara,loc-50010,2016,district,Yashodhara,local,dis-33
Biratnagar,loc-5002,2016,district,Biratnagar,local,dis-43
Budhiganga,loc-5003,2016,district,Budhiganga,local,dis-43
Dhanpalthan,loc-5004,2016,district,Dhanpalthan,local,dis-43
Gramthan,loc-5005,2016,district,Gramthan,local,dis-43
Jahada,loc-5006,2016,district,Jahada,local,dis-43
Kanepokhari,loc-5007,2016,district,Kanepokhari,local,dis-43
Katahari,loc-5008,2016,district,Katahari,local,dis-43
Kerabari,loc-5009,2016,district,Kerabari,local,dis-43
Letang,loc-5010,2016,district,Letang,local,dis-43
Miklajung,loc-5011,2016,district,Miklajung,local,dis-43
Patahrishanishchare,loc-5012,2016,district,Patahrishanishchare,local,dis-43
Rangeli,loc-5013,2016,district,Rangeli,local,dis-43
Ratuwamai,loc-5014,2016,district,Ratuwamai,local,dis-43
Sundarharaicha,loc-5015,2016,district,Sundarharaicha,local,dis-43
Sunwarshi,loc-5016,2016,district,Sunwarshi,local,dis-43
Uralabari,loc-5017,2016,district,Uralabari,local,dis-43
Bhumekasthan,loc-51001,2016,district,Bhumekasthan,local,dis-02
Chhatradev,loc-51002,2016,district,Chhatradev,local,dis-02
Malarani,loc-51003,2016,district,Malarani,local,dis-02
Panini,loc-51004,2016,district,Panini,local,dis-02
Sandhikharka,loc-51005,2016,district,Sandhikharka,local,dis-02
Sitganga,loc-51006,2016,district,Sitganga,local,dis-02
Ayirabati,loc-52001,2016,district,Ayirabati,local,dis-54
Gaumukhi,loc-52002,2016,district,Gaumukhi,local,dis-54
Jhimruk,loc-52003,2016,district,Jhimruk,local,dis-54
Mallarani,loc-52004,2016,district,Mallarani,local,dis-54
Mandavi,loc-52005,2016,district,Mandavi,local,dis-54
Naubahini,loc-52006,2016,district,Naubahini,local,dis-54
Pyuthan,loc-52007,2016,district,Pyuthan,local,dis-54
Sarumarani,loc-52008,2016,district,Sarumarani,local,dis-54
Sworgadwary,loc-52009,2016,district,Sworgadwary,local,dis-54
Duikholi,loc-53001,2016,district,Duikholi,local,dis-58
Lungri,loc-53002,2016,district,Lungri,local,dis-58
Madi,loc-53003,2016,district,Madi,local,dis-58
Rolpa,loc-53004,2016,district,Rolpa,local,dis-58
Runtigadi,loc-53005,2016,district,Runtigadi,local,dis-58
Sukidaha,loc-53006,2016,district,Sukidaha,local,dis-58
Sunchhahari,loc-53007,2016,district,Sunchhahari,local,dis-58
Suwarnabati,loc-53008,2016,district,Suwarnabati,local,dis-58
Thawang,loc-53009,2016,district,Thawang,local,dis-58
Tribeni,loc-53010,2016,district,Tribeni,local,dis-58
Aathbiskot,loc-54001,2016,district,Aathbiskot,local,dis-77
Banfikot,loc-54002,2016,district,Banfikot,local,dis-77
Chaurjahari,loc-54003,2016,district,Chaurjahari,local,dis-77
Musikot,loc-54004,2016,district,Musikot,local,dis-77
Sani Bheri,loc-54005,2016,district,Sani Bheri,local,dis-77
Tribeni,loc-54006,2016,district,Tribeni,local,dis-77
Bagchaur,loc-55001,2016,district,Bagchaur,local,dis-61
Bangad Kupinde,loc-55002,2016,district,Bangad Kupinde,local,dis-61
Chhatreshwori,loc-55003,2016,district,Chhatreshwori,local,dis-61
Darma,loc-55004,2016,district,Darma,local,dis-61
Dhorchaur,loc-55005,2016,district,Dhorchaur,local,dis-61
Kalimati,loc-55006,2016,district,Kalimati,local,dis-61
Kapurkot,loc-55007,2016,district,Kapurkot,local,dis-61
Kumakhmalika,loc-55008,2016,district,Kumakhmalika,local,dis-61
Sharada,loc-55009,2016,district,Sharada,local,dis-61
Tribeni,loc-55010,2016,district,Tribeni,local,dis-61
Babai,loc-56001,2016,district,Babai,local,dis-15
Banglachuli,loc-56002,2016,district,Banglachuli,local,dis-15
Dangisharan,loc-56003,2016,district,Dangisharan,local,dis-15
Gadhawa,loc-56004,2016,district,Gadhawa,local,dis-15
Ghorahi,loc-56005,2016,district,Ghorahi,local,dis-15
Lamahi,loc-56006,2016,district,Lamahi,local,dis-15
Rajpur,loc-56007,2016,district,Rajpur,local,dis-15
Rapti,loc-56008,2016,district,Rapti,local,dis-15
Shantinagar,loc-56009,2016,district,Shantinagar,local,dis-15
Tulsipur,loc-56010,2016,district,Tulsipur,local,dis-15
Baijanath,loc-57001,2016,district,Baijanath,local,dis-07
Duduwa,loc-57002,2016,district,Duduwa,local,dis-07
Janki,loc-57003,2016,district,Janki,local,dis-07
Khajura,loc-57004,2016,district,Khajura,local,dis-07
Kohalpur,loc-57005,2016,district,Kohalpur,local,dis-07
Narainapur,loc-57006,2016,district,Narainapur,local,dis-07
Nepalgunj,loc-57007,2016,district,Nepalgunj,local,dis-07
Rapti Sonari,loc-57008,2016,district,Rapti Sonari,local,dis-07
Badhaiyatal,loc-58001,2016,district,Badhaiyatal,local,dis-09
Bansagadhi,loc-58002,2016,district,Bansagadhi,local,dis-09
Barbardiya,loc-58003,2016,district,Barbardiya,local,dis-09
Geruwa,loc-58004,2016,district,Geruwa,local,dis-09
Gulariya,loc-58005,2016,district,Gulariya,local,dis-09
Madhuwan,loc-58006,2016,district,Madhuwan,local,dis-09
Rajapur,loc-58007,2016,district,Rajapur,local,dis-09
Thakurbaba,loc-58008,2016,district,Thakurbaba,local,dis-09
Bardiya National Park,loc-58099,2016,district,Bardiya National Park,local,dis-09
Barahtal,loc-59001,2016,district,Barahtal,local,dis-70
Bheriganga,loc-59002,2016,district,Bheriganga,local,dis-70
Birendranagar,loc-59003,2016,district,Birendranagar,local,dis-70
Chaukune,loc-59004,2016,district,Chaukune,local,dis-70
Chingad,loc-59005,2016,district,Chingad,local,dis-70
Gurbhakot,loc-59006,2016,district,Gurbhakot,local,dis-70
Lekbeshi,loc-59007,2016,district,Lekbeshi,local,dis-70
Panchpuri,loc-59008,2016,district,Panchpuri,local,dis-70
Simta,loc-59009,2016,district,Simta,local,dis-70
Aathabis,loc-60001,2016,district,Aathabis,local,dis-14
Bhagawatimai,loc-60002,2016,district,Bhagawatimai,local,dis-14
Bhairabi,loc-60003,2016,district,Bhairabi,local,dis-14
Chamunda Bindrasaini,loc-60004,2016,district,Chamunda Bindrasaini,local,dis-14
Dullu,loc-60005,2016,district,Dullu,local,dis-14
Dungeshwor,loc-60006,2016,district,Dungeshwor,local,dis-14
Gurans,loc-60007,2016,district,Gurans,local,dis-14
Mahabu,loc-60008,2016,district,Mahabu,local,dis-14
Narayan,loc-60009,2016,district,Narayan,local,dis-14
Barah,loc-6001,2016,district,Barah,local,dis-69
Naumule,loc-60010,2016,district,Naumule,local,dis-14
Thantikandh,loc-60011,2016,district,Thantikandh,local,dis-14
Barju,loc-6002,2016,district,Barju,local,dis-69
Bhokraha,loc-6003,2016,district,Bhokraha,local,dis-69
Dewanganj,loc-6004,2016,district,Dewanganj,local,dis-69
Dharan,loc-6005,2016,district,Dharan,local,dis-69
Duhabi,loc-6006,2016,district,Duhabi,local,dis-69
Gadhi,loc-6007,2016,district,Gadhi,local,dis-69
Harinagara,loc-6008,2016,district,Harinagara,local,dis-69
Inaruwa,loc-6009,2016,district,Inaruwa,local,dis-69
Itahari,loc-6010,2016,district,Itahari,local,dis-69
Koshi,loc-6011,2016,district,Koshi,local,dis-69
Ramdhuni,loc-6012,2016,district,Ramdhuni,local,dis-69
Koshi Tappu Wildlife Reserve,loc-6099,2016,district,Koshi Tappu Wildlife Reserve,local,dis-69
Barekot,loc-61001,2016,district,Barekot,local,dis-27
Bheri,loc-61002,2016,district,Bheri,local,dis-27
Chhedagad,loc-61003,2016,district,Chhedagad,local,dis-27
Junichande,loc-61004,2016,district,Junichande,local,dis-27
Kuse,loc-61005,2016,district,Kuse,local,dis-27
Shiwalaya,loc-61006,2016,district,Shiwalaya,local,dis-27
Tribeni Nalagad,loc-61007,2016,district,Tribeni Nalagad,local,dis-27
Chharka Tangsong,loc-62001,2016,district,Chharka Tangsong,local,dis-21
Dolpo Buddha,loc-62002,2016,district,Dolpo Buddha,local,dis-21
Jagadulla,loc-62003,2016,district,Jagadulla,local,dis-21
Kaike,loc-62004,2016,district,Kaike,local,dis-21
Mudkechula,loc-62005,2016,district,Mudkechula,local,dis-21
Shey Phoksundo,loc-62006,2016,district,Shey Phoksundo,local,dis-21
Thuli Bheri,loc-62007,2016,district,Thuli Bheri,local,dis-21
Tripurasundari,loc-62008,2016,district,Tripurasundari,local,dis-21
Chandannath,loc-63001,2016,district,Chandannath,local,dis-29
Guthichaur,loc-63002,2016,district,Guthichaur,local,dis-29
Hima,loc-63003,2016,district,Hima,local,dis-29
Kanakasundari,loc-63004,2016,district,Kanakasundari,local,dis-29
Patrasi,loc-63005,2016,district,Patrasi,local,dis-29
Sinja,loc-63006,2016,district,Sinja,local,dis-29
Tatopani,loc-63007,2016,district,Tatopani,local,dis-29
Tila,loc-63008,2016,district,Tila,local,dis-29
Kalika,loc-64001,2016,district,Kalika,local,dis-31
Khandachakra,loc-64002,2016,district,Khandachakra,local,dis-31
Mahawai,loc-64003,2016,district,Mahawai,local,dis-31
Naraharinath,loc-64004,2016,district,Naraharinath,local,dis-31
Pachaljharana,loc-64005,2016,district,Pachaljharana,local,dis-31
Palata,loc-64006,2016,district,Palata,local,dis-31
Raskot,loc-64007,2016,district,Raskot,local,dis-31
Sanni Tribeni,loc-64008,2016,district,Sanni Tribeni,local,dis-31
Tilagufa,loc-64009,2016,district,Tilagufa,local,dis-31
Chhayanath Rara,loc-65001,2016,district,Chhayanath Rara,local,dis-44
Khatyad,loc-65002,2016,district,Khatyad,local,dis-44
Mugum Karmarong,loc-65003,2016,district,Mugum Karmarong,local,dis-44
Soru,loc-65004,2016,district,Soru,local,dis-44
Adanchuli,loc-66001,2016,district,Adanchuli,local,dis-25
Chankheli,loc-66002,2016,district,Chankheli,local,dis-25
Kharpunath,loc-66003,2016,district,Kharpunath,local,dis-25
Namkha,loc-66004,2016,district,Namkha,local,dis-25
Sarkegad,loc-66005,2016,district,Sarkegad,local,dis-25
Simkot,loc-66006,2016,district,Simkot,local,dis-25
Tanjakot,loc-66007,2016,district,Tanjakot,local,dis-25
Badimalika,loc-67001,2016,district,Badimalika,local,dis-06
Budhiganga,loc-67002,2016,district,Budhiganga,local,dis-06
Budhinanda,loc-67003,2016,district,Budhinanda,local,dis-06
Chhededaha,loc-67004,2016,district,Chhededaha,local,dis-06
Gaumul,loc-67005,2016,district,Gaumul,local,dis-06
Himali,loc-67006,2016,district,Himali,local,dis-06
Pandav Gupha,loc-67007,2016,district,Pandav Gupha,local,dis-06
Swami Kartik,loc-67008,2016,district,Swami Kartik,local,dis-06
Tribeni,loc-67009,2016,district,Tribeni,local,dis-06
Khaptad National Park,loc-67099,2016,district,Khaptad National Park,local,dis-06
Bithadchir,loc-68001,2016,district,Bithadchir,local,dis-05
Bungal,loc-68002,2016,district,Bungal,local,dis-05
Chabispathivera,loc-68003,2016,district,Chabispathivera,local,dis-05
Durgathali,loc-68004,2016,district,Durgathali,local,dis-05
Jayaprithivi,loc-68005,2016,district,Jayaprithivi,local,dis-05
Kanda,loc-68006,2016,district,Kanda,local,dis-05
Kedarseu,loc-68007,2016,district,Kedarseu,local,dis-05
Khaptadchhanna,loc-68008,2016,district,Khaptadchhanna,local,dis-05
Masta,loc-68009,2016,district,Masta,local,dis-05
Surma,loc-68010,2016,district,Surma,local,dis-05
Talkot,loc-68011,2016,district,Talkot,local,dis-05
Thalara,loc-68012,2016,district,Thalara,local,dis-05
Khaptad National Park,loc-68099,2016,district,Khaptad National Park,local,dis-05
Bannigadhi Jayagadh,loc-69001,2016,district,Bannigadhi Jayagadh,local,dis-01
Chaurpati,loc-69002,2016,district,Chaurpati,local,dis-01
Dhakari,loc-69003,2016,district,Dhakari,local,dis-01
Kamalbazar,loc-69004,2016,district,Kamalbazar,local,dis-01
Mangalsen,loc-69005,2016,district,Mangalsen,local,dis-01
Mellekh,loc-69006,2016,district,Mellekh,local,dis-01
Panchadewal Binayak,loc-69007,2016,district,Panchadewal Binayak,local,dis-01
Ramaroshan,loc-69008,2016,district,Ramaroshan,local,dis-01
Sanphebagar,loc-69009,2016,district,Sanphebagar,local,dis-01
Turmakhad,loc-69010,2016,district,Turmakhad,local,dis-01
Khaptad National Park,loc-69099,2016,district,Khaptad National Park,local,dis-01
Adharsha,loc-70001,2016,district,Adharsha,local,dis-22
Badikedar,loc-70002,2016,district,Badikedar,local,dis-22
Bogtan,loc-70003,2016,district,Bogtan,local,dis-22
Dipayal Silgadi,loc-70004,2016,district,Dipayal Silgadi,local,dis-22
Jorayal,loc-70005,2016,district,Jorayal,local,dis-22
K I Singh,loc-70006,2016,district,K I Singh,local,dis-22
Purbichauki,loc-70007,2016,district,Purbichauki,local,dis-22
Sayal,loc-70008,2016,district,Sayal,local,dis-22
Shikhar,loc-70009,2016,district,Shikhar,local,dis-22
Chaubise,loc-7001,2016,district,Chaubise,local,dis-18
Chhathar Jorpati,loc-7002,2016,district,Chhathar Jorpati,local,dis-18
Dhankuta,loc-7003,2016,district,Dhankuta,local,dis-18
Khalsa Chhintang Shahidbhumi,loc-7004,2016,district,Khalsa Chhintang Shahidbhumi,local,dis-18
Mahalaxmi,loc-7005,2016,district,Mahalaxmi,local,dis-18
Pakhribas,loc-7006,2016,district,Pakhribas,local,dis-18
Sangurigadhi,loc-7007,2016,district,Sangurigadhi,local,dis-18
Khaptad National Park,loc-70099,2016,district,Khaptad National Park,local,dis-22
Bardagoriya,loc-71001,2016,district,Bardagoriya,local,dis-30
Bhajani,loc-71002,2016,district,Bhajani,local,dis-30
Chure,loc-71003,2016,district,Chure,local,dis-30
Dhangadhi,loc-71004,2016,district,Dhangadhi,local,dis-30
Gauriganga,loc-71005,2016,district,Gauriganga,local,dis-30
Ghodaghodi,loc-71006,2016,district,Ghodaghodi,local,dis-30
Godawari,loc-71007,2016,district,Godawari,local,dis-30
Janaki,loc-71008,2016,district,Janaki,local,dis-30
Joshipur,loc-71009,2016,district,Joshipur,local,dis-30
Kailari,loc-71010,2016,district,Kailari,local,dis-30
Lamkichuha,loc-71011,2016,district,Lamkichuha,local,dis-30
Mohanyal,loc-71012,2016,district,Mohanyal,local,dis-30
Tikapur,loc-71013,2016,district,Tikapur,local,dis-30
Bedkot,loc-72001,2016,district,Bedkot,local,dis-32
Belauri,loc-72002,2016,district,Belauri,local,dis-32
Beldandi,loc-72003,2016,district,Beldandi,local,dis-32
Bhimdatta,loc-72004,2016,district,Bhimdatta,local,dis-32
Krishnapur,loc-72005,2016,district,Krishnapur,local,dis-32
Laljhadi,loc-72006,2016,district,Laljhadi,local,dis-32
Mahakali,loc-72007,2016,district,Mahakali,local,dis-32
Punarbas,loc-72008,2016,district,Punarbas,local,dis-32
Shuklaphanta,loc-72009,2016,district,Shuklaphanta,local,dis-32
Shuklaphanta National Park,loc-72099,2016,district,Shuklaphanta National Park,local,dis-32
Ajaymeru,loc-73001,2016,district,Ajaymeru,local,dis-13
Alital,loc-73002,2016,district,Alital,local,dis-13
Amargadhi,loc-73003,2016,district,Amargadhi,local,dis-13
Bhageshwar,loc-73004,2016,district,Bhageshwar,local,dis-13
Ganayapdhura,loc-73005,2016,district,Ganayapdhura,local,dis-13
Nawadurga,loc-73006,2016,district,Nawadurga,local,dis-13
Parashuram,loc-73007,2016,district,Parashuram,local,dis-13
Dasharathchanda,loc-74001,2016,district,Dasharathchanda,local,dis-04
Dilasaini,loc-74002,2016,district,Dilasaini,local,dis-04
Dogadakedar,loc-74003,2016,district,Dogadakedar,local,dis-04
Melauli,loc-74004,2016,district,Melauli,local,dis-04
Pancheshwar,loc-74005,2016,district,Pancheshwar,local,dis-04
Patan,loc-74006,2016,district,Patan,local,dis-04
Purchaudi,loc-74007,2016,district,Purchaudi,local,dis-04
Shivanath,loc-74008,2016,district,Shivanath,local,dis-04
Sigas,loc-74009,2016,district,Sigas,local,dis-04
Surnaya,loc-74010,2016,district,Surnaya,local,dis-04
Apihimal,loc-75001,2016,district,Apihimal,local,dis-16
Byas,loc-75002,2016,district,Byas,local,dis-16
Dunhu,loc-75003,2016,district,Dunhu,local,dis-16
Lekam,loc-75004,2016,district,Lekam,local,dis-16
Mahakali,loc-75005,2016,district,Mahakali,local,dis-16
Malikaarjun,loc-75006,2016,district,Malikaarjun,local,dis-16
Marma,loc-75007,2016,district,Marma,local,dis-16
Naugad,loc-75008,2016,district,Naugad,local,dis-16
Shailyashikhar,loc-75009,2016,district,Shailyashikhar,local,dis-16
Binayee Tribeni,loc-76001,2016,district,Binayee Tribeni,local,dis-47
Bulingtar,loc-76002,2016,district,Bulingtar,local,dis-47
Bungdikali,loc-76003,2016,district,Bungdikali,local,dis-47
Devchuli,loc-76004,2016,district,Devchuli,local,dis-47
Gaidakot,loc-76005,2016,district,Gaidakot,local,dis-47
Hupsekot,loc-76006,2016,district,Hupsekot,local,dis-47
Kawasoti,loc-76007,2016,district,Kawasoti,local,dis-47
Madhyabindu,loc-76008,2016,district,Madhyabindu,local,dis-47
Chitawan National Park,loc-76099,2016,district,Chitawan National Park,local,dis-47
Bhume,loc-77001,2016,district,Bhume,local,dis-59
Putha Uttarganga,loc-77002,2016,district,Putha Uttarganga,local,dis-59
Sisne,loc-77003,2016,district,Sisne,local,dis-59
Dhorpatan Hunting Reserve,loc-77099,2016,district,Dhorpatan Hunting Reserve,local,dis-59
Aathrai,loc-8001,2016,district,Aathrai,local,dis-74
Chhathar,loc-8002,2016,district,Chhathar,local,dis-74
Laligurans,loc-8003,2016,district,Laligurans,local,dis-74
Menchayam,loc-8004,2016,district,Menchayam,local,dis-74
Myanglung,loc-8005,2016,district,Myanglung,local,dis-74
Phedap,loc-8006,2016,district,Phedap,local,dis-74
Bhotkhola,loc-9001,2016,district,Bhotkhola,local,dis-62
Chainpur,loc-9002,2016,district,Chainpur,local,dis-62
Chichila,loc-9003,2016,district,Chichila,local,dis-62
Dharmadevi,loc-9004,2016,district,Dharmadevi,local,dis-62
Khandbari,loc-9005,2016,district,Khandbari,local,dis-62
Madi,loc-9006,2016,district,Madi,local,dis-62
Makalu,loc-9007,2016,district,Makalu,local,dis-62
Panchakhapan,loc-9008,2016,district,Panchakhapan,local,dis-62
Sabhapokhari,loc-9009,2016,district,Sabhapokhari,local,dis-62
Silichong,loc-9010,2016,district,Silichong,local,dis-62
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

