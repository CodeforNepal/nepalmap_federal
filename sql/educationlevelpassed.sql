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
    IF EXISTS ONLY public.educationlevelpassed_sex
    DROP CONSTRAINT
        IF EXISTS educationlevelpassed_sex_pkey;
DROP TABLE IF EXISTS public.educationlevelpassed_sex;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: educationlevelpassed_sex; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.educationlevelpassed_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "education level passed" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL
);



ALTER TABLE public.educationlevelpassed_sex
    OWNER TO wazimap_np;

--
-- Data for Name: educationlevelpassed_sex; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.educationlevelpassed_sex ("education level passed",geo_code,geo_level,sex,total) FROM 'sql/csv/population-by-educational-attainment.csv' DELIMITER ',' CSV HEADER;

--
-- Name: educationlevelpassed_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.educationlevelpassed_sex
    ADD CONSTRAINT educationlevelpassed_sex_pkey PRIMARY KEY (geo_level, geo_code, literacy, sex);


--
-- PostgreSQL database dump complete
--
