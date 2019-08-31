
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
    IF EXISTS ONLY public.agriculture_holding_size
    DROP CONSTRAINT
        IF EXISTS agriculture_holding_size_pkey;
DROP TABLE IF EXISTS public.agriculture_holding_size;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agriculture_holding_size; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.agriculture_holding_size
(
    geo_level     character varying(15)  NOT NULL,
    geo_code      character varying(10)  NOT NULL,
    "Agricultural holdings size by land tenure" character varying(128) NOT NULL,
    total         integer                NOT NULL
);


ALTER TABLE public.agriculture_holding_size
    OWNER TO wazimap_np;

--
-- Data for Name: agriculture_holding_size; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.agriculture_holding_size ("Agricultural holdings size by land tenure",total,geo_code,geo_level) FROM 'sql/csv/agricultural-holdings-size-by-land-tenure.csv' DELIMITER ',' CSV HEADER;

--
-- Name: agriculture_holding_size_pkey; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.agriculture_holding_size
    ADD CONSTRAINT agriculture_holding_size_pkey PRIMARY KEY (geo_level, geo_code, "Agricultural holdings size by land tenure");


--
-- PostgreSQL database dump complete
--