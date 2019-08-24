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
    IF EXISTS ONLY public.language
    DROP CONSTRAINT
        IF EXISTS language_pkey;
DROP TABLE IF EXISTS public.language;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: language; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.language (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    language character varying(128) NOT NULL,
    total integer NOT NULL
);



ALTER TABLE public.language
    OWNER TO wazimap_np;

--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.language (language,total, geo_code,geo_level) FROM 'sql/csv/population-by-mother-tongue.csv' DELIMITER ',' CSV HEADER;

--
-- Name: language_pkey; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (geo_level, geo_code, "language");


--
-- PostgreSQL database dump complete
--
