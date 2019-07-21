
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
    IF EXISTS ONLY public.agriculture_land_use
    DROP CONSTRAINT
        IF EXISTS agriculture_land_use_pkey;
DROP TABLE IF EXISTS public.agriculture_land_use;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agriculture_land_use; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.agriculture_land_use
(
    geo_level     character varying(15)  NOT NULL,
    geo_code      character varying(10)  NOT NULL,
    "Agricultural land use area" character varying(128) NOT NULL,
    total         integer                NOT NULL
);


ALTER TABLE public.agriculture_land_use
    OWNER TO wazimap_np;

--
-- Data for Name: agriculture_land_use; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.agriculture_land_use ("Agricultural land use area",total,geo_code,geo_level) FROM 'sql/csv/agricultural-land-use-area.csv' DELIMITER ',' CSV HEADER;

--
-- Name: agriculture_land_use_pkey; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.agriculture_land_use
    ADD CONSTRAINT agriculture_land_use_pkey PRIMARY KEY (geo_level, geo_code, "Agricultural land use area");


--
-- PostgreSQL database dump complete
--