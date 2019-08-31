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
    IF EXISTS ONLY public.foundationtype
    DROP CONSTRAINT
        IF EXISTS foundationtype_pkey;
DROP TABLE IF EXISTS public.foundationtype;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: foundationtype; Type: TABLE; Schema: public; Owner: wazimap_np
--

CREATE TABLE public.foundationtype
(
    geo_level     character varying(15)  NOT NULL,
    geo_code      character varying(10)  NOT NULL,
    "foundation type" character varying(128) NOT NULL,
    total         integer                NOT NULL
);


ALTER TABLE public.foundationtype
    OWNER TO wazimap_np;

--
-- Data for Name: foundationtype; Type: TABLE DATA; Schema: public; Owner: wazimap_np
--

\copy public.foundationtype ("foundation type",total,geo_code,geo_level) FROM 'sql/csv/number-of-households-by-type-of-house-foundation.csv' DELIMITER ',' CSV HEADER;

--
-- Name: foundationtype_pkey; Type: CONSTRAINT; Schema: public; Owner: wazimap_np
--

ALTER TABLE ONLY public.foundationtype
    ADD CONSTRAINT foundationtype_pkey PRIMARY KEY (geo_level, geo_code, "foundation type");


--
-- PostgreSQL database dump complete
--
