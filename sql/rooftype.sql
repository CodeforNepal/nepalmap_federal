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
    IF EXISTS ONLY public.rooftype
    DROP CONSTRAINT IF EXISTS rooftype_pkey;
ALTER TABLE
    IF EXISTS ONLY public.rooftype
    DROP CONSTRAINT IF EXISTS pk_rooftype;
DROP TABLE IF EXISTS public.rooftype;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: rooftype; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.rooftype (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "roof type" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.rooftype
    OWNER TO wazimap_np;

--
-- Data for Name: rooftype; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.rooftype ("roof type",total,geo_code,geo_level,geo_version) FROM 'sql/csv/number-of-households-by-type-of-roof.csv' DELIMITER ',' CSV HEADER;

--
-- Name: rooftype pk_rooftype; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.rooftype
    ADD CONSTRAINT pk_rooftype PRIMARY KEY (geo_level, geo_code, geo_version, "roof type");


--
-- PostgreSQL database dump complete
--
