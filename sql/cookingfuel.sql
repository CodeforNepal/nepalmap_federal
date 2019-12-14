--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;


ALTER TABLE
    IF EXISTS ONLY public.maintypeofcookingfuel
    DROP CONSTRAINT IF EXISTS maintypeofcookingfuel_pkey;
ALTER TABLE
    IF EXISTS ONLY public.maintypeofcookingfuel
    DROP CONSTRAINT IF EXISTS pk_maintypeofcookingfuel;
DROP TABLE IF EXISTS public.maintypeofcookingfuel;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeofcookingfuel; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.maintypeofcookingfuel (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of cooking fuel" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.maintypeofcookingfuel
    OWNER TO wazimap_np;

--
-- Data for Name: maintypeofcookingfuel; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.maintypeofcookingfuel ("main type of cooking fuel",total,geo_code,geo_level,geo_version) FROM 'sql/csv/number-of-households-by-usage-of-cooking-fuel.csv' DELIMITER ',' CSV HEADER;

--
-- Name: maintypeofcookingfuel pk_maintypeofcookingfuel; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.maintypeofcookingfuel
    ADD CONSTRAINT pk_maintypeofcookingfuel PRIMARY KEY (geo_level, geo_code, geo_version, "main type of cooking fuel");


--
-- PostgreSQL database dump complete
--
