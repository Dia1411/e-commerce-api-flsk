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
    creation_time integer NOT NULL,
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
1	Sezonale	Dekorime për Krishtlindje
2	Sezonale	Artikuj Plazhi
3	Sezonale	Embëlsira dhe biskota
4	Banjo	Pajisje Sanitare
5	Banjo	Aksesorë bashkues dhe kaseta
6	Banjo	Mobilje për banjo
7	Banjo	Aksesorë për banjo
8	Banjo	Produkte për Njerëz me Aftësi të Kufizuar
9	Banjo	Sauna
10	Banjo	Përkujdesje Personale
11	Banjo	Tapetë për tualet
12	Banjo	Higjenë
13	Banjo	Pastrim
14	Banjo	Pastrim Profesional
15	Banjo	Higjenë profesional
16	Banjo	Higjenë
17	Materiale Ndërtimi	Tuba dhe rakorderi
18	Materiale Ndërtimi	Aksesorë metali
19	Materiale Ndërtimi	Vegla Ndërtimi
20	Materiale Ndërtimi	Silikon
22	Materiale Ndërtimi	Shkarkimi i ujrave të përdorura
23	Materiale Ndërtimi	Sistemi  i thatë
24	Materiale Ndërtimi	Izolimi termo-akustik
25	Materiale Ndërtimi	Inerte dhe aditive
26	Materiale Ndërtimi	Hidroizolim dhe mbrojtje
27	Materiale Ndërtimi	Elemente ndërtimtarie bazë
28	Materiale Ndërtimi	Druri
29	Materiale Ndërtimi	Streha dhe mbulesa
30	Materiale Ndërtimi	Shkarkime të përgjithshme
31	Materiale Ndërtimi	Sisteme ajrimi dhe oxhaqesh
32	Materiale Ndërtimi	Dyshemetë e jashtme
33	Materiale Ndërtimi	Hekur dhe profile
34	Materiale Ndërtimi	Depozita
35	Materiale Ndërtimi	Sinjalistika
36	Materiale Ndërtimi	Skela
37	Ngrohje - Ftohje	Elektrike
38	Ngrohje - Ftohje	Karburant
39	Ngrohje - Ftohje	Dru dhe Pelet
40	Ngrohje - Ftohje	Alternative
41	Mobilje	Ambjent Dite
42	Mobilje	Ambjent Nate
43	Mobilje	Ambient studimi dhe zyrë
44	Mobilje	Dekorime
45	Mobilje	Magazinim dhe organizim
46	Mobilje	Produkte për bebe
47	Mobilje	Ambjent i jashtëm
48	Mobilje	Ambient Kuzhine
49	Shtrimi	Parket
50	Shtrimi	Pllaka
51	Shtrimi	Mokete dhe linoleume
52	Elektrike	Pajisje për Instalime Elektrike
53	Elektrike	Sisteme Sigurie
54	Elektrike	Kabëll dhe Aksesorë
55	Elektrike	Pajisje Elektrike
56	Elektrike	Elektrike të Tjera
57	Elektrike	Pajisje Industriale dhe Profesionale
58	Ndriçimi	Ndriçues të brendshem
59	Ndriçimi	Ndricues Kopshti
60	Ndriçimi	Llamba
61	Kuzhina	Lavapjata
62	Kuzhina	Enë kuzhine
63	Kuzhina	Aksesorë për kuzhina
64	Kuzhina	Pastrues
65	Kuzhina	Pastrim Profesional
66	Kuzhina	Uniforma Pune
67	Kuzhina	Higjenë
68	Kuzhina	Higjenë Profesional
69	Kuzhina	Bisktota -caj
70	Druri	Binare dhe Ristela
71	Druri	Lëndë Zdrukthtarie
72	Druri	Shkallë
73	Druri	Brava/Doreza dhe aksesorë
74	Druri	Dritare
75	Druri	Dyer të brendshme
76	Druri	Dyer të jashtme
77	Kopshtari	Dekorime
78	Kopshtari	Arredim i jashtëm
79	Kopshtari	Lule dhe bimë
80	Kopshtari	Vegla kopshti elektrike
81	Kopshtari	Vegla kopshti me bateri
82	Kopshtari	Vegla kopshti me karburant
83	Kopshtari	Vegla kopshti manuale
84	Kopshtari	Sisteme dhe pajisje për vaditje
85	Kopshtari	Barbekju
86	Kopshtari	Pajisje kantine
87	Kopshtari	Aksesorë
88	Kopshtari	Insekticide
89	Kopshtari	Tuba & Rakorderi
90	Kopshtari	Aksesorë për vegla kopshti
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
106	Bojra	Vegla ndërtimi
107	Art	Bojera per Piktor
108	Art	Penela
109	Art	Korniza Fotosh dhe  Pikturash
110	Art	Piktura
111	Art	Të Tjera
112	Hidraulike	Sisteme Zjarrfikse
113	Hidraulike	Profesionale/Industriale
114	Hidraulike	Tuba dhe Rakorderi
115	Vegla dhe Aksesorë	Hardware
116	Vegla dhe Aksesorë	Vegla Ndërtimi
117	Vegla dhe Aksesorë	Veshje Pune Sigurie
118	Vegla dhe Aksesorë	Vegla Elektrike
119	Vegla dhe Aksesorë	Vegla Elektrike me Bateri
120	Vegla dhe Aksesorë	Aksesorë për Vegla Elektrike
121	Vegla dhe Aksesorë	Vegla Mekanike
122	Vegla dhe Aksesorë	Vegla Matëse
123	Vegla dhe Aksesorë	Vegla makine dhe Aksesore
124	Vegla dhe Aksesorë	Produkte sigurie
125	Zyrë dhe Shkollë	Materiale Arkivimi
126	Zyrë dhe Shkollë	Instrumenta shkrimi
127	Zyrë dhe Shkollë	Organizues tavoline
128	Zyrë dhe Shkollë	Pajisje lidhëse
129	Zyrë dhe Shkollë	Kartoleri dhe Letër
130	Zyrë dhe Shkollë	Krijimtari për fëmijë
131	Zyrë dhe Shkollë	Tempera, bojëra dhe lapostila
132	Zyrë dhe Shkollë	Memorje e jashtme
133	Zyrë dhe Shkollë	Të Tjera
134	Zyrë dhe Shkollë	Aksesorë zyre
135	Zyrë dhe Shkollë	Tabela
136	Zyrë dhe Shkollë	Makina llogaritëse
137	Zyrë dhe Shkollë	Audio dhe Video
138	Zyrë dhe Shkollë	IT
139	Zyrë dhe Shkollë	Kabëll
140	Zyrë dhe Shkollë	Çanta
141	Zyrë dhe Shkollë	Pastrues
142	Aksesorë makinash	Mirëmbajtja
143	Aksesorë makinash	Solucione dhe aditivë
144	Aksesorë makinash	Trajtues sipërfaqesh dhe lustrues
145	Aksesorë makinash	Aksesorë
146	Aksesorë makinash	Llamba Makine
147	Aksesorë makinash	Aksesore udhetimi te montueshem
148	Sport dhe hobi	Mjete peshkimi
149	Sport dhe hobi	Kamping
150	Sport dhe hobi	Biçikleta
151	Sport dhe hobi	Palestra
152	Sport dhe hobi	Artikuj Sportiv
153	Sport dhe hobi	Valixhe dhe çanta udhëtimi
154	Sport dhe hobi	Kamping
155	Elektroshtëpiake	Frigoriferë
156	Elektroshtëpiake	Lavatriçe & Tharëse
157	Elektroshtëpiake	Pajisje Gatimi
158	Elektroshtëpiake	Lavastovilie
159	Elektroshtëpiake	Elektroshtëpiake të vogla
160	Elektroshtëpiake	Fshesa me vakum
161	Elektroshtëpiake	TV dhe Audio
162	Përkujdesje për kafshët	Ushqimi
163	Përkujdesje për kafshët	Higjena dhe kozmetika
164	Përkujdesje për kafshët	Shëtitje dhe argëtim
165	Përkujdesje për kafshët	Shtëpia
166	Përkujdesje për kafshët	Të Tjera
167	Magazinim & Lavanderi	Magazinim dhe organizim
168	Magazinim & Lavanderi	Lavanderi
169	Magazinim & Lavanderi	Pastrues
170	Produkte per bebe	Mësim & Lojëra
171	Produkte per bebe	Higjenë & Përkujdesje
172	Produkte per bebe	Mobilje
173	Produkte per bebe	Tekstile Fjetje
174	Produkte per bebe	Karrige Makine & Karroca
175	Produkte per bebe	Ngrënie & Aksesorë
176	Produkte per bebe	Siguri për bebe
177	Produkte per bebe	Fjongo
178	Dekor	Dekorime muri
179	Dekor	Perde dhe metrazhe
180	Dekor	Korniza dhe shufra për perde
181	Dekor	Grila për dritare
182	Dekor	Aksesorë për perde
183	Dekor	Qirinj
184	Dekor	Tapetë
185	Dekor	Mbulesa tavoline
186	Dekor	Vazo & Mbajtëse Qiri
187	Dekor	Lule & Aromatikë
188	Dekor	Kosha & Magazinim
189	Dekor	Dhurata & Paketime
190	Dekor	Jastekë
191	Dekor	Qepje
192	Dekor	Ditelindje
193	Dekor	Festa
194	Tekstile dhe aksesore	Tekstile Fjetje
195	Tekstile dhe aksesore	Tekstile Banje
196	Bujqësi & Blegtori	Pajisje kantine
197	Bujqësi & Blegtori	Makineri blegtorale
199	Veshje dhe Modë	Femra
200	Veshje dhe Modë	Meshkuj
201	Veshje dhe Modë	Uniseks
202	Veshje dhe Modë	Fëmijë
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
198	Bujqësi & Blegtori	Makineri bujqësore
21	Materiale Ndërtimi	Makineri ndërtimi
\.


