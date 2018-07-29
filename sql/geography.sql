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
Kathmandu,100,2016,province,Kathmandu,district,pro-3
Makwanpur,1006,2016,province,Makwanpur,district,pro-3
Parsa,1101,2016,province,Parsa,district,pro-2
Rautahat,1123,2016,province,Rautahat,district,pro-2
Bhojpur,1236,2016,province,Bhojpur,district,pro-1
Dhankuta,1299,2016,province,Dhankuta,district,pro-1
Morang,1326,2016,province,Morang,district,pro-1
Sankhuwasabha,1394,2016,province,Sankhuwasabha,district,pro-1
Sunsari,1467,2016,province,Sunsari,district,pro-1
Terathum,1475,2016,province,Terathum,district,
Ilam,1538,2016,province,Ilam,district,pro-1
Jhapa,1581,2016,province,Jhapa,district,pro-1
Panchthar,1658,2016,province,Panchthar,district,pro-1
Taplejung,1659,2016,province,Taplejung,district,pro-1
Khotang,1709,2016,province,Khotang,district,pro-1
Okhaldhunga,1809,2016,province,Okhaldhunga,district,pro-1
Kavrepalanchok,190,2016,province,Kavrepalanchok,district,
Saptari,1910,2016,province,Saptari,district,pro-2
Bhaktapur,2,2016,province,Bhaktapur,district,pro-3
Siraha,2001,2016,province,Siraha,district,pro-2
Solukhumbu,2050,2016,province,Solukhumbu,district,pro-1
Udayapur,2123,2016,province,Udayapur,district,pro-1
Baitadi,2132,2016,province,Baitadi,district,pro-7
Dadeldhura,2192,2016,province,Dadeldhura,district,pro-7
Darchula,2221,2016,province,Darchula,district,pro-7
Kanchanpur,2269,2016,province,Kanchanpur,district,pro-7
Achham,2329,2016,province,Achham,district,pro-7
Bajhang,2349,2016,province,Bajhang,district,pro-7
Bajura,2407,2016,province,Bajura,district,pro-7
Lalitpur,244,2016,province,Lalitpur,district,pro-3
Doti,2440,2016,province,Doti,district,pro-7
Kailali,2503,2016,province,Kailali,district,pro-7
Banke,2530,2016,province,Banke,district,pro-5
Bardiya,2593,2016,province,Bardiya,district,pro-5
Surkhet,2618,2016,province,Surkhet,district,pro-6
Dang,2671,2016,province,Dang,district,pro-5
Nuwakot,268,2016,province,Nuwakot,district,pro-3
Pyuthan,2714,2016,province,Pyuthan,district,pro-5
Rolpa,2785,2016,province,Rolpa,district,pro-5
Rukum,2807,2016,province,Rukum,district,
Salyan,2856,2016,province,Salyan,district,pro-6
Baglung,2890,2016,province,Baglung,district,pro-4
Mustang,2920,2016,province,Mustang,district,pro-4
Myagdi,2972,2016,province,Myagdi,district,pro-4
Parbat,3020,2016,province,Parbat,district,pro-4
Gorkha,3077,2016,province,Gorkha,district,pro-4
Kaski,3111,2016,province,Kaski,district,pro-4
Rasuwa,319,2016,province,Rasuwa,district,pro-3
Lamjung,3190,2016,province,Lamjung,district,pro-4
Manag,3212,2016,province,Manag,district,
Syangja,3227,2016,province,Syangja,district,pro-4
Tanahun,3324,2016,province,Tanahun,district,
Arghakhanchi,3357,2016,province,Arghakhanchi,district,pro-5
Gulmi,3427,2016,province,Gulmi,district,pro-5
Kapilbastu,3487,2016,province,Kapilbastu,district,
Nawalparasi,3579,2016,province,Nawalparasi,district,
Nawalparasi,3585,2016,province,Nawalparasi,district,
Palpa,3630,2016,province,Palpa,district,pro-5
Rupandehi,3703,2016,province,Rupandehi,district,pro-5
Rupandehi,3715,2016,province,Rupandehi,district,pro-5
Humla,3738,2016,province,Humla,district,pro-6
Mugu,3746,2016,province,Mugu,district,pro-6
Dolpa,3751,2016,province,Dolpa,district,pro-6
Jumla,3759,2016,province,Jumla,district,pro-6
Kalikot,3768,2016,province,Kalikot,district,pro-6
Jajarkot,3783,2016,province,Jajarkot,district,pro-6
Dailekh,3792,2016,province,Dailekh,district,pro-6
Dhanusa,496,2016,province,Dhanusa,district,pro-2
Dhading,51,2016,province,Dhading,district,pro-3
Dolakha,528,2016,province,Dolakha,district,pro-3
Bara,5555,2016,province,Bara,district,pro-2
Mahottari,614,2016,province,Mahottari,district,pro-2
Ramechhap,650,2016,province,Ramechhap,district,pro-3
Sarlahi,763,2016,province,Sarlahi,district,pro-2
Sindhupalchowk,81,2016,province,Sindhupalchowk,district,
Sindhuli,829,2016,province,Sindhuli,district,pro-3
Chitwan,953,2016,province,Chitwan,district,pro-3
Halesi Tuwachung,loc-1,2016,district,Halesi Tuwachung,local,dis-1709
Jantedhunga,loc-10,2016,district,Jantedhunga,local,dis-1709
Geruwa,loc-100,2016,district,Geruwa,local,dis-2593
Barbardiya,loc-101,2016,district,Barbardiya,local,dis-2593
Bansagadhi,loc-102,2016,district,Bansagadhi,local,dis-2593
Bansagadhi,loc-103,2016,district,Bansagadhi,local,dis-2593
Bhaktapur,loc-104,2016,district,Bhaktapur,local,dis-2
Madhyapur Thimi,loc-105,2016,district,Madhyapur Thimi,local,dis-2
Changunarayan,loc-106,2016,district,Changunarayan,local,dis-2
Suryabinayak,loc-107,2016,district,Suryabinayak,local,dis-2
Salpasilichho,loc-108,2016,district,Salpasilichho,local,dis-1236
Shadananda,loc-109,2016,district,Shadananda,local,dis-1236
Sanphebagar,loc-11,2016,district,Sanphebagar,local,dis-2329
Arun,loc-110,2016,district,Arun,local,dis-1236
Ramprasad Rai,loc-111,2016,district,Ramprasad Rai,local,dis-1236
Aamchowk,loc-112,2016,district,Aamchowk,local,dis-1236
Hatuwagadhi,loc-113,2016,district,Hatuwagadhi,local,dis-1236
Bhojpur,loc-114,2016,district,Bhojpur,local,dis-1236
Tyamkemaiyung,loc-115,2016,district,Tyamkemaiyung,local,dis-1236
Pauwadungma,loc-116,2016,district,Pauwadungma,local,dis-1236
Ichchhyakamana,loc-117,2016,district,Ichchhyakamana,local,dis-953
Ratnanagar,loc-118,2016,district,Ratnanagar,local,dis-953
Khairahani,loc-119,2016,district,Khairahani,local,dis-953
Bannigadi Jayagadh,loc-12,2016,district,Bannigadi Jayagadh,local,dis-2329
Rapti,loc-120,2016,district,Rapti,local,dis-953
Kalika,loc-121,2016,district,Kalika,local,dis-953
Bharatpur,loc-122,2016,district,Bharatpur,local,dis-953
Chitwan National Park,loc-123,2016,district,Chitwan National Park,local,dis-953
Madi,loc-124,2016,district,Madi,local,dis-953
Amargadhi,loc-125,2016,district,Amargadhi,local,dis-2192
Ganyapadhura,loc-126,2016,district,Ganyapadhura,local,dis-2192
Nawadurga,loc-127,2016,district,Nawadurga,local,dis-2192
Ajaymeru,loc-128,2016,district,Ajaymeru,local,dis-2192
Bhageshwar,loc-129,2016,district,Bhageshwar,local,dis-2192
Mellekh,loc-13,2016,district,Mellekh,local,dis-2329
Alital,loc-130,2016,district,Alital,local,dis-2192
Parashuram,loc-131,2016,district,Parashuram,local,dis-2192
Aathbis Nagarpalika,loc-132,2016,district,Aathbis Nagarpalika,local,dis-3792
Naumule,loc-133,2016,district,Naumule,local,dis-3792
Bhagawatimai,loc-134,2016,district,Bhagawatimai,local,dis-3792
Dungeshwor,loc-135,2016,district,Dungeshwor,local,dis-3792
Gurans,loc-136,2016,district,Gurans,local,dis-3792
Dullu,loc-137,2016,district,Dullu,local,dis-3792
Thantikandh Gaunpalika,loc-138,2016,district,Thantikandh Gaunpalika,local,dis-3792
Chamunda Bindrasaini,loc-139,2016,district,Chamunda Bindrasaini,local,dis-3792
Ramaroshan,loc-14,2016,district,Ramaroshan,local,dis-2329
Narayan,loc-140,2016,district,Narayan,local,dis-3792
Bhairabi,loc-141,2016,district,Bhairabi,local,dis-3792
Mahabu,loc-142,2016,district,Mahabu,local,dis-3792
Rajpur,loc-143,2016,district,Rajpur,local,dis-2671
Gadwa,loc-144,2016,district,Gadwa,local,dis-2671
Babai,loc-145,2016,district,Babai,local,dis-2671
Shantinagar,loc-146,2016,district,Shantinagar,local,dis-2671
Dangisharan,loc-147,2016,district,Dangisharan,local,dis-2671
Tulsipur,loc-148,2016,district,Tulsipur,local,dis-2671
Ghorahi,loc-149,2016,district,Ghorahi,local,dis-2671
Chaurpati,loc-15,2016,district,Chaurpati,local,dis-2329
Lamhi,loc-150,2016,district,Lamhi,local,dis-2671
Banglachuli,loc-151,2016,district,Banglachuli,local,dis-2671
Rapti,loc-152,2016,district,Rapti,local,dis-2671
Byas,loc-153,2016,district,Byas,local,dis-2221
Naugad,loc-154,2016,district,Naugad,local,dis-2221
Mahakali,loc-155,2016,district,Mahakali,local,dis-2221
Dunhu,loc-156,2016,district,Dunhu,local,dis-2221
Malikarjun,loc-157,2016,district,Malikarjun,local,dis-2221
Lekam,loc-158,2016,district,Lekam,local,dis-2221
Shailyashikhar,loc-159,2016,district,Shailyashikhar,local,dis-2221
Mangalsen,loc-16,2016,district,Mangalsen,local,dis-2329
Marma,loc-160,2016,district,Marma,local,dis-2221
Apihimal,loc-161,2016,district,Apihimal,local,dis-2221
Khaniyabas,loc-162,2016,district,Khaniyabas,local,dis-51
Gangajamuna,loc-163,2016,district,Gangajamuna,local,dis-51
Jwalamukhi,loc-164,2016,district,Jwalamukhi,local,dis-51
Siddhalek,loc-165,2016,district,Siddhalek,local,dis-51
Benighat Rorang,loc-166,2016,district,Benighat Rorang,local,dis-51
Gajuri,loc-167,2016,district,Gajuri,local,dis-51
Netrawati,loc-168,2016,district,Netrawati,local,dis-51
Tripurasundari,loc-169,2016,district,Tripurasundari,local,dis-51
Dhakari,loc-17,2016,district,Dhakari,local,dis-2329
Thakre,loc-170,2016,district,Thakre,local,dis-51
Galchi,loc-171,2016,district,Galchi,local,dis-51
Nilkantha,loc-172,2016,district,Nilkantha,local,dis-51
Rubi Valley,loc-173,2016,district,Rubi Valley,local,dis-51
Dhunibesi,loc-174,2016,district,Dhunibesi,local,dis-51
Pakhribas,loc-175,2016,district,Pakhribas,local,dis-1299
Sagurigadhi,loc-176,2016,district,Sagurigadhi,local,dis-1299
Dhankuta,loc-177,2016,district,Dhankuta,local,dis-1299
Khalsa Chhintang Shahidbhumi,loc-178,2016,district,Khalsa Chhintang Shahidbhumi,local,dis-1299
Chhathar Jorpati,loc-179,2016,district,Chhathar Jorpati,local,dis-1299
Panchadewal Binayak,loc-18,2016,district,Panchadewal Binayak,local,dis-2329
Mahalaxmi,loc-180,2016,district,Mahalaxmi,local,dis-1299
Chaubise,loc-181,2016,district,Chaubise,local,dis-1299
Ganeshman Charnath,loc-182,2016,district,Ganeshman Charnath,local,dis-496
Mithila,loc-183,2016,district,Mithila,local,dis-496
Kamala Siddhidatri,loc-184,2016,district,Kamala Siddhidatri,local,dis-496
Janaknandani,loc-185,2016,district,Janaknandani,local,dis-496
Bideha,loc-186,2016,district,Bideha,local,dis-496
Aaurahi,loc-187,2016,district,Aaurahi,local,dis-496
Nagarain,loc-188,2016,district,Nagarain,local,dis-496
Mukhiyapatti Musarmiya,loc-189,2016,district,Mukhiyapatti Musarmiya,local,dis-496
Kamalbazar,loc-19,2016,district,Kamalbazar,local,dis-2329
Lakshminiya,loc-190,2016,district,Lakshminiya,local,dis-496
Mithila Bihari,loc-191,2016,district,Mithila Bihari,local,dis-496
Hansapur Kathapulla,loc-192,2016,district,Hansapur Kathapulla,local,dis-496
Chhireshwornath,loc-193,2016,district,Chhireshwornath,local,dis-496
Janakpur,loc-194,2016,district,Janakpur,local,dis-496
Bateshwor,loc-195,2016,district,Bateshwor,local,dis-496
Sabaila,loc-196,2016,district,Sabaila,local,dis-496
Sahidnagar,loc-197,2016,district,Sahidnagar,local,dis-496
Dhanusadham,loc-198,2016,district,Dhanusadham,local,dis-496
Bigu,loc-199,2016,district,Bigu,local,dis-528
Rupakot Majhuwagadhi,loc-2,2016,district,Rupakot Majhuwagadhi,local,dis-1709
Turmakhad,loc-20,2016,district,Turmakhad,local,dis-2329
Gaurishankar,loc-200,2016,district,Gaurishankar,local,dis-528
Jiri,loc-201,2016,district,Jiri,local,dis-528
Kalinchok,loc-202,2016,district,Kalinchok,local,dis-528
Bhimeshwor,loc-203,2016,district,Bhimeshwor,local,dis-528
Sailung,loc-204,2016,district,Sailung,local,dis-528
Melung,loc-205,2016,district,Melung,local,dis-528
Tamakoshi,loc-206,2016,district,Tamakoshi,local,dis-528
Baiteshwor,loc-207,2016,district,Baiteshwor,local,dis-528
Jagadulla,loc-208,2016,district,Jagadulla,local,dis-3751
She Foksundo,loc-209,2016,district,She Foksundo,local,dis-3751
Khaptad National Park,loc-21,2016,district,Khaptad National Park,local,dis-2329
Dolpo Buddha,loc-210,2016,district,Dolpo Buddha,local,dis-3751
Chharka Tangsong,loc-211,2016,district,Chharka Tangsong,local,dis-3751
Kaike,loc-212,2016,district,Kaike,local,dis-3751
Thuli Bheri,loc-213,2016,district,Thuli Bheri,local,dis-3751
Tripurasundari,loc-214,2016,district,Tripurasundari,local,dis-3751
Mudkechula,loc-215,2016,district,Mudkechula,local,dis-3751
Khaptad National Park,loc-216,2016,district,Khaptad National Park,local,dis-2440
Jorayal,loc-217,2016,district,Jorayal,local,dis-2440
Badikedar,loc-218,2016,district,Badikedar,local,dis-2440
Bogtan,loc-219,2016,district,Bogtan,local,dis-2440
Bhumikasthan,loc-22,2016,district,Bhumikasthan,local,dis-3357
k i Singh,loc-220,2016,district,k i Singh,local,dis-2440
Shikhar,loc-221,2016,district,Shikhar,local,dis-2440
Adharsha,loc-222,2016,district,Adharsha,local,dis-2440
Purbichauki,loc-223,2016,district,Purbichauki,local,dis-2440
Dipayal Silgadi,loc-224,2016,district,Dipayal Silgadi,local,dis-2440
Sayal,loc-225,2016,district,Sayal,local,dis-2440
Chumnuwri,loc-226,2016,district,Chumnuwri,local,dis-3077
Dharche,loc-227,2016,district,Dharche,local,dis-3077
Ajirkot,loc-228,2016,district,Ajirkot,local,dis-3077
Palungtar,loc-229,2016,district,Palungtar,local,dis-3077
Malarani,loc-23,2016,district,Malarani,local,dis-3357
Siranchok,loc-230,2016,district,Siranchok,local,dis-3077
Gandaki,loc-231,2016,district,Gandaki,local,dis-3077
Bhimsen,loc-232,2016,district,Bhimsen,local,dis-3077
Aarughat,loc-233,2016,district,Aarughat,local,dis-3077
Sulikot,loc-234,2016,district,Sulikot,local,dis-3077
Gorkha,loc-235,2016,district,Gorkha,local,dis-3077
Sahid Lakhan,loc-236,2016,district,Sahid Lakhan,local,dis-3077
Madane,loc-237,2016,district,Madane,local,dis-3427
Chatrakot,loc-238,2016,district,Chatrakot,local,dis-3427
Ruru,loc-239,2016,district,Ruru,local,dis-3427
Chattradev,loc-24,2016,district,Chattradev,local,dis-3357
Chandrakot,loc-240,2016,district,Chandrakot,local,dis-3427
Satyawati,loc-241,2016,district,Satyawati,local,dis-3427
Kaligandaki,loc-242,2016,district,Kaligandaki,local,dis-3427
Gulmidarbar,loc-243,2016,district,Gulmidarbar,local,dis-3427
Isma,loc-244,2016,district,Isma,local,dis-3427
Musikot,loc-245,2016,district,Musikot,local,dis-3427
Malika,loc-246,2016,district,Malika,local,dis-3427
Dhurkot,loc-247,2016,district,Dhurkot,local,dis-3427
Resunga,loc-248,2016,district,Resunga,local,dis-3427
Adanchuli,loc-249,2016,district,Adanchuli,local,dis-3738
Panini,loc-25,2016,district,Panini,local,dis-3357
Tanjakot,loc-250,2016,district,Tanjakot,local,dis-3738
Chankheli,loc-251,2016,district,Chankheli,local,dis-3738
Sarkegad,loc-252,2016,district,Sarkegad,local,dis-3738
Kharpunath,loc-253,2016,district,Kharpunath,local,dis-3738
Namkha,loc-254,2016,district,Namkha,local,dis-3738
Simkot,loc-255,2016,district,Simkot,local,dis-3738
Chulachuli,loc-256,2016,district,Chulachuli,local,dis-1538
Mangsebung,loc-257,2016,district,Mangsebung,local,dis-1538
Rong,loc-258,2016,district,Rong,local,dis-1538
Sandakpur,loc-259,2016,district,Sandakpur,local,dis-1538
Sitaganga,loc-26,2016,district,Sitaganga,local,dis-3357
Deumai,loc-260,2016,district,Deumai,local,dis-1538
Maijogmai,loc-261,2016,district,Maijogmai,local,dis-1538
Mai,loc-262,2016,district,Mai,local,dis-1538
Ilam,loc-263,2016,district,Ilam,local,dis-1538
Suryodaya,loc-264,2016,district,Suryodaya,local,dis-1538
Fakphokthum,loc-265,2016,district,Fakphokthum,local,dis-1538
Barekot Gaunpalika,loc-266,2016,district,Barekot Gaunpalika,local,dis-3783
Tribeni Nalagad,loc-267,2016,district,Tribeni Nalagad,local,dis-3783
Junichande,loc-268,2016,district,Junichande,local,dis-3783
Shiwalaya,loc-269,2016,district,Shiwalaya,local,dis-3783
Sandhikharka,loc-27,2016,district,Sandhikharka,local,dis-3357
Bheri,loc-270,2016,district,Bheri,local,dis-3783
Kuse,loc-271,2016,district,Kuse,local,dis-3783
Chhedagad,loc-272,2016,district,Chhedagad,local,dis-3783
Damak,loc-273,2016,district,Damak,local,dis-1581
Gauradhaha,loc-274,2016,district,Gauradhaha,local,dis-1581
Gauriganj,loc-275,2016,district,Gauriganj,local,dis-1581
Jhapa,loc-276,2016,district,Jhapa,local,dis-1581
Shivasataxi,loc-277,2016,district,Shivasataxi,local,dis-1581
Kachankawal,loc-278,2016,district,Kachankawal,local,dis-1581
Bhadrapur,loc-279,2016,district,Bhadrapur,local,dis-1581
Badigad,loc-28,2016,district,Badigad,local,dis-2890
Haldibari,loc-280,2016,district,Haldibari,local,dis-1581
Birtamod,loc-281,2016,district,Birtamod,local,dis-1581
Arjundhara,loc-282,2016,district,Arjundhara,local,dis-1581
Mechinagar,loc-283,2016,district,Mechinagar,local,dis-1581
Buddhashanti,loc-284,2016,district,Buddhashanti,local,dis-1581
Kankai,loc-285,2016,district,Kankai,local,dis-1581
Kamal,loc-286,2016,district,Kamal,local,dis-1581
Garhadashi,loc-287,2016,district,Garhadashi,local,dis-1581
Kankasundari Gaunpalika,loc-288,2016,district,Kankasundari Gaunpalika,local,dis-3759
Patarasi,loc-289,2016,district,Patarasi,local,dis-3759
Galkot,loc-29,2016,district,Galkot,local,dis-2890
Chandannath,loc-290,2016,district,Chandannath,local,dis-3759
Tatopani,loc-291,2016,district,Tatopani,local,dis-3759
Tatopani,loc-292,2016,district,Tatopani,local,dis-3759
Hima,loc-293,2016,district,Hima,local,dis-3759
Sinja,loc-294,2016,district,Sinja,local,dis-3759
Guthichaur,loc-295,2016,district,Guthichaur,local,dis-3759
Chure,loc-296,2016,district,Chure,local,dis-2503
Mohanyal,loc-297,2016,district,Mohanyal,local,dis-2503
Ghodaghodi,loc-298,2016,district,Ghodaghodi,local,dis-2503
Karnali,loc-299,2016,district,Karnali,local,dis-2503
Kepilasgadhi,loc-3,2016,district,Kepilasgadhi,local,dis-1709
Tarakhola,loc-30,2016,district,Tarakhola,local,dis-2890
Bardagariya,loc-300,2016,district,Bardagariya,local,dis-2503
Tikapur,loc-301,2016,district,Tikapur,local,dis-2503
Janaki,loc-302,2016,district,Janaki,local,dis-2503
Bhajani,loc-303,2016,district,Bhajani,local,dis-2503
Joshipur,loc-304,2016,district,Joshipur,local,dis-2503
Dhangadhi,loc-305,2016,district,Dhangadhi,local,dis-2503
Gadawari,loc-306,2016,district,Gadawari,local,dis-2503
Gauriganga,loc-307,2016,district,Gauriganga,local,dis-2503
Kailari,loc-308,2016,district,Kailari,local,dis-2503
Mahawai,loc-309,2016,district,Mahawai,local,dis-3768
Woreng,loc-31,2016,district,Woreng,local,dis-2890
Tilagufa,loc-310,2016,district,Tilagufa,local,dis-3768
Naraharinath,loc-311,2016,district,Naraharinath,local,dis-3768
Sanni Tribeni,loc-312,2016,district,Sanni Tribeni,local,dis-3768
Raskot,loc-313,2016,district,Raskot,local,dis-3768
Palata,loc-314,2016,district,Palata,local,dis-3768
Pachaljharana,loc-315,2016,district,Pachaljharana,local,dis-3768
Khandachakra,loc-316,2016,district,Khandachakra,local,dis-3768
Kalika,loc-317,2016,district,Kalika,local,dis-3768
Bhimdatta,loc-318,2016,district,Bhimdatta,local,dis-2269
Bedkot,loc-319,2016,district,Bedkot,local,dis-2269
Kathekhola,loc-32,2016,district,Kathekhola,local,dis-2890
Mahakali,loc-320,2016,district,Mahakali,local,dis-2269
Beldandi,loc-321,2016,district,Beldandi,local,dis-2269
Belauri,loc-322,2016,district,Belauri,local,dis-2269
Laljhadi,loc-323,2016,district,Laljhadi,local,dis-2269
Suklaphat,loc-324,2016,district,Suklaphat,local,dis-2269
Suklaphata,loc-325,2016,district,Suklaphata,local,dis-2269
Krishnapur,loc-326,2016,district,Krishnapur,local,dis-2269
Punarbas,loc-327,2016,district,Punarbas,local,dis-2269
Bijayanagar,loc-328,2016,district,Bijayanagar,local,dis-3487
Shivraj,loc-329,2016,district,Shivraj,local,dis-3487
Baglung,loc-33,2016,district,Baglung,local,dis-2890
Buddhabhumi,loc-330,2016,district,Buddhabhumi,local,dis-3487
Banganga,loc-331,2016,district,Banganga,local,dis-3487
Kapilvastu,loc-332,2016,district,Kapilvastu,local,dis-3487
Mayadevi,loc-333,2016,district,Mayadevi,local,dis-3487
Suddhodhan,loc-334,2016,district,Suddhodhan,local,dis-3487
Yashodhara,loc-335,2016,district,Yashodhara,local,dis-3487
Maharajgunj,loc-336,2016,district,Maharajgunj,local,dis-3487
Krishnanagar,loc-337,2016,district,Krishnanagar,local,dis-3487
Rupa,loc-338,2016,district,Rupa,local,dis-3111
Pokhara Lekhnath,loc-339,2016,district,Pokhara Lekhnath,local,dis-3111
Tamankhola,loc-34,2016,district,Tamankhola,local,dis-2890
Madi,loc-340,2016,district,Madi,local,dis-3111
Annapurna,loc-341,2016,district,Annapurna,local,dis-3111
Machhapuchchhre,loc-342,2016,district,Machhapuchchhre,local,dis-3111
Kathmandu,loc-343,2016,district,Kathmandu,local,dis-100
Kirtipur,loc-344,2016,district,Kirtipur,local,dis-100
Chandragiri,loc-345,2016,district,Chandragiri,local,dis-100
Nagarjun,loc-346,2016,district,Nagarjun,local,dis-100
Tarakeshwor,loc-347,2016,district,Tarakeshwor,local,dis-100
Tokha,loc-348,2016,district,Tokha,local,dis-100
Budhanilakantha,loc-349,2016,district,Budhanilakantha,local,dis-100
Dhorpatan,loc-35,2016,district,Dhorpatan,local,dis-2890
Gokarneshwor,loc-350,2016,district,Gokarneshwor,local,dis-100
Kageshwori Manahora,loc-351,2016,district,Kageshwori Manahora,local,dis-100
Shankharapur,loc-352,2016,district,Shankharapur,local,dis-100
Dakshinkali,loc-353,2016,district,Dakshinkali,local,dis-100
Chaurideurali,loc-354,2016,district,Chaurideurali,local,dis-190
Temal,loc-355,2016,district,Temal,local,dis-190
Bhumlu,loc-356,2016,district,Bhumlu,local,dis-190
Mandandeupur,loc-357,2016,district,Mandandeupur,local,dis-190
Panauti,loc-358,2016,district,Panauti,local,dis-190
Bethanchowk,loc-359,2016,district,Bethanchowk,local,dis-190
Nisikhola,loc-36,2016,district,Nisikhola,local,dis-2890
Khanikhola,loc-360,2016,district,Khanikhola,local,dis-190
Banepa,loc-361,2016,district,Banepa,local,dis-190
Dhulikhel,loc-362,2016,district,Dhulikhel,local,dis-190
Panchkhal,loc-363,2016,district,Panchkhal,local,dis-190
Namobuddha,loc-364,2016,district,Namobuddha,local,dis-190
Roshi,loc-365,2016,district,Roshi,local,dis-190
Mahabharat,loc-366,2016,district,Mahabharat,local,dis-190
Bagmati,loc-367,2016,district,Bagmati,local,dis-244
Konjyosom,loc-368,2016,district,Konjyosom,local,dis-244
Mahankal,loc-369,2016,district,Mahankal,local,dis-244
Dhorpatan Hunting Reserve,loc-37,2016,district,Dhorpatan Hunting Reserve,local,dis-2890
Lalitpur,loc-370,2016,district,Lalitpur,local,dis-244
Mahalaxmi,loc-371,2016,district,Mahalaxmi,local,dis-244
Godawari,loc-372,2016,district,Godawari,local,dis-244
Dudhpokhar,loc-373,2016,district,Dudhpokhar,local,dis-3190
Rainas,loc-374,2016,district,Rainas,local,dis-3190
Madhyanepal,loc-375,2016,district,Madhyanepal,local,dis-3190
Sundarbazar,loc-376,2016,district,Sundarbazar,local,dis-3190
Kwholasothar,loc-377,2016,district,Kwholasothar,local,dis-3190
Besishahar,loc-378,2016,district,Besishahar,local,dis-3190
Marsyangdi Gaunpalika,loc-379,2016,district,Marsyangdi Gaunpalika,local,dis-3190
Jaimuni,loc-38,2016,district,Jaimuni,local,dis-2890
Dordi,loc-380,2016,district,Dordi,local,dis-3190
Bardibas,loc-381,2016,district,Bardibas,local,dis-614
Gaushala,loc-382,2016,district,Gaushala,local,dis-614
Sonama,loc-383,2016,district,Sonama,local,dis-614
Ramgopalpur,loc-384,2016,district,Ramgopalpur,local,dis-614
Aurahi,loc-385,2016,district,Aurahi,local,dis-614
Bhangaha,loc-386,2016,district,Bhangaha,local,dis-614
Manra,loc-387,2016,district,Manra,local,dis-614
Ekdanra,loc-388,2016,district,Ekdanra,local,dis-614
Mahottari,loc-389,2016,district,Mahottari,local,dis-614
Purchaudi,loc-39,2016,district,Purchaudi,local,dis-2132
Jaleswor,loc-390,2016,district,Jaleswor,local,dis-614
Pipra,loc-391,2016,district,Pipra,local,dis-614
Matihani,loc-392,2016,district,Matihani,local,dis-614
Balwa,loc-393,2016,district,Balwa,local,dis-614
Loharpatti,loc-394,2016,district,Loharpatti,local,dis-614
Samsi,loc-395,2016,district,Samsi,local,dis-614
Chitwan National Park,loc-396,2016,district,Chitwan National Park,local,dis-1006
Rakshirang,loc-397,2016,district,Rakshirang,local,dis-1006
Manahari,loc-398,2016,district,Manahari,local,dis-1006
Hetauda,loc-399,2016,district,Hetauda,local,dis-1006
Lamidanda,loc-4,2016,district,Lamidanda,local,dis-1709
Dilasaini,loc-40,2016,district,Dilasaini,local,dis-2132
Makwanpurgadhi,loc-400,2016,district,Makwanpurgadhi,local,dis-1006
Bhimphedi,loc-401,2016,district,Bhimphedi,local,dis-1006
Kailash,loc-402,2016,district,Kailash,local,dis-1006
Thaha,loc-403,2016,district,Thaha,local,dis-1006
Indrasarawor,loc-404,2016,district,Indrasarawor,local,dis-1006
Bakaiya,loc-405,2016,district,Bakaiya,local,dis-1006
Parsa Wildlife Reserve,loc-406,2016,district,Parsa Wildlife Reserve,local,dis-1006
Bagmati,loc-407,2016,district,Bagmati,local,dis-1006
Neshang,loc-408,2016,district,Neshang,local,dis-3212
Narphu,loc-409,2016,district,Narphu,local,dis-3212
Patan,loc-41,2016,district,Patan,local,dis-2132
Chame,loc-410,2016,district,Chame,local,dis-3212
Nashong,loc-411,2016,district,Nashong,local,dis-3212
Sundarharicha,loc-412,2016,district,Sundarharicha,local,dis-1326
Belbari,loc-413,2016,district,Belbari,local,dis-1326
Kanepokhari,loc-414,2016,district,Kanepokhari,local,dis-1326
Budhiganga,loc-415,2016,district,Budhiganga,local,dis-1326
Gramthan,loc-416,2016,district,Gramthan,local,dis-1326
Katahari,loc-417,2016,district,Katahari,local,dis-1326
Dhanpalthan,loc-418,2016,district,Dhanpalthan,local,dis-1326
Rangeli,loc-419,2016,district,Rangeli,local,dis-1326
Shivanath,loc-42,2016,district,Shivanath,local,dis-2132
Pathrisanishchare,loc-420,2016,district,Pathrisanishchare,local,dis-1326
Miklajunga,loc-421,2016,district,Miklajunga,local,dis-1326
Sunawarshi,loc-422,2016,district,Sunawarshi,local,dis-1326
Ratuwamai,loc-423,2016,district,Ratuwamai,local,dis-1326
Jahada,loc-424,2016,district,Jahada,local,dis-1326
Uralabari,loc-425,2016,district,Uralabari,local,dis-1326
Biratnagar,loc-426,2016,district,Biratnagar,local,dis-1326
Kerabari,loc-427,2016,district,Kerabari,local,dis-1326
Letang,loc-428,2016,district,Letang,local,dis-1326
Chhayanath Rara,loc-429,2016,district,Chhayanath Rara,local,dis-3746
Dasarathchand,loc-43,2016,district,Dasarathchand,local,dis-2132
Mugum Karmarong,loc-430,2016,district,Mugum Karmarong,local,dis-3746
Khatyad,loc-431,2016,district,Khatyad,local,dis-3746
Soru,loc-432,2016,district,Soru,local,dis-3746
Lomanthang,loc-433,2016,district,Lomanthang,local,dis-2920
Dalome,loc-434,2016,district,Dalome,local,dis-2920
Barhagaun Muktichhetra,loc-435,2016,district,Barhagaun Muktichhetra,local,dis-2920
Gharapjhong,loc-436,2016,district,Gharapjhong,local,dis-2920
Thasang,loc-437,2016,district,Thasang,local,dis-2920
Annapurna,loc-438,2016,district,Annapurna,local,dis-2972
Beni,loc-439,2016,district,Beni,local,dis-2972
Dogadakedar,loc-44,2016,district,Dogadakedar,local,dis-2132
Malika,loc-440,2016,district,Malika,local,dis-2972
Mangala,loc-441,2016,district,Mangala,local,dis-2972
Raghuganga,loc-442,2016,district,Raghuganga,local,dis-2972
Dhorpatan Hunting Reserve,loc-443,2016,district,Dhorpatan Hunting Reserve,local,dis-2972
Dhawalagiri Gaunpalika,loc-444,2016,district,Dhawalagiri Gaunpalika,local,dis-2972
Chitwan National Park,loc-445,2016,district,Chitwan National Park,local,dis-3585
Bungdikali,loc-446,2016,district,Bungdikali,local,dis-3585
Bulingtar,loc-447,2016,district,Bulingtar,local,dis-3585
Gaidakot,loc-448,2016,district,Gaidakot,local,dis-3585
Devchuli,loc-449,2016,district,Devchuli,local,dis-3585
Surnaya,loc-45,2016,district,Surnaya,local,dis-2132
Hupsekot,loc-450,2016,district,Hupsekot,local,dis-3585
Kawasoti,loc-451,2016,district,Kawasoti,local,dis-3585
Madhyabindu,loc-452,2016,district,Madhyabindu,local,dis-3585
Sunwal,loc-453,2016,district,Sunwal,local,dis-3585
Palhinandan,loc-454,2016,district,Palhinandan,local,dis-3585
Pratappur,loc-455,2016,district,Pratappur,local,dis-3585
Ramgram,loc-456,2016,district,Ramgram,local,dis-3585
Sarawal,loc-457,2016,district,Sarawal,local,dis-3585
Tribenisusta,loc-458,2016,district,Tribenisusta,local,dis-3585
Bardaghat,loc-459,2016,district,Bardaghat,local,dis-3585
Sigas,loc-46,2016,district,Sigas,local,dis-2132
Binayee,loc-460,2016,district,Binayee,local,dis-3585
Kispang,loc-461,2016,district,Kispang,local,dis-268
Meghang,loc-462,2016,district,Meghang,local,dis-268
Tarkeshwar,loc-463,2016,district,Tarkeshwar,local,dis-268
Bidur,loc-464,2016,district,Bidur,local,dis-268
Tadi,loc-465,2016,district,Tadi,local,dis-268
Dupcheshwar,loc-466,2016,district,Dupcheshwar,local,dis-268
Panchakanya,loc-467,2016,district,Panchakanya,local,dis-268
Kakani,loc-468,2016,district,Kakani,local,dis-268
Shivapuri,loc-469,2016,district,Shivapuri,local,dis-268
Pancheswar,loc-47,2016,district,Pancheswar,local,dis-2132
Belkotgadhi,loc-470,2016,district,Belkotgadhi,local,dis-268
Suryagadhi,loc-471,2016,district,Suryagadhi,local,dis-268
Likhu,loc-472,2016,district,Likhu,local,dis-268
Champadevi,loc-473,2016,district,Champadevi,local,dis-1809
Sukoshi,loc-474,2016,district,Sukoshi,local,dis-1809
Manebhanjyang,loc-475,2016,district,Manebhanjyang,local,dis-1809
Chisankhugadi,loc-476,2016,district,Chisankhugadi,local,dis-1809
Molung,loc-477,2016,district,Molung,local,dis-1809
Likhu,loc-478,2016,district,Likhu,local,dis-1809
Khijidemba,loc-479,2016,district,Khijidemba,local,dis-1809
Melauli,loc-48,2016,district,Melauli,local,dis-2132
Siddhicharan,loc-480,2016,district,Siddhicharan,local,dis-1809
Rainadevi Chahara,loc-481,2016,district,Rainadevi Chahara,local,dis-3630
Ribdikot,loc-482,2016,district,Ribdikot,local,dis-3630
Tinau,loc-483,2016,district,Tinau,local,dis-3630
Tansen,loc-484,2016,district,Tansen,local,dis-3630
Bagnaskali,loc-485,2016,district,Bagnaskali,local,dis-3630
Mathagadhi,loc-486,2016,district,Mathagadhi,local,dis-3630
Rampur,loc-487,2016,district,Rampur,local,dis-3630
Nisdi,loc-488,2016,district,Nisdi,local,dis-3630
Rambha,loc-489,2016,district,Rambha,local,dis-3630
Surma,loc-49,2016,district,Surma,local,dis-2349
Purbakhola,loc-490,2016,district,Purbakhola,local,dis-3630
Miklajung,loc-491,2016,district,Miklajung,local,dis-1658
Tumbewa,loc-492,2016,district,Tumbewa,local,dis-1658
Kummayak,loc-493,2016,district,Kummayak,local,dis-1658
Galgunanda,loc-494,2016,district,Galgunanda,local,dis-1658
Phidim,loc-495,2016,district,Phidim,local,dis-1658
Falelung,loc-496,2016,district,Falelung,local,dis-1658
Hilihang,loc-497,2016,district,Hilihang,local,dis-1658
Yangwarak,loc-498,2016,district,Yangwarak,local,dis-1658
Jaljala,loc-499,2016,district,Jaljala,local,dis-3020
Ainselukharka,loc-5,2016,district,Ainselukharka,local,dis-1709
Bungal,loc-50,2016,district,Bungal,local,dis-2349
Modi,loc-500,2016,district,Modi,local,dis-3020
Kushma,loc-501,2016,district,Kushma,local,dis-3020
Bihadi,loc-502,2016,district,Bihadi,local,dis-3020
Painyu,loc-503,2016,district,Painyu,local,dis-3020
Falebas,loc-504,2016,district,Falebas,local,dis-3020
Mahashila,loc-505,2016,district,Mahashila,local,dis-3020
Parsa,loc-506,2016,district,Parsa,local,dis-1101
Chitwan National Park,loc-5070,2016,district,Chitwan National Park,local,dis-1101
Subarnapur,loc-5071,2016,district,Subarnapur,local,dis-1101
Parsagadhi,loc-508,2016,district,Parsagadhi,local,dis-1101
Belwa,loc-509,2016,district,Belwa,local,dis-1101
Bithadchir,loc-51,2016,district,Bithadchir,local,dis-2349
Birgunj,loc-510,2016,district,Birgunj,local,dis-1101
Bahudaramai,loc-511,2016,district,Bahudaramai,local,dis-1101
Bindabasini,loc-512,2016,district,Bindabasini,local,dis-1101
Pakahamainpur,loc-513,2016,district,Pakahamainpur,local,dis-1101
Chhipaharmai,loc-514,2016,district,Chhipaharmai,local,dis-1101
Dhobini,loc-515,2016,district,Dhobini,local,dis-1101
Jagarnathpur,loc-516,2016,district,Jagarnathpur,local,dis-1101
Paterwasugauli,loc-517,2016,district,Paterwasugauli,local,dis-1101
Sakhuwa Prasauni,loc-518,2016,district,Sakhuwa Prasauni,local,dis-1101
Pokhariya,loc-519,2016,district,Pokhariya,local,dis-1101
Thalara,loc-52,2016,district,Thalara,local,dis-2349
Sworgadwari,loc-520,2016,district,Sworgadwari,local,dis-2714
Naubahini,loc-521,2016,district,Naubahini,local,dis-2714
Gaumukhi,loc-522,2016,district,Gaumukhi,local,dis-2714
Mandawi,loc-523,2016,district,Mandawi,local,dis-2714
Sarumarani,loc-524,2016,district,Sarumarani,local,dis-2714
Mallarani,loc-525,2016,district,Mallarani,local,dis-2714
Airawati,loc-526,2016,district,Airawati,local,dis-2714
Pyuthan,loc-527,2016,district,Pyuthan,local,dis-2714
Jhimruk,loc-528,2016,district,Jhimruk,local,dis-2714
Umakunda,loc-529,2016,district,Umakunda,local,dis-650
Kedarseu,loc-53,2016,district,Kedarseu,local,dis-2349
Likhu,loc-530,2016,district,Likhu,local,dis-650
Ramechhap,loc-531,2016,district,Ramechhap,local,dis-650
Manthali,loc-532,2016,district,Manthali,local,dis-650
Khadadevi,loc-533,2016,district,Khadadevi,local,dis-650
Sunapati,loc-534,2016,district,Sunapati,local,dis-650
Gokulganga,loc-535,2016,district,Gokulganga,local,dis-650
Doraamba,loc-536,2016,district,Doraamba,local,dis-650
Gosaikunda,loc-537,2016,district,Gosaikunda,local,dis-319
Parwatikunda,loc-538,2016,district,Parwatikunda,local,dis-319
Uttargaya,loc-539,2016,district,Uttargaya,local,dis-319
Durgathali,loc-54,2016,district,Durgathali,local,dis-2349
Kalika,loc-540,2016,district,Kalika,local,dis-319
Naukunda,loc-541,2016,district,Naukunda,local,dis-319
Chandrapur,loc-542,2016,district,Chandrapur,local,dis-1123
Birndaban,loc-543,2016,district,Birndaban,local,dis-1123
Gujara,loc-544,2016,district,Gujara,local,dis-1123
Phatuwa Bijayapur,loc-5450,2016,district,Phatuwa Bijayapur,local,dis-1123
Maulapur,loc-5451,2016,district,Maulapur,local,dis-1123
Katahariya,loc-546,2016,district,Katahariya,local,dis-1123
Dawahi Gonahi,loc-547,2016,district,Dawahi Gonahi,local,dis-1123
Baudhimal,loc-548,2016,district,Baudhimal,local,dis-1123
Madhav Narayan,loc-549,2016,district,Madhav Narayan,local,dis-1123
Chabispathivera,loc-55,2016,district,Chabispathivera,local,dis-2349
Garuda,loc-5500,2016,district,Garuda,local,dis-1123
Gadhimai,loc-5501,2016,district,Gadhimai,local,dis-1123
Paroha,loc-552,2016,district,Paroha,local,dis-1123
Ishanath,loc-553,2016,district,Ishanath,local,dis-1123
Rajpur,loc-554,2016,district,Rajpur,local,dis-1123
Gaur,loc-555,2016,district,Gaur,local,dis-1123
Durga Bagwati,loc-556,2016,district,Durga Bagwati,local,dis-1123
Thawang,loc-557,2016,district,Thawang,local,dis-2785
Duikholi,loc-558,2016,district,Duikholi,local,dis-2785
Triveni,loc-559,2016,district,Triveni,local,dis-2785
Jayaprithivi,loc-56,2016,district,Jayaprithivi,local,dis-2349
Lungri,loc-560,2016,district,Lungri,local,dis-2785
Sukidaha,loc-561,2016,district,Sukidaha,local,dis-2785
Madi,loc-562,2016,district,Madi,local,dis-2785
Runtigadhi,loc-563,2016,district,Runtigadhi,local,dis-2785
Rolpa,loc-564,2016,district,Rolpa,local,dis-2785
Sunchhahari,loc-565,2016,district,Sunchhahari,local,dis-2785
Suwarnabati,loc-566,2016,district,Suwarnabati,local,dis-2785
Banfikot,loc-567,2016,district,Banfikot,local,dis-2807
Aathbiskot,loc-568,2016,district,Aathbiskot,local,dis-2807
Musikot,loc-569,2016,district,Musikot,local,dis-2807
Masta,loc-57,2016,district,Masta,local,dis-2349
Tribeni,loc-570,2016,district,Tribeni,local,dis-2807
Chaurjahari,loc-571,2016,district,Chaurjahari,local,dis-2807
Sani Veri,loc-572,2016,district,Sani Veri,local,dis-2807
Dhorpatan Hunting Reserve,loc-573,2016,district,Dhorpatan Hunting Reserve,local,dis-2807
Putha Uttarganga,loc-574,2016,district,Putha Uttarganga,local,dis-2807
Bhume,loc-575,2016,district,Bhume,local,dis-2807
Sisne Gaunpalika,loc-576,2016,district,Sisne Gaunpalika,local,dis-2807
None,loc-577,2016,district,None,local,dis-3703
Sainamaina,loc-578,2016,district,Sainamaina,local,dis-3703
Butwal,loc-579,2016,district,Butwal,local,dis-3703
Talkot,loc-58,2016,district,Talkot,local,dis-2349
Devdaha,loc-580,2016,district,Devdaha,local,dis-3703
Rohini,loc-581,2016,district,Rohini,local,dis-3703
Omsatiya,loc-582,2016,district,Omsatiya,local,dis-3703
Kanchan,loc-583,2016,district,Kanchan,local,dis-3703
Gaidahawa,loc-584,2016,district,Gaidahawa,local,dis-3703
Suddhodhan,loc-585,2016,district,Suddhodhan,local,dis-3703
Siyari,loc-586,2016,district,Siyari,local,dis-3703
Tillotama,loc-587,2016,district,Tillotama,local,dis-3703
Sammarimai,loc-588,2016,district,Sammarimai,local,dis-3703
Sammarimai,loc-589,2016,district,Sammarimai,local,dis-3703
Khaptachhanna,loc-59,2016,district,Khaptachhanna,local,dis-2349
Marchawari,loc-590,2016,district,Marchawari,local,dis-3703
Mayadevi,loc-591,2016,district,Mayadevi,local,dis-3703
Lumbini Sanskritik,loc-592,2016,district,Lumbini Sanskritik,local,dis-3703
Siddharthanagar,loc-593,2016,district,Siddharthanagar,local,dis-3703
Bangad Kupinde,loc-594,2016,district,Bangad Kupinde,local,dis-2856
Kalimati,loc-595,2016,district,Kalimati,local,dis-2856
Sarada,loc-596,2016,district,Sarada,local,dis-2856
Dhorchaur,loc-597,2016,district,Dhorchaur,local,dis-2856
Kumakh Malika,loc-598,2016,district,Kumakh Malika,local,dis-2856
Bagchaur,loc-599,2016,district,Bagchaur,local,dis-2856
Diprung,loc-6,2016,district,Diprung,local,dis-1709
Khaptad National Park,loc-60,2016,district,Khaptad National Park,local,dis-2349
Darma,loc-600,2016,district,Darma,local,dis-2856
Chhatreswari,loc-601,2016,district,Chhatreswari,local,dis-2856
Kapurkot,loc-602,2016,district,Kapurkot,local,dis-2856
Tribeni,loc-603,2016,district,Tribeni,local,dis-2856
Chainpur,loc-604,2016,district,Chainpur,local,dis-1394
Dharmadevi,loc-605,2016,district,Dharmadevi,local,dis-1394
Madi,loc-606,2016,district,Madi,local,dis-1394
Panchakhapan,loc-607,2016,district,Panchakhapan,local,dis-1394
Sabhapokhari,loc-608,2016,district,Sabhapokhari,local,dis-1394
Khandbari,loc-609,2016,district,Khandbari,local,dis-1394
Kanda,loc-61,2016,district,Kanda,local,dis-2349
Chichila,loc-610,2016,district,Chichila,local,dis-1394
Silichong,loc-611,2016,district,Silichong,local,dis-1394
Makalu,loc-612,2016,district,Makalu,local,dis-1394
Bhotkhola,loc-613,2016,district,Bhotkhola,local,dis-1394
Makalu,loc-614,2016,district,Makalu,local,dis-1394
Surunga,loc-615,2016,district,Surunga,local,dis-1910
Bode Barsain,loc-616,2016,district,Bode Barsain,local,dis-1910
Hanumannagar Kankalan,loc-617,2016,district,Hanumannagar Kankalan,local,dis-1910
Tirahut,loc-618,2016,district,Tirahut,local,dis-1910
Saptakoshi,loc-619,2016,district,Saptakoshi,local,dis-1910
Chhededaha,loc-62,2016,district,Chhededaha,local,dis-2407
Krishna Sawaran,loc-620,2016,district,Krishna Sawaran,local,dis-1910
Kanchanrup,loc-621,2016,district,Kanchanrup,local,dis-1910
Rupani,loc-622,2016,district,Rupani,local,dis-1910
Bishnupur,loc-623,2016,district,Bishnupur,local,dis-1910
Chhinnamasta,loc-624,2016,district,Chhinnamasta,local,dis-1910
Tilathi Koiladi,loc-625,2016,district,Tilathi Koiladi,local,dis-1910
Rajbiraj,loc-626,2016,district,Rajbiraj,local,dis-1910
Mahadewa,loc-627,2016,district,Mahadewa,local,dis-1910
Khadak,loc-628,2016,district,Khadak,local,dis-1910
Koshi Tappu,loc-629,2016,district,Koshi Tappu,local,dis-1910
Budhiganga,loc-63,2016,district,Budhiganga,local,dis-2407
Dakneshwari,loc-6300,2016,district,Dakneshwari,local,dis-1910
Shambhunath,loc-6301,2016,district,Shambhunath,local,dis-1910
Belhi Chapena,loc-6302,2016,district,Belhi Chapena,local,dis-1910
Balara,loc-631,2016,district,Balara,local,dis-763
Ramnagar,loc-632,2016,district,Ramnagar,local,dis-763
Gaudeta,loc-633,2016,district,Gaudeta,local,dis-763
Bishnu,loc-634,2016,district,Bishnu,local,dis-763
Kabilasi,loc-635,2016,district,Kabilasi,local,dis-763
Chandranagar,loc-636,2016,district,Chandranagar,local,dis-763
Bramhapuri,loc-637,2016,district,Bramhapuri,local,dis-763
Haripurwa,loc-638,2016,district,Haripurwa,local,dis-763
Chakraghatta,loc-639,2016,district,Chakraghatta,local,dis-763
Tribeni,loc-64,2016,district,Tribeni,local,dis-2407
Malangawa,loc-640,2016,district,Malangawa,local,dis-763
Dhankaul,loc-641,2016,district,Dhankaul,local,dis-763
Ishworpur,loc-642,2016,district,Ishworpur,local,dis-763
Lalbandi,loc-643,2016,district,Lalbandi,local,dis-763
Bagmati,loc-644,2016,district,Bagmati,local,dis-763
Hariwan,loc-645,2016,district,Hariwan,local,dis-763
Barahathawa,loc-646,2016,district,Barahathawa,local,dis-763
Haripur,loc-647,2016,district,Haripur,local,dis-763
Hariharpurgadhi,loc-648,2016,district,Hariharpurgadhi,local,dis-829
Marin,loc-649,2016,district,Marin,local,dis-829
Badimalika,loc-65,2016,district,Badimalika,local,dis-2407
Ghyanglekh,loc-650,2016,district,Ghyanglekh,local,dis-829
Kamalamai,loc-651,2016,district,Kamalamai,local,dis-829
Sunkoshi,loc-652,2016,district,Sunkoshi,local,dis-829
Golanjor,loc-653,2016,district,Golanjor,local,dis-829
Dudhouli,loc-654,2016,district,Dudhouli,local,dis-829
Tinpatan,loc-655,2016,district,Tinpatan,local,dis-829
Phikkal,loc-656,2016,district,Phikkal,local,dis-829
Jugal,loc-657,2016,district,Jugal,local,dis-81
Bhotekoshi,loc-658,2016,district,Bhotekoshi,local,dis-81
Panchpokhari Thangpal,loc-659,2016,district,Panchpokhari Thangpal,local,dis-81
Pandav Ghupa,loc-66,2016,district,Pandav Ghupa,local,dis-2407
Helambu,loc-660,2016,district,Helambu,local,dis-81
Barhabise,loc-661,2016,district,Barhabise,local,dis-81
Balefi,loc-662,2016,district,Balefi,local,dis-81
Chautara Sangachokgadhi,loc-663,2016,district,Chautara Sangachokgadhi,local,dis-81
Melamchi,loc-664,2016,district,Melamchi,local,dis-81
Indrawati,loc-665,2016,district,Indrawati,local,dis-81
Lisangkhu Pakhar,loc-666,2016,district,Lisangkhu Pakhar,local,dis-81
Tripurasundari,loc-667,2016,district,Tripurasundari,local,dis-81
Sunkoshi,loc-668,2016,district,Sunkoshi,local,dis-81
Karjanha,loc-669,2016,district,Karjanha,local,dis-2001
Swami Kartik,loc-67,2016,district,Swami Kartik,local,dis-2407
Sukhipur,loc-6710,2016,district,Sukhipur,local,dis-2001
Aurahi,loc-6711,2016,district,Aurahi,local,dis-2001
Arnama,loc-6712,2016,district,Arnama,local,dis-2001
Bishnupur,loc-6720,2016,district,Bishnupur,local,dis-2001
Narha,loc-6721,2016,district,Narha,local,dis-2001
Golbazar,loc-673,2016,district,Golbazar,local,dis-2001
Dhangadhimai,loc-674,2016,district,Dhangadhimai,local,dis-2001
Lahan,loc-675,2016,district,Lahan,local,dis-2001
Mirchaiya,loc-6760,2016,district,Mirchaiya,local,dis-2001
Kalyanpur,loc-6761,2016,district,Kalyanpur,local,dis-2001
Laxmi Patari,loc-6780,2016,district,Laxmi Patari,local,dis-2001
Sakhuwa Nankarkatti,loc-6781,2016,district,Sakhuwa Nankarkatti,local,dis-2001
Bariyarpatti,loc-6782,2016,district,Bariyarpatti,local,dis-2001
Bhagawanpur,loc-6790,2016,district,Bhagawanpur,local,dis-2001
Nawarajpur,loc-6791,2016,district,Nawarajpur,local,dis-2001
Himali,loc-68,2016,district,Himali,local,dis-2407
Siraha,loc-680,2016,district,Siraha,local,dis-2001
Likhupike,loc-681,2016,district,Likhupike,local,dis-2050
Solududhkunda,loc-682,2016,district,Solududhkunda,local,dis-2050
Nechasalyan,loc-683,2016,district,Nechasalyan,local,dis-2050
Dudhkaushika,loc-684,2016,district,Dudhkaushika,local,dis-2050
Khumbu Pasanglamhu,loc-685,2016,district,Khumbu Pasanglamhu,local,dis-2050
Dudhkoshi,loc-686,2016,district,Dudhkoshi,local,dis-2050
Mahakulung,loc-687,2016,district,Mahakulung,local,dis-2050
Sotang,loc-688,2016,district,Sotang,local,dis-2050
Koshi Tappu,loc-689,2016,district,Koshi Tappu,local,dis-1467
Budhinanda,loc-69,2016,district,Budhinanda,local,dis-2407
Koshi,loc-690,2016,district,Koshi,local,dis-1467
Barah,loc-691,2016,district,Barah,local,dis-1467
Dharan,loc-692,2016,district,Dharan,local,dis-1467
Itahari,loc-693,2016,district,Itahari,local,dis-1467
Barju,loc-694,2016,district,Barju,local,dis-1467
Gadhi,loc-695,2016,district,Gadhi,local,dis-1467
Harinagara,loc-696,2016,district,Harinagara,local,dis-1467
Duhabi,loc-697,2016,district,Duhabi,local,dis-1467
Ramdhuni,loc-698,2016,district,Ramdhuni,local,dis-1467
Inaruwa,loc-699,2016,district,Inaruwa,local,dis-1467
Sakela,loc-7,2016,district,Sakela,local,dis-1709
Gaumul,loc-70,2016,district,Gaumul,local,dis-2407
Bhokraha,loc-700,2016,district,Bhokraha,local,dis-1467
Dewanganj,loc-701,2016,district,Dewanganj,local,dis-1467
Simta,loc-702,2016,district,Simta,local,dis-2618
Chingad,loc-703,2016,district,Chingad,local,dis-2618
Gurbhakot,loc-704,2016,district,Gurbhakot,local,dis-2618
Bheriganga,loc-705,2016,district,Bheriganga,local,dis-2618
Lekbeshi,loc-706,2016,district,Lekbeshi,local,dis-2618
Barahtaal,loc-707,2016,district,Barahtaal,local,dis-2618
Panchpuri,loc-708,2016,district,Panchpuri,local,dis-2618
Chaukune,loc-709,2016,district,Chaukune,local,dis-2618
Baijanath,loc-71,2016,district,Baijanath,local,dis-2530
Birendranagar,loc-710,2016,district,Birendranagar,local,dis-2618
Kaligandagkii,loc-711,2016,district,Kaligandagkii,local,dis-3227
Putalibazar,loc-712,2016,district,Putalibazar,local,dis-3227
Arjunchaupri,loc-713,2016,district,Arjunchaupri,local,dis-3227
Bhirkot,loc-714,2016,district,Bhirkot,local,dis-3227
Galyang,loc-715,2016,district,Galyang,local,dis-3227
Chapakot,loc-716,2016,district,Chapakot,local,dis-3227
Biruwa,loc-717,2016,district,Biruwa,local,dis-3227
Aandhikhola,loc-718,2016,district,Aandhikhola,local,dis-3227
Waling,loc-719,2016,district,Waling,local,dis-3227
Khajura,loc-72,2016,district,Khajura,local,dis-2530
Phedikhola,loc-720,2016,district,Phedikhola,local,dis-3227
Harinas,loc-721,2016,district,Harinas,local,dis-3227
Shuklagandaki,loc-722,2016,district,Shuklagandaki,local,dis-3324
Rhising,loc-723,2016,district,Rhising,local,dis-3324
Ghiring,loc-724,2016,district,Ghiring,local,dis-3324
Bhimad,loc-725,2016,district,Bhimad,local,dis-3324
Myagde,loc-726,2016,district,Myagde,local,dis-3324
Byas,loc-727,2016,district,Byas,local,dis-3324
Bhanu,loc-728,2016,district,Bhanu,local,dis-3324
Bandipur,loc-729,2016,district,Bandipur,local,dis-3324
Janaki,loc-73,2016,district,Janaki,local,dis-2530
Aabunkhareni,loc-730,2016,district,Aabunkhareni,local,dis-3324
Devghat,loc-731,2016,district,Devghat,local,dis-3324
Meringden,loc-732,2016,district,Meringden,local,dis-1659
Maiwakhola,loc-733,2016,district,Maiwakhola,local,dis-1659
Aathrai Tribeni,loc-734,2016,district,Aathrai Tribeni,local,dis-1659
Meringden,loc-735,2016,district,Meringden,local,dis-1659
Sidingba,loc-736,2016,district,Sidingba,local,dis-1659
Yangwarak,loc-737,2016,district,Yangwarak,local,dis-1659
Phungling,loc-738,2016,district,Phungling,local,dis-1659
Sirijangha,loc-739,2016,district,Sirijangha,local,dis-1659
Narainapur,loc-74,2016,district,Narainapur,local,dis-2530
Phaktanglung,loc-740,2016,district,Phaktanglung,local,dis-1659
Mikwakhola,loc-741,2016,district,Mikwakhola,local,dis-1659
Menchhayam,loc-742,2016,district,Menchhayam,local,dis-1475
Phedap,loc-743,2016,district,Phedap,local,dis-1475
Aathrai,loc-744,2016,district,Aathrai,local,dis-1475
Myanglung,loc-745,2016,district,Myanglung,local,dis-1475
Laliguras,loc-746,2016,district,Laliguras,local,dis-1475
Chhathar,loc-747,2016,district,Chhathar,local,dis-1475
Koshi Tappu,loc-748,2016,district,Koshi Tappu,local,dis-2123
Katari,loc-749,2016,district,Katari,local,dis-2123
Kohalpur,loc-75,2016,district,Kohalpur,local,dis-2530
Udayapurgadhi,loc-750,2016,district,Udayapurgadhi,local,dis-2123
Rautamai,loc-751,2016,district,Rautamai,local,dis-2123
Tapli,loc-752,2016,district,Tapli,local,dis-2123
Sunkoshi,loc-753,2016,district,Sunkoshi,local,dis-2123
Triyuga,loc-754,2016,district,Triyuga,local,dis-2123
Chaudandigadi,loc-755,2016,district,Chaudandigadi,local,dis-2123
Belaka,loc-756,2016,district,Belaka,local,dis-2123
Raptisonari,loc-76,2016,district,Raptisonari,local,dis-2530
Nepalganj,loc-77,2016,district,Nepalganj,local,dis-2530
Duduwa,loc-78,2016,district,Duduwa,local,dis-2530
Pacharauta,loc-79,2016,district,Pacharauta,local,dis-5555
Khotehang,loc-8,2016,district,Khotehang,local,dis-1709
Simraungadh,loc-80,2016,district,Simraungadh,local,dis-5555
Suwarna,loc-81,2016,district,Suwarna,local,dis-5555
Devtal,loc-82,2016,district,Devtal,local,dis-5555
Mahagadhimai,loc-83,2016,district,Mahagadhimai,local,dis-5555
Baragadhi,loc-84,2016,district,Baragadhi,local,dis-5555
Jitpur Simara,loc-85,2016,district,Jitpur Simara,local,dis-5555
Nijgadh,loc-86,2016,district,Nijgadh,local,dis-5555
Karaiyamai,loc-87,2016,district,Karaiyamai,local,dis-5555
Kolhabi,loc-88,2016,district,Kolhabi,local,dis-5555
Adarshkotwal,loc-89,2016,district,Adarshkotwal,local,dis-5555
Barahapokhari,loc-9,2016,district,Barahapokhari,local,dis-1709
Parwanipur,loc-90,2016,district,Parwanipur,local,dis-5555
Prasauni,loc-91,2016,district,Prasauni,local,dis-5555
Pheta,loc-92,2016,district,Pheta,local,dis-5555
Kaliya,loc-93,2016,district,Kaliya,local,dis-5555
Bardiya,loc-94,2016,district,Bardiya,local,dis-2593
Gulariya,loc-95,2016,district,Gulariya,local,dis-2593
Badhaiyatal,loc-96,2016,district,Badhaiyatal,local,dis-2593
Madhuwan,loc-97,2016,district,Madhuwan,local,dis-2593
Thakurbaba,loc-98,2016,district,Thakurbaba,local,dis-2593
Rajapur,loc-99,2016,district,Rajapur,local,dis-2593
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

