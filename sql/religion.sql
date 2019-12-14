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
    IF EXISTS ONLY public.religion
    DROP CONSTRAINT IF EXISTS religion_pkey;
ALTER TABLE
    IF EXISTS ONLY public.religion
    DROP CONSTRAINT IF EXISTS pk_religion;
DROP TABLE IF EXISTS public.religion;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: religion; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.religion (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "religion name" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.religion
    OWNER TO wazimap_np;

--
-- Data for Name: religion; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.religion ("religion name",total,geo_code,geo_level,geo_version) FROM 'sql/csv/population-by-religion.csv' DELIMITER ',' CSV HEADER;

--
-- Name: religion pk_religion; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.religion
    ADD CONSTRAINT pk_religion PRIMARY KEY (geo_level, geo_code, geo_version, "religion name");


--
-- PostgreSQL database dump complete
--
