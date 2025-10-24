--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-10-20 17:04:48

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
-- TOC entry 229 (class 1259 OID 19118)
-- Name: kabupatens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kabupatens (
    id bigint NOT NULL,
    provinsi_id bigint NOT NULL,
    type character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    full_code character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kabupatens OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19117)
-- Name: kabupatens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kabupatens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kabupatens_id_seq OWNER TO postgres;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 228
-- Name: kabupatens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kabupatens_id_seq OWNED BY public.kabupatens.id;


--
-- TOC entry 4780 (class 2604 OID 19121)
-- Name: kabupatens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kabupatens ALTER COLUMN id SET DEFAULT nextval('public.kabupatens_id_seq'::regclass);


--
-- TOC entry 4930 (class 0 OID 19118)
-- Dependencies: 229
-- Data for Name: kabupatens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kabupatens VALUES (1, 1, 'Kabupaten', 'Aceh Barat', '05', '1105', NULL, NULL);
INSERT INTO public.kabupatens VALUES (2, 1, 'Kabupaten', 'Aceh Barat Daya', '12', '1112', NULL, NULL);
INSERT INTO public.kabupatens VALUES (3, 23, 'Kabupaten', 'Sabu Raijua', '20', '5320', NULL, NULL);
INSERT INTO public.kabupatens VALUES (4, 10, 'Kota', 'Salatiga', '73', '3373', NULL, NULL);
INSERT INTO public.kabupatens VALUES (5, 1, 'Kabupaten', 'Aceh Besar', '06', '1106', NULL, NULL);
INSERT INTO public.kabupatens VALUES (6, 1, 'Kabupaten', 'Aceh Jaya', '14', '1114', NULL, NULL);
INSERT INTO public.kabupatens VALUES (7, 1, 'Kabupaten', 'Aceh Selatan', '01', '1101', NULL, NULL);
INSERT INTO public.kabupatens VALUES (8, 1, 'Kabupaten', 'Aceh Singkil', '10', '1110', NULL, NULL);
INSERT INTO public.kabupatens VALUES (9, 1, 'Kabupaten', 'Aceh Tamiang', '16', '1116', NULL, NULL);
INSERT INTO public.kabupatens VALUES (10, 1, 'Kabupaten', 'Aceh Tengah', '04', '1104', NULL, NULL);
INSERT INTO public.kabupatens VALUES (11, 1, 'Kabupaten', 'Aceh Tenggara', '02', '1102', NULL, NULL);
INSERT INTO public.kabupatens VALUES (12, 1, 'Kabupaten', 'Aceh Timur', '03', '1103', NULL, NULL);
INSERT INTO public.kabupatens VALUES (13, 7, 'Kabupaten', 'Gorontalo Utara', '05', '7505', NULL, NULL);
INSERT INTO public.kabupatens VALUES (14, 1, 'Kabupaten', 'Aceh Utara', '08', '1108', NULL, NULL);
INSERT INTO public.kabupatens VALUES (15, 36, 'Kabupaten', 'Agam', '06', '1306', NULL, NULL);
INSERT INTO public.kabupatens VALUES (16, 23, 'Kabupaten', 'Alor', '05', '5305', NULL, NULL);
INSERT INTO public.kabupatens VALUES (17, 20, 'Kota', 'Ambon', '71', '8171', NULL, NULL);
INSERT INTO public.kabupatens VALUES (18, 32, 'Kabupaten', 'Gowa', '06', '7306', NULL, NULL);
INSERT INTO public.kabupatens VALUES (19, 15, 'Kota', 'Samarinda', '72', '6472', NULL, NULL);
INSERT INTO public.kabupatens VALUES (20, 38, 'Kabupaten', 'Asahan', '09', '1209', NULL, NULL);
INSERT INTO public.kabupatens VALUES (21, 12, 'Kabupaten', 'Sambas', '01', '6101', NULL, NULL);
INSERT INTO public.kabupatens VALUES (22, 28, 'Kabupaten', 'Asmat', '04', '9304', NULL, NULL);
INSERT INTO public.kabupatens VALUES (23, 38, 'Kabupaten', 'Samosir', '17', '1217', NULL, NULL);
INSERT INTO public.kabupatens VALUES (24, 2, 'Kabupaten', 'Badung', '03', '5103', NULL, NULL);
INSERT INTO public.kabupatens VALUES (25, 11, 'Kabupaten', 'Sampang', '27', '3527', NULL, NULL);
INSERT INTO public.kabupatens VALUES (26, 13, 'Kabupaten', 'Balangan', '11', '6311', NULL, NULL);
INSERT INTO public.kabupatens VALUES (27, 12, 'Kabupaten', 'Sanggau', '03', '6103', NULL, NULL);
INSERT INTO public.kabupatens VALUES (28, 24, 'Kabupaten', 'Sarmi', '10', '9110', NULL, NULL);
INSERT INTO public.kabupatens VALUES (29, 11, 'Kabupaten', 'Gresik', '25', '3525', NULL, NULL);
INSERT INTO public.kabupatens VALUES (30, 10, 'Kabupaten', 'Grobogan', '15', '3315', NULL, NULL);
INSERT INTO public.kabupatens VALUES (31, 14, 'Kabupaten', 'Gunung Mas', '10', '6210', NULL, NULL);
INSERT INTO public.kabupatens VALUES (32, 5, 'Kabupaten', 'Gunungkidul', '03', '3403', NULL, NULL);
INSERT INTO public.kabupatens VALUES (33, 8, 'Kabupaten', 'Sarolangun', '03', '1503', NULL, NULL);
INSERT INTO public.kabupatens VALUES (34, 38, 'Kota', 'Gunungsitoli', '78', '1278', NULL, NULL);
INSERT INTO public.kabupatens VALUES (35, 36, 'Kota', 'Sawahlunto', '73', '1373', NULL, NULL);
INSERT INTO public.kabupatens VALUES (36, 21, 'Kabupaten', 'Halmahera Barat', '01', '8201', NULL, NULL);
INSERT INTO public.kabupatens VALUES (37, 12, 'Kabupaten', 'Sekadau', '09', '6109', NULL, NULL);
INSERT INTO public.kabupatens VALUES (38, 21, 'Kabupaten', 'Halmahera Selatan', '04', '8204', NULL, NULL);
INSERT INTO public.kabupatens VALUES (39, 4, 'Kabupaten', 'Seluma', '05', '1705', NULL, NULL);
INSERT INTO public.kabupatens VALUES (40, 21, 'Kabupaten', 'Halmahera Tengah', '02', '8202', NULL, NULL);
INSERT INTO public.kabupatens VALUES (41, 10, 'Kabupaten', 'Semarang', '22', '3322', NULL, NULL);
INSERT INTO public.kabupatens VALUES (42, 10, 'Kota', 'Semarang', '74', '3374', NULL, NULL);
INSERT INTO public.kabupatens VALUES (43, 21, 'Kabupaten', 'Halmahera Timur', '06', '8206', NULL, NULL);
INSERT INTO public.kabupatens VALUES (44, 20, 'Kabupaten', 'Seram Bagian Barat', '06', '8106', NULL, NULL);
INSERT INTO public.kabupatens VALUES (45, 21, 'Kabupaten', 'Halmahera Utara', '03', '8203', NULL, NULL);
INSERT INTO public.kabupatens VALUES (46, 20, 'Kabupaten', 'Seram Bagian Timur', '05', '8105', NULL, NULL);
INSERT INTO public.kabupatens VALUES (47, 13, 'Kabupaten', 'Hulu Sungai Selatan', '06', '6306', NULL, NULL);
INSERT INTO public.kabupatens VALUES (48, 13, 'Kabupaten', 'Hulu Sungai Tengah', '07', '6307', NULL, NULL);
INSERT INTO public.kabupatens VALUES (49, 13, 'Kabupaten', 'Hulu Sungai Utara', '08', '6308', NULL, NULL);
INSERT INTO public.kabupatens VALUES (50, 3, 'Kota', 'Serang', '73', '3673', NULL, NULL);
INSERT INTO public.kabupatens VALUES (51, 3, 'Kabupaten', 'Serang', '04', '3604', NULL, NULL);
INSERT INTO public.kabupatens VALUES (52, 38, 'Kabupaten', 'Humbang Hasundutan', '16', '1216', NULL, NULL);
INSERT INTO public.kabupatens VALUES (53, 15, 'Kota', 'Balikpapan', '71', '6471', NULL, NULL);
INSERT INTO public.kabupatens VALUES (54, 30, 'Kabupaten', 'Indragiri Hilir', '04', '1404', NULL, NULL);
INSERT INTO public.kabupatens VALUES (55, 30, 'Kabupaten', 'Indragiri Hulu', '02', '1402', NULL, NULL);
INSERT INTO public.kabupatens VALUES (56, 1, 'Kota', 'Banda Aceh', '71', '1171', NULL, NULL);
INSERT INTO public.kabupatens VALUES (57, 19, 'Kota', 'Bandar Lampung', '71', '1871', NULL, NULL);
INSERT INTO public.kabupatens VALUES (58, 9, 'Kota', 'Bandung', '73', '3273', NULL, NULL);
INSERT INTO public.kabupatens VALUES (59, 9, 'Kabupaten', 'Bandung', '04', '3204', NULL, NULL);
INSERT INTO public.kabupatens VALUES (60, 9, 'Kabupaten', 'Bandung Barat', '17', '3217', NULL, NULL);
INSERT INTO public.kabupatens VALUES (61, 33, 'Kabupaten', 'Banggai', '01', '7201', NULL, NULL);
INSERT INTO public.kabupatens VALUES (62, 33, 'Kabupaten', 'Banggai Kepulauan', '07', '7207', NULL, NULL);
INSERT INTO public.kabupatens VALUES (63, 33, 'Kabupaten', 'Banggai Laut', '11', '7211', NULL, NULL);
INSERT INTO public.kabupatens VALUES (64, 17, 'Kabupaten', 'Bangka', '01', '1901', NULL, NULL);
INSERT INTO public.kabupatens VALUES (65, 17, 'Kabupaten', 'Bangka Barat', '05', '1905', NULL, NULL);
INSERT INTO public.kabupatens VALUES (66, 17, 'Kabupaten', 'Bangka Selatan', '03', '1903', NULL, NULL);
INSERT INTO public.kabupatens VALUES (67, 17, 'Kabupaten', 'Bangka Tengah', '04', '1904', NULL, NULL);
INSERT INTO public.kabupatens VALUES (68, 11, 'Kabupaten', 'Bangkalan', '26', '3526', NULL, NULL);
INSERT INTO public.kabupatens VALUES (69, 2, 'Kabupaten', 'Bangli', '06', '5106', NULL, NULL);
INSERT INTO public.kabupatens VALUES (70, 9, 'Kota', 'Banjar', '79', '3279', NULL, NULL);
INSERT INTO public.kabupatens VALUES (71, 13, 'Kabupaten', 'Banjar', '03', '6303', NULL, NULL);
INSERT INTO public.kabupatens VALUES (72, 13, 'Kota', 'Banjarbaru', '72', '6372', NULL, NULL);
INSERT INTO public.kabupatens VALUES (73, 13, 'Kota', 'Banjarmasin', '71', '6371', NULL, NULL);
INSERT INTO public.kabupatens VALUES (74, 10, 'Kabupaten', 'Banjarnegara', '04', '3304', NULL, NULL);
INSERT INTO public.kabupatens VALUES (75, 32, 'Kabupaten', 'Bantaeng', '03', '7303', NULL, NULL);
INSERT INTO public.kabupatens VALUES (76, 5, 'Kabupaten', 'Bantul', '02', '3402', NULL, NULL);
INSERT INTO public.kabupatens VALUES (77, 37, 'Kabupaten', 'Banyuasin', '07', '1607', NULL, NULL);
INSERT INTO public.kabupatens VALUES (78, 10, 'Kabupaten', 'Banyumas', '02', '3302', NULL, NULL);
INSERT INTO public.kabupatens VALUES (79, 11, 'Kabupaten', 'Banyuwangi', '10', '3510', NULL, NULL);
INSERT INTO public.kabupatens VALUES (80, 13, 'Kabupaten', 'Barito Kuala', '04', '6304', NULL, NULL);
INSERT INTO public.kabupatens VALUES (81, 14, 'Kabupaten', 'Barito Selatan', '04', '6204', NULL, NULL);
INSERT INTO public.kabupatens VALUES (82, 14, 'Kabupaten', 'Barito Timur', '13', '6213', NULL, NULL);
INSERT INTO public.kabupatens VALUES (83, 14, 'Kabupaten', 'Barito Utara', '05', '6205', NULL, NULL);
INSERT INTO public.kabupatens VALUES (84, 32, 'Kabupaten', 'Barru', '11', '7311', NULL, NULL);
INSERT INTO public.kabupatens VALUES (85, 18, 'Kota', 'Batam', '71', '2171', NULL, NULL);
INSERT INTO public.kabupatens VALUES (86, 10, 'Kabupaten', 'Batang', '25', '3325', NULL, NULL);
INSERT INTO public.kabupatens VALUES (87, 8, 'Kabupaten', 'Batanghari', '04', '1504', NULL, NULL);
INSERT INTO public.kabupatens VALUES (88, 11, 'Kota', 'Batu', '79', '3579', NULL, NULL);
INSERT INTO public.kabupatens VALUES (89, 38, 'Kabupaten', 'Batu Bara', '19', '1219', NULL, NULL);
INSERT INTO public.kabupatens VALUES (90, 34, 'Kota', 'Bau Bau', '72', '7472', NULL, NULL);
INSERT INTO public.kabupatens VALUES (91, 9, 'Kota', 'Bekasi', '75', '3275', NULL, NULL);
INSERT INTO public.kabupatens VALUES (92, 9, 'Kabupaten', 'Bekasi', '16', '3216', NULL, NULL);
INSERT INTO public.kabupatens VALUES (93, 17, 'Kabupaten', 'Belitung', '02', '1902', NULL, NULL);
INSERT INTO public.kabupatens VALUES (94, 17, 'Kabupaten', 'Belitung Timur', '06', '1906', NULL, NULL);
INSERT INTO public.kabupatens VALUES (95, 23, 'Kabupaten', 'Belu', '04', '5304', NULL, NULL);
INSERT INTO public.kabupatens VALUES (96, 1, 'Kabupaten', 'Bener Meriah', '17', '1117', NULL, NULL);
INSERT INTO public.kabupatens VALUES (97, 30, 'Kabupaten', 'Bengkalis', '03', '1403', NULL, NULL);
INSERT INTO public.kabupatens VALUES (98, 12, 'Kabupaten', 'Bengkayang', '07', '6107', NULL, NULL);
INSERT INTO public.kabupatens VALUES (99, 38, 'Kabupaten', 'Serdang Bedagai', '18', '1218', NULL, NULL);
INSERT INTO public.kabupatens VALUES (100, 4, 'Kota', 'Bengkulu', '71', '1771', NULL, NULL);
INSERT INTO public.kabupatens VALUES (101, 4, 'Kabupaten', 'Bengkulu Selatan', '01', '1701', NULL, NULL);
INSERT INTO public.kabupatens VALUES (102, 14, 'Kabupaten', 'Seruyan', '07', '6207', NULL, NULL);
INSERT INTO public.kabupatens VALUES (103, 9, 'Kabupaten', 'Indramayu', '12', '3212', NULL, NULL);
INSERT INTO public.kabupatens VALUES (104, 30, 'Kabupaten', 'Siak', '08', '1408', NULL, NULL);
INSERT INTO public.kabupatens VALUES (105, 29, 'Kabupaten', 'Intan Jaya', '07', '9407', NULL, NULL);
INSERT INTO public.kabupatens VALUES (106, 6, 'Kota', 'Jakarta Barat', '73', '3173', NULL, NULL);
INSERT INTO public.kabupatens VALUES (107, 38, 'Kota', 'Sibolga', '73', '1273', NULL, NULL);
INSERT INTO public.kabupatens VALUES (323, 9, 'Kabupaten', 'Garut', '05', '3205', NULL, NULL);
INSERT INTO public.kabupatens VALUES (108, 4, 'Kabupaten', 'Bengkulu Tengah', '09', '1709', NULL, NULL);
INSERT INTO public.kabupatens VALUES (109, 6, 'Kota', 'Jakarta Pusat', '71', '3171', NULL, NULL);
INSERT INTO public.kabupatens VALUES (110, 32, 'Kabupaten', 'Sidenreng Rappang', '14', '7314', NULL, NULL);
INSERT INTO public.kabupatens VALUES (111, 4, 'Kabupaten', 'Bengkulu Utara', '03', '1703', NULL, NULL);
INSERT INTO public.kabupatens VALUES (112, 6, 'Kota', 'Jakarta Selatan', '74', '3174', NULL, NULL);
INSERT INTO public.kabupatens VALUES (113, 11, 'Kabupaten', 'Sidoarjo', '15', '3515', NULL, NULL);
INSERT INTO public.kabupatens VALUES (114, 6, 'Kota', 'Jakarta Timur', '75', '3175', NULL, NULL);
INSERT INTO public.kabupatens VALUES (115, 33, 'Kabupaten', 'Sigi', '10', '7210', NULL, NULL);
INSERT INTO public.kabupatens VALUES (116, 15, 'Kabupaten', 'Berau', '03', '6403', NULL, NULL);
INSERT INTO public.kabupatens VALUES (117, 24, 'Kabupaten', 'Biak Numfor', '06', '9106', NULL, NULL);
INSERT INTO public.kabupatens VALUES (118, 22, 'Kabupaten', 'Bima', '06', '5206', NULL, NULL);
INSERT INTO public.kabupatens VALUES (119, 6, 'Kota', 'Jakarta Utara', '72', '3172', NULL, NULL);
INSERT INTO public.kabupatens VALUES (120, 22, 'Kota', 'Bima', '72', '5272', NULL, NULL);
INSERT INTO public.kabupatens VALUES (121, 8, 'Kota', 'Jambi', '71', '1571', NULL, NULL);
INSERT INTO public.kabupatens VALUES (122, 36, 'Kabupaten', 'Sijunjung', '03', '1303', NULL, NULL);
INSERT INTO public.kabupatens VALUES (123, 38, 'Kota', 'Binjai', '75', '1275', NULL, NULL);
INSERT INTO public.kabupatens VALUES (124, 24, 'Kabupaten', 'Jayapura', '03', '9103', NULL, NULL);
INSERT INTO public.kabupatens VALUES (125, 18, 'Kabupaten', 'Bintan', '01', '2101', NULL, NULL);
INSERT INTO public.kabupatens VALUES (126, 23, 'Kabupaten', 'Sikka', '07', '5307', NULL, NULL);
INSERT INTO public.kabupatens VALUES (127, 1, 'Kabupaten', 'Bireuen', '11', '1111', NULL, NULL);
INSERT INTO public.kabupatens VALUES (128, 38, 'Kabupaten', 'Simalungun', '08', '1208', NULL, NULL);
INSERT INTO public.kabupatens VALUES (129, 35, 'Kota', 'Bitung', '72', '7172', NULL, NULL);
INSERT INTO public.kabupatens VALUES (130, 24, 'Kota', 'Jayapura', '71', '9171', NULL, NULL);
INSERT INTO public.kabupatens VALUES (131, 1, 'Kabupaten', 'Simeulue', '09', '1109', NULL, NULL);
INSERT INTO public.kabupatens VALUES (132, 27, 'Kabupaten', 'Jayawijaya', '01', '9501', NULL, NULL);
INSERT INTO public.kabupatens VALUES (133, 11, 'Kabupaten', 'Jember', '09', '3509', NULL, NULL);
INSERT INTO public.kabupatens VALUES (134, 12, 'Kota', 'Singkawang', '72', '6172', NULL, NULL);
INSERT INTO public.kabupatens VALUES (135, 11, 'Kabupaten', 'Blitar', '05', '3505', NULL, NULL);
INSERT INTO public.kabupatens VALUES (136, 2, 'Kabupaten', 'Jembrana', '01', '5101', NULL, NULL);
INSERT INTO public.kabupatens VALUES (137, 32, 'Kabupaten', 'Sinjai', '07', '7307', NULL, NULL);
INSERT INTO public.kabupatens VALUES (138, 11, 'Kota', 'Blitar', '72', '3572', NULL, NULL);
INSERT INTO public.kabupatens VALUES (139, 32, 'Kabupaten', 'Jeneponto', '04', '7304', NULL, NULL);
INSERT INTO public.kabupatens VALUES (140, 10, 'Kabupaten', 'Blora', '16', '3316', NULL, NULL);
INSERT INTO public.kabupatens VALUES (141, 10, 'Kabupaten', 'Jepara', '20', '3320', NULL, NULL);
INSERT INTO public.kabupatens VALUES (142, 12, 'Kabupaten', 'Sintang', '05', '6105', NULL, NULL);
INSERT INTO public.kabupatens VALUES (143, 7, 'Kabupaten', 'Boalemo', '02', '7502', NULL, NULL);
INSERT INTO public.kabupatens VALUES (144, 11, 'Kabupaten', 'Jombang', '17', '3517', NULL, NULL);
INSERT INTO public.kabupatens VALUES (145, 9, 'Kabupaten', 'Bogor', '01', '3201', NULL, NULL);
INSERT INTO public.kabupatens VALUES (146, 11, 'Kabupaten', 'Situbondo', '12', '3512', NULL, NULL);
INSERT INTO public.kabupatens VALUES (147, 25, 'Kabupaten', 'Kaimana', '08', '9208', NULL, NULL);
INSERT INTO public.kabupatens VALUES (148, 9, 'Kota', 'Bogor', '71', '3271', NULL, NULL);
INSERT INTO public.kabupatens VALUES (149, 5, 'Kabupaten', 'Sleman', '04', '3404', NULL, NULL);
INSERT INTO public.kabupatens VALUES (150, 30, 'Kabupaten', 'Kampar', '01', '1401', NULL, NULL);
INSERT INTO public.kabupatens VALUES (151, 11, 'Kabupaten', 'Bojonegoro', '22', '3522', NULL, NULL);
INSERT INTO public.kabupatens VALUES (152, 36, 'Kabupaten', 'Solok', '02', '1302', NULL, NULL);
INSERT INTO public.kabupatens VALUES (153, 35, 'Kabupaten', 'Bolaang Mongondow', '01', '7101', NULL, NULL);
INSERT INTO public.kabupatens VALUES (154, 35, 'Kabupaten', 'Bolaang Mongondow Selatan', '11', '7111', NULL, NULL);
INSERT INTO public.kabupatens VALUES (155, 36, 'Kota', 'Solok', '72', '1372', NULL, NULL);
INSERT INTO public.kabupatens VALUES (156, 14, 'Kabupaten', 'Kapuas', '03', '6203', NULL, NULL);
INSERT INTO public.kabupatens VALUES (157, 36, 'Kabupaten', 'Solok Selatan', '11', '1311', NULL, NULL);
INSERT INTO public.kabupatens VALUES (158, 35, 'Kabupaten', 'Bolaang Mongondow Timur', '10', '7110', NULL, NULL);
INSERT INTO public.kabupatens VALUES (159, 12, 'Kabupaten', 'Kapuas Hulu', '06', '6106', NULL, NULL);
INSERT INTO public.kabupatens VALUES (160, 10, 'Kabupaten', 'Karanganyar', '13', '3313', NULL, NULL);
INSERT INTO public.kabupatens VALUES (161, 2, 'Kabupaten', 'Karangasem', '07', '5107', NULL, NULL);
INSERT INTO public.kabupatens VALUES (162, 35, 'Kabupaten', 'Bolaang Mongondow Utara', '08', '7108', NULL, NULL);
INSERT INTO public.kabupatens VALUES (163, 9, 'Kabupaten', 'Karawang', '15', '3215', NULL, NULL);
INSERT INTO public.kabupatens VALUES (164, 34, 'Kabupaten', 'Bombana', '06', '7406', NULL, NULL);
INSERT INTO public.kabupatens VALUES (165, 18, 'Kabupaten', 'Karimun', '02', '2102', NULL, NULL);
INSERT INTO public.kabupatens VALUES (166, 11, 'Kabupaten', 'Bondowoso', '11', '3511', NULL, NULL);
INSERT INTO public.kabupatens VALUES (167, 38, 'Kabupaten', 'Karo', '06', '1206', NULL, NULL);
INSERT INTO public.kabupatens VALUES (168, 32, 'Kabupaten', 'Soppeng', '12', '7312', NULL, NULL);
INSERT INTO public.kabupatens VALUES (169, 14, 'Kabupaten', 'Katingan', '06', '6206', NULL, NULL);
INSERT INTO public.kabupatens VALUES (170, 4, 'Kabupaten', 'Kaur', '04', '1704', NULL, NULL);
INSERT INTO public.kabupatens VALUES (171, 26, 'Kabupaten', 'Sorong', '01', '9201', NULL, NULL);
INSERT INTO public.kabupatens VALUES (172, 12, 'Kabupaten', 'Kayong Utara', '11', '6111', NULL, NULL);
INSERT INTO public.kabupatens VALUES (173, 26, 'Kota', 'Sorong', '71', '9271', NULL, NULL);
INSERT INTO public.kabupatens VALUES (174, 26, 'Kabupaten', 'Sorong Selatan', '04', '9204', NULL, NULL);
INSERT INTO public.kabupatens VALUES (175, 10, 'Kabupaten', 'Kebumen', '05', '3305', NULL, NULL);
INSERT INTO public.kabupatens VALUES (176, 10, 'Kabupaten', 'Sragen', '14', '3314', NULL, NULL);
INSERT INTO public.kabupatens VALUES (177, 11, 'Kabupaten', 'Kediri', '06', '3506', NULL, NULL);
INSERT INTO public.kabupatens VALUES (178, 9, 'Kabupaten', 'Subang', '13', '3213', NULL, NULL);
INSERT INTO public.kabupatens VALUES (179, 1, 'Kota', 'Subulussalam', '75', '1175', NULL, NULL);
INSERT INTO public.kabupatens VALUES (180, 9, 'Kota', 'Sukabumi', '72', '3272', NULL, NULL);
INSERT INTO public.kabupatens VALUES (181, 11, 'Kota', 'Kediri', '71', '3571', NULL, NULL);
INSERT INTO public.kabupatens VALUES (182, 32, 'Kabupaten', 'Bone', '08', '7308', NULL, NULL);
INSERT INTO public.kabupatens VALUES (183, 24, 'Kabupaten', 'Keerom', '11', '9111', NULL, NULL);
INSERT INTO public.kabupatens VALUES (184, 9, 'Kabupaten', 'Sukabumi', '02', '3202', NULL, NULL);
INSERT INTO public.kabupatens VALUES (185, 7, 'Kabupaten', 'Bone Bolango', '03', '7503', NULL, NULL);
INSERT INTO public.kabupatens VALUES (186, 10, 'Kabupaten', 'Kendal', '24', '3324', NULL, NULL);
INSERT INTO public.kabupatens VALUES (187, 15, 'Kota', 'Bontang', '74', '6474', NULL, NULL);
INSERT INTO public.kabupatens VALUES (188, 34, 'Kota', 'Kendari', '71', '7471', NULL, NULL);
INSERT INTO public.kabupatens VALUES (189, 28, 'Kabupaten', 'Boven Digoel', '02', '9302', NULL, NULL);
INSERT INTO public.kabupatens VALUES (190, 4, 'Kabupaten', 'Kepahiang', '08', '1708', NULL, NULL);
INSERT INTO public.kabupatens VALUES (191, 10, 'Kabupaten', 'Boyolali', '09', '3309', NULL, NULL);
INSERT INTO public.kabupatens VALUES (192, 14, 'Kabupaten', 'Sukamara', '08', '6208', NULL, NULL);
INSERT INTO public.kabupatens VALUES (193, 18, 'Kabupaten', 'Kepulauan Anambas', '05', '2105', NULL, NULL);
INSERT INTO public.kabupatens VALUES (194, 10, 'Kabupaten', 'Sukoharjo', '11', '3311', NULL, NULL);
INSERT INTO public.kabupatens VALUES (195, 23, 'Kabupaten', 'Sumba Barat', '12', '5312', NULL, NULL);
INSERT INTO public.kabupatens VALUES (196, 10, 'Kabupaten', 'Brebes', '29', '3329', NULL, NULL);
INSERT INTO public.kabupatens VALUES (197, 36, 'Kota', 'Bukittinggi', '75', '1375', NULL, NULL);
INSERT INTO public.kabupatens VALUES (198, 2, 'Kabupaten', 'Buleleng', '08', '5108', NULL, NULL);
INSERT INTO public.kabupatens VALUES (199, 32, 'Kabupaten', 'Bulukumba', '02', '7302', NULL, NULL);
INSERT INTO public.kabupatens VALUES (200, 23, 'Kabupaten', 'Sumba Barat Daya', '18', '5318', NULL, NULL);
INSERT INTO public.kabupatens VALUES (201, 23, 'Kabupaten', 'Sumba Tengah', '17', '5317', NULL, NULL);
INSERT INTO public.kabupatens VALUES (202, 23, 'Kabupaten', 'Sumba Timur', '11', '5311', NULL, NULL);
INSERT INTO public.kabupatens VALUES (203, 16, 'Kabupaten', 'Bulungan', '01', '6501', NULL, NULL);
INSERT INTO public.kabupatens VALUES (204, 22, 'Kabupaten', 'Sumbawa', '04', '5204', NULL, NULL);
INSERT INTO public.kabupatens VALUES (205, 8, 'Kabupaten', 'Bungo', '08', '1508', NULL, NULL);
INSERT INTO public.kabupatens VALUES (206, 22, 'Kabupaten', 'Sumbawa Barat', '07', '5207', NULL, NULL);
INSERT INTO public.kabupatens VALUES (207, 33, 'Kabupaten', 'Buol', '05', '7205', NULL, NULL);
INSERT INTO public.kabupatens VALUES (208, 9, 'Kabupaten', 'Sumedang', '11', '3211', NULL, NULL);
INSERT INTO public.kabupatens VALUES (209, 20, 'Kabupaten', 'Buru', '04', '8104', NULL, NULL);
INSERT INTO public.kabupatens VALUES (210, 20, 'Kabupaten', 'Buru Selatan', '09', '8109', NULL, NULL);
INSERT INTO public.kabupatens VALUES (211, 20, 'Kabupaten', 'Kepulauan Aru', '07', '8107', NULL, NULL);
INSERT INTO public.kabupatens VALUES (212, 11, 'Kabupaten', 'Sumenep', '29', '3529', NULL, NULL);
INSERT INTO public.kabupatens VALUES (213, 34, 'Kabupaten', 'Buton', '04', '7404', NULL, NULL);
INSERT INTO public.kabupatens VALUES (214, 8, 'Kota', 'Sungai Penuh', '72', '1572', NULL, NULL);
INSERT INTO public.kabupatens VALUES (215, 34, 'Kabupaten', 'Buton Selatan', '15', '7415', NULL, NULL);
INSERT INTO public.kabupatens VALUES (216, 24, 'Kabupaten', 'Supiori', '19', '9119', NULL, NULL);
INSERT INTO public.kabupatens VALUES (217, 34, 'Kabupaten', 'Buton Tengah', '14', '7414', NULL, NULL);
INSERT INTO public.kabupatens VALUES (218, 34, 'Kabupaten', 'Buton Utara', '10', '7410', NULL, NULL);
INSERT INTO public.kabupatens VALUES (219, 11, 'Kota', 'Surabaya', '78', '3578', NULL, NULL);
INSERT INTO public.kabupatens VALUES (220, 36, 'Kabupaten', 'Kepulauan Mentawai', '09', '1309', NULL, NULL);
INSERT INTO public.kabupatens VALUES (221, 9, 'Kabupaten', 'Ciamis', '07', '3207', NULL, NULL);
INSERT INTO public.kabupatens VALUES (222, 10, 'Kota', 'Surakarta', '72', '3372', NULL, NULL);
INSERT INTO public.kabupatens VALUES (223, 30, 'Kabupaten', 'Kepulauan Meranti', '10', '1410', NULL, NULL);
INSERT INTO public.kabupatens VALUES (224, 9, 'Kabupaten', 'Cianjur', '03', '3203', NULL, NULL);
INSERT INTO public.kabupatens VALUES (225, 13, 'Kabupaten', 'Tabalong', '09', '6309', NULL, NULL);
INSERT INTO public.kabupatens VALUES (226, 35, 'Kabupaten', 'Kepulauan Sangihe', '03', '7103', NULL, NULL);
INSERT INTO public.kabupatens VALUES (227, 32, 'Kabupaten', 'Kepulauan Selayar', '01', '7301', NULL, NULL);
INSERT INTO public.kabupatens VALUES (228, 10, 'Kabupaten', 'Cilacap', '01', '3301', NULL, NULL);
INSERT INTO public.kabupatens VALUES (229, 3, 'Kota', 'Cilegon', '72', '3672', NULL, NULL);
INSERT INTO public.kabupatens VALUES (230, 2, 'Kabupaten', 'Tabanan', '02', '5102', NULL, NULL);
INSERT INTO public.kabupatens VALUES (231, 9, 'Kota', 'Cimahi', '77', '3277', NULL, NULL);
INSERT INTO public.kabupatens VALUES (232, 6, 'Kabupaten', 'Kepulauan Seribu', '01', '3101', NULL, NULL);
INSERT INTO public.kabupatens VALUES (233, 32, 'Kabupaten', 'Takalar', '05', '7305', NULL, NULL);
INSERT INTO public.kabupatens VALUES (234, 9, 'Kota', 'Cirebon', '74', '3274', NULL, NULL);
INSERT INTO public.kabupatens VALUES (235, 35, 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '09', '7109', NULL, NULL);
INSERT INTO public.kabupatens VALUES (236, 21, 'Kabupaten', 'Kepulauan Sula', '05', '8205', NULL, NULL);
INSERT INTO public.kabupatens VALUES (237, 26, 'Kabupaten', 'Tambrauw', '09', '9209', NULL, NULL);
INSERT INTO public.kabupatens VALUES (238, 35, 'Kabupaten', 'Kepulauan Talaud', '04', '7104', NULL, NULL);
INSERT INTO public.kabupatens VALUES (239, 20, 'Kabupaten', 'Kepulauan Tanimbar (Maluku Tenggara Barat)', '03', '8103', NULL, NULL);
INSERT INTO public.kabupatens VALUES (240, 9, 'Kabupaten', 'Cirebon', '09', '3209', NULL, NULL);
INSERT INTO public.kabupatens VALUES (241, 38, 'Kabupaten', 'Dairi', '11', '1211', NULL, NULL);
INSERT INTO public.kabupatens VALUES (242, 16, 'Kabupaten', 'Tana Tidung', '04', '6504', NULL, NULL);
INSERT INTO public.kabupatens VALUES (243, 29, 'Kabupaten', 'Deiyai', '08', '9408', NULL, NULL);
INSERT INTO public.kabupatens VALUES (244, 24, 'Kabupaten', 'Kepulauan Yapen', '05', '9105', NULL, NULL);
INSERT INTO public.kabupatens VALUES (245, 38, 'Kabupaten', 'Deli Serdang', '07', '1207', NULL, NULL);
INSERT INTO public.kabupatens VALUES (246, 32, 'Kabupaten', 'Tana Toraja', '18', '7318', NULL, NULL);
INSERT INTO public.kabupatens VALUES (247, 10, 'Kabupaten', 'Demak', '21', '3321', NULL, NULL);
INSERT INTO public.kabupatens VALUES (248, 8, 'Kabupaten', 'Kerinci', '01', '1501', NULL, NULL);
INSERT INTO public.kabupatens VALUES (249, 13, 'Kabupaten', 'Tanah Bumbu', '10', '6310', NULL, NULL);
INSERT INTO public.kabupatens VALUES (250, 2, 'Kota', 'Denpasar', '71', '5171', NULL, NULL);
INSERT INTO public.kabupatens VALUES (251, 12, 'Kabupaten', 'Ketapang', '04', '6104', NULL, NULL);
INSERT INTO public.kabupatens VALUES (252, 9, 'Kota', 'Depok', '76', '3276', NULL, NULL);
INSERT INTO public.kabupatens VALUES (253, 36, 'Kabupaten', 'Tanah Datar', '04', '1304', NULL, NULL);
INSERT INTO public.kabupatens VALUES (254, 10, 'Kabupaten', 'Klaten', '10', '3310', NULL, NULL);
INSERT INTO public.kabupatens VALUES (255, 36, 'Kabupaten', 'Dharmasraya', '10', '1310', NULL, NULL);
INSERT INTO public.kabupatens VALUES (256, 13, 'Kabupaten', 'Tanah Laut', '01', '6301', NULL, NULL);
INSERT INTO public.kabupatens VALUES (257, 29, 'Kabupaten', 'Dogiyai', '06', '9406', NULL, NULL);
INSERT INTO public.kabupatens VALUES (258, 2, 'Kabupaten', 'Klungkung', '05', '5105', NULL, NULL);
INSERT INTO public.kabupatens VALUES (259, 34, 'Kabupaten', 'Kolaka', '01', '7401', NULL, NULL);
INSERT INTO public.kabupatens VALUES (260, 3, 'Kota', 'Tangerang', '71', '3671', NULL, NULL);
INSERT INTO public.kabupatens VALUES (261, 34, 'Kabupaten', 'Kolaka Timur', '11', '7411', NULL, NULL);
INSERT INTO public.kabupatens VALUES (262, 3, 'Kabupaten', 'Tangerang', '03', '3603', NULL, NULL);
INSERT INTO public.kabupatens VALUES (263, 3, 'Kota', 'Tangerang Selatan', '74', '3674', NULL, NULL);
INSERT INTO public.kabupatens VALUES (264, 19, 'Kabupaten', 'Tanggamus', '06', '1806', NULL, NULL);
INSERT INTO public.kabupatens VALUES (265, 34, 'Kabupaten', 'Kolaka Utara', '08', '7408', NULL, NULL);
INSERT INTO public.kabupatens VALUES (266, 34, 'Kabupaten', 'Konawe', '02', '7402', NULL, NULL);
INSERT INTO public.kabupatens VALUES (267, 34, 'Kabupaten', 'Konawe Kepulauan', '12', '7412', NULL, NULL);
INSERT INTO public.kabupatens VALUES (268, 38, 'Kota', 'Tanjung Balai', '74', '1274', NULL, NULL);
INSERT INTO public.kabupatens VALUES (269, 34, 'Kabupaten', 'Konawe Selatan', '05', '7405', NULL, NULL);
INSERT INTO public.kabupatens VALUES (270, 34, 'Kabupaten', 'Konawe Utara', '09', '7409', NULL, NULL);
INSERT INTO public.kabupatens VALUES (271, 13, 'Kabupaten', 'Kotabaru', '02', '6302', NULL, NULL);
INSERT INTO public.kabupatens VALUES (272, 8, 'Kabupaten', 'Tanjung Jabung Barat', '06', '1506', NULL, NULL);
INSERT INTO public.kabupatens VALUES (273, 35, 'Kota', 'Kotamobagu', '74', '7174', NULL, NULL);
INSERT INTO public.kabupatens VALUES (274, 8, 'Kabupaten', 'Tanjung Jabung Timur', '07', '1507', NULL, NULL);
INSERT INTO public.kabupatens VALUES (275, 14, 'Kabupaten', 'Kotawaringin Barat', '01', '6201', NULL, NULL);
INSERT INTO public.kabupatens VALUES (276, 14, 'Kabupaten', 'Kotawaringin Timur', '02', '6202', NULL, NULL);
INSERT INTO public.kabupatens VALUES (277, 18, 'Kota', 'Tanjung Pinang', '72', '2172', NULL, NULL);
INSERT INTO public.kabupatens VALUES (278, 30, 'Kabupaten', 'Kuantan Singingi', '09', '1409', NULL, NULL);
INSERT INTO public.kabupatens VALUES (279, 38, 'Kabupaten', 'Tapanuli Selatan', '03', '1203', NULL, NULL);
INSERT INTO public.kabupatens VALUES (280, 12, 'Kabupaten', 'Kubu Raya', '12', '6112', NULL, NULL);
INSERT INTO public.kabupatens VALUES (281, 10, 'Kabupaten', 'Kudus', '19', '3319', NULL, NULL);
INSERT INTO public.kabupatens VALUES (282, 38, 'Kabupaten', 'Tapanuli Tengah', '01', '1201', NULL, NULL);
INSERT INTO public.kabupatens VALUES (283, 38, 'Kabupaten', 'Tapanuli Utara', '02', '1202', NULL, NULL);
INSERT INTO public.kabupatens VALUES (284, 13, 'Kabupaten', 'Tapin', '05', '6305', NULL, NULL);
INSERT INTO public.kabupatens VALUES (285, 16, 'Kota', 'Tarakan', '71', '6571', NULL, NULL);
INSERT INTO public.kabupatens VALUES (286, 9, 'Kota', 'Tasikmalaya', '78', '3278', NULL, NULL);
INSERT INTO public.kabupatens VALUES (287, 5, 'Kabupaten', 'Kulon Progo', '01', '3401', NULL, NULL);
INSERT INTO public.kabupatens VALUES (288, 9, 'Kabupaten', 'Kuningan', '08', '3208', NULL, NULL);
INSERT INTO public.kabupatens VALUES (289, 23, 'Kabupaten', 'Kupang', '01', '5301', NULL, NULL);
INSERT INTO public.kabupatens VALUES (290, 23, 'Kota', 'Kupang', '71', '5371', NULL, NULL);
INSERT INTO public.kabupatens VALUES (291, 9, 'Kabupaten', 'Tasikmalaya', '06', '3206', NULL, NULL);
INSERT INTO public.kabupatens VALUES (292, 15, 'Kabupaten', 'Kutai Barat', '07', '6407', NULL, NULL);
INSERT INTO public.kabupatens VALUES (293, 15, 'Kabupaten', 'Kutai Kartanegara', '02', '6402', NULL, NULL);
INSERT INTO public.kabupatens VALUES (294, 15, 'Kabupaten', 'Kutai Timur', '08', '6408', NULL, NULL);
INSERT INTO public.kabupatens VALUES (295, 38, 'Kabupaten', 'Labuhanbatu', '10', '1210', NULL, NULL);
INSERT INTO public.kabupatens VALUES (296, 38, 'Kota', 'Tebing Tinggi', '76', '1276', NULL, NULL);
INSERT INTO public.kabupatens VALUES (297, 38, 'Kabupaten', 'Labuhanbatu Selatan', '22', '1222', NULL, NULL);
INSERT INTO public.kabupatens VALUES (298, 8, 'Kabupaten', 'Tebo', '09', '1509', NULL, NULL);
INSERT INTO public.kabupatens VALUES (299, 10, 'Kabupaten', 'Tegal', '28', '3328', NULL, NULL);
INSERT INTO public.kabupatens VALUES (300, 10, 'Kota', 'Tegal', '76', '3376', NULL, NULL);
INSERT INTO public.kabupatens VALUES (301, 25, 'Kabupaten', 'Teluk Bintuni', '06', '9206', NULL, NULL);
INSERT INTO public.kabupatens VALUES (302, 25, 'Kabupaten', 'Teluk Wondama', '07', '9207', NULL, NULL);
INSERT INTO public.kabupatens VALUES (303, 38, 'Kabupaten', 'Labuhanbatu Utara', '23', '1223', NULL, NULL);
INSERT INTO public.kabupatens VALUES (304, 10, 'Kabupaten', 'Temanggung', '23', '3323', NULL, NULL);
INSERT INTO public.kabupatens VALUES (305, 37, 'Kabupaten', 'Lahat', '04', '1604', NULL, NULL);
INSERT INTO public.kabupatens VALUES (306, 21, 'Kota', 'Ternate', '71', '8271', NULL, NULL);
INSERT INTO public.kabupatens VALUES (307, 14, 'Kabupaten', 'Lamandau', '09', '6209', NULL, NULL);
INSERT INTO public.kabupatens VALUES (308, 22, 'Kabupaten', 'Dompu', '05', '5205', NULL, NULL);
INSERT INTO public.kabupatens VALUES (309, 33, 'Kabupaten', 'Donggala', '03', '7203', NULL, NULL);
INSERT INTO public.kabupatens VALUES (310, 30, 'Kota', 'Dumai', '72', '1472', NULL, NULL);
INSERT INTO public.kabupatens VALUES (311, 37, 'Kabupaten', 'Empat Lawang', '11', '1611', NULL, NULL);
INSERT INTO public.kabupatens VALUES (312, 11, 'Kabupaten', 'Lamongan', '24', '3524', NULL, NULL);
INSERT INTO public.kabupatens VALUES (313, 23, 'Kabupaten', 'Ende', '08', '5308', NULL, NULL);
INSERT INTO public.kabupatens VALUES (314, 19, 'Kabupaten', 'Lampung Barat', '04', '1804', NULL, NULL);
INSERT INTO public.kabupatens VALUES (315, 21, 'Kota', 'Tidore Kepulauan', '72', '8272', NULL, NULL);
INSERT INTO public.kabupatens VALUES (316, 32, 'Kabupaten', 'Enrekang', '16', '7316', NULL, NULL);
INSERT INTO public.kabupatens VALUES (317, 19, 'Kabupaten', 'Lampung Selatan', '01', '1801', NULL, NULL);
INSERT INTO public.kabupatens VALUES (318, 25, 'Kabupaten', 'Fak Fak', '03', '9203', NULL, NULL);
INSERT INTO public.kabupatens VALUES (319, 23, 'Kabupaten', 'Timor Tengah Selatan', '02', '5302', NULL, NULL);
INSERT INTO public.kabupatens VALUES (320, 19, 'Kabupaten', 'Lampung Tengah', '02', '1802', NULL, NULL);
INSERT INTO public.kabupatens VALUES (321, 23, 'Kabupaten', 'Flores Timur', '06', '5306', NULL, NULL);
INSERT INTO public.kabupatens VALUES (322, 19, 'Kabupaten', 'Lampung Timur', '07', '1807', NULL, NULL);
INSERT INTO public.kabupatens VALUES (324, 23, 'Kabupaten', 'Timor Tengah Utara', '03', '5303', NULL, NULL);
INSERT INTO public.kabupatens VALUES (325, 19, 'Kabupaten', 'Lampung Utara', '03', '1803', NULL, NULL);
INSERT INTO public.kabupatens VALUES (326, 38, 'Kabupaten', 'Toba', '12', '1212', NULL, NULL);
INSERT INTO public.kabupatens VALUES (327, 33, 'Kabupaten', 'Tojo Una Una', '09', '7209', NULL, NULL);
INSERT INTO public.kabupatens VALUES (328, 1, 'Kabupaten', 'Gayo Lues', '13', '1113', NULL, NULL);
INSERT INTO public.kabupatens VALUES (329, 12, 'Kabupaten', 'Landak', '08', '6108', NULL, NULL);
INSERT INTO public.kabupatens VALUES (330, 2, 'Kabupaten', 'Gianyar', '04', '5104', NULL, NULL);
INSERT INTO public.kabupatens VALUES (331, 38, 'Kabupaten', 'Langkat', '05', '1205', NULL, NULL);
INSERT INTO public.kabupatens VALUES (332, 7, 'Kabupaten', 'Gorontalo', '01', '7501', NULL, NULL);
INSERT INTO public.kabupatens VALUES (333, 1, 'Kota', 'Langsa', '74', '1174', NULL, NULL);
INSERT INTO public.kabupatens VALUES (334, 33, 'Kabupaten', 'Toli Toli', '04', '7204', NULL, NULL);
INSERT INTO public.kabupatens VALUES (335, 27, 'Kabupaten', 'Lanny Jaya', '07', '9507', NULL, NULL);
INSERT INTO public.kabupatens VALUES (336, 3, 'Kabupaten', 'Lebak', '02', '3602', NULL, NULL);
INSERT INTO public.kabupatens VALUES (337, 7, 'Kota', 'Gorontalo', '71', '7571', NULL, NULL);
INSERT INTO public.kabupatens VALUES (338, 27, 'Kabupaten', 'Tolikara', '04', '9504', NULL, NULL);
INSERT INTO public.kabupatens VALUES (339, 35, 'Kota', 'Tomohon', '73', '7173', NULL, NULL);
INSERT INTO public.kabupatens VALUES (340, 4, 'Kabupaten', 'Lebong', '07', '1707', NULL, NULL);
INSERT INTO public.kabupatens VALUES (341, 32, 'Kabupaten', 'Toraja Utara', '26', '7326', NULL, NULL);
INSERT INTO public.kabupatens VALUES (342, 23, 'Kabupaten', 'Lembata', '13', '5313', NULL, NULL);
INSERT INTO public.kabupatens VALUES (343, 1, 'Kota', 'Lhokseumawe', '73', '1173', NULL, NULL);
INSERT INTO public.kabupatens VALUES (344, 36, 'Kabupaten', 'Lima Puluh Kota', '07', '1307', NULL, NULL);
INSERT INTO public.kabupatens VALUES (345, 18, 'Kabupaten', 'Lingga', '04', '2104', NULL, NULL);
INSERT INTO public.kabupatens VALUES (346, 11, 'Kabupaten', 'Trenggalek', '03', '3503', NULL, NULL);
INSERT INTO public.kabupatens VALUES (347, 20, 'Kota', 'Tual', '72', '8172', NULL, NULL);
INSERT INTO public.kabupatens VALUES (348, 11, 'Kabupaten', 'Tuban', '23', '3523', NULL, NULL);
INSERT INTO public.kabupatens VALUES (349, 22, 'Kabupaten', 'Lombok Barat', '01', '5201', NULL, NULL);
INSERT INTO public.kabupatens VALUES (350, 19, 'Kabupaten', 'Tulang Bawang', '05', '1805', NULL, NULL);
INSERT INTO public.kabupatens VALUES (351, 22, 'Kabupaten', 'Lombok Tengah', '02', '5202', NULL, NULL);
INSERT INTO public.kabupatens VALUES (352, 22, 'Kabupaten', 'Lombok Timur', '03', '5203', NULL, NULL);
INSERT INTO public.kabupatens VALUES (353, 19, 'Kabupaten', 'Tulang Bawang Barat', '12', '1812', NULL, NULL);
INSERT INTO public.kabupatens VALUES (354, 22, 'Kabupaten', 'Lombok Utara', '08', '5208', NULL, NULL);
INSERT INTO public.kabupatens VALUES (355, 37, 'Kota', 'Lubuk Linggau', '73', '1673', NULL, NULL);
INSERT INTO public.kabupatens VALUES (356, 11, 'Kabupaten', 'Tulungagung', '04', '3504', NULL, NULL);
INSERT INTO public.kabupatens VALUES (357, 11, 'Kabupaten', 'Lumajang', '08', '3508', NULL, NULL);
INSERT INTO public.kabupatens VALUES (358, 32, 'Kabupaten', 'Wajo', '13', '7313', NULL, NULL);
INSERT INTO public.kabupatens VALUES (359, 32, 'Kabupaten', 'Luwu', '17', '7317', NULL, NULL);
INSERT INTO public.kabupatens VALUES (360, 32, 'Kabupaten', 'Luwu Timur', '24', '7324', NULL, NULL);
INSERT INTO public.kabupatens VALUES (361, 34, 'Kabupaten', 'Wakatobi', '07', '7407', NULL, NULL);
INSERT INTO public.kabupatens VALUES (362, 24, 'Kabupaten', 'Waropen', '15', '9115', NULL, NULL);
INSERT INTO public.kabupatens VALUES (363, 19, 'Kabupaten', 'Way Kanan', '08', '1808', NULL, NULL);
INSERT INTO public.kabupatens VALUES (364, 10, 'Kabupaten', 'Wonogiri', '12', '3312', NULL, NULL);
INSERT INTO public.kabupatens VALUES (365, 10, 'Kabupaten', 'Wonosobo', '07', '3307', NULL, NULL);
INSERT INTO public.kabupatens VALUES (366, 27, 'Kabupaten', 'Yahukimo', '03', '9503', NULL, NULL);
INSERT INTO public.kabupatens VALUES (367, 27, 'Kabupaten', 'Yalimo', '06', '9506', NULL, NULL);
INSERT INTO public.kabupatens VALUES (368, 5, 'Kota', 'Yogyakarta', '71', '3471', NULL, NULL);
INSERT INTO public.kabupatens VALUES (369, 32, 'Kabupaten', 'Luwu Utara', '22', '7322', NULL, NULL);
INSERT INTO public.kabupatens VALUES (370, 11, 'Kabupaten', 'Madiun', '19', '3519', NULL, NULL);
INSERT INTO public.kabupatens VALUES (371, 11, 'Kota', 'Madiun', '77', '3577', NULL, NULL);
INSERT INTO public.kabupatens VALUES (372, 10, 'Kabupaten', 'Magelang', '08', '3308', NULL, NULL);
INSERT INTO public.kabupatens VALUES (373, 10, 'Kota', 'Magelang', '71', '3371', NULL, NULL);
INSERT INTO public.kabupatens VALUES (374, 11, 'Kabupaten', 'Magetan', '20', '3520', NULL, NULL);
INSERT INTO public.kabupatens VALUES (375, 15, 'Kabupaten', 'Mahakam Ulu', '11', '6411', NULL, NULL);
INSERT INTO public.kabupatens VALUES (376, 9, 'Kabupaten', 'Majalengka', '10', '3210', NULL, NULL);
INSERT INTO public.kabupatens VALUES (377, 31, 'Kabupaten', 'Majene', '05', '7605', NULL, NULL);
INSERT INTO public.kabupatens VALUES (378, 32, 'Kota', 'Makassar', '71', '7371', NULL, NULL);
INSERT INTO public.kabupatens VALUES (379, 23, 'Kabupaten', 'Malaka', '21', '5321', NULL, NULL);
INSERT INTO public.kabupatens VALUES (380, 11, 'Kabupaten', 'Malang', '07', '3507', NULL, NULL);
INSERT INTO public.kabupatens VALUES (381, 11, 'Kota', 'Malang', '73', '3573', NULL, NULL);
INSERT INTO public.kabupatens VALUES (382, 16, 'Kabupaten', 'Malinau', '02', '6502', NULL, NULL);
INSERT INTO public.kabupatens VALUES (383, 20, 'Kabupaten', 'Maluku Barat Daya', '08', '8108', NULL, NULL);
INSERT INTO public.kabupatens VALUES (384, 20, 'Kabupaten', 'Maluku Tengah', '01', '8101', NULL, NULL);
INSERT INTO public.kabupatens VALUES (385, 20, 'Kabupaten', 'Maluku Tenggara', '02', '8102', NULL, NULL);
INSERT INTO public.kabupatens VALUES (386, 31, 'Kabupaten', 'Mamasa', '03', '7603', NULL, NULL);
INSERT INTO public.kabupatens VALUES (387, 24, 'Kabupaten', 'Mamberamo Raya', '20', '9120', NULL, NULL);
INSERT INTO public.kabupatens VALUES (388, 27, 'Kabupaten', 'Mamberamo Tengah', '05', '9505', NULL, NULL);
INSERT INTO public.kabupatens VALUES (389, 31, 'Kabupaten', 'Mamuju', '02', '7602', NULL, NULL);
INSERT INTO public.kabupatens VALUES (390, 31, 'Kabupaten', 'Mamuju Tengah', '06', '7606', NULL, NULL);
INSERT INTO public.kabupatens VALUES (391, 35, 'Kota', 'Manado', '71', '7171', NULL, NULL);
INSERT INTO public.kabupatens VALUES (392, 38, 'Kabupaten', 'Mandailing Natal', '13', '1213', NULL, NULL);
INSERT INTO public.kabupatens VALUES (393, 23, 'Kabupaten', 'Manggarai', '10', '5310', NULL, NULL);
INSERT INTO public.kabupatens VALUES (394, 23, 'Kabupaten', 'Manggarai Barat', '15', '5315', NULL, NULL);
INSERT INTO public.kabupatens VALUES (395, 23, 'Kabupaten', 'Manggarai Timur', '19', '5319', NULL, NULL);
INSERT INTO public.kabupatens VALUES (396, 25, 'Kabupaten', 'Manokwari', '02', '9202', NULL, NULL);
INSERT INTO public.kabupatens VALUES (397, 25, 'Kabupaten', 'Manokwari Selatan', '11', '9211', NULL, NULL);
INSERT INTO public.kabupatens VALUES (398, 28, 'Kabupaten', 'Mappi', '03', '9303', NULL, NULL);
INSERT INTO public.kabupatens VALUES (399, 32, 'Kabupaten', 'Maros', '09', '7309', NULL, NULL);
INSERT INTO public.kabupatens VALUES (400, 22, 'Kota', 'Mataram', '71', '5271', NULL, NULL);
INSERT INTO public.kabupatens VALUES (401, 26, 'Kabupaten', 'Maybrat', '10', '9210', NULL, NULL);
INSERT INTO public.kabupatens VALUES (402, 38, 'Kota', 'Medan', '71', '1271', NULL, NULL);
INSERT INTO public.kabupatens VALUES (403, 12, 'Kabupaten', 'Melawi', '10', '6110', NULL, NULL);
INSERT INTO public.kabupatens VALUES (404, 12, 'Kabupaten', 'Mempawah', '02', '6102', NULL, NULL);
INSERT INTO public.kabupatens VALUES (405, 8, 'Kabupaten', 'Merangin', '02', '1502', NULL, NULL);
INSERT INTO public.kabupatens VALUES (406, 28, 'Kabupaten', 'Merauke', '01', '9301', NULL, NULL);
INSERT INTO public.kabupatens VALUES (407, 19, 'Kabupaten', 'Mesuji', '11', '1811', NULL, NULL);
INSERT INTO public.kabupatens VALUES (408, 19, 'Kota', 'Metro', '72', '1872', NULL, NULL);
INSERT INTO public.kabupatens VALUES (409, 29, 'Kabupaten', 'Mimika', '04', '9404', NULL, NULL);
INSERT INTO public.kabupatens VALUES (410, 35, 'Kabupaten', 'Minahasa', '02', '7102', NULL, NULL);
INSERT INTO public.kabupatens VALUES (411, 35, 'Kabupaten', 'Minahasa Selatan', '05', '7105', NULL, NULL);
INSERT INTO public.kabupatens VALUES (412, 35, 'Kabupaten', 'Minahasa Tenggara', '07', '7107', NULL, NULL);
INSERT INTO public.kabupatens VALUES (413, 35, 'Kabupaten', 'Minahasa Utara', '06', '7106', NULL, NULL);
INSERT INTO public.kabupatens VALUES (414, 11, 'Kabupaten', 'Mojokerto', '16', '3516', NULL, NULL);
INSERT INTO public.kabupatens VALUES (415, 11, 'Kota', 'Mojokerto', '76', '3576', NULL, NULL);
INSERT INTO public.kabupatens VALUES (416, 33, 'Kabupaten', 'Morowali', '06', '7206', NULL, NULL);
INSERT INTO public.kabupatens VALUES (417, 33, 'Kabupaten', 'Morowali Utara', '12', '7212', NULL, NULL);
INSERT INTO public.kabupatens VALUES (418, 37, 'Kabupaten', 'Muara Enim', '03', '1603', NULL, NULL);
INSERT INTO public.kabupatens VALUES (419, 8, 'Kabupaten', 'Muaro Jambi', '05', '1505', NULL, NULL);
INSERT INTO public.kabupatens VALUES (420, 4, 'Kabupaten', 'Muko Muko', '06', '1706', NULL, NULL);
INSERT INTO public.kabupatens VALUES (421, 34, 'Kabupaten', 'Muna', '03', '7403', NULL, NULL);
INSERT INTO public.kabupatens VALUES (422, 34, 'Kabupaten', 'Muna Barat', '13', '7413', NULL, NULL);
INSERT INTO public.kabupatens VALUES (423, 14, 'Kabupaten', 'Murung Raya', '12', '6212', NULL, NULL);
INSERT INTO public.kabupatens VALUES (424, 37, 'Kabupaten', 'Musi Banyuasin', '06', '1606', NULL, NULL);
INSERT INTO public.kabupatens VALUES (425, 37, 'Kabupaten', 'Musi Rawas', '05', '1605', NULL, NULL);
INSERT INTO public.kabupatens VALUES (426, 37, 'Kabupaten', 'Musi Rawas Utara', '13', '1613', NULL, NULL);
INSERT INTO public.kabupatens VALUES (427, 29, 'Kabupaten', 'Nabire', '01', '9401', NULL, NULL);
INSERT INTO public.kabupatens VALUES (428, 1, 'Kabupaten', 'Nagan Raya', '15', '1115', NULL, NULL);
INSERT INTO public.kabupatens VALUES (429, 23, 'Kabupaten', 'Nagekeo', '16', '5316', NULL, NULL);
INSERT INTO public.kabupatens VALUES (430, 18, 'Kabupaten', 'Natuna', '03', '2103', NULL, NULL);
INSERT INTO public.kabupatens VALUES (431, 27, 'Kabupaten', 'Nduga', '08', '9508', NULL, NULL);
INSERT INTO public.kabupatens VALUES (432, 23, 'Kabupaten', 'Ngada', '09', '5309', NULL, NULL);
INSERT INTO public.kabupatens VALUES (433, 11, 'Kabupaten', 'Nganjuk', '18', '3518', NULL, NULL);
INSERT INTO public.kabupatens VALUES (434, 11, 'Kabupaten', 'Ngawi', '21', '3521', NULL, NULL);
INSERT INTO public.kabupatens VALUES (435, 38, 'Kabupaten', 'Nias', '04', '1204', NULL, NULL);
INSERT INTO public.kabupatens VALUES (436, 38, 'Kabupaten', 'Nias Barat', '25', '1225', NULL, NULL);
INSERT INTO public.kabupatens VALUES (437, 38, 'Kabupaten', 'Nias Selatan', '14', '1214', NULL, NULL);
INSERT INTO public.kabupatens VALUES (438, 38, 'Kabupaten', 'Nias Utara', '24', '1224', NULL, NULL);
INSERT INTO public.kabupatens VALUES (439, 16, 'Kabupaten', 'Nunukan', '03', '6503', NULL, NULL);
INSERT INTO public.kabupatens VALUES (440, 37, 'Kabupaten', 'Ogan Ilir', '10', '1610', NULL, NULL);
INSERT INTO public.kabupatens VALUES (441, 37, 'Kabupaten', 'Ogan Komering Ilir', '02', '1602', NULL, NULL);
INSERT INTO public.kabupatens VALUES (442, 37, 'Kabupaten', 'Ogan Komering Ulu', '01', '1601', NULL, NULL);
INSERT INTO public.kabupatens VALUES (443, 37, 'Kabupaten', 'Ogan Komering Ulu Selatan', '09', '1609', NULL, NULL);
INSERT INTO public.kabupatens VALUES (444, 37, 'Kabupaten', 'Ogan Komering Ulu Timur', '08', '1608', NULL, NULL);
INSERT INTO public.kabupatens VALUES (445, 11, 'Kabupaten', 'Pacitan', '01', '3501', NULL, NULL);
INSERT INTO public.kabupatens VALUES (446, 36, 'Kota', 'Padang', '71', '1371', NULL, NULL);
INSERT INTO public.kabupatens VALUES (447, 38, 'Kabupaten', 'Padang Lawas', '21', '1221', NULL, NULL);
INSERT INTO public.kabupatens VALUES (448, 38, 'Kabupaten', 'Padang Lawas Utara', '20', '1220', NULL, NULL);
INSERT INTO public.kabupatens VALUES (449, 36, 'Kota', 'Padang Panjang', '74', '1374', NULL, NULL);
INSERT INTO public.kabupatens VALUES (450, 36, 'Kabupaten', 'Padang Pariaman', '05', '1305', NULL, NULL);
INSERT INTO public.kabupatens VALUES (451, 38, 'Kota', 'Padangsidimpuan', '77', '1277', NULL, NULL);
INSERT INTO public.kabupatens VALUES (452, 37, 'Kota', 'Pagar Alam', '72', '1672', NULL, NULL);
INSERT INTO public.kabupatens VALUES (453, 7, 'Kabupaten', 'Pahuwato', '04', '7504', NULL, NULL);
INSERT INTO public.kabupatens VALUES (454, 38, 'Kabupaten', 'Pakpak Bharat', '15', '1215', NULL, NULL);
INSERT INTO public.kabupatens VALUES (455, 14, 'Kota', 'Palangkaraya', '71', '6271', NULL, NULL);
INSERT INTO public.kabupatens VALUES (456, 37, 'Kota', 'Palembang', '71', '1671', NULL, NULL);
INSERT INTO public.kabupatens VALUES (457, 32, 'Kota', 'Palopo', '73', '7373', NULL, NULL);
INSERT INTO public.kabupatens VALUES (458, 33, 'Kota', 'Palu', '71', '7271', NULL, NULL);
INSERT INTO public.kabupatens VALUES (459, 11, 'Kabupaten', 'Pamekasan', '28', '3528', NULL, NULL);
INSERT INTO public.kabupatens VALUES (460, 3, 'Kabupaten', 'Pandeglang', '01', '3601', NULL, NULL);
INSERT INTO public.kabupatens VALUES (461, 9, 'Kabupaten', 'Pangandaran', '18', '3218', NULL, NULL);
INSERT INTO public.kabupatens VALUES (462, 32, 'Kabupaten', 'Pangkajene Kepulauan', '10', '7310', NULL, NULL);
INSERT INTO public.kabupatens VALUES (463, 17, 'Kota', 'Pangkal Pinang', '71', '1971', NULL, NULL);
INSERT INTO public.kabupatens VALUES (464, 29, 'Kabupaten', 'Paniai', '03', '9403', NULL, NULL);
INSERT INTO public.kabupatens VALUES (465, 32, 'Kota', 'Pare Pare', '72', '7372', NULL, NULL);
INSERT INTO public.kabupatens VALUES (466, 36, 'Kota', 'Pariaman', '77', '1377', NULL, NULL);
INSERT INTO public.kabupatens VALUES (467, 33, 'Kabupaten', 'Parigi Moutong', '08', '7208', NULL, NULL);
INSERT INTO public.kabupatens VALUES (468, 36, 'Kabupaten', 'Pasaman', '08', '1308', NULL, NULL);
INSERT INTO public.kabupatens VALUES (469, 36, 'Kabupaten', 'Pasaman Barat', '12', '1312', NULL, NULL);
INSERT INTO public.kabupatens VALUES (470, 31, 'Kabupaten', 'Pasangkayu (Mamuju Utara)', '01', '7601', NULL, NULL);
INSERT INTO public.kabupatens VALUES (471, 15, 'Kabupaten', 'Paser', '01', '6401', NULL, NULL);
INSERT INTO public.kabupatens VALUES (472, 11, 'Kabupaten', 'Pasuruan', '14', '3514', NULL, NULL);
INSERT INTO public.kabupatens VALUES (473, 11, 'Kota', 'Pasuruan', '75', '3575', NULL, NULL);
INSERT INTO public.kabupatens VALUES (474, 10, 'Kabupaten', 'Pati', '18', '3318', NULL, NULL);
INSERT INTO public.kabupatens VALUES (475, 36, 'Kota', 'Payakumbuh', '76', '1376', NULL, NULL);
INSERT INTO public.kabupatens VALUES (476, 25, 'Kabupaten', 'Pegunungan Arfak', '12', '9212', NULL, NULL);
INSERT INTO public.kabupatens VALUES (477, 27, 'Kabupaten', 'Pegunungan Bintang', '02', '9502', NULL, NULL);
INSERT INTO public.kabupatens VALUES (478, 10, 'Kabupaten', 'Pekalongan', '26', '3326', NULL, NULL);
INSERT INTO public.kabupatens VALUES (479, 10, 'Kota', 'Pekalongan', '75', '3375', NULL, NULL);
INSERT INTO public.kabupatens VALUES (480, 30, 'Kota', 'Pekanbaru', '71', '1471', NULL, NULL);
INSERT INTO public.kabupatens VALUES (481, 30, 'Kabupaten', 'Pelalawan', '05', '1405', NULL, NULL);
INSERT INTO public.kabupatens VALUES (482, 10, 'Kabupaten', 'Pemalang', '27', '3327', NULL, NULL);
INSERT INTO public.kabupatens VALUES (483, 38, 'Kota', 'Pematangsiantar', '72', '1272', NULL, NULL);
INSERT INTO public.kabupatens VALUES (484, 15, 'Kabupaten', 'Penajam Paser Utara', '09', '6409', NULL, NULL);
INSERT INTO public.kabupatens VALUES (485, 37, 'Kabupaten', 'Penukal Abab Lematang Ilir', '12', '1612', NULL, NULL);
INSERT INTO public.kabupatens VALUES (486, 19, 'Kabupaten', 'Pesawaran', '09', '1809', NULL, NULL);
INSERT INTO public.kabupatens VALUES (487, 19, 'Kabupaten', 'Pesisir Barat', '13', '1813', NULL, NULL);
INSERT INTO public.kabupatens VALUES (488, 36, 'Kabupaten', 'Pesisir Selatan', '01', '1301', NULL, NULL);
INSERT INTO public.kabupatens VALUES (489, 1, 'Kabupaten', 'Pidie', '07', '1107', NULL, NULL);
INSERT INTO public.kabupatens VALUES (490, 1, 'Kabupaten', 'Pidie Jaya', '18', '1118', NULL, NULL);
INSERT INTO public.kabupatens VALUES (491, 32, 'Kabupaten', 'Pinrang', '15', '7315', NULL, NULL);
INSERT INTO public.kabupatens VALUES (492, 31, 'Kabupaten', 'Polewali Mandar', '04', '7604', NULL, NULL);
INSERT INTO public.kabupatens VALUES (493, 11, 'Kabupaten', 'Ponorogo', '02', '3502', NULL, NULL);
INSERT INTO public.kabupatens VALUES (494, 12, 'Kota', 'Pontianak', '71', '6171', NULL, NULL);
INSERT INTO public.kabupatens VALUES (495, 33, 'Kabupaten', 'Poso', '02', '7202', NULL, NULL);
INSERT INTO public.kabupatens VALUES (496, 37, 'Kota', 'Prabumulih', '74', '1674', NULL, NULL);
INSERT INTO public.kabupatens VALUES (497, 19, 'Kabupaten', 'Pringsewu', '10', '1810', NULL, NULL);
INSERT INTO public.kabupatens VALUES (498, 11, 'Kabupaten', 'Probolinggo', '13', '3513', NULL, NULL);
INSERT INTO public.kabupatens VALUES (499, 11, 'Kota', 'Probolinggo', '74', '3574', NULL, NULL);
INSERT INTO public.kabupatens VALUES (500, 14, 'Kabupaten', 'Pulang Pisau', '11', '6211', NULL, NULL);
INSERT INTO public.kabupatens VALUES (501, 21, 'Kabupaten', 'Pulau Morotai', '07', '8207', NULL, NULL);
INSERT INTO public.kabupatens VALUES (502, 21, 'Kabupaten', 'Pulau Taliabu', '08', '8208', NULL, NULL);
INSERT INTO public.kabupatens VALUES (503, 29, 'Kabupaten', 'Puncak', '05', '9405', NULL, NULL);
INSERT INTO public.kabupatens VALUES (504, 29, 'Kabupaten', 'Puncak Jaya', '02', '9402', NULL, NULL);
INSERT INTO public.kabupatens VALUES (505, 10, 'Kabupaten', 'Purbalingga', '03', '3303', NULL, NULL);
INSERT INTO public.kabupatens VALUES (506, 9, 'Kabupaten', 'Purwakarta', '14', '3214', NULL, NULL);
INSERT INTO public.kabupatens VALUES (507, 10, 'Kabupaten', 'Purworejo', '06', '3306', NULL, NULL);
INSERT INTO public.kabupatens VALUES (508, 26, 'Kabupaten', 'Raja Ampat', '05', '9205', NULL, NULL);
INSERT INTO public.kabupatens VALUES (509, 4, 'Kabupaten', 'Rejang Lebong', '02', '1702', NULL, NULL);
INSERT INTO public.kabupatens VALUES (510, 10, 'Kabupaten', 'Rembang', '17', '3317', NULL, NULL);
INSERT INTO public.kabupatens VALUES (511, 30, 'Kabupaten', 'Rokan Hilir', '07', '1407', NULL, NULL);
INSERT INTO public.kabupatens VALUES (512, 30, 'Kabupaten', 'Rokan Hulu', '06', '1406', NULL, NULL);
INSERT INTO public.kabupatens VALUES (513, 23, 'Kabupaten', 'Rote Ndao', '14', '5314', NULL, NULL);
INSERT INTO public.kabupatens VALUES (514, 1, 'Kota', 'Sabang', '72', '1172', NULL, NULL);


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 228
-- Name: kabupatens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kabupatens_id_seq', 1, false);


--
-- TOC entry 4782 (class 2606 OID 19125)
-- Name: kabupatens kabupatens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kabupatens
    ADD CONSTRAINT kabupatens_pkey PRIMARY KEY (id);


--
-- TOC entry 4783 (class 2606 OID 19126)
-- Name: kabupatens kabupatens_provinsi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kabupatens
    ADD CONSTRAINT kabupatens_provinsi_id_foreign FOREIGN KEY (provinsi_id) REFERENCES public.provinsis(id) ON DELETE CASCADE;


-- Completed on 2025-10-20 17:04:48

--
-- PostgreSQL database dump complete
--

