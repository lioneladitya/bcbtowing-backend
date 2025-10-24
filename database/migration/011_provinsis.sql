--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-10-20 17:05:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 19109)
-- Name: provinsis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provinsis (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.provinsis OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 19108)
-- Name: provinsis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provinsis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.provinsis_id_seq OWNER TO postgres;

--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 226
-- Name: provinsis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provinsis_id_seq OWNED BY public.provinsis.id;


--
-- TOC entry 4780 (class 2604 OID 19112)
-- Name: provinsis id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinsis ALTER COLUMN id SET DEFAULT nextval('public.provinsis_id_seq'::regclass);


--
-- TOC entry 4929 (class 0 OID 19109)
-- Dependencies: 227
-- Data for Name: provinsis; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.provinsis VALUES (1, 'Aceh (NAD)', '11', NULL, NULL);
INSERT INTO public.provinsis VALUES (2, 'Bali', '51', NULL, NULL);
INSERT INTO public.provinsis VALUES (3, 'Banten', '36', NULL, NULL);
INSERT INTO public.provinsis VALUES (4, 'Bengkulu', '17', NULL, NULL);
INSERT INTO public.provinsis VALUES (5, 'DI Yogyakarta', '34', NULL, NULL);
INSERT INTO public.provinsis VALUES (6, 'DKI Jakarta', '31', NULL, NULL);
INSERT INTO public.provinsis VALUES (7, 'Gorontalo', '75', NULL, NULL);
INSERT INTO public.provinsis VALUES (8, 'Jambi', '15', NULL, NULL);
INSERT INTO public.provinsis VALUES (9, 'Jawa Barat', '32', NULL, NULL);
INSERT INTO public.provinsis VALUES (10, 'Jawa Tengah', '33', NULL, NULL);
INSERT INTO public.provinsis VALUES (11, 'Jawa Timur', '35', NULL, NULL);
INSERT INTO public.provinsis VALUES (12, 'Kalimantan Barat', '61', NULL, NULL);
INSERT INTO public.provinsis VALUES (13, 'Kalimantan Selatan', '63', NULL, NULL);
INSERT INTO public.provinsis VALUES (14, 'Kalimantan Tengah', '62', NULL, NULL);
INSERT INTO public.provinsis VALUES (15, 'Kalimantan Timur', '64', NULL, NULL);
INSERT INTO public.provinsis VALUES (16, 'Kalimantan Utara', '65', NULL, NULL);
INSERT INTO public.provinsis VALUES (17, 'Kepulauan Bangka Belitung', '19', NULL, NULL);
INSERT INTO public.provinsis VALUES (18, 'Kepulauan Riau', '21', NULL, NULL);
INSERT INTO public.provinsis VALUES (19, 'Lampung', '18', NULL, NULL);
INSERT INTO public.provinsis VALUES (20, 'Maluku', '81', NULL, NULL);
INSERT INTO public.provinsis VALUES (21, 'Maluku Utara', '82', NULL, NULL);
INSERT INTO public.provinsis VALUES (22, 'Nusa Tenggara Barat (NTB)', '52', NULL, NULL);
INSERT INTO public.provinsis VALUES (23, 'Nusa Tenggara Timur (NTT)', '53', NULL, NULL);
INSERT INTO public.provinsis VALUES (24, 'Papua', '91', NULL, NULL);
INSERT INTO public.provinsis VALUES (25, 'Papua Barat', '92', NULL, NULL);
INSERT INTO public.provinsis VALUES (26, 'Papua Barat Daya', '92', NULL, NULL);
INSERT INTO public.provinsis VALUES (27, 'Papua Pegunungan', '95', NULL, NULL);
INSERT INTO public.provinsis VALUES (28, 'Papua Selatan', '93', NULL, NULL);
INSERT INTO public.provinsis VALUES (29, 'Papua Tengah', '94', NULL, NULL);
INSERT INTO public.provinsis VALUES (30, 'Riau', '14', NULL, NULL);
INSERT INTO public.provinsis VALUES (31, 'Sulawesi Barat', '76', NULL, NULL);
INSERT INTO public.provinsis VALUES (32, 'Sulawesi Selatan', '73', NULL, NULL);
INSERT INTO public.provinsis VALUES (33, 'Sulawesi Tengah', '72', NULL, NULL);
INSERT INTO public.provinsis VALUES (34, 'Sulawesi Tenggara', '74', NULL, NULL);
INSERT INTO public.provinsis VALUES (35, 'Sulawesi Utara', '71', NULL, NULL);
INSERT INTO public.provinsis VALUES (36, 'Sumatera Barat', '13', NULL, NULL);
INSERT INTO public.provinsis VALUES (37, 'Sumatera Selatan', '16', NULL, NULL);
INSERT INTO public.provinsis VALUES (38, 'Sumatera Utara', '12', NULL, NULL);


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 226
-- Name: provinsis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provinsis_id_seq', 1, false);


--
-- TOC entry 4782 (class 2606 OID 19116)
-- Name: provinsis provinsis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinsis
    ADD CONSTRAINT provinsis_pkey PRIMARY KEY (id);


-- Completed on 2025-10-20 17:05:53

--
-- PostgreSQL database dump complete
--