--
-- Data for Name: category_links; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.category_links (id, departament, category, cat_link) FROM stdin;
1	Sezonale	Dekorime për Krishtlindje	https://www.megateksa.com/al/sq/catalog/sezonale-dekorime-per-krishtlindje
2	Sezonale	Artikuj Plazhi	https://www.megateksa.com/al/sq/catalog/sezonale-artikuj-plazhi
3	Sezonale	Embëlsira dhe biskota	https://www.megateksa.com/al/sq/catalog/sezonale-embelsira-dhe-biskota
4	Banjo	Pajisje Sanitare	https://www.megateksa.com/al/sq/catalog/bath-sanitary-ware
5	Banjo	Aksesorë bashkues dhe kaseta	https://www.megateksa.com/al/sq/catalog/bath-connection-accessories-and-cisterns
6	Banjo	Mobilje për banjo	https://www.megateksa.com/al/sq/catalog/bath-bathroom-furniture
7	Banjo	Aksesorë për banjo	https://www.megateksa.com/al/sq/catalog/bath-bath-accessories
8	Banjo	Produkte për Njerëz me Aftësi të Kufizuar	https://www.megateksa.com/al/sq/catalog/bath-comfort-life
9	Banjo	Sauna	https://www.megateksa.com/al/sq/catalog/bath-sauna
10	Banjo	Përkujdesje Personale	https://www.megateksa.com/al/sq/catalog/bath-personal-care
11	Banjo	Tapetë për tualet	https://www.megateksa.com/al/sq/catalog/banjo-tapete-per-tualet
12	Banjo	Higjenë	https://www.megateksa.com/al/sq/catalog/banjo-higjene
13	Banjo	Pastrim	https://www.megateksa.com/al/sq/catalog/banjo-pastrim
14	Banjo	Pastrim Profesional	https://www.megateksa.com/al/sq/catalog/banjo-pastrim-profesional
15	Banjo	Higjenë profesional	https://www.megateksa.com/al/sq/catalog/banjo-higjene-profesional
16	Banjo	Higjenë	https://www.megateksa.com/al/sq/catalog/banjo-higjene:c638711a-5d80-4a4d-b47d-8823e961ff8b
17	Materiale Ndërtimi	Tuba dhe rakorderi	https://www.megateksa.com/al/sq/catalog/building-materials-pipes-and-fittings
18	Materiale Ndërtimi	Aksesorë metali	https://www.megateksa.com/al/sq/catalog/building-materials-hardware
19	Materiale Ndërtimi	Vegla Ndërtimi	https://www.megateksa.com/al/sq/catalog/building-materials-building-tools
20	Materiale Ndërtimi	Silikon	https://www.megateksa.com/al/sq/catalog/building-materials-silicon
21	Materiale Ndërtimi	Makineri ndërtimi\n	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-makineri-ndertimi
22	Materiale Ndërtimi	Shkarkimi i ujrave të përdorura	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-shkarkimi-i-ujrave-te-perdorura
23	Materiale Ndërtimi	Sistemi  i thatë	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-sistemi-i-thate
24	Materiale Ndërtimi	Izolimi termo-akustik	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-izolimi-termo-akustik
25	Materiale Ndërtimi	Inerte dhe aditive	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-inerte-dhe-aditive
26	Materiale Ndërtimi	Hidroizolim dhe mbrojtje	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-hidroizolim-dhe-mbrojtje
27	Materiale Ndërtimi	Elemente ndërtimtarie bazë	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-elemente-ndertimtarie-baze
28	Materiale Ndërtimi	Druri	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-druri
29	Materiale Ndërtimi	Streha dhe mbulesa	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-streha-dhe-mbulesa
30	Materiale Ndërtimi	Shkarkime të përgjithshme	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-shkarkime-te-pergjithshme
31	Materiale Ndërtimi	Sisteme ajrimi dhe oxhaqesh	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-sisteme-ajrimi-dhe-oxhaqesh
32	Materiale Ndërtimi	Dyshemetë e jashtme	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-dyshemete-e-jashtme
33	Materiale Ndërtimi	Hekur dhe profile	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-hekur-dhe-profile
34	Materiale Ndërtimi	Depozita	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-depozita
35	Materiale Ndërtimi	Sinjalistika	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-sinjalistika
36	Materiale Ndërtimi	Skela	https://www.megateksa.com/al/sq/catalog/materiale-ndertimi-skela
37	Ngrohje - Ftohje	Elektrike	https://www.megateksa.com/al/sq/catalog/heating-and-cooling-electrical
38	Ngrohje - Ftohje	Karburant	https://www.megateksa.com/al/sq/catalog/heating-and-cooling-fuel
39	Ngrohje - Ftohje	Dru dhe Pelet	https://www.megateksa.com/al/sq/catalog/heating-and-cooling-wood-and-pellet
40	Ngrohje - Ftohje	Alternative	https://www.megateksa.com/al/sq/catalog/heating-and-cooling-alternative
41	Mobilje	Ambjent Dite	https://www.megateksa.com/al/sq/catalog/furniture-decor-living-room-furniture
42	Mobilje	Ambjent Nate	https://www.megateksa.com/al/sq/catalog/furniture-decor-bedroom-furniture
43	Mobilje	Ambient studimi dhe zyrë	https://www.megateksa.com/al/sq/catalog/furniture-decor-office-furniture
44	Mobilje	Dekorime	https://www.megateksa.com/al/sq/catalog/furniture-decor-decoration
45	Mobilje	Magazinim dhe organizim	https://www.megateksa.com/al/sq/catalog/furniture-decor-storage-organization
46	Mobilje	Produkte për bebe	https://www.megateksa.com/al/sq/catalog/furniture-decor-baby-products
47	Mobilje	Ambjent i jashtëm	https://www.megateksa.com/al/sq/catalog/mobilje-dhe-dekor-ambjent-i-jashtem
48	Mobilje	Ambient Kuzhine	https://www.megateksa.com/al/sq/catalog/mobilje-ambient-kuzhine
49	Shtrimi	Parket	https://www.megateksa.com/al/sq/catalog/flooring-parquet
50	Shtrimi	Pllaka	https://www.megateksa.com/al/sq/catalog/flooring-tiles
51	Shtrimi	Mokete dhe linoleume	https://www.megateksa.com/al/sq/catalog/flooring-wall-to-wall-carpeting
52	Elektrike	Pajisje për Instalime Elektrike	https://www.megateksa.com/al/sq/catalog/electrical-installation-materials
53	Elektrike	Sisteme Sigurie	https://www.megateksa.com/al/sq/catalog/electrical-security-systems
54	Elektrike	Kabëll dhe Aksesorë	https://www.megateksa.com/al/sq/catalog/electrical-cables-and-accessories
55	Elektrike	Pajisje Elektrike	https://www.megateksa.com/al/sq/catalog/electrical-electrical-equipments
56	Elektrike	Elektrike të Tjera	https://www.megateksa.com/al/sq/catalog/electrical-other-electrical
57	Elektrike	Pajisje Industriale dhe Profesionale	https://www.megateksa.com/al/sq/catalog/elektrike-pajisje-industriale-dhe-profesionale
58	Ndriçimi	Ndriçues të brendshem	https://www.megateksa.com/al/sq/catalog/lighting-interior-lighting
59	Ndriçimi	Ndricues Kopshti	https://www.megateksa.com/al/sq/catalog/lighting-garden-lighting
60	Ndriçimi	Llamba	https://www.megateksa.com/al/sq/catalog/lighting-lamps
61	Kuzhina	Lavapjata	https://www.megateksa.com/al/sq/catalog/kitchen-kitchen-sink
62	Kuzhina	Enë kuzhine	https://www.megateksa.com/al/sq/catalog/kitchen-kitchen-ware
63	Kuzhina	Aksesorë për kuzhina	https://www.megateksa.com/al/sq/catalog/kitchen-kitchen-accessories:2
64	Kuzhina	Pastrues	https://www.megateksa.com/al/sq/catalog/kitchen-cleaner
65	Kuzhina	Pastrim Profesional	https://www.megateksa.com/al/sq/catalog/kuzhina-pastrim-profesional
66	Kuzhina	Uniforma Pune	https://www.megateksa.com/al/sq/catalog/kuzhina-uniforma-pune
67	Kuzhina	Higjenë	https://www.megateksa.com/al/sq/catalog/kuzhina-higjene
68	Kuzhina	Higjenë Profesional	https://www.megateksa.com/al/sq/catalog/kuzhina-higjene-profesional
69	Kuzhina	Bisktota -caj	https://www.megateksa.com/al/sq/catalog/kuzhina-bisktota-caj
70	Druri	Binare dhe Ristela	https://www.megateksa.com/al/sq/catalog/wood-wooden-beams-and-bars
71	Druri	Lëndë Zdrukthtarie	https://www.megateksa.com/al/sq/catalog/wood-wood-procesing-materials
72	Druri	Shkallë	https://www.megateksa.com/al/sq/catalog/wood-ladder
73	Druri	Brava/Doreza dhe aksesorë	https://www.megateksa.com/al/sq/catalog/druri-bravadoreza-dhe-aksesore
74	Druri	Dritare	https://www.megateksa.com/al/sq/catalog/druri-dritare
75	Druri	Dyer të brendshme	https://www.megateksa.com/al/sq/catalog/druri-dyer-te-brendshme
76	Druri	Dyer të jashtme	https://www.megateksa.com/al/sq/catalog/druri-dyer-te-jashtme
77	Kopshtari	Dekorime	https://www.megateksa.com/al/sq/catalog/gardening-decorations
78	Kopshtari	Arredim i jashtëm	https://www.megateksa.com/al/sq/catalog/gardening-exterior-garden-furnishing
79	Kopshtari	Lule dhe bimë	https://www.megateksa.com/al/sq/catalog/gardening-flowers-and-plants
80	Kopshtari	Vegla kopshti elektrike	https://www.megateksa.com/al/sq/catalog/gardening-electrical-garden-tools
81	Kopshtari	Vegla kopshti me bateri	https://www.megateksa.com/al/sq/catalog/gardening-battery-garden-tools
82	Kopshtari	Vegla kopshti me karburant	https://www.megateksa.com/al/sq/catalog/gardening-fuel-garden-tools
83	Kopshtari	Vegla kopshti manuale	https://www.megateksa.com/al/sq/catalog/gardening-agricultural-and-garden
84	Kopshtari	Sisteme dhe pajisje për vaditje	https://www.megateksa.com/al/sq/catalog/gardening-irrigation-systems-equipments
85	Kopshtari	Barbekju	https://www.megateksa.com/al/sq/catalog/gardening-grills-bbq
86	Kopshtari	Pajisje kantine	https://www.megateksa.com/al/sq/catalog/gardening-cellar-equipments
87	Kopshtari	Aksesorë	https://www.megateksa.com/al/sq/catalog/gardening-accessories:3
88	Kopshtari	Insekticide	https://www.megateksa.com/al/sq/catalog/gardening-insecticide
89	Kopshtari	Tuba & Rakorderi	https://www.megateksa.com/al/sq/catalog/kopshtari-tuba-dhe-rakorderi
90	Kopshtari	Aksesorë për vegla kopshti	https://www.megateksa.com/al/sq/catalog/kopshtari-aksesore-per-vegla-kopshti
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
106	Bojra	Vegla ndërtimi	https://www.megateksa.com/al/sq/catalog/bojra-vegla-ndertimi
107	Art	Bojera per Piktor	https://www.megateksa.com/al/sq/catalog/arts-artist-paints
108	Art	Penela	https://www.megateksa.com/al/sq/catalog/arts-brushes
109	Art	Korniza Fotosh dhe  Pikturash	https://www.megateksa.com/al/sq/catalog/arts-picture-and-photo-frames
110	Art	Piktura	https://www.megateksa.com/al/sq/catalog/arts-pictures
111	Art	Të Tjera	https://www.megateksa.com/al/sq/catalog/arts-others
112	Hidraulike	Sisteme Zjarrfikse	https://www.megateksa.com/al/sq/catalog/plumbing-fire-fighting-systems
113	Hidraulike	Profesionale/Industriale	https://www.megateksa.com/al/sq/catalog/plumbing-proffesionalindustrial
114	Hidraulike	Tuba dhe Rakorderi	https://www.megateksa.com/al/sq/catalog/hidraulike-tuba-dhe-rakorderi
115	Vegla dhe Aksesorë	Hardware	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-hardware
116	Vegla dhe Aksesorë	Vegla Ndërtimi	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-building-tools
117	Vegla dhe Aksesorë	Veshje Pune Sigurie	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-safety-clothes
118	Vegla dhe Aksesorë	Vegla Elektrike	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-power-tools
119	Vegla dhe Aksesorë	Vegla Elektrike me Bateri	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-battery-power-tools
120	Vegla dhe Aksesorë	Aksesorë për Vegla Elektrike	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-power-tools-accessories
121	Vegla dhe Aksesorë	Vegla Mekanike	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-mechanic-tools
122	Vegla dhe Aksesorë	Vegla Matëse	https://www.megateksa.com/al/sq/catalog/tools-and-hardware-measuring-tools
123	Vegla dhe Aksesorë	Vegla makine dhe Aksesore	https://www.megateksa.com/al/sq/catalog/vegla-dhe-aksesore-vegla-makine-dhe-aksesore
124	Vegla dhe Aksesorë	Produkte sigurie	https://www.megateksa.com/al/sq/catalog/vegla-dhe-aksesore-produkte-sigurie
125	Zyrë dhe Shkollë	Materiale Arkivimi	https://www.megateksa.com/al/sq/catalog/office-school-archiving-material
126	Zyrë dhe Shkollë	Instrumenta shkrimi	https://www.megateksa.com/al/sq/catalog/office-school-writing-instruments
127	Zyrë dhe Shkollë	Organizues tavoline	https://www.megateksa.com/al/sq/catalog/office-school-table-organizer
128	Zyrë dhe Shkollë	Pajisje lidhëse	https://www.megateksa.com/al/sq/catalog/office-school-connecting-devices
129	Zyrë dhe Shkollë	Kartoleri dhe Letër	https://www.megateksa.com/al/sq/catalog/office-school-stationer-and-paper
130	Zyrë dhe Shkollë	Krijimtari për fëmijë	https://www.megateksa.com/al/sq/catalog/office-school-creativity-for-children
131	Zyrë dhe Shkollë	Tempera, bojëra dhe lapostila	https://www.megateksa.com/al/sq/catalog/office-school-tempera-paints-and-markers
132	Zyrë dhe Shkollë	Memorje e jashtme	https://www.megateksa.com/al/sq/catalog/office-school-external-memory
133	Zyrë dhe Shkollë	Të Tjera	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-te-tjera
134	Zyrë dhe Shkollë	Aksesorë zyre	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-aksesore-zyre
135	Zyrë dhe Shkollë	Tabela	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-tabela
136	Zyrë dhe Shkollë	Makina llogaritëse	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-makina-llogaritese
137	Zyrë dhe Shkollë	Audio dhe Video	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-audio-dhe-video
138	Zyrë dhe Shkollë	IT	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-it
139	Zyrë dhe Shkollë	Kabëll	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-kabell
140	Zyrë dhe Shkollë	Çanta	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-canta
141	Zyrë dhe Shkollë	Pastrues	https://www.megateksa.com/al/sq/catalog/zyre-dhe-shkolle-pastrues
142	Aksesorë makinash	Mirëmbajtja	https://www.megateksa.com/al/sq/catalog/car-accessories-maintenance
143	Aksesorë makinash	Solucione dhe aditivë	https://www.megateksa.com/al/sq/catalog/car-accessories-additives-and-substances
144	Aksesorë makinash	Trajtues sipërfaqesh dhe lustrues	https://www.megateksa.com/al/sq/catalog/car-accessories-surface-treatments-and-polishing
145	Aksesorë makinash	Aksesorë	https://www.megateksa.com/al/sq/catalog/car-accessories-accessories
146	Aksesorë makinash	Llamba Makine	https://www.megateksa.com/al/sq/catalog/car-accessories-car-lighting
147	Aksesorë makinash	Aksesore udhetimi te montueshem	https://www.megateksa.com/al/sq/catalog/aksesore-makinash-aksesore-udhetimi-te-montueshem
148	Sport dhe hobi	Mjete peshkimi	https://www.megateksa.com/al/sq/catalog/sport-hobby-fishing-equipment
149	Sport dhe hobi	Kamping	https://www.megateksa.com/al/sq/catalog/sport-hobby-camping
150	Sport dhe hobi	Biçikleta	https://www.megateksa.com/al/sq/catalog/sport-hobby-bicycles
151	Sport dhe hobi	Palestra	https://www.megateksa.com/al/sq/catalog/sport-hobby-fitnes
152	Sport dhe hobi	Artikuj Sportiv	https://www.megateksa.com/al/sq/catalog/sport-hobby-sport-articles
153	Sport dhe hobi	Valixhe dhe çanta udhëtimi	https://www.megateksa.com/al/sq/catalog/sport-dhe-hobi-valixhe-dhe-canta-udhetimi
154	Sport dhe hobi	Kamping	https://www.megateksa.com/al/sq/catalog/sport-dhe-hobi-kamping:ce7bf300-507b-46c6-a739-acc78b2283bd
155	Elektroshtëpiake	Frigoriferë	https://www.megateksa.com/al/sq/catalog/appliances-refrigerators
156	Elektroshtëpiake	Lavatriçe & Tharëse	https://www.megateksa.com/al/sq/catalog/appliances-washers-dryers
157	Elektroshtëpiake	Pajisje Gatimi	https://www.megateksa.com/al/sq/catalog/appliances-cooking-appliances
158	Elektroshtëpiake	Lavastovilie	https://www.megateksa.com/al/sq/catalog/appliances-dishwashers
159	Elektroshtëpiake	Elektroshtëpiake të vogla	https://www.megateksa.com/al/sq/catalog/appliances-small-appliances
160	Elektroshtëpiake	Fshesa me vakum	https://www.megateksa.com/al/sq/catalog/appliances-vacuum-cleaners
161	Elektroshtëpiake	TV dhe Audio	https://www.megateksa.com/al/sq/catalog/elektroshtepiake-tv-dhe-audio
162	Përkujdesje për kafshët	Ushqimi	https://www.megateksa.com/al/sq/catalog/pet-care-food
163	Përkujdesje për kafshët	Higjena dhe kozmetika	https://www.megateksa.com/al/sq/catalog/pet-care-hygiene-and-cosmetics
164	Përkujdesje për kafshët	Shëtitje dhe argëtim	https://www.megateksa.com/al/sq/catalog/pet-care-walks-and-fun
165	Përkujdesje për kafshët	Shtëpia	https://www.megateksa.com/al/sq/catalog/pet-care-home
166	Përkujdesje për kafshët	Të Tjera	https://www.megateksa.com/al/sq/catalog/pet-care-others
167	Magazinim & Lavanderi	Magazinim dhe organizim	https://www.megateksa.com/al/sq/catalog/magazinim-lavanderi-magazinim-dhe-organizim
168	Magazinim & Lavanderi	Lavanderi	https://www.megateksa.com/al/sq/catalog/magazinim-lavanderi-lavanderi
169	Magazinim & Lavanderi	Pastrues	https://www.megateksa.com/al/sq/catalog/magazinim-lavanderi-pastrues
170	Produkte per bebe	Mësim & Lojëra	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-mesim-lojera
171	Produkte per bebe	Higjenë & Përkujdesje	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-higjene-perkujdesje
172	Produkte per bebe	Mobilje	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-mobilje
173	Produkte per bebe	Tekstile Fjetje	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-tekstile-fjetje
174	Produkte per bebe	Karrige Makine & Karroca	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-karrige-makine-karroca
175	Produkte per bebe	Ngrënie & Aksesorë	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-ngrenie-aksesore
176	Produkte per bebe	Siguri për bebe	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-siguri-per-bebe
177	Produkte per bebe	Fjongo	https://www.megateksa.com/al/sq/catalog/produkte-per-bebe-fjongo
178	Dekor	Dekorime muri	https://www.megateksa.com/al/sq/catalog/dekor-dekorime-muri
179	Dekor	Perde dhe metrazhe	https://www.megateksa.com/al/sq/catalog/dekor-perde-dhe-metrazhe
180	Dekor	Korniza dhe shufra për perde	https://www.megateksa.com/al/sq/catalog/dekor-korniza-dhe-shufra-per-perde
181	Dekor	Grila për dritare	https://www.megateksa.com/al/sq/catalog/dekor-grila-per-dritare
182	Dekor	Aksesorë për perde	https://www.megateksa.com/al/sq/catalog/dekor-aksesore-per-perde
183	Dekor	Qirinj	https://www.megateksa.com/al/sq/catalog/dekor-qirinj
184	Dekor	Tapetë	https://www.megateksa.com/al/sq/catalog/dekor-tapete
185	Dekor	Mbulesa tavoline	https://www.megateksa.com/al/sq/catalog/dekor-mbulesa-tavoline
186	Dekor	Vazo & Mbajtëse Qiri	https://www.megateksa.com/al/sq/catalog/dekor-vazo-mbajtese-qiri
187	Dekor	Lule & Aromatikë	https://www.megateksa.com/al/sq/catalog/dekor-lule-aromatike
188	Dekor	Kosha & Magazinim	https://www.megateksa.com/al/sq/catalog/dekor-kosha-magazinim
189	Dekor	Dhurata & Paketime	https://www.megateksa.com/al/sq/catalog/dekor-dhurata-paketime
190	Dekor	Jastekë	https://www.megateksa.com/al/sq/catalog/dekor-jasteke
191	Dekor	Qepje	https://www.megateksa.com/al/sq/catalog/dekor-aksesore-qepje
192	Dekor	Ditelindje	https://www.megateksa.com/al/sq/catalog/dekor-ditelindje
193	Dekor	Festa	https://www.megateksa.com/al/sq/catalog/dekor-festa
194	Tekstile dhe aksesore	Tekstile Fjetje	https://www.megateksa.com/al/sq/catalog/tekstile-dhe-aksesore-tekstile-fjetje
195	Tekstile dhe aksesore	Tekstile Banje	https://www.megateksa.com/al/sq/catalog/tekstile-dhe-aksesore-tekstile-banje
196	Bujqësi & Blegtori	Pajisje kantine	https://www.megateksa.com/al/sq/catalog/bujqesi-dhe-blegtori-pajisje-kantine
197	Bujqësi & Blegtori	Makineri blegtorale	https://www.megateksa.com/al/sq/catalog/bujqesi-dhe-blegtori-makineri-blegtorale
198	Bujqësi & Blegtori	Makineri bujqësore\n	https://www.megateksa.com/al/sq/catalog/bujqesi-dhe-blegtori-makineri-bujqesore
199	Veshje dhe Modë	Femra	https://www.megateksa.com/al/sq/catalog/veshje-dhe-mode-femra
200	Veshje dhe Modë	Meshkuj	https://www.megateksa.com/al/sq/catalog/veshje-dhe-mode-meshkuj
201	Veshje dhe Modë	Uniseks	https://www.megateksa.com/al/sq/catalog/veshje-dhe-mode-uniseks
202	Veshje dhe Modë	Fëmijë	https://www.megateksa.com/al/sq/catalog/veshje-dhe-mode-femije
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
\.


--
-- Data for Name: departaments; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.departaments (departament_type) FROM stdin;
Sezonale
Banjo
Materiale Ndërtimi
Ngrohje - Ftohje
Mobilje
Shtrimi
Elektrike
Ndriçimi
Kuzhina
Druri
Kopshtari
Bojra
Art
Hidraulike
Vegla dhe Aksesorë
Zyrë dhe Shkollë
Aksesorë makinash
Sport dhe hobi
Elektroshtëpiake
Përkujdesje për kafshët
Magazinim & Lavanderi
Produkte per bebe
Dekor
Tekstile dhe aksesore
Bujqësi & Blegtori
Veshje dhe Modë
Ushqime dhe Pije
Informatike
Telefon & Tablet
Tv Video & Audio
Dron - Kamera - Gimbal
Lojera & Argetim
Elektroshtepiake
\.


