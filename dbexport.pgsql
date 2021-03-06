--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: categories; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    departament character varying NOT NULL,
    category character varying NOT NULL
);


ALTER TABLE public.categories OWNER TO eblej_director;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: eblej_director
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO eblej_director;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eblej_director
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: category_links; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.category_links (
    id integer NOT NULL,
    departament character varying NOT NULL,
    category character varying NOT NULL,
    cat_link character varying NOT NULL
);


ALTER TABLE public.category_links OWNER TO eblej_director;

--
-- Name: category_links_id_seq; Type: SEQUENCE; Schema: public; Owner: eblej_director
--

CREATE SEQUENCE public.category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_links_id_seq OWNER TO eblej_director;

--
-- Name: category_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eblej_director
--

ALTER SEQUENCE public.category_links_id_seq OWNED BY public.category_links.id;


--
-- Name: departaments; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.departaments (
    departament_type character varying NOT NULL
);


ALTER TABLE public.departaments OWNER TO eblej_director;

--
-- Name: filters_table; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filters_table (
    id integer NOT NULL,
    filters jsonb NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.filters_table OWNER TO eblej_director;

--
-- Name: filters_table_id_seq; Type: SEQUENCE; Schema: public; Owner: eblej_director
--

CREATE SEQUENCE public.filters_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filters_table_id_seq OWNER TO eblej_director;

--
-- Name: filters_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eblej_director
--

ALTER SEQUENCE public.filters_table_id_seq OWNED BY public.filters_table.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.products (
    id integer NOT NULL,
    creation_time bigint NOT NULL,
    details jsonb NOT NULL,
    owner character varying NOT NULL,
    spot character varying NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.products OWNER TO eblej_director;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: eblej_director
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO eblej_director;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eblej_director
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: category_links id; Type: DEFAULT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.category_links ALTER COLUMN id SET DEFAULT nextval('public.category_links_id_seq'::regclass);


--
-- Name: filters_table id; Type: DEFAULT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.filters_table ALTER COLUMN id SET DEFAULT nextval('public.filters_table_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.categories (id, departament, category) FROM stdin;
1	Sezonale	Dekorime p??r Krishtlindje
2	Sezonale	Artikuj Plazhi
3	Sezonale	Emb??lsira dhe biskota
4	Banjo	Pajisje Sanitare
5	Banjo	Aksesor?? bashkues dhe kaseta
6	Banjo	Mobilje p??r banjo
7	Banjo	Aksesor?? p??r banjo
8	Banjo	Produkte p??r Njer??z me Aft??si t?? Kufizuar
9	Banjo	Sauna
10	Banjo	P??rkujdesje Personale
11	Banjo	Tapet?? p??r tualet
12	Banjo	Higjen??
13	Banjo	Pastrim
14	Banjo	Pastrim Profesional
15	Banjo	Higjen?? profesional
16	Banjo	Higjen??
17	Materiale Nd??rtimi	Tuba dhe rakorderi
18	Materiale Nd??rtimi	Aksesor?? metali
19	Materiale Nd??rtimi	Vegla Nd??rtimi
20	Materiale Nd??rtimi	Silikon
22	Materiale Nd??rtimi	Shkarkimi i ujrave t?? p??rdorura
23	Materiale Nd??rtimi	Sistemi  i that??
24	Materiale Nd??rtimi	Izolimi termo-akustik
25	Materiale Nd??rtimi	Inerte dhe aditive
26	Materiale Nd??rtimi	Hidroizolim dhe mbrojtje
27	Materiale Nd??rtimi	Elemente nd??rtimtarie baz??
28	Materiale Nd??rtimi	Druri
29	Materiale Nd??rtimi	Streha dhe mbulesa
30	Materiale Nd??rtimi	Shkarkime t?? p??rgjithshme
31	Materiale Nd??rtimi	Sisteme ajrimi dhe oxhaqesh
32	Materiale Nd??rtimi	Dyshemet?? e jashtme
33	Materiale Nd??rtimi	Hekur dhe profile
34	Materiale Nd??rtimi	Depozita
35	Materiale Nd??rtimi	Sinjalistika
36	Materiale Nd??rtimi	Skela
37	Ngrohje - Ftohje	Elektrike
38	Ngrohje - Ftohje	Karburant
39	Ngrohje - Ftohje	Dru dhe Pelet
40	Ngrohje - Ftohje	Alternative
41	Mobilje	Ambjent Dite
42	Mobilje	Ambjent Nate
43	Mobilje	Ambient studimi dhe zyr??
44	Mobilje	Dekorime
45	Mobilje	Magazinim dhe organizim
46	Mobilje	Produkte p??r bebe
47	Mobilje	Ambjent i jasht??m
48	Mobilje	Ambient Kuzhine
49	Shtrimi	Parket
50	Shtrimi	Pllaka
51	Shtrimi	Mokete dhe linoleume
52	Elektrike	Pajisje p??r Instalime Elektrike
53	Elektrike	Sisteme Sigurie
54	Elektrike	Kab??ll dhe Aksesor??
55	Elektrike	Pajisje Elektrike
56	Elektrike	Elektrike t?? Tjera
57	Elektrike	Pajisje Industriale dhe Profesionale
58	Ndri??imi	Ndri??ues t?? brendshem
59	Ndri??imi	Ndricues Kopshti
60	Ndri??imi	Llamba
61	Kuzhina	Lavapjata
62	Kuzhina	En?? kuzhine
63	Kuzhina	Aksesor?? p??r kuzhina
64	Kuzhina	Pastrues
65	Kuzhina	Pastrim Profesional
66	Kuzhina	Uniforma Pune
67	Kuzhina	Higjen??
68	Kuzhina	Higjen?? Profesional
69	Kuzhina	Bisktota -caj
70	Druri	Binare dhe Ristela
71	Druri	L??nd?? Zdrukthtarie
72	Druri	Shkall??
73	Druri	Brava/Doreza dhe aksesor??
74	Druri	Dritare
75	Druri	Dyer t?? brendshme
76	Druri	Dyer t?? jashtme
77	Kopshtari	Dekorime
78	Kopshtari	Arredim i jasht??m
79	Kopshtari	Lule dhe bim??
80	Kopshtari	Vegla kopshti elektrike
81	Kopshtari	Vegla kopshti me bateri
82	Kopshtari	Vegla kopshti me karburant
83	Kopshtari	Vegla kopshti manuale
84	Kopshtari	Sisteme dhe pajisje p??r vaditje
85	Kopshtari	Barbekju
86	Kopshtari	Pajisje kantine
87	Kopshtari	Aksesor??
88	Kopshtari	Insekticide
89	Kopshtari	Tuba & Rakorderi
90	Kopshtari	Aksesor?? p??r vegla kopshti
91	Kopshtari	Artikuj Plazhi
92	Kopshtari	Pllaka
93	Kopshtari	Artikuj Plazhi
94	Kopshtari	Pastrim
95	Bojra	Bojra per Jashte
96	Bojra	Bojra per Brenda
97	Bojra	Bojra Dekorative
98	Bojra	Bojra Druri
99	Bojra	Bojra Metali
100	Bojra	Letra Muri
101	Bojra	Tretes
102	Bojra	Sprai
103	Bojra	Ngjites
104	Bojra	Vegla Lyerje
105	Bojra	Silikon
106	Bojra	Vegla nd??rtimi
107	Art	Bojera per Piktor
108	Art	Penela
109	Art	Korniza Fotosh dhe  Pikturash
110	Art	Piktura
111	Art	T?? Tjera
112	Hidraulike	Sisteme Zjarrfikse
113	Hidraulike	Profesionale/Industriale
114	Hidraulike	Tuba dhe Rakorderi
115	Vegla dhe Aksesor??	Hardware
116	Vegla dhe Aksesor??	Vegla Nd??rtimi
117	Vegla dhe Aksesor??	Veshje Pune Sigurie
118	Vegla dhe Aksesor??	Vegla Elektrike
119	Vegla dhe Aksesor??	Vegla Elektrike me Bateri
120	Vegla dhe Aksesor??	Aksesor?? p??r Vegla Elektrike
121	Vegla dhe Aksesor??	Vegla Mekanike
122	Vegla dhe Aksesor??	Vegla Mat??se
123	Vegla dhe Aksesor??	Vegla makine dhe Aksesore
124	Vegla dhe Aksesor??	Produkte sigurie
125	Zyr?? dhe Shkoll??	Materiale Arkivimi
126	Zyr?? dhe Shkoll??	Instrumenta shkrimi
127	Zyr?? dhe Shkoll??	Organizues tavoline
128	Zyr?? dhe Shkoll??	Pajisje lidh??se
129	Zyr?? dhe Shkoll??	Kartoleri dhe Let??r
130	Zyr?? dhe Shkoll??	Krijimtari p??r f??mij??
131	Zyr?? dhe Shkoll??	Tempera, boj??ra dhe lapostila
132	Zyr?? dhe Shkoll??	Memorje e jashtme
133	Zyr?? dhe Shkoll??	T?? Tjera
134	Zyr?? dhe Shkoll??	Aksesor?? zyre
135	Zyr?? dhe Shkoll??	Tabela
136	Zyr?? dhe Shkoll??	Makina llogarit??se
137	Zyr?? dhe Shkoll??	Audio dhe Video
138	Zyr?? dhe Shkoll??	IT
139	Zyr?? dhe Shkoll??	Kab??ll
140	Zyr?? dhe Shkoll??	??anta
141	Zyr?? dhe Shkoll??	Pastrues
142	Aksesor?? makinash	Mir??mbajtja
143	Aksesor?? makinash	Solucione dhe aditiv??
144	Aksesor?? makinash	Trajtues sip??rfaqesh dhe lustrues
145	Aksesor?? makinash	Aksesor??
146	Aksesor?? makinash	Llamba Makine
147	Aksesor?? makinash	Aksesore udhetimi te montueshem
148	Sport dhe hobi	Mjete peshkimi
149	Sport dhe hobi	Kamping
150	Sport dhe hobi	Bi??ikleta
151	Sport dhe hobi	Palestra
152	Sport dhe hobi	Artikuj Sportiv
153	Sport dhe hobi	Valixhe dhe ??anta udh??timi
154	Sport dhe hobi	Kamping
155	Elektrosht??piake	Frigorifer??
156	Elektrosht??piake	Lavatri??e & Thar??se
157	Elektrosht??piake	Pajisje Gatimi
158	Elektrosht??piake	Lavastovilie
159	Elektrosht??piake	Elektrosht??piake t?? vogla
160	Elektrosht??piake	Fshesa me vakum
161	Elektrosht??piake	TV dhe Audio
162	P??rkujdesje p??r kafsh??t	Ushqimi
163	P??rkujdesje p??r kafsh??t	Higjena dhe kozmetika
164	P??rkujdesje p??r kafsh??t	Sh??titje dhe arg??tim
165	P??rkujdesje p??r kafsh??t	Sht??pia
166	P??rkujdesje p??r kafsh??t	T?? Tjera
167	Magazinim & Lavanderi	Magazinim dhe organizim
168	Magazinim & Lavanderi	Lavanderi
169	Magazinim & Lavanderi	Pastrues
170	Produkte per bebe	M??sim & Loj??ra
171	Produkte per bebe	Higjen?? & P??rkujdesje
172	Produkte per bebe	Mobilje
173	Produkte per bebe	Tekstile Fjetje
174	Produkte per bebe	Karrige Makine & Karroca
175	Produkte per bebe	Ngr??nie & Aksesor??
176	Produkte per bebe	Siguri p??r bebe
177	Produkte per bebe	Fjongo
178	Dekor	Dekorime muri
179	Dekor	Perde dhe metrazhe
180	Dekor	Korniza dhe shufra p??r perde
181	Dekor	Grila p??r dritare
182	Dekor	Aksesor?? p??r perde
183	Dekor	Qirinj
184	Dekor	Tapet??
185	Dekor	Mbulesa tavoline
186	Dekor	Vazo & Mbajt??se Qiri
187	Dekor	Lule & Aromatik??
188	Dekor	Kosha & Magazinim
189	Dekor	Dhurata & Paketime
190	Dekor	Jastek??
191	Dekor	Qepje
192	Dekor	Ditelindje
193	Dekor	Festa
194	Tekstile dhe aksesore	Tekstile Fjetje
195	Tekstile dhe aksesore	Tekstile Banje
196	Bujq??si & Blegtori	Pajisje kantine
197	Bujq??si & Blegtori	Makineri blegtorale
199	Veshje dhe Mod??	Femra
200	Veshje dhe Mod??	Meshkuj
201	Veshje dhe Mod??	Uniseks
202	Veshje dhe Mod??	F??mij??
203	Ushqime dhe Pije	Pije alkolike
204	Ushqime dhe Pije	Pije jo-alkolike
205	Ushqime dhe Pije	Ushqime
206	Informatike	Kompjuter
207	Informatike	Laptop
208	Informatike	Komponente
209	Informatike	Printer & Scaner
210	Informatike	Adaptor & Kabuj
211	Informatike	Pajisje Rrjeti
212	Informatike	Software
213	Informatike	Periferike
214	Informatike	Aksesore
215	Informatike	Kancelari
216	Telefon & Tablet	Telefon
217	Telefon & Tablet	Tablet
218	Telefon & Tablet	Aksesore
219	Telefon & Tablet	Smart Watches
220	Telefon & Tablet	Kufje
222	Tv Video & Audio	Televizor
223	Tv Video & Audio	Video Projektor
224	Tv Video & Audio	Audio
225	Tv Video & Audio	DEKODER & TV BOX
226	Tv Video & Audio	Aksesore per TV
227	Dron - Kamera - Gimbal	Produkte DJI
228	Dron - Kamera - Gimbal	Produkte Feiytech
229	Dron - Kamera - Gimbal	Produkte Zhiyun
230	Dron - Kamera - Gimbal	Produkte Xiaomi
231	Dron - Kamera - Gimbal	Camera
232	Dron - Kamera - Gimbal	Aksesore te ndryshem
233	Lojera & Argetim	Konsola
234	Lojera & Argetim	Lojera
235	Lojera & Argetim	Controllers
236	Lojera & Argetim	Smart Balance
237	Lojera & Argetim	Scooters
238	Elektroshtepiake	Kondicioner
239	Elektroshtepiake	Produkte Smart
198	Bujq??si & Blegtori	Makineri bujq??sore
21	Materiale Nd??rtimi	Makineri nd??rtimi
288	VESHJE FEMRASH	Veshje
289	VESHJE FEMRASH	Intimo
290	VESHJE FEMRASH	K??puc??
291	VESHJE FEMRASH	Aksesor??
292	VESHJE FEMRASH	Plazh
293	VESHJE MESHKUJSH	Veshje
294	VESHJE MESHKUJSH	Intimo
295	VESHJE MESHKUJSH	K??puc??
296	VESHJE MESHKUJSH	Aksesor??
298	VESHJE F??MIJ??SH	Vajz??
299	VESHJE F??MIJ??SH	Djal??
\.


--
-- Data for Name: category_links; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.category_links (id, departament, category, cat_link) FROM stdin;
1	Sezonale	Dekorime p??r Krishtlindje	https://www.megateksa.com/al/sq/catalog/sezonale-dekorime-per-krishtlindje
2	Sezonale	Artikuj Plazhi	https://www.megateksa.com/al/sq/catalog/sezonale-artikuj-plazhi
3	Sezonale	Emb??lsira dhe biskota	https://www.megateksa.com/al/sq/catalog/sezonale-embelsira-dhe-biskota
4	Banjo	Pajisje Sanitare	https://www.megateksa.com/al/sq/catalog/bath-sanitary-ware
5	Banjo	Aksesor?? bashkues dhe kaseta	https://www.megateksa.com/al/sq/catalog/bath-connection-accessories-and-cisterns
6	Banjo	Mobilje p??r banjo	https://www.megateksa.com/al/sq/catalog/bath-bathroom-furniture
7	Banjo	Aksesor?? p??r banjo	https://www.megateksa.com/al/sq/catalog/bath-bath-accessories
8	Banjo	Produkte p??r Njer??z me Aft??si t?? Kufizuar	https://www.megateksa.com/al/sq/catalog/bath-comfort-life
9	Banjo	Sauna	https://www.megateksa.com/al/sq/catalog/bath-sauna
10	Banjo	P??rkujdesje Personale	https://www.megateksa.com/al/sq/catalog/bath-personal-care
11	Banjo	Tapet?? p??r tualet	https://www.megateksa.com/al/sq/catalog/banjo-tapete-per-tualet
12	Banjo	Higjen??	https://www.megateksa.com/al/sq/catalog/banjo-higjene
13	Banjo	Pastrim	https://www.megateksa.com/al/sq/catalog/banjo-pastrim
14	Banjo	Pastrim Profesional	https://www.megateksa.com/al/sq/catalog/banjo-pastrim-profesional
15	Banjo	Higjen?? profesional	https://www.megateksa.com/al/sq/catalog/banjo-higjene-profesional
16	Banjo	Higjen??	https://www.megateksa.com/al/sq/catalog/banjo-higjene:c638711a-5d80-4a4d-b47d-8823e961ff8b
17	Materiale Nd??rtimi	Tuba dhe rakorderi	https://www.megateksa.com/al/sq/catalog/building-materials-pipes-and-fittings
18	Materiale Nd??rtimi	Aksesor?? metali	https://www.megateksa.com/al/sq/catalog/building-materials-hardware
19	Materiale Nd??rtimi	Vegla Nd??rtimi	https://www.megateksa.com/al/sq/catalog/building-materials-building-tools
20	Materiale Nd??rtimi	Silikon	https://www.megateksa.com/al/sq/catalog/building-materials-silicon
21	Materiale Nd??rtimi	Makineri nd??rtimi\n	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-makineri-ndertimi
22	Materiale Nd??rtimi	Shkarkimi i ujrave t?? p??rdorura	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-shkarkimi-i-ujrave-te-perdorura
23	Materiale Nd??rtimi	Sistemi  i that??	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-sistemi-i-thate
24	Materiale Nd??rtimi	Izolimi termo-akustik	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-izolimi-termo-akustik
25	Materiale Nd??rtimi	Inerte dhe aditive	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-inerte-dhe-aditive
26	Materiale Nd??rtimi	Hidroizolim dhe mbrojtje	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-hidroizolim-dhe-mbrojtje
27	Materiale Nd??rtimi	Elemente nd??rtimtarie baz??	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-elemente-ndertimtarie-baze
28	Materiale Nd??rtimi	Druri	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-druri
29	Materiale Nd??rtimi	Streha dhe mbulesa	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-streha-dhe-mbulesa
30	Materiale Nd??rtimi	Shkarkime t?? p??rgjithshme	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-shkarkime-te-pergjithshme
31	Materiale Nd??rtimi	Sisteme ajrimi dhe oxhaqesh	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-sisteme-ajrimi-dhe-oxhaqesh
32	Materiale Nd??rtimi	Dyshemet?? e jashtme	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-dyshemete-e-jashtme
33	Materiale Nd??rtimi	Hekur dhe profile	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-hekur-dhe-profile
34	Materiale Nd??rtimi	Depozita	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-depozita
35	Materiale Nd??rtimi	Sinjalistika	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-sinjalistika
36	Materiale Nd??rtimi	Skela	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-skela
37	Ngrohje - Ftohje	Elektrike	https://www.megateksa.com/al/sq/catalog/heating-and-cooling-electrical
38	Ngrohje - Ftohje	Karburant	https://www.megateksa.com/al/sq/catalog/heating-and-cooling-fuel
39	Ngrohje - Ftohje	Dru dhe Pelet	https://www.megateksa.com/al/sq/catalog/heating-and-cooling-wood-and-pellet
40	Ngrohje - Ftohje	Alternative	https://www.megateksa.com/al/sq/catalog/heating-and-cooling-alternative
41	Mobilje	Ambjent Dite	https://www.megateksa.com/al/sq/catalog/furniture-decor-living-room-furniture
42	Mobilje	Ambjent Nate	https://www.megateksa.com/al/sq/catalog/furniture-decor-bedroom-furniture
43	Mobilje	Ambient studimi dhe zyr??	https://www.megateksa.com/al/sq/catalog/furniture-decor-office-furniture
44	Mobilje	Dekorime	https://www.megateksa.com/al/sq/catalog/furniture-decor-decoration
45	Mobilje	Magazinim dhe organizim	https://www.megateksa.com/al/sq/catalog/furniture-decor-storage-organization
46	Mobilje	Produkte p??r bebe	https://www.megateksa.com/al/sq/catalog/furniture-decor-baby-products
47	Mobilje	Ambjent i jasht??m	https://www.megateksa.com/al/sq/catalog/mobilje-dhe-dekor-ambjent-i-jashtem
48	Mobilje	Ambient Kuzhine	https://www.megateksa.com/al/sq/catalog/mobilje-ambient-kuzhine
49	Shtrimi	Parket	https://www.megateksa.com/al/sq/catalog/flooring-parquet
50	Shtrimi	Pllaka	https://www.megateksa.com/al/sq/catalog/flooring-tiles
51	Shtrimi	Mokete dhe linoleume	https://www.megateksa.com/al/sq/catalog/flooring-wall-to-wall-carpeting
52	Elektrike	Pajisje p??r Instalime Elektrike	https://www.megateksa.com/al/sq/catalog/electrical-installation-materials
53	Elektrike	Sisteme Sigurie	https://www.megateksa.com/al/sq/catalog/electrical-security-systems
54	Elektrike	Kab??ll dhe Aksesor??	https://www.megateksa.com/al/sq/catalog/electrical-cables-and-accessories
55	Elektrike	Pajisje Elektrike	https://www.megateksa.com/al/sq/catalog/electrical-electrical-equipments
56	Elektrike	Elektrike t?? Tjera	https://www.megateksa.com/al/sq/catalog/electrical-other-electrical
57	Elektrike	Pajisje Industriale dhe Profesionale	https://www.megateksa.com/al/sq/catalog/elektrike-pajisje-industriale-dhe-profesionale
58	Ndri??imi	Ndri??ues t?? brendshem	https://www.megateksa.com/al/sq/catalog/lighting-interior-lighting
59	Ndri??imi	Ndricues Kopshti	https://www.megateksa.com/al/sq/catalog/lighting-garden-lighting
60	Ndri??imi	Llamba	https://www.megateksa.com/al/sq/catalog/lighting-lamps
61	Kuzhina	Lavapjata	https://www.megateksa.com/al/sq/catalog/kitchen-kitchen-sink
62	Kuzhina	En?? kuzhine	https://www.megateksa.com/al/sq/catalog/kitchen-kitchen-ware
63	Kuzhina	Aksesor?? p??r kuzhina	https://www.megateksa.com/al/sq/catalog/kitchen-kitchen-accessories:2
64	Kuzhina	Pastrues	https://www.megateksa.com/al/sq/catalog/kitchen-cleaner
65	Kuzhina	Pastrim Profesional	https://www.megateksa.com/al/sq/catalog/kuzhina-pastrim-profesional
66	Kuzhina	Uniforma Pune	https://www.megateksa.com/al/sq/catalog/kuzhina-uniforma-pune
67	Kuzhina	Higjen??	https://www.megateksa.com/al/sq/catalog/kuzhina-higjene
68	Kuzhina	Higjen?? Profesional	https://www.megateksa.com/al/sq/catalog/kuzhina-higjene-profesional
69	Kuzhina	Bisktota -caj	https://www.megateksa.com/al/sq/catalog/kuzhina-bisktota-caj
70	Druri	Binare dhe Ristela	https://www.megateksa.com/al/sq/catalog/wood-wooden-beams-and-bars
71	Druri	L??nd?? Zdrukthtarie	https://www.megateksa.com/al/sq/catalog/wood-wood-procesing-materials
72	Druri	Shkall??	https://www.megateksa.com/al/sq/catalog/wood-ladder
73	Druri	Brava/Doreza dhe aksesor??	https://www.megateksa.com/al/sq/catalog/druri-bravadoreza-dhe-aksesore
74	Druri	Dritare	https://www.megateksa.com/al/sq/catalog/druri-dritare
75	Druri	Dyer t?? brendshme	https://www.megateksa.com/al/sq/catalog/druri-dyer-te-brendshme
76	Druri	Dyer t?? jashtme	https://www.megateksa.com/al/sq/catalog/druri-dyer-te-jashtme
77	Kopshtari	Dekorime	https://www.megateksa.com/al/sq/catalog/gardening-decorations
78	Kopshtari	Arredim i jasht??m	https://www.megateksa.com/al/sq/catalog/gardening-exterior-garden-furnishing
79	Kopshtari	Lule dhe bim??	https://www.megateksa.com/al/sq/catalog/gardening-flowers-and-plants
80	Kopshtari	Vegla kopshti elektrike	https://www.megateksa.com/al/sq/catalog/gardening-electrical-garden-tools
81	Kopshtari	Vegla kopshti me bateri	https://www.megateksa.com/al/sq/catalog/gardening-battery-garden-tools
82	Kopshtari	Vegla kopshti me karburant	https://www.megateksa.com/al/sq/catalog/gardening-fuel-garden-tools
83	Kopshtari	Vegla kopshti manuale	https://www.megateksa.com/al/sq/catalog/gardening-agricultural-and-garden
84	Kopshtari	Sisteme dhe pajisje p??r vaditje	https://www.megateksa.com/al/sq/catalog/gardening-irrigation-systems-equipments
85	Kopshtari	Barbekju	https://www.megateksa.com/al/sq/catalog/gardening-grills-bbq
86	Kopshtari	Pajisje kantine	https://www.megateksa.com/al/sq/catalog/gardening-cellar-equipments
87	Kopshtari	Aksesor??	https://www.megateksa.com/al/sq/catalog/gardening-accessories:3
88	Kopshtari	Insekticide	https://www.megateksa.com/al/sq/catalog/gardening-insecticide
89	Kopshtari	Tuba & Rakorderi	https://www.megateksa.com/al/sq/catalog/kopshtari-tuba-dhe-rakorderi
90	Kopshtari	Aksesor?? p??r vegla kopshti	https://www.megateksa.com/al/sq/catalog/kopshtari-aksesore-per-vegla-kopshti
91	Kopshtari	Artikuj Plazhi	https://www.megateksa.com/al/sq/catalog/kopshtari-artikuj-plazhi
92	Kopshtari	Pllaka	https://www.megateksa.com/al/sq/catalog/kopshtari-pllaka
93	Kopshtari	Artikuj Plazhi	https://www.megateksa.com/al/sq/catalog/kopshtari-artikuj-plazhi:e7e37388-1c91-40ce-a0f7-cf2997440d1d
94	Kopshtari	Pastrim	https://www.megateksa.com/al/sq/catalog/kopshtari-pastrim
95	Bojra	Bojra per Jashte	https://www.megateksa.com/al/sq/catalog/paints-exterior-paints
96	Bojra	Bojra per Brenda	https://www.megateksa.com/al/sq/catalog/paints-interior-paints
97	Bojra	Bojra Dekorative	https://www.megateksa.com/al/sq/catalog/paints-decorative-paints
98	Bojra	Bojra Druri	https://www.megateksa.com/al/sq/catalog/paints-wood-paints
99	Bojra	Bojra Metali	https://www.megateksa.com/al/sq/catalog/paints-metal-paints
100	Bojra	Letra Muri	https://www.megateksa.com/al/sq/catalog/paints-wallpapers
101	Bojra	Tretes	https://www.megateksa.com/al/sq/catalog/paints-solvent
102	Bojra	Sprai	https://www.megateksa.com/al/sq/catalog/paints-spray
103	Bojra	Ngjites	https://www.megateksa.com/al/sq/catalog/paints-adhesives
104	Bojra	Vegla Lyerje	https://www.megateksa.com/al/sq/catalog/paints-decoration-tools
105	Bojra	Silikon	https://www.megateksa.com/al/sq/catalog/paints-silicon
106	Bojra	Vegla nd??rtimi	https://www.megateksa.com/al/sq/catalog/bojra-vegla-ndertimi
107	Art	Bojera per Piktor	https://www.megateksa.com/al/sq/catalog/arts-artist-paints
108	Art	Penela	https://www.megateksa.com/al/sq/catalog/arts-brushes
109	Art	Korniza Fotosh dhe  Pikturash	https://www.megateksa.com/al/sq/catalog/arts-picture-and-photo-frames
110	Art	Piktura	https://www.megateksa.com/al/sq/catalog/arts-pictures
111	Art	T?? Tjera	https://www.megateksa.com/al/sq/catalog/arts-others
112	Hidraulike	Sisteme Zjarrfikse	https://www.megateksa.com/al/sq/catalog/plumbing-fire-fighting-systems
113	Hidraulike	Profesionale/Industriale	https://www.megateksa.com/al/sq/catalog/plumbing-proffesionalindustrial
114	Hidraulike	Tuba dhe Rakorderi	https://www.megateksa.com/al/sq/catalog/hidraulike-tuba-dhe-rakorderi
115	Vegla dhe Aksesor??	Hardware	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-hardware
116	Vegla dhe Aksesor??	Vegla Nd??rtimi	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-building-tools
117	Vegla dhe Aksesor??	Veshje Pune Sigurie	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-safety-clothes
118	Vegla dhe Aksesor??	Vegla Elektrike	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-power-tools
119	Vegla dhe Aksesor??	Vegla Elektrike me Bateri	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-battery-power-tools
120	Vegla dhe Aksesor??	Aksesor?? p??r Vegla Elektrike	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-power-tools-accessories
121	Vegla dhe Aksesor??	Vegla Mekanike	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-mechanic-tools
122	Vegla dhe Aksesor??	Vegla Mat??se	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-measuring-tools
123	Vegla dhe Aksesor??	Vegla makine dhe Aksesore	https://www.megateksa.com/al/sq/catalog/vegla-dhe-aksesore-vegla-makine-dhe-aksesore
124	Vegla dhe Aksesor??	Produkte sigurie	https://www.megateksa.com/al/sq/catalog/vegla-dhe-aksesore-produkte-sigurie
125	Zyr?? dhe Shkoll??	Materiale Arkivimi	https://www.megateksa.com/al/sq/catalog/office-school-archiving-material
126	Zyr?? dhe Shkoll??	Instrumenta shkrimi	https://www.megateksa.com/al/sq/catalog/office-school-writing-instruments
127	Zyr?? dhe Shkoll??	Organizues tavoline	https://www.megateksa.com/al/sq/catalog/office-school-table-organizer
128	Zyr?? dhe Shkoll??	Pajisje lidh??se	https://www.megateksa.com/al/sq/catalog/office-school-connecting-devices
129	Zyr?? dhe Shkoll??	Kartoleri dhe Let??r	https://www.megateksa.com/al/sq/catalog/office-school-stationer-and-paper
130	Zyr?? dhe Shkoll??	Krijimtari p??r f??mij??	https://www.megateksa.com/al/sq/catalog/office-school-creativity-for-children
131	Zyr?? dhe Shkoll??	Tempera, boj??ra dhe lapostila	https://www.megateksa.com/al/sq/catalog/office-school-tempera-paints-and-markers
132	Zyr?? dhe Shkoll??	Memorje e jashtme	https://www.megateksa.com/al/sq/catalog/office-school-external-memory
133	Zyr?? dhe Shkoll??	T?? Tjera	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-te-tjera
134	Zyr?? dhe Shkoll??	Aksesor?? zyre	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-aksesore-zyre
135	Zyr?? dhe Shkoll??	Tabela	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-tabela
136	Zyr?? dhe Shkoll??	Makina llogarit??se	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-makina-llogaritese
137	Zyr?? dhe Shkoll??	Audio dhe Video	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-audio-dhe-video
138	Zyr?? dhe Shkoll??	IT	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-it
139	Zyr?? dhe Shkoll??	Kab??ll	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-kabell
140	Zyr?? dhe Shkoll??	??anta	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-canta
141	Zyr?? dhe Shkoll??	Pastrues	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-pastrues
142	Aksesor?? makinash	Mir??mbajtja	https://www.megateksa.com/al/sq/catalog/car-accessories-maintenance
143	Aksesor?? makinash	Solucione dhe aditiv??	https://www.megateksa.com/al/sq/catalog/car-accessories-additives-and-substances
144	Aksesor?? makinash	Trajtues sip??rfaqesh dhe lustrues	https://www.megateksa.com/al/sq/catalog/car-accessories-surface-treatments-and-polishing
145	Aksesor?? makinash	Aksesor??	https://www.megateksa.com/al/sq/catalog/car-accessories-accessories
146	Aksesor?? makinash	Llamba Makine	https://www.megateksa.com/al/sq/catalog/car-accessories-car-lighting
147	Aksesor?? makinash	Aksesore udhetimi te montueshem	https://www.megateksa.com/al/sq/catalog/aksesore-makinash-aksesore-udhetimi-te-montueshem
148	Sport dhe hobi	Mjete peshkimi	https://www.megateksa.com/al/sq/catalog/sport-hobby-fishing-equipment
149	Sport dhe hobi	Kamping	https://www.megateksa.com/al/sq/catalog/sport-hobby-camping
150	Sport dhe hobi	Bi??ikleta	https://www.megateksa.com/al/sq/catalog/sport-hobby-bicycles
151	Sport dhe hobi	Palestra	https://www.megateksa.com/al/sq/catalog/sport-hobby-fitnes
152	Sport dhe hobi	Artikuj Sportiv	https://www.megateksa.com/al/sq/catalog/sport-hobby-sport-articles
153	Sport dhe hobi	Valixhe dhe ??anta udh??timi	https://www.megateksa.com/al/sq/catalog/sport-dhe-hobi-valixhe-dhe-canta-udhetimi
154	Sport dhe hobi	Kamping	https://www.megateksa.com/al/sq/catalog/sport-dhe-hobi-kamping:ce7bf300-507b-46c6-a739-acc78b2283bd
155	Elektrosht??piake	Frigorifer??	https://www.megateksa.com/al/sq/catalog/appliances-refrigerators
156	Elektrosht??piake	Lavatri??e & Thar??se	https://www.megateksa.com/al/sq/catalog/appliances-washers-dryers
157	Elektrosht??piake	Pajisje Gatimi	https://www.megateksa.com/al/sq/catalog/appliances-cooking-appliances
158	Elektrosht??piake	Lavastovilie	https://www.megateksa.com/al/sq/catalog/appliances-dishwashers
159	Elektrosht??piake	Elektrosht??piake t?? vogla	https://www.megateksa.com/al/sq/catalog/appliances-small-appliances
160	Elektrosht??piake	Fshesa me vakum	https://www.megateksa.com/al/sq/catalog/appliances-vacuum-cleaners
161	Elektrosht??piake	TV dhe Audio	https://www.megateksa.com/al/sq/catalog/elektroshtepiake-tv-dhe-audio
162	P??rkujdesje p??r kafsh??t	Ushqimi	https://www.megateksa.com/al/sq/catalog/pet-care-food
163	P??rkujdesje p??r kafsh??t	Higjena dhe kozmetika	https://www.megateksa.com/al/sq/catalog/pet-care-hygiene-and-cosmetics
164	P??rkujdesje p??r kafsh??t	Sh??titje dhe arg??tim	https://www.megateksa.com/al/sq/catalog/pet-care-walks-and-fun
165	P??rkujdesje p??r kafsh??t	Sht??pia	https://www.megateksa.com/al/sq/catalog/pet-care-home
166	P??rkujdesje p??r kafsh??t	T?? Tjera	https://www.megateksa.com/al/sq/catalog/pet-care-others
167	Magazinim & Lavanderi	Magazinim dhe organizim	https://www.megateksa.com/al/sq/catalog/magazinim-lavanderi-magazinim-dhe-organizim
168	Magazinim & Lavanderi	Lavanderi	https://www.megateksa.com/al/sq/catalog/magazinim-lavanderi-lavanderi
169	Magazinim & Lavanderi	Pastrues	https://www.megateksa.com/al/sq/catalog/magazinim-lavanderi-pastrues
170	Produkte per bebe	M??sim & Loj??ra	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-mesim-lojera
171	Produkte per bebe	Higjen?? & P??rkujdesje	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-higjene-perkujdesje
172	Produkte per bebe	Mobilje	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-mobilje
173	Produkte per bebe	Tekstile Fjetje	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-tekstile-fjetje
174	Produkte per bebe	Karrige Makine & Karroca	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-karrige-makine-karroca
175	Produkte per bebe	Ngr??nie & Aksesor??	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-ngrenie-aksesore
176	Produkte per bebe	Siguri p??r bebe	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-siguri-per-bebe
177	Produkte per bebe	Fjongo	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-fjongo
178	Dekor	Dekorime muri	https://www.megateksa.com/al/sq/catalog/dekor-dekorime-muri
179	Dekor	Perde dhe metrazhe	https://www.megateksa.com/al/sq/catalog/dekor-perde-dhe-metrazhe
180	Dekor	Korniza dhe shufra p??r perde	https://www.megateksa.com/al/sq/catalog/dekor-korniza-dhe-shufra-per-perde
181	Dekor	Grila p??r dritare	https://www.megateksa.com/al/sq/catalog/dekor-grila-per-dritare
182	Dekor	Aksesor?? p??r perde	https://www.megateksa.com/al/sq/catalog/dekor-aksesore-per-perde
183	Dekor	Qirinj	https://www.megateksa.com/al/sq/catalog/dekor-qirinj
184	Dekor	Tapet??	https://www.megateksa.com/al/sq/catalog/dekor-tapete
185	Dekor	Mbulesa tavoline	https://www.megateksa.com/al/sq/catalog/dekor-mbulesa-tavoline
186	Dekor	Vazo & Mbajt??se Qiri	https://www.megateksa.com/al/sq/catalog/dekor-vazo-mbajtese-qiri
187	Dekor	Lule & Aromatik??	https://www.megateksa.com/al/sq/catalog/dekor-lule-aromatike
188	Dekor	Kosha & Magazinim	https://www.megateksa.com/al/sq/catalog/dekor-kosha-magazinim
189	Dekor	Dhurata & Paketime	https://www.megateksa.com/al/sq/catalog/dekor-dhurata-paketime
190	Dekor	Jastek??	https://www.megateksa.com/al/sq/catalog/dekor-jasteke
191	Dekor	Qepje	https://www.megateksa.com/al/sq/catalog/dekor-aksesore-qepje
192	Dekor	Ditelindje	https://www.megateksa.com/al/sq/catalog/dekor-ditelindje
193	Dekor	Festa	https://www.megateksa.com/al/sq/catalog/dekor-festa
194	Tekstile dhe aksesore	Tekstile Fjetje	https://www.megateksa.com/al/sq/catalog/tekstile-dhe-aksesore-tekstile-fjetje
195	Tekstile dhe aksesore	Tekstile Banje	https://www.megateksa.com/al/sq/catalog/tekstile-dhe-aksesore-tekstile-banje
196	Bujq??si & Blegtori	Pajisje kantine	https://www.megateksa.com/al/sq/catalog/bujqesi-dhe-blegtori-pajisje-kantine
197	Bujq??si & Blegtori	Makineri blegtorale	https://www.megateksa.com/al/sq/catalog/bujqesi-dhe-blegtori-makineri-blegtorale
198	Bujq??si & Blegtori	Makineri bujq??sore\n	https://www.megateksa.com/al/sq/catalog/bujqesi-dhe-blegtori-makineri-bujqesore
199	Veshje dhe Mod??	Femra	https://www.megateksa.com/al/sq/catalog/veshje-dhe-mode-femra
200	Veshje dhe Mod??	Meshkuj	https://www.megateksa.com/al/sq/catalog/veshje-dhe-mode-meshkuj
201	Veshje dhe Mod??	Uniseks	https://www.megateksa.com/al/sq/catalog/veshje-dhe-mode-uniseks
202	Veshje dhe Mod??	F??mij??	https://www.megateksa.com/al/sq/catalog/veshje-dhe-mode-femije
203	Ushqime dhe Pije	Pije alkolike	https://www.megateksa.com/al/sq/catalog/ushqime-dhe-pije-pije-alkolike
204	Ushqime dhe Pije	Pije jo-alkolike	https://www.megateksa.com/al/sq/catalog/ushqime-dhe-pije-pije-jo-alkolike
205	Ushqime dhe Pije	Ushqime	https://www.megateksa.com/al/sq/catalog/ushqime-dhe-pije-ushqime
206	Informatike	Kompjuter	https://shop.shpresa.al/product-category/informatike/kompjuter/
207	Informatike	Laptop	https://shop.shpresa.al/product-category/informatike/laptop/
208	Informatike	Komponente	https://shop.shpresa.al/product-category/informatike/komponente/
209	Informatike	Printer & Scaner	https://shop.shpresa.al/product-category/informatike/printer-scaner/
210	Informatike	Adaptor & Kabuj	https://shop.shpresa.al/product-category/informatike/adaptor-kabuj/
211	Informatike	Pajisje Rrjeti	https://shop.shpresa.al/product-category/informatike/pajisje-rrjeti/
212	Informatike	Software	https://shop.shpresa.al/product-category/informatike/programe/
213	Informatike	Periferike	https://shop.shpresa.al/product-category/informatike/periferike/
214	Informatike	Aksesore	https://shop.shpresa.al/product-category/aksesore/
215	Informatike	Kancelari	https://shop.shpresa.al/product-category/informatike/kancelari/
216	Telefon & Tablet	Telefon	https://shop.shpresa.al/product-category/telefon-tablet/telefon/
217	Telefon & Tablet	Tablet	https://shop.shpresa.al/product-category/tablet/
218	Telefon & Tablet	Aksesore	https://shop.shpresa.al/product-category/aksesore/
219	Telefon & Tablet	Smart Watches	https://shop.shpresa.al/product-category/smart-watches/
220	Telefon & Tablet	Kufje	https://shop.shpresa.al/product-category/aksesore/kufje/
222	Tv Video & Audio	Televizor	https://shop.shpresa.al/product-category/tv-video-audio/televizor/
223	Tv Video & Audio	Video Projektor	https://shop.shpresa.al/product-category/video-projektor/
224	Tv Video & Audio	Audio	https://shop.shpresa.al/product-category/audio/
225	Tv Video & Audio	DEKODER & TV BOX	https://shop.shpresa.al/product-category/tv-video-audio/dekoder-tv-box/
226	Tv Video & Audio	Aksesore per TV	https://shop.shpresa.al/product-category/tv-video-audio/aksesore-per-tv/
227	Dron - Kamera - Gimbal	Produkte DJI	https://shop.shpresa.al/product-category/dron-kamera-gimbal/produkte-dji/
228	Dron - Kamera - Gimbal	Produkte Feiytech	https://shop.shpresa.al/product-category/dron-kamera-gimbal/produkte-feiytech/
229	Dron - Kamera - Gimbal	Produkte Zhiyun	https://shop.shpresa.al/product-category/dron-kamera-gimbal/produkte-zhiyun/
230	Dron - Kamera - Gimbal	Produkte Xiaomi	https://shop.shpresa.al/product-category/dron-kamera-gimbal/produkte-xiaomi/
231	Dron - Kamera - Gimbal	Camera	https://shop.shpresa.al/product-category/dron-kamera-gimbal/camera/
232	Dron - Kamera - Gimbal	Aksesore te ndryshem	https://shop.shpresa.al/product-category/dron-kamera-gimbal/aksesore-te-ndryshem/
233	Lojera & Argetim	Konsola	https://shop.shpresa.al/product-category/lojera-argetim/konsola/
234	Lojera & Argetim	Lojera	https://shop.shpresa.al/product-category/lojera-argetim/lojera/
235	Lojera & Argetim	Controllers	https://shop.shpresa.al/product-category/lojera-argetim/controllers/
236	Lojera & Argetim	Smart Balance	https://shop.shpresa.al/product-category/lojera-argetim/smart-balance/
237	Lojera & Argetim	Scooters	https://shop.shpresa.al/product-category/lojera-argetim/scooters/
238	Elektroshtepiake	Kondicioner	https://shop.shpresa.al/product-category/elektroshtepiake/kondicioner/
239	Elektroshtepiake	Produkte Smart	https://shop.shpresa.al/product-category/elektroshtepiake/produkte-smart/
288	VESHJE FEMRASH	Veshje	https://stina.al/kategoria-e-produktit/femra/veshje-femra/?tag_filter=new-2020
289	VESHJE FEMRASH	Intimo	https://stina.al/kategoria-e-produktit/femra/intimo-femra/?tag_filter=new-2020
290	VESHJE FEMRASH	K??puc??	https://stina.al/kategoria-e-produktit/femra/main-kepuce-femra/?tag_filter=new-2020
291	VESHJE FEMRASH	Aksesor??	https://stina.al/kategoria-e-produktit/femra/aksesore-femra/?tag_filter=new-2020
292	VESHJE FEMRASH	Plazh	https://stina.al/kategoria-e-produktit/femra/plazh-femra/?tag_filter=new-2020
293	VESHJE MESHKUJSH	Veshje	https://stina.al/kategoria-e-produktit/meshkuj/veshje-meshkuj/?tag_filter=new-2020
294	VESHJE MESHKUJSH	Intimo	https://stina.al/kategoria-e-produktit/meshkuj/intimo-meshkuj/?tag_filter=new-2020
295	VESHJE MESHKUJSH	K??puc??	https://stina.al/kategoria-e-produktit/meshkuj/main-kepuce-meshkuj/?tag_filter=new-2020
296	VESHJE MESHKUJSH	Aksesor??	https://stina.al/kategoria-e-produktit/meshkuj/aksesore-meshkuj/?tag_filter=new-2020
297	VESHJE MESHKUJSH	Plazh	https://stina.al/kategoria-e-produktit/meshkuj/plazh-meshkuj/?tag_filter=new-2020
298	VESHJE F??MIJ??SH	Vajz??	https://stina.al/kategoria-e-produktit/femije-new/femije-vajze/?tag_filter=new-2020
299	VESHJE F??MIJ??SH	Djal??	https://stina.al/kategoria-e-produktit/femije-new/femije-djale/?tag_filter=new-2020
\.


--
-- Data for Name: departaments; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.departaments (departament_type) FROM stdin;
Sezonale
Banjo
Materiale Nd??rtimi
Ngrohje - Ftohje
Mobilje
Shtrimi
Elektrike
Ndri??imi
Kuzhina
Druri
Kopshtari
Bojra
Art
Hidraulike
Vegla dhe Aksesor??
Zyr?? dhe Shkoll??
Aksesor?? makinash
Sport dhe hobi
Elektrosht??piake
P??rkujdesje p??r kafsh??t
Magazinim & Lavanderi
Produkte per bebe
Dekor
Tekstile dhe aksesore
Bujq??si & Blegtori
Veshje dhe Mod??
Ushqime dhe Pije
Informatike
Telefon & Tablet
Tv Video & Audio
Dron - Kamera - Gimbal
Lojera & Argetim
Elektroshtepiake
VESHJE FEMRASH
VESHJE MESHKUJSH
VESHJE F??MIJ??SH
\.


--
-- Data for Name: filters_table; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filters_table (id, filters, category_id) FROM stdin;
1	{"lloji": ["Dekorime Festive"], "filtro_sipas_mark??s": []}	1
2	{"lloji": ["Artikuj Plazhi", "Gjithca p??r notin", "Pishina familjare", "Shezlon?? dhe Cadra"], "filtro_sipas_mark??s": ["Gio'Style", "Galileo Casa", "Pro garden", "Garnier"]}	2
3	{"lloji": ["Biskota", "Lepirese"], "filtro_sipas_mark??s": []}	3
4	{"lloji": ["Lavaman", "Bide", "Panel dushi", "Rubinetari", "Urinal", "WC", "Pllak?? dushi", "Vask??", "Kabin?? dushi"], "filtro_sipas_mark??s": ["Metaform", "Ideal Standart", "Bonomini", "Esedra", "Bobble Soap", "Azzura", "Mariani", "Grohe", "Sonet", "L'acquario", "MEGATEK", "Idealine", "L'acqua", "Iris", "Flusso", "Krihler", "Olympi Sanitary", "Dost", "Mr Shower", "Rubineta &amp;", "GRB mixers", "IDEVIT"]}	4
5	{"lloji": ["Sistem Inkaso", "Gomin??, sifon, pilet??", "Kaseta plastike", "Mekanizma kasete"], "filtro_sipas_mark??s": ["Geberit", "LIV", "Bonomini", "Brixo", "L'acquario", "Hidrosanitare", "Drina", "Feridras", "Dost", "Rubineta &amp;", "Chudej", "Eliplast", "GREAT FRIEND"]}	5
6	{"lloji": ["Set mobilje tualeti", "Pasqyra", "Rafte"], "filtro_sipas_mark??s": ["Metaform", "Homeline", "Decoramica", "City Sanitary", "MEGATEK", "all4bath", "Sea Wave", "Olympi Sanitary", "Home Style", "Eliplast", "Disrael", "Bathroom solutions", "Van der Leeden"]}	6
7	{"lloji": ["Kapak?? tualeti", "Perde dushi", "Aksesor?? p??r montim n?? mur", "Aksesor?? p??r vendosje mbi mobilje", "Tuba rr??shqit??s", "Tuba fleksib??l", "Sete kok?? dushi", "Kosha tualeti", "Peshore dhe kosha lavanderie", "Fur??a tualeti", "Mbajt??se letre dhe sapuni", "Peshqir??", "Gomin??, sifon, pilet??", "Aksesor mbajtes me varje", "Thar??se duarsh", "Thar??se flokesh", "Sinjalistik??", "Antirr??shqit??s"], "filtro_sipas_mark??s": ["Metaform", "Ivanicplast", "Siena", "Dolphin", "Esedra", "Interplast", "FIXON", "Mariani", "Grohe", "Smart Furniture", "Drina", "all4bath", "BTV", "Mathilde", "Feridras", "NTM Italy", "Krihler", "Dost", "Ippa", "Rubineta &amp;", "Ella", "Home Sweet Home", "Home Style", "Lucart", "Vialli", "Comfort2000", "Castelmerlino", "Eliplast", "Verdelook", "BulkySoft", "Galileo Casa", "Stefanplast", "Aqualine", "Disrael", "WASSENBERG", "CURVER", "Excellent Houseware", "Storage solutions", "Bathroom solutions", "MSV", "Ultra clean", "Saniplast"]}	7
8	{"lloji": ["Pajisje sanitare", "Aksesor?? mbajt??s"], "filtro_sipas_mark??s": ["Metaform", "Dogvit", "MOBIAK", "Feridras", "Dost", "MSV"]}	8
9	{"lloji": ["Sauna"], "filtro_sipas_mark??s": []}	9
10	{"lloji": ["Mirmbajtje", "P??rkujdesje Trupi", "Aksesor?? dushi", "Aksesor?? kozmetike", "Aksesor?? udh??timi", "Higjen?? personale", "Kuti plastike", "Magazinim dhe organizim", "Mir??mbajtje k??puc??sh", "Ndihma e shpejt??", "Pastrues p??r tekstil", "P??rkujdesje duarsh dhe thonj", "P??rkujdesje p??r flok??t", "Corape dhe geta", "Intime", "Make Up", "Kujdesi p??r lekuren", "Kujdesi Oral", "Stilim Flok??sh", "Mjekra", "Mjekra", "P??rkujdesje dhe siguri", "Parfume", "Shtatezania"], "filtro_sipas_mark??s": ["Vileda", "PLYKING", "PREMIER WOOD", "Drina", "FISARMONICA", "PVC-lighting", "Ippa", "Erdal", "Fire brick", "Pierre Cardin", "Venus", "SOGA", "Home Style", "Durobor", "Okila", "Domino", "Mineralia", "Dolci", "Mezzogiorno", "Farmacotone", "Cotoneve", "COTONET", "BALIOUSKAS", "Soraya Kasak", "Larya Jahnu", "Kilim Square", "AQUAMassage", "Regina", "BulkySoft", "Galileo Casa", "NIVEA", "BOREAL", "Johnson's baby", "OLIVEA", "Proworld", "Bathroom solutions", "Niet Van Toepassing", "Garnier", "Barbie", "ADIDAS", "Flomar", "Glossfinity", "Miniso", "Alberto Taccin", "GoldCare", "Fepi", "Cosmolive", "Zeyteen", "Olivos", "Hunca Care", "Agiva", "Caldion", "Langelica", "BioPoint", "She", "Agiss", "Moschino", "Trussardi", "Versace", "Carefree", "Lycia", "Pantene", "Clinians", "Belle Color", "Jimmy Choo", "Head &amp; Shoulders", "Dove", "Axe", "Oral-B", "Elvive", "Fructis", "Batman", "Ultra Dolce", "Pearl Drops", "Neutrogena", "Labello", "Pampers", "Chicco", "Gliss", "Frozen", "Paradontax", "Spiderman", "Biorepair", "Herbal Essences", "Dermomed", "Borotalco", "Flormar", "Neutro Roberts", "Taft", "Nails", "Colgate", "Blanx", "L,Oreal", "OXY", "Elmex", "Jagler", "Mentadent", "Sensodyn", "Veet", "Givenchy", "Mont Blanc", "Dermolab", "Eveline", "Kenzo", "Blu Marine", "Rev Uniq One", "Salvatore Ferrgamo", "Pepe Jeans", "Bella Oggi", "Women's Secret", "Saponello", "Karl Lagerfeld", "Felce Azzurra", "Dual", "Wash&amp;Go", "Deborah", "Golden Rose", "Jelly"]}	10
11	{"lloji": ["Tapet?? p??r tualet"], "filtro_sipas_mark??s": ["Acqua", "Decomarin", "MSV"]}	11
12	{"lloji": ["Letra Tualeti", "Thar??se &amp; Dispencer", "Detergjent?? &amp; Aromatik??", "Doreza me nj?? p??rdorim", "Antiseptik dhe Dezifektant", "Maska"], "filtro_sipas_mark??s": ["Mezzogiorno", "Sanitec", "Scrac", "Melissa", "Neutro Roberts", "Felce Azzurra"]}	12
13	{"lloji": ["Fshesa dhe Shtupa", "Aksesor?? pastrimi", "Peceta Pastrimi", "Dysheme dhe Xham", "Kova", "Detergjent?? t?? ndrysh??m", "Detergjent?? dhe aromatik??", "Thar??se dhe dispencer", "Kaci pastrimi", "Fshesa dhe shkopa"], "filtro_sipas_mark??s": ["Frosch", "Rorax", "Drina", "Arix", "LOGEX", "Arexons", "Home Style", "Linea PERFETTA", "Mia", "C'e", "Scrac", "Calgon", "Perfetto factory", "Miniso", "Ajax"]}	13
14	{"lloji": ["Karela dhe Kova", "Dysheme dhe Xham", "Peceta Pastrimi", "Fshesa dhe shtupa", "Aksesor?? pastrimi", "Detergjent?? dhe aromatik??", "Sfungjer pastrimi"], "filtro_sipas_mark??s": ["Vileda", "Erdal", "Arix", "Arexons", "Sanitec", "Matrix", "Italchimica", "Perfetto factory", "Dual"]}	14
15	{"lloji": ["Letra tualeti", "Detergjent?? dhe aromatik??"], "filtro_sipas_mark??s": ["Sanitec", "Matrix", "BulkySoft"]}	15
16	{"lloji": ["Maska"], "filtro_sipas_mark??s": []}	16
17	{"lloji": ["Tuba bakri", "Tuba PPR", "Tuba Multistrat", "Tuba fleksib??l", "Rakorderi bakri", "Rakorderi Multistrati", "Rakorderi PPR", "Valvula bakri"], "filtro_sipas_mark??s": ["RBM", "Toro", "Rietti", "Confort", "Teqja", "CIM", "NTM Italy", "pro-For Tec", "MATEU"]}	17
18	{"lloji": ["Vida druri", "Vida betoni", "Vida metali", "Dado dhe bullona", "Zinxhir??", "Litar??", "Kasaforta", "Kuti Postare", "Aksesor?? Dyersh", "Aksesor?? mobiliesh", "Aksesore montimi", "Aksesor?? t?? tjer??", "Brava dyersh", "Rrota", "Kavo ??eliku dhe aksesor??"], "filtro_sipas_mark??s": ["Power Metric", "ALL-ROPES", "Brixo", "KNAUF", "BTV", "Black&amp;Decker", "DEWALT", "NTM Italy", "MU", "PATTA", "Fischer", "NIKLAS", "Lih Lin", "INOXMARE", "Pawer Metric", "LABOR", "Apolo", "Kinzo"]}	18
19	{"lloji": ["??eki??", "Sh??nues", "Met??r", "Nivel", "Mbajt??se Veglash", "Sharra dore", "Dalta", "Shkall??", "Vegla pune t?? tjera nd??rtimi", "Prer??se pllakash"], "filtro_sipas_mark??s": ["GREAT WALL", "Dekor", "STANLEY", "LAND", "Brixo", "MASTER FORCE", "Drina", "BETA", "MU", "Scented Parfumees"]}	19
20	{"lloji": ["Silikon"], "filtro_sipas_mark??s": ["Ceresit", "Bison"]}	20
96	{"lloji": ["Bojra per brenda"], "filtro_sipas_mark??s": ["Decotric", "Nirlat", "Isomat", "Deutsch Color"]}	96
21	{"lloji": ["Betoniere", "Vibrator", "Ngjesh??s", "Nivelues", "Sharra", "Vin??a", "Karroca", "Aksesor??", "Kova shkarkimi p??r inerte", "Tuba dhe elemente skelerish", "Thas??, rrjet?? dhe materiale te tjera", "Skela t?? gatshme", "Betoforma", "Trar?? Dopio T", "Distancier??", "Shkall?? metalike", "Puntela", "Shkall?? shkall?? druri"], "filtro_sipas_mark??s": ["Masterpac", "Brixo", "SPA CONSTRUZIONI", "Verdelook", "Garden Jet", "PERI", "Kinzo"]}	21
22	{"lloji": ["Aksesor?? lidh??s", "Tuba PVC portokalli t?? holl??", "Tuba PVC portokalli t?? trash??", "Rakorderi PVC", "Tuba PP", "Rakorderi PP", "Tuba t?? brinj??zuar HDPE - SN4", "Tuba PVC portokalli t?? mes??m"], "filtro_sipas_mark??s": ["Confort", "Teqja", "Parsan", "Tork"]}	22
23	{"lloji": ["Pllake gipsi standart", "Pllake gipsi ??imentato", "Pllake gipsi kundra zjarrit", "Aksesor??", "Pllake gipsi kundra lag??shtir??s", "Profile gipsi", "Stuko dhe koll?? me baz?? gipsi", "Vida gipsi", "Tavane t?? varura me fibra minerale"], "filtro_sipas_mark??s": ["TESA", "KNAUF"]}	23
24	{"lloji": ["Lesh guri", "Polisterol i ekstruduar XPS", "Polisterol i ekspanduar EPS", "Poliuretan", "Baza dhe Astar", "Rrjet??", "K??ndore dhe aksesore", "Sfungjer?? akustik??", "Grafiato", "Tapa", "Lesh xhami"], "filtro_sipas_mark??s": ["NTM Italy", "GUTTA", "FIBERMESH  ONE", "IZOTERM", "Dast"]}	24
25	{"lloji": ["Lla?? i gatsh??m", "Fino", "Stuko standart", "Nivelues", "Silikone", "Prajmer", "??imento", "Koll??"], "filtro_sipas_mark??s": ["PRIMA  K2", "Bitex", "Ceresit", "Bison", "Nirlat", "Dast", "Arexons", "Fischer", "Ege Dekor"]}	25
26	{"lloji": ["Membran?? bituminoze me granil", "Mbulues polietileni", "Fibra polipropileni", "Membran?? bituminoze standart", "Fasho bituminoze dhe aksesor??", "Ngjit??s shtresash plastike", "Ngjit??s baz?? poliuretani", "Ngjit??s baz?? aditive", "TNT- gjeotekstil"], "filtro_sipas_mark??s": ["SIKA", "GUTTA", "POLYGLASS", "Nirlat", "IZOTERM", "Dast"]}	26
27	{"lloji": ["Tulla ndar??se", "Tulla bllok", "Blloqe ??imentoje", "Tulla xhami"], "filtro_sipas_mark??s": ["Jinghua"]}	27
28	{"lloji": ["Dru bredhi", "Dru pishe", "Lidh??za druri metalike", "Tavane t?? varura", "Panele t?? gatshme"], "filtro_sipas_mark??s": ["KONKURENT", "HOLZ SCHMIDT"]}	28
29	{"lloji": ["Tjegulla Standarte", "Streha Bituminoze t?? val??zuara", "Streha Polikarbonati", "Streha  PVC", "Tjegulla Speciale", "Aksesor?? catie", "Panel sandui?? i  val??zuar", "Streha Poliest??r", "Streha metalike"], "filtro_sipas_mark??s": ["INTERMAS", "GUTTA"]}	29
30	{"lloji": ["Puseta  polipropileni", "Aksesor?? shkarkimesh", "Kapak pusete gize", "Grila polipropileni", "Kapak?? polipropileni", "Telajo poliprpileni", "Ulluqe Betoni", "Ulluqe plastike", "Zgara ulluqesh", "Shkarkime ??atie t?? galvanizuara", "Shkarkime ??atie PVC", "Puseta ??imentoje", "Kapak pusete ??imentoje"], "filtro_sipas_mark??s": ["PALAPLAST", "Confort", "ACO"]}	30
31	{"lloji": ["Tuba alumini", "Tuba inoksi", "Tuba t?? zinkuar", "Kapele oxhaqesh"], "filtro_sipas_mark??s": ["TECHNOMETAL"]}	31
32	{"lloji": ["Pllaka shtrimi prej betoni", "Decking", "Gur?? natyral", "Kapak parapeti"], "filtro_sipas_mark??s": []}	32
33	{"lloji": ["Profile", "Ele", "Llamarina", "Tuba t?? galvanizuar", "Gozhd?? dhe tel", "Lama", "Shufra hekuri", "Zgara hekuri", "Aksesor??"], "filtro_sipas_mark??s": ["Power Metric", "KANAD'TILING Fpl", "Brixo", "Verdelook", "Arcansas"]}	33
34	{"lloji": ["Horizontale plastike", "Vertikale plastike", "Horizontale xingato", "Vertikale xingato", "Vaska IMOF"], "filtro_sipas_mark??s": ["Telcom", "Selmani"]}	34
35	{"lloji": ["Horizontale plastike", "Vertikale plastike", "Horizontale xingato", "Vertikale xingato", "Vaska IMOF"], "filtro_sipas_mark??s": ["Telcom", "Selmani"]}	35
36	{"lloji": ["Aksesore perberes te skelerive"], "filtro_sipas_mark??s": []}	36
37	{"lloji": ["Kondicionim", "Ngroh??s Elektrik", "Freskues Elektrik", "Delag??shtues", "Kaldaja ngrohjeje", "Pastrues Ajri"], "filtro_sipas_mark??s": ["De Longhi", "Fuego", "Beko", "Ariston", "AGD", "STANLEY", "Brixo", "Black&amp;Decker", "Volcano", "IMETEC", "Venus", "MAX", "Elektra", "Deluxe", "NIKLAS", "Alpina", "HYUNDAI", "Grundig", "ROWENTA", "EMOS", "KUMTEL", "Hoobart", "Atlantik", "Vivax", "Kooper", "MITSUBISHI", "VARMA", "BREIXO", "SHARP", "Simfer", "ETA", "Haier", "Dunlop", "TCL", "ARGO", "Saray", "Nebula"]}	37
38	{"lloji": ["Kaldaja ngrohje", "Etanol", "Ngrohes me Gaz"], "filtro_sipas_mark??s": ["RBM", "Power Metric", "Fuego", "Ariston", "ETHANOL FIRE", "NTM Italy", "Hot Crystal", "Elektra", "NIKLAS", "GARDENSUN"]}	38
39	{"lloji": ["Oxhake", "Soba", "Aksesore", "Kaldaje me pelet"], "filtro_sipas_mark??s": ["Brixo", "Castellano", "Prity", "Victoria", "Centrometal", "Diavolina", "GEKO", "Veneto Stufe", "DAC", "BLIST"]}	39
40	{"lloji": ["Panele diellore"], "filtro_sipas_mark??s": ["Power Sun"]}	40
41	{"lloji": ["Divan??", "Mbajt??se p??r TV", "Karrige", "Rafte t?? ndryshme", "Tavolina mesi dhe k??ndi", "Mobilje p??r televizor", "Kolltuk??", "Pupa", "Ndar??se ambienti", "Pasqyra", "Mobilje koridori", "Rafte k??puc??sh"], "filtro_sipas_mark??s": ["BEAUTY FURNITURE", "Forma Ideale", "Artplast", "Smart Furniture", "MEGATEK", "La Sedia", "Adore", "Home sofa", "Diva&amp;Divani", "MAX", "BALIOUSKAS", "Galileo Casa", "Elektra", "Disrael", "EMOS", "Valentini", "H &amp; S collection", "Metaltex", "Atmosphera"]}	41
42	{"lloji": ["Dhoma gjumi", "Dollap??", "Krevat??", "Dyshek??", "Tekstile", "Jast??k?? dhe mbulesa", "Komodina dhe rafte", "Magazinim dhe sirtar??", "Mbajt??se dysheku"], "filtro_sipas_mark??s": ["Forma Ideale", "Artplast", "MEGATEK", "Ambrosiana", "EASY WAY FURNITURE", "De'Casa", "Home Linen", "Dormeo", "Adore", "LUOCA PATISCA", "MComfort", "Kid City", "Home Sweet Home", "LOGEX", "BALIOUSKAS", "Galileo Casa", "Valentini", "Storage solutions", "ItalCasa"]}	42
43	{"lloji": ["Tavolina", "Karrige zyre", "Rafte p??r libra dhe dosje"], "filtro_sipas_mark??s": ["Forma Ideale", "Smart Furniture", "MEGATEK", "La Sedia", "Adore", "Tutto Mobili", "Solenne"]}	43
44	{"lloji": ["Rafte", "Piktura", "Mbajt??se raftesh", "Korniz?? Polisteroli", "Dekorime Tavoline", "Suporte vazosh"], "filtro_sipas_mark??s": ["JEWE", "BOVELACCI", "NatyrART", "Disrael"]}	44
45	{"lloji": ["Var??se rrobash"], "filtro_sipas_mark??s": []}	45
46	{"lloji": ["Siguri p??r f??mij??t", "Tekstile", "Mobilje", "Aksesor?? Bebesh", "Krevate"], "filtro_sipas_mark??s": ["Deco Casa", "MEGATEK", "Adore", "LUOCA PATISCA"]}	46
97	{"lloji": ["Bojra dekorative"], "filtro_sipas_mark??s": ["Bitex", "Nirlat", "Dast"]}	97
47	{"lloji": ["Jast??k mbeshtetes", "Druri natyral", "Thurje natyrale", "Thurje PE", "Plastike", "Tekstilen dhe metalike", "??adra dhe bazamente", "Gaxebo dhe tenda", "Lishar??se", "Pishtar??", "Shilte", "Tekstike p??r mobilje", "Lishar??se", "Plastike"], "filtro_sipas_mark??s": ["Verdelook", "Pro garden", "PAPATYA", "Keter", "Vivace"]}	47
48	{"lloji": ["Kuzhina", "Lavapjata", "Kosha", "Tavolin?? ngr??nie", "Karrige ngr??nie", "Rubineta", "Aksesor??"], "filtro_sipas_mark??s": ["Blanco", "Forma Ideale", "Mariani", "Grohe", "Smart Furniture", "Minos", "MEGATEK", "Drina", "De'Casa", "La Sedia", "Krihler", "Dost", "Rubineta &amp;", "Sanindusa", "Eliplast", "VIOMES", "Stefanplast", "GRB mixers", "CM", "CURVER", "Diadem", "Metaltex", "Atmosphera", "FIVE Simply smart"]}	48
49	{"lloji": ["Parket druri", "Parket Laminat", "Aksesore Parketi"], "filtro_sipas_mark??s": ["BODENWELT", "Kaindl", "DUOMO PROFILI", "JEWE", "HOLZMEISTER", "KRONO FLOORING", "BAUWERK", "IZOTERM", "Arcansas", "Barlinek", "Bakonyerd??", "PAN PARKET", "MODEMA", "ARBITON"]}	49
50	{"lloji": ["Aksesore pllake", "Pllaka shtrimi", "Pllaka tualeti", "Pllake Veshje"], "filtro_sipas_mark??s": ["Spacer", "Super", "AG", "Azuleja", "STN-pllaka", "MEGATEK", "HLC-pllaka", "Brunes", "Botanica", "CicoGres-pllaka", "Stegu", "Argenta-pllaka", "NAVARTI", "STON"]}	50
51	{"lloji": ["Mokete dhe linoleume", "Mokete dhe Linoleume"], "filtro_sipas_mark??s": []}	51
52	{"lloji": ["Aksesore Montimi", "Priza elektrike", "Celesa elektrik", "Aksesore TV,Data,Tf", "Kapake prizash", "Sisteme mbrojtjeje elektrike"], "filtro_sipas_mark??s": ["Philips", "Schneider", "ABB", "EU energy", "OV Cable", "Emme Esse", "Alcad", "Deliksi", "Vimar", "Luna", "EMOS", "Gewiss", "Bticino", "MUTLUSAN", "Digitus", "Matix", "Vimar NEVE"]}	52
53	{"lloji": ["Sisteme mbrojtjeje elektrike", "Sisteme sigurie elektronike", "Sisteme matje"], "filtro_sipas_mark??s": ["Schneider", "ABB", "EU energy", "Deliksi", "Vimar", "HOROZ", "LAMBARIO", "Grundig", "EMOS", "Hikvision", "Lafayete", "Kooper", "MUTLUSAN", "Dunlop", "Pawer Tree", "SAFE ALARM", "BRAYTON", "Motorola", "DKC"]}	53
54	{"lloji": ["Kabell elektrik", "Aksesore montim kabelli", "Aksesor?? montimi", "Priza zgjatuese dhe pershtat??s"], "filtro_sipas_mark??s": ["General Cavi", "Philips", "Brixo", "ABB", "Arno Canali", "EU energy", "Eglo", "OV Cable", "Emme Esse", "Alcad", "Deliksi", "Vimar", "Fischer", "BRILLIANT", "LAMBARIO", "Grundig", "EMOS", "Lafayete", "Xavax", "Magmaweld", "Arnocanali", "3M", "Prospecta", "MUTLUSAN", "Digitus", "Elettrocanali", "Kinzo", "Dunlop"]}	54
55	{"lloji": ["Stabilizatore dhe Inverter", "Pompa uji elektrike", "Ngrohes uji elektrike", "Kompresore", "Aspirator", "Motogjeneratore elektrike", "Paisje te tjera Elektrike", "Pajisje Saldimi"], "filtro_sipas_mark??s": ["Schneider", "Ariston", "STANLEY", "Brixo", "EU energy", "BOSCH", "Coral", "Vortice", "narva", "LEOV", "LEO", "Tolsen", "DAEWOO", "GTL", "Deca", "Delimano", "EMOS", "Hoobart", "Atlantik", "Lafayete", "ABKS", "Tecnoelektra", "Kedman", "Riese", "Magmaweld", "Map Pro", "Oxy turbo", "Subaru", "PUMPMAN", "Chaffoteaux", "MATIC", "Loncin", "LAUNTOP", "KEMPER", "MUTLUSAN", "Haier", "NEWCO", "ATLANTIC", "HACO", "HONDA"]}	55
56	{"lloji": ["Elektrike te tjera", "Bateri", "Elektrik?? dore dhe kamping"], "filtro_sipas_mark??s": ["Philips", "Schneider", "Panasonic", "VARTA", "Beghelli", "EU energy", "OSRAM", "Eglo", "MAXELL", "OMEGA", "Elektra", "NIKLAS", "BEGHLER", "Grundig", "Duracell", "Delimano", "ENERGIZER", "EMOS", "Lafayete", "Kooper", "KEMPER", "Kinzo", "Dunlop", "SAFE ALARM"]}	56
57	{"lloji": ["Pajisje Industriale dhe Profesionale"], "filtro_sipas_mark??s": ["Schneider", "ABB", "EU energy", "Deliksi", "OMEGA"]}	57
58	{"lloji": ["Ndri??ues tavani", "Ndri??ues muri", "Ndri??ues zyre", "Ndri??ues LED", "Ndri??ues i varur", "Ndri??ues spot", "Ndri??ues pedan", "Ndri??ues tavoline"], "filtro_sipas_mark??s": ["TRIO", "Philips", "Artemis", "Beryl", "ArtdePierre", "Koral", "Arredoluce", "Beghelli", "Philips-Massive", "Lunar", "Antica", "OSRAM", "Alumierrei", "Stillicht", "Glowfmarta", "PVC-lighting", "Eglo", "Light life lighting", "PLATINET", "FAN EUROPE", "BEGHLER", "HOROZ", "BRILLIANT", "LAMBARIO", "Grundig", "EMOS", "MasterLight", "Elips", "DLU", "Kooper", "FMT", "KAISER LIGHT", "MUTLUSAN", "MILLE", "ATON LIGHT", "Lumineo", "Dunlop", "BRAYTON"]}	58
59	{"lloji": ["Ndri??ues LED", "Ndri??ues mural??", "Ndri??im p??r shtyll??", "Ndri??ues p??r lule dhe bim??", "Projektor", "Ndri??ues me panel Diellor"], "filtro_sipas_mark??s": ["Philips", "Beryl", "Romaantic", "Philips-Massive", "EU energy", "Eglo", "FAN EUROPE", "BEGHLER", "HOROZ", "BRILLIANT", "LAMBARIO", "Fumagalli", "Grundig", "EMOS", "Elips", "FMT", "MUTLUSAN", "MILLE", "ATON LIGHT", "Dunlop", "Pro garden", "BRAYTON"]}	59
60	{"lloji": ["Llamba LED", "Llamba ekonomike", "Llamba fluoreshente", "Llamba halogjene", "Llamba inkandeshente", "Llamba profesionale", "Portollamba dhe aksesore ndricimi"], "filtro_sipas_mark??s": ["TRIO", "Philips", "Beryl", "TCI Italy", "GENERAL ELECTRIC", "Beghelli", "OSRAM", "Eglo", "OMEGA", "FAN EUROPE", "BEGHLER", "HOROZ", "BRILLIANT", "LAMBARIO", "EMOS", "MasterLight", "DLU", "Kooper", "FMT", "Elettrocanali", "Sylvania", "BRAYTON"]}	60
61	{"lloji": ["Sifona dhe aksesor??"], "filtro_sipas_mark??s": ["Bonomini", "Dost", "Rubineta &amp;"]}	61
62	{"lloji": ["Tenxhere", "Servirje", "Aksesor?? kuzhine", "Pjekje", "Pjata", "Gota", "Prerje  dhe grirje", "Ene ushqimi", "Bonboniere dhe frutiere", "Festiv?? nj??-perdorim??she", "Tigan??", "Sallatiere dhe tasa", "Dekanter, kana dhe termus", "Kullesa", "Ruajtje dhe konservim", "Kafe dhe caj", "Thika dhe prer??se", "Aksesor?? t?? tjer??", "Aksesor?? ngr??nie tavoline", "Vaj/Uthull dhe Krip??/Piper", "Kanist??r dhe shporta", "Aksesore gatimi dhe servirje", "Pesha dhe mat??se", "Ene p??r Femije", "Tabaka", "Gjithcka p??r emb??lsira", "Githcka p??r HO.RE.CA-Tavoline", "Gjithcka p??r HO.RE.CA-Gatim", "Aksesore Bari", "Gjithcka p??r HO.RE.CA-BUFE &amp; MENGJES"], "filtro_sipas_mark??s": ["Drina", "Walther Glas", "Pasabah??e", "f&amp;d", "SOGA", "Marinex", "Dopla", "Home Style", "Durobor", "Bormioli", "Saturnia", "Glass4You", "Uniglass", "Devalbor", "Tescoma", "Mineralia", "BALIOUSKAS", "JMC", "Tramontina", "Eliplast", "Regina", "Sayonara", "Samurai", "BulkySoft", "Galileo Casa", "Roman Gallery", "Villa Deste", "G??rallar", "Borcam", "PINTINOX", "Sanelli", "Tognana", "BALLARINI", "POLIDIL", "Salvinelli", "Kostis", "ILSA", "Royal Leerdam", "Arte &amp; Fuoc", "Cabernet", "Pedrini", "LACOR", "GI??METAL", "CHEF LINE", "FASA", "AGNELLI", "ABERT", "Alpina", "K??tahya", "Polidil Foil", "Disrael", "Cerve", "Nachtmann", "Life Glass", "Fackelmann", "LEONE", "Excellent Houseware", "Arcoroc", "Atmosphera", "FIVE Simply smart", "Secret de Gourmet"]}	62
63	{"lloji": ["Aksesore Kuzhinash", "Aksesore per Kuzhina"], "filtro_sipas_mark??s": ["JEWE", "ACCESSORIZE", "Drina", "Tognana", "FIORE", "Alpina"]}	63
98	{"lloji": ["Bojra druri me baze uji", "Bojra druri me baze diluenti"], "filtro_sipas_mark??s": ["Nirlat", "VELECA", "Arexons", "Deutsch Color"]}	98
64	{"lloji": ["Aksesor?? pastrimi", "Detergjent?? t?? ndrysh??m", "Peceta Pastrimi", "Sfungjer dhe Tel Enesh", "Doreza pastrimi", "Peshqir Kuzhine", "Dysheme dhe Xham", "Qese mbeturinash"], "filtro_sipas_mark??s": ["Frosch", "emsal", "Arix", "Home Style", "Verdelook", "Linea PERFETTA", "C'e", "Scrac", "Gorsia", "Calgon", "Perfetto factory"]}	64
65	{"lloji": ["Detergjent?? dhe aromatik??"], "filtro_sipas_mark??s": ["Sanitec", "Matrix"]}	65
66	{"lloji": ["Xhakete Kuzhinieri", "Kapele Kuzhinieri", "Pantallona Kuzhinieri", "Kemishe", "Perparese", "Papion, Kravate", "Pantallona kamarieri", "Bluze", "Fund", "Jelek kamarieri", "Doreza"], "filtro_sipas_mark??s": []}	66
67	{"lloji": ["let??r duarsh", "Zarfa ushqimi"], "filtro_sipas_mark??s": ["Frescovuoto", "Melissa"]}	67
68	{"lloji": ["let??r duarsh"], "filtro_sipas_mark??s": ["MEGATEK", "BulkySoft"]}	68
69	{"lloji": ["Caj"], "filtro_sipas_mark??s": []}	69
70	{"lloji": ["Bredhi", "Aksesor?? Binar??sh"], "filtro_sipas_mark??s": ["JEWE"]}	70
71	{"lloji": ["Aksesore", "Panele", "Aksesor?? mobiliesh"], "filtro_sipas_mark??s": ["MEGA PAN", "JEWE", "KRONO FLOORING", "ACCESSORIZE", "MEGATEK", "PLANTS", "FIORE", "SALICE", "kastamonu", "Pircher"]}	71
72	{"lloji": ["Shkall?? papafingo dhe aksesor??"], "filtro_sipas_mark??s": ["JEWE", "DOLLE", "OMAN"]}	72
73	{"lloji": ["Brava", "Doreza", "Aksesor?? p??r dyer", "Dryna", "Aksesor?? p??r mobilje"], "filtro_sipas_mark??s": ["FIXON", "STV", "MASTER", "TRI-RHOMB", "MU", "CISSA", "AGB", "STARK", "`", "Fischer", "ZINCO", "DLG", "Happy Deco", "MASTER Lock"]}	73
74	{"lloji": ["Dritare PVC dhe alumini"], "filtro_sipas_mark??s": ["SCHLUSSEL"]}	74
75	{"lloji": ["Dyer Druri Tropikal", "Dyer Tamburat", "Dyer firzamonike PVC"], "filtro_sipas_mark??s": ["PASSAGGIO", "FISARMONICA", "Porte.it", "INVADO", "MADEIRA DO BRASIL", "ZINCO", "MEGA PORTE"]}	75
76	{"lloji": ["Dyer t?? jashtme", "Streha Mbrojtese"], "filtro_sipas_mark??s": ["Verdelook", "ZINCO"]}	76
77	{"lloji": ["Gure zbukurimi", "Rrethues dhe aksesore", "Vazo lulesh plastike", "Vazo druri", "Zbukurues kopshti", "Kangjella Metalike", "Pishtare", "Qirinj Citronela", "Vazo lule graniti/betoni", "Vazo lule qeramike", "Suport vazo", "Vazo metalike", "Vazo", "Vazo zbukurimi", "Mbajt??se qiriri", "Rafte", "Transportes", "Ashkla druri", "Vazo lulesh p??r ambient t?? brendsh??m", "Vazo lulesh ratani", "Pjat?? vazo lulesh plastike"], "filtro_sipas_mark??s": ["GARDENnirDESIGN", "CYCLOPS", "Decoramica", "Artplast", "FERRO CANCELLI", "Telcom", "PREMIER WOOD", "MEGATEK", "Drina", "Botanica", "Akrol", "Florey", "MESH.TEC", "DeRoma", "Florance", "Vasar", "D`PETRA", "homemotion", "Verdelook", "Galileo Casa", "Primavera", "Leader", "Sally", "Fiorella", "Liberty", "Maxi", "Record", "United Fences", "Star Cord", "Disrael", "Teraplast", "Terraneo", "AnticoMestiere", "ProsperPlast", "MILLE", "Pircher", "Pro garden", "Niet Van Toepassing", "Van der Leeden", "H &amp; S collection", "Happy Garden", "Atmosphera"]}	77
78	{"lloji": ["Gaxebo dhe Tenda", "Lisharese", "Thurje natyrale", "Plastike", "Metalike dhe Kamping", "Bar artificial", "Shatrivan"], "filtro_sipas_mark??s": ["Keter"]}	78
79	{"lloji": ["Humus, pesticide, fara bimesh", "Bim?? Aromatike", "Lule dhe bim?? p??r ambiente t?? jashtme", "Fidan?? dhe Pem?? frutore", "Fara Lulesh dhe bim??sh", "Lule dhe bim?? p??r ambiente t?? br??ndshme", "Humus dhe&nbsp; Ushqyes p??r lule dhe Bim??"], "filtro_sipas_mark??s": ["Brixo", "FLORTIS Long", "PLANTS", "Endri Gips", "Bavicchi", "Pro garden"]}	79
80	{"lloji": ["Korrese bari", "Prerese bari", "Prerese ligustrash", "Pompa lavazhi", "Fshesa elektrike", "Sharra Kopshtarie", "Aksesor?? p??r vegla kopshti"], "filtro_sipas_mark??s": ["SKIL", "STANLEY", "Brixo", "BOSCH", "Black&amp;Decker", "Bosch Jeshil", "Wurth", "Einhell", "Green Cat", "NIKLAS", "Alpina", "DAEWOO", "Oleo-Mac", "ELSEA"]}	80
81	{"lloji": ["Korrese bari", "Prerese bari", "Prerese ligustrash", "Pompa spekatese"], "filtro_sipas_mark??s": ["BOSCH", "Black&amp;Decker", "Bosch Jeshil", "Wurth", "Einhell"]}	81
82	{"lloji": ["Korrese bari", "Sharra Kopshtarie"], "filtro_sipas_mark??s": ["Einhell", "Alpina", "DAEWOO", "GTL", "Oleo-Mac"]}	82
83	{"lloji": ["Vegla agrobujqesore", "Vegla per bime", "Te tjera vegla kopshti dhe aksesore", "Vegla prerese", "Sprucator", "Rakorderi", "Artikuj Mbrojtes"], "filtro_sipas_mark??s": ["WORTH", "EDEN JARDIN", "Brixo", "MASTER FORCE", "Black&amp;Decker", "Verdelook", "Fiskars", "Benman", "Wurth", "gardenBreak", "Green Seasons"]}	83
84	{"lloji": ["Tuba", "Programator per sisteme ujitje", "Elektrovalvula", "Sensor shiu", "Sprucator", "Rakorderi"], "filtro_sipas_mark??s": ["PALAPLAST", "EDEN JARDIN", "K.TSALERS", "Iris", "RAIN BIND", "ACQUASAN", "Claber", "Green Seasons", "Agri Pipe", "YOYO"]}	84
85	{"lloji": ["Aksesore", "Barbekju guri", "Barbekju me qymyr", "Barbekju me gaz", "Aksesor?? gatimi profesional", "Aksesor?? pastrimi", "Barbekju dhe furra me dru", "Hell dhe aksesor??", "Qymyr dhe ndez??s", "Tenda dhe mbulesa", "Zgara dhe tava", "Aksesor?? servirje", "Hell dhe aksesor??", "Erza per gatim"], "filtro_sipas_mark??s": ["Kronstar Oven &amp; Grill", "Mr.Grill", "Diavolina", "Eco Fiamma", "El Gaucho", "Vaggan", "Grill"]}	85
86	{"lloji": ["Tapatrice", "Shishe"], "filtro_sipas_mark??s": []}	86
87	{"lloji": ["Kosha mbeturinash", "Rafte dhe dollape", "Aksesor?? t?? tjer??"], "filtro_sipas_mark??s": ["Artplast", "all4bath", "Galileo Casa", "Claber", "Stefanplast", "MILLE", "Pro garden", "I.C.S."]}	87
88	{"lloji": ["Insekticide"], "filtro_sipas_mark??s": ["Mayer", "Spira"]}	88
89	{"lloji": ["Rakorderi bakri"], "filtro_sipas_mark??s": []}	89
90	{"lloji": ["Aksesor?? p??r vegla kopshti", "Magazina dhe organizim"], "filtro_sipas_mark??s": ["SKIL", "FALCON", "BOSCH", "Bosch Jeshil", "Wurth", "Oregon", "Green Cat", "Carlton"]}	90
91	{"lloji": ["Artikuj Plazhi", "Aksesor?? plazhi"], "filtro_sipas_mark??s": ["Galileo Casa"]}	91
92	{"lloji": ["Plastike"], "filtro_sipas_mark??s": ["Artplast"]}	92
93	{"lloji": ["Artikuj Plazhi"], "filtro_sipas_mark??s": []}	93
94	{"lloji": [" Fshesa dhe aksesor??"], "filtro_sipas_mark??s": ["Verdelook"]}	94
95	{"lloji": ["Bojra per jashte"], "filtro_sipas_mark??s": ["Bitex", "Nirlat", "Isomat", "Deutsch Color"]}	95
99	{"lloji": ["Bojra metali"], "filtro_sipas_mark??s": ["Nirlat", "Arexons", "Deutsch Color"]}	99
100	{"lloji": ["Letra muri", "Vegla per letra muri", "Ngjit??s"], "filtro_sipas_mark??s": ["Bison", "Komar", "Erismann", "Marlburg", "Metylan"]}	100
101	{"lloji": ["Tretes"], "filtro_sipas_mark??s": ["MULTICHIMICA", "Decotric", "Nirlat", "Arexons", "Deutsch Color"]}	101
102	{"lloji": ["Sprai"], "filtro_sipas_mark??s": ["Brixo", "COLORS"]}	102
103	{"lloji": ["Ngjites"], "filtro_sipas_mark??s": ["UHU", "Loctite", "TESA", "Brixo", "Ceresit", "Bison", "Moment", "Erismann", "LION", "Wurth", "Metylan", "Eurocel", "Pattex", "GEKO", "Akfix"]}	103
104	{"lloji": ["Furca lyerje", "Zgjatues", "Mikser boje", "Rollone lyerje and Bishta", "Zmerilues", "Pistolete silikoni", "Vegla te tjera"], "filtro_sipas_mark??s": ["DECO MART", "Mega Color", "Dekor", "Brixo", "Bison", "EASY ART", "MU", "MAXTOP", "Tactix", "Tactix-Onsite", "Morris", "Benman", "Einhell", "Fischer", "Orient", "Nespoli"]}	104
105	{"lloji": ["Silikon"], "filtro_sipas_mark??s": ["Ceresit", "Bison", "Wurth", "Fischer", "Akfix", "MEKK EXPERT"]}	105
106	{"lloji": ["Vegla pune t?? tjera nd??rtimi"], "filtro_sipas_mark??s": ["Dekor"]}	106
107	{"lloji": ["Bojra dekorative", "Bojera akrilike", "Bojera vaji", "Bojra per xham dhe qeramik", "Bojera efekt metalik"], "filtro_sipas_mark??s": ["Cadence", "Winsor", "BOSCH", "Amaya", "Artico"]}	107
108	{"lloji": ["Penela per boje akrilike", "Penela per boje vaji"], "filtro_sipas_mark??s": ["Cadence", "Amaya", "Artico"]}	108
109	{"lloji": ["Shufra druri", "Shufra Polistireni", "Korniza Inoksi", "Korniza Xhami", "Korniza PVC", "Korniza MDF", "Korniza druri"], "filtro_sipas_mark??s": ["homemotion", "Disrael", "Niet Van Toepassing", "H &amp; S collection", "Atmosphera"]}	109
110	{"lloji": ["Piktura orgjinale", "Piktura t?? printuara", "Fotografi"], "filtro_sipas_mark??s": ["NatyrART", "DeART", "Atmosphera"]}	110
111	{"lloji": ["Pasqyra", "Aksesor?? p??r korniza", "Tavaloz", "Spatula", "Telajo", "Mbajt??se lapsi", "Album p??r foto"], "filtro_sipas_mark??s": ["Cadence", "Galileo Casa"]}	111
112	{"lloji": ["Tuba", "Rakorderi", "Kabine zjarrfikse", "Hidrant", "Sperkates Zjarrfikes", "Fikese zjarri", "Te tjera"], "filtro_sipas_mark??s": ["MOBIAK"]}	112
113	{"lloji": ["Rakorderi", "Saracineska", "Fllanxha", "Matesa Uji", "Valvula moskthimi", "Filtra uji"], "filtro_sipas_mark??s": ["DROP"]}	113
114	{"lloji": ["Valvula bakri", "Tuba bakri", "Tuba PPR", "Tuba Multistrat", "Tuba fleksib??l", "Rakorderi Multistrati", "Rakorderi PPR", "Tuba t?? galvanizuar", "Tuba dhe rakorderi PVC", "Rakorderi te galvanizuara", "Rakorderi PE", "Rakorderi PP", "Aksesor?? t?? tjer??", "Rakorderi Bronxi", "Valvula Bronxi"], "filtro_sipas_mark??s": ["RBM", "Agru", "OTER", "Toro", "Rietti", "NORTHCON", "Loctite", "Aqua filter", "TECHNOMETAL", "Brixo", "Confort", "Teqja", "CIM", "NTM Italy", "pro-For Tec", "SAB", "IZOTERM", "Wurth", "Tecnoresine", "ARCO", "MATEU", "DLG", "LABOR", "Luxor", "MT Spain", "ECOSOFT"]}	114
115	{"lloji": ["Dryna", "Te tjera", "Dado dhe bullona", "Aksesore Montimi", "Vida druri", "Kuti Postare"], "filtro_sipas_mark??s": ["STANLEY", "BOSCH", "Ceresit", "DEWALT", "Bosch Jeshil", "Einhell"]}	115
116	{"lloji": ["Vegla pune te tjera ndertimi", "Nivel", "??eki??", "Sopata dhe sqepar??", "Sh??nues", "Met??r", "Rula p??r lyerje dhe bishta ruli", "Sharra dore"], "filtro_sipas_mark??s": ["Dekor", "STANLEY", "LAND", "BETA", "MU", "Tactix", "EXCELLENT CARPET"]}	116
117	{"lloji": ["Artikuj Mbrojtes", "Veshje pune sigurie", "Sinjalistike dhe siguri rrugore", "Veshje pune dhe sigurie", "Artikuj mbrojt??s me nj?? p??rdorim"], "filtro_sipas_mark??s": ["VENUSbe", "SKIL", "BSL", "Bosch Jeshil", "Cofra", "Benman", "Smarwell", "Satexo", "PORTWEST"]}	117
118	{"lloji": ["Zmerilues", "Matrapik", "Trapan", "Vidator", "Fresibel", "Zdrukth", "Freze", "Sharra bango", "Sharra sege", "Sharra shpate", "Perzjeres kolle", "Pistolete ngrohese", "Pistolet?? lyerje", "Te tjera vegla elektrike"], "filtro_sipas_mark??s": ["Prostart", "Kinstorm", "SKIL", "Kinway", "BOSCH", "Kraft", "Black&amp;Decker", "DEWALT", "BETA", "Bosch Jeshil", "Dremel", "Einhell", "Stanley-FatMax"]}	118
119	{"lloji": ["Matrapik", "Trapan", "Vidator", "Fresibel", "Sharra sege", "Trapan me bateri", "Mjete matese", "Bateri dhe karikues"], "filtro_sipas_mark??s": ["SKIL", "BOSCH", "Black&amp;Decker", "DEWALT", "Bosch Jeshil", "Einhell"]}	119
120	{"lloji": ["Sharra sege", "Punto metali", "Punto betoni", "Punto druri", "Punto SDS Plus", "Punto SDS Max", "Dalta SDS Plus", "Dalta SDS Max", "Disk metali", "Disk betoni", "Disk druri", "Leter zmerile", "Lama sharre sege", "Furce teli", "Koka freze", "Mandrino", "Qeleshe lu??idimi", "Gota shpimi", "Maje kacavide", "Aksesore p??r Minizmerilues", "Gure zmeril"], "filtro_sipas_mark??s": ["SKIL", "Kinway", "STANLEY", "Masterpac", "Brixo", "Shall", "BOSCH", "Black&amp;Decker", "DEWALT", "BETA", "MU", "Bosch Jeshil", "Dremel", "Gymbit", "Morris", "Benman", "Wurth", "Einhell", "Smirdex", "Ototop"]}	120
121	{"lloji": ["Cekic", "Nivel", "Sharra dore", "Sopate&amp;Sqepare", "Dalta", "Vegla pune te tjera ndertimi", "Produkte te tjera sigurie", "Celesa", "Kacavide", "Pince", "Kriket dhe aksesore", "Morsa dhe Morseta", "Lima", "Kuti veglash dhe bango", "Sete veglash mekanike", "Vegla pune te tjera mekanike", "Prerese dhe thika", "Vegla t?? tjera", "Vegla Ajri"], "filtro_sipas_mark??s": ["GREAT WALL", "STANLEY", "LAND", "Brixo", "MASTER", "MANO", "MASTER FORCE", "FORCE", "BETA", "MU", "Dremel", "MAXTOP", "Tactix", "Tactix-Onsite", "Einhell", "CURVER"]}	121
122	{"lloji": ["Meter", "Met??r", "Gone", "Metra dhe Nivelues lazer"], "filtro_sipas_mark??s": ["STANLEY", "Brixo", "BOSCH", "Black&amp;Decker", "DEWALT", "BETA", "MU", "Bosch Jeshil"]}	122
123	{"lloji": ["Aksesore per makina"], "filtro_sipas_mark??s": ["SONAX", "Motox", "Petex", "Glipart", "Wurth", "PETEK"]}	123
124	{"lloji": ["Maska mbrojtese"], "filtro_sipas_mark??s": []}	124
125	{"lloji": ["Dosje me mekaniz??m", "Dosje arkive", "Dosje arkive me llastik", "Dosje konference", "Dollape dhe rafte", "Dosje me buton", "Dosje me unaza"], "filtro_sipas_mark??s": ["ARK", "Noki", "Exacompta", "Esselte", "Idea", "Arcasud", "Office", "Fellowes", "Globox", "Europe", "Progres", "Blasetti", "Fornax", "Deli", "For Office", "IL GUARDIANO"]}	125
126	{"lloji": ["Lapsa / Portamina", "Evidenziatore / Markera", "Stilolapsa / Stilografe", "Korrektor", "Ngjit??s letre", "Gom??", "Vizore"], "filtro_sipas_mark??s": ["UHU", "BIC", "ARK", "Noki", "Siam", "Eagle", "Lebez", "Memories Precious", "3A", "Smart", "Uni", "Niji", "Globox", "Fila", "Lyra", "Glass4You", "Herevin", "FC", "Deli", "Tratto", "Hi-Text", "Topwrite", "Carioca", "Staedtler", "Faber-Castell", "Hello", "Miniso", "Must"]}	126
127	{"lloji": ["Organizues tavoline"], "filtro_sipas_mark??s": ["ARK", "Siam", "Esselte", "Memories Precious", "Herevin", "Fornax", "Deli", "Double A"]}	127
128	{"lloji": ["Pajisje lidh??se"], "filtro_sipas_mark??s": ["ARK", "Noki", "Siam", "Eagle", "Lebez", "Memories Precious", "3A", "Smart", "Fornax", "IDEAL", "Deli"]}	128
129	{"lloji": ["Zarfe", "Let??r", "Blloqe sh??nimi, fletore"], "filtro_sipas_mark??s": ["BIC", "Ariston", "Siam", "Eagle", "Esselte", "Globox", "Fabriano", " Pigna", "Markin", "Progres", "Renz-Ideal", "Kosta", "Blasetti", "Fornax", "Deli", "Deluxe", "Disney", "BRILLIANT", "Double A", "Cartolandia", "Miniso"]}	129
130	{"lloji": ["Krijimtari p??r f??mije"], "filtro_sipas_mark??s": ["BIC", "Hello Partner", "Lebez", "Memories Precious", "3A", "Niji", "Fila", "Deli", "Primo", "Disney", "Giotto", "Luna", "Carioca"]}	130
131	{"lloji": ["Tempera, boj??ra dhe lapostila"], "filtro_sipas_mark??s": ["BIC", "Memories Precious", "Uni", "Fila", "Tratto", "Primo", "Giotto", "Carioca", "Vneeds", "Miniso"]}	131
132	{"lloji": ["CD", "USB"], "filtro_sipas_mark??s": ["Verbatim", "OMEGA", "Sony"]}	132
133	{"lloji": ["T?? tjera", "Aksesore"], "filtro_sipas_mark??s": ["ARK", "Siam", "Memories Precious", "Fellowes", "Renz-Ideal", "RECO", "Topwrite"]}	133
134	{"lloji": ["Var??se rrobash &amp; Mbajt??se ??adrash", "Kosha mbeturinash", "Organizues tavoline"], "filtro_sipas_mark??s": ["Artplast", "all4bath", "RELAX", "homemotion", "ARK", "BALIOUSKAS", "Galileo Casa", "Stefanplast", "MILLE", "Niet Van Toepassing", "Miniso"]}	134
135	{"lloji": ["Tabela"], "filtro_sipas_mark??s": ["Lebez", "Memories Precious", "Globox", "Fila", "Fornax", "Naga"]}	135
136	{"lloji": ["Makin?? llogarit??se"], "filtro_sipas_mark??s": ["Memories Precious", "Canon", "Deli"]}	136
137	{"lloji": ["Bokse", "Kufje", "Video projektor", "Ekran projektori", "MP3 &amp; MP4"], "filtro_sipas_mark??s": ["Canon", "OMEGA", "Acer", "Elektra", "Grundig", "Remax", "Miniso", "Motorola"]}	137
138	{"lloji": ["Mause", "Tastiera", "Karikues", "Aksesor??", "Printera", "PC"], "filtro_sipas_mark??s": ["BOSCH", "OMEGA", "PLATINET", "HP", "Samsung", "Glipart", "Lexmark", "Grundig", "Kinzo", "Dunlop", "Bavin", "Auris", "Miniso"]}	138
139	{"lloji": ["Kab??ll MICRO USB/USB", "Kab??ll zgjatues USB/MR", "Kab??ll networku"], "filtro_sipas_mark??s": ["PLATINET", "Grundig", "Remax", "Budi"]}	139
140	{"lloji": ["??anta p??r kamer", "T?? tjera", "??anta p??r laptop", "Canta shkolle", "Kuleta shkolle"], "filtro_sipas_mark??s": ["Memories Precious", "PLATINET", "Herevin", "Disney", "Slazenger", "Miniso"]}	140
141	{"lloji": ["Pastrues"], "filtro_sipas_mark??s": ["PLATINET", "Grundig"]}	141
142	{"lloji": ["Aromatik??", "Veshje p??r sedilje", "Masazh p??r sedilje", "Tapete Makine", "Veshje Timoni", "Mbrojt??se dielli"], "filtro_sipas_mark??s": ["Petex", "Areon", "Wunder Baum", "Arexons", "Glipart", "Wurth", "Maranello", "Ototop", "Little Joe"]}	142
143	{"lloji": ["Solucione dhe aditiv??"], "filtro_sipas_mark??s": ["SONAX", "Motox", "ADDINOL", "Arexons", "OMV Petrol", "LION", "Wurth", "Isomat", "Durance"]}	143
144	{"lloji": ["Trajtues t?? brendsh??m", "Trajtues t?? jasht??m"], "filtro_sipas_mark??s": ["SONAX", "Motox", "Arexons", "Marpa", "Wurth", "Durance", "Maranello", "Ototop"]}	144
145	{"lloji": ["Fshir??se Xhami", "Aksesor?? Emergjence", "Aksesor?? t?? tjer??"], "filtro_sipas_mark??s": ["SONAX", "SKIL", "Petex", "Areon", "Black&amp;Decker", "Purgator", "AutoPractic", "Arexons", "K2", "Glipart", "Wurth", "Einhell", "Orient", "Grundig", "Dunlop", "MITUTOYO", "Ototop", "Esy sock"]}	145
146	{"lloji": ["Llamba Philips", "Llamba t?? tjera"], "filtro_sipas_mark??s": ["Philips", "narva", "GP", "EMOS", "Dunlop", "NAKAMOTO", "MITUTOYO"]}	146
147	{"lloji": ["Zgara", "Valixhe", "te tjera"], "filtro_sipas_mark??s": ["Life Glass", "Ototop"]}	147
148	{"lloji": ["Kallama dhe makineta", "Grepa", "Imitues", "Plumb??e", "Aksesor?? t?? tjer?? peshkimi", "Filispanj??"], "filtro_sipas_mark??s": ["Omer", "Trabucco", "Shimano", "Rapala Max Rap", "Lineaeffe", "XQ MAX", "Colmic"]}	148
149	{"lloji": ["Artikuj kampingu"], "filtro_sipas_mark??s": []}	149
150	{"lloji": ["Bi??ikleta", "Aksesor??"], "filtro_sipas_mark??s": ["Brixo", "MAX", "EMOS", "MAX Bicycles", "Dunlop", "XQ MAX", "Ototop"]}	150
151	{"lloji": ["Palestra"], "filtro_sipas_mark??s": ["PREMIER WOOD", "Elite", "Gymbit", "Majestic", "Slazenger", "XQ MAX", "TRY&amp;DO"]}	151
152	{"lloji": ["Artikuj Sportiv", "T?? tjera", "Canta pazari"], "filtro_sipas_mark??s": ["OMEGA", "Grundig", "Trend", "Dunlop", "Donnay"]}	152
153	{"lloji": ["Valixhe dhe ??anta udh??timi"], "filtro_sipas_mark??s": ["Xavax", "Dunlop", "XQ MAX"]}	153
154	{"lloji": ["Aksesor?? kampingu", "Canta kampingu", "Gatim p??r kamping", "Jast??k dhe fjetje", "Tavolin?? dhe stola kampingu", "Tenda dhe aksesor??", "Termus kampingu"], "filtro_sipas_mark??s": ["Fiskars", "Rica", "Bestway", "RedCliffs"]}	154
155	{"lloji": ["Frigorifer??"], "filtro_sipas_mark??s": ["Fuego", "Beko", "Ariston", "Brixo", "Electrolux", "Gio'Style", "LG", "Elektra", "Alpina", "HYUNDAI", "candy", "Hoobart", "Haier", "MIDEA", "HOTPOINT"]}	155
156	{"lloji": ["Lavatrice dhe thar??se"], "filtro_sipas_mark??s": ["Fuego", "Beko", "Ariston", "Panasonic", "LG", "Samsung", "Elektra", "candy", "Haier", "MIDEA", "HOTPOINT"]}	156
157	{"lloji": ["Paisje Gatimi", "Aspirator", "Furr??", "Mikroval??", "T?? tjera", "Vat??r Gatimi"], "filtro_sipas_mark??s": ["Fuego", "Beko", "BOSCH", "Electrolux", "IMETEC", "MAX", "Samsung", "Elektra", "HYUNDAI", "candy", "Delimano", "EMOS", "Hoobart", "Atlantik", "AEG", "Elica", "Tecnowind", "Xavax", "cook", "Kooper", "Simfer", "Dunlop", "ATLANTIC", "HOTPOINT"]}	157
158	{"lloji": ["Lavastovilje"], "filtro_sipas_mark??s": ["Beko", "Elektra", "candy"]}	158
159	{"lloji": ["Shtrydh??se frutash", "B??r??s kafeje dhe caji", "Friteza", "P??rkujdesje p??r flok??t dhe makina rroje", "Miksera", "Makina qep??se dhe hekur rrobash", "Thek??s buke dhe zgara elektrike", "Paisje t?? tjera", "Ngroh??s uji"], "filtro_sipas_mark??s": ["De Longhi", "Philips", "Fuego", "Beko", "Sinbo", "BOSCH", "Vortice", "Black&amp;Decker", "Electrolux", "IMETEC", "Gio'Style", "MAX", "Braun", "Severin", "Deluxe", "NIKLAS", "Alpina", "Russell Hobbs", "Remington", "Grundig", "ROWENTA", "Duracell", "Delimano", "EMOS", "Hoobart", "Rovus", "DAEWOD", "Tefal", "Hoover", "Hama", "Xavax", "Meliconi", "Krups", "Kooper", "GELO", "ISKRA", "Brita", "ETA", "Dunlop", "ADLER", "MESKO", "CARMY", "Lavazza", "CAMRY", "FIVE Simply smart"]}	159
160	{"lloji": ["Fshesa me vakum"], "filtro_sipas_mark??s": ["Philips", "Fuego", "Beko", "BOSCH", "Black&amp;Decker", "IMETEC", "MAX", "Samsung", "Elektra", "ROWENTA", "Rovus", "Hoover", "Kooper", "Zelmer", "ETA", "Dunlop"]}	160
161	{"lloji": ["Televizor??", "Sisteme Audio dhe Video"], "filtro_sipas_mark??s": ["Philips", "Fuego", "Alcad", "LG", "Elektra", "HYUNDAI", "Grundig", "EMOS", "Hoobart", "Meliconi", "Kooper", "Haier", "Dunlop", "Motorola"]}	161
162	{"lloji": ["Ushqime p??r qen", "Ushqime p??r mace", "Aksesor?? p??r ushqim", "Ushqime p??r kafsh?? t?? tjera"], "filtro_sipas_mark??s": ["Miglior Cane", "Miglior Gatto", "Cocco", "CURVER", "Tetra", "Trixie", "Laky", "Versele-Laga"]}	162
163	{"lloji": ["Shampo", "Furca dhe kreh??ra", "T?? tjera"], "filtro_sipas_mark??s": ["Miglior Gatto", "Cocco", "CURVER", "Tetra", "Trixie", "8 in 1", "Versele-Laga", "DAC"]}	163
164	{"lloji": ["Qafore", " Zinxhir?? dhe litar??", "Lodra", "T?? tjera", "Transportues"], "filtro_sipas_mark??s": ["Cocco", "Trixie", "Biozoo"]}	164
165	{"lloji": ["Ndenj??se", "Kolibe druri", "Kolibe plastike"], "filtro_sipas_mark??s": ["CURVER", "Trixie", "Biozoo"]}	165
166	{"lloji": ["Aksesor??", "Te tjera"], "filtro_sipas_mark??s": ["Kalif", "Tetra", "Trixie"]}	166
167	{"lloji": ["Var??se rrobash", "Rafte dhe dollape", "Kuti plastike", "Qese plastike", "T?? tjera", "Kuti plastike", "Rafte dhe dollape", "Kuti magazinimi", "Kuti tekstili"], "filtro_sipas_mark??s": ["Brixo", "Artplast", "MEGATEK", "Drina", "Ippa", "DEA home", "Home Style", "BALIOUSKAS", "Eliplast", "Verdelook", "Fischer", "IL GUARDIANO", "CURVER", "Storage solutions", "Niet Van Toepassing", "KIS", "Solenne", "Atmosphera", "FIVE Simply smart"]}	167
168	{"lloji": ["Aksesor?? lavanderie", "Tavolina hekurosje", "Nder??se rrobash", "Kosha rrobash", "Kova dhe legena", "Kuti plastike", "Kuti tekstili", "Detergjent??", "Shkall??"], "filtro_sipas_mark??s": ["Vileda", "Artplast", "Drina", "all4bath", "De'Casa", "Ippa", "Arix", "LOGEX", "Home Style", "BALIOUSKAS", "Sanitec", "Eliplast", "Verdelook", "Galileo Casa", "Stefanplast", "SISMA", "CURVER", "MILLE", "Calgon", "COLOMBO", "MSV", "Ultra clean", "ItalCasa", "Metaltex", "KIS", "Atmosphera"]}	168
169	{"lloji": ["Qese mbeturinash"], "filtro_sipas_mark??s": []}	169
170	{"lloji": ["Lodra", "Dekorime", "Kuklla p??r beba", "Lodra edukative", "Pistolete", "Herojt?? Marvel", "Lojra zbavit??se", "Lodra pellushi", "Makina p??r Femij??", "Kuklla dhe sht??pi kukllash", "Zbavit??se p??r beba", "Lodra p??r beba", "Tapete pazell", "Lol", "Aksesor?? dhome", "Magazinim", "Pazell", "Plastelina", "Robote transformers", "Lodra p??r vajza"], "filtro_sipas_mark??s": ["Artemis", "MEGATEK", "homemotion", "Niji", "Lorelli??", "Pino", "albas", "bildo", "Disney", "Hasbro", "Banbao", "Barbie", "Fisher Price", "Hatchimals", "Hotwheels", "Bunchem", "Other Spin Master", "Globo", "Kingdom Toy", "Paw Patrol", "Kinetic Sand", "GREAT FRIEND", "ANIMAL WORLD", "Quercetti Montesori", "L.O.L", "Miniso", "Lisciani"]}	170
171	{"lloji": ["Higjen??", "P??rkujdesje", "Aksesore dushi p??r f??mij??", "Aksesor per bebe", "Kujdesi per beben"], "filtro_sipas_mark??s": ["Drina", "Cotoneve", "BALIOUSKAS", "Lorelli??", "PENATEN", "Miniso", "Borotalco", "Felce Azzurra"]}	171
172	{"lloji": ["Krevate", "Tavolina", "Karrige", "Kuti magazinimi", "Ambazhure"], "filtro_sipas_mark??s": ["MEGATEK", "Adore", "BALIOUSKAS", "Lorelli??"]}	172
173	{"lloji": ["??ar??af?? &amp; K??ll??f?? Jast??ku", "Batanije &amp; Jorgan??", "Jast??k?? &amp; Mbrojt??s", "Dyshek?? &amp; Mbrojt??s", "Body dhe corape", "Peshqir??"], "filtro_sipas_mark??s": ["Marta Marzotti", "Andy&amp;Helen", "MEGATEK", "Dormeo", "Pierre Cardin", "Lorelli??", "Ibaby"]}	173
174	{"lloji": ["Karroca", "Karrige Makine", "Krevate shtrati p??r beba"], "filtro_sipas_mark??s": ["Lorelli??", "Deluxe", "baby world"]}	174
175	{"lloji": ["Karrige Ngr??nie", "Ngr??nie"], "filtro_sipas_mark??s": ["Lorelli??", "douceur d'int??rieur??", "CURVER"]}	175
176	{"lloji": ["Aksesor?? mbrojt??s"], "filtro_sipas_mark??s": ["MEGATEK"]}	176
177	{"lloji": ["Fjogo p??r flok??"], "filtro_sipas_mark??s": []}	177
178	{"lloji": ["Ora", "Piktura", "Tabela &amp; var??se", "Pasqyra"], "filtro_sipas_mark??s": ["MEGATEK", "homemotion", "BALIOUSKAS", "Galileo Casa", "Disrael", "Niet Van Toepassing", "H &amp; S collection", "Happy Deco", "Metaltex", "Atmosphera"]}	178
179	{"lloji": ["Perde", "Perde moderne", "Metrazhe", "Aksesore p??r perde", "Perde ndar??se"], "filtro_sipas_mark??s": ["DECO", "Voilage", "Lux Curtain", "Glamorus", "Panneau", "Rideau", "Verdelook"]}	179
180	{"lloji": ["Korniza metalike", "Shina p??r perde", "Korniza druri"], "filtro_sipas_mark??s": ["VENUSbe", "ESTILO DE DISEGNO", "ART&amp;D??COR", "Swish", "Ateliers"]}	180
181	{"lloji": ["Grila veneciane", "Grila roll dhe romane"], "filtro_sipas_mark??s": ["RELAX", "Verdelook"]}	181
182	{"lloji": ["Lidh??sa p??r perde", "Unaza dhe Shirita"], "filtro_sipas_mark??s": []}	182
183	{"lloji": ["Qirinj", "Qirinj aromatik??"], "filtro_sipas_mark??s": ["Aromatherapy Candle", "Fragrant Reflections", "Bougles Parfum??es", "Alpina"]}	183
184	{"lloji": ["Mokete dhe Linoleume", "Tapet?? t?? punuar me dor??", "Tapet??", "Rrugica", "L??kur?? deleje natyrale", "Shtroj?? dere"], "filtro_sipas_mark??s": ["CABALIER", "Gallery", "Crystal", "Shaggy", "Soraya", "Gioia", "Jasmina", "Vera", "Carmina", "RAMSES", "Romance", "Tapis", "Kansas Malaidory Shaggy", "Harmony Shaggy", "Sahara Shaggy", "Vivace"]}	184
185	{"lloji": ["Mbulesa familjare", "Mbulesa HO.RE.CA", "Shtroja tavoline", "Mbulesa PVC"], "filtro_sipas_mark??s": ["MEGATEK", "Galileo Casa", "Decorama", "Atmosphera", "Secret de Gourmet"]}	185
186	{"lloji": ["Vazo Xhami", "Vazo Qeramike", "Vazo Lulesh", "Dekorime Tavoline", "Mbajt??se Qiri", "Gur??/r??r?? dekorimi", "Vazo Metalike"], "filtro_sipas_mark??s": ["Elegance", "MEGATEK", "giardinos", "D`PETRA", "homemotion", "Uniglass", "BALIOUSKAS", "Galileo Casa", "Disrael", "Niet Van Toepassing", "H &amp; S collection", "Happy Deco", "Atmosphera"]}	186
187	{"lloji": ["Lule Artificaile", "Lule t?? Thara", "Aromatik??", "Pem?? artificiale"], "filtro_sipas_mark??s": ["Areon", "FragranceFcelefi", "Potpourri", "homemotion", "Galileo Casa", "Emerald", "Niet Van Toepassing", "Mega green", "Happy Deco", "Home Fragrance", "Atmosphera"]}	187
188	{"lloji": ["Kosha me Thurje", "Kosh druri", "Kosh letre", "Kosh metali", "Kosh najloni", "Kosh tekstili", "Kosh me thurje"], "filtro_sipas_mark??s": ["Deco Casa", "Disrael", "H &amp; S collection", "Sweet Home", "Atmosphera"]}	188
189	{"lloji": ["??anta", "Paketime", "Kuti kartoni"], "filtro_sipas_mark??s": ["homemotion"]}	189
190	{"lloji": ["Jastek?? Dekorativ??"], "filtro_sipas_mark??s": ["PILOW D??COR", "TREND MY STYLE", "ALMOHODO ESPECIAL", "douceur d'int??rieur??", "H &amp; S"]}	190
191	{"lloji": ["Aksesor?? qepje", "Fjongo", "G??rsh??r??", "Penj"], "filtro_sipas_mark??s": []}	191
192	{"lloji": ["Aksesor?? t?? tjer??"], "filtro_sipas_mark??s": []}	192
193	{"lloji": ["Aksesor?? paketimi", "Canta", "Lojra festash", "Qirinj dit??lindje", "Servirje festash", "Ambalazh paketimi", "Tollumbace", "Dekorime festash", "Dekorime te ndryshme", "Dekore dasma", "Tutu fund"], "filtro_sipas_mark??s": ["MEGATEK", "homemotion", "Galileo Casa", "party"]}	193
194	{"lloji": ["Mbulesa", "Mbrojt??se &amp; Mbishtresa Dysheku", "??ar??af??", "Jast??k &amp; K??ll??f", "Batanije", "Dyshek??", "Jorgan??"], "filtro_sipas_mark??s": ["BEAUTY FURNITURE", "Marta Marzotti", "MEGATEK", "Ambrosiana", "Home Linen", "Dormeo", "Co&amp;Co", "IMETEC", "LUOCA PATISCA", "Fabress", "Kid City", "MICROJERSEY", "Paulato", "douceur d'int??rieur??", "Galileo Casa", "HINDU", "AMW", "Eysa", "H &amp; S collection"]}	194
195	{"lloji": ["Peshqir??", "Robdishan"], "filtro_sipas_mark??s": ["MEGATEK", "Feridras", "Home Sweet Home", "douceur d'int??rieur??"]}	195
196	{"lloji": ["Shtrydh??se rrushi", "Tapatri??e", "Damixhan??", "Tapa", "Bidon inoxi", "Shishe", "Kontenitor", "Bidon Plastik", "Aksesor??"], "filtro_sipas_mark??s": ["MEGATEK", "Disrael", "H &amp; S collection"]}	196
197	{"lloji": ["Mjel??se bag??tie", "Makineri bluarje", "Aksesor??"], "filtro_sipas_mark??s": ["MELKMAS"]}	197
198	{"lloji": ["Freza toke", "Korr??se bari", "Prer??se bari", "Shkund??se ullinjsh", "Pompa sp??rkat??se", "Aksesor??", "Prer??se ligustrash"], "filtro_sipas_mark??s": ["ADDINOL", "MondoVerde", "Wurth", "Green Cat", "Alpina", "Keban", "DAEWOO", "GTL", "KAWASAKI", "DAEWOD", "Loncin", "Maniver", "Champion", "Oleo-Mac", "HONDA"]}	198
199	{"lloji": ["Pantallona t?? shkurtra", "Kanatjere", "Fustan", "Jelek", "??orape", "Bluz??", "T-shirt", "Tuta", "Kostum", "Stre??e", "Xhup", "Atlete", "Shapka"], "filtro_sipas_mark??s": ["IPANEMA", "KRONOS", "NIKE", "COCOMO", "LOTTO", "ELLESSE", "ADIDAS", "LONSDALE", "PUMA", "REEBOK"]}	199
200	{"lloji": ["Altete", "Xhup", "Pantallona t?? shkurtra", "Bokse", "??orape", "??ant??", "Shapka", "K??puc?? futbolli", "K??puc?? kal??eto", "Rroba banjo", "Aksesor??", "Bluz??", "Polo", "T-shirt", "Tuta", "Kostum", "Stre??e"], "filtro_sipas_mark??s": ["UMBRO", "RIDER", "KRONOS", "NIKE", "COCOMO", "UNDER ARMOUR", "LOTTO", "ELLESSE", "ADIDAS", "NIKE HADDAD", "LONSDALE", "PUMA"]}	200
201	{"lloji": ["Altete", "K??puc?? kal??eto", "Aksesor??", "Sandale", "??orape", "??ant??", "Marsup", "Kapele"], "filtro_sipas_mark??s": ["UMBRO", "KRONOS", "NIKE", "ELLESSE", "J2C", "ADIDAS", "LONSDALE", "PUMA", "REEBOK"]}	201
202	{"lloji": ["Altete", "Bluz??", "T-shirt", "Tuta", "Pantallona t?? shkurtra"], "filtro_sipas_mark??s": ["NIKE", "ADIDAS", "LONSDALE"]}	202
203	{"lloji": ["Ver?? e kuqe", "Shampanj??", "Whisky", "Liker", "Vodka", "Gin", "Birra", "Ver?? e bardh??", "Ver?? e gazuar/Spumante", "Konjak", "Rum", "F??rnet", "Tekila", "Uzo"], "filtro_sipas_mark??s": []}	203
204	{"lloji": ["L??ngje freskuese", "Pije energjike", "Kafe", "Uj??"], "filtro_sipas_mark??s": []}	204
205	{"lloji": ["Fruta t?? thata", "??okollat??", "Biskota", "Patatina"], "filtro_sipas_mark??s": []}	205
206	{"ram": ["8GB", "12GB", "16GB"], "procesori": ["AMD Ryzen??? 3 3250U", "Intel?? Core??? i3-9100", "Intel?? Core??? i5-10400", "Intel?? Core??? i5-10500", "Intel?? Core??? i5-10600", "Intel?? Core??? i5-1135G7", "Intel?? Core??? i7-10700K", "Intel?? Core??? i3-8100", "Intel?? Core??? i7-10510U", "Intel?? Core??? i7-8700"], "nenkategoria": ["All in One", "Desktop", "iMac"], "tipi_ekranit": ["Retina 4K", "Retina 5K"], "karta_grafike": ["AMD Radeon??? Graphics", "AMD Radeon??? Pro 5300M", "AMD Radeon??? Pro 5500M 8GB", "AMD Radeon??? RX 560X", "NVIDIA?? GeForce?? GT 710 2GB", "NVIDIA?? GeForce?? MX330 2GB", "Intel?? UHD Graphics 620", "Intel?? UHD Graphics 630"], "viti_i_prodhimit": ["2020"], "madh??sia_ekranit": ["21.5\\"", "23.8\\"", "27\\""], "rezolucioni_ekranit": ["4096 x 2304 pixels", "5120 x 2880 pixels"], "filtro_sipas_mark??s": ["Acer", "Apple", "Dell", "HP"], "me_dvd__asgn__pa_dvd": ["DVD+/-RW"], "filtro_sipas_ngjyrave": ["Black", "Silver"], "memoria_hdd__asgn__ssd": ["256GB SSD", "512GB SSD", "1TB SSD"]}	206
217	{"ram": ["1.5 GB", "1GB", "2GB", "3GB", "4GB", "6GB"], "bateria": ["2,580mAh", "3,590mAh", "3200mAh", "4,200mAh", "4450mAh", "4800mAh", "4850mAh", "5100mAh", "6,580mAh", "7040mAh", "8,000mAh", "8,134mAh", "8827mAh", "Up to 10 hours", "2,750 mAh", "3,500 mAh", "4,000 mAh", "4,080 mAh", "5,000 mAh", "5000 mAh", "6,000 mAh", "6,150 mAh", "7.300 mAh"], "memoria": ["8GB", "16GB", "32GB", "64GB", "128GB", "256GB", "512GB", "1TB"], "nenkategoria": ["E-Readers", "iPad", "Android Tablets"], "refresh_rate": ["120Hz"], "tipi_ekranit": ["E Ink Carta", "LCD", "Liquid Retina", "PLS LCD", "TN", "IPS LCD", "Liquid Retina IPS LCD", "LTPS IPS LCD", "Super AMOLED", "TFT"], "lloj_i_lidhjes": ["3G", "4G", "4G / LTE", "WiFi"], "kamera_kryesore": ["Triple (12MP, 10MP, TOF 3D )", "Dual (13MP, 5MP )", "Single (12MP)", "Single (13MP)", "Single (2MP)", "Single (5MP)", "Single (8MP)"], "viti_i_prodhimit": ["2020", "2015", "2016", "2017", "2018", "2019"], "kamera_e_perparme": ["Single (0.3MP)", "VGA", "Single (1.2MP)", "Single (2MP)", "Single (5MP)", "Single (7MP)", "Single (8MP)"], "madh??sia_ekranit": ["10.4\\"", "10.9\\"", "10\\"", "11\\"", "13.5\\"", "9.6\\"", "9.7\\"", "10.1\\"", "10.2\\"", "10.5\\"", "12.9\\"", "6.0\\"", "7.0\\"", "8.0\\""], "vendi_i_karikimit": ["Micro USB", "USB Type C"], "rezolucioni_ekranit": ["1024 x 600 pixels", "1200 x 2000 pixels", "1280 x 800", "1536 x 2048 pixels", "1600 x 2560 pixels", "1620 x 2160 pixels", "1640 x 2360 pixels", "1668 x 2224 pixels", "1668 x 2388 pixels", "1920 x 1200 pixels", "2160 x 1620 pixels", "2732 x 2048 pixel", "300ppi", "800 x 1280 pixels", "1200 x 1920 pixels", "1200 x 800 pixels", "1920 x 1080 pixels", "600 x 1024 pixels"], "filtro_sipas_mark??s": ["Amazon", "Acer", "Alcatel", "Apple", "Blackview", "Huawei", "Lenovo", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Angora Blue", "Charcoal Gray", "Chiffon Pink", "Graphite", "Iron Grey", "Mystic Black", "Mystic Bronze", "Mystic Silver", "Oxford Gray", "Platinum Grey", "Plum", "Purple", "Sandstone", "Sky Blue", "Black", "Blue", "Cloud Blue", "Gold", "Gray", "Green", "Pink", "Red", "Rose Gold", "Silver", "Space Gray", "White"]}	217
207	{"ram": ["4GB", "8GB", "12GB", "16GB", "32GB", "64GB"], "procesori": ["AMD Ryzen??? 3 3250U", "AMD Ryzen??? 3 4300U", "AMD Ryzen??? 5 4500U", "AMD Ryzen??? 5 4600HS", "AMD Ryzen??? 5 4600U", "AMD Ryzen??? 7 3700U", "AMD Ryzen??? 7 4700U", "AMD Ryzen??? 9 4900H", "AMD Ryzen??? 9 4900HS", "Apple M1", "Intel?? Celeron N4020", "Intel?? Core??? i3-1115G4", "Intel?? Core??? i5-10300H", "Intel?? Core??? i5-1030NG7", "Intel?? Core??? i5-1035G4", "Intel?? Core??? i5-1035G7", "Intel?? Core??? i5-1038NG7", "Intel?? Core??? i5-1135G7", "Intel?? Core??? i5-8257U", "Intel?? Core??? i7-10710U", "Intel?? Core??? i7-10750H", "Intel?? Core??? i7-10875H", "Intel?? Core??? i7-11370H", "Intel?? Core??? i7-1165G7", "Intel?? Core??? m3-8100Y", "Intel?? Pentium?? Gold 4425Y", "Intel?? Pentium?? Gold 6405U", "Intel?? Pentium?? Silver N5030", "Microsoft SQ?????1", "AMD Ryzen??? 5 3500U", "AMD Ryzen??? 7 4800H", "Intel?? Celeron?? N3350", "Intel?? Core??? i3", "Intel?? Core??? i3-1005G1", "Intel?? Core??? i5", "Intel?? Core??? i5-1035G1", "Intel?? Core??? i7-10510U", "Intel?? Core??? i7-1065G7", "Intel?? Core??? i5-10210U"], "nenkategoria": ["MacBook Air", "MacBook Pro", "2-in-1 Laptops", "Business Laptop", "Gaming Laptop", "Notebooks"], "refresh_rate": ["120Hz", "60Hz", "144Hz", "240Hz"], "karta_grafike": ["Adreno??? 685 GPU", "AMD Radeon??? Graphics", "AMD Radeon??? Graphics 2GB", "AMD Radeon??? Pro 5500M 8GB", "AMD Radeon??? Pro 5600M", "AMD Radeon??? RX 5600", "Apple (7Core)", "Apple (8Core)", "Intel?? Iris?? Plus", "Intel?? Iris?? Xe Graphics", "Intel?? Iris??? Plus Graphics", "Intel?? UHD Graphics 605", "Intel?? UHD Graphics 615", "NVIDIA GeForce?? GTX 1650 Ti 4GB", "NVIDIA GeForce?? GTX 1660 Ti", "NVIDIA?? GeForce?? GTX 1660 Ti 6GB", "NVIDIA?? GeForce?? MX330 2GB", "NVIDIA?? GeForce?? RTX 2070 SUPER??? MaxQ 8GB", "NVIDIA?? GeForce?? RTX 2080 SUPER???", "NVIDIA?? GeForce?? RTX 3060 6GB", "NVIDIA?? GeForce?? RTX 3070 8GB", "NVIDIA??? GeForce?? GTX 1650 Max-Q 4GB", "Radeon??? RX Vega 10 Graphics", "Radeon??? Vega 8 Graphics", "Integrated Intel HD Graphics", "Intel?? HD VGA", "Intel?? Iris?? Plus Graphics", "Intel?? Iris?? Plus Graphics 645", "Intel?? UHD Graphics", "Intel?? UHD Graphics 600", "Intel?? UHD Graphics 620", "Nvidia GeForce?? GTX 1650 4GB", "Nvidia GeForce?? GTX 1660 Ti 6GB", "Nvidia GeForce?? RTX 2060 6GB", "Nvidia GeForce?? RTX 2070 8GB", "NVIDIA?? GeForce?? MX230 2GB", "Nvidia?? GeForce?? MX250 2GB"], "viti_i_prodhimit": ["2019"], "madh??sia_ekranit": ["10.5\\"", "11.6\\"", "12.3\\"", "12.4??? PixelSense???", "13.5\\"", "13.3\\"", "13\\"", "14\\"", "15.6\\"", "16\\"", "17.3\\""], "filtro_sipas_mark??s": ["Microsoft", "MSI", "Apple", "Asus", "Dell", "HP", "Lenovo"], "me_dvd__asgn__pa_dvd": ["DVD+/-RW", "NO DVD"], "filtro_sipas_ngjyrave": ["Bronze", "Brown", "Chameleon Blue", "Dark Blue", "Grey", "Gunmetal Gray", "Platinum Grey", "Poppy Red", "Prism Gray", "Star Grey", "Black", "Blue", "Gold", "Gray", "Green", "Ice Blue", "Pink", "Red", "Silver", "Space Gray", "White"], "memoria_hdd__asgn__ssd": ["128GB eMMC", "512GB SSD + 32GB Optane", "64GB", "64GB eMMC", "2TB SSD", "512GB SSD + 1TB HDD", "128GB SSD", "256GB SSD", "512GB SSD", "1TB SSD", "128GB SSD + 1TB HDD"]}	207
208	{"ram": ["8GB"], "memoria": ["16GB", "32GB", "64GB", "128GB", "256GB", "512GB"], "read_speed": ["20 MB/s", "2000 MB/s", "420 MB/s", "10MB/s", "480MB/s", "100MB/s", "130MB/s", "150MB/s"], "write_speed": ["150 MB/s", "385 MB/s", "10MB/s", "20MB/s", "4MB/s"], "nenkategoria": ["Ram", "USB flash memory"], "filtro_sipas_mark??s": ["Emtec", "Crucial", "Kodak", "Baseus", "Kingston", "SanDisk", "Verbatim"]}	208
209	{"print_speed": ["up to 19 ppm", "up to 26 ppm", "up to 45 ppm", "up to 18 ppm", "up to 20 ppm", "up to 21 ppm", "up to 30 ppm", "up to 31 ppm", "up to 34 ppm", "up to 40 ppm", "up to 7.5 ppm"], "nenkategoria": ["Laser Printer", "Inkjet Printer", "Wireless Printer", "Scanner", "All-in-one Printer"], "printer_type": ["Inkjet", "Laser"], "color_capability": ["Black", "Black and White", "CMYK", "Color"], "standart_functions": ["Print, Copy, Scan &amp; Fax", "All in one", "Copy", "Copy, Print, Scan", "Print", "Scan"], "filtro_sipas_mark??s": ["UTAX", "Brother", "Canon", "Epson", "HP", "Xerox"]}	209
210	{"nenkategoria": ["Karikues", "Karikues Wireless", "Karikues p??r makin??", "Kabuj te ndryshem"], "filtro_sipas_mark??s": ["Joyroom", "Moxom", "Hoco", "Konfulon", "Apple", "Baseus", "LDNIO", "Remax", "Samsung", "SanDisk", "Sony", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black", "Gold", "Pink", "Red", "Silver", "White"]}	210
211	{"ram": ["512MB"], "memoria": ["256MB"], "nenkategoria": ["Router Wi-Fi", "Switch", "Extender", "Repeater", "Access Point", "Adapter", "Antenna"], "filtro_sipas_mark??s": ["Commando", "Pixlink", "Mercusys", "Netis", "TP-Link", "Xiaomi"]}	211
212	{"nenkategoria": ["Antivirus"], "filtro_sipas_mark??s": ["Kaspersky"]}	212
213	{"ram": ["8GB"], "memoria": ["250GB", "120GB", "480GB", "500GB", "128GB", "256GB", "512GB", "1TB", "2TB", "4TB"], "read_speed": ["1050 MB/s", "2000 MB/s", "450MB/s", "500 MBps", "530 MB/s", "540 MB/s", "545MB/s", "550 MB/s", "555MB/s", "480MB/s", "560MB/s", "130MB/s"], "write_speed": ["1000 MB/s", "2000 MB/s", "420MB/s", "440 MB/s", "450 MBps", "500MB/s", "515 MB/s", "530 MB/s", "80MB/s", "415MB/s", "480MB/s"], "nenkategoria": ["UPS", "SSD", "HDD i jashtem", "Monitor", "Mouse", "Tastier"], "refresh_rate": ["60Hz", "75Hz", "144Hz", "165Hz", "240Hz"], "madh??sia_ekranit": ["23.8\\"", "24\\"", "25\\"", "27\\"", "31.5\\"", "32\\"", "49\\""], "rezolucioni_ekranit": ["5120 x 1440 pixels"], "filtro_sipas_mark??s": ["Havit", "INNOVATION IT", "Logitech", "Panther", "WD", "Crucial", "Freecom", "Gigabyte", "Intel", "Kodak", "A4Tech", "Acer", "Apple", "Asus", "Baseus", "Canon", "Dell", "Epson", "Gembird", "Genius", "HP", "Kingston", "Lenovo", "Maxtor", "Remax", "Samsung", "SanDisk", "Toshiba", "Trust", "Verbatim", "Xiaomi"], "filtro_sipas_ngjyrave": ["Berry", "Chocolate", "Dark Blue", "Dark Side of the Moon", "Grey", "Iron Grey", "Lunar Light", "Rosy Brown", "Black", "Blue", "Forest Green", "Gold", "Gray", "Green", "Pink", "Red", "Silver", "White"], "memoria_hdd__asgn__ssd": ["240GB", "480GB", "960GB"]}	213
214	{"memoria": ["250GB", "400GB", "120GB", "500GB", "16GB", "32GB", "64GB", "128GB", "256GB", "512GB", "1TB", "2TB", "4TB"], "read_speed": ["1050 MB/s", "20 MB/s", "2000 MB/s", "420 MB/s", "500 MBps", "540 MB/s", "550 MB/s", "10MB/s", "160MB/s", "170MB/s", "480MB/s", "48MB/s", "560MB/s", "80MB/s", "90MB/s", "98MB/s", "100MB/s", "130MB/s", "150MB/s", "300MB/s"], "aksesor_per": ["Kompjuter", "Tablet", "Telefon"], "write_speed": ["1000 MB/s", "150 MB/s", "2000 MB/s", "260 MB/s", "385 MB/s", "450 MBps", "500MB/s", "515 MB/s", "530 MB/s", "10MB/s", "140MB/s", "20MB/s", "480MB/s", "4MB/s", "60MB/s", "90MB/s"], "nenkategoria": ["Ftohes per laptop", "Selfie Stick", "Vegla Pune", "Bateri", "Elektrik", "Kart Memorie", "Kover", "Kufje", "Power Bank"], "madh??sia_ekranit": ["11\\"", "12.9\\"", "13.3\\"", "14\\"", "15.6\\"", "15\\"", "16\\"", "17.3\\"", "7\\""], "filtro_sipas_mark??s": ["AKG", "AQL", "Cellularline", "Emtec", "Havit", "Honor", "HYCOO", "Imilad", "INNOVATION IT", "iPEGA", "Logitech", "Maxell", "Microsoft", "Moxom", "Oculus", "Onikuma", "Ploos", "Realme", "Tigernu", "Bose", "Cross Gear", "Fiesta", "Haylou", "Jabra", "Kodak", "Monster", "Platinet", "Proda", "Sbox", "WK", "A4Tech", "Apple", "Asus", "Baseus", "Beats", "Dell", "Gembird", "Genius", "Google", "Hitachi-LG", "HP", "JBL", "Kingston", "LDNIO", "Lenovo", "Omega", "Panasonic", "Philips", "Picun", "QCY", "Remax", "Samsung", "SanDisk", "Sony", "TP-Link", "Trust", "TWS", "Tysso", "Uiisii", "Verbatim", "Xiaomi"], "filtro_sipas_ngjyrave": ["Dark Blue", "Dark Grey", "Grey", "Matte Black", "Meteor Silver", "Mint Green", "Mystic Black", "Mystic Bronze", "Phantom Black", "Phantom Silver", "Purple", "Starry Sky", "Teal", "Turquoise", "Yellow", "Black", "Blue", "Clear Yellow", "Cobalt Blue", "Coral", "Dusty Pink", "Fiesta Red", "Gold", "Gray", "Green", "Ice Blue", "Midnight Black", "Orange", "Pink", "Red", "Rose Gold", "Rose Red", "Silver", "Space Gray", "Stone Gray", "White"], "filtro_sipas_kapacitetit": ["10000 mAh", "1000mAh", "10050 mAh", "1050mAh", "1150mAh", "1300mAh", "20000 mAh", "22mAh", "2600mAh", "2800mAh", "30000 mAh", "3300 mAh", "4200 mAh", "450mAh", "60mA", "750mAh"]}	214
215	{"nenkategoria": ["Leter", "Bojra Printeri", "Tonera Printeri"], "color_capability": ["Black", "Cyan", "Magenta", "Yellow"], "filtro_sipas_mark??s": ["Deluxe", "Double A", "HP", "Omega", "Samsung", "Xiaomi"]}	215
216	{"ram": ["8MB", "512MB", "1GB", "2GB", "3GB", "4GB", "6GB", "8GB", "12GB", "4MB"], "bateria": ["1,100mAh", "1,150mAh", "2,815mAh", "3687mAh", "4,180 mAh", "4,200mAh", "4,400 mAh", "4,700mAh", "4520mAh", "4800mAh", "5,160 mAh", "5,180mAh", "5,580mAh", "7,000mAh", "1,020 mAh", "1,200 mAh", "1,450 mAh", "1,500 mAh", "3,000 mAh", "3,046 mAh", "3,110 mAh", "3,300 mAh", "3,400 mAh", "3,500 mAh", "3,969 mAh", "4,000 mAh", "4,350 mAh", "4,500 mAh", "4,650 mAh", "5,000 mAh", "5,020mAh", "5000 mAh", "6,000 mAh", "800 mAh"], "memoria": ["16MB", "4MB", "4GB", "16GB", "32GB", "64GB", "128GB", "256GB", "512GB"], "nenkategoria": ["Smartphones", "Celular me butona"], "refresh_rate": ["120Hz", "90Hz"], "tipi_ekranit": ["Dynamic AMOLED 2X, 120Hz, HDR10+", "Foldable Dynamic AMOLED 2X, 120Hz, HDR10+", "OGS", "PLS IPS", "Super AMOLED Plus", "AMOLED", "Dynamic AMOLED", "Dynamic AMOLED 2X", "IPS LCD", "Liquid Retina IPS LCD", "PLS TFT", "Super AMOLED", "Super Retina XDR OLED", "TFT"], "kamera_kryesore": ["Quad (108MP, 10MP, 10MP, 12MP)", "Quad (12MP, 12MP, 12MP, TOF 3D LiDAR)", "Quad (13MP, 8MP, 5MP, 2MP)", "Quad (16MP, 8MP, 2MP, 2MP)", "Quad (48MP, 5MP, 2MP, 2MP)", "Quad (48MP, 8MP, 5MP, 5MP)", "Quad (64MP, 13MP, 2MP, 2MP)", "Quad (64MP, 5MP, 13MP, 2MP)", "Quad (64MP, 8MP, 12MP, 5MP)", "Quad (64MP, 8MP, 5MP, 5MP)", "Triple (108MP, 12MP, 12MP)", "Triple (12MP, 12MP, 12MP)", "Triple (12MP, 64MP, 12MP)", "Triple (12MP, 8MP. 12MP)", "Triple (13MP, 2MP, 2MP)", "Triple (13MP, 5MP, 2MP)", "Triple (16MP, 2MP, 2MP)", "Triple (16MP, 8MP, 0.3MP)", "Triple (48MP, 2MP, 2MP)", "Dual (12MP, 12MP )", "Dual (12MP, 2MP )", "Dual (13MP, 2MP )", "Dual (13MP, 5MP )", "Dual (8MP, 5MP)", "Quad (108MP, 48MP, 12MP, 0.3MP)", "Quad (12MP, 64MP, 12MP, 0.3MP)", "Quad (13MP, 2MP, 0.3MP, 0.3MP)", "Quad (48MP, 12MP, 5MP, 5MP )", "Quad (48MP, 8MP, 2MP, 2MP)", "Quad (48MP, 8MP, 5MP, 2MP)", "Quad (64MP, 12MP, 5MP, 5MP)", "Single (0.3MP)", "Single (12MP)", "Single (13MP)", "Single (2MP)", "Single (3.15MP)", "Single (8MP)", "Single (VGA)", "Triple (12MP, 12MP, 12MP )", "Triple (12MP, 12MP, 16MP )", "Triple (13MP, 8MP, 5MP )", "Triple (48MP, 8MP, 5MP )"], "viti_i_prodhimit": ["2021", "2012", "2020", "2013", "2015", "2017", "2018", "2019"], "kamera_e_perparme": ["Single (40MP)", "Dual (10MP)", "Dual (12MP, SL 3D)", "Dual (40MP)", "Single (10MP)", "Single (13MP)", "Single (16MP)", "Single (20MP)", "Single (25MP)", "Single (32MP)", "Single (5MP)", "Single (8MP)"], "madh??sia_ekranit": ["1.77\\"", "2.0\\"", "5.3\\"", "6.43\\"", "6.52\\"", "6.53\\"", "6.6\\"", "7.6\\"", "1.52\\"", "2.4\\"", "2.8\\"", "5.7\\"", "6.67\\"", "6.9\\"", "1.8\\"", "5.5\\"", "5.8\\"", "6.1\\"", "6.2\\"", "6.3\\"", "6.4\\"", "6.5\\"", "6.7\\"", "6.8\\""], "vendi_i_karikimit": ["Micro USB", "Power bank/Reverse wireless charging", "Qi wireless charging", "USB Power Delivery 2.0", "USB Power Delivery 3.0", "USB Type C"], "rezolucioni_ekranit": ["1170 x 2532 pixels", "128 x 160 pixels", "1284 x 2778 pixels", "1440 x 3088 pixels", "1440x720 pixels", "1768 x 2208 pixels", "720 x 1600 pixels", "1080 x 2636 pixels", "128 x 128 pixels", "1440 x 3200 pixels", "240 x 320 pixels", "320 x 240 pixels", "480 x 960 pixels", "120 x 160 pixels", "600 x 1280 pixels", "720 x 1480 pixels", "1080 x 2280 pixels", "1080 x 2340 pixels", "1080 x 2400 pixels", "1125 x 2436 pixels", "1242 x 2688 pixels", "720 x 1520 pixels", "720 x 1560 pixels", "828 x 1792 pixels"], "filtro_sipas_mark??s": ["Motorola", "Apple", "Blackberry", "Blackview", "Doogee", "Nokia", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Aura Black", "Aura Pink", "Aura Red", "Aura White", "Aurora Blue", "Carbon Black", "Carbon Silver", "Charcoal Gray", "Cloud Navy", "Cloud Red", "Cloud White", "Fantasy Forest", "Graphite", "Grey", "Interstellar Black", "Lake Green", "Matte Black", "Midnight Grey", "Mint Green", "Mystic Black", "Mystic Bronze", "Nature Green", "Onyx Gray", "Pacific Blue", "Phantom Black", "Phantom Silver", "Phantom Violet", "Pink Pastel", "Purple", "Sea Blue", "Shadow Grey", "Sky Blue", "Sky White", "Space Blue", "Sporty Orange", "Sunrise Flare", "Sunset Red", "Aura Glow", "Black", "Blue", "Clear Purple", "Clear Yellow", "Cloud Blue", "Cobalt Blue", "Coral", "Dusty Pink", "Gold", "Gray", "Green", "Lavender Purple", "Lilac Purple", "Midnight Black", "Midnight Green", "Orange", "Prism Crush Violet", "Red", "Silver", "Space Gray", "White"]}	216
236	{"nenkategoria": ["Electric Scooters"], "filtro_sipas_mark??s": ["Segway", "Xiaomi"], "filtro_sipas_ngjyrave": ["Dark Grey", "Black", "Gray", "White"], "filtro_sipas_kapacitetit": ["10,000mAh"]}	237
237	{"nenkategoria": [], "kapaciteti_btu": ["12000 BTU", "18000 BTU", "24000 BTU"], "filtro_sipas_mark??s": ["Arielli", "AUX", "LG", "Samsung", "Skyworth"], "klas_energjie_ftohje": ["A++"], "klas_energjie_ngrohje": ["A", "A+", "A+++"]}	238
238	{"nenkategoria": ["Cleaning Devices", "LED Lamps", "Mi Home Sets", "Mi Smart Plugs", "Personal Care"], "filtro_sipas_mark??s": ["DreamLight", "Berrcom", "Hoco", "Baseus", "Lenovo", "Xiaomi"], "filtro_sipas_ngjyrave": ["Grey", "Black", "Blue", "White"]}	239
218	{"memoria": ["250GB", "400GB", "120GB", "500GB", "16GB", "32GB", "64GB", "128GB", "256GB", "512GB", "1TB", "2TB", "4TB"], "read_speed": ["1050 MB/s", "20 MB/s", "2000 MB/s", "420 MB/s", "500 MBps", "540 MB/s", "550 MB/s", "10MB/s", "160MB/s", "170MB/s", "480MB/s", "48MB/s", "560MB/s", "80MB/s", "90MB/s", "98MB/s", "100MB/s", "130MB/s", "150MB/s", "300MB/s"], "aksesor_per": ["Kompjuter", "Tablet", "Telefon"], "write_speed": ["1000 MB/s", "150 MB/s", "2000 MB/s", "260 MB/s", "385 MB/s", "450 MBps", "500MB/s", "515 MB/s", "530 MB/s", "10MB/s", "140MB/s", "20MB/s", "480MB/s", "4MB/s", "60MB/s", "90MB/s"], "nenkategoria": ["Ftohes per laptop", "Selfie Stick", "Vegla Pune", "Bateri", "Elektrik", "Kart Memorie", "Kover", "Kufje", "Power Bank"], "madh??sia_ekranit": ["11\\"", "12.9\\"", "13.3\\"", "14\\"", "15.6\\"", "15\\"", "16\\"", "17.3\\"", "7\\""], "filtro_sipas_mark??s": ["AKG", "AQL", "Cellularline", "Emtec", "Havit", "Honor", "HYCOO", "Imilad", "INNOVATION IT", "iPEGA", "Logitech", "Maxell", "Microsoft", "Moxom", "Oculus", "Onikuma", "Ploos", "Realme", "Tigernu", "Bose", "Cross Gear", "Fiesta", "Haylou", "Jabra", "Kodak", "Monster", "Platinet", "Proda", "Sbox", "WK", "A4Tech", "Apple", "Asus", "Baseus", "Beats", "Dell", "Gembird", "Genius", "Google", "Hitachi-LG", "HP", "JBL", "Kingston", "LDNIO", "Lenovo", "Omega", "Panasonic", "Philips", "Picun", "QCY", "Remax", "Samsung", "SanDisk", "Sony", "TP-Link", "Trust", "TWS", "Tysso", "Uiisii", "Verbatim", "Xiaomi"], "filtro_sipas_ngjyrave": ["Dark Blue", "Dark Grey", "Grey", "Matte Black", "Meteor Silver", "Mint Green", "Mystic Black", "Mystic Bronze", "Phantom Black", "Phantom Silver", "Purple", "Starry Sky", "Teal", "Turquoise", "Yellow", "Black", "Blue", "Clear Yellow", "Cobalt Blue", "Coral", "Dusty Pink", "Fiesta Red", "Gold", "Gray", "Green", "Ice Blue", "Midnight Black", "Orange", "Pink", "Red", "Rose Gold", "Rose Red", "Silver", "Space Gray", "Stone Gray", "White"], "filtro_sipas_kapacitetit": ["10000 mAh", "1000mAh", "10050 mAh", "1050mAh", "1150mAh", "1300mAh", "20000 mAh", "22mAh", "2600mAh", "2800mAh", "30000 mAh", "3300 mAh", "4200 mAh", "450mAh", "60mA", "750mAh"]}	218
219	{"ram": ["1GB"], "memoria": ["32GB"], "nenkategoria": ["Apple Watches", "Samsung Galaxy Watches", "Xiaomi Mi Band", "Amazfit Series", "Mi Ciga Watches", "Huawei Watches"], "filtro_sipas_mark??s": ["Amazfit", "G-TAB", "Honor", "Imilad", "Modio", "Haylou", "Apple", "Blackview", "Doogee", "Huawei", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black/Red", "Black/Yellow", "Bronze", "Brown", "Cloud Silver", "Dark Blue", "Dark Green", "Dark Grey", "Deep Green/White", "Grey", "Light Green/White", "Matte Black", "Mystic Black", "Mystic Silver", "Nature Green", "Orange/Black", "Pink Pastel", "Pink/White", "Purple", "Sky Blue", "Yellow", "Yellow/Black", "Aqua Black", "Black", "Blue", "Clear Purple", "Cobalt Blue", "Cyan", "Gold", "Green", "Lilac Purple", "Lime Green", "Mustard Yellow", "Orange", "Pink", "Red", "Rose Gold", "Silver", "Space Gray", "White"]}	219
220	{"aksesor_per": ["Kompjuter", "Tablet", "Telefon"], "nenkategoria": ["Over-ear Headphones", "On-ear Headphones", "In-Ear Headphones", "Sports &amp; Fitness Headphones", "Noise Canceling Headphones", "Premium Headphones", "Mini Jack Headphones", "Gaming Headphones"], "filtro_sipas_mark??s": ["AKG", "AQL", "Cellularline", "Havit", "Honor", "HYCOO", "iPEGA", "Logitech", "Maxell", "Moxom", "Onikuma", "Ploos", "Realme", "Bose", "Jabra", "Monster", "Proda", "WK", "A4Tech", "Apple", "Baseus", "Beats", "Google", "JBL", "Lenovo", "Philips", "Picun", "QCY", "Remax", "Samsung", "Sony", "Trust", "TWS", "Uiisii", "Xiaomi"], "filtro_sipas_ngjyrave": ["Dark Blue", "Grey", "Matte Black", "Meteor Silver", "Mint Green", "Mystic Black", "Mystic Bronze", "Phantom Black", "Phantom Silver", "Starry Sky", "Teal", "Turquoise", "Yellow", "Black", "Blue", "Coral", "Dusty Pink", "Gold", "Gray", "Green", "Midnight Black", "Pink", "Red", "Rose Gold", "Silver", "Space Gray", "Stone Gray", "White"], "filtro_sipas_kapacitetit": ["22mAh", "60mA"]}	220
221	{"nenkategoria": ["LED", "QLED", "OLED"], "refresh_rate": ["100Hz"], "madh??sia_ekranit": ["70\\"", "82\\"", "32\\"", "42\\"", "43\\"", "49\\"", "50\\"", "55\\"", "60\\"", "65\\"", "75\\""], "rezolucioni_ekranit": ["3840 ?? 2160 pixels", "7680 x 4320 pixels"], "filtro_sipas_mark??s": ["LG", "Lobod", "Philips", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Carbon Silver", "Black", "Silver", "Titanium Gold"]}	222
222	{"nenkategoria": ["Projektor"], "filtro_sipas_mark??s": ["Acer", "Canon", "Epson"]}	223
223	{"nenkategoria": ["Home Cinema", "Soundbars", "Portable Bluetooth Speakers", "Party Speakers", "Home Speakers"], "filtro_sipas_mark??s": ["Amazon", "Bose", "Bosnda", "Monster", "Peterhot", "Apple", "Baseus", "Beats", "Google", "Harman Kardon", "JBL", "Marshall", "Remax", "Samsung", "Seeknature", "Xiaomi"], "filtro_sipas_ngjyrave": ["Chalk White", "Champagne", "Charcoal Gray", "Copper Brown", "Glacier White", "Magenta", "Midnight Blue", "Purple", "Twilight Blue", "Yellow", "Black", "Blue", "Cinnamon", "Clear Yellow", "Cyan", "Desert Sand", "Dusty Pink", "Fiesta Red", "Forest Green", "Gray", "Green", "Midnight Black", "Mustard Yellow", "Ocean Blue", "Orange", "Pink", "Red", "River Teal", "Silver", "Space Gray", "Squad", "Steel White", "Stone Gray", "White"]}	224
224	{"ram": ["1GB", "2GB"], "memoria": ["8GB"], "nenkategoria": ["Dekoder DVB T2S2", "Chromecast", "Android Box"], "filtro_sipas_mark??s": ["Amazon", "Mirascreen", "Romsat", "Xiaomi"]}	225
225	{"nenkategoria": ["Mbajtese TV Muri", "Mbrojtese Tensioni"], "filtro_sipas_mark??s": ["Schneider Electric", "Baseus", "Gembird", "Lobod", "LogiLink", "Omega", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black", "White"]}	226
226	{"nenkategoria": ["Mavic", "Osmo", "Ronin"], "filtro_sipas_mark??s": ["DJI"]}	227
227	{"nenkategoria": ["Pocket Camera"], "filtro_sipas_mark??s": ["FeiyuTech"]}	228
228	{"nenkategoria": ["Stabilizer for Pro Cameras", "Stabilizer for Smartphones"], "filtro_sipas_mark??s": ["Zhiyun"]}	229
229	{"nenkategoria": ["Mi Smartphone Gimbal"], "filtro_sipas_mark??s": ["Apai Genie", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black", "White"]}	230
230	{"nenkategoria": ["Web Cameras", "Action Cameras", "Film Cameras"], "filtro_sipas_mark??s": ["Insta360", "Logitech", "Fujifilm", "GoPro", "Sony", "Xiaomi"], "filtro_sipas_ngjyrave": ["Blush Gold", "Brown", "Chalk White", "Charcoal Gray", "Glacier Blue", "Ice White", "Sky Blue", "Terracotta Orange", "Black", "Blush Rose", "Clear Purple", "Clear Yellow", "Dark Denim", "Dusty Pink", "Flamingo Pink", "Gray", "Ice Blue", "Lilac Purple", "Smokey White", "White"]}	231
231	{"aksesor_per": ["Dron"], "nenkategoria": ["Aksesore per Dron", "Aksesore per Kamera"], "filtro_sipas_mark??s": ["Puluz", "DJI", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black"]}	232
232	{"memoria": ["825GB"], "nenkategoria": ["Handheld Console", "PlayStation"], "filtro_sipas_mark??s": ["Sony"], "filtro_sipas_ngjyrave": ["Blue", "Orange", "Red", "White"]}	233
233	{"nenkategoria": ["Video Games", "Smart Games", "Spinners"], "filtro_sipas_mark??s": ["EA Sports", "PTW", "Sony"], "filtro_sipas_ngjyrave": ["Blue", "Red"]}	234
234	{"nenkategoria": ["DualShocks", "Mobile Controllers"], "filtro_sipas_mark??s": ["Baseus", "Sony", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black", "Forest Green", "Green", "White"]}	235
235	{"nenkategoria": ["Hoverboard"], "filtro_sipas_ngjyrave": ["Pink Pastel", "Black", "Blue", "Clear Yellow", "Fiesta Red", "Forest Green", "Orange", "Pink", "Red", "White"]}	236
281	{"filtro_sipas_mases": ["M", "XL", "XXXL", "XXL", "L", "S", "XS", "XS-S", "L/32", "S/32", "XL/30", "M-L", "3XL", "3-4", "4-5", "5-6", "6-7", "7-8", "9-10", "11-12", "24", "24/30", "25", "25/32", "25/30", "26", "26/32", "26/30", "27", "27/32", "27/30", "28", "28/32", "28/30", "29", "29/32", "29/30", "30", "30/32", "30/30", "31", "31/32", "31/30", "32", "32/32", "32/30", "33", "33/30", "34", "34/32", "34/30", "34L", "36", "36L", "38", "38L", "40", "40L", "40/34", "42", "42L", "44", "44L", "46", "48"], "filtro_sipas_mark??s": ["Koton", "LTB", "Penti"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(128, 0, 128)", "rgb(250, 74, 10)", "rgb(255, 192, 203)", "rgb(128, 0, 32)"]}	288
282	{"filtro_sipas_mases": ["M", "XL", "XXL", "L", "S", "STD", "XS", "S/M", "M/L", "L/XL", "XS-S", "T", "L-XL", "S-M", "M-L", "1/2", "3/4", "34", "36", "38", "40", "70B", "70C", "70A", "75B", "75C", "75D", "75A", "80B", "80C", "80A", "80D", "85B", "85C", "85D", "90C", "90E", "90D", "90B", "95D", "95C"], "filtro_sipas_mark??s": ["Flo", "Koton", "Penti"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(128, 0, 128)", "rgb(244, 224, 205)", "rgb(250, 74, 10)", "rgb(255, 192, 203)", "rgb(128, 0, 32)"]}	289
283	{"filtro_sipas_mases": ["31", "32", "33", "34", "35", "35-36", "36", "37", "37-38", "38", "39", "39-40", "40", "41", "42", "43", "44", "45"], "filtro_sipas_mark??s": ["Stina", "Flo", "Elle", "Koton", "Penti"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(128, 0, 128)", "rgb(244, 224, 205)", "rgb(250, 74, 10)", "rgb(255, 192, 203)", "rgb(128, 0, 32)"]}	290
284	{"filtro_sipas_mases": ["M", "L", "S", "STD", "T", "80", "85", "90", "95", "100", "105"], "filtro_sipas_mark??s": ["Flo", "Elle", "Koton", "Penti"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(250, 74, 10)", "rgb(255, 192, 203)"]}	291
285	{"filtro_sipas_mases": ["M", "XL", "L", "S", "STD", "XS", "XS-S", "L-XL", "S-M", "M-L", "34", "36", "38", "40", "42", "44", "46", "48", "50", "75C", "80B", "80C", "80D", "85B", "85C", "85D", "90C", "90D"], "filtro_sipas_mark??s": ["Koton", "Penti"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(128, 0, 128)", "rgb(250, 74, 10)", "rgb(255, 192, 203)", "rgb(128, 0, 32)"]}	292
286	{"filtro_sipas_mases": ["M", "XL", "XXXL", "XXL", "L", "S", "STD", "XS", "3XL", "28/32", "28/30", "28/28", "29", "29/32", "29/30", "29/28", "30", "30/32", "30/33", "30/34", "30/30", "30/28", "31", "31/32", "31/34", "31-34", "31/30", "31/28", "32", "32/32", "32/34", "32/30", "32/28", "33", "33/32", "33/34", "33-32", "33/30", "33/28", "34", "34/32", "34/34", "34/30", "34/28", "36", "36/32", "36/34", "36/30", "38", "38/32", "38/34", "38/30", "40", "40/32", "40/30", "42", "42/32", "42/34", "42/30", "44", "46", "48", "50", "52", "54", "56"], "filtro_sipas_mark??s": ["Koton", "LTB"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(128, 0, 128)", "rgb(250, 74, 10)", "rgb(255, 192, 203)", "rgb(128, 0, 32)"]}	293
287	{"filtro_sipas_mases": ["M", "XL", "XXL", "L", "S", "STD"], "filtro_sipas_mark??s": ["Flo", "Koton", "Penti"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(128, 0, 32)"]}	294
288	{"filtro_sipas_mases": ["25", "26", "27", "28", "29", "30", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"], "filtro_sipas_mark??s": ["Flo", "Elle", "Koton"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(128, 0, 32)"]}	295
289	{"filtro_sipas_mases": ["M", "L", "S", "STD", "T", "90", "100", "110", "115", "120", "130"], "filtro_sipas_mark??s": ["Flo", "Elle", "Koton"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)"]}	296
291	{"filtro_sipas_mases": ["STD", "1", "2", "2-4", "2-3", "2/4", "3", "3-4", "3-6", "4", "4-5", "5-8", "5-6", "5", "5/8", "6-7", "6-9", "7-8", "9-12", "9-10", "9/12", "11-12", "12-18", "13-14", "14-15", "18-24", "19", "20", "20-22", "21", "22", "23", "23-26", "24", "24-36", "25", "26", "27", "27-30", "28", "29", "30", "31", "31-34", "32", "33", "34", "35", "36", "37", "38", "39", "40", "65A", "65B", "70B", "70A", "75A"], "filtro_sipas_mark??s": ["Flo", "Koton", "Penti"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(128, 0, 128)", "rgb(250, 74, 10)", "rgb(255, 192, 203)", "rgb(128, 0, 32)"]}	298
292	{"filtro_sipas_mases": ["STD", "0-3", "1", "2", "2-4", "2-3", "2/4", "3", "3-4", "3-6", "4-5", "5-8", "5-6", "5", "5/8", "6-7", "6-9", "7-8", "7", "9-12", "9-10", "9", "9/12", "11-12", "12-18", "13-14", "18", "18-24", "19", "20", "21", "22", "23", "23-26", "24", "24-36", "25", "26", "27", "27-30", "28", "29", "30", "31", "31-34", "32", "33", "34", "35", "36", "37", "38", "39", "40"], "filtro_sipas_mark??s": ["Flo", "Koton", "Penti"], "filtro_sipas_ngjy??s": ["rgb(255, 216, 174)", "rgb(43, 79, 129)", "rgb(255, 255, 255)", "rgb(255, 0, 0)", "rgb(255, 255, 0)", "rgb(0, 0, 0)", "rgb(128, 128, 128)", "rgb(46, 171, 46)", "rgb(75, 54, 33)", "rgb(250, 74, 10)", "rgb(255, 192, 203)", "rgb(128, 0, 32)"]}	299
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.products (id, creation_time, details, owner, spot, category_id) FROM stdin;
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eblej_director
--

SELECT pg_catalog.setval('public.categories_id_seq', 299, true);


--
-- Name: category_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eblej_director
--

SELECT pg_catalog.setval('public.category_links_id_seq', 299, true);


--
-- Name: filters_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eblej_director
--

SELECT pg_catalog.setval('public.filters_table_id_seq', 292, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eblej_director
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: category_links category_links_pkey; Type: CONSTRAINT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.category_links
    ADD CONSTRAINT category_links_pkey PRIMARY KEY (id);


--
-- Name: filters_table filters_table_pkey; Type: CONSTRAINT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.filters_table
    ADD CONSTRAINT filters_table_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

