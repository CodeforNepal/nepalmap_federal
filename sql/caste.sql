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
    IF EXISTS ONLY public.caste
    DROP CONSTRAINT
        IF EXISTS caste_pkey;
DROP TABLE IF EXISTS public.caste;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: caste; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.caste (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "caste or ethnic group" character varying(128) NOT NULL,
    total integer NOT NULL
);



ALTER TABLE public.caste
    OWNER TO wazimap_np;

--
-- Data for Name: caste; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.caste ("caste or ethnic group",total, geo_code,geo_level) FROM 'sql/csv/population-by-caste-ethinicity.csv' DELIMITER ',' CSV HEADER;

--
-- Name: caste_pkey; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.caste
    ADD CONSTRAINT caste_pkey PRIMARY KEY (geo_level, geo_code, "caste or ethnic group");


--
-- PostgreSQL database dump complete
--