--
-- Data for Name: filters_table; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filters_table (id, filters, category_id) FROM stdin;
1	{"lloji": ["Dekorime Festive"], "filtro_sipas_markës": []}	1
2	{"lloji": ["Artikuj Plazhi", "Gjithca për notin", "Pishina familjare", "Shezlonë dhe Cadra"], "filtro_sipas_markës": ["Gio'Style", "Galileo Casa", "Pro garden", "Garnier"]}	2
3	{"lloji": ["Biskota", "Lepirese"], "filtro_sipas_markës": []}	3
4	{"lloji": ["Lavaman", "Bide", "Panel dushi", "Rubinetari", "Urinal", "WC", "Pllakë dushi", "Vaskë", "Kabinë dushi"], "filtro_sipas_markës": ["Metaform", "Ideal Standart", "Bonomini", "Esedra", "Bobble Soap", "Azzura", "Mariani", "Grohe", "Sonet", "L'acquario", "MEGATEK", "Idealine", "L'acqua", "Iris", "Flusso", "Krihler", "Olympi Sanitary", "Dost", "Mr Shower", "Rubineta &amp;", "GRB mixers", "IDEVIT"]}	4
5	{"lloji": ["Sistem Inkaso", "Gominë, sifon, piletë", "Kaseta plastike", "Mekanizma kasete"], "filtro_sipas_markës": ["Geberit", "LIV", "Bonomini", "Brixo", "L'acquario", "Hidrosanitare", "Drina", "Feridras", "Dost", "Rubineta &amp;", "Chudej", "Eliplast", "GREAT FRIEND"]}	5
6	{"lloji": ["Set mobilje tualeti", "Pasqyra", "Rafte"], "filtro_sipas_markës": ["Metaform", "Homeline", "Decoramica", "City Sanitary", "MEGATEK", "all4bath", "Sea Wave", "Olympi Sanitary", "Home Style", "Eliplast", "Disrael", "Bathroom solutions", "Van der Leeden"]}	6
7	{"lloji": ["Kapakë tualeti", "Perde dushi", "Aksesorë për montim në mur", "Aksesorë për vendosje mbi mobilje", "Tuba rrëshqitës", "Tuba fleksibël", "Sete kokë dushi", "Kosha tualeti", "Peshore dhe kosha lavanderie", "Furça tualeti", "Mbajtëse letre dhe sapuni", "Peshqirë", "Gominë, sifon, piletë", "Aksesor mbajtes me varje", "Tharëse duarsh", "Tharëse flokesh", "Sinjalistikë", "Antirrëshqitës"], "filtro_sipas_markës": ["Metaform", "Ivanicplast", "Siena", "Dolphin", "Esedra", "Interplast", "FIXON", "Mariani", "Grohe", "Smart Furniture", "Drina", "all4bath", "BTV", "Mathilde", "Feridras", "NTM Italy", "Krihler", "Dost", "Ippa", "Rubineta &amp;", "Ella", "Home Sweet Home", "Home Style", "Lucart", "Vialli", "Comfort2000", "Castelmerlino", "Eliplast", "Verdelook", "BulkySoft", "Galileo Casa", "Stefanplast", "Aqualine", "Disrael", "WASSENBERG", "CURVER", "Excellent Houseware", "Storage solutions", "Bathroom solutions", "MSV", "Ultra clean", "Saniplast"]}	7
8	{"lloji": ["Pajisje sanitare", "Aksesorë mbajtës"], "filtro_sipas_markës": ["Metaform", "Dogvit", "MOBIAK", "Feridras", "Dost", "MSV"]}	8
9	{"lloji": ["Sauna"], "filtro_sipas_markës": []}	9
10	{"lloji": ["Mirmbajtje", "Përkujdesje Trupi", "Aksesorë dushi", "Aksesorë kozmetike", "Aksesorë udhëtimi", "Higjenë personale", "Kuti plastike", "Magazinim dhe organizim", "Mirëmbajtje këpucësh", "Ndihma e shpejtë", "Pastrues për tekstil", "Përkujdesje duarsh dhe thonj", "Përkujdesje për flokët", "Corape dhe geta", "Intime", "Make Up", "Kujdesi për lekuren", "Kujdesi Oral", "Stilim Flokësh", "Mjekra", "Mjekra", "Përkujdesje dhe siguri", "Parfume", "Shtatezania"], "filtro_sipas_markës": ["Vileda", "PLYKING", "PREMIER WOOD", "Drina", "FISARMONICA", "PVC-lighting", "Ippa", "Erdal", "Fire brick", "Pierre Cardin", "Venus", "SOGA", "Home Style", "Durobor", "Okila", "Domino", "Mineralia", "Dolci", "Mezzogiorno", "Farmacotone", "Cotoneve", "COTONET", "BALIOUSKAS", "Soraya Kasak", "Larya Jahnu", "Kilim Square", "AQUAMassage", "Regina", "BulkySoft", "Galileo Casa", "NIVEA", "BOREAL", "Johnson's baby", "OLIVEA", "Proworld", "Bathroom solutions", "Niet Van Toepassing", "Garnier", "Barbie", "ADIDAS", "Flomar", "Glossfinity", "Miniso", "Alberto Taccin", "GoldCare", "Fepi", "Cosmolive", "Zeyteen", "Olivos", "Hunca Care", "Agiva", "Caldion", "Langelica", "BioPoint", "She", "Agiss", "Moschino", "Trussardi", "Versace", "Carefree", "Lycia", "Pantene", "Clinians", "Belle Color", "Jimmy Choo", "Head &amp; Shoulders", "Dove", "Axe", "Oral-B", "Elvive", "Fructis", "Batman", "Ultra Dolce", "Pearl Drops", "Neutrogena", "Labello", "Pampers", "Chicco", "Gliss", "Frozen", "Paradontax", "Spiderman", "Biorepair", "Herbal Essences", "Dermomed", "Borotalco", "Flormar", "Neutro Roberts", "Taft", "Nails", "Colgate", "Blanx", "L,Oreal", "OXY", "Elmex", "Jagler", "Mentadent", "Sensodyn", "Veet", "Givenchy", "Mont Blanc", "Dermolab", "Eveline", "Kenzo", "Blu Marine", "Rev Uniq One", "Salvatore Ferrgamo", "Pepe Jeans", "Bella Oggi", "Women's Secret", "Saponello", "Karl Lagerfeld", "Felce Azzurra", "Dual", "Wash&amp;Go", "Deborah", "Golden Rose", "Jelly"]}	10
11	{"lloji": ["Tapetë për tualet"], "filtro_sipas_markës": ["Acqua", "Decomarin", "MSV"]}	11
12	{"lloji": ["Letra Tualeti", "Tharëse &amp; Dispencer", "Detergjentë &amp; Aromatikë", "Doreza me një përdorim", "Antiseptik dhe Dezifektant", "Maska"], "filtro_sipas_markës": ["Mezzogiorno", "Sanitec", "Scrac", "Melissa", "Neutro Roberts", "Felce Azzurra"]}	12
13	{"lloji": ["Fshesa dhe Shtupa", "Aksesorë pastrimi", "Peceta Pastrimi", "Dysheme dhe Xham", "Kova", "Detergjentë të ndryshëm", "Detergjentë dhe aromatikë", "Tharëse dhe dispencer", "Kaci pastrimi", "Fshesa dhe shkopa"], "filtro_sipas_markës": ["Frosch", "Rorax", "Drina", "Arix", "LOGEX", "Arexons", "Home Style", "Linea PERFETTA", "Mia", "C'e", "Scrac", "Calgon", "Perfetto factory", "Miniso", "Ajax"]}	13
14	{"lloji": ["Karela dhe Kova", "Dysheme dhe Xham", "Peceta Pastrimi", "Fshesa dhe shtupa", "Aksesorë pastrimi", "Detergjentë dhe aromatikë", "Sfungjer pastrimi"], "filtro_sipas_markës": ["Vileda", "Erdal", "Arix", "Arexons", "Sanitec", "Matrix", "Italchimica", "Perfetto factory", "Dual"]}	14
15	{"lloji": ["Letra tualeti", "Detergjentë dhe aromatikë"], "filtro_sipas_markës": ["Sanitec", "Matrix", "BulkySoft"]}	15
16	{"lloji": ["Maska"], "filtro_sipas_markës": []}	16
17	{"lloji": ["Tuba bakri", "Tuba PPR", "Tuba Multistrat", "Tuba fleksibël", "Rakorderi bakri", "Rakorderi Multistrati", "Rakorderi PPR", "Valvula bakri"], "filtro_sipas_markës": ["RBM", "Toro", "Rietti", "Confort", "Teqja", "CIM", "NTM Italy", "pro-For Tec", "MATEU"]}	17
18	{"lloji": ["Vida druri", "Vida betoni", "Vida metali", "Dado dhe bullona", "Zinxhirë", "Litarë", "Kasaforta", "Kuti Postare", "Aksesorë Dyersh", "Aksesorë mobiliesh", "Aksesore montimi", "Aksesorë të tjerë", "Brava dyersh", "Rrota", "Kavo çeliku dhe aksesorë"], "filtro_sipas_markës": ["Power Metric", "ALL-ROPES", "Brixo", "KNAUF", "BTV", "Black&amp;Decker", "DEWALT", "NTM Italy", "MU", "PATTA", "Fischer", "NIKLAS", "Lih Lin", "INOXMARE", "Pawer Metric", "LABOR", "Apolo", "Kinzo"]}	18
19	{"lloji": ["Çekiç", "Shënues", "Metër", "Nivel", "Mbajtëse Veglash", "Sharra dore", "Dalta", "Shkallë", "Vegla pune të tjera ndërtimi", "Prerëse pllakash"], "filtro_sipas_markës": ["GREAT WALL", "Dekor", "STANLEY", "LAND", "Brixo", "MASTER FORCE", "Drina", "BETA", "MU", "Scented Parfumees"]}	19
20	{"lloji": ["Silikon"], "filtro_sipas_markës": ["Ceresit", "Bison"]}	20
96	{"lloji": ["Bojra per brenda"], "filtro_sipas_markës": ["Decotric", "Nirlat", "Isomat", "Deutsch Color"]}	96
21	{"lloji": ["Betoniere", "Vibrator", "Ngjeshës", "Nivelues", "Sharra", "Vinça", "Karroca", "Aksesorë", "Kova shkarkimi për inerte", "Tuba dhe elemente skelerish", "Thasë, rrjetë dhe materiale te tjera", "Skela të gatshme", "Betoforma", "Trarë Dopio T", "Distancierë", "Shkallë metalike", "Puntela", "Shkallë shkallë druri"], "filtro_sipas_markës": ["Masterpac", "Brixo", "SPA CONSTRUZIONI", "Verdelook", "Garden Jet", "PERI", "Kinzo"]}	21
22	{"lloji": ["Aksesorë lidhës", "Tuba PVC portokalli të hollë", "Tuba PVC portokalli të trashë", "Rakorderi PVC", "Tuba PP", "Rakorderi PP", "Tuba të brinjëzuar HDPE - SN4", "Tuba PVC portokalli të mesëm"], "filtro_sipas_markës": ["Confort", "Teqja", "Parsan", "Tork"]}	22
23	{"lloji": ["Pllake gipsi standart", "Pllake gipsi çimentato", "Pllake gipsi kundra zjarrit", "Aksesorë", "Pllake gipsi kundra lagështirës", "Profile gipsi", "Stuko dhe kollë me bazë gipsi", "Vida gipsi", "Tavane të varura me fibra minerale"], "filtro_sipas_markës": ["TESA", "KNAUF"]}	23
24	{"lloji": ["Lesh guri", "Polisterol i ekstruduar XPS", "Polisterol i ekspanduar EPS", "Poliuretan", "Baza dhe Astar", "Rrjetë", "Këndore dhe aksesore", "Sfungjerë akustikë", "Grafiato", "Tapa", "Lesh xhami"], "filtro_sipas_markës": ["NTM Italy", "GUTTA", "FIBERMESH  ONE", "IZOTERM", "Dast"]}	24
25	{"lloji": ["Llaç i gatshëm", "Fino", "Stuko standart", "Nivelues", "Silikone", "Prajmer", "Çimento", "Kollë"], "filtro_sipas_markës": ["PRIMA  K2", "Bitex", "Ceresit", "Bison", "Nirlat", "Dast", "Arexons", "Fischer", "Ege Dekor"]}	25
26	{"lloji": ["Membranë bituminoze me granil", "Mbulues polietileni", "Fibra polipropileni", "Membranë bituminoze standart", "Fasho bituminoze dhe aksesorë", "Ngjitës shtresash plastike", "Ngjitës bazë poliuretani", "Ngjitës bazë aditive", "TNT- gjeotekstil"], "filtro_sipas_markës": ["SIKA", "GUTTA", "POLYGLASS", "Nirlat", "IZOTERM", "Dast"]}	26
27	{"lloji": ["Tulla ndarëse", "Tulla bllok", "Blloqe çimentoje", "Tulla xhami"], "filtro_sipas_markës": ["Jinghua"]}	27
28	{"lloji": ["Dru bredhi", "Dru pishe", "Lidhëza druri metalike", "Tavane të varura", "Panele të gatshme"], "filtro_sipas_markës": ["KONKURENT", "HOLZ SCHMIDT"]}	28
29	{"lloji": ["Tjegulla Standarte", "Streha Bituminoze të valëzuara", "Streha Polikarbonati", "Streha  PVC", "Tjegulla Speciale", "Aksesorë catie", "Panel sanduiç i  valëzuar", "Streha Poliestër", "Streha metalike"], "filtro_sipas_markës": ["INTERMAS", "GUTTA"]}	29
30	{"lloji": ["Puseta  polipropileni", "Aksesorë shkarkimesh", "Kapak pusete gize", "Grila polipropileni", "Kapakë polipropileni", "Telajo poliprpileni", "Ulluqe Betoni", "Ulluqe plastike", "Zgara ulluqesh", "Shkarkime çatie të galvanizuara", "Shkarkime çatie PVC", "Puseta çimentoje", "Kapak pusete çimentoje"], "filtro_sipas_markës": ["PALAPLAST", "Confort", "ACO"]}	30
31	{"lloji": ["Tuba alumini", "Tuba inoksi", "Tuba të zinkuar", "Kapele oxhaqesh"], "filtro_sipas_markës": ["TECHNOMETAL"]}	31
32	{"lloji": ["Pllaka shtrimi prej betoni", "Decking", "Gurë natyral", "Kapak parapeti"], "filtro_sipas_markës": []}	32
33	{"lloji": ["Profile", "Ele", "Llamarina", "Tuba të galvanizuar", "Gozhdë dhe tel", "Lama", "Shufra hekuri", "Zgara hekuri", "Aksesorë"], "filtro_sipas_markës": ["Power Metric", "KANAD'TILING Fpl", "Brixo", "Verdelook", "Arcansas"]}	33
34	{"lloji": ["Horizontale plastike", "Vertikale plastike", "Horizontale xingato", "Vertikale xingato", "Vaska IMOF"], "filtro_sipas_markës": ["Telcom", "Selmani"]}	34
35	{"lloji": ["Horizontale plastike", "Vertikale plastike", "Horizontale xingato", "Vertikale xingato", "Vaska IMOF"], "filtro_sipas_markës": ["Telcom", "Selmani"]}	35
36	{"lloji": ["Aksesore perberes te skelerive"], "filtro_sipas_markës": []}	36
37	{"lloji": ["Kondicionim", "Ngrohës Elektrik", "Freskues Elektrik", "Delagështues", "Kaldaja ngrohjeje", "Pastrues Ajri"], "filtro_sipas_markës": ["De Longhi", "Fuego", "Beko", "Ariston", "AGD", "STANLEY", "Brixo", "Black&amp;Decker", "Volcano", "IMETEC", "Venus", "MAX", "Elektra", "Deluxe", "NIKLAS", "Alpina", "HYUNDAI", "Grundig", "ROWENTA", "EMOS", "KUMTEL", "Hoobart", "Atlantik", "Vivax", "Kooper", "MITSUBISHI", "VARMA", "BREIXO", "SHARP", "Simfer", "ETA", "Haier", "Dunlop", "TCL", "ARGO", "Saray", "Nebula"]}	37
38	{"lloji": ["Kaldaja ngrohje", "Etanol", "Ngrohes me Gaz"], "filtro_sipas_markës": ["RBM", "Power Metric", "Fuego", "Ariston", "ETHANOL FIRE", "NTM Italy", "Hot Crystal", "Elektra", "NIKLAS", "GARDENSUN"]}	38
39	{"lloji": ["Oxhake", "Soba", "Aksesore", "Kaldaje me pelet"], "filtro_sipas_markës": ["Brixo", "Castellano", "Prity", "Victoria", "Centrometal", "Diavolina", "GEKO", "Veneto Stufe", "DAC", "BLIST"]}	39
40	{"lloji": ["Panele diellore"], "filtro_sipas_markës": ["Power Sun"]}	40
41	{"lloji": ["Divanë", "Mbajtëse për TV", "Karrige", "Rafte të ndryshme", "Tavolina mesi dhe këndi", "Mobilje për televizor", "Kolltukë", "Pupa", "Ndarëse ambienti", "Pasqyra", "Mobilje koridori", "Rafte këpucësh"], "filtro_sipas_markës": ["BEAUTY FURNITURE", "Forma Ideale", "Artplast", "Smart Furniture", "MEGATEK", "La Sedia", "Adore", "Home sofa", "Diva&amp;Divani", "MAX", "BALIOUSKAS", "Galileo Casa", "Elektra", "Disrael", "EMOS", "Valentini", "H &amp; S collection", "Metaltex", "Atmosphera"]}	41
42	{"lloji": ["Dhoma gjumi", "Dollapë", "Krevatë", "Dyshekë", "Tekstile", "Jastëkë dhe mbulesa", "Komodina dhe rafte", "Magazinim dhe sirtarë", "Mbajtëse dysheku"], "filtro_sipas_markës": ["Forma Ideale", "Artplast", "MEGATEK", "Ambrosiana", "EASY WAY FURNITURE", "De'Casa", "Home Linen", "Dormeo", "Adore", "LUOCA PATISCA", "MComfort", "Kid City", "Home Sweet Home", "LOGEX", "BALIOUSKAS", "Galileo Casa", "Valentini", "Storage solutions", "ItalCasa"]}	42
43	{"lloji": ["Tavolina", "Karrige zyre", "Rafte për libra dhe dosje"], "filtro_sipas_markës": ["Forma Ideale", "Smart Furniture", "MEGATEK", "La Sedia", "Adore", "Tutto Mobili", "Solenne"]}	43
44	{"lloji": ["Rafte", "Piktura", "Mbajtëse raftesh", "Kornizë Polisteroli", "Dekorime Tavoline", "Suporte vazosh"], "filtro_sipas_markës": ["JEWE", "BOVELACCI", "NatyrART", "Disrael"]}	44
45	{"lloji": ["Varëse rrobash"], "filtro_sipas_markës": []}	45
46	{"lloji": ["Siguri për fëmijët", "Tekstile", "Mobilje", "Aksesorë Bebesh", "Krevate"], "filtro_sipas_markës": ["Deco Casa", "MEGATEK", "Adore", "LUOCA PATISCA"]}	46
97	{"lloji": ["Bojra dekorative"], "filtro_sipas_markës": ["Bitex", "Nirlat", "Dast"]}	97
47	{"lloji": ["Jastëk mbeshtetes", "Druri natyral", "Thurje natyrale", "Thurje PE", "Plastike", "Tekstilen dhe metalike", "Çadra dhe bazamente", "Gaxebo dhe tenda", "Lisharëse", "Pishtarë", "Shilte", "Tekstike për mobilje", "Lisharëse", "Plastike"], "filtro_sipas_markës": ["Verdelook", "Pro garden", "PAPATYA", "Keter", "Vivace"]}	47
48	{"lloji": ["Kuzhina", "Lavapjata", "Kosha", "Tavolinë ngrënie", "Karrige ngrënie", "Rubineta", "Aksesorë"], "filtro_sipas_markës": ["Blanco", "Forma Ideale", "Mariani", "Grohe", "Smart Furniture", "Minos", "MEGATEK", "Drina", "De'Casa", "La Sedia", "Krihler", "Dost", "Rubineta &amp;", "Sanindusa", "Eliplast", "VIOMES", "Stefanplast", "GRB mixers", "CM", "CURVER", "Diadem", "Metaltex", "Atmosphera", "FIVE Simply smart"]}	48
49	{"lloji": ["Parket druri", "Parket Laminat", "Aksesore Parketi"], "filtro_sipas_markës": ["BODENWELT", "Kaindl", "DUOMO PROFILI", "JEWE", "HOLZMEISTER", "KRONO FLOORING", "BAUWERK", "IZOTERM", "Arcansas", "Barlinek", "Bakonyerdő", "PAN PARKET", "MODEMA", "ARBITON"]}	49
50	{"lloji": ["Aksesore pllake", "Pllaka shtrimi", "Pllaka tualeti", "Pllake Veshje"], "filtro_sipas_markës": ["Spacer", "Super", "AG", "Azuleja", "STN-pllaka", "MEGATEK", "HLC-pllaka", "Brunes", "Botanica", "CicoGres-pllaka", "Stegu", "Argenta-pllaka", "NAVARTI", "STON"]}	50
51	{"lloji": ["Mokete dhe linoleume", "Mokete dhe Linoleume"], "filtro_sipas_markës": []}	51
52	{"lloji": ["Aksesore Montimi", "Priza elektrike", "Celesa elektrik", "Aksesore TV,Data,Tf", "Kapake prizash", "Sisteme mbrojtjeje elektrike"], "filtro_sipas_markës": ["Philips", "Schneider", "ABB", "EU energy", "OV Cable", "Emme Esse", "Alcad", "Deliksi", "Vimar", "Luna", "EMOS", "Gewiss", "Bticino", "MUTLUSAN", "Digitus", "Matix", "Vimar NEVE"]}	52
53	{"lloji": ["Sisteme mbrojtjeje elektrike", "Sisteme sigurie elektronike", "Sisteme matje"], "filtro_sipas_markës": ["Schneider", "ABB", "EU energy", "Deliksi", "Vimar", "HOROZ", "LAMBARIO", "Grundig", "EMOS", "Hikvision", "Lafayete", "Kooper", "MUTLUSAN", "Dunlop", "Pawer Tree", "SAFE ALARM", "BRAYTON", "Motorola", "DKC"]}	53
54	{"lloji": ["Kabell elektrik", "Aksesore montim kabelli", "Aksesorë montimi", "Priza zgjatuese dhe pershtatës"], "filtro_sipas_markës": ["General Cavi", "Philips", "Brixo", "ABB", "Arno Canali", "EU energy", "Eglo", "OV Cable", "Emme Esse", "Alcad", "Deliksi", "Vimar", "Fischer", "BRILLIANT", "LAMBARIO", "Grundig", "EMOS", "Lafayete", "Xavax", "Magmaweld", "Arnocanali", "3M", "Prospecta", "MUTLUSAN", "Digitus", "Elettrocanali", "Kinzo", "Dunlop"]}	54
55	{"lloji": ["Stabilizatore dhe Inverter", "Pompa uji elektrike", "Ngrohes uji elektrike", "Kompresore", "Aspirator", "Motogjeneratore elektrike", "Paisje te tjera Elektrike", "Pajisje Saldimi"], "filtro_sipas_markës": ["Schneider", "Ariston", "STANLEY", "Brixo", "EU energy", "BOSCH", "Coral", "Vortice", "narva", "LEOV", "LEO", "Tolsen", "DAEWOO", "GTL", "Deca", "Delimano", "EMOS", "Hoobart", "Atlantik", "Lafayete", "ABKS", "Tecnoelektra", "Kedman", "Riese", "Magmaweld", "Map Pro", "Oxy turbo", "Subaru", "PUMPMAN", "Chaffoteaux", "MATIC", "Loncin", "LAUNTOP", "KEMPER", "MUTLUSAN", "Haier", "NEWCO", "ATLANTIC", "HACO", "HONDA"]}	55
56	{"lloji": ["Elektrike te tjera", "Bateri", "Elektrikë dore dhe kamping"], "filtro_sipas_markës": ["Philips", "Schneider", "Panasonic", "VARTA", "Beghelli", "EU energy", "OSRAM", "Eglo", "MAXELL", "OMEGA", "Elektra", "NIKLAS", "BEGHLER", "Grundig", "Duracell", "Delimano", "ENERGIZER", "EMOS", "Lafayete", "Kooper", "KEMPER", "Kinzo", "Dunlop", "SAFE ALARM"]}	56
57	{"lloji": ["Pajisje Industriale dhe Profesionale"], "filtro_sipas_markës": ["Schneider", "ABB", "EU energy", "Deliksi", "OMEGA"]}	57
58	{"lloji": ["Ndriçues tavani", "Ndriçues muri", "Ndriçues zyre", "Ndriçues LED", "Ndriçues i varur", "Ndriçues spot", "Ndriçues pedan", "Ndriçues tavoline"], "filtro_sipas_markës": ["TRIO", "Philips", "Artemis", "Beryl", "ArtdePierre", "Koral", "Arredoluce", "Beghelli", "Philips-Massive", "Lunar", "Antica", "OSRAM", "Alumierrei", "Stillicht", "Glowfmarta", "PVC-lighting", "Eglo", "Light life lighting", "PLATINET", "FAN EUROPE", "BEGHLER", "HOROZ", "BRILLIANT", "LAMBARIO", "Grundig", "EMOS", "MasterLight", "Elips", "DLU", "Kooper", "FMT", "KAISER LIGHT", "MUTLUSAN", "MILLE", "ATON LIGHT", "Lumineo", "Dunlop", "BRAYTON"]}	58
59	{"lloji": ["Ndriçues LED", "Ndriçues muralë", "Ndriçim për shtyllë", "Ndriçues për lule dhe bimë", "Projektor", "Ndriçues me panel Diellor"], "filtro_sipas_markës": ["Philips", "Beryl", "Romaantic", "Philips-Massive", "EU energy", "Eglo", "FAN EUROPE", "BEGHLER", "HOROZ", "BRILLIANT", "LAMBARIO", "Fumagalli", "Grundig", "EMOS", "Elips", "FMT", "MUTLUSAN", "MILLE", "ATON LIGHT", "Dunlop", "Pro garden", "BRAYTON"]}	59
60	{"lloji": ["Llamba LED", "Llamba ekonomike", "Llamba fluoreshente", "Llamba halogjene", "Llamba inkandeshente", "Llamba profesionale", "Portollamba dhe aksesore ndricimi"], "filtro_sipas_markës": ["TRIO", "Philips", "Beryl", "TCI Italy", "GENERAL ELECTRIC", "Beghelli", "OSRAM", "Eglo", "OMEGA", "FAN EUROPE", "BEGHLER", "HOROZ", "BRILLIANT", "LAMBARIO", "EMOS", "MasterLight", "DLU", "Kooper", "FMT", "Elettrocanali", "Sylvania", "BRAYTON"]}	60
61	{"lloji": ["Sifona dhe aksesorë"], "filtro_sipas_markës": ["Bonomini", "Dost", "Rubineta &amp;"]}	61
62	{"lloji": ["Tenxhere", "Servirje", "Aksesorë kuzhine", "Pjekje", "Pjata", "Gota", "Prerje  dhe grirje", "Ene ushqimi", "Bonboniere dhe frutiere", "Festivë një-perdorimëshe", "Tiganë", "Sallatiere dhe tasa", "Dekanter, kana dhe termus", "Kullesa", "Ruajtje dhe konservim", "Kafe dhe caj", "Thika dhe prerëse", "Aksesorë të tjerë", "Aksesorë ngrënie tavoline", "Vaj/Uthull dhe Kripë/Piper", "Kanistër dhe shporta", "Aksesore gatimi dhe servirje", "Pesha dhe matëse", "Ene për Femije", "Tabaka", "Gjithcka për embëlsira", "Githcka për HO.RE.CA-Tavoline", "Gjithcka për HO.RE.CA-Gatim", "Aksesore Bari", "Gjithcka për HO.RE.CA-BUFE &amp; MENGJES"], "filtro_sipas_markës": ["Drina", "Walther Glas", "Pasabahçe", "f&amp;d", "SOGA", "Marinex", "Dopla", "Home Style", "Durobor", "Bormioli", "Saturnia", "Glass4You", "Uniglass", "Devalbor", "Tescoma", "Mineralia", "BALIOUSKAS", "JMC", "Tramontina", "Eliplast", "Regina", "Sayonara", "Samurai", "BulkySoft", "Galileo Casa", "Roman Gallery", "Villa Deste", "Gürallar", "Borcam", "PINTINOX", "Sanelli", "Tognana", "BALLARINI", "POLIDIL", "Salvinelli", "Kostis", "ILSA", "Royal Leerdam", "Arte &amp; Fuoc", "Cabernet", "Pedrini", "LACOR", "GI·METAL", "CHEF LINE", "FASA", "AGNELLI", "ABERT", "Alpina", "Kütahya", "Polidil Foil", "Disrael", "Cerve", "Nachtmann", "Life Glass", "Fackelmann", "LEONE", "Excellent Houseware", "Arcoroc", "Atmosphera", "FIVE Simply smart", "Secret de Gourmet"]}	62
63	{"lloji": ["Aksesore Kuzhinash", "Aksesore per Kuzhina"], "filtro_sipas_markës": ["JEWE", "ACCESSORIZE", "Drina", "Tognana", "FIORE", "Alpina"]}	63
98	{"lloji": ["Bojra druri me baze uji", "Bojra druri me baze diluenti"], "filtro_sipas_markës": ["Nirlat", "VELECA", "Arexons", "Deutsch Color"]}	98
64	{"lloji": ["Aksesorë pastrimi", "Detergjentë të ndryshëm", "Peceta Pastrimi", "Sfungjer dhe Tel Enesh", "Doreza pastrimi", "Peshqir Kuzhine", "Dysheme dhe Xham", "Qese mbeturinash"], "filtro_sipas_markës": ["Frosch", "emsal", "Arix", "Home Style", "Verdelook", "Linea PERFETTA", "C'e", "Scrac", "Gorsia", "Calgon", "Perfetto factory"]}	64
65	{"lloji": ["Detergjentë dhe aromatikë"], "filtro_sipas_markës": ["Sanitec", "Matrix"]}	65
66	{"lloji": ["Xhakete Kuzhinieri", "Kapele Kuzhinieri", "Pantallona Kuzhinieri", "Kemishe", "Perparese", "Papion, Kravate", "Pantallona kamarieri", "Bluze", "Fund", "Jelek kamarieri", "Doreza"], "filtro_sipas_markës": []}	66
67	{"lloji": ["letër duarsh", "Zarfa ushqimi"], "filtro_sipas_markës": ["Frescovuoto", "Melissa"]}	67
68	{"lloji": ["letër duarsh"], "filtro_sipas_markës": ["MEGATEK", "BulkySoft"]}	68
69	{"lloji": ["Caj"], "filtro_sipas_markës": []}	69
70	{"lloji": ["Bredhi", "Aksesorë Binarësh"], "filtro_sipas_markës": ["JEWE"]}	70
71	{"lloji": ["Aksesore", "Panele", "Aksesorë mobiliesh"], "filtro_sipas_markës": ["MEGA PAN", "JEWE", "KRONO FLOORING", "ACCESSORIZE", "MEGATEK", "PLANTS", "FIORE", "SALICE", "kastamonu", "Pircher"]}	71
72	{"lloji": ["Shkallë papafingo dhe aksesorë"], "filtro_sipas_markës": ["JEWE", "DOLLE", "OMAN"]}	72
73	{"lloji": ["Brava", "Doreza", "Aksesorë për dyer", "Dryna", "Aksesorë për mobilje"], "filtro_sipas_markës": ["FIXON", "STV", "MASTER", "TRI-RHOMB", "MU", "CISSA", "AGB", "STARK", "`", "Fischer", "ZINCO", "DLG", "Happy Deco", "MASTER Lock"]}	73
74	{"lloji": ["Dritare PVC dhe alumini"], "filtro_sipas_markës": ["SCHLUSSEL"]}	74
75	{"lloji": ["Dyer Druri Tropikal", "Dyer Tamburat", "Dyer firzamonike PVC"], "filtro_sipas_markës": ["PASSAGGIO", "FISARMONICA", "Porte.it", "INVADO", "MADEIRA DO BRASIL", "ZINCO", "MEGA PORTE"]}	75
76	{"lloji": ["Dyer të jashtme", "Streha Mbrojtese"], "filtro_sipas_markës": ["Verdelook", "ZINCO"]}	76
77	{"lloji": ["Gure zbukurimi", "Rrethues dhe aksesore", "Vazo lulesh plastike", "Vazo druri", "Zbukurues kopshti", "Kangjella Metalike", "Pishtare", "Qirinj Citronela", "Vazo lule graniti/betoni", "Vazo lule qeramike", "Suport vazo", "Vazo metalike", "Vazo", "Vazo zbukurimi", "Mbajtëse qiriri", "Rafte", "Transportes", "Ashkla druri", "Vazo lulesh për ambient të brendshëm", "Vazo lulesh ratani", "Pjatë vazo lulesh plastike"], "filtro_sipas_markës": ["GARDENnirDESIGN", "CYCLOPS", "Decoramica", "Artplast", "FERRO CANCELLI", "Telcom", "PREMIER WOOD", "MEGATEK", "Drina", "Botanica", "Akrol", "Florey", "MESH.TEC", "DeRoma", "Florance", "Vasar", "D`PETRA", "homemotion", "Verdelook", "Galileo Casa", "Primavera", "Leader", "Sally", "Fiorella", "Liberty", "Maxi", "Record", "United Fences", "Star Cord", "Disrael", "Teraplast", "Terraneo", "AnticoMestiere", "ProsperPlast", "MILLE", "Pircher", "Pro garden", "Niet Van Toepassing", "Van der Leeden", "H &amp; S collection", "Happy Garden", "Atmosphera"]}	77
78	{"lloji": ["Gaxebo dhe Tenda", "Lisharese", "Thurje natyrale", "Plastike", "Metalike dhe Kamping", "Bar artificial", "Shatrivan"], "filtro_sipas_markës": ["Keter"]}	78
79	{"lloji": ["Humus, pesticide, fara bimesh", "Bimë Aromatike", "Lule dhe bimë për ambiente të jashtme", "Fidanë dhe Pemë frutore", "Fara Lulesh dhe bimësh", "Lule dhe bimë për ambiente të brëndshme", "Humus dhe&nbsp; Ushqyes për lule dhe Bimë"], "filtro_sipas_markës": ["Brixo", "FLORTIS Long", "PLANTS", "Endri Gips", "Bavicchi", "Pro garden"]}	79
80	{"lloji": ["Korrese bari", "Prerese bari", "Prerese ligustrash", "Pompa lavazhi", "Fshesa elektrike", "Sharra Kopshtarie", "Aksesorë për vegla kopshti"], "filtro_sipas_markës": ["SKIL", "STANLEY", "Brixo", "BOSCH", "Black&amp;Decker", "Bosch Jeshil", "Wurth", "Einhell", "Green Cat", "NIKLAS", "Alpina", "DAEWOO", "Oleo-Mac", "ELSEA"]}	80
81	{"lloji": ["Korrese bari", "Prerese bari", "Prerese ligustrash", "Pompa spekatese"], "filtro_sipas_markës": ["BOSCH", "Black&amp;Decker", "Bosch Jeshil", "Wurth", "Einhell"]}	81
82	{"lloji": ["Korrese bari", "Sharra Kopshtarie"], "filtro_sipas_markës": ["Einhell", "Alpina", "DAEWOO", "GTL", "Oleo-Mac"]}	82
83	{"lloji": ["Vegla agrobujqesore", "Vegla per bime", "Te tjera vegla kopshti dhe aksesore", "Vegla prerese", "Sprucator", "Rakorderi", "Artikuj Mbrojtes"], "filtro_sipas_markës": ["WORTH", "EDEN JARDIN", "Brixo", "MASTER FORCE", "Black&amp;Decker", "Verdelook", "Fiskars", "Benman", "Wurth", "gardenBreak", "Green Seasons"]}	83
84	{"lloji": ["Tuba", "Programator per sisteme ujitje", "Elektrovalvula", "Sensor shiu", "Sprucator", "Rakorderi"], "filtro_sipas_markës": ["PALAPLAST", "EDEN JARDIN", "K.TSALERS", "Iris", "RAIN BIND", "ACQUASAN", "Claber", "Green Seasons", "Agri Pipe", "YOYO"]}	84
85	{"lloji": ["Aksesore", "Barbekju guri", "Barbekju me qymyr", "Barbekju me gaz", "Aksesorë gatimi profesional", "Aksesorë pastrimi", "Barbekju dhe furra me dru", "Hell dhe aksesorë", "Qymyr dhe ndezës", "Tenda dhe mbulesa", "Zgara dhe tava", "Aksesorë servirje", "Hell dhe aksesorë", "Erza per gatim"], "filtro_sipas_markës": ["Kronstar Oven &amp; Grill", "Mr.Grill", "Diavolina", "Eco Fiamma", "El Gaucho", "Vaggan", "Grill"]}	85
86	{"lloji": ["Tapatrice", "Shishe"], "filtro_sipas_markës": []}	86
87	{"lloji": ["Kosha mbeturinash", "Rafte dhe dollape", "Aksesorë të tjerë"], "filtro_sipas_markës": ["Artplast", "all4bath", "Galileo Casa", "Claber", "Stefanplast", "MILLE", "Pro garden", "I.C.S."]}	87
88	{"lloji": ["Insekticide"], "filtro_sipas_markës": ["Mayer", "Spira"]}	88
89	{"lloji": ["Rakorderi bakri"], "filtro_sipas_markës": []}	89
90	{"lloji": ["Aksesorë për vegla kopshti", "Magazina dhe organizim"], "filtro_sipas_markës": ["SKIL", "FALCON", "BOSCH", "Bosch Jeshil", "Wurth", "Oregon", "Green Cat", "Carlton"]}	90
91	{"lloji": ["Artikuj Plazhi", "Aksesorë plazhi"], "filtro_sipas_markës": ["Galileo Casa"]}	91
92	{"lloji": ["Plastike"], "filtro_sipas_markës": ["Artplast"]}	92
93	{"lloji": ["Artikuj Plazhi"], "filtro_sipas_markës": []}	93
94	{"lloji": [" Fshesa dhe aksesorë"], "filtro_sipas_markës": ["Verdelook"]}	94
95	{"lloji": ["Bojra per jashte"], "filtro_sipas_markës": ["Bitex", "Nirlat", "Isomat", "Deutsch Color"]}	95
99	{"lloji": ["Bojra metali"], "filtro_sipas_markës": ["Nirlat", "Arexons", "Deutsch Color"]}	99
100	{"lloji": ["Letra muri", "Vegla per letra muri", "Ngjitës"], "filtro_sipas_markës": ["Bison", "Komar", "Erismann", "Marlburg", "Metylan"]}	100
101	{"lloji": ["Tretes"], "filtro_sipas_markës": ["MULTICHIMICA", "Decotric", "Nirlat", "Arexons", "Deutsch Color"]}	101
102	{"lloji": ["Sprai"], "filtro_sipas_markës": ["Brixo", "COLORS"]}	102
103	{"lloji": ["Ngjites"], "filtro_sipas_markës": ["UHU", "Loctite", "TESA", "Brixo", "Ceresit", "Bison", "Moment", "Erismann", "LION", "Wurth", "Metylan", "Eurocel", "Pattex", "GEKO", "Akfix"]}	103
104	{"lloji": ["Furca lyerje", "Zgjatues", "Mikser boje", "Rollone lyerje and Bishta", "Zmerilues", "Pistolete silikoni", "Vegla te tjera"], "filtro_sipas_markës": ["DECO MART", "Mega Color", "Dekor", "Brixo", "Bison", "EASY ART", "MU", "MAXTOP", "Tactix", "Tactix-Onsite", "Morris", "Benman", "Einhell", "Fischer", "Orient", "Nespoli"]}	104
105	{"lloji": ["Silikon"], "filtro_sipas_markës": ["Ceresit", "Bison", "Wurth", "Fischer", "Akfix", "MEKK EXPERT"]}	105
106	{"lloji": ["Vegla pune të tjera ndërtimi"], "filtro_sipas_markës": ["Dekor"]}	106
107	{"lloji": ["Bojra dekorative", "Bojera akrilike", "Bojera vaji", "Bojra per xham dhe qeramik", "Bojera efekt metalik"], "filtro_sipas_markës": ["Cadence", "Winsor", "BOSCH", "Amaya", "Artico"]}	107
108	{"lloji": ["Penela per boje akrilike", "Penela per boje vaji"], "filtro_sipas_markës": ["Cadence", "Amaya", "Artico"]}	108
109	{"lloji": ["Shufra druri", "Shufra Polistireni", "Korniza Inoksi", "Korniza Xhami", "Korniza PVC", "Korniza MDF", "Korniza druri"], "filtro_sipas_markës": ["homemotion", "Disrael", "Niet Van Toepassing", "H &amp; S collection", "Atmosphera"]}	109
110	{"lloji": ["Piktura orgjinale", "Piktura të printuara", "Fotografi"], "filtro_sipas_markës": ["NatyrART", "DeART", "Atmosphera"]}	110
111	{"lloji": ["Pasqyra", "Aksesorë për korniza", "Tavaloz", "Spatula", "Telajo", "Mbajtëse lapsi", "Album për foto"], "filtro_sipas_markës": ["Cadence", "Galileo Casa"]}	111
112	{"lloji": ["Tuba", "Rakorderi", "Kabine zjarrfikse", "Hidrant", "Sperkates Zjarrfikes", "Fikese zjarri", "Te tjera"], "filtro_sipas_markës": ["MOBIAK"]}	112
113	{"lloji": ["Rakorderi", "Saracineska", "Fllanxha", "Matesa Uji", "Valvula moskthimi", "Filtra uji"], "filtro_sipas_markës": ["DROP"]}	113
114	{"lloji": ["Valvula bakri", "Tuba bakri", "Tuba PPR", "Tuba Multistrat", "Tuba fleksibël", "Rakorderi Multistrati", "Rakorderi PPR", "Tuba të galvanizuar", "Tuba dhe rakorderi PVC", "Rakorderi te galvanizuara", "Rakorderi PE", "Rakorderi PP", "Aksesorë të tjerë", "Rakorderi Bronxi", "Valvula Bronxi"], "filtro_sipas_markës": ["RBM", "Agru", "OTER", "Toro", "Rietti", "NORTHCON", "Loctite", "Aqua filter", "TECHNOMETAL", "Brixo", "Confort", "Teqja", "CIM", "NTM Italy", "pro-For Tec", "SAB", "IZOTERM", "Wurth", "Tecnoresine", "ARCO", "MATEU", "DLG", "LABOR", "Luxor", "MT Spain", "ECOSOFT"]}	114
115	{"lloji": ["Dryna", "Te tjera", "Dado dhe bullona", "Aksesore Montimi", "Vida druri", "Kuti Postare"], "filtro_sipas_markës": ["STANLEY", "BOSCH", "Ceresit", "DEWALT", "Bosch Jeshil", "Einhell"]}	115
116	{"lloji": ["Vegla pune te tjera ndertimi", "Nivel", "Çekiç", "Sopata dhe sqeparë", "Shënues", "Metër", "Rula për lyerje dhe bishta ruli", "Sharra dore"], "filtro_sipas_markës": ["Dekor", "STANLEY", "LAND", "BETA", "MU", "Tactix", "EXCELLENT CARPET"]}	116
117	{"lloji": ["Artikuj Mbrojtes", "Veshje pune sigurie", "Sinjalistike dhe siguri rrugore", "Veshje pune dhe sigurie", "Artikuj mbrojtës me një përdorim"], "filtro_sipas_markës": ["VENUSbe", "SKIL", "BSL", "Bosch Jeshil", "Cofra", "Benman", "Smarwell", "Satexo", "PORTWEST"]}	117
118	{"lloji": ["Zmerilues", "Matrapik", "Trapan", "Vidator", "Fresibel", "Zdrukth", "Freze", "Sharra bango", "Sharra sege", "Sharra shpate", "Perzjeres kolle", "Pistolete ngrohese", "Pistoletë lyerje", "Te tjera vegla elektrike"], "filtro_sipas_markës": ["Prostart", "Kinstorm", "SKIL", "Kinway", "BOSCH", "Kraft", "Black&amp;Decker", "DEWALT", "BETA", "Bosch Jeshil", "Dremel", "Einhell", "Stanley-FatMax"]}	118
119	{"lloji": ["Matrapik", "Trapan", "Vidator", "Fresibel", "Sharra sege", "Trapan me bateri", "Mjete matese", "Bateri dhe karikues"], "filtro_sipas_markës": ["SKIL", "BOSCH", "Black&amp;Decker", "DEWALT", "Bosch Jeshil", "Einhell"]}	119
120	{"lloji": ["Sharra sege", "Punto metali", "Punto betoni", "Punto druri", "Punto SDS Plus", "Punto SDS Max", "Dalta SDS Plus", "Dalta SDS Max", "Disk metali", "Disk betoni", "Disk druri", "Leter zmerile", "Lama sharre sege", "Furce teli", "Koka freze", "Mandrino", "Qeleshe luçidimi", "Gota shpimi", "Maje kacavide", "Aksesore për Minizmerilues", "Gure zmeril"], "filtro_sipas_markës": ["SKIL", "Kinway", "STANLEY", "Masterpac", "Brixo", "Shall", "BOSCH", "Black&amp;Decker", "DEWALT", "BETA", "MU", "Bosch Jeshil", "Dremel", "Gymbit", "Morris", "Benman", "Wurth", "Einhell", "Smirdex", "Ototop"]}	120
121	{"lloji": ["Cekic", "Nivel", "Sharra dore", "Sopate&amp;Sqepare", "Dalta", "Vegla pune te tjera ndertimi", "Produkte te tjera sigurie", "Celesa", "Kacavide", "Pince", "Kriket dhe aksesore", "Morsa dhe Morseta", "Lima", "Kuti veglash dhe bango", "Sete veglash mekanike", "Vegla pune te tjera mekanike", "Prerese dhe thika", "Vegla të tjera", "Vegla Ajri"], "filtro_sipas_markës": ["GREAT WALL", "STANLEY", "LAND", "Brixo", "MASTER", "MANO", "MASTER FORCE", "FORCE", "BETA", "MU", "Dremel", "MAXTOP", "Tactix", "Tactix-Onsite", "Einhell", "CURVER"]}	121
122	{"lloji": ["Meter", "Metër", "Gone", "Metra dhe Nivelues lazer"], "filtro_sipas_markës": ["STANLEY", "Brixo", "BOSCH", "Black&amp;Decker", "DEWALT", "BETA", "MU", "Bosch Jeshil"]}	122
123	{"lloji": ["Aksesore per makina"], "filtro_sipas_markës": ["SONAX", "Motox", "Petex", "Glipart", "Wurth", "PETEK"]}	123
124	{"lloji": ["Maska mbrojtese"], "filtro_sipas_markës": []}	124
125	{"lloji": ["Dosje me mekanizëm", "Dosje arkive", "Dosje arkive me llastik", "Dosje konference", "Dollape dhe rafte", "Dosje me buton", "Dosje me unaza"], "filtro_sipas_markës": ["ARK", "Noki", "Exacompta", "Esselte", "Idea", "Arcasud", "Office", "Fellowes", "Globox", "Europe", "Progres", "Blasetti", "Fornax", "Deli", "For Office", "IL GUARDIANO"]}	125
126	{"lloji": ["Lapsa / Portamina", "Evidenziatore / Markera", "Stilolapsa / Stilografe", "Korrektor", "Ngjitës letre", "Gomë", "Vizore"], "filtro_sipas_markës": ["UHU", "BIC", "ARK", "Noki", "Siam", "Eagle", "Lebez", "Memories Precious", "3A", "Smart", "Uni", "Niji", "Globox", "Fila", "Lyra", "Glass4You", "Herevin", "FC", "Deli", "Tratto", "Hi-Text", "Topwrite", "Carioca", "Staedtler", "Faber-Castell", "Hello", "Miniso", "Must"]}	126
127	{"lloji": ["Organizues tavoline"], "filtro_sipas_markës": ["ARK", "Siam", "Esselte", "Memories Precious", "Herevin", "Fornax", "Deli", "Double A"]}	127
128	{"lloji": ["Pajisje lidhëse"], "filtro_sipas_markës": ["ARK", "Noki", "Siam", "Eagle", "Lebez", "Memories Precious", "3A", "Smart", "Fornax", "IDEAL", "Deli"]}	128
129	{"lloji": ["Zarfe", "Letër", "Blloqe shënimi, fletore"], "filtro_sipas_markës": ["BIC", "Ariston", "Siam", "Eagle", "Esselte", "Globox", "Fabriano", " Pigna", "Markin", "Progres", "Renz-Ideal", "Kosta", "Blasetti", "Fornax", "Deli", "Deluxe", "Disney", "BRILLIANT", "Double A", "Cartolandia", "Miniso"]}	129
130	{"lloji": ["Krijimtari për fëmije"], "filtro_sipas_markës": ["BIC", "Hello Partner", "Lebez", "Memories Precious", "3A", "Niji", "Fila", "Deli", "Primo", "Disney", "Giotto", "Luna", "Carioca"]}	130
131	{"lloji": ["Tempera, bojëra dhe lapostila"], "filtro_sipas_markës": ["BIC", "Memories Precious", "Uni", "Fila", "Tratto", "Primo", "Giotto", "Carioca", "Vneeds", "Miniso"]}	131
132	{"lloji": ["CD", "USB"], "filtro_sipas_markës": ["Verbatim", "OMEGA", "Sony"]}	132
133	{"lloji": ["Të tjera", "Aksesore"], "filtro_sipas_markës": ["ARK", "Siam", "Memories Precious", "Fellowes", "Renz-Ideal", "RECO", "Topwrite"]}	133
134	{"lloji": ["Varëse rrobash &amp; Mbajtëse çadrash", "Kosha mbeturinash", "Organizues tavoline"], "filtro_sipas_markës": ["Artplast", "all4bath", "RELAX", "homemotion", "ARK", "BALIOUSKAS", "Galileo Casa", "Stefanplast", "MILLE", "Niet Van Toepassing", "Miniso"]}	134
135	{"lloji": ["Tabela"], "filtro_sipas_markës": ["Lebez", "Memories Precious", "Globox", "Fila", "Fornax", "Naga"]}	135
136	{"lloji": ["Makinë llogaritëse"], "filtro_sipas_markës": ["Memories Precious", "Canon", "Deli"]}	136
137	{"lloji": ["Bokse", "Kufje", "Video projektor", "Ekran projektori", "MP3 &amp; MP4"], "filtro_sipas_markës": ["Canon", "OMEGA", "Acer", "Elektra", "Grundig", "Remax", "Miniso", "Motorola"]}	137
138	{"lloji": ["Mause", "Tastiera", "Karikues", "Aksesorë", "Printera", "PC"], "filtro_sipas_markës": ["BOSCH", "OMEGA", "PLATINET", "HP", "Samsung", "Glipart", "Lexmark", "Grundig", "Kinzo", "Dunlop", "Bavin", "Auris", "Miniso"]}	138
139	{"lloji": ["Kabëll MICRO USB/USB", "Kabëll zgjatues USB/MR", "Kabëll networku"], "filtro_sipas_markës": ["PLATINET", "Grundig", "Remax", "Budi"]}	139
140	{"lloji": ["Çanta për kamer", "Të tjera", "Çanta për laptop", "Canta shkolle", "Kuleta shkolle"], "filtro_sipas_markës": ["Memories Precious", "PLATINET", "Herevin", "Disney", "Slazenger", "Miniso"]}	140
141	{"lloji": ["Pastrues"], "filtro_sipas_markës": ["PLATINET", "Grundig"]}	141
142	{"lloji": ["Aromatikë", "Veshje për sedilje", "Masazh për sedilje", "Tapete Makine", "Veshje Timoni", "Mbrojtëse dielli"], "filtro_sipas_markës": ["Petex", "Areon", "Wunder Baum", "Arexons", "Glipart", "Wurth", "Maranello", "Ototop", "Little Joe"]}	142
143	{"lloji": ["Solucione dhe aditivë"], "filtro_sipas_markës": ["SONAX", "Motox", "ADDINOL", "Arexons", "OMV Petrol", "LION", "Wurth", "Isomat", "Durance"]}	143
144	{"lloji": ["Trajtues të brendshëm", "Trajtues të jashtëm"], "filtro_sipas_markës": ["SONAX", "Motox", "Arexons", "Marpa", "Wurth", "Durance", "Maranello", "Ototop"]}	144
145	{"lloji": ["Fshirëse Xhami", "Aksesorë Emergjence", "Aksesorë të tjerë"], "filtro_sipas_markës": ["SONAX", "SKIL", "Petex", "Areon", "Black&amp;Decker", "Purgator", "AutoPractic", "Arexons", "K2", "Glipart", "Wurth", "Einhell", "Orient", "Grundig", "Dunlop", "MITUTOYO", "Ototop", "Esy sock"]}	145
146	{"lloji": ["Llamba Philips", "Llamba të tjera"], "filtro_sipas_markës": ["Philips", "narva", "GP", "EMOS", "Dunlop", "NAKAMOTO", "MITUTOYO"]}	146
147	{"lloji": ["Zgara", "Valixhe", "te tjera"], "filtro_sipas_markës": ["Life Glass", "Ototop"]}	147
148	{"lloji": ["Kallama dhe makineta", "Grepa", "Imitues", "Plumbçe", "Aksesorë të tjerë peshkimi", "Filispanjë"], "filtro_sipas_markës": ["Omer", "Trabucco", "Shimano", "Rapala Max Rap", "Lineaeffe", "XQ MAX", "Colmic"]}	148
149	{"lloji": ["Artikuj kampingu"], "filtro_sipas_markës": []}	149
150	{"lloji": ["Biçikleta", "Aksesorë"], "filtro_sipas_markës": ["Brixo", "MAX", "EMOS", "MAX Bicycles", "Dunlop", "XQ MAX", "Ototop"]}	150
151	{"lloji": ["Palestra"], "filtro_sipas_markës": ["PREMIER WOOD", "Elite", "Gymbit", "Majestic", "Slazenger", "XQ MAX", "TRY&amp;DO"]}	151
152	{"lloji": ["Artikuj Sportiv", "Të tjera", "Canta pazari"], "filtro_sipas_markës": ["OMEGA", "Grundig", "Trend", "Dunlop", "Donnay"]}	152
153	{"lloji": ["Valixhe dhe çanta udhëtimi"], "filtro_sipas_markës": ["Xavax", "Dunlop", "XQ MAX"]}	153
154	{"lloji": ["Aksesorë kampingu", "Canta kampingu", "Gatim për kamping", "Jastëk dhe fjetje", "Tavolinë dhe stola kampingu", "Tenda dhe aksesorë", "Termus kampingu"], "filtro_sipas_markës": ["Fiskars", "Rica", "Bestway", "RedCliffs"]}	154
155	{"lloji": ["Frigoriferë"], "filtro_sipas_markës": ["Fuego", "Beko", "Ariston", "Brixo", "Electrolux", "Gio'Style", "LG", "Elektra", "Alpina", "HYUNDAI", "candy", "Hoobart", "Haier", "MIDEA", "HOTPOINT"]}	155
156	{"lloji": ["Lavatrice dhe tharëse"], "filtro_sipas_markës": ["Fuego", "Beko", "Ariston", "Panasonic", "LG", "Samsung", "Elektra", "candy", "Haier", "MIDEA", "HOTPOINT"]}	156
157	{"lloji": ["Paisje Gatimi", "Aspirator", "Furrë", "Mikrovalë", "Të tjera", "Vatër Gatimi"], "filtro_sipas_markës": ["Fuego", "Beko", "BOSCH", "Electrolux", "IMETEC", "MAX", "Samsung", "Elektra", "HYUNDAI", "candy", "Delimano", "EMOS", "Hoobart", "Atlantik", "AEG", "Elica", "Tecnowind", "Xavax", "cook", "Kooper", "Simfer", "Dunlop", "ATLANTIC", "HOTPOINT"]}	157
158	{"lloji": ["Lavastovilje"], "filtro_sipas_markës": ["Beko", "Elektra", "candy"]}	158
159	{"lloji": ["Shtrydhëse frutash", "Bërës kafeje dhe caji", "Friteza", "Përkujdesje për flokët dhe makina rroje", "Miksera", "Makina qepëse dhe hekur rrobash", "Thekës buke dhe zgara elektrike", "Paisje të tjera", "Ngrohës uji"], "filtro_sipas_markës": ["De Longhi", "Philips", "Fuego", "Beko", "Sinbo", "BOSCH", "Vortice", "Black&amp;Decker", "Electrolux", "IMETEC", "Gio'Style", "MAX", "Braun", "Severin", "Deluxe", "NIKLAS", "Alpina", "Russell Hobbs", "Remington", "Grundig", "ROWENTA", "Duracell", "Delimano", "EMOS", "Hoobart", "Rovus", "DAEWOD", "Tefal", "Hoover", "Hama", "Xavax", "Meliconi", "Krups", "Kooper", "GELO", "ISKRA", "Brita", "ETA", "Dunlop", "ADLER", "MESKO", "CARMY", "Lavazza", "CAMRY", "FIVE Simply smart"]}	159
160	{"lloji": ["Fshesa me vakum"], "filtro_sipas_markës": ["Philips", "Fuego", "Beko", "BOSCH", "Black&amp;Decker", "IMETEC", "MAX", "Samsung", "Elektra", "ROWENTA", "Rovus", "Hoover", "Kooper", "Zelmer", "ETA", "Dunlop"]}	160
161	{"lloji": ["Televizorë", "Sisteme Audio dhe Video"], "filtro_sipas_markës": ["Philips", "Fuego", "Alcad", "LG", "Elektra", "HYUNDAI", "Grundig", "EMOS", "Hoobart", "Meliconi", "Kooper", "Haier", "Dunlop", "Motorola"]}	161
162	{"lloji": ["Ushqime për qen", "Ushqime për mace", "Aksesorë për ushqim", "Ushqime për kafshë të tjera"], "filtro_sipas_markës": ["Miglior Cane", "Miglior Gatto", "Cocco", "CURVER", "Tetra", "Trixie", "Laky", "Versele-Laga"]}	162
163	{"lloji": ["Shampo", "Furca dhe krehëra", "Të tjera"], "filtro_sipas_markës": ["Miglior Gatto", "Cocco", "CURVER", "Tetra", "Trixie", "8 in 1", "Versele-Laga", "DAC"]}	163
164	{"lloji": ["Qafore", " Zinxhirë dhe litarë", "Lodra", "Të tjera", "Transportues"], "filtro_sipas_markës": ["Cocco", "Trixie", "Biozoo"]}	164
165	{"lloji": ["Ndenjëse", "Kolibe druri", "Kolibe plastike"], "filtro_sipas_markës": ["CURVER", "Trixie", "Biozoo"]}	165
166	{"lloji": ["Aksesorë", "Te tjera"], "filtro_sipas_markës": ["Kalif", "Tetra", "Trixie"]}	166
167	{"lloji": ["Varëse rrobash", "Rafte dhe dollape", "Kuti plastike", "Qese plastike", "Të tjera", "Kuti plastike", "Rafte dhe dollape", "Kuti magazinimi", "Kuti tekstili"], "filtro_sipas_markës": ["Brixo", "Artplast", "MEGATEK", "Drina", "Ippa", "DEA home", "Home Style", "BALIOUSKAS", "Eliplast", "Verdelook", "Fischer", "IL GUARDIANO", "CURVER", "Storage solutions", "Niet Van Toepassing", "KIS", "Solenne", "Atmosphera", "FIVE Simply smart"]}	167
168	{"lloji": ["Aksesorë lavanderie", "Tavolina hekurosje", "Nderëse rrobash", "Kosha rrobash", "Kova dhe legena", "Kuti plastike", "Kuti tekstili", "Detergjentë", "Shkallë"], "filtro_sipas_markës": ["Vileda", "Artplast", "Drina", "all4bath", "De'Casa", "Ippa", "Arix", "LOGEX", "Home Style", "BALIOUSKAS", "Sanitec", "Eliplast", "Verdelook", "Galileo Casa", "Stefanplast", "SISMA", "CURVER", "MILLE", "Calgon", "COLOMBO", "MSV", "Ultra clean", "ItalCasa", "Metaltex", "KIS", "Atmosphera"]}	168
169	{"lloji": ["Qese mbeturinash"], "filtro_sipas_markës": []}	169
170	{"lloji": ["Lodra", "Dekorime", "Kuklla për beba", "Lodra edukative", "Pistolete", "Herojtë Marvel", "Lojra zbavitëse", "Lodra pellushi", "Makina për Femijë", "Kuklla dhe shtëpi kukllash", "Zbavitëse për beba", "Lodra për beba", "Tapete pazell", "Lol", "Aksesorë dhome", "Magazinim", "Pazell", "Plastelina", "Robote transformers", "Lodra për vajza"], "filtro_sipas_markës": ["Artemis", "MEGATEK", "homemotion", "Niji", "Lorelli®", "Pino", "albas", "bildo", "Disney", "Hasbro", "Banbao", "Barbie", "Fisher Price", "Hatchimals", "Hotwheels", "Bunchem", "Other Spin Master", "Globo", "Kingdom Toy", "Paw Patrol", "Kinetic Sand", "GREAT FRIEND", "ANIMAL WORLD", "Quercetti Montesori", "L.O.L", "Miniso", "Lisciani"]}	170
171	{"lloji": ["Higjenë", "Përkujdesje", "Aksesore dushi për fëmijë", "Aksesor per bebe", "Kujdesi per beben"], "filtro_sipas_markës": ["Drina", "Cotoneve", "BALIOUSKAS", "Lorelli®", "PENATEN", "Miniso", "Borotalco", "Felce Azzurra"]}	171
172	{"lloji": ["Krevate", "Tavolina", "Karrige", "Kuti magazinimi", "Ambazhure"], "filtro_sipas_markës": ["MEGATEK", "Adore", "BALIOUSKAS", "Lorelli®"]}	172
173	{"lloji": ["Çarçafë &amp; Këllëfë Jastëku", "Batanije &amp; Jorganë", "Jastëkë &amp; Mbrojtës", "Dyshekë &amp; Mbrojtës", "Body dhe corape", "Peshqirë"], "filtro_sipas_markës": ["Marta Marzotti", "Andy&amp;Helen", "MEGATEK", "Dormeo", "Pierre Cardin", "Lorelli®", "Ibaby"]}	173
174	{"lloji": ["Karroca", "Karrige Makine", "Krevate shtrati për beba"], "filtro_sipas_markës": ["Lorelli®", "Deluxe", "baby world"]}	174
175	{"lloji": ["Karrige Ngrënie", "Ngrënie"], "filtro_sipas_markës": ["Lorelli®", "douceur d'intérieur®", "CURVER"]}	175
176	{"lloji": ["Aksesorë mbrojtës"], "filtro_sipas_markës": ["MEGATEK"]}	176
177	{"lloji": ["Fjogo për flokë"], "filtro_sipas_markës": []}	177
178	{"lloji": ["Ora", "Piktura", "Tabela &amp; varëse", "Pasqyra"], "filtro_sipas_markës": ["MEGATEK", "homemotion", "BALIOUSKAS", "Galileo Casa", "Disrael", "Niet Van Toepassing", "H &amp; S collection", "Happy Deco", "Metaltex", "Atmosphera"]}	178
179	{"lloji": ["Perde", "Perde moderne", "Metrazhe", "Aksesore për perde", "Perde ndarëse"], "filtro_sipas_markës": ["DECO", "Voilage", "Lux Curtain", "Glamorus", "Panneau", "Rideau", "Verdelook"]}	179
180	{"lloji": ["Korniza metalike", "Shina për perde", "Korniza druri"], "filtro_sipas_markës": ["VENUSbe", "ESTILO DE DISEGNO", "ART&amp;DÉCOR", "Swish", "Ateliers"]}	180
181	{"lloji": ["Grila veneciane", "Grila roll dhe romane"], "filtro_sipas_markës": ["RELAX", "Verdelook"]}	181
182	{"lloji": ["Lidhësa për perde", "Unaza dhe Shirita"], "filtro_sipas_markës": []}	182
183	{"lloji": ["Qirinj", "Qirinj aromatikë"], "filtro_sipas_markës": ["Aromatherapy Candle", "Fragrant Reflections", "Bougles Parfumées", "Alpina"]}	183
184	{"lloji": ["Mokete dhe Linoleume", "Tapetë të punuar me dorë", "Tapetë", "Rrugica", "Lëkurë deleje natyrale", "Shtrojë dere"], "filtro_sipas_markës": ["CABALIER", "Gallery", "Crystal", "Shaggy", "Soraya", "Gioia", "Jasmina", "Vera", "Carmina", "RAMSES", "Romance", "Tapis", "Kansas Malaidory Shaggy", "Harmony Shaggy", "Sahara Shaggy", "Vivace"]}	184
185	{"lloji": ["Mbulesa familjare", "Mbulesa HO.RE.CA", "Shtroja tavoline", "Mbulesa PVC"], "filtro_sipas_markës": ["MEGATEK", "Galileo Casa", "Decorama", "Atmosphera", "Secret de Gourmet"]}	185
186	{"lloji": ["Vazo Xhami", "Vazo Qeramike", "Vazo Lulesh", "Dekorime Tavoline", "Mbajtëse Qiri", "Gurë/rërë dekorimi", "Vazo Metalike"], "filtro_sipas_markës": ["Elegance", "MEGATEK", "giardinos", "D`PETRA", "homemotion", "Uniglass", "BALIOUSKAS", "Galileo Casa", "Disrael", "Niet Van Toepassing", "H &amp; S collection", "Happy Deco", "Atmosphera"]}	186
187	{"lloji": ["Lule Artificaile", "Lule të Thara", "Aromatikë", "Pemë artificiale"], "filtro_sipas_markës": ["Areon", "FragranceFcelefi", "Potpourri", "homemotion", "Galileo Casa", "Emerald", "Niet Van Toepassing", "Mega green", "Happy Deco", "Home Fragrance", "Atmosphera"]}	187
188	{"lloji": ["Kosha me Thurje", "Kosh druri", "Kosh letre", "Kosh metali", "Kosh najloni", "Kosh tekstili", "Kosh me thurje"], "filtro_sipas_markës": ["Deco Casa", "Disrael", "H &amp; S collection", "Sweet Home", "Atmosphera"]}	188
189	{"lloji": ["Çanta", "Paketime", "Kuti kartoni"], "filtro_sipas_markës": ["homemotion"]}	189
190	{"lloji": ["Jastekë Dekorativë"], "filtro_sipas_markës": ["PILOW DÉCOR", "TREND MY STYLE", "ALMOHODO ESPECIAL", "douceur d'intérieur®", "H &amp; S"]}	190
191	{"lloji": ["Aksesorë qepje", "Fjongo", "Gërshërë", "Penj"], "filtro_sipas_markës": []}	191
192	{"lloji": ["Aksesorë të tjerë"], "filtro_sipas_markës": []}	192
193	{"lloji": ["Aksesorë paketimi", "Canta", "Lojra festash", "Qirinj ditëlindje", "Servirje festash", "Ambalazh paketimi", "Tollumbace", "Dekorime festash", "Dekorime te ndryshme", "Dekore dasma", "Tutu fund"], "filtro_sipas_markës": ["MEGATEK", "homemotion", "Galileo Casa", "party"]}	193
194	{"lloji": ["Mbulesa", "Mbrojtëse &amp; Mbishtresa Dysheku", "Çarçafë", "Jastëk &amp; Këllëf", "Batanije", "Dyshekë", "Jorganë"], "filtro_sipas_markës": ["BEAUTY FURNITURE", "Marta Marzotti", "MEGATEK", "Ambrosiana", "Home Linen", "Dormeo", "Co&amp;Co", "IMETEC", "LUOCA PATISCA", "Fabress", "Kid City", "MICROJERSEY", "Paulato", "douceur d'intérieur®", "Galileo Casa", "HINDU", "AMW", "Eysa", "H &amp; S collection"]}	194
195	{"lloji": ["Peshqirë", "Robdishan"], "filtro_sipas_markës": ["MEGATEK", "Feridras", "Home Sweet Home", "douceur d'intérieur®"]}	195
196	{"lloji": ["Shtrydhëse rrushi", "Tapatriçe", "Damixhanë", "Tapa", "Bidon inoxi", "Shishe", "Kontenitor", "Bidon Plastik", "Aksesorë"], "filtro_sipas_markës": ["MEGATEK", "Disrael", "H &amp; S collection"]}	196
197	{"lloji": ["Mjelëse bagëtie", "Makineri bluarje", "Aksesorë"], "filtro_sipas_markës": ["MELKMAS"]}	197
198	{"lloji": ["Freza toke", "Korrëse bari", "Prerëse bari", "Shkundëse ullinjsh", "Pompa spërkatëse", "Aksesorë", "Prerëse ligustrash"], "filtro_sipas_markës": ["ADDINOL", "MondoVerde", "Wurth", "Green Cat", "Alpina", "Keban", "DAEWOO", "GTL", "KAWASAKI", "DAEWOD", "Loncin", "Maniver", "Champion", "Oleo-Mac", "HONDA"]}	198
199	{"lloji": ["Pantallona të shkurtra", "Kanatjere", "Fustan", "Jelek", "Çorape", "Bluzë", "T-shirt", "Tuta", "Kostum", "Streçe", "Xhup", "Atlete", "Shapka"], "filtro_sipas_markës": ["IPANEMA", "KRONOS", "NIKE", "COCOMO", "LOTTO", "ELLESSE", "ADIDAS", "LONSDALE", "PUMA", "REEBOK"]}	199
200	{"lloji": ["Altete", "Xhup", "Pantallona të shkurtra", "Bokse", "Çorape", "Çantë", "Shapka", "Këpucë futbolli", "Këpucë kalçeto", "Rroba banjo", "Aksesorë", "Bluzë", "Polo", "T-shirt", "Tuta", "Kostum", "Streçe"], "filtro_sipas_markës": ["UMBRO", "RIDER", "KRONOS", "NIKE", "COCOMO", "UNDER ARMOUR", "LOTTO", "ELLESSE", "ADIDAS", "NIKE HADDAD", "LONSDALE", "PUMA"]}	200
201	{"lloji": ["Altete", "Këpucë kalçeto", "Aksesorë", "Sandale", "Çorape", "Çantë", "Marsup", "Kapele"], "filtro_sipas_markës": ["UMBRO", "KRONOS", "NIKE", "ELLESSE", "J2C", "ADIDAS", "LONSDALE", "PUMA", "REEBOK"]}	201
202	{"lloji": ["Altete", "Bluzë", "T-shirt", "Tuta", "Pantallona të shkurtra"], "filtro_sipas_markës": ["NIKE", "ADIDAS", "LONSDALE"]}	202
203	{"lloji": ["Verë e kuqe", "Shampanjë", "Whisky", "Liker", "Vodka", "Gin", "Birra", "Verë e bardhë", "Verë e gazuar/Spumante", "Konjak", "Rum", "Fërnet", "Tekila", "Uzo"], "filtro_sipas_markës": []}	203
204	{"lloji": ["Lëngje freskuese", "Pije energjike", "Kafe", "Ujë"], "filtro_sipas_markës": []}	204
205	{"lloji": ["Fruta të thata", "Çokollatë", "Biskota", "Patatina"], "filtro_sipas_markës": []}	205
206	{"ram": ["8GB", "12GB", "16GB"], "procesori": ["AMD Ryzen™ 3 3250U", "Intel® Core™ i3-9100", "Intel® Core™ i5-10400", "Intel® Core™ i5-10500", "Intel® Core™ i5-10600", "Intel® Core™ i5-1135G7", "Intel® Core™ i7-10700K", "Intel® Core™ i3-8100", "Intel® Core™ i7-10510U", "Intel® Core™ i7-8700"], "nenkategoria": ["All in One", "Desktop", "iMac"], "tipi_ekranit": ["Retina 4K", "Retina 5K"], "karta_grafike": ["AMD Radeon™ Graphics", "AMD Radeon™ Pro 5300M", "AMD Radeon™ Pro 5500M 8GB", "AMD Radeon™ RX 560X", "NVIDIA® GeForce® GT 710 2GB", "NVIDIA® GeForce® MX330 2GB", "Intel® UHD Graphics 620", "Intel® UHD Graphics 630"], "viti_i_prodhimit": ["2020"], "madhësia_ekranit": ["21.5\\"", "23.8\\"", "27\\""], "rezolucioni_ekranit": ["4096 x 2304 pixels", "5120 x 2880 pixels"], "filtro_sipas_markës": ["Acer", "Apple", "Dell", "HP"], "me_dvd__asgn__pa_dvd": ["DVD+/-RW"], "filtro_sipas_ngjyrave": ["Black", "Silver"], "memoria_hdd__asgn__ssd": ["256GB SSD", "512GB SSD", "1TB SSD"]}	206
217	{"ram": ["1.5 GB", "1GB", "2GB", "3GB", "4GB", "6GB"], "bateria": ["2,580mAh", "3,590mAh", "3200mAh", "4,200mAh", "4450mAh", "4800mAh", "4850mAh", "5100mAh", "6,580mAh", "7040mAh", "8,000mAh", "8,134mAh", "8827mAh", "Up to 10 hours", "2,750 mAh", "3,500 mAh", "4,000 mAh", "4,080 mAh", "5,000 mAh", "5000 mAh", "6,000 mAh", "6,150 mAh", "7.300 mAh"], "memoria": ["8GB", "16GB", "32GB", "64GB", "128GB", "256GB", "512GB", "1TB"], "nenkategoria": ["E-Readers", "iPad", "Android Tablets"], "refresh_rate": ["120Hz"], "tipi_ekranit": ["E Ink Carta", "LCD", "Liquid Retina", "PLS LCD", "TN", "IPS LCD", "Liquid Retina IPS LCD", "LTPS IPS LCD", "Super AMOLED", "TFT"], "lloj_i_lidhjes": ["3G", "4G", "4G / LTE", "WiFi"], "kamera_kryesore": ["Triple (12MP, 10MP, TOF 3D )", "Dual (13MP, 5MP )", "Single (12MP)", "Single (13MP)", "Single (2MP)", "Single (5MP)", "Single (8MP)"], "viti_i_prodhimit": ["2020", "2015", "2016", "2017", "2018", "2019"], "kamera_e_perparme": ["Single (0.3MP)", "VGA", "Single (1.2MP)", "Single (2MP)", "Single (5MP)", "Single (7MP)", "Single (8MP)"], "madhësia_ekranit": ["10.4\\"", "10.9\\"", "10\\"", "11\\"", "13.5\\"", "9.6\\"", "9.7\\"", "10.1\\"", "10.2\\"", "10.5\\"", "12.9\\"", "6.0\\"", "7.0\\"", "8.0\\""], "vendi_i_karikimit": ["Micro USB", "USB Type C"], "rezolucioni_ekranit": ["1024 x 600 pixels", "1200 x 2000 pixels", "1280 x 800", "1536 x 2048 pixels", "1600 x 2560 pixels", "1620 x 2160 pixels", "1640 x 2360 pixels", "1668 x 2224 pixels", "1668 x 2388 pixels", "1920 x 1200 pixels", "2160 x 1620 pixels", "2732 x 2048 pixel", "300ppi", "800 x 1280 pixels", "1200 x 1920 pixels", "1200 x 800 pixels", "1920 x 1080 pixels", "600 x 1024 pixels"], "filtro_sipas_markës": ["Amazon", "Acer", "Alcatel", "Apple", "Blackview", "Huawei", "Lenovo", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Angora Blue", "Charcoal Gray", "Chiffon Pink", "Graphite", "Iron Grey", "Mystic Black", "Mystic Bronze", "Mystic Silver", "Oxford Gray", "Platinum Grey", "Plum", "Purple", "Sandstone", "Sky Blue", "Black", "Blue", "Cloud Blue", "Gold", "Gray", "Green", "Pink", "Red", "Rose Gold", "Silver", "Space Gray", "White"]}	217
207	{"ram": ["4GB", "8GB", "12GB", "16GB", "32GB", "64GB"], "procesori": ["AMD Ryzen™ 3 3250U", "AMD Ryzen™ 3 4300U", "AMD Ryzen™ 5 4500U", "AMD Ryzen™ 5 4600HS", "AMD Ryzen™ 5 4600U", "AMD Ryzen™ 7 3700U", "AMD Ryzen™ 7 4700U", "AMD Ryzen™ 9 4900H", "AMD Ryzen™ 9 4900HS", "Apple M1", "Intel® Celeron N4020", "Intel® Core™ i3-1115G4", "Intel® Core™ i5-10300H", "Intel® Core™ i5-1030NG7", "Intel® Core™ i5-1035G4", "Intel® Core™ i5-1035G7", "Intel® Core™ i5-1038NG7", "Intel® Core™ i5-1135G7", "Intel® Core™ i5-8257U", "Intel® Core™ i7-10710U", "Intel® Core™ i7-10750H", "Intel® Core™ i7-10875H", "Intel® Core™ i7-11370H", "Intel® Core™ i7-1165G7", "Intel® Core™ m3-8100Y", "Intel® Pentium® Gold 4425Y", "Intel® Pentium® Gold 6405U", "Intel® Pentium® Silver N5030", "Microsoft SQ® 1", "AMD Ryzen™ 5 3500U", "AMD Ryzen™ 7 4800H", "Intel® Celeron® N3350", "Intel® Core™ i3", "Intel® Core™ i3-1005G1", "Intel® Core™ i5", "Intel® Core™ i5-1035G1", "Intel® Core™ i7-10510U", "Intel® Core™ i7-1065G7", "Intel® Core™ i5-10210U"], "nenkategoria": ["MacBook Air", "MacBook Pro", "2-in-1 Laptops", "Business Laptop", "Gaming Laptop", "Notebooks"], "refresh_rate": ["120Hz", "60Hz", "144Hz", "240Hz"], "karta_grafike": ["Adreno™ 685 GPU", "AMD Radeon™ Graphics", "AMD Radeon™ Graphics 2GB", "AMD Radeon™ Pro 5500M 8GB", "AMD Radeon™ Pro 5600M", "AMD Radeon™ RX 5600", "Apple (7Core)", "Apple (8Core)", "Intel® Iris® Plus", "Intel® Iris® Xe Graphics", "Intel® Iris™ Plus Graphics", "Intel® UHD Graphics 605", "Intel® UHD Graphics 615", "NVIDIA GeForce® GTX 1650 Ti 4GB", "NVIDIA GeForce® GTX 1660 Ti", "NVIDIA® GeForce® GTX 1660 Ti 6GB", "NVIDIA® GeForce® MX330 2GB", "NVIDIA® GeForce® RTX 2070 SUPER™ MaxQ 8GB", "NVIDIA® GeForce® RTX 2080 SUPER™", "NVIDIA® GeForce® RTX 3060 6GB", "NVIDIA® GeForce® RTX 3070 8GB", "NVIDIA™ GeForce® GTX 1650 Max-Q 4GB", "Radeon™ RX Vega 10 Graphics", "Radeon™ Vega 8 Graphics", "Integrated Intel HD Graphics", "Intel® HD VGA", "Intel® Iris® Plus Graphics", "Intel® Iris® Plus Graphics 645", "Intel® UHD Graphics", "Intel® UHD Graphics 600", "Intel® UHD Graphics 620", "Nvidia GeForce® GTX 1650 4GB", "Nvidia GeForce® GTX 1660 Ti 6GB", "Nvidia GeForce® RTX 2060 6GB", "Nvidia GeForce® RTX 2070 8GB", "NVIDIA® GeForce® MX230 2GB", "Nvidia® GeForce® MX250 2GB"], "viti_i_prodhimit": ["2019"], "madhësia_ekranit": ["10.5\\"", "11.6\\"", "12.3\\"", "12.4” PixelSense™", "13.5\\"", "13.3\\"", "13\\"", "14\\"", "15.6\\"", "16\\"", "17.3\\""], "filtro_sipas_markës": ["Microsoft", "MSI", "Apple", "Asus", "Dell", "HP", "Lenovo"], "me_dvd__asgn__pa_dvd": ["DVD+/-RW", "NO DVD"], "filtro_sipas_ngjyrave": ["Bronze", "Brown", "Chameleon Blue", "Dark Blue", "Grey", "Gunmetal Gray", "Platinum Grey", "Poppy Red", "Prism Gray", "Star Grey", "Black", "Blue", "Gold", "Gray", "Green", "Ice Blue", "Pink", "Red", "Silver", "Space Gray", "White"], "memoria_hdd__asgn__ssd": ["128GB eMMC", "512GB SSD + 32GB Optane", "64GB", "64GB eMMC", "2TB SSD", "512GB SSD + 1TB HDD", "128GB SSD", "256GB SSD", "512GB SSD", "1TB SSD", "128GB SSD + 1TB HDD"]}	207
208	{"ram": ["8GB"], "memoria": ["16GB", "32GB", "64GB", "128GB", "256GB", "512GB"], "read_speed": ["20 MB/s", "2000 MB/s", "420 MB/s", "10MB/s", "480MB/s", "100MB/s", "130MB/s", "150MB/s"], "write_speed": ["150 MB/s", "385 MB/s", "10MB/s", "20MB/s", "4MB/s"], "nenkategoria": ["Ram", "USB flash memory"], "filtro_sipas_markës": ["Emtec", "Crucial", "Kodak", "Baseus", "Kingston", "SanDisk", "Verbatim"]}	208
209	{"print_speed": ["up to 19 ppm", "up to 26 ppm", "up to 45 ppm", "up to 18 ppm", "up to 20 ppm", "up to 21 ppm", "up to 30 ppm", "up to 31 ppm", "up to 34 ppm", "up to 40 ppm", "up to 7.5 ppm"], "nenkategoria": ["Laser Printer", "Inkjet Printer", "Wireless Printer", "Scanner", "All-in-one Printer"], "printer_type": ["Inkjet", "Laser"], "color_capability": ["Black", "Black and White", "CMYK", "Color"], "standart_functions": ["Print, Copy, Scan &amp; Fax", "All in one", "Copy", "Copy, Print, Scan", "Print", "Scan"], "filtro_sipas_markës": ["UTAX", "Brother", "Canon", "Epson", "HP", "Xerox"]}	209
210	{"nenkategoria": ["Karikues", "Karikues Wireless", "Karikues për makinë", "Kabuj te ndryshem"], "filtro_sipas_markës": ["Joyroom", "Moxom", "Hoco", "Konfulon", "Apple", "Baseus", "LDNIO", "Remax", "Samsung", "SanDisk", "Sony", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black", "Gold", "Pink", "Red", "Silver", "White"]}	210
211	{"ram": ["512MB"], "memoria": ["256MB"], "nenkategoria": ["Router Wi-Fi", "Switch", "Extender", "Repeater", "Access Point", "Adapter", "Antenna"], "filtro_sipas_markës": ["Commando", "Pixlink", "Mercusys", "Netis", "TP-Link", "Xiaomi"]}	211
212	{"nenkategoria": ["Antivirus"], "filtro_sipas_markës": ["Kaspersky"]}	212
213	{"ram": ["8GB"], "memoria": ["250GB", "120GB", "480GB", "500GB", "128GB", "256GB", "512GB", "1TB", "2TB", "4TB"], "read_speed": ["1050 MB/s", "2000 MB/s", "450MB/s", "500 MBps", "530 MB/s", "540 MB/s", "545MB/s", "550 MB/s", "555MB/s", "480MB/s", "560MB/s", "130MB/s"], "write_speed": ["1000 MB/s", "2000 MB/s", "420MB/s", "440 MB/s", "450 MBps", "500MB/s", "515 MB/s", "530 MB/s", "80MB/s", "415MB/s", "480MB/s"], "nenkategoria": ["UPS", "SSD", "HDD i jashtem", "Monitor", "Mouse", "Tastier"], "refresh_rate": ["60Hz", "75Hz", "144Hz", "165Hz", "240Hz"], "madhësia_ekranit": ["23.8\\"", "24\\"", "25\\"", "27\\"", "31.5\\"", "32\\"", "49\\""], "rezolucioni_ekranit": ["5120 x 1440 pixels"], "filtro_sipas_markës": ["Havit", "INNOVATION IT", "Logitech", "Panther", "WD", "Crucial", "Freecom", "Gigabyte", "Intel", "Kodak", "A4Tech", "Acer", "Apple", "Asus", "Baseus", "Canon", "Dell", "Epson", "Gembird", "Genius", "HP", "Kingston", "Lenovo", "Maxtor", "Remax", "Samsung", "SanDisk", "Toshiba", "Trust", "Verbatim", "Xiaomi"], "filtro_sipas_ngjyrave": ["Berry", "Chocolate", "Dark Blue", "Dark Side of the Moon", "Grey", "Iron Grey", "Lunar Light", "Rosy Brown", "Black", "Blue", "Forest Green", "Gold", "Gray", "Green", "Pink", "Red", "Silver", "White"], "memoria_hdd__asgn__ssd": ["240GB", "480GB", "960GB"]}	213
214	{"memoria": ["250GB", "400GB", "120GB", "500GB", "16GB", "32GB", "64GB", "128GB", "256GB", "512GB", "1TB", "2TB", "4TB"], "read_speed": ["1050 MB/s", "20 MB/s", "2000 MB/s", "420 MB/s", "500 MBps", "540 MB/s", "550 MB/s", "10MB/s", "160MB/s", "170MB/s", "480MB/s", "48MB/s", "560MB/s", "80MB/s", "90MB/s", "98MB/s", "100MB/s", "130MB/s", "150MB/s", "300MB/s"], "aksesor_per": ["Kompjuter", "Tablet", "Telefon"], "write_speed": ["1000 MB/s", "150 MB/s", "2000 MB/s", "260 MB/s", "385 MB/s", "450 MBps", "500MB/s", "515 MB/s", "530 MB/s", "10MB/s", "140MB/s", "20MB/s", "480MB/s", "4MB/s", "60MB/s", "90MB/s"], "nenkategoria": ["Ftohes per laptop", "Selfie Stick", "Vegla Pune", "Bateri", "Elektrik", "Kart Memorie", "Kover", "Kufje", "Power Bank"], "madhësia_ekranit": ["11\\"", "12.9\\"", "13.3\\"", "14\\"", "15.6\\"", "15\\"", "16\\"", "17.3\\"", "7\\""], "filtro_sipas_markës": ["AKG", "AQL", "Cellularline", "Emtec", "Havit", "Honor", "HYCOO", "Imilad", "INNOVATION IT", "iPEGA", "Logitech", "Maxell", "Microsoft", "Moxom", "Oculus", "Onikuma", "Ploos", "Realme", "Tigernu", "Bose", "Cross Gear", "Fiesta", "Haylou", "Jabra", "Kodak", "Monster", "Platinet", "Proda", "Sbox", "WK", "A4Tech", "Apple", "Asus", "Baseus", "Beats", "Dell", "Gembird", "Genius", "Google", "Hitachi-LG", "HP", "JBL", "Kingston", "LDNIO", "Lenovo", "Omega", "Panasonic", "Philips", "Picun", "QCY", "Remax", "Samsung", "SanDisk", "Sony", "TP-Link", "Trust", "TWS", "Tysso", "Uiisii", "Verbatim", "Xiaomi"], "filtro_sipas_ngjyrave": ["Dark Blue", "Dark Grey", "Grey", "Matte Black", "Meteor Silver", "Mint Green", "Mystic Black", "Mystic Bronze", "Phantom Black", "Phantom Silver", "Purple", "Starry Sky", "Teal", "Turquoise", "Yellow", "Black", "Blue", "Clear Yellow", "Cobalt Blue", "Coral", "Dusty Pink", "Fiesta Red", "Gold", "Gray", "Green", "Ice Blue", "Midnight Black", "Orange", "Pink", "Red", "Rose Gold", "Rose Red", "Silver", "Space Gray", "Stone Gray", "White"], "filtro_sipas_kapacitetit": ["10000 mAh", "1000mAh", "10050 mAh", "1050mAh", "1150mAh", "1300mAh", "20000 mAh", "22mAh", "2600mAh", "2800mAh", "30000 mAh", "3300 mAh", "4200 mAh", "450mAh", "60mA", "750mAh"]}	214
215	{"nenkategoria": ["Leter", "Bojra Printeri", "Tonera Printeri"], "color_capability": ["Black", "Cyan", "Magenta", "Yellow"], "filtro_sipas_markës": ["Deluxe", "Double A", "HP", "Omega", "Samsung", "Xiaomi"]}	215
216	{"ram": ["8MB", "512MB", "1GB", "2GB", "3GB", "4GB", "6GB", "8GB", "12GB", "4MB"], "bateria": ["1,100mAh", "1,150mAh", "2,815mAh", "3687mAh", "4,180 mAh", "4,200mAh", "4,400 mAh", "4,700mAh", "4520mAh", "4800mAh", "5,160 mAh", "5,180mAh", "5,580mAh", "7,000mAh", "1,020 mAh", "1,200 mAh", "1,450 mAh", "1,500 mAh", "3,000 mAh", "3,046 mAh", "3,110 mAh", "3,300 mAh", "3,400 mAh", "3,500 mAh", "3,969 mAh", "4,000 mAh", "4,350 mAh", "4,500 mAh", "4,650 mAh", "5,000 mAh", "5,020mAh", "5000 mAh", "6,000 mAh", "800 mAh"], "memoria": ["16MB", "4MB", "4GB", "16GB", "32GB", "64GB", "128GB", "256GB", "512GB"], "nenkategoria": ["Smartphones", "Celular me butona"], "refresh_rate": ["120Hz", "90Hz"], "tipi_ekranit": ["Dynamic AMOLED 2X, 120Hz, HDR10+", "Foldable Dynamic AMOLED 2X, 120Hz, HDR10+", "OGS", "PLS IPS", "Super AMOLED Plus", "AMOLED", "Dynamic AMOLED", "Dynamic AMOLED 2X", "IPS LCD", "Liquid Retina IPS LCD", "PLS TFT", "Super AMOLED", "Super Retina XDR OLED", "TFT"], "kamera_kryesore": ["Quad (108MP, 10MP, 10MP, 12MP)", "Quad (12MP, 12MP, 12MP, TOF 3D LiDAR)", "Quad (13MP, 8MP, 5MP, 2MP)", "Quad (16MP, 8MP, 2MP, 2MP)", "Quad (48MP, 5MP, 2MP, 2MP)", "Quad (48MP, 8MP, 5MP, 5MP)", "Quad (64MP, 13MP, 2MP, 2MP)", "Quad (64MP, 5MP, 13MP, 2MP)", "Quad (64MP, 8MP, 12MP, 5MP)", "Quad (64MP, 8MP, 5MP, 5MP)", "Triple (108MP, 12MP, 12MP)", "Triple (12MP, 12MP, 12MP)", "Triple (12MP, 64MP, 12MP)", "Triple (12MP, 8MP. 12MP)", "Triple (13MP, 2MP, 2MP)", "Triple (13MP, 5MP, 2MP)", "Triple (16MP, 2MP, 2MP)", "Triple (16MP, 8MP, 0.3MP)", "Triple (48MP, 2MP, 2MP)", "Dual (12MP, 12MP )", "Dual (12MP, 2MP )", "Dual (13MP, 2MP )", "Dual (13MP, 5MP )", "Dual (8MP, 5MP)", "Quad (108MP, 48MP, 12MP, 0.3MP)", "Quad (12MP, 64MP, 12MP, 0.3MP)", "Quad (13MP, 2MP, 0.3MP, 0.3MP)", "Quad (48MP, 12MP, 5MP, 5MP )", "Quad (48MP, 8MP, 2MP, 2MP)", "Quad (48MP, 8MP, 5MP, 2MP)", "Quad (64MP, 12MP, 5MP, 5MP)", "Single (0.3MP)", "Single (12MP)", "Single (13MP)", "Single (2MP)", "Single (3.15MP)", "Single (8MP)", "Single (VGA)", "Triple (12MP, 12MP, 12MP )", "Triple (12MP, 12MP, 16MP )", "Triple (13MP, 8MP, 5MP )", "Triple (48MP, 8MP, 5MP )"], "viti_i_prodhimit": ["2021", "2012", "2020", "2013", "2015", "2017", "2018", "2019"], "kamera_e_perparme": ["Single (40MP)", "Dual (10MP)", "Dual (12MP, SL 3D)", "Dual (40MP)", "Single (10MP)", "Single (13MP)", "Single (16MP)", "Single (20MP)", "Single (25MP)", "Single (32MP)", "Single (5MP)", "Single (8MP)"], "madhësia_ekranit": ["1.77\\"", "2.0\\"", "5.3\\"", "6.43\\"", "6.52\\"", "6.53\\"", "6.6\\"", "7.6\\"", "1.52\\"", "2.4\\"", "2.8\\"", "5.7\\"", "6.67\\"", "6.9\\"", "1.8\\"", "5.5\\"", "5.8\\"", "6.1\\"", "6.2\\"", "6.3\\"", "6.4\\"", "6.5\\"", "6.7\\"", "6.8\\""], "vendi_i_karikimit": ["Micro USB", "Power bank/Reverse wireless charging", "Qi wireless charging", "USB Power Delivery 2.0", "USB Power Delivery 3.0", "USB Type C"], "rezolucioni_ekranit": ["1170 x 2532 pixels", "128 x 160 pixels", "1284 x 2778 pixels", "1440 x 3088 pixels", "1440x720 pixels", "1768 x 2208 pixels", "720 x 1600 pixels", "1080 x 2636 pixels", "128 x 128 pixels", "1440 x 3200 pixels", "240 x 320 pixels", "320 x 240 pixels", "480 x 960 pixels", "120 x 160 pixels", "600 x 1280 pixels", "720 x 1480 pixels", "1080 x 2280 pixels", "1080 x 2340 pixels", "1080 x 2400 pixels", "1125 x 2436 pixels", "1242 x 2688 pixels", "720 x 1520 pixels", "720 x 1560 pixels", "828 x 1792 pixels"], "filtro_sipas_markës": ["Motorola", "Apple", "Blackberry", "Blackview", "Doogee", "Nokia", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Aura Black", "Aura Pink", "Aura Red", "Aura White", "Aurora Blue", "Carbon Black", "Carbon Silver", "Charcoal Gray", "Cloud Navy", "Cloud Red", "Cloud White", "Fantasy Forest", "Graphite", "Grey", "Interstellar Black", "Lake Green", "Matte Black", "Midnight Grey", "Mint Green", "Mystic Black", "Mystic Bronze", "Nature Green", "Onyx Gray", "Pacific Blue", "Phantom Black", "Phantom Silver", "Phantom Violet", "Pink Pastel", "Purple", "Sea Blue", "Shadow Grey", "Sky Blue", "Sky White", "Space Blue", "Sporty Orange", "Sunrise Flare", "Sunset Red", "Aura Glow", "Black", "Blue", "Clear Purple", "Clear Yellow", "Cloud Blue", "Cobalt Blue", "Coral", "Dusty Pink", "Gold", "Gray", "Green", "Lavender Purple", "Lilac Purple", "Midnight Black", "Midnight Green", "Orange", "Prism Crush Violet", "Red", "Silver", "Space Gray", "White"]}	216
236	{"nenkategoria": ["Electric Scooters"], "filtro_sipas_markës": ["Segway", "Xiaomi"], "filtro_sipas_ngjyrave": ["Dark Grey", "Black", "Gray", "White"], "filtro_sipas_kapacitetit": ["10,000mAh"]}	237
237	{"nenkategoria": [], "kapaciteti_btu": ["12000 BTU", "18000 BTU", "24000 BTU"], "filtro_sipas_markës": ["Arielli", "AUX", "LG", "Samsung", "Skyworth"], "klas_energjie_ftohje": ["A++"], "klas_energjie_ngrohje": ["A", "A+", "A+++"]}	238
238	{"nenkategoria": ["Cleaning Devices", "LED Lamps", "Mi Home Sets", "Mi Smart Plugs", "Personal Care"], "filtro_sipas_markës": ["DreamLight", "Berrcom", "Hoco", "Baseus", "Lenovo", "Xiaomi"], "filtro_sipas_ngjyrave": ["Grey", "Black", "Blue", "White"]}	239
218	{"memoria": ["250GB", "400GB", "120GB", "500GB", "16GB", "32GB", "64GB", "128GB", "256GB", "512GB", "1TB", "2TB", "4TB"], "read_speed": ["1050 MB/s", "20 MB/s", "2000 MB/s", "420 MB/s", "500 MBps", "540 MB/s", "550 MB/s", "10MB/s", "160MB/s", "170MB/s", "480MB/s", "48MB/s", "560MB/s", "80MB/s", "90MB/s", "98MB/s", "100MB/s", "130MB/s", "150MB/s", "300MB/s"], "aksesor_per": ["Kompjuter", "Tablet", "Telefon"], "write_speed": ["1000 MB/s", "150 MB/s", "2000 MB/s", "260 MB/s", "385 MB/s", "450 MBps", "500MB/s", "515 MB/s", "530 MB/s", "10MB/s", "140MB/s", "20MB/s", "480MB/s", "4MB/s", "60MB/s", "90MB/s"], "nenkategoria": ["Ftohes per laptop", "Selfie Stick", "Vegla Pune", "Bateri", "Elektrik", "Kart Memorie", "Kover", "Kufje", "Power Bank"], "madhësia_ekranit": ["11\\"", "12.9\\"", "13.3\\"", "14\\"", "15.6\\"", "15\\"", "16\\"", "17.3\\"", "7\\""], "filtro_sipas_markës": ["AKG", "AQL", "Cellularline", "Emtec", "Havit", "Honor", "HYCOO", "Imilad", "INNOVATION IT", "iPEGA", "Logitech", "Maxell", "Microsoft", "Moxom", "Oculus", "Onikuma", "Ploos", "Realme", "Tigernu", "Bose", "Cross Gear", "Fiesta", "Haylou", "Jabra", "Kodak", "Monster", "Platinet", "Proda", "Sbox", "WK", "A4Tech", "Apple", "Asus", "Baseus", "Beats", "Dell", "Gembird", "Genius", "Google", "Hitachi-LG", "HP", "JBL", "Kingston", "LDNIO", "Lenovo", "Omega", "Panasonic", "Philips", "Picun", "QCY", "Remax", "Samsung", "SanDisk", "Sony", "TP-Link", "Trust", "TWS", "Tysso", "Uiisii", "Verbatim", "Xiaomi"], "filtro_sipas_ngjyrave": ["Dark Blue", "Dark Grey", "Grey", "Matte Black", "Meteor Silver", "Mint Green", "Mystic Black", "Mystic Bronze", "Phantom Black", "Phantom Silver", "Purple", "Starry Sky", "Teal", "Turquoise", "Yellow", "Black", "Blue", "Clear Yellow", "Cobalt Blue", "Coral", "Dusty Pink", "Fiesta Red", "Gold", "Gray", "Green", "Ice Blue", "Midnight Black", "Orange", "Pink", "Red", "Rose Gold", "Rose Red", "Silver", "Space Gray", "Stone Gray", "White"], "filtro_sipas_kapacitetit": ["10000 mAh", "1000mAh", "10050 mAh", "1050mAh", "1150mAh", "1300mAh", "20000 mAh", "22mAh", "2600mAh", "2800mAh", "30000 mAh", "3300 mAh", "4200 mAh", "450mAh", "60mA", "750mAh"]}	218
219	{"ram": ["1GB"], "memoria": ["32GB"], "nenkategoria": ["Apple Watches", "Samsung Galaxy Watches", "Xiaomi Mi Band", "Amazfit Series", "Mi Ciga Watches", "Huawei Watches"], "filtro_sipas_markës": ["Amazfit", "G-TAB", "Honor", "Imilad", "Modio", "Haylou", "Apple", "Blackview", "Doogee", "Huawei", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black/Red", "Black/Yellow", "Bronze", "Brown", "Cloud Silver", "Dark Blue", "Dark Green", "Dark Grey", "Deep Green/White", "Grey", "Light Green/White", "Matte Black", "Mystic Black", "Mystic Silver", "Nature Green", "Orange/Black", "Pink Pastel", "Pink/White", "Purple", "Sky Blue", "Yellow", "Yellow/Black", "Aqua Black", "Black", "Blue", "Clear Purple", "Cobalt Blue", "Cyan", "Gold", "Green", "Lilac Purple", "Lime Green", "Mustard Yellow", "Orange", "Pink", "Red", "Rose Gold", "Silver", "Space Gray", "White"]}	219
220	{"aksesor_per": ["Kompjuter", "Tablet", "Telefon"], "nenkategoria": ["Over-ear Headphones", "On-ear Headphones", "In-Ear Headphones", "Sports &amp; Fitness Headphones", "Noise Canceling Headphones", "Premium Headphones", "Mini Jack Headphones", "Gaming Headphones"], "filtro_sipas_markës": ["AKG", "AQL", "Cellularline", "Havit", "Honor", "HYCOO", "iPEGA", "Logitech", "Maxell", "Moxom", "Onikuma", "Ploos", "Realme", "Bose", "Jabra", "Monster", "Proda", "WK", "A4Tech", "Apple", "Baseus", "Beats", "Google", "JBL", "Lenovo", "Philips", "Picun", "QCY", "Remax", "Samsung", "Sony", "Trust", "TWS", "Uiisii", "Xiaomi"], "filtro_sipas_ngjyrave": ["Dark Blue", "Grey", "Matte Black", "Meteor Silver", "Mint Green", "Mystic Black", "Mystic Bronze", "Phantom Black", "Phantom Silver", "Starry Sky", "Teal", "Turquoise", "Yellow", "Black", "Blue", "Coral", "Dusty Pink", "Gold", "Gray", "Green", "Midnight Black", "Pink", "Red", "Rose Gold", "Silver", "Space Gray", "Stone Gray", "White"], "filtro_sipas_kapacitetit": ["22mAh", "60mA"]}	220
221	{"nenkategoria": ["LED", "QLED", "OLED"], "refresh_rate": ["100Hz"], "madhësia_ekranit": ["70\\"", "82\\"", "32\\"", "42\\"", "43\\"", "49\\"", "50\\"", "55\\"", "60\\"", "65\\"", "75\\""], "rezolucioni_ekranit": ["3840 × 2160 pixels", "7680 x 4320 pixels"], "filtro_sipas_markës": ["LG", "Lobod", "Philips", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Carbon Silver", "Black", "Silver", "Titanium Gold"]}	222
222	{"nenkategoria": ["Projektor"], "filtro_sipas_markës": ["Acer", "Canon", "Epson"]}	223
223	{"nenkategoria": ["Home Cinema", "Soundbars", "Portable Bluetooth Speakers", "Party Speakers", "Home Speakers"], "filtro_sipas_markës": ["Amazon", "Bose", "Bosnda", "Monster", "Peterhot", "Apple", "Baseus", "Beats", "Google", "Harman Kardon", "JBL", "Marshall", "Remax", "Samsung", "Seeknature", "Xiaomi"], "filtro_sipas_ngjyrave": ["Chalk White", "Champagne", "Charcoal Gray", "Copper Brown", "Glacier White", "Magenta", "Midnight Blue", "Purple", "Twilight Blue", "Yellow", "Black", "Blue", "Cinnamon", "Clear Yellow", "Cyan", "Desert Sand", "Dusty Pink", "Fiesta Red", "Forest Green", "Gray", "Green", "Midnight Black", "Mustard Yellow", "Ocean Blue", "Orange", "Pink", "Red", "River Teal", "Silver", "Space Gray", "Squad", "Steel White", "Stone Gray", "White"]}	224
224	{"ram": ["1GB", "2GB"], "memoria": ["8GB"], "nenkategoria": ["Dekoder DVB T2S2", "Chromecast", "Android Box"], "filtro_sipas_markës": ["Amazon", "Mirascreen", "Romsat", "Xiaomi"]}	225
225	{"nenkategoria": ["Mbajtese TV Muri", "Mbrojtese Tensioni"], "filtro_sipas_markës": ["Schneider Electric", "Baseus", "Gembird", "Lobod", "LogiLink", "Omega", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black", "White"]}	226
226	{"nenkategoria": ["Mavic", "Osmo", "Ronin"], "filtro_sipas_markës": ["DJI"]}	227
227	{"nenkategoria": ["Pocket Camera"], "filtro_sipas_markës": ["FeiyuTech"]}	228
228	{"nenkategoria": ["Stabilizer for Pro Cameras", "Stabilizer for Smartphones"], "filtro_sipas_markës": ["Zhiyun"]}	229
229	{"nenkategoria": ["Mi Smartphone Gimbal"], "filtro_sipas_markës": ["Apai Genie", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black", "White"]}	230
230	{"nenkategoria": ["Web Cameras", "Action Cameras", "Film Cameras"], "filtro_sipas_markës": ["Insta360", "Logitech", "Fujifilm", "GoPro", "Sony", "Xiaomi"], "filtro_sipas_ngjyrave": ["Blush Gold", "Brown", "Chalk White", "Charcoal Gray", "Glacier Blue", "Ice White", "Sky Blue", "Terracotta Orange", "Black", "Blush Rose", "Clear Purple", "Clear Yellow", "Dark Denim", "Dusty Pink", "Flamingo Pink", "Gray", "Ice Blue", "Lilac Purple", "Smokey White", "White"]}	231
231	{"aksesor_per": ["Dron"], "nenkategoria": ["Aksesore per Dron", "Aksesore per Kamera"], "filtro_sipas_markës": ["Puluz", "DJI", "Samsung", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black"]}	232
232	{"memoria": ["825GB"], "nenkategoria": ["Handheld Console", "PlayStation"], "filtro_sipas_markës": ["Sony"], "filtro_sipas_ngjyrave": ["Blue", "Orange", "Red", "White"]}	233
233	{"nenkategoria": ["Video Games", "Smart Games", "Spinners"], "filtro_sipas_markës": ["EA Sports", "PTW", "Sony"], "filtro_sipas_ngjyrave": ["Blue", "Red"]}	234
234	{"nenkategoria": ["DualShocks", "Mobile Controllers"], "filtro_sipas_markës": ["Baseus", "Sony", "Xiaomi"], "filtro_sipas_ngjyrave": ["Black", "Forest Green", "Green", "White"]}	235
235	{"nenkategoria": ["Hoverboard"], "filtro_sipas_ngjyrave": ["Pink Pastel", "Black", "Blue", "Clear Yellow", "Fiesta Red", "Forest Green", "Orange", "Pink", "Red", "White"]}	236
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.products (id, creation_time, details, owner, spot, category_id) FROM stdin;
1	16200	{"desc": "fgdgfsd", "name": "gfdsgdfg", "likes": 0, "lloji": "Biskota", "price": 5435, "likers": 0, "photos": [{"src": "https://firebasestorage.googleapis.com/v0/b/fertility-1e091.appspot.com/o/images%2FbitburgerPremiumPilsKanace%20Final.png?alt=media&token=d26a26ef-4448-4874-93b7-00ee11a9c9e8", "emri": "bitburgerPremiumPilsKanace Final.png"}], "seller": "diambishka", "priceLow": null, "kategoria": "Embëlsira dhe biskota", "sellerPhoto": null, "filtro_sipas_markës": null}	albi	AMD Radeon 580	3
2	16200	{"desc": "fgdgfsd", "name": "gfdsgdfg", "likes": 0, "lloji": "Biskota", "price": 5435, "likers": 0, "photos": [{"src": "https://firebasestorage.googleapis.com/v0/b/fertility-1e091.appspot.com/o/images%2FbitburgerPremiumPilsKanace%20Final.png?alt=media&token=d26a26ef-4448-4874-93b7-00ee11a9c9e8", "emri": "bitburgerPremiumPilsKanace Final.png"}], "seller": "diambishka", "priceLow": null, "kategoria": "Embëlsira dhe biskota", "sellerPhoto": null, "filtro_sipas_markës": null}	albi	AMD Radeon 580	8
3	16200	{"desc": "fgdgfsd", "name": "gfdsgdfg", "likes": 0, "lloji": "Biskota", "price": 5435, "likers": 0, "photos": [{"src": "https://firebasestorage.googleapis.com/v0/b/fertility-1e091.appspot.com/o/images%2FbitburgerPremiumPilsKanace%20Final.png?alt=media&token=d26a26ef-4448-4874-93b7-00ee11a9c9e8", "emri": "bitburgerPremiumPilsKanace Final.png"}], "seller": "diambishka", "priceLow": null, "kategoria": "Embëlsira dhe biskota", "sellerPhoto": null, "filtro_sipas_markës": null}	albi	AMD Radeon 580	8
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eblej_director
--

SELECT pg_catalog.setval('public.categories_id_seq', 239, true);


--
-- Name: category_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eblej_director
--

SELECT pg_catalog.setval('public.category_links_id_seq', 239, true);


--
-- Name: filters_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eblej_director
--

SELECT pg_catalog.setval('public.filters_table_id_seq', 238, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eblej_director
--

SELECT pg_catalog.setval('public.products_id_seq', 3, true);


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

