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
Kathmandu,100,2016,province,Kathmandu,district,3
Makwanpur,1006,2016,province,Makwanpur,district,3
Parsa,1101,2016,province,Parsa,district,2
Rautahat,1123,2016,province,Rautahat,district,2
Bhojpur,1236,2016,province,Bhojpur,district,1
Dhankuta,1299,2016,province,Dhankuta,district,1
Morang,1326,2016,province,Morang,district,1
Sankhuwasabha,1394,2016,province,Sankhuwasabha,district,1
Sunsari,1467,2016,province,Sunsari,district,1
Terathum,1475,2016,province,Terathum,district,
Ilam,1538,2016,province,Ilam,district,1
Jhapa,1581,2016,province,Jhapa,district,1
Panchthar,1658,2016,province,Panchthar,district,1
Taplejung,1658,2016,province,Taplejung,district,1
Khotang,1709,2016,province,Khotang,district,1
Okhaldhunga,1809,2016,province,Okhaldhunga,district,1
Kavrepalanchok,190,2016,province,Kavrepalanchok,district,
Saptari,1910,2016,province,Saptari,district,2
Bhaktapur,2,2016,province,Bhaktapur,district,3
Siraha,2001,2016,province,Siraha,district,2
Solukhumbu,2050,2016,province,Solukhumbu,district,1
Udayapur,2123,2016,province,Udayapur,district,1
Baitadi,2132,2016,province,Baitadi,district,7
Dadeldhura,2192,2016,province,Dadeldhura,district,7
Darchula,2221,2016,province,Darchula,district,7
Kanchanpur,2269,2016,province,Kanchanpur,district,7
Achham,2329,2016,province,Achham,district,7
Bajhang,2349,2016,province,Bajhang,district,7
Bajura,2407,2016,province,Bajura,district,7
Lalitpur,244,2016,province,Lalitpur,district,3
Doti,2440,2016,province,Doti,district,7
Kailali,2503,2016,province,Kailali,district,7
Banke,2530,2016,province,Banke,district,5
Bardiya,2593,2016,province,Bardiya,district,5
Surkhet,2618,2016,province,Surkhet,district,6
Dang,2671,2016,province,Dang,district,5
Nuwakot,268,2016,province,Nuwakot,district,3
Pyuthan,2714,2016,province,Pyuthan,district,5
Rolpa,2785,2016,province,Rolpa,district,5
Rukum,2807,2016,province,Rukum,district,
Salyan,2856,2016,province,Salyan,district,6
Baglung,2890,2016,province,Baglung,district,4
Mustang,2920,2016,province,Mustang,district,4
Myagdi,2972,2016,province,Myagdi,district,4
Parbat,3020,2016,province,Parbat,district,4
Gorkha,3077,2016,province,Gorkha,district,4
Kaski,3111,2016,province,Kaski,district,4
Rasuwa,319,2016,province,Rasuwa,district,3
Lamjung,3190,2016,province,Lamjung,district,4
Manag,3212,2016,province,Manag,district,
Syangja,3227,2016,province,Syangja,district,4
Tanahun,3324,2016,province,Tanahun,district,
Arghakhanchi,3357,2016,province,Arghakhanchi,district,5
Gulmi,3427,2016,province,Gulmi,district,5
Kapilbastu,3487,2016,province,Kapilbastu,district,
Nawalparasi,3579,2016,province,Nawalparasi,district,
Nawalparasi,3585,2016,province,Nawalparasi,district,
Palpa,3630,2016,province,Palpa,district,5
Rupandehi,3703,2016,province,Rupandehi,district,5
Rupandehi,3715,2016,province,Rupandehi,district,5
Humla,3738,2016,province,Humla,district,6
Mugu,3746,2016,province,Mugu,district,6
Dolpa,3751,2016,province,Dolpa,district,6
Jumla,3759,2016,province,Jumla,district,6
Kalikot,3768,2016,province,Kalikot,district,6
Jajarkot,3783,2016,province,Jajarkot,district,6
Dailekh,3792,2016,province,Dailekh,district,6
Dhanusa,496,2016,province,Dhanusa,district,2
Dhading,51,2016,province,Dhading,district,3
Dolakha,528,2016,province,Dolakha,district,3
Mahottari,614,2016,province,Mahottari,district,2
Ramechhap,650,2016,province,Ramechhap,district,3
Sarlahi,763,2016,province,Sarlahi,district,2
Sindhupalchowk,81,2016,province,Sindhupalchowk,district,
Sindhuli,829,2016,province,Sindhuli,district,3
Chitwan,953,2016,province,Chitwan,district,3
Bara,5555,2016,province,Bara,district,2
Halesi Tuwachung,1,2016,district,Halesi Tuwachung,local,1709
Jantedhunga,10,2016,district,Jantedhunga,local,1709
Geruwa,100,2016,district,Geruwa,local,2593
Barbardiya,101,2016,district,Barbardiya,local,2593
Bansagadhi,102,2016,district,Bansagadhi,local,2593
Bansagadhi,103,2016,district,Bansagadhi,local,2593
Bhaktapur,104,2016,district,Bhaktapur,local,2
Madhyapur Thimi,105,2016,district,Madhyapur Thimi,local,2
Changunarayan,106,2016,district,Changunarayan,local,2
Suryabinayak,107,2016,district,Suryabinayak,local,2
Salpasilichho,108,2016,district,Salpasilichho,local,1236
Shadananda,109,2016,district,Shadananda,local,1236
Sanphebagar,11,2016,district,Sanphebagar,local,2329
Arun,110,2016,district,Arun,local,1236
Ramprasad Rai,111,2016,district,Ramprasad Rai,local,1236
Aamchowk,112,2016,district,Aamchowk,local,1236
Hatuwagadhi,113,2016,district,Hatuwagadhi,local,1236
Bhojpur,114,2016,district,Bhojpur,local,1236
Tyamkemaiyung,115,2016,district,Tyamkemaiyung,local,1236
Pauwadungma,116,2016,district,Pauwadungma,local,1236
Ichchhyakamana,117,2016,district,Ichchhyakamana,local,953
Ratnanagar,118,2016,district,Ratnanagar,local,953
Khairahani,119,2016,district,Khairahani,local,953
Bannigadi Jayagadh,12,2016,district,Bannigadi Jayagadh,local,2329
Rapti,120,2016,district,Rapti,local,953
Kalika,121,2016,district,Kalika,local,953
Bharatpur,122,2016,district,Bharatpur,local,953
Chitwan National Park,123,2016,district,Chitwan National Park,local,953
Madi,124,2016,district,Madi,local,953
Amargadhi,125,2016,district,Amargadhi,local,2192
Ganyapadhura,126,2016,district,Ganyapadhura,local,2192
Nawadurga,127,2016,district,Nawadurga,local,2192
Ajaymeru,128,2016,district,Ajaymeru,local,2192
Bhageshwar,129,2016,district,Bhageshwar,local,2192
Mellekh,13,2016,district,Mellekh,local,2329
Alital,130,2016,district,Alital,local,2192
Parashuram,131,2016,district,Parashuram,local,2192
Aathbis Nagarpalika,132,2016,district,Aathbis Nagarpalika,local,3792
Naumule,133,2016,district,Naumule,local,3792
Bhagawatimai,134,2016,district,Bhagawatimai,local,3792
Dungeshwor,135,2016,district,Dungeshwor,local,3792
Gurans,136,2016,district,Gurans,local,3792
Dullu,137,2016,district,Dullu,local,3792
Thantikandh Gaunpalika,138,2016,district,Thantikandh Gaunpalika,local,3792
Chamunda Bindrasaini,139,2016,district,Chamunda Bindrasaini,local,3792
Ramaroshan,14,2016,district,Ramaroshan,local,2329
Narayan,140,2016,district,Narayan,local,3792
Bhairabi,141,2016,district,Bhairabi,local,3792
Mahabu,142,2016,district,Mahabu,local,3792
Rajpur,143,2016,district,Rajpur,local,2671
Gadwa,144,2016,district,Gadwa,local,2671
Babai,145,2016,district,Babai,local,2671
Shantinagar,146,2016,district,Shantinagar,local,2671
Dangisharan,147,2016,district,Dangisharan,local,2671
Tulsipur,148,2016,district,Tulsipur,local,2671
Ghorahi,149,2016,district,Ghorahi,local,2671
Chaurpati,15,2016,district,Chaurpati,local,2329
Lamhi,150,2016,district,Lamhi,local,2671
Banglachuli,151,2016,district,Banglachuli,local,2671
Rapti,152,2016,district,Rapti,local,2671
Byas,153,2016,district,Byas,local,2221
Naugad,154,2016,district,Naugad,local,2221
Mahakali,155,2016,district,Mahakali,local,2221
Dunhu,156,2016,district,Dunhu,local,2221
Malikarjun,157,2016,district,Malikarjun,local,2221
Lekam,158,2016,district,Lekam,local,2221
Shailyashikhar,159,2016,district,Shailyashikhar,local,2221
Mangalsen,16,2016,district,Mangalsen,local,2329
Marma,160,2016,district,Marma,local,2221
Apihimal,161,2016,district,Apihimal,local,2221
Khaniyabas,162,2016,district,Khaniyabas,local,51
Gangajamuna,163,2016,district,Gangajamuna,local,51
Jwalamukhi,164,2016,district,Jwalamukhi,local,51
Siddhalek,165,2016,district,Siddhalek,local,51
Benighat Rorang,166,2016,district,Benighat Rorang,local,51
Gajuri,167,2016,district,Gajuri,local,51
Netrawati,168,2016,district,Netrawati,local,51
Tripurasundari,169,2016,district,Tripurasundari,local,51
Dhakari,17,2016,district,Dhakari,local,2329
Thakre,170,2016,district,Thakre,local,51
Galchi,171,2016,district,Galchi,local,51
Nilkantha,172,2016,district,Nilkantha,local,51
Rubi Valley,173,2016,district,Rubi Valley,local,51
Dhunibesi,174,2016,district,Dhunibesi,local,51
Pakhribas,175,2016,district,Pakhribas,local,1299
Sagurigadhi,176,2016,district,Sagurigadhi,local,1299
Dhankuta,177,2016,district,Dhankuta,local,1299
Khalsa Chhintang Shahidbhumi,178,2016,district,Khalsa Chhintang Shahidbhumi,local,1299
Chhathar Jorpati,179,2016,district,Chhathar Jorpati,local,1299
Panchadewal Binayak,18,2016,district,Panchadewal Binayak,local,2329
Mahalaxmi,180,2016,district,Mahalaxmi,local,1299
Chaubise,181,2016,district,Chaubise,local,1299
Ganeshman Charnath,182,2016,district,Ganeshman Charnath,local,496
Mithila,183,2016,district,Mithila,local,496
Kamala Siddhidatri,184,2016,district,Kamala Siddhidatri,local,496
Janaknandani,185,2016,district,Janaknandani,local,496
Bideha,186,2016,district,Bideha,local,496
Aaurahi,187,2016,district,Aaurahi,local,496
Nagarain,188,2016,district,Nagarain,local,496
Mukhiyapatti Musarmiya,189,2016,district,Mukhiyapatti Musarmiya,local,496
Kamalbazar,19,2016,district,Kamalbazar,local,2329
Lakshminiya,190,2016,district,Lakshminiya,local,496
Mithila Bihari,191,2016,district,Mithila Bihari,local,496
Hansapur Kathapulla,192,2016,district,Hansapur Kathapulla,local,496
Chhireshwornath,193,2016,district,Chhireshwornath,local,496
Janakpur,194,2016,district,Janakpur,local,496
Bateshwor,195,2016,district,Bateshwor,local,496
Sabaila,196,2016,district,Sabaila,local,496
Sahidnagar,197,2016,district,Sahidnagar,local,496
Dhanusadham,198,2016,district,Dhanusadham,local,496
Bigu,199,2016,district,Bigu,local,528
Rupakot Majhuwagadhi,2,2016,district,Rupakot Majhuwagadhi,local,1709
Turmakhad,20,2016,district,Turmakhad,local,2329
Gaurishankar,200,2016,district,Gaurishankar,local,528
Jiri,201,2016,district,Jiri,local,528
Kalinchok,202,2016,district,Kalinchok,local,528
Bhimeshwor,203,2016,district,Bhimeshwor,local,528
Sailung,204,2016,district,Sailung,local,528
Melung,205,2016,district,Melung,local,528
Tamakoshi,206,2016,district,Tamakoshi,local,528
Baiteshwor,207,2016,district,Baiteshwor,local,528
Jagadulla,208,2016,district,Jagadulla,local,3751
She Foksundo,209,2016,district,She Foksundo,local,3751
Khaptad National Park,21,2016,district,Khaptad National Park,local,2329
Dolpo Buddha,210,2016,district,Dolpo Buddha,local,3751
Chharka Tangsong,211,2016,district,Chharka Tangsong,local,3751
Kaike,212,2016,district,Kaike,local,3751
Thuli Bheri,213,2016,district,Thuli Bheri,local,3751
Tripurasundari,214,2016,district,Tripurasundari,local,3751
Mudkechula,215,2016,district,Mudkechula,local,3751
Khaptad National Park,216,2016,district,Khaptad National Park,local,2440
Jorayal,217,2016,district,Jorayal,local,2440
Badikedar,218,2016,district,Badikedar,local,2440
Bogtan,219,2016,district,Bogtan,local,2440
Bhumikasthan,22,2016,district,Bhumikasthan,local,3357
k i Singh,220,2016,district,k i Singh,local,2440
Shikhar,221,2016,district,Shikhar,local,2440
Adharsha,222,2016,district,Adharsha,local,2440
Purbichauki,223,2016,district,Purbichauki,local,2440
Dipayal Silgadi,224,2016,district,Dipayal Silgadi,local,2440
Sayal,225,2016,district,Sayal,local,2440
Chumnuwri,226,2016,district,Chumnuwri,local,3077
Dharche,227,2016,district,Dharche,local,3077
Ajirkot,228,2016,district,Ajirkot,local,3077
Palungtar,229,2016,district,Palungtar,local,3077
Malarani,23,2016,district,Malarani,local,3357
Siranchok,230,2016,district,Siranchok,local,3077
Gandaki,231,2016,district,Gandaki,local,3077
Bhimsen,232,2016,district,Bhimsen,local,3077
Aarughat,233,2016,district,Aarughat,local,3077
Sulikot,234,2016,district,Sulikot,local,3077
Gorkha,235,2016,district,Gorkha,local,3077
Sahid Lakhan,236,2016,district,Sahid Lakhan,local,3077
Madane,237,2016,district,Madane,local,3427
Chatrakot,238,2016,district,Chatrakot,local,3427
Ruru,239,2016,district,Ruru,local,3427
Chattradev,24,2016,district,Chattradev,local,3357
Chandrakot,240,2016,district,Chandrakot,local,3427
Satyawati,241,2016,district,Satyawati,local,3427
Kaligandaki,242,2016,district,Kaligandaki,local,3427
Gulmidarbar,243,2016,district,Gulmidarbar,local,3427
Isma,244,2016,district,Isma,local,3427
Musikot,245,2016,district,Musikot,local,3427
Malika,246,2016,district,Malika,local,3427
Dhurkot,247,2016,district,Dhurkot,local,3427
Resunga,248,2016,district,Resunga,local,3427
Adanchuli,249,2016,district,Adanchuli,local,3738
Panini,25,2016,district,Panini,local,3357
Tanjakot,250,2016,district,Tanjakot,local,3738
Chankheli,251,2016,district,Chankheli,local,3738
Sarkegad,252,2016,district,Sarkegad,local,3738
Kharpunath,253,2016,district,Kharpunath,local,3738
Namkha,254,2016,district,Namkha,local,3738
Simkot,255,2016,district,Simkot,local,3738
Chulachuli,256,2016,district,Chulachuli,local,1538
Mangsebung,257,2016,district,Mangsebung,local,1538
Rong,258,2016,district,Rong,local,1538
Sandakpur,259,2016,district,Sandakpur,local,1538
Sitaganga,26,2016,district,Sitaganga,local,3357
Deumai,260,2016,district,Deumai,local,1538
Maijogmai,261,2016,district,Maijogmai,local,1538
Mai,262,2016,district,Mai,local,1538
Ilam,263,2016,district,Ilam,local,1538
Suryodaya,264,2016,district,Suryodaya,local,1538
Fakphokthum,265,2016,district,Fakphokthum,local,1538
Barekot Gaunpalika,266,2016,district,Barekot Gaunpalika,local,3783
Tribeni Nalagad,267,2016,district,Tribeni Nalagad,local,3783
Junichande,268,2016,district,Junichande,local,3783
Shiwalaya,269,2016,district,Shiwalaya,local,3783
Sandhikharka,27,2016,district,Sandhikharka,local,3357
Bheri,270,2016,district,Bheri,local,3783
Kuse,271,2016,district,Kuse,local,3783
Chhedagad,272,2016,district,Chhedagad,local,3783
Damak,273,2016,district,Damak,local,1581
Gauradhaha,274,2016,district,Gauradhaha,local,1581
Gauriganj,275,2016,district,Gauriganj,local,1581
Jhapa,276,2016,district,Jhapa,local,1581
Shivasataxi,277,2016,district,Shivasataxi,local,1581
Kachankawal,278,2016,district,Kachankawal,local,1581
Bhadrapur,279,2016,district,Bhadrapur,local,1581
Badigad,28,2016,district,Badigad,local,2890
Haldibari,280,2016,district,Haldibari,local,1581
Birtamod,281,2016,district,Birtamod,local,1581
Arjundhara,282,2016,district,Arjundhara,local,1581
Mechinagar,283,2016,district,Mechinagar,local,1581
Buddhashanti,284,2016,district,Buddhashanti,local,1581
Kankai,285,2016,district,Kankai,local,1581
Kamal,286,2016,district,Kamal,local,1581
Garhadashi,287,2016,district,Garhadashi,local,1581
Kankasundari Gaunpalika,288,2016,district,Kankasundari Gaunpalika,local,3759
Patarasi,289,2016,district,Patarasi,local,3759
Galkot,29,2016,district,Galkot,local,2890
Chandannath,290,2016,district,Chandannath,local,3759
Tatopani,291,2016,district,Tatopani,local,3759
Tatopani,292,2016,district,Tatopani,local,3759
Hima,293,2016,district,Hima,local,3759
Sinja,294,2016,district,Sinja,local,3759
Guthichaur,295,2016,district,Guthichaur,local,3759
Chure,296,2016,district,Chure,local,2503
Mohanyal,297,2016,district,Mohanyal,local,2503
Ghodaghodi,298,2016,district,Ghodaghodi,local,2503
Karnali,299,2016,district,Karnali,local,2503
Kepilasgadhi,3,2016,district,Kepilasgadhi,local,1709
Tarakhola,30,2016,district,Tarakhola,local,2890
Bardagariya,300,2016,district,Bardagariya,local,2503
Tikapur,301,2016,district,Tikapur,local,2503
Janaki,302,2016,district,Janaki,local,2503
Bhajani,303,2016,district,Bhajani,local,2503
Joshipur,304,2016,district,Joshipur,local,2503
Dhangadhi,305,2016,district,Dhangadhi,local,2503
Gadawari,306,2016,district,Gadawari,local,2503
Gauriganga,307,2016,district,Gauriganga,local,2503
Kailari,308,2016,district,Kailari,local,2503
Mahawai,309,2016,district,Mahawai,local,3768
Woreng,31,2016,district,Woreng,local,2890
Tilagufa,310,2016,district,Tilagufa,local,3768
Naraharinath,311,2016,district,Naraharinath,local,3768
Sanni Tribeni,312,2016,district,Sanni Tribeni,local,3768
Raskot,313,2016,district,Raskot,local,3768
Palata,314,2016,district,Palata,local,3768
Pachaljharana,315,2016,district,Pachaljharana,local,3768
Khandachakra,316,2016,district,Khandachakra,local,3768
Kalika,317,2016,district,Kalika,local,3768
Bhimdatta,318,2016,district,Bhimdatta,local,2269
Bedkot,319,2016,district,Bedkot,local,2269
Kathekhola,32,2016,district,Kathekhola,local,2890
Mahakali,320,2016,district,Mahakali,local,2269
Beldandi,321,2016,district,Beldandi,local,2269
Belauri,322,2016,district,Belauri,local,2269
Laljhadi,323,2016,district,Laljhadi,local,2269
Suklaphat,324,2016,district,Suklaphat,local,2269
Suklaphata,325,2016,district,Suklaphata,local,2269
Krishnapur,326,2016,district,Krishnapur,local,2269
Punarbas,327,2016,district,Punarbas,local,2269
Bijayanagar,328,2016,district,Bijayanagar,local,3487
Shivraj,329,2016,district,Shivraj,local,3487
Baglung,33,2016,district,Baglung,local,2890
Buddhabhumi,330,2016,district,Buddhabhumi,local,3487
Banganga,331,2016,district,Banganga,local,3487
Kapilvastu,332,2016,district,Kapilvastu,local,3487
Mayadevi,333,2016,district,Mayadevi,local,3487
Suddhodhan,334,2016,district,Suddhodhan,local,3487
Yashodhara,335,2016,district,Yashodhara,local,3487
Maharajgunj,336,2016,district,Maharajgunj,local,3487
Krishnanagar,337,2016,district,Krishnanagar,local,3487
Rupa,338,2016,district,Rupa,local,3111
Pokhara Lekhnath,339,2016,district,Pokhara Lekhnath,local,3111
Tamankhola,34,2016,district,Tamankhola,local,2890
Madi,340,2016,district,Madi,local,3111
Annapurna,341,2016,district,Annapurna,local,3111
Machhapuchchhre,342,2016,district,Machhapuchchhre,local,3111
Kathmandu,343,2016,district,Kathmandu,local,100
Kirtipur,344,2016,district,Kirtipur,local,100
Chandragiri,345,2016,district,Chandragiri,local,100
Nagarjun,346,2016,district,Nagarjun,local,100
Tarakeshwor,347,2016,district,Tarakeshwor,local,100
Tokha,348,2016,district,Tokha,local,100
Budhanilakantha,349,2016,district,Budhanilakantha,local,100
Dhorpatan,35,2016,district,Dhorpatan,local,2890
Gokarneshwor,350,2016,district,Gokarneshwor,local,100
Kageshwori Manahora,351,2016,district,Kageshwori Manahora,local,100
Shankharapur,352,2016,district,Shankharapur,local,100
Dakshinkali,353,2016,district,Dakshinkali,local,100
Chaurideurali,354,2016,district,Chaurideurali,local,190
Temal,355,2016,district,Temal,local,190
Bhumlu,356,2016,district,Bhumlu,local,190
Mandandeupur,357,2016,district,Mandandeupur,local,190
Panauti,358,2016,district,Panauti,local,190
Bethanchowk,359,2016,district,Bethanchowk,local,190
Nisikhola,36,2016,district,Nisikhola,local,2890
Khanikhola,360,2016,district,Khanikhola,local,190
Banepa,361,2016,district,Banepa,local,190
Dhulikhel,362,2016,district,Dhulikhel,local,190
Panchkhal,363,2016,district,Panchkhal,local,190
Namobuddha,364,2016,district,Namobuddha,local,190
Roshi,365,2016,district,Roshi,local,190
Mahabharat,366,2016,district,Mahabharat,local,190
Bagmati,367,2016,district,Bagmati,local,244
Konjyosom,368,2016,district,Konjyosom,local,244
Mahankal,369,2016,district,Mahankal,local,244
Dhorpatan Hunting Reserve,37,2016,district,Dhorpatan Hunting Reserve,local,2890
Lalitpur,370,2016,district,Lalitpur,local,244
Mahalaxmi,371,2016,district,Mahalaxmi,local,244
Godawari,372,2016,district,Godawari,local,244
Dudhpokhar,373,2016,district,Dudhpokhar,local,3190
Rainas,374,2016,district,Rainas,local,3190
Madhyanepal,375,2016,district,Madhyanepal,local,3190
Sundarbazar,376,2016,district,Sundarbazar,local,3190
Kwholasothar,377,2016,district,Kwholasothar,local,3190
Besishahar,378,2016,district,Besishahar,local,3190
Marsyangdi Gaunpalika,379,2016,district,Marsyangdi Gaunpalika,local,3190
Jaimuni,38,2016,district,Jaimuni,local,2890
Dordi,380,2016,district,Dordi,local,3190
Bardibas,381,2016,district,Bardibas,local,614
Gaushala,382,2016,district,Gaushala,local,614
Sonama,383,2016,district,Sonama,local,614
Ramgopalpur,384,2016,district,Ramgopalpur,local,614
Aurahi,385,2016,district,Aurahi,local,614
Bhangaha,386,2016,district,Bhangaha,local,614
Manra,387,2016,district,Manra,local,614
Ekdanra,388,2016,district,Ekdanra,local,614
Mahottari,389,2016,district,Mahottari,local,614
Purchaudi,39,2016,district,Purchaudi,local,2132
Jaleswor,390,2016,district,Jaleswor,local,614
Pipra,391,2016,district,Pipra,local,614
Matihani,392,2016,district,Matihani,local,614
Balwa,393,2016,district,Balwa,local,614
Loharpatti,394,2016,district,Loharpatti,local,614
Samsi,395,2016,district,Samsi,local,614
Chitwan National Park,396,2016,district,Chitwan National Park,local,1006
Rakshirang,397,2016,district,Rakshirang,local,1006
Manahari,398,2016,district,Manahari,local,1006
Hetauda,399,2016,district,Hetauda,local,1006
Lamidanda,4,2016,district,Lamidanda,local,1709
Dilasaini,40,2016,district,Dilasaini,local,2132
Makwanpurgadhi,400,2016,district,Makwanpurgadhi,local,1006
Bhimphedi,401,2016,district,Bhimphedi,local,1006
Kailash,402,2016,district,Kailash,local,1006
Thaha,403,2016,district,Thaha,local,1006
Indrasarawor,404,2016,district,Indrasarawor,local,1006
Bakaiya,405,2016,district,Bakaiya,local,1006
Parsa Wildlife Reserve,406,2016,district,Parsa Wildlife Reserve,local,1006
Bagmati,407,2016,district,Bagmati,local,1006
Neshang,408,2016,district,Neshang,local,3212
Narphu,409,2016,district,Narphu,local,3212
Patan,41,2016,district,Patan,local,2132
Chame,410,2016,district,Chame,local,3212
Nashong,411,2016,district,Nashong,local,3212
Sundarharicha,412,2016,district,Sundarharicha,local,1326
Belbari,413,2016,district,Belbari,local,1326
Kanepokhari,414,2016,district,Kanepokhari,local,1326
Budhiganga,415,2016,district,Budhiganga,local,1326
Gramthan,416,2016,district,Gramthan,local,1326
Katahari,417,2016,district,Katahari,local,1326
Dhanpalthan,418,2016,district,Dhanpalthan,local,1326
Rangeli,419,2016,district,Rangeli,local,1326
Shivanath,42,2016,district,Shivanath,local,2132
Pathrisanishchare,420,2016,district,Pathrisanishchare,local,1326
Miklajunga,421,2016,district,Miklajunga,local,1326
Sunawarshi,422,2016,district,Sunawarshi,local,1326
Ratuwamai,423,2016,district,Ratuwamai,local,1326
Jahada,424,2016,district,Jahada,local,1326
Uralabari,425,2016,district,Uralabari,local,1326
Biratnagar,426,2016,district,Biratnagar,local,1326
Kerabari,427,2016,district,Kerabari,local,1326
Letang,428,2016,district,Letang,local,1326
Chhayanath Rara,429,2016,district,Chhayanath Rara,local,3746
Dasarathchand,43,2016,district,Dasarathchand,local,2132
Mugum Karmarong,430,2016,district,Mugum Karmarong,local,3746
Khatyad,431,2016,district,Khatyad,local,3746
Soru,432,2016,district,Soru,local,3746
Lomanthang,433,2016,district,Lomanthang,local,2920
Dalome,434,2016,district,Dalome,local,2920
Barhagaun Muktichhetra,435,2016,district,Barhagaun Muktichhetra,local,2920
Gharapjhong,436,2016,district,Gharapjhong,local,2920
Thasang,437,2016,district,Thasang,local,2920
Annapurna,438,2016,district,Annapurna,local,2972
Beni,439,2016,district,Beni,local,2972
Dogadakedar,44,2016,district,Dogadakedar,local,2132
Malika,440,2016,district,Malika,local,2972
Mangala,441,2016,district,Mangala,local,2972
Raghuganga,442,2016,district,Raghuganga,local,2972
Dhorpatan Hunting Reserve,443,2016,district,Dhorpatan Hunting Reserve,local,2972
Dhawalagiri Gaunpalika,444,2016,district,Dhawalagiri Gaunpalika,local,2972
Chitwan National Park,445,2016,district,Chitwan National Park,local,3585
Bungdikali,446,2016,district,Bungdikali,local,3585
Bulingtar,447,2016,district,Bulingtar,local,3585
Gaidakot,448,2016,district,Gaidakot,local,3585
Devchuli,449,2016,district,Devchuli,local,3585
Surnaya,45,2016,district,Surnaya,local,2132
Hupsekot,450,2016,district,Hupsekot,local,3585
Kawasoti,451,2016,district,Kawasoti,local,3585
Madhyabindu,452,2016,district,Madhyabindu,local,3585
Sunwal,453,2016,district,Sunwal,local,3585
Palhinandan,454,2016,district,Palhinandan,local,3585
Pratappur,455,2016,district,Pratappur,local,3585
Ramgram,456,2016,district,Ramgram,local,3585
Sarawal,457,2016,district,Sarawal,local,3585
Tribenisusta,458,2016,district,Tribenisusta,local,3585
Bardaghat,459,2016,district,Bardaghat,local,3585
Sigas,46,2016,district,Sigas,local,2132
Binayee,460,2016,district,Binayee,local,3585
Kispang,461,2016,district,Kispang,local,268
Meghang,462,2016,district,Meghang,local,268
Tarkeshwar,463,2016,district,Tarkeshwar,local,268
Bidur,464,2016,district,Bidur,local,268
Tadi,465,2016,district,Tadi,local,268
Dupcheshwar,466,2016,district,Dupcheshwar,local,268
Panchakanya,467,2016,district,Panchakanya,local,268
Kakani,468,2016,district,Kakani,local,268
Shivapuri,469,2016,district,Shivapuri,local,268
Pancheswar,47,2016,district,Pancheswar,local,2132
Belkotgadhi,470,2016,district,Belkotgadhi,local,268
Suryagadhi,471,2016,district,Suryagadhi,local,268
Likhu,472,2016,district,Likhu,local,268
Champadevi,473,2016,district,Champadevi,local,1809
Sukoshi,474,2016,district,Sukoshi,local,1809
Manebhanjyang,475,2016,district,Manebhanjyang,local,1809
Chisankhugadi,476,2016,district,Chisankhugadi,local,1809
Molung,477,2016,district,Molung,local,1809
Likhu,478,2016,district,Likhu,local,1809
Khijidemba,479,2016,district,Khijidemba,local,1809
Melauli,48,2016,district,Melauli,local,2132
Siddhicharan,480,2016,district,Siddhicharan,local,1809
Rainadevi Chahara,481,2016,district,Rainadevi Chahara,local,3630
Ribdikot,482,2016,district,Ribdikot,local,3630
Tinau,483,2016,district,Tinau,local,3630
Tansen,484,2016,district,Tansen,local,3630
Bagnaskali,485,2016,district,Bagnaskali,local,3630
Mathagadhi,486,2016,district,Mathagadhi,local,3630
Rampur,487,2016,district,Rampur,local,3630
Nisdi,488,2016,district,Nisdi,local,3630
Rambha,489,2016,district,Rambha,local,3630
Surma,49,2016,district,Surma,local,2349
Purbakhola,490,2016,district,Purbakhola,local,3630
Miklajung,491,2016,district,Miklajung,local,1658
Tumbewa,492,2016,district,Tumbewa,local,1658
Kummayak,493,2016,district,Kummayak,local,1658
Galgunanda,494,2016,district,Galgunanda,local,1658
Phidim,495,2016,district,Phidim,local,1658
Falelung,496,2016,district,Falelung,local,1658
Hilihang,497,2016,district,Hilihang,local,1658
Yangwarak,498,2016,district,Yangwarak,local,1658
Jaljala,499,2016,district,Jaljala,local,3020
Ainselukharka,5,2016,district,Ainselukharka,local,1709
Bungal,50,2016,district,Bungal,local,2349
Modi,500,2016,district,Modi,local,3020
Kushma,501,2016,district,Kushma,local,3020
Bihadi,502,2016,district,Bihadi,local,3020
Painyu,503,2016,district,Painyu,local,3020
Falebas,504,2016,district,Falebas,local,3020
Mahashila,505,2016,district,Mahashila,local,3020
Parsa,506,2016,district,Parsa,local,1101
Chitwan National Park,507,2016,district,Chitwan National Park,local,1101
Subarnapur,507,2016,district,Subarnapur,local,1101
Parsagadhi,508,2016,district,Parsagadhi,local,1101
Belwa,509,2016,district,Belwa,local,1101
Bithadchir,51,2016,district,Bithadchir,local,2349
Birgunj,510,2016,district,Birgunj,local,1101
Bahudaramai,511,2016,district,Bahudaramai,local,1101
Bindabasini,512,2016,district,Bindabasini,local,1101
Pakahamainpur,513,2016,district,Pakahamainpur,local,1101
Chhipaharmai,514,2016,district,Chhipaharmai,local,1101
Dhobini,515,2016,district,Dhobini,local,1101
Jagarnathpur,516,2016,district,Jagarnathpur,local,1101
Paterwasugauli,517,2016,district,Paterwasugauli,local,1101
Sakhuwa Prasauni,518,2016,district,Sakhuwa Prasauni,local,1101
Pokhariya,519,2016,district,Pokhariya,local,1101
Thalara,52,2016,district,Thalara,local,2349
Sworgadwari,520,2016,district,Sworgadwari,local,2714
Naubahini,521,2016,district,Naubahini,local,2714
Gaumukhi,522,2016,district,Gaumukhi,local,2714
Mandawi,523,2016,district,Mandawi,local,2714
Sarumarani,524,2016,district,Sarumarani,local,2714
Mallarani,525,2016,district,Mallarani,local,2714
Airawati,526,2016,district,Airawati,local,2714
Pyuthan,527,2016,district,Pyuthan,local,2714
Jhimruk,528,2016,district,Jhimruk,local,2714
Umakunda,529,2016,district,Umakunda,local,650
Kedarseu,53,2016,district,Kedarseu,local,2349
Likhu,530,2016,district,Likhu,local,650
Ramechhap,531,2016,district,Ramechhap,local,650
Manthali,532,2016,district,Manthali,local,650
Khadadevi,533,2016,district,Khadadevi,local,650
Sunapati,534,2016,district,Sunapati,local,650
Gokulganga,535,2016,district,Gokulganga,local,650
Doraamba,536,2016,district,Doraamba,local,650
Gosaikunda,537,2016,district,Gosaikunda,local,319
Parwatikunda,538,2016,district,Parwatikunda,local,319
Uttargaya,539,2016,district,Uttargaya,local,319
Durgathali,54,2016,district,Durgathali,local,2349
Kalika,540,2016,district,Kalika,local,319
Naukunda,541,2016,district,Naukunda,local,319
Chandrapur,542,2016,district,Chandrapur,local,1123
Birndaban,543,2016,district,Birndaban,local,1123
Gujara,544,2016,district,Gujara,local,1123
Phatuwa Bijayapur,545,2016,district,Phatuwa Bijayapur,local,1123
Maulapur,545,2016,district,Maulapur,local,1123
Katahariya,546,2016,district,Katahariya,local,1123
Dawahi Gonahi,547,2016,district,Dawahi Gonahi,local,1123
Baudhimal,548,2016,district,Baudhimal,local,1123
Madhav Narayan,549,2016,district,Madhav Narayan,local,1123
Chabispathivera,55,2016,district,Chabispathivera,local,2349
Garuda,550,2016,district,Garuda,local,1123
Gadhimai,550,2016,district,Gadhimai,local,1123
Paroha,552,2016,district,Paroha,local,1123
Ishanath,553,2016,district,Ishanath,local,1123
Rajpur,554,2016,district,Rajpur,local,1123
Gaur,555,2016,district,Gaur,local,1123
Durga Bagwati,556,2016,district,Durga Bagwati,local,1123
Thawang,557,2016,district,Thawang,local,2785
Duikholi,558,2016,district,Duikholi,local,2785
Triveni,559,2016,district,Triveni,local,2785
Jayaprithivi,56,2016,district,Jayaprithivi,local,2349
Lungri,560,2016,district,Lungri,local,2785
Sukidaha,561,2016,district,Sukidaha,local,2785
Madi,562,2016,district,Madi,local,2785
Runtigadhi,563,2016,district,Runtigadhi,local,2785
Rolpa,564,2016,district,Rolpa,local,2785
Sunchhahari,565,2016,district,Sunchhahari,local,2785
Suwarnabati,566,2016,district,Suwarnabati,local,2785
Banfikot,567,2016,district,Banfikot,local,2807
Aathbiskot,568,2016,district,Aathbiskot,local,2807
Musikot,569,2016,district,Musikot,local,2807
Masta,57,2016,district,Masta,local,2349
Tribeni,570,2016,district,Tribeni,local,2807
Chaurjahari,571,2016,district,Chaurjahari,local,2807
Sani Veri,572,2016,district,Sani Veri,local,2807
Dhorpatan Hunting Reserve,573,2016,district,Dhorpatan Hunting Reserve,local,2807
Putha Uttarganga,574,2016,district,Putha Uttarganga,local,2807
Bhume,575,2016,district,Bhume,local,2807
Sisne Gaunpalika,576,2016,district,Sisne Gaunpalika,local,2807
Sainamaina,578,2016,district,Sainamaina,local,3703
Butwal,579,2016,district,Butwal,local,3703
Talkot,58,2016,district,Talkot,local,2349
Devdaha,580,2016,district,Devdaha,local,3703
Rohini,581,2016,district,Rohini,local,3703
Omsatiya,582,2016,district,Omsatiya,local,3703
Kanchan,583,2016,district,Kanchan,local,3703
Gaidahawa,584,2016,district,Gaidahawa,local,3703
Suddhodhan,585,2016,district,Suddhodhan,local,3703
Siyari,586,2016,district,Siyari,local,3703
Tillotama,587,2016,district,Tillotama,local,3703
Sammarimai,588,2016,district,Sammarimai,local,3703
Sammarimai,589,2016,district,Sammarimai,local,3703
Khaptachhanna,59,2016,district,Khaptachhanna,local,2349
Marchawari,590,2016,district,Marchawari,local,3703
Mayadevi,591,2016,district,Mayadevi,local,3703
Lumbini Sanskritik,592,2016,district,Lumbini Sanskritik,local,3703
Siddharthanagar,593,2016,district,Siddharthanagar,local,3703
Bangad Kupinde,594,2016,district,Bangad Kupinde,local,2856
Kalimati,595,2016,district,Kalimati,local,2856
Sarada,596,2016,district,Sarada,local,2856
Dhorchaur,597,2016,district,Dhorchaur,local,2856
Kumakh Malika,598,2016,district,Kumakh Malika,local,2856
Bagchaur,599,2016,district,Bagchaur,local,2856
Diprung,6,2016,district,Diprung,local,1709
Khaptad National Park,60,2016,district,Khaptad National Park,local,2349
Darma,600,2016,district,Darma,local,2856
Chhatreswari,601,2016,district,Chhatreswari,local,2856
Kapurkot,602,2016,district,Kapurkot,local,2856
Tribeni,603,2016,district,Tribeni,local,2856
Chainpur,604,2016,district,Chainpur,local,1394
Dharmadevi,605,2016,district,Dharmadevi,local,1394
Madi,606,2016,district,Madi,local,1394
Panchakhapan,607,2016,district,Panchakhapan,local,1394
Sabhapokhari,608,2016,district,Sabhapokhari,local,1394
Khandbari,609,2016,district,Khandbari,local,1394
Kanda,61,2016,district,Kanda,local,2349
Chichila,610,2016,district,Chichila,local,1394
Silichong,611,2016,district,Silichong,local,1394
Makalu,612,2016,district,Makalu,local,1394
Bhotkhola,613,2016,district,Bhotkhola,local,1394
Makalu,614,2016,district,Makalu,local,1394
Surunga,615,2016,district,Surunga,local,1910
Bode Barsain,616,2016,district,Bode Barsain,local,1910
Hanumannagar Kankalan,617,2016,district,Hanumannagar Kankalan,local,1910
Tirahut,618,2016,district,Tirahut,local,1910
Saptakoshi,619,2016,district,Saptakoshi,local,1910
Chhededaha,62,2016,district,Chhededaha,local,2407
Krishna Sawaran,620,2016,district,Krishna Sawaran,local,1910
Kanchanrup,621,2016,district,Kanchanrup,local,1910
Rupani,622,2016,district,Rupani,local,1910
Bishnupur,623,2016,district,Bishnupur,local,1910
Chhinnamasta,624,2016,district,Chhinnamasta,local,1910
Tilathi Koiladi,625,2016,district,Tilathi Koiladi,local,1910
Rajbiraj,626,2016,district,Rajbiraj,local,1910
Mahadewa,627,2016,district,Mahadewa,local,1910
Khadak,628,2016,district,Khadak,local,1910
Koshi Tappu,629,2016,district,Koshi Tappu,local,1910
Budhiganga,63,2016,district,Budhiganga,local,2407
Dakneshwari,630,2016,district,Dakneshwari,local,1910
Shambhunath,630,2016,district,Shambhunath,local,1910
Belhi Chapena,630,2016,district,Belhi Chapena,local,1910
Balara,631,2016,district,Balara,local,763
Ramnagar,632,2016,district,Ramnagar,local,763
Gaudeta,633,2016,district,Gaudeta,local,763
Bishnu,634,2016,district,Bishnu,local,763
Kabilasi,635,2016,district,Kabilasi,local,763
Chandranagar,636,2016,district,Chandranagar,local,763
Bramhapuri,637,2016,district,Bramhapuri,local,763
Haripurwa,638,2016,district,Haripurwa,local,763
Chakraghatta,639,2016,district,Chakraghatta,local,763
Tribeni,64,2016,district,Tribeni,local,2407
Malangawa,640,2016,district,Malangawa,local,763
Dhankaul,641,2016,district,Dhankaul,local,763
Ishworpur,642,2016,district,Ishworpur,local,763
Lalbandi,643,2016,district,Lalbandi,local,763
Bagmati,644,2016,district,Bagmati,local,763
Hariwan,645,2016,district,Hariwan,local,763
Barahathawa,646,2016,district,Barahathawa,local,763
Haripur,647,2016,district,Haripur,local,763
Hariharpurgadhi,648,2016,district,Hariharpurgadhi,local,829
Marin,649,2016,district,Marin,local,829
Badimalika,65,2016,district,Badimalika,local,2407
Ghyanglekh,650,2016,district,Ghyanglekh,local,829
Kamalamai,651,2016,district,Kamalamai,local,829
Sunkoshi,652,2016,district,Sunkoshi,local,829
Golanjor,653,2016,district,Golanjor,local,829
Dudhouli,654,2016,district,Dudhouli,local,829
Tinpatan,655,2016,district,Tinpatan,local,829
Phikkal,656,2016,district,Phikkal,local,829
Jugal,657,2016,district,Jugal,local,81
Bhotekoshi,658,2016,district,Bhotekoshi,local,81
Panchpokhari Thangpal,659,2016,district,Panchpokhari Thangpal,local,81
Pandav Ghupa,66,2016,district,Pandav Ghupa,local,2407
Helambu,660,2016,district,Helambu,local,81
Barhabise,661,2016,district,Barhabise,local,81
Balefi,662,2016,district,Balefi,local,81
Chautara Sangachokgadhi,663,2016,district,Chautara Sangachokgadhi,local,81
Melamchi,664,2016,district,Melamchi,local,81
Indrawati,665,2016,district,Indrawati,local,81
Lisangkhu Pakhar,666,2016,district,Lisangkhu Pakhar,local,81
Tripurasundari,667,2016,district,Tripurasundari,local,81
Sunkoshi,668,2016,district,Sunkoshi,local,81
Karjanha,669,2016,district,Karjanha,local,2001
Swami Kartik,67,2016,district,Swami Kartik,local,2407
Sukhipur,671,2016,district,Sukhipur,local,2001
Aurahi,671,2016,district,Aurahi,local,2001
Arnama,671,2016,district,Arnama,local,2001
Bishnupur,672,2016,district,Bishnupur,local,2001
Narha,672,2016,district,Narha,local,2001
Golbazar,673,2016,district,Golbazar,local,2001
Dhangadhimai,674,2016,district,Dhangadhimai,local,2001
Lahan,675,2016,district,Lahan,local,2001
Mirchaiya,676,2016,district,Mirchaiya,local,2001
Kalyanpur,676,2016,district,Kalyanpur,local,2001
Laxmi Patari,678,2016,district,Laxmi Patari,local,2001
Sakhuwa Nankarkatti,678,2016,district,Sakhuwa Nankarkatti,local,2001
Bariyarpatti,678,2016,district,Bariyarpatti,local,2001
Bhagawanpur,679,2016,district,Bhagawanpur,local,2001
Nawarajpur,679,2016,district,Nawarajpur,local,2001
Himali,68,2016,district,Himali,local,2407
Siraha,680,2016,district,Siraha,local,2001
Siraha,680,2016,district,Siraha,local,2001
Likhupike,681,2016,district,Likhupike,local,2050
Solududhkunda,682,2016,district,Solududhkunda,local,2050
Nechasalyan,683,2016,district,Nechasalyan,local,2050
Dudhkaushika,684,2016,district,Dudhkaushika,local,2050
Khumbu Pasanglamhu,685,2016,district,Khumbu Pasanglamhu,local,2050
Dudhkoshi,686,2016,district,Dudhkoshi,local,2050
Mahakulung,687,2016,district,Mahakulung,local,2050
Sotang,688,2016,district,Sotang,local,2050
Koshi Tappu,689,2016,district,Koshi Tappu,local,1467
Budhinanda,69,2016,district,Budhinanda,local,2407
Koshi,690,2016,district,Koshi,local,1467
Barah,691,2016,district,Barah,local,1467
Dharan,692,2016,district,Dharan,local,1467
Itahari,693,2016,district,Itahari,local,1467
Barju,694,2016,district,Barju,local,1467
Gadhi,695,2016,district,Gadhi,local,1467
Harinagara,696,2016,district,Harinagara,local,1467
Duhabi,697,2016,district,Duhabi,local,1467
Ramdhuni,698,2016,district,Ramdhuni,local,1467
Inaruwa,699,2016,district,Inaruwa,local,1467
Sakela,7,2016,district,Sakela,local,1709
Gaumul,70,2016,district,Gaumul,local,2407
Bhokraha,700,2016,district,Bhokraha,local,1467
Dewanganj,701,2016,district,Dewanganj,local,1467
Simta,702,2016,district,Simta,local,2618
Chingad,703,2016,district,Chingad,local,2618
Gurbhakot,704,2016,district,Gurbhakot,local,2618
Bheriganga,705,2016,district,Bheriganga,local,2618
Lekbeshi,706,2016,district,Lekbeshi,local,2618
Barahtaal,707,2016,district,Barahtaal,local,2618
Panchpuri,708,2016,district,Panchpuri,local,2618
Chaukune,709,2016,district,Chaukune,local,2618
Baijanath,71,2016,district,Baijanath,local,2530
Birendranagar,710,2016,district,Birendranagar,local,2618
Kaligandagkii,711,2016,district,Kaligandagkii,local,3227
Putalibazar,712,2016,district,Putalibazar,local,3227
Arjunchaupri,713,2016,district,Arjunchaupri,local,3227
Bhirkot,714,2016,district,Bhirkot,local,3227
Galyang,715,2016,district,Galyang,local,3227
Chapakot,716,2016,district,Chapakot,local,3227
Biruwa,717,2016,district,Biruwa,local,3227
Aandhikhola,718,2016,district,Aandhikhola,local,3227
Waling,719,2016,district,Waling,local,3227
Khajura,72,2016,district,Khajura,local,2530
Phedikhola,720,2016,district,Phedikhola,local,3227
Harinas,721,2016,district,Harinas,local,3227
Shuklagandaki,722,2016,district,Shuklagandaki,local,3324
Rhising,723,2016,district,Rhising,local,3324
Ghiring,724,2016,district,Ghiring,local,3324
Bhimad,725,2016,district,Bhimad,local,3324
Myagde,726,2016,district,Myagde,local,3324
Byas,727,2016,district,Byas,local,3324
Bhanu,728,2016,district,Bhanu,local,3324
Bandipur,729,2016,district,Bandipur,local,3324
Janaki,73,2016,district,Janaki,local,2530
Aabunkhareni,730,2016,district,Aabunkhareni,local,3324
Devghat,731,2016,district,Devghat,local,3324
Meringden,732,2016,district,Meringden,local,1658
Maiwakhola,733,2016,district,Maiwakhola,local,1658
Aathrai Tribeni,734,2016,district,Aathrai Tribeni,local,1658
Meringden,735,2016,district,Meringden,local,1658
Sidingba,736,2016,district,Sidingba,local,1658
Yangwarak,737,2016,district,Yangwarak,local,1658
Phungling,738,2016,district,Phungling,local,1658
Sirijangha,739,2016,district,Sirijangha,local,1658
Narainapur,74,2016,district,Narainapur,local,2530
Phaktanglung,740,2016,district,Phaktanglung,local,1658
Mikwakhola,741,2016,district,Mikwakhola,local,1658
Menchhayam,742,2016,district,Menchhayam,local,1475
Phedap,743,2016,district,Phedap,local,1475
Aathrai,744,2016,district,Aathrai,local,1475
Myanglung,745,2016,district,Myanglung,local,1475
Laliguras,746,2016,district,Laliguras,local,1475
Chhathar,747,2016,district,Chhathar,local,1475
Koshi Tappu,748,2016,district,Koshi Tappu,local,2123
Katari,749,2016,district,Katari,local,2123
Kohalpur,75,2016,district,Kohalpur,local,2530
Udayapurgadhi,750,2016,district,Udayapurgadhi,local,2123
Rautamai,751,2016,district,Rautamai,local,2123
Tapli,752,2016,district,Tapli,local,2123
Sunkoshi,753,2016,district,Sunkoshi,local,2123
Triyuga,754,2016,district,Triyuga,local,2123
Chaudandigadi,755,2016,district,Chaudandigadi,local,2123
Belaka,756,2016,district,Belaka,local,2123
Raptisonari,76,2016,district,Raptisonari,local,2530
Nepalganj,77,2016,district,Nepalganj,local,2530
Duduwa,78,2016,district,Duduwa,local,2530
Pacharauta,79,2016,district,Pacharauta,local,5555
Khotehang,8,2016,district,Khotehang,local,1709
Simraungadh,80,2016,district,Simraungadh,local,5555
Suwarna,81,2016,district,Suwarna,local,5555
Devtal,82,2016,district,Devtal,local,5555
Mahagadhimai,83,2016,district,Mahagadhimai,local,5555
Baragadhi,84,2016,district,Baragadhi,local,5555
Jitpur Simara,85,2016,district,Jitpur Simara,local,5555
Nijgadh,86,2016,district,Nijgadh,local,5555
Karaiyamai,87,2016,district,Karaiyamai,local,5555
Kolhabi,88,2016,district,Kolhabi,local,5555
Adarshkotwal,89,2016,district,Adarshkotwal,local,5555
Barahapokhari,9,2016,district,Barahapokhari,local,1709
Parwanipur,90,2016,district,Parwanipur,local,5555
Prasauni,91,2016,district,Prasauni,local,5555
Pheta,92,2016,district,Pheta,local,5555
Kaliya,93,2016,district,Kaliya,local,5555
Bardiya,94,2016,district,Bardiya,local,2593
Gulariya,95,2016,district,Gulariya,local,2593
Badhaiyatal,96,2016,district,Badhaiyatal,local,2593
Madhuwan,97,2016,district,Madhuwan,local,2593
Thakurbaba,98,2016,district,Thakurbaba,local,2593
Rajapur,99,2016,district,Rajapur,local,2593
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

