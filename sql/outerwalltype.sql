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
    IF EXISTS ONLY public.outerwalltype
    DROP CONSTRAINT
        IF EXISTS outerwalltype_pkey;
DROP TABLE IF EXISTS public.outerwalltype;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: outerwalltype; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.outerwalltype
(
    geo_level     character varying(15)  NOT NULL,
    geo_code      character varying(10)  NOT NULL,
    "outer wall type" character varying(128) NOT NULL,
    total         integer                NOT NULL
);


ALTER TABLE public.outerwalltype
    OWNER TO wazimap_np;

--
-- Data for Name: outerwalltype; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.outerwalltype ("outer wall type",total,geo_code,geo_level) FROM 'sql/csv/number-of-households-by-type-of-outer-wall.csv' DELIMITER ',' CSV HEADER;

--
-- Name: outerwalltype_pkey; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.outerwalltype
    ADD CONSTRAINT outerwalltype_pkey PRIMARY KEY (geo_level, geo_code, "outer wall type");


--
-- PostgreSQL database dump complete
--
