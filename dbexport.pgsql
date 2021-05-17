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
-- Name: filter1; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter1 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter1 OWNER TO eblej_director;

--
-- Name: filter10; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter10 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter10 OWNER TO eblej_director;

--
-- Name: filter100; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter100 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter100 OWNER TO eblej_director;

--
-- Name: filter101; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter101 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter101 OWNER TO eblej_director;

--
-- Name: filter102; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter102 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter102 OWNER TO eblej_director;

--
-- Name: filter103; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter103 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter103 OWNER TO eblej_director;

--
-- Name: filter104; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter104 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter104 OWNER TO eblej_director;

--
-- Name: filter105; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter105 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter105 OWNER TO eblej_director;

--
-- Name: filter106; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter106 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter106 OWNER TO eblej_director;

--
-- Name: filter107; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter107 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter107 OWNER TO eblej_director;

--
-- Name: filter108; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter108 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter108 OWNER TO eblej_director;

--
-- Name: filter109; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter109 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter109 OWNER TO eblej_director;

--
-- Name: filter11; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter11 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter11 OWNER TO eblej_director;

--
-- Name: filter110; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter110 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter110 OWNER TO eblej_director;

--
-- Name: filter111; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter111 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter111 OWNER TO eblej_director;

--
-- Name: filter112; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter112 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter112 OWNER TO eblej_director;

--
-- Name: filter113; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter113 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter113 OWNER TO eblej_director;

--
-- Name: filter114; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter114 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter114 OWNER TO eblej_director;

--
-- Name: filter115; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter115 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter115 OWNER TO eblej_director;

--
-- Name: filter116; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter116 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter116 OWNER TO eblej_director;

--
-- Name: filter117; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter117 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter117 OWNER TO eblej_director;

--
-- Name: filter118; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter118 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter118 OWNER TO eblej_director;

--
-- Name: filter119; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter119 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter119 OWNER TO eblej_director;

--
-- Name: filter12; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter12 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter12 OWNER TO eblej_director;

--
-- Name: filter120; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter120 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter120 OWNER TO eblej_director;

--
-- Name: filter121; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter121 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter121 OWNER TO eblej_director;

--
-- Name: filter122; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter122 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter122 OWNER TO eblej_director;

--
-- Name: filter123; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter123 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter123 OWNER TO eblej_director;

--
-- Name: filter124; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter124 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter124 OWNER TO eblej_director;

--
-- Name: filter125; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter125 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter125 OWNER TO eblej_director;

--
-- Name: filter126; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter126 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter126 OWNER TO eblej_director;

--
-- Name: filter127; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter127 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter127 OWNER TO eblej_director;

--
-- Name: filter128; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter128 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter128 OWNER TO eblej_director;

--
-- Name: filter129; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter129 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter129 OWNER TO eblej_director;

--
-- Name: filter13; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter13 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter13 OWNER TO eblej_director;

--
-- Name: filter130; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter130 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter130 OWNER TO eblej_director;

--
-- Name: filter131; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter131 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter131 OWNER TO eblej_director;

--
-- Name: filter132; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter132 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter132 OWNER TO eblej_director;

--
-- Name: filter133; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter133 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter133 OWNER TO eblej_director;

--
-- Name: filter134; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter134 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter134 OWNER TO eblej_director;

--
-- Name: filter135; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter135 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter135 OWNER TO eblej_director;

--
-- Name: filter136; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter136 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter136 OWNER TO eblej_director;

--
-- Name: filter137; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter137 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter137 OWNER TO eblej_director;

--
-- Name: filter138; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter138 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter138 OWNER TO eblej_director;

--
-- Name: filter139; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter139 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter139 OWNER TO eblej_director;

--
-- Name: filter14; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter14 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter14 OWNER TO eblej_director;

--
-- Name: filter140; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter140 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter140 OWNER TO eblej_director;

--
-- Name: filter141; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter141 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter141 OWNER TO eblej_director;

--
-- Name: filter142; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter142 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter142 OWNER TO eblej_director;

--
-- Name: filter143; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter143 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter143 OWNER TO eblej_director;

--
-- Name: filter144; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter144 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter144 OWNER TO eblej_director;

--
-- Name: filter145; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter145 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter145 OWNER TO eblej_director;

--
-- Name: filter146; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter146 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter146 OWNER TO eblej_director;

--
-- Name: filter147; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter147 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter147 OWNER TO eblej_director;

--
-- Name: filter148; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter148 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter148 OWNER TO eblej_director;

--
-- Name: filter149; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter149 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter149 OWNER TO eblej_director;

--
-- Name: filter15; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter15 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter15 OWNER TO eblej_director;

--
-- Name: filter150; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter150 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter150 OWNER TO eblej_director;

--
-- Name: filter151; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter151 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter151 OWNER TO eblej_director;

--
-- Name: filter152; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter152 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter152 OWNER TO eblej_director;

--
-- Name: filter153; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter153 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter153 OWNER TO eblej_director;

--
-- Name: filter154; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter154 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter154 OWNER TO eblej_director;

--
-- Name: filter155; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter155 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter155 OWNER TO eblej_director;

--
-- Name: filter156; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter156 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter156 OWNER TO eblej_director;

--
-- Name: filter157; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter157 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter157 OWNER TO eblej_director;

--
-- Name: filter158; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter158 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter158 OWNER TO eblej_director;

--
-- Name: filter159; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter159 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter159 OWNER TO eblej_director;

--
-- Name: filter16; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter16 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter16 OWNER TO eblej_director;

--
-- Name: filter160; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter160 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter160 OWNER TO eblej_director;

--
-- Name: filter161; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter161 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter161 OWNER TO eblej_director;

--
-- Name: filter162; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter162 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter162 OWNER TO eblej_director;

--
-- Name: filter163; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter163 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter163 OWNER TO eblej_director;

--
-- Name: filter164; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter164 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter164 OWNER TO eblej_director;

--
-- Name: filter165; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter165 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter165 OWNER TO eblej_director;

--
-- Name: filter166; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter166 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter166 OWNER TO eblej_director;

--
-- Name: filter167; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter167 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter167 OWNER TO eblej_director;

--
-- Name: filter168; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter168 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter168 OWNER TO eblej_director;

--
-- Name: filter169; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter169 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter169 OWNER TO eblej_director;

--
-- Name: filter17; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter17 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter17 OWNER TO eblej_director;

--
-- Name: filter170; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter170 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter170 OWNER TO eblej_director;

--
-- Name: filter171; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter171 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter171 OWNER TO eblej_director;

--
-- Name: filter172; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter172 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter172 OWNER TO eblej_director;

--
-- Name: filter173; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter173 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter173 OWNER TO eblej_director;

--
-- Name: filter174; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter174 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter174 OWNER TO eblej_director;

--
-- Name: filter175; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter175 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter175 OWNER TO eblej_director;

--
-- Name: filter176; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter176 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter176 OWNER TO eblej_director;

--
-- Name: filter177; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter177 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter177 OWNER TO eblej_director;

--
-- Name: filter178; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter178 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter178 OWNER TO eblej_director;

--
-- Name: filter179; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter179 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter179 OWNER TO eblej_director;

--
-- Name: filter18; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter18 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter18 OWNER TO eblej_director;

--
-- Name: filter180; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter180 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter180 OWNER TO eblej_director;

--
-- Name: filter181; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter181 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter181 OWNER TO eblej_director;

--
-- Name: filter182; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter182 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter182 OWNER TO eblej_director;

--
-- Name: filter183; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter183 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter183 OWNER TO eblej_director;

--
-- Name: filter184; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter184 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter184 OWNER TO eblej_director;

--
-- Name: filter185; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter185 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter185 OWNER TO eblej_director;

--
-- Name: filter186; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter186 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter186 OWNER TO eblej_director;

--
-- Name: filter187; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter187 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter187 OWNER TO eblej_director;

--
-- Name: filter188; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter188 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter188 OWNER TO eblej_director;

--
-- Name: filter189; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter189 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter189 OWNER TO eblej_director;

--
-- Name: filter19; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter19 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter19 OWNER TO eblej_director;

--
-- Name: filter190; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter190 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter190 OWNER TO eblej_director;

--
-- Name: filter191; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter191 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter191 OWNER TO eblej_director;

--
-- Name: filter192; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter192 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter192 OWNER TO eblej_director;

--
-- Name: filter193; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter193 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter193 OWNER TO eblej_director;

--
-- Name: filter194; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter194 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter194 OWNER TO eblej_director;

--
-- Name: filter195; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter195 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter195 OWNER TO eblej_director;

--
-- Name: filter196; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter196 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter196 OWNER TO eblej_director;

--
-- Name: filter197; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter197 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter197 OWNER TO eblej_director;

--
-- Name: filter198; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter198 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter198 OWNER TO eblej_director;

--
-- Name: filter199; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter199 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter199 OWNER TO eblej_director;

--
-- Name: filter2; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter2 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter2 OWNER TO eblej_director;

--
-- Name: filter20; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter20 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter20 OWNER TO eblej_director;

--
-- Name: filter200; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter200 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter200 OWNER TO eblej_director;

--
-- Name: filter201; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter201 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter201 OWNER TO eblej_director;

--
-- Name: filter202; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter202 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter202 OWNER TO eblej_director;

--
-- Name: filter203; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter203 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter203 OWNER TO eblej_director;

--
-- Name: filter204; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter204 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter204 OWNER TO eblej_director;

--
-- Name: filter205; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter205 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter205 OWNER TO eblej_director;

--
-- Name: filter206; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter206 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    "madhësia_ekranit" character varying,
    viti_i_prodhimit character varying,
    ram character varying,
    memoria_hdd__asgn__ssd character varying,
    procesori character varying,
    karta_grafike character varying,
    tipi_ekranit character varying,
    rezolucioni_ekranit character varying,
    me_dvd__asgn__pa_dvd character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter206 OWNER TO eblej_director;

--
-- Name: filter207; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter207 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    "madhësia_ekranit" character varying,
    viti_i_prodhimit character varying,
    ram character varying,
    memoria_hdd__asgn__ssd character varying,
    procesori character varying,
    karta_grafike character varying,
    me_dvd__asgn__pa_dvd character varying,
    refresh_rate character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter207 OWNER TO eblej_director;

--
-- Name: filter208; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter208 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    memoria character varying,
    ram character varying,
    write_speed character varying,
    read_speed character varying
);


ALTER TABLE public.filter208 OWNER TO eblej_director;

--
-- Name: filter209; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter209 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    printer_type character varying,
    standart_functions character varying,
    color_capability character varying,
    print_speed character varying
);


ALTER TABLE public.filter209 OWNER TO eblej_director;

--
-- Name: filter21; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter21 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter21 OWNER TO eblej_director;

--
-- Name: filter210; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter210 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter210 OWNER TO eblej_director;

--
-- Name: filter211; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter211 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    memoria character varying,
    ram character varying
);


ALTER TABLE public.filter211 OWNER TO eblej_director;

--
-- Name: filter212; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter212 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter212 OWNER TO eblej_director;

--
-- Name: filter213; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter213 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    "madhësia_ekranit" character varying,
    memoria character varying,
    ram character varying,
    memoria_hdd__asgn__ssd character varying,
    rezolucioni_ekranit character varying,
    refresh_rate character varying,
    filtro_sipas_ngjyrave character varying,
    write_speed character varying,
    read_speed character varying
);


ALTER TABLE public.filter213 OWNER TO eblej_director;

--
-- Name: filter214; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter214 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    aksesor_per character varying,
    "madhësia_ekranit" character varying,
    memoria character varying,
    filtro_sipas_ngjyrave character varying,
    write_speed character varying,
    read_speed character varying,
    filtro_sipas_kapacitetit character varying
);


ALTER TABLE public.filter214 OWNER TO eblej_director;

--
-- Name: filter215; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter215 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    color_capability character varying
);


ALTER TABLE public.filter215 OWNER TO eblej_director;

--
-- Name: filter216; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter216 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    viti_i_prodhimit character varying,
    memoria character varying,
    ram character varying,
    kamera_kryesore character varying,
    kamera_e_perparme character varying,
    tipi_ekranit character varying,
    "madhësia_ekranit" character varying,
    rezolucioni_ekranit character varying,
    bateria character varying,
    vendi_i_karikimit character varying,
    refresh_rate character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter216 OWNER TO eblej_director;

--
-- Name: filter217; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter217 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    viti_i_prodhimit character varying,
    memoria character varying,
    lloj_i_lidhjes character varying,
    ram character varying,
    kamera_kryesore character varying,
    kamera_e_perparme character varying,
    tipi_ekranit character varying,
    "madhësia_ekranit" character varying,
    rezolucioni_ekranit character varying,
    bateria character varying,
    vendi_i_karikimit character varying,
    refresh_rate character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter217 OWNER TO eblej_director;

--
-- Name: filter218; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter218 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    aksesor_per character varying,
    "madhësia_ekranit" character varying,
    memoria character varying,
    filtro_sipas_ngjyrave character varying,
    write_speed character varying,
    read_speed character varying,
    filtro_sipas_kapacitetit character varying
);


ALTER TABLE public.filter218 OWNER TO eblej_director;

--
-- Name: filter219; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter219 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    memoria character varying,
    ram character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter219 OWNER TO eblej_director;

--
-- Name: filter22; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter22 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter22 OWNER TO eblej_director;

--
-- Name: filter220; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter220 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    aksesor_per character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter220 OWNER TO eblej_director;

--
-- Name: filter222; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter222 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    "madhësia_ekranit" character varying,
    rezolucioni_ekranit character varying,
    refresh_rate character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter222 OWNER TO eblej_director;

--
-- Name: filter223; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter223 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter223 OWNER TO eblej_director;

--
-- Name: filter224; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter224 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter224 OWNER TO eblej_director;

--
-- Name: filter225; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter225 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    memoria character varying,
    ram character varying
);


ALTER TABLE public.filter225 OWNER TO eblej_director;

--
-- Name: filter226; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter226 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter226 OWNER TO eblej_director;

--
-- Name: filter227; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter227 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter227 OWNER TO eblej_director;

--
-- Name: filter228; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter228 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter228 OWNER TO eblej_director;

--
-- Name: filter229; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter229 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter229 OWNER TO eblej_director;

--
-- Name: filter23; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter23 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter23 OWNER TO eblej_director;

--
-- Name: filter230; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter230 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter230 OWNER TO eblej_director;

--
-- Name: filter231; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter231 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter231 OWNER TO eblej_director;

--
-- Name: filter232; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter232 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    aksesor_per character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter232 OWNER TO eblej_director;

--
-- Name: filter233; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter233 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    memoria character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter233 OWNER TO eblej_director;

--
-- Name: filter234; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter234 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter234 OWNER TO eblej_director;

--
-- Name: filter235; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter235 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter235 OWNER TO eblej_director;

--
-- Name: filter236; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter236 (
    nenkategori character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter236 OWNER TO eblej_director;

--
-- Name: filter237; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter237 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying,
    filtro_sipas_kapacitetit character varying
);


ALTER TABLE public.filter237 OWNER TO eblej_director;

--
-- Name: filter238; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter238 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    kapaciteti_btu character varying,
    klas_energjie_ftohje character varying,
    klas_energjie_ngrohje character varying
);


ALTER TABLE public.filter238 OWNER TO eblej_director;

--
-- Name: filter239; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter239 (
    nenkategori character varying,
    "filtro_sipas_markës" character varying,
    filtro_sipas_ngjyrave character varying
);


ALTER TABLE public.filter239 OWNER TO eblej_director;

--
-- Name: filter24; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter24 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter24 OWNER TO eblej_director;

--
-- Name: filter25; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter25 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter25 OWNER TO eblej_director;

--
-- Name: filter26; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter26 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter26 OWNER TO eblej_director;

--
-- Name: filter27; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter27 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter27 OWNER TO eblej_director;

--
-- Name: filter28; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter28 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter28 OWNER TO eblej_director;

--
-- Name: filter29; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter29 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter29 OWNER TO eblej_director;

--
-- Name: filter3; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter3 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter3 OWNER TO eblej_director;

--
-- Name: filter30; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter30 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter30 OWNER TO eblej_director;

--
-- Name: filter31; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter31 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter31 OWNER TO eblej_director;

--
-- Name: filter32; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter32 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter32 OWNER TO eblej_director;

--
-- Name: filter33; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter33 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter33 OWNER TO eblej_director;

--
-- Name: filter34; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter34 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter34 OWNER TO eblej_director;

--
-- Name: filter35; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter35 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter35 OWNER TO eblej_director;

--
-- Name: filter36; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter36 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter36 OWNER TO eblej_director;

--
-- Name: filter37; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter37 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter37 OWNER TO eblej_director;

--
-- Name: filter38; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter38 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter38 OWNER TO eblej_director;

--
-- Name: filter39; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter39 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter39 OWNER TO eblej_director;

--
-- Name: filter4; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter4 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter4 OWNER TO eblej_director;

--
-- Name: filter40; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter40 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter40 OWNER TO eblej_director;

--
-- Name: filter41; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter41 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter41 OWNER TO eblej_director;

--
-- Name: filter42; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter42 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter42 OWNER TO eblej_director;

--
-- Name: filter43; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter43 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter43 OWNER TO eblej_director;

--
-- Name: filter44; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter44 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter44 OWNER TO eblej_director;

--
-- Name: filter45; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter45 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter45 OWNER TO eblej_director;

--
-- Name: filter46; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter46 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter46 OWNER TO eblej_director;

--
-- Name: filter47; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter47 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter47 OWNER TO eblej_director;

--
-- Name: filter48; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter48 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter48 OWNER TO eblej_director;

--
-- Name: filter49; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter49 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter49 OWNER TO eblej_director;

--
-- Name: filter5; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter5 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter5 OWNER TO eblej_director;

--
-- Name: filter50; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter50 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter50 OWNER TO eblej_director;

--
-- Name: filter51; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter51 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter51 OWNER TO eblej_director;

--
-- Name: filter52; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter52 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter52 OWNER TO eblej_director;

--
-- Name: filter53; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter53 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter53 OWNER TO eblej_director;

--
-- Name: filter54; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter54 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter54 OWNER TO eblej_director;

--
-- Name: filter55; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter55 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter55 OWNER TO eblej_director;

--
-- Name: filter56; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter56 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter56 OWNER TO eblej_director;

--
-- Name: filter57; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter57 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter57 OWNER TO eblej_director;

--
-- Name: filter58; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter58 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter58 OWNER TO eblej_director;

--
-- Name: filter59; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter59 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter59 OWNER TO eblej_director;

--
-- Name: filter6; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter6 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter6 OWNER TO eblej_director;

--
-- Name: filter60; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter60 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter60 OWNER TO eblej_director;

--
-- Name: filter61; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter61 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter61 OWNER TO eblej_director;

--
-- Name: filter62; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter62 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter62 OWNER TO eblej_director;

--
-- Name: filter63; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter63 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter63 OWNER TO eblej_director;

--
-- Name: filter64; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter64 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter64 OWNER TO eblej_director;

--
-- Name: filter65; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter65 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter65 OWNER TO eblej_director;

--
-- Name: filter66; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter66 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter66 OWNER TO eblej_director;

--
-- Name: filter67; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter67 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter67 OWNER TO eblej_director;

--
-- Name: filter68; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter68 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter68 OWNER TO eblej_director;

--
-- Name: filter69; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter69 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter69 OWNER TO eblej_director;

--
-- Name: filter7; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter7 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter7 OWNER TO eblej_director;

--
-- Name: filter70; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter70 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter70 OWNER TO eblej_director;

--
-- Name: filter71; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter71 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter71 OWNER TO eblej_director;

--
-- Name: filter72; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter72 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter72 OWNER TO eblej_director;

--
-- Name: filter73; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter73 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter73 OWNER TO eblej_director;

--
-- Name: filter74; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter74 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter74 OWNER TO eblej_director;

--
-- Name: filter75; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter75 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter75 OWNER TO eblej_director;

--
-- Name: filter76; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter76 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter76 OWNER TO eblej_director;

--
-- Name: filter77; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter77 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter77 OWNER TO eblej_director;

--
-- Name: filter78; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter78 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter78 OWNER TO eblej_director;

--
-- Name: filter79; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter79 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter79 OWNER TO eblej_director;

--
-- Name: filter8; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter8 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter8 OWNER TO eblej_director;

--
-- Name: filter80; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter80 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter80 OWNER TO eblej_director;

--
-- Name: filter81; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter81 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter81 OWNER TO eblej_director;

--
-- Name: filter82; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter82 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter82 OWNER TO eblej_director;

--
-- Name: filter83; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter83 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter83 OWNER TO eblej_director;

--
-- Name: filter84; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter84 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter84 OWNER TO eblej_director;

--
-- Name: filter85; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter85 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter85 OWNER TO eblej_director;

--
-- Name: filter86; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter86 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter86 OWNER TO eblej_director;

--
-- Name: filter87; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter87 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter87 OWNER TO eblej_director;

--
-- Name: filter88; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter88 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter88 OWNER TO eblej_director;

--
-- Name: filter89; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter89 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter89 OWNER TO eblej_director;

--
-- Name: filter9; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter9 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter9 OWNER TO eblej_director;

--
-- Name: filter90; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter90 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter90 OWNER TO eblej_director;

--
-- Name: filter91; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter91 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter91 OWNER TO eblej_director;

--
-- Name: filter92; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter92 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter92 OWNER TO eblej_director;

--
-- Name: filter93; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter93 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter93 OWNER TO eblej_director;

--
-- Name: filter94; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter94 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter94 OWNER TO eblej_director;

--
-- Name: filter95; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter95 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter95 OWNER TO eblej_director;

--
-- Name: filter96; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter96 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter96 OWNER TO eblej_director;

--
-- Name: filter97; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter97 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter97 OWNER TO eblej_director;

--
-- Name: filter98; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter98 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter98 OWNER TO eblej_director;

--
-- Name: filter99; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.filter99 (
    lloji character varying,
    "filtro_sipas_markës" character varying
);


ALTER TABLE public.filter99 OWNER TO eblej_director;

--
-- Name: products; Type: TABLE; Schema: public; Owner: eblej_director
--

CREATE TABLE public.products (
    id integer NOT NULL,
    creation_time integer NOT NULL,
    details json NOT NULL,
    owner character varying NOT NULL,
    spot character varying NOT NULL,
    category_id integer
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
221	Telefon & Tablet	Pjese per servis
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
-- Data for Name: filter1; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter1 (lloji, "filtro_sipas_markës") FROM stdin;
Dekorime Festive	\N
\.


--
-- Data for Name: filter10; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter10 (lloji, "filtro_sipas_markës") FROM stdin;
Mirmbajtje	\N
Përkujdesje Trupi	\N
Aksesorë dushi	\N
Aksesorë kozmetike	\N
Aksesorë udhëtimi	\N
Higjenë personale	\N
Kuti plastike	\N
Magazinim dhe organizim	\N
Mirëmbajtje këpucësh	\N
Ndihma e shpejtë	\N
Pastrues për tekstil	\N
Përkujdesje duarsh dhe thonj	\N
Përkujdesje për flokët	\N
Corape dhe geta	\N
Intime	\N
Make Up	\N
Kujdesi për lekuren	\N
Kujdesi Oral	\N
Stilim Flokësh	\N
Mjekra	\N
Mjekra	\N
Përkujdesje dhe siguri	\N
Parfume	\N
Shtatezania	\N
\N	Vileda
\N	PLYKING
\N	PREMIER WOOD
\N	Drina
\N	FISARMONICA
\N	PVC-lighting
\N	Ippa
\N	Erdal
\N	Fire brick
\N	Pierre Cardin
\N	Venus
\N	SOGA
\N	Home Style
\N	Durobor
\N	Okila
\N	Domino
\N	Mineralia
\N	Dolci
\N	Mezzogiorno
\N	Farmacotone
\N	Cotoneve
\N	COTONET
\N	BALIOUSKAS
\N	Soraya Kasak
\N	Larya Jahnu
\N	Kilim Square
\N	AQUAMassage
\N	Regina
\N	BulkySoft
\N	Galileo Casa
\N	NIVEA
\N	BOREAL
\N	Johnson's baby
\N	OLIVEA
\N	Proworld
\N	Bathroom solutions
\N	Niet Van Toepassing
\N	Garnier
\N	Barbie
\N	ADIDAS
\N	Flomar
\N	Glossfinity
\N	Miniso
\N	Alberto Taccin
\N	GoldCare
\N	Fepi
\N	Cosmolive
\N	Zeyteen
\N	Olivos
\N	Hunca Care
\N	Agiva
\N	Caldion
\N	Langelica
\N	BioPoint
\N	She
\N	Agiss
\N	Moschino
\N	Trussardi
\N	Versace
\N	Carefree
\N	Lycia
\N	Pantene
\N	Clinians
\N	Belle Color
\N	Jimmy Choo
\N	Head &amp; Shoulders
\N	Dove
\N	Axe
\N	Oral-B
\N	Elvive
\N	Fructis
\N	Batman
\N	Ultra Dolce
\N	Pearl Drops
\N	Neutrogena
\N	Labello
\N	Pampers
\N	Chicco
\N	Gliss
\N	Frozen
\N	Paradontax
\N	Spiderman
\N	Biorepair
\N	Herbal Essences
\N	Dermomed
\N	Borotalco
\N	Flormar
\N	Neutro Roberts
\N	Taft
\N	Nails
\N	Colgate
\N	Blanx
\N	L,Oreal
\N	OXY
\N	Elmex
\N	Jagler
\N	Mentadent
\N	Sensodyn
\N	Veet
\N	Givenchy
\N	Mont Blanc
\N	Dermolab
\N	Eveline
\N	Kenzo
\N	Blu Marine
\N	Rev Uniq One
\N	Salvatore Ferrgamo
\N	Pepe Jeans
\N	Bella Oggi
\N	Women's Secret
\N	Saponello
\N	Karl Lagerfeld
\N	Felce Azzurra
\N	Dual
\N	Wash&amp;Go
\N	Deborah
\N	Golden Rose
\N	Jelly
\.


--
-- Data for Name: filter100; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter100 (lloji, "filtro_sipas_markës") FROM stdin;
Letra muri	\N
Vegla per letra muri	\N
Ngjitës	\N
\N	Bison
\N	Komar
\N	Erismann
\N	Marlburg
\N	Metylan
\.


--
-- Data for Name: filter101; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter101 (lloji, "filtro_sipas_markës") FROM stdin;
Tretes	\N
\N	MULTICHIMICA
\N	Decotric
\N	Nirlat
\N	Arexons
\N	Deutsch Color
\.


--
-- Data for Name: filter102; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter102 (lloji, "filtro_sipas_markës") FROM stdin;
Sprai	\N
\N	Brixo
\N	COLORS
\.


--
-- Data for Name: filter103; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter103 (lloji, "filtro_sipas_markës") FROM stdin;
Ngjites	\N
\N	UHU
\N	Loctite
\N	TESA
\N	Brixo
\N	Ceresit
\N	Bison
\N	Moment
\N	Erismann
\N	LION
\N	Wurth
\N	Metylan
\N	Eurocel
\N	Pattex
\N	GEKO
\N	Akfix
\.


--
-- Data for Name: filter104; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter104 (lloji, "filtro_sipas_markës") FROM stdin;
Furca lyerje	\N
Zgjatues	\N
Mikser boje	\N
Rollone lyerje and Bishta	\N
Zmerilues	\N
Pistolete silikoni	\N
Vegla te tjera	\N
\N	DECO MART
\N	Mega Color
\N	Dekor
\N	Brixo
\N	Bison
\N	EASY ART
\N	MU
\N	MAXTOP
\N	Tactix
\N	Tactix-Onsite
\N	Morris
\N	Benman
\N	Einhell
\N	Fischer
\N	Orient
\N	Nespoli
\.


--
-- Data for Name: filter105; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter105 (lloji, "filtro_sipas_markës") FROM stdin;
Silikon	\N
\N	Ceresit
\N	Bison
\N	Wurth
\N	Fischer
\N	Akfix
\N	MEKK EXPERT
\.


--
-- Data for Name: filter106; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter106 (lloji, "filtro_sipas_markës") FROM stdin;
Vegla pune të tjera ndërtimi	\N
\N	Dekor
\.


--
-- Data for Name: filter107; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter107 (lloji, "filtro_sipas_markës") FROM stdin;
Bojra dekorative	\N
Bojera akrilike	\N
Bojera vaji	\N
Bojra per xham dhe qeramik	\N
Bojera efekt metalik	\N
\N	Cadence
\N	Winsor
\N	BOSCH
\N	Amaya
\N	Artico
\.


--
-- Data for Name: filter108; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter108 (lloji, "filtro_sipas_markës") FROM stdin;
Penela per boje akrilike	\N
Penela per boje vaji	\N
\N	Cadence
\N	Amaya
\N	Artico
\.


--
-- Data for Name: filter109; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter109 (lloji, "filtro_sipas_markës") FROM stdin;
Shufra druri	\N
Shufra Polistireni	\N
Korniza Inoksi	\N
Korniza Xhami	\N
Korniza PVC	\N
Korniza MDF	\N
Korniza druri	\N
\N	homemotion
\N	Disrael
\N	Niet Van Toepassing
\N	H &amp; S collection
\N	Atmosphera
\.


--
-- Data for Name: filter11; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter11 (lloji, "filtro_sipas_markës") FROM stdin;
Tapetë për tualet	\N
\N	Acqua
\N	Decomarin
\N	MSV
\.


--
-- Data for Name: filter110; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter110 (lloji, "filtro_sipas_markës") FROM stdin;
Piktura orgjinale	\N
Piktura të printuara	\N
Fotografi	\N
\N	NatyrART
\N	DeART
\N	Atmosphera
\.


--
-- Data for Name: filter111; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter111 (lloji, "filtro_sipas_markës") FROM stdin;
Pasqyra	\N
Aksesorë për korniza	\N
Tavaloz	\N
Spatula	\N
Telajo	\N
Mbajtëse lapsi	\N
Album për foto	\N
\N	Cadence
\N	Galileo Casa
\.


--
-- Data for Name: filter112; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter112 (lloji, "filtro_sipas_markës") FROM stdin;
Tuba	\N
Rakorderi	\N
Kabine zjarrfikse	\N
Hidrant	\N
Sperkates Zjarrfikes	\N
Fikese zjarri	\N
Te tjera	\N
\N	MOBIAK
\.


--
-- Data for Name: filter113; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter113 (lloji, "filtro_sipas_markës") FROM stdin;
Rakorderi	\N
Saracineska	\N
Fllanxha	\N
Matesa Uji	\N
Valvula moskthimi	\N
Filtra uji	\N
\N	DROP
\.


--
-- Data for Name: filter114; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter114 (lloji, "filtro_sipas_markës") FROM stdin;
Valvula bakri	\N
Tuba bakri	\N
Tuba PPR	\N
Tuba Multistrat	\N
Tuba fleksibël	\N
Rakorderi Multistrati	\N
Rakorderi PPR	\N
Tuba të galvanizuar	\N
Tuba dhe rakorderi PVC	\N
Rakorderi te galvanizuara	\N
Rakorderi PE	\N
Rakorderi PP	\N
Aksesorë të tjerë	\N
Rakorderi Bronxi	\N
Valvula Bronxi	\N
\N	RBM
\N	Agru
\N	OTER
\N	Toro
\N	Rietti
\N	NORTHCON
\N	Loctite
\N	Aqua filter
\N	TECHNOMETAL
\N	Brixo
\N	Confort
\N	Teqja
\N	CIM
\N	NTM Italy
\N	pro-For Tec
\N	SAB
\N	IZOTERM
\N	Wurth
\N	Tecnoresine
\N	ARCO
\N	MATEU
\N	DLG
\N	LABOR
\N	Luxor
\N	MT Spain
\N	ECOSOFT
\.


--
-- Data for Name: filter115; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter115 (lloji, "filtro_sipas_markës") FROM stdin;
Dryna	\N
Te tjera	\N
Dado dhe bullona	\N
Aksesore Montimi	\N
Vida druri	\N
Kuti Postare	\N
\N	STANLEY
\N	BOSCH
\N	Ceresit
\N	DEWALT
\N	Bosch Jeshil
\N	Einhell
\.


--
-- Data for Name: filter116; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter116 (lloji, "filtro_sipas_markës") FROM stdin;
Vegla pune te tjera ndertimi	\N
Nivel	\N
Çekiç	\N
Sopata dhe sqeparë	\N
Shënues	\N
Metër	\N
Rula për lyerje dhe bishta ruli	\N
Sharra dore	\N
\N	Dekor
\N	STANLEY
\N	LAND
\N	BETA
\N	MU
\N	Tactix
\N	EXCELLENT CARPET
\.


--
-- Data for Name: filter117; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter117 (lloji, "filtro_sipas_markës") FROM stdin;
Artikuj Mbrojtes	\N
Veshje pune sigurie	\N
Sinjalistike dhe siguri rrugore	\N
Veshje pune dhe sigurie	\N
Artikuj mbrojtës me një përdorim	\N
\N	VENUSbe
\N	SKIL
\N	BSL
\N	Bosch Jeshil
\N	Cofra
\N	Benman
\N	Smarwell
\N	Satexo
\N	PORTWEST
\.


--
-- Data for Name: filter118; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter118 (lloji, "filtro_sipas_markës") FROM stdin;
Zmerilues	\N
Matrapik	\N
Trapan	\N
Vidator	\N
Fresibel	\N
Zdrukth	\N
Freze	\N
Sharra bango	\N
Sharra sege	\N
Sharra shpate	\N
Perzjeres kolle	\N
Pistolete ngrohese	\N
Pistoletë lyerje	\N
Te tjera vegla elektrike	\N
\N	Prostart
\N	Kinstorm
\N	SKIL
\N	Kinway
\N	BOSCH
\N	Kraft
\N	Black&amp;Decker
\N	DEWALT
\N	BETA
\N	Bosch Jeshil
\N	Dremel
\N	Einhell
\N	Stanley-FatMax
\.


--
-- Data for Name: filter119; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter119 (lloji, "filtro_sipas_markës") FROM stdin;
Matrapik	\N
Trapan	\N
Vidator	\N
Fresibel	\N
Sharra sege	\N
Trapan me bateri	\N
Mjete matese	\N
Bateri dhe karikues	\N
\N	SKIL
\N	BOSCH
\N	Black&amp;Decker
\N	DEWALT
\N	Bosch Jeshil
\N	Einhell
\.


--
-- Data for Name: filter12; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter12 (lloji, "filtro_sipas_markës") FROM stdin;
Letra Tualeti	\N
Tharëse &amp; Dispencer	\N
Detergjentë &amp; Aromatikë	\N
Doreza me një përdorim	\N
Antiseptik dhe Dezifektant	\N
Maska	\N
\N	Mezzogiorno
\N	Sanitec
\N	Scrac
\N	Melissa
\N	Neutro Roberts
\N	Felce Azzurra
\.


--
-- Data for Name: filter120; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter120 (lloji, "filtro_sipas_markës") FROM stdin;
Sharra sege	\N
Punto metali	\N
Punto betoni	\N
Punto druri	\N
Punto SDS Plus	\N
Punto SDS Max	\N
Dalta SDS Plus	\N
Dalta SDS Max	\N
Disk metali	\N
Disk betoni	\N
Disk druri	\N
Leter zmerile	\N
Lama sharre sege	\N
Furce teli	\N
Koka freze	\N
Mandrino	\N
Qeleshe luçidimi	\N
Gota shpimi	\N
Maje kacavide	\N
Aksesore për Minizmerilues	\N
Gure zmeril	\N
\N	SKIL
\N	Kinway
\N	STANLEY
\N	Masterpac
\N	Brixo
\N	Shall
\N	BOSCH
\N	Black&amp;Decker
\N	DEWALT
\N	BETA
\N	MU
\N	Bosch Jeshil
\N	Dremel
\N	Gymbit
\N	Morris
\N	Benman
\N	Wurth
\N	Einhell
\N	Smirdex
\N	Ototop
\.


--
-- Data for Name: filter121; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter121 (lloji, "filtro_sipas_markës") FROM stdin;
Cekic	\N
Nivel	\N
Sharra dore	\N
Sopate&amp;Sqepare	\N
Dalta	\N
Vegla pune te tjera ndertimi	\N
Produkte te tjera sigurie	\N
Celesa	\N
Kacavide	\N
Pince	\N
Kriket dhe aksesore	\N
Morsa dhe Morseta	\N
Lima	\N
Kuti veglash dhe bango	\N
Sete veglash mekanike	\N
Vegla pune te tjera mekanike	\N
Prerese dhe thika	\N
Vegla të tjera	\N
Vegla Ajri	\N
\N	GREAT WALL
\N	STANLEY
\N	LAND
\N	Brixo
\N	MASTER
\N	MANO
\N	MASTER FORCE
\N	FORCE
\N	BETA
\N	MU
\N	Dremel
\N	MAXTOP
\N	Tactix
\N	Tactix-Onsite
\N	Einhell
\N	CURVER
\.


--
-- Data for Name: filter122; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter122 (lloji, "filtro_sipas_markës") FROM stdin;
Meter	\N
Metër	\N
Gone	\N
Metra dhe Nivelues lazer	\N
\N	STANLEY
\N	Brixo
\N	BOSCH
\N	Black&amp;Decker
\N	DEWALT
\N	BETA
\N	MU
\N	Bosch Jeshil
\.


--
-- Data for Name: filter123; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter123 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesore per makina	\N
\N	SONAX
\N	Motox
\N	Petex
\N	Glipart
\N	Wurth
\N	PETEK
\.


--
-- Data for Name: filter124; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter124 (lloji, "filtro_sipas_markës") FROM stdin;
Maska mbrojtese	\N
\.


--
-- Data for Name: filter125; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter125 (lloji, "filtro_sipas_markës") FROM stdin;
Dosje me mekanizëm	\N
Dosje arkive	\N
Dosje arkive me llastik	\N
Dosje konference	\N
Dollape dhe rafte	\N
Dosje me buton	\N
Dosje me unaza	\N
\N	ARK
\N	Noki
\N	Exacompta
\N	Esselte
\N	Idea
\N	Arcasud
\N	Office
\N	Fellowes
\N	Globox
\N	Europe
\N	Progres
\N	Blasetti
\N	Fornax
\N	Deli
\N	For Office
\N	IL GUARDIANO
\.


--
-- Data for Name: filter126; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter126 (lloji, "filtro_sipas_markës") FROM stdin;
Lapsa / Portamina	\N
Evidenziatore / Markera	\N
Stilolapsa / Stilografe	\N
Korrektor	\N
Ngjitës letre	\N
Gomë	\N
Vizore	\N
\N	UHU
\N	BIC
\N	ARK
\N	Noki
\N	Siam
\N	Eagle
\N	Lebez
\N	Memories Precious
\N	3A
\N	Smart
\N	Uni
\N	Niji
\N	Globox
\N	Fila
\N	Lyra
\N	Glass4You
\N	Herevin
\N	FC
\N	Deli
\N	Tratto
\N	Hi-Text
\N	Topwrite
\N	Carioca
\N	Staedtler
\N	Faber-Castell
\N	Hello
\N	Miniso
\N	Must
\.


--
-- Data for Name: filter127; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter127 (lloji, "filtro_sipas_markës") FROM stdin;
Organizues tavoline	\N
\N	ARK
\N	Siam
\N	Esselte
\N	Memories Precious
\N	Herevin
\N	Fornax
\N	Deli
\N	Double A
\.


--
-- Data for Name: filter128; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter128 (lloji, "filtro_sipas_markës") FROM stdin;
Pajisje lidhëse	\N
\N	ARK
\N	Noki
\N	Siam
\N	Eagle
\N	Lebez
\N	Memories Precious
\N	3A
\N	Smart
\N	Fornax
\N	IDEAL
\N	Deli
\.


--
-- Data for Name: filter129; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter129 (lloji, "filtro_sipas_markës") FROM stdin;
Zarfe	\N
Letër	\N
Blloqe shënimi, fletore	\N
\N	BIC
\N	Ariston
\N	Siam
\N	Eagle
\N	Esselte
\N	Globox
\N	Fabriano
\N	 Pigna
\N	Markin
\N	Progres
\N	Renz-Ideal
\N	Kosta
\N	Blasetti
\N	Fornax
\N	Deli
\N	Deluxe
\N	Disney
\N	BRILLIANT
\N	Double A
\N	Cartolandia
\N	Miniso
\.


--
-- Data for Name: filter13; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter13 (lloji, "filtro_sipas_markës") FROM stdin;
Fshesa dhe Shtupa	\N
Aksesorë pastrimi	\N
Peceta Pastrimi	\N
Dysheme dhe Xham	\N
Kova	\N
Detergjentë të ndryshëm	\N
Detergjentë dhe aromatikë	\N
Tharëse dhe dispencer	\N
Kaci pastrimi	\N
Fshesa dhe shkopa	\N
\N	Frosch
\N	Rorax
\N	Drina
\N	Arix
\N	LOGEX
\N	Arexons
\N	Home Style
\N	Linea PERFETTA
\N	Mia
\N	C'e
\N	Scrac
\N	Calgon
\N	Perfetto factory
\N	Miniso
\N	Ajax
\.


--
-- Data for Name: filter130; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter130 (lloji, "filtro_sipas_markës") FROM stdin;
Krijimtari për fëmije	\N
\N	BIC
\N	Hello Partner
\N	Lebez
\N	Memories Precious
\N	3A
\N	Niji
\N	Fila
\N	Deli
\N	Primo
\N	Disney
\N	Giotto
\N	Luna
\N	Carioca
\.


--
-- Data for Name: filter131; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter131 (lloji, "filtro_sipas_markës") FROM stdin;
Tempera, bojëra dhe lapostila	\N
\N	BIC
\N	Memories Precious
\N	Uni
\N	Fila
\N	Tratto
\N	Primo
\N	Giotto
\N	Carioca
\N	Vneeds
\N	Miniso
\.


--
-- Data for Name: filter132; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter132 (lloji, "filtro_sipas_markës") FROM stdin;
CD	\N
USB	\N
\N	Verbatim
\N	OMEGA
\N	Sony
\.


--
-- Data for Name: filter133; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter133 (lloji, "filtro_sipas_markës") FROM stdin;
Të tjera	\N
Aksesore	\N
\N	ARK
\N	Siam
\N	Memories Precious
\N	Fellowes
\N	Renz-Ideal
\N	RECO
\N	Topwrite
\.


--
-- Data for Name: filter134; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter134 (lloji, "filtro_sipas_markës") FROM stdin;
Varëse rrobash &amp; Mbajtëse çadrash	\N
Kosha mbeturinash	\N
Organizues tavoline	\N
\N	Artplast
\N	all4bath
\N	RELAX
\N	homemotion
\N	ARK
\N	BALIOUSKAS
\N	Galileo Casa
\N	Stefanplast
\N	MILLE
\N	Niet Van Toepassing
\N	Miniso
\.


--
-- Data for Name: filter135; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter135 (lloji, "filtro_sipas_markës") FROM stdin;
Tabela	\N
\N	Lebez
\N	Memories Precious
\N	Globox
\N	Fila
\N	Fornax
\N	Naga
\.


--
-- Data for Name: filter136; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter136 (lloji, "filtro_sipas_markës") FROM stdin;
Makinë llogaritëse	\N
\N	Memories Precious
\N	Canon
\N	Deli
\.


--
-- Data for Name: filter137; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter137 (lloji, "filtro_sipas_markës") FROM stdin;
Bokse	\N
Kufje	\N
Video projektor	\N
Ekran projektori	\N
MP3 &amp; MP4	\N
\N	Canon
\N	OMEGA
\N	Acer
\N	Elektra
\N	Grundig
\N	Remax
\N	Miniso
\N	Motorola
\.


--
-- Data for Name: filter138; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter138 (lloji, "filtro_sipas_markës") FROM stdin;
Mause	\N
Tastiera	\N
Karikues	\N
Aksesorë	\N
Printera	\N
PC	\N
\N	BOSCH
\N	OMEGA
\N	PLATINET
\N	HP
\N	Samsung
\N	Glipart
\N	Lexmark
\N	Grundig
\N	Kinzo
\N	Dunlop
\N	Bavin
\N	Auris
\N	Miniso
\.


--
-- Data for Name: filter139; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter139 (lloji, "filtro_sipas_markës") FROM stdin;
Kabëll MICRO USB/USB	\N
Kabëll zgjatues USB/MR	\N
Kabëll networku	\N
\N	PLATINET
\N	Grundig
\N	Remax
\N	Budi
\.


--
-- Data for Name: filter14; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter14 (lloji, "filtro_sipas_markës") FROM stdin;
Karela dhe Kova	\N
Dysheme dhe Xham	\N
Peceta Pastrimi	\N
Fshesa dhe shtupa	\N
Aksesorë pastrimi	\N
Detergjentë dhe aromatikë	\N
Sfungjer pastrimi	\N
\N	Vileda
\N	Erdal
\N	Arix
\N	Arexons
\N	Sanitec
\N	Matrix
\N	Italchimica
\N	Perfetto factory
\N	Dual
\.


--
-- Data for Name: filter140; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter140 (lloji, "filtro_sipas_markës") FROM stdin;
Çanta për kamer	\N
Të tjera	\N
Çanta për laptop	\N
Canta shkolle	\N
Kuleta shkolle	\N
\N	Memories Precious
\N	PLATINET
\N	Herevin
\N	Disney
\N	Slazenger
\N	Miniso
\.


--
-- Data for Name: filter141; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter141 (lloji, "filtro_sipas_markës") FROM stdin;
Pastrues	\N
\N	PLATINET
\N	Grundig
\.


--
-- Data for Name: filter142; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter142 (lloji, "filtro_sipas_markës") FROM stdin;
Aromatikë	\N
Veshje për sedilje	\N
Masazh për sedilje	\N
Tapete Makine	\N
Veshje Timoni	\N
Mbrojtëse dielli	\N
\N	Petex
\N	Areon
\N	Wunder Baum
\N	Arexons
\N	Glipart
\N	Wurth
\N	Maranello
\N	Ototop
\N	Little Joe
\.


--
-- Data for Name: filter143; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter143 (lloji, "filtro_sipas_markës") FROM stdin;
Solucione dhe aditivë	\N
\N	SONAX
\N	Motox
\N	ADDINOL
\N	Arexons
\N	OMV Petrol
\N	LION
\N	Wurth
\N	Isomat
\N	Durance
\.


--
-- Data for Name: filter144; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter144 (lloji, "filtro_sipas_markës") FROM stdin;
Trajtues të brendshëm	\N
Trajtues të jashtëm	\N
\N	SONAX
\N	Motox
\N	Arexons
\N	Marpa
\N	Wurth
\N	Durance
\N	Maranello
\N	Ototop
\.


--
-- Data for Name: filter145; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter145 (lloji, "filtro_sipas_markës") FROM stdin;
Fshirëse Xhami	\N
Aksesorë Emergjence	\N
Aksesorë të tjerë	\N
\N	SONAX
\N	SKIL
\N	Petex
\N	Areon
\N	Black&amp;Decker
\N	Purgator
\N	AutoPractic
\N	Arexons
\N	K2
\N	Glipart
\N	Wurth
\N	Einhell
\N	Orient
\N	Grundig
\N	Dunlop
\N	MITUTOYO
\N	Ototop
\N	Esy sock
\.


--
-- Data for Name: filter146; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter146 (lloji, "filtro_sipas_markës") FROM stdin;
Llamba Philips	\N
Llamba të tjera	\N
\N	Philips
\N	narva
\N	GP
\N	EMOS
\N	Dunlop
\N	NAKAMOTO
\N	MITUTOYO
\.


--
-- Data for Name: filter147; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter147 (lloji, "filtro_sipas_markës") FROM stdin;
Zgara	\N
Valixhe	\N
te tjera	\N
\N	Life Glass
\N	Ototop
\.


--
-- Data for Name: filter148; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter148 (lloji, "filtro_sipas_markës") FROM stdin;
Kallama dhe makineta	\N
Grepa	\N
Imitues	\N
Plumbçe	\N
Aksesorë të tjerë peshkimi	\N
Filispanjë	\N
\N	Omer
\N	Trabucco
\N	Shimano
\N	Rapala Max Rap
\N	Lineaeffe
\N	XQ MAX
\N	Colmic
\.


--
-- Data for Name: filter149; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter149 (lloji, "filtro_sipas_markës") FROM stdin;
Artikuj kampingu	\N
\.


--
-- Data for Name: filter15; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter15 (lloji, "filtro_sipas_markës") FROM stdin;
Letra tualeti	\N
Detergjentë dhe aromatikë	\N
\N	Sanitec
\N	Matrix
\N	BulkySoft
\.


--
-- Data for Name: filter150; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter150 (lloji, "filtro_sipas_markës") FROM stdin;
Biçikleta	\N
Aksesorë	\N
\N	Brixo
\N	MAX
\N	EMOS
\N	MAX Bicycles
\N	Dunlop
\N	XQ MAX
\N	Ototop
\.


--
-- Data for Name: filter151; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter151 (lloji, "filtro_sipas_markës") FROM stdin;
Palestra	\N
\N	PREMIER WOOD
\N	Elite
\N	Gymbit
\N	Majestic
\N	Slazenger
\N	XQ MAX
\N	TRY&amp;DO
\.


--
-- Data for Name: filter152; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter152 (lloji, "filtro_sipas_markës") FROM stdin;
Artikuj Sportiv	\N
Të tjera	\N
Canta pazari	\N
\N	OMEGA
\N	Grundig
\N	Trend
\N	Dunlop
\N	Donnay
\.


--
-- Data for Name: filter153; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter153 (lloji, "filtro_sipas_markës") FROM stdin;
Valixhe dhe çanta udhëtimi	\N
\N	Xavax
\N	Dunlop
\N	XQ MAX
\.


--
-- Data for Name: filter154; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter154 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë kampingu	\N
Canta kampingu	\N
Gatim për kamping	\N
Jastëk dhe fjetje	\N
Tavolinë dhe stola kampingu	\N
Tenda dhe aksesorë	\N
Termus kampingu	\N
\N	Fiskars
\N	Rica
\N	Bestway
\N	RedCliffs
\.


--
-- Data for Name: filter155; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter155 (lloji, "filtro_sipas_markës") FROM stdin;
Frigoriferë	\N
\N	Fuego
\N	Beko
\N	Ariston
\N	Brixo
\N	Electrolux
\N	Gio'Style
\N	LG
\N	Elektra
\N	Alpina
\N	HYUNDAI
\N	candy
\N	Hoobart
\N	Haier
\N	MIDEA
\N	HOTPOINT
\.


--
-- Data for Name: filter156; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter156 (lloji, "filtro_sipas_markës") FROM stdin;
Lavatrice dhe tharëse	\N
\N	Fuego
\N	Beko
\N	Ariston
\N	Panasonic
\N	LG
\N	Samsung
\N	Elektra
\N	candy
\N	Haier
\N	MIDEA
\N	HOTPOINT
\.


--
-- Data for Name: filter157; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter157 (lloji, "filtro_sipas_markës") FROM stdin;
Paisje Gatimi	\N
Aspirator	\N
Furrë	\N
Mikrovalë	\N
Të tjera	\N
Vatër Gatimi	\N
\N	Fuego
\N	Beko
\N	BOSCH
\N	Electrolux
\N	IMETEC
\N	MAX
\N	Samsung
\N	Elektra
\N	HYUNDAI
\N	candy
\N	Delimano
\N	EMOS
\N	Hoobart
\N	Atlantik
\N	AEG
\N	Elica
\N	Tecnowind
\N	Xavax
\N	cook
\N	Kooper
\N	Simfer
\N	Dunlop
\N	ATLANTIC
\N	HOTPOINT
\.


--
-- Data for Name: filter158; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter158 (lloji, "filtro_sipas_markës") FROM stdin;
Lavastovilje	\N
\N	Beko
\N	Elektra
\N	candy
\.


--
-- Data for Name: filter159; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter159 (lloji, "filtro_sipas_markës") FROM stdin;
Shtrydhëse frutash	\N
Bërës kafeje dhe caji	\N
Friteza	\N
Përkujdesje për flokët dhe makina rroje	\N
Miksera	\N
Makina qepëse dhe hekur rrobash	\N
Thekës buke dhe zgara elektrike	\N
Paisje të tjera	\N
Ngrohës uji	\N
\N	De Longhi
\N	Philips
\N	Fuego
\N	Beko
\N	Sinbo
\N	BOSCH
\N	Vortice
\N	Black&amp;Decker
\N	Electrolux
\N	IMETEC
\N	Gio'Style
\N	MAX
\N	Braun
\N	Severin
\N	Deluxe
\N	NIKLAS
\N	Alpina
\N	Russell Hobbs
\N	Remington
\N	Grundig
\N	ROWENTA
\N	Duracell
\N	Delimano
\N	EMOS
\N	Hoobart
\N	Rovus
\N	DAEWOD
\N	Tefal
\N	Hoover
\N	Hama
\N	Xavax
\N	Meliconi
\N	Krups
\N	Kooper
\N	GELO
\N	ISKRA
\N	Brita
\N	ETA
\N	Dunlop
\N	ADLER
\N	MESKO
\N	CARMY
\N	Lavazza
\N	CAMRY
\N	FIVE Simply smart
\.


--
-- Data for Name: filter16; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter16 (lloji, "filtro_sipas_markës") FROM stdin;
Maska	\N
\.


--
-- Data for Name: filter160; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter160 (lloji, "filtro_sipas_markës") FROM stdin;
Fshesa me vakum	\N
\N	Philips
\N	Fuego
\N	Beko
\N	BOSCH
\N	Black&amp;Decker
\N	IMETEC
\N	MAX
\N	Samsung
\N	Elektra
\N	ROWENTA
\N	Rovus
\N	Hoover
\N	Kooper
\N	Zelmer
\N	ETA
\N	Dunlop
\.


--
-- Data for Name: filter161; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter161 (lloji, "filtro_sipas_markës") FROM stdin;
Televizorë	\N
Sisteme Audio dhe Video	\N
\N	Philips
\N	Fuego
\N	Alcad
\N	LG
\N	Elektra
\N	HYUNDAI
\N	Grundig
\N	EMOS
\N	Hoobart
\N	Meliconi
\N	Kooper
\N	Haier
\N	Dunlop
\N	Motorola
\.


--
-- Data for Name: filter162; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter162 (lloji, "filtro_sipas_markës") FROM stdin;
Ushqime për qen	\N
Ushqime për mace	\N
Aksesorë për ushqim	\N
Ushqime për kafshë të tjera	\N
\N	Miglior Cane
\N	Miglior Gatto
\N	Cocco
\N	CURVER
\N	Tetra
\N	Trixie
\N	Laky
\N	Versele-Laga
\.


--
-- Data for Name: filter163; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter163 (lloji, "filtro_sipas_markës") FROM stdin;
Shampo	\N
Furca dhe krehëra	\N
Të tjera	\N
\N	Miglior Gatto
\N	Cocco
\N	CURVER
\N	Tetra
\N	Trixie
\N	8 in 1
\N	Versele-Laga
\N	DAC
\.


--
-- Data for Name: filter164; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter164 (lloji, "filtro_sipas_markës") FROM stdin;
Qafore	\N
 Zinxhirë dhe litarë	\N
Lodra	\N
Të tjera	\N
Transportues	\N
\N	Cocco
\N	Trixie
\N	Biozoo
\.


--
-- Data for Name: filter165; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter165 (lloji, "filtro_sipas_markës") FROM stdin;
Ndenjëse	\N
Kolibe druri	\N
Kolibe plastike	\N
\N	CURVER
\N	Trixie
\N	Biozoo
\.


--
-- Data for Name: filter166; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter166 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë	\N
Te tjera	\N
\N	Kalif
\N	Tetra
\N	Trixie
\.


--
-- Data for Name: filter167; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter167 (lloji, "filtro_sipas_markës") FROM stdin;
Varëse rrobash	\N
Rafte dhe dollape	\N
Kuti plastike	\N
Qese plastike	\N
Të tjera	\N
Kuti plastike	\N
Rafte dhe dollape	\N
Kuti magazinimi	\N
Kuti tekstili	\N
\N	Brixo
\N	Artplast
\N	MEGATEK
\N	Drina
\N	Ippa
\N	DEA home
\N	Home Style
\N	BALIOUSKAS
\N	Eliplast
\N	Verdelook
\N	Fischer
\N	IL GUARDIANO
\N	CURVER
\N	Storage solutions
\N	Niet Van Toepassing
\N	KIS
\N	Solenne
\N	Atmosphera
\N	FIVE Simply smart
\.


--
-- Data for Name: filter168; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter168 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë lavanderie	\N
Tavolina hekurosje	\N
Nderëse rrobash	\N
Kosha rrobash	\N
Kova dhe legena	\N
Kuti plastike	\N
Kuti tekstili	\N
Detergjentë	\N
Shkallë	\N
\N	Vileda
\N	Artplast
\N	Drina
\N	all4bath
\N	De'Casa
\N	Ippa
\N	Arix
\N	LOGEX
\N	Home Style
\N	BALIOUSKAS
\N	Sanitec
\N	Eliplast
\N	Verdelook
\N	Galileo Casa
\N	Stefanplast
\N	SISMA
\N	CURVER
\N	MILLE
\N	Calgon
\N	COLOMBO
\N	MSV
\N	Ultra clean
\N	ItalCasa
\N	Metaltex
\N	KIS
\N	Atmosphera
\.


--
-- Data for Name: filter169; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter169 (lloji, "filtro_sipas_markës") FROM stdin;
Qese mbeturinash	\N
\.


--
-- Data for Name: filter17; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter17 (lloji, "filtro_sipas_markës") FROM stdin;
Tuba bakri	\N
Tuba PPR	\N
Tuba Multistrat	\N
Tuba fleksibël	\N
Rakorderi bakri	\N
Rakorderi Multistrati	\N
Rakorderi PPR	\N
Valvula bakri	\N
\N	RBM
\N	Toro
\N	Rietti
\N	Confort
\N	Teqja
\N	CIM
\N	NTM Italy
\N	pro-For Tec
\N	MATEU
\.


--
-- Data for Name: filter170; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter170 (lloji, "filtro_sipas_markës") FROM stdin;
Lodra	\N
Dekorime	\N
Kuklla për beba	\N
Lodra edukative	\N
Pistolete	\N
Herojtë Marvel	\N
Lojra zbavitëse	\N
Lodra pellushi	\N
Makina për Femijë	\N
Kuklla dhe shtëpi kukllash	\N
Zbavitëse për beba	\N
Lodra për beba	\N
Tapete pazell	\N
Lol	\N
Aksesorë dhome	\N
Magazinim	\N
Pazell	\N
Plastelina	\N
Robote transformers	\N
Lodra për vajza	\N
\N	Artemis
\N	MEGATEK
\N	homemotion
\N	Niji
\N	Lorelli®
\N	Pino
\N	albas
\N	bildo
\N	Disney
\N	Hasbro
\N	Banbao
\N	Barbie
\N	Fisher Price
\N	Hatchimals
\N	Hotwheels
\N	Bunchem
\N	Other Spin Master
\N	Globo
\N	Kingdom Toy
\N	Paw Patrol
\N	Kinetic Sand
\N	GREAT FRIEND
\N	ANIMAL WORLD
\N	Quercetti Montesori
\N	L.O.L
\N	Miniso
\N	Lisciani
\.


--
-- Data for Name: filter171; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter171 (lloji, "filtro_sipas_markës") FROM stdin;
Higjenë	\N
Përkujdesje	\N
Aksesore dushi për fëmijë	\N
Aksesor per bebe	\N
Kujdesi per beben	\N
\N	Drina
\N	Cotoneve
\N	BALIOUSKAS
\N	Lorelli®
\N	PENATEN
\N	Miniso
\N	Borotalco
\N	Felce Azzurra
\.


--
-- Data for Name: filter172; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter172 (lloji, "filtro_sipas_markës") FROM stdin;
Krevate	\N
Tavolina	\N
Karrige	\N
Kuti magazinimi	\N
Ambazhure	\N
\N	MEGATEK
\N	Adore
\N	BALIOUSKAS
\N	Lorelli®
\.


--
-- Data for Name: filter173; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter173 (lloji, "filtro_sipas_markës") FROM stdin;
Çarçafë &amp; Këllëfë Jastëku	\N
Batanije &amp; Jorganë	\N
Jastëkë &amp; Mbrojtës	\N
Dyshekë &amp; Mbrojtës	\N
Body dhe corape	\N
Peshqirë	\N
\N	Marta Marzotti
\N	Andy&amp;Helen
\N	MEGATEK
\N	Dormeo
\N	Pierre Cardin
\N	Lorelli®
\N	Ibaby
\.


--
-- Data for Name: filter174; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter174 (lloji, "filtro_sipas_markës") FROM stdin;
Karroca	\N
Karrige Makine	\N
Krevate shtrati për beba	\N
\N	Lorelli®
\N	Deluxe
\N	baby world
\.


--
-- Data for Name: filter175; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter175 (lloji, "filtro_sipas_markës") FROM stdin;
Karrige Ngrënie	\N
Ngrënie	\N
\N	Lorelli®
\N	douceur d'intérieur®
\N	CURVER
\.


--
-- Data for Name: filter176; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter176 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë mbrojtës	\N
\N	MEGATEK
\.


--
-- Data for Name: filter177; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter177 (lloji, "filtro_sipas_markës") FROM stdin;
Fjogo për flokë	\N
\.


--
-- Data for Name: filter178; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter178 (lloji, "filtro_sipas_markës") FROM stdin;
Ora	\N
Piktura	\N
Tabela &amp; varëse	\N
Pasqyra	\N
\N	MEGATEK
\N	homemotion
\N	BALIOUSKAS
\N	Galileo Casa
\N	Disrael
\N	Niet Van Toepassing
\N	H &amp; S collection
\N	Happy Deco
\N	Metaltex
\N	Atmosphera
\.


--
-- Data for Name: filter179; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter179 (lloji, "filtro_sipas_markës") FROM stdin;
Perde	\N
Perde moderne	\N
Metrazhe	\N
Aksesore për perde	\N
Perde ndarëse	\N
\N	DECO
\N	Voilage
\N	Lux Curtain
\N	Glamorus
\N	Panneau
\N	Rideau
\N	Verdelook
\.


--
-- Data for Name: filter18; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter18 (lloji, "filtro_sipas_markës") FROM stdin;
Vida druri	\N
Vida betoni	\N
Vida metali	\N
Dado dhe bullona	\N
Zinxhirë	\N
Litarë	\N
Kasaforta	\N
Kuti Postare	\N
Aksesorë Dyersh	\N
Aksesorë mobiliesh	\N
Aksesore montimi	\N
Aksesorë të tjerë	\N
Brava dyersh	\N
Rrota	\N
Kavo çeliku dhe aksesorë	\N
\N	Power Metric
\N	ALL-ROPES
\N	Brixo
\N	KNAUF
\N	BTV
\N	Black&amp;Decker
\N	DEWALT
\N	NTM Italy
\N	MU
\N	PATTA
\N	Fischer
\N	NIKLAS
\N	Lih Lin
\N	INOXMARE
\N	Pawer Metric
\N	LABOR
\N	Apolo
\N	Kinzo
\.


--
-- Data for Name: filter180; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter180 (lloji, "filtro_sipas_markës") FROM stdin;
Korniza metalike	\N
Shina për perde	\N
Korniza druri	\N
\N	VENUSbe
\N	ESTILO DE DISEGNO
\N	ART&amp;DÉCOR
\N	Swish
\N	Ateliers
\.


--
-- Data for Name: filter181; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter181 (lloji, "filtro_sipas_markës") FROM stdin;
Grila veneciane	\N
Grila roll dhe romane	\N
\N	RELAX
\N	Verdelook
\.


--
-- Data for Name: filter182; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter182 (lloji, "filtro_sipas_markës") FROM stdin;
Lidhësa për perde	\N
Unaza dhe Shirita	\N
\.


--
-- Data for Name: filter183; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter183 (lloji, "filtro_sipas_markës") FROM stdin;
Qirinj	\N
Qirinj aromatikë	\N
\N	Aromatherapy Candle
\N	Scented Parfumees
\N	Fragrant Reflections
\N	Bougles Parfumées
\N	Alpina
\.


--
-- Data for Name: filter184; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter184 (lloji, "filtro_sipas_markës") FROM stdin;
Mokete dhe Linoleume	\N
Tapetë të punuar me dorë	\N
Tapetë	\N
Rrugica	\N
Lëkurë deleje natyrale	\N
Shtrojë dere	\N
\N	CABALIER
\N	Gallery
\N	Crystal
\N	Shaggy
\N	Soraya
\N	Gioia
\N	Jasmina
\N	Vera
\N	Carmina
\N	RAMSES
\N	Romance
\N	Tapis
\N	Kansas Malaidory Shaggy
\N	Harmony Shaggy
\N	Sahara Shaggy
\N	Vivace
\.


--
-- Data for Name: filter185; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter185 (lloji, "filtro_sipas_markës") FROM stdin;
Mbulesa familjare	\N
Mbulesa HO.RE.CA	\N
Shtroja tavoline	\N
Mbulesa PVC	\N
\N	MEGATEK
\N	Galileo Casa
\N	Decorama
\N	Atmosphera
\N	Secret de Gourmet
\.


--
-- Data for Name: filter186; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter186 (lloji, "filtro_sipas_markës") FROM stdin;
Vazo Xhami	\N
Vazo Qeramike	\N
Vazo Lulesh	\N
Dekorime Tavoline	\N
Mbajtëse Qiri	\N
Gurë/rërë dekorimi	\N
Vazo Metalike	\N
\N	Elegance
\N	MEGATEK
\N	giardinos
\N	D`PETRA
\N	homemotion
\N	Uniglass
\N	BALIOUSKAS
\N	Galileo Casa
\N	Disrael
\N	Niet Van Toepassing
\N	H &amp; S collection
\N	Happy Deco
\N	Atmosphera
\.


--
-- Data for Name: filter187; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter187 (lloji, "filtro_sipas_markës") FROM stdin;
Lule Artificaile	\N
Lule të Thara	\N
Aromatikë	\N
Pemë artificiale	\N
\N	Areon
\N	FragranceFcelefi
\N	Potpourri
\N	homemotion
\N	Galileo Casa
\N	Emerald
\N	Niet Van Toepassing
\N	Mega green
\N	Happy Deco
\N	Home Fragrance
\N	Atmosphera
\.


--
-- Data for Name: filter188; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter188 (lloji, "filtro_sipas_markës") FROM stdin;
Kosha me Thurje	\N
Kosh druri	\N
Kosh letre	\N
Kosh metali	\N
Kosh najloni	\N
Kosh tekstili	\N
Kosh me thurje	\N
\N	Deco Casa
\N	Disrael
\N	H &amp; S collection
\N	Sweet Home
\N	Atmosphera
\.


--
-- Data for Name: filter189; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter189 (lloji, "filtro_sipas_markës") FROM stdin;
Çanta	\N
Paketime	\N
Kuti kartoni	\N
\N	homemotion
\.


--
-- Data for Name: filter19; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter19 (lloji, "filtro_sipas_markës") FROM stdin;
Çekiç	\N
Shënues	\N
Metër	\N
Nivel	\N
Mbajtëse Veglash	\N
Sharra dore	\N
Dalta	\N
Shkallë	\N
Vegla pune të tjera ndërtimi	\N
Prerëse pllakash	\N
\N	GREAT WALL
\N	Dekor
\N	STANLEY
\N	LAND
\N	Brixo
\N	MASTER FORCE
\N	Drina
\N	BETA
\N	MU
\N	Scented Parfumees
\.


--
-- Data for Name: filter190; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter190 (lloji, "filtro_sipas_markës") FROM stdin;
Jastekë Dekorativë	\N
\N	PILOW DÉCOR
\N	TREND MY STYLE
\N	ALMOHODO ESPECIAL
\N	douceur d'intérieur®
\N	H &amp; S
\.


--
-- Data for Name: filter191; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter191 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë qepje	\N
Fjongo	\N
Gërshërë	\N
Penj	\N
\.


--
-- Data for Name: filter192; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter192 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë të tjerë	\N
\.


--
-- Data for Name: filter193; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter193 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë paketimi	\N
Canta	\N
Lojra festash	\N
Qirinj ditëlindje	\N
Servirje festash	\N
Ambalazh paketimi	\N
Tollumbace	\N
Dekorime festash	\N
Dekorime te ndryshme	\N
Dekore dasma	\N
Tutu fund	\N
\N	MEGATEK
\N	homemotion
\N	Galileo Casa
\N	party
\.


--
-- Data for Name: filter194; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter194 (lloji, "filtro_sipas_markës") FROM stdin;
Mbulesa	\N
Mbrojtëse &amp; Mbishtresa Dysheku	\N
Çarçafë	\N
Jastëk &amp; Këllëf	\N
Batanije	\N
Dyshekë	\N
Jorganë	\N
\N	BEAUTY FURNITURE
\N	Marta Marzotti
\N	MEGATEK
\N	Ambrosiana
\N	Home Linen
\N	Dormeo
\N	Co&amp;Co
\N	IMETEC
\N	LUOCA PATISCA
\N	Fabress
\N	Kid City
\N	MICROJERSEY
\N	Paulato
\N	douceur d'intérieur®
\N	Galileo Casa
\N	HINDU
\N	AMW
\N	Eysa
\N	H &amp; S collection
\.


--
-- Data for Name: filter195; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter195 (lloji, "filtro_sipas_markës") FROM stdin;
Peshqirë	\N
Robdishan	\N
\N	MEGATEK
\N	Feridras
\N	Home Sweet Home
\N	douceur d'intérieur®
\.


--
-- Data for Name: filter196; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter196 (lloji, "filtro_sipas_markës") FROM stdin;
Shtrydhëse rrushi	\N
Tapatriçe	\N
Damixhanë	\N
Tapa	\N
Bidon inoxi	\N
Shishe	\N
Kontenitor	\N
Bidon Plastik	\N
Aksesorë	\N
\N	MEGATEK
\N	Disrael
\N	H &amp; S collection
\.


--
-- Data for Name: filter197; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter197 (lloji, "filtro_sipas_markës") FROM stdin;
Mjelëse bagëtie	\N
Makineri bluarje	\N
Aksesorë	\N
\N	MELKMAS
\.


--
-- Data for Name: filter198; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter198 (lloji, "filtro_sipas_markës") FROM stdin;
Freza toke	\N
Korrëse bari	\N
Prerëse bari	\N
Shkundëse ullinjsh	\N
Pompa spërkatëse	\N
Aksesorë	\N
Prerëse ligustrash	\N
\N	ADDINOL
\N	MondoVerde
\N	Wurth
\N	Green Cat
\N	Alpina
\N	Keban
\N	DAEWOO
\N	GTL
\N	KAWASAKI
\N	DAEWOD
\N	Loncin
\N	Maniver
\N	Champion
\N	Oleo-Mac
\N	HONDA
\.


--
-- Data for Name: filter199; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter199 (lloji, "filtro_sipas_markës") FROM stdin;
Pantallona të shkurtra	\N
Kanatjere	\N
Fustan	\N
Jelek	\N
Çorape	\N
Bluzë	\N
T-shirt	\N
Tuta	\N
Kostum	\N
Streçe	\N
Xhup	\N
Atlete	\N
Shapka	\N
\N	IPANEMA
\N	KRONOS
\N	NIKE
\N	COCOMO
\N	LOTTO
\N	ELLESSE
\N	ADIDAS
\N	LONSDALE
\N	PUMA
\N	REEBOK
\.


--
-- Data for Name: filter2; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter2 (lloji, "filtro_sipas_markës") FROM stdin;
Artikuj Plazhi	\N
Gjithca për notin	\N
Pishina familjare	\N
Shezlonë dhe Cadra	\N
\N	Gio'Style
\N	Galileo Casa
\N	Pro garden
\N	Garnier
\.


--
-- Data for Name: filter20; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter20 (lloji, "filtro_sipas_markës") FROM stdin;
Silikon	\N
\N	Ceresit
\N	Bison
\.


--
-- Data for Name: filter200; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter200 (lloji, "filtro_sipas_markës") FROM stdin;
Altete	\N
Xhup	\N
Pantallona të shkurtra	\N
Bokse	\N
Çorape	\N
Çantë	\N
Shapka	\N
Këpucë futbolli	\N
Këpucë kalçeto	\N
Rroba banjo	\N
Aksesorë	\N
Bluzë	\N
Polo	\N
T-shirt	\N
Tuta	\N
Kostum	\N
Streçe	\N
\N	UMBRO
\N	RIDER
\N	KRONOS
\N	NIKE
\N	COCOMO
\N	UNDER ARMOUR
\N	LOTTO
\N	ELLESSE
\N	ADIDAS
\N	NIKE HADDAD
\N	LONSDALE
\N	PUMA
\N	REEBOK
\.


--
-- Data for Name: filter201; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter201 (lloji, "filtro_sipas_markës") FROM stdin;
Altete	\N
Këpucë kalçeto	\N
Aksesorë	\N
Sandale	\N
Çorape	\N
Çantë	\N
Marsup	\N
Kapele	\N
\N	UMBRO
\N	KRONOS
\N	NIKE
\N	ELLESSE
\N	J2C
\N	ADIDAS
\N	LONSDALE
\N	PUMA
\N	REEBOK
\.


--
-- Data for Name: filter202; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter202 (lloji, "filtro_sipas_markës") FROM stdin;
Altete	\N
Bluzë	\N
T-shirt	\N
Tuta	\N
Pantallona të shkurtra	\N
\N	NIKE
\N	ADIDAS
\N	LONSDALE
\.


--
-- Data for Name: filter203; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter203 (lloji, "filtro_sipas_markës") FROM stdin;
Verë e kuqe	\N
Shampanjë	\N
Whisky	\N
Liker	\N
Vodka	\N
Gin	\N
Birra	\N
Verë e bardhë	\N
Verë e gazuar/Spumante	\N
Konjak	\N
Rum	\N
Fërnet	\N
Tekila	\N
Uzo	\N
\.


--
-- Data for Name: filter204; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter204 (lloji, "filtro_sipas_markës") FROM stdin;
Lëngje freskuese	\N
Pije energjike	\N
Kafe	\N
Ujë	\N
\.


--
-- Data for Name: filter205; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter205 (lloji, "filtro_sipas_markës") FROM stdin;
Fruta të thata	\N
Çokollatë	\N
Biskota	\N
Patatina	\N
\.


--
-- Data for Name: filter206; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter206 (nenkategori, "filtro_sipas_markës", "madhësia_ekranit", viti_i_prodhimit, ram, memoria_hdd__asgn__ssd, procesori, karta_grafike, tipi_ekranit, rezolucioni_ekranit, me_dvd__asgn__pa_dvd, filtro_sipas_ngjyrave) FROM stdin;
All in One	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Desktop	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
iMac	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Acer	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Apple	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Dell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	HP	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	21.5"	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	23.8"	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	27"	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	2020	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	8GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	12GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	16GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	256GB SSD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	512GB SSD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	1TB SSD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 3 3250U	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i3-9100	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-10400	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-10600	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-10700K	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i3-8100	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-10510U	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-8700	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ Graphics	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ Pro 5300M	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ Pro 5500M 8GB	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ RX 560X	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA® GeForce® GT 710 2GB	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® UHD Graphics 620	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® UHD Graphics 630	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Retina 4K	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Retina 5K	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	4096 x 2304 pixels	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	5120 x 2880 pixels	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	DVD+/-RW	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Silver
\.


--
-- Data for Name: filter207; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter207 (nenkategori, "filtro_sipas_markës", "madhësia_ekranit", viti_i_prodhimit, ram, memoria_hdd__asgn__ssd, procesori, karta_grafike, me_dvd__asgn__pa_dvd, refresh_rate, filtro_sipas_ngjyrave) FROM stdin;
MacBook Air	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
MacBook Pro	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2-in-1 Laptops	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Business Laptop	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gaming Laptop	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Notebooks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Microsoft	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	MSI	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Apple	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Asus	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Dell	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	HP	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Lenovo	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	10.5"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	11.6"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	12.3"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	12.4” PixelSense™	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	13.5"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	13.3"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	13"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	14"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	15.6"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	16"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	17.3"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	2019	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	4GB	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	8GB	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	12GB	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	16GB	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	32GB	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	64GB	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	128GB eMMC	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	512GB SSD + 32GB Optane	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	64GB	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	64GB eMMC	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	2TB SSD	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	512GB SSD + 1TB HDD	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	128GB SSD	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	256GB SSD	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	512GB SSD	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	1TB SSD	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	128GB SSD + 1TB HDD	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 3 3250U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 3 4300U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 5 4500U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 5 4600HS	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 7 3700U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 7 4700U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 9 4900H	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Apple M1	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Celeron N4020	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i3-1115G4	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-10300H	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-1030NG7	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-1035G4	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-1035G7	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-1038NG7	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-1135G7	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-8257U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-10710U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-10750H	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-10875H	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-1165G7	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ m3-8100Y	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Pentium® Gold 4425Y	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Pentium® Gold 6405U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Pentium® Silver N5030	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Microsoft SQ® 1	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 5 3500U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	AMD Ryzen™ 7 4800H	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Celeron® N3350	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i3	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i3-1005G1	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-1035G1	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-10510U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i7-1065G7	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Intel® Core™ i5-10210U	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Adreno™ 685 GPU	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ Graphics	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ Graphics 2GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ Pro 5500M 8GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ Pro 5600M	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMD Radeon™ RX 5600	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Apple (7Core)	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Apple (8Core)	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® Iris® Plus	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® Iris® Xe Graphics	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® Iris™ Plus Graphics	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® UHD Graphics 605	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® UHD Graphics 615	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA GeForce® GTX 1650 Ti 4GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA GeForce® GTX 1660 Ti	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA® GeForce® GTX 1660 Ti 6GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA® GeForce® MX330 2GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA® GeForce® RTX 2070 SUPER™ MaxQ 8GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA® GeForce® RTX 2080 SUPER™	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA® GeForce® RTX 3060 6GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA™ GeForce® GTX 1650 Max-Q 4GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Radeon™ RX Vega 10 Graphics	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Radeon™ Vega 8 Graphics	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Integrated Intel HD Graphics	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® HD VGA	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® Iris® Plus Graphics	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® Iris® Plus Graphics 645	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® UHD Graphics	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® UHD Graphics 600	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Intel® UHD Graphics 620	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Nvidia GeForce® GTX 1650 4GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Nvidia GeForce® GTX 1660 Ti 6GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Nvidia GeForce® RTX 2060 6GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Nvidia GeForce® RTX 2070 8GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	NVIDIA® GeForce® MX230 2GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Nvidia® GeForce® MX250 2GB	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	DVD+/-RW	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	NO DVD	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	120Hz	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	144Hz	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Bronze
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Brown
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Chameleon Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Dark Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Grey
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Gunmetal Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Platinum Grey
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Poppy Red
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Prism Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Star Grey
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Gold
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Green
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ice Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pink
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Red
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Silver
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Space Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	White
\.


--
-- Data for Name: filter208; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter208 (nenkategori, "filtro_sipas_markës", memoria, ram, write_speed, read_speed) FROM stdin;
Ram	\N	\N	\N	\N	\N
USB flash memory	\N	\N	\N	\N	\N
\N	Emtec	\N	\N	\N	\N
\N	Crucial	\N	\N	\N	\N
\N	Kodak	\N	\N	\N	\N
\N	Baseus	\N	\N	\N	\N
\N	Kingston	\N	\N	\N	\N
\N	SanDisk	\N	\N	\N	\N
\N	Verbatim	\N	\N	\N	\N
\N	\N	16GB	\N	\N	\N
\N	\N	32GB	\N	\N	\N
\N	\N	64GB	\N	\N	\N
\N	\N	128GB	\N	\N	\N
\N	\N	256GB	\N	\N	\N
\N	\N	512GB	\N	\N	\N
\N	\N	\N	8GB	\N	\N
\N	\N	\N	\N	150 MB/s	\N
\N	\N	\N	\N	385 MB/s	\N
\N	\N	\N	\N	10MB/s	\N
\N	\N	\N	\N	20MB/s	\N
\N	\N	\N	\N	4MB/s	\N
\N	\N	\N	\N	\N	20 MB/s
\N	\N	\N	\N	\N	2000 MB/s
\N	\N	\N	\N	\N	420 MB/s
\N	\N	\N	\N	\N	10MB/s
\N	\N	\N	\N	\N	480MB/s
\N	\N	\N	\N	\N	100MB/s
\N	\N	\N	\N	\N	130MB/s
\N	\N	\N	\N	\N	150MB/s
\.


--
-- Data for Name: filter209; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter209 (nenkategori, "filtro_sipas_markës", printer_type, standart_functions, color_capability, print_speed) FROM stdin;
Laser Printer	\N	\N	\N	\N	\N
Inkjet Printer	\N	\N	\N	\N	\N
Wireless Printer	\N	\N	\N	\N	\N
Scanner	\N	\N	\N	\N	\N
All-in-one Printer	\N	\N	\N	\N	\N
\N	UTAX	\N	\N	\N	\N
\N	Brother	\N	\N	\N	\N
\N	Canon	\N	\N	\N	\N
\N	Epson	\N	\N	\N	\N
\N	HP	\N	\N	\N	\N
\N	Xerox	\N	\N	\N	\N
\N	\N	Inkjet	\N	\N	\N
\N	\N	Laser	\N	\N	\N
\N	\N	\N	Print, Copy, Scan &amp; Fax	\N	\N
\N	\N	\N	All in one	\N	\N
\N	\N	\N	Copy, Print, Scan	\N	\N
\N	\N	\N	Print	\N	\N
\N	\N	\N	\N	Black	\N
\N	\N	\N	\N	Black and White	\N
\N	\N	\N	\N	CMYK	\N
\N	\N	\N	\N	Color	\N
\N	\N	\N	\N	\N	up to 19 ppm
\N	\N	\N	\N	\N	up to 26 ppm
\N	\N	\N	\N	\N	up to 45 ppm
\N	\N	\N	\N	\N	up to 18 ppm
\N	\N	\N	\N	\N	up to 20 ppm
\N	\N	\N	\N	\N	up to 21 ppm
\N	\N	\N	\N	\N	up to 30 ppm
\N	\N	\N	\N	\N	up to 31 ppm
\N	\N	\N	\N	\N	up to 34 ppm
\N	\N	\N	\N	\N	up to 40 ppm
\N	\N	\N	\N	\N	up to 7.5 ppm
\.


--
-- Data for Name: filter21; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter21 (lloji, "filtro_sipas_markës") FROM stdin;
Betoniere	\N
Vibrator	\N
Ngjeshës	\N
Nivelues	\N
Sharra	\N
Vinça	\N
Karroca	\N
Aksesorë	\N
Kova shkarkimi për inerte	\N
Tuba dhe elemente skelerish	\N
Thasë, rrjetë dhe materiale te tjera	\N
Skela të gatshme	\N
Betoforma	\N
Trarë Dopio T	\N
Distancierë	\N
Shkallë metalike	\N
Puntela	\N
Shkallë shkallë druri	\N
\N	Masterpac
\N	Brixo
\N	SPA CONSTRUZIONI
\N	Verdelook
\N	Garden Jet
\N	PERI
\N	Kinzo
\.


--
-- Data for Name: filter210; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter210 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave) FROM stdin;
Karikues	\N	\N
Karikues Wireless	\N	\N
Karikues për makinë	\N	\N
Kabuj te ndryshem	\N	\N
\N	Joyroom	\N
\N	Moxom	\N
\N	Hoco	\N
\N	Konfulon	\N
\N	Apple	\N
\N	Baseus	\N
\N	LDNIO	\N
\N	Remax	\N
\N	Samsung	\N
\N	SanDisk	\N
\N	Sony	\N
\N	Xiaomi	\N
\N	\N	Black
\N	\N	Gold
\N	\N	Pink
\N	\N	Red
\N	\N	Silver
\N	\N	White
\.


--
-- Data for Name: filter211; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter211 (nenkategori, "filtro_sipas_markës", memoria, ram) FROM stdin;
Router Wi-Fi	\N	\N	\N
Switch	\N	\N	\N
Extender	\N	\N	\N
Repeater	\N	\N	\N
Access Point	\N	\N	\N
Adapter	\N	\N	\N
Antenna	\N	\N	\N
\N	Commando	\N	\N
\N	Pixlink	\N	\N
\N	Mercusys	\N	\N
\N	Netis	\N	\N
\N	TP-Link	\N	\N
\N	Xiaomi	\N	\N
\N	\N	256MB	\N
\N	\N	\N	512MB
\.


--
-- Data for Name: filter212; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter212 (nenkategori, "filtro_sipas_markës") FROM stdin;
Antivirus	\N
\N	Kaspersky
\.


--
-- Data for Name: filter213; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter213 (nenkategori, "filtro_sipas_markës", "madhësia_ekranit", memoria, ram, memoria_hdd__asgn__ssd, rezolucioni_ekranit, refresh_rate, filtro_sipas_ngjyrave, write_speed, read_speed) FROM stdin;
UPS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
SSD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
HDD i jashtem	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Monitor	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mouse	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Tastier	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	INNOVATION IT	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Logitech	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Panther	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	WD	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Crucial	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Freecom	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Gigabyte	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Intel	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Kodak	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	A4Tech	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Acer	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Apple	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Asus	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Baseus	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Canon	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Dell	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Epson	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Gembird	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Genius	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	HP	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Kingston	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Lenovo	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Maxtor	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Remax	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Samsung	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	SanDisk	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Toshiba	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Trust	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Verbatim	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Xiaomi	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	23.8"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	24"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	25"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	27"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	31.5"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	32"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	49"	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	250GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	120GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	480GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	500GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	128GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	256GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	512GB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	1TB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	2TB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	4TB	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	8GB	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	240GB	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	480GB	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	960GB	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	5120 x 1440 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	60Hz	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	75Hz	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	144Hz	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	165Hz	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	240Hz	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Berry	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Chocolate	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Dark Blue	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Dark Side of the Moon	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Iron Grey	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Lunar Light	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Rosy Brown	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Black	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Blue	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Forest Green	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Gold	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Gray	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Green	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Pink	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Red	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Silver	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	White	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1000 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	2000 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	420MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	440 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	450 MBps	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	500MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	515 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	530 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	80MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	415MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	480MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1050 MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2000 MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	450MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	500 MBps
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	530 MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	540 MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	545MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	550 MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	555MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	480MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	560MB/s
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	130MB/s
\.


--
-- Data for Name: filter214; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter214 (nenkategori, "filtro_sipas_markës", aksesor_per, "madhësia_ekranit", memoria, filtro_sipas_ngjyrave, write_speed, read_speed, filtro_sipas_kapacitetit) FROM stdin;
Ftohes per laptop	\N	\N	\N	\N	\N	\N	\N	\N
Selfie Stick	\N	\N	\N	\N	\N	\N	\N	\N
Vegla Pune	\N	\N	\N	\N	\N	\N	\N	\N
Bateri	\N	\N	\N	\N	\N	\N	\N	\N
Elektrik	\N	\N	\N	\N	\N	\N	\N	\N
Kart Memorie	\N	\N	\N	\N	\N	\N	\N	\N
Kover	\N	\N	\N	\N	\N	\N	\N	\N
Kufje	\N	\N	\N	\N	\N	\N	\N	\N
Power Bank	\N	\N	\N	\N	\N	\N	\N	\N
\N	AKG	\N	\N	\N	\N	\N	\N	\N
\N	AQL	\N	\N	\N	\N	\N	\N	\N
\N	Cellularline	\N	\N	\N	\N	\N	\N	\N
\N	Emtec	\N	\N	\N	\N	\N	\N	\N
\N	Havit	\N	\N	\N	\N	\N	\N	\N
\N	Honor	\N	\N	\N	\N	\N	\N	\N
\N	HYCOO	\N	\N	\N	\N	\N	\N	\N
\N	Imilad	\N	\N	\N	\N	\N	\N	\N
\N	INNOVATION IT	\N	\N	\N	\N	\N	\N	\N
\N	iPEGA	\N	\N	\N	\N	\N	\N	\N
\N	Logitech	\N	\N	\N	\N	\N	\N	\N
\N	Maxell	\N	\N	\N	\N	\N	\N	\N
\N	Microsoft	\N	\N	\N	\N	\N	\N	\N
\N	Moxom	\N	\N	\N	\N	\N	\N	\N
\N	Oculus	\N	\N	\N	\N	\N	\N	\N
\N	Onikuma	\N	\N	\N	\N	\N	\N	\N
\N	Ploos	\N	\N	\N	\N	\N	\N	\N
\N	Realme	\N	\N	\N	\N	\N	\N	\N
\N	Tigernu	\N	\N	\N	\N	\N	\N	\N
\N	Bose	\N	\N	\N	\N	\N	\N	\N
\N	Cross Gear	\N	\N	\N	\N	\N	\N	\N
\N	Fiesta	\N	\N	\N	\N	\N	\N	\N
\N	Haylou	\N	\N	\N	\N	\N	\N	\N
\N	Jabra	\N	\N	\N	\N	\N	\N	\N
\N	Kodak	\N	\N	\N	\N	\N	\N	\N
\N	Monster	\N	\N	\N	\N	\N	\N	\N
\N	Platinet	\N	\N	\N	\N	\N	\N	\N
\N	Proda	\N	\N	\N	\N	\N	\N	\N
\N	Sbox	\N	\N	\N	\N	\N	\N	\N
\N	WK	\N	\N	\N	\N	\N	\N	\N
\N	A4Tech	\N	\N	\N	\N	\N	\N	\N
\N	Apple	\N	\N	\N	\N	\N	\N	\N
\N	Asus	\N	\N	\N	\N	\N	\N	\N
\N	Baseus	\N	\N	\N	\N	\N	\N	\N
\N	Beats	\N	\N	\N	\N	\N	\N	\N
\N	Dell	\N	\N	\N	\N	\N	\N	\N
\N	Gembird	\N	\N	\N	\N	\N	\N	\N
\N	Genius	\N	\N	\N	\N	\N	\N	\N
\N	Google	\N	\N	\N	\N	\N	\N	\N
\N	Hitachi-LG	\N	\N	\N	\N	\N	\N	\N
\N	HP	\N	\N	\N	\N	\N	\N	\N
\N	JBL	\N	\N	\N	\N	\N	\N	\N
\N	Kingston	\N	\N	\N	\N	\N	\N	\N
\N	LDNIO	\N	\N	\N	\N	\N	\N	\N
\N	Lenovo	\N	\N	\N	\N	\N	\N	\N
\N	Omega	\N	\N	\N	\N	\N	\N	\N
\N	Oneplus	\N	\N	\N	\N	\N	\N	\N
\N	Panasonic	\N	\N	\N	\N	\N	\N	\N
\N	Philips	\N	\N	\N	\N	\N	\N	\N
\N	Picun	\N	\N	\N	\N	\N	\N	\N
\N	QCY	\N	\N	\N	\N	\N	\N	\N
\N	Remax	\N	\N	\N	\N	\N	\N	\N
\N	Samsung	\N	\N	\N	\N	\N	\N	\N
\N	SanDisk	\N	\N	\N	\N	\N	\N	\N
\N	Sony	\N	\N	\N	\N	\N	\N	\N
\N	TP-Link	\N	\N	\N	\N	\N	\N	\N
\N	Trust	\N	\N	\N	\N	\N	\N	\N
\N	TWS	\N	\N	\N	\N	\N	\N	\N
\N	Tysso	\N	\N	\N	\N	\N	\N	\N
\N	Uiisii	\N	\N	\N	\N	\N	\N	\N
\N	Verbatim	\N	\N	\N	\N	\N	\N	\N
\N	Xiaomi	\N	\N	\N	\N	\N	\N	\N
\N	\N	Kompjuter	\N	\N	\N	\N	\N	\N
\N	\N	Tablet	\N	\N	\N	\N	\N	\N
\N	\N	Telefon	\N	\N	\N	\N	\N	\N
\N	\N	\N	11"	\N	\N	\N	\N	\N
\N	\N	\N	12.9"	\N	\N	\N	\N	\N
\N	\N	\N	13.3"	\N	\N	\N	\N	\N
\N	\N	\N	14"	\N	\N	\N	\N	\N
\N	\N	\N	15.6"	\N	\N	\N	\N	\N
\N	\N	\N	15"	\N	\N	\N	\N	\N
\N	\N	\N	16"	\N	\N	\N	\N	\N
\N	\N	\N	17.3"	\N	\N	\N	\N	\N
\N	\N	\N	7"	\N	\N	\N	\N	\N
\N	\N	\N	\N	250GB	\N	\N	\N	\N
\N	\N	\N	\N	400GB	\N	\N	\N	\N
\N	\N	\N	\N	120GB	\N	\N	\N	\N
\N	\N	\N	\N	500GB	\N	\N	\N	\N
\N	\N	\N	\N	16GB	\N	\N	\N	\N
\N	\N	\N	\N	32GB	\N	\N	\N	\N
\N	\N	\N	\N	64GB	\N	\N	\N	\N
\N	\N	\N	\N	128GB	\N	\N	\N	\N
\N	\N	\N	\N	256GB	\N	\N	\N	\N
\N	\N	\N	\N	512GB	\N	\N	\N	\N
\N	\N	\N	\N	1TB	\N	\N	\N	\N
\N	\N	\N	\N	2TB	\N	\N	\N	\N
\N	\N	\N	\N	4TB	\N	\N	\N	\N
\N	\N	\N	\N	\N	Dark Blue	\N	\N	\N
\N	\N	\N	\N	\N	Dark Grey	\N	\N	\N
\N	\N	\N	\N	\N	Grey	\N	\N	\N
\N	\N	\N	\N	\N	Matte Black	\N	\N	\N
\N	\N	\N	\N	\N	Meteor Silver	\N	\N	\N
\N	\N	\N	\N	\N	Mint Green	\N	\N	\N
\N	\N	\N	\N	\N	Mystic Black	\N	\N	\N
\N	\N	\N	\N	\N	Mystic Bronze	\N	\N	\N
\N	\N	\N	\N	\N	Phantom Black	\N	\N	\N
\N	\N	\N	\N	\N	Phantom Silver	\N	\N	\N
\N	\N	\N	\N	\N	Purple	\N	\N	\N
\N	\N	\N	\N	\N	Starry Sky	\N	\N	\N
\N	\N	\N	\N	\N	Teal	\N	\N	\N
\N	\N	\N	\N	\N	Turquoise	\N	\N	\N
\N	\N	\N	\N	\N	Yellow	\N	\N	\N
\N	\N	\N	\N	\N	Black	\N	\N	\N
\N	\N	\N	\N	\N	Blue	\N	\N	\N
\N	\N	\N	\N	\N	Clear Yellow	\N	\N	\N
\N	\N	\N	\N	\N	Cobalt Blue	\N	\N	\N
\N	\N	\N	\N	\N	Coral	\N	\N	\N
\N	\N	\N	\N	\N	Dusty Pink	\N	\N	\N
\N	\N	\N	\N	\N	Fiesta Red	\N	\N	\N
\N	\N	\N	\N	\N	Gold	\N	\N	\N
\N	\N	\N	\N	\N	Gray	\N	\N	\N
\N	\N	\N	\N	\N	Green	\N	\N	\N
\N	\N	\N	\N	\N	Ice Blue	\N	\N	\N
\N	\N	\N	\N	\N	Midnight Black	\N	\N	\N
\N	\N	\N	\N	\N	Orange	\N	\N	\N
\N	\N	\N	\N	\N	Pink	\N	\N	\N
\N	\N	\N	\N	\N	Red	\N	\N	\N
\N	\N	\N	\N	\N	Rose Gold	\N	\N	\N
\N	\N	\N	\N	\N	Rose Red	\N	\N	\N
\N	\N	\N	\N	\N	Silver	\N	\N	\N
\N	\N	\N	\N	\N	Space Gray	\N	\N	\N
\N	\N	\N	\N	\N	Stone Gray	\N	\N	\N
\N	\N	\N	\N	\N	White	\N	\N	\N
\N	\N	\N	\N	\N	\N	1000 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	150 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	2000 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	260 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	385 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	450 MBps	\N	\N
\N	\N	\N	\N	\N	\N	500MB/s	\N	\N
\N	\N	\N	\N	\N	\N	515 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	530 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	10MB/s	\N	\N
\N	\N	\N	\N	\N	\N	140MB/s	\N	\N
\N	\N	\N	\N	\N	\N	20MB/s	\N	\N
\N	\N	\N	\N	\N	\N	480MB/s	\N	\N
\N	\N	\N	\N	\N	\N	4MB/s	\N	\N
\N	\N	\N	\N	\N	\N	60MB/s	\N	\N
\N	\N	\N	\N	\N	\N	90MB/s	\N	\N
\N	\N	\N	\N	\N	\N	\N	1050 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	20 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	2000 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	420 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	500 MBps	\N
\N	\N	\N	\N	\N	\N	\N	540 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	550 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	10MB/s	\N
\N	\N	\N	\N	\N	\N	\N	160MB/s	\N
\N	\N	\N	\N	\N	\N	\N	170MB/s	\N
\N	\N	\N	\N	\N	\N	\N	480MB/s	\N
\N	\N	\N	\N	\N	\N	\N	48MB/s	\N
\N	\N	\N	\N	\N	\N	\N	560MB/s	\N
\N	\N	\N	\N	\N	\N	\N	80MB/s	\N
\N	\N	\N	\N	\N	\N	\N	90MB/s	\N
\N	\N	\N	\N	\N	\N	\N	98MB/s	\N
\N	\N	\N	\N	\N	\N	\N	100MB/s	\N
\N	\N	\N	\N	\N	\N	\N	130MB/s	\N
\N	\N	\N	\N	\N	\N	\N	150MB/s	\N
\N	\N	\N	\N	\N	\N	\N	300MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	10000 mAh
\N	\N	\N	\N	\N	\N	\N	\N	1000mAh
\N	\N	\N	\N	\N	\N	\N	\N	10050 mAh
\N	\N	\N	\N	\N	\N	\N	\N	100mAh
\N	\N	\N	\N	\N	\N	\N	\N	1050mAh
\N	\N	\N	\N	\N	\N	\N	\N	1150mAh
\N	\N	\N	\N	\N	\N	\N	\N	1300mAh
\N	\N	\N	\N	\N	\N	\N	\N	20000 mAh
\N	\N	\N	\N	\N	\N	\N	\N	2600mAh
\N	\N	\N	\N	\N	\N	\N	\N	2800mAh
\N	\N	\N	\N	\N	\N	\N	\N	30000 mAh
\N	\N	\N	\N	\N	\N	\N	\N	3300 mAh
\N	\N	\N	\N	\N	\N	\N	\N	4200 mAh
\N	\N	\N	\N	\N	\N	\N	\N	450mAh
\N	\N	\N	\N	\N	\N	\N	\N	750mAh
\.


--
-- Data for Name: filter215; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter215 (nenkategori, "filtro_sipas_markës", color_capability) FROM stdin;
Leter	\N	\N
Bojra Printeri	\N	\N
Tonera Printeri	\N	\N
\N	Deluxe	\N
\N	Double A	\N
\N	HP	\N
\N	Omega	\N
\N	Samsung	\N
\N	Xiaomi	\N
\N	\N	Black
\N	\N	Cyan
\N	\N	Magenta
\N	\N	Yellow
\.


--
-- Data for Name: filter216; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter216 (nenkategori, "filtro_sipas_markës", viti_i_prodhimit, memoria, ram, kamera_kryesore, kamera_e_perparme, tipi_ekranit, "madhësia_ekranit", rezolucioni_ekranit, bateria, vendi_i_karikimit, refresh_rate, filtro_sipas_ngjyrave) FROM stdin;
Smartphones	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Celular me butona	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Motorola	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Apple	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Blackberry	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Blackview	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Doogee	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Nokia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Samsung	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Xiaomi	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2021	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2012	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2020	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2013	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2015	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2017	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2018	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2019	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	16MB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	4MB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	4GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	16GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	32GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	64GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	128GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	256GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	512GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	8MB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	512MB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	1GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	2GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	3GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	4GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	6GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	8GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	12GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	4MB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (108MP, 10MP, 10MP, 12MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (12MP, 12MP, 12MP, TOF 3D LiDAR)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (13MP, 8MP, 5MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (16MP, 8MP, 2MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (48MP, 5MP, 2MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (48MP, 8MP, 5MP, 5MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (64MP, 13MP, 2MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (64MP, 5MP, 13MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (64MP, 8MP, 12MP, 5MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (64MP, 8MP, 5MP, 5MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (108MP, 12MP, 12MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (12MP, 12MP, 12MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (12MP, 64MP, 12MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (12MP, 8MP. 12MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (13MP, 2MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (13MP, 5MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (16MP, 2MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (16MP, 8MP, 0.3MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (48MP, 2MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Dual (12MP, 12MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Dual (12MP, 2MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Dual (13MP, 2MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Dual (13MP, 5MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Dual (8MP, 5MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (108MP, 48MP, 12MP, 0.3MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (12MP, 64MP, 12MP, 0.3MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (13MP, 2MP, 0.3MP, 0.3MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (48MP, 12MP, 5MP, 5MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (48MP, 8MP, 2MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (48MP, 8MP, 5MP, 2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Quad (64MP, 12MP, 5MP, 5MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Single (0.3MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Single (12MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Single (13MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Single (2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Single (3.15MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Single (8MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Single (VGA)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (12MP, 12MP, 12MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (13MP, 8MP, 5MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	Triple (48MP, 8MP, 5MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (40MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Dual (10MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Dual (12MP, SL 3D)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Dual (40MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (10MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (13MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (16MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (20MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (25MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (32MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (5MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (8MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Dynamic AMOLED 2X, 120Hz, HDR10+	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Foldable Dynamic AMOLED 2X, 120Hz, HDR10+	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	OGS	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	PLS IPS	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Super AMOLED Plus	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	AMOLED	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Dynamic AMOLED	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Dynamic AMOLED 2X	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	IPS LCD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Liquid Retina IPS LCD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	PLS TFT	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Super AMOLED	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Super Retina XDR OLED	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	TFT	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	1.77"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	2.0"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	5.3"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.43"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.52"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.53"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.6"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	7.6"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	1.52"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	2.4"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	2.8"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	5.7"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.67"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.9"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	1.8"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	5.5"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	5.8"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.1"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.2"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.3"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.4"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.5"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.7"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	6.8"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1170 x 2532 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	128 x 160 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1284 x 2778 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1440 x 3088 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1440x720 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1768 x 2208 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	720 x 1600 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1080 x 2636 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	128 x 128 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1440 x 3200 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	240 x 320 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	320 x 240 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	480 x 960 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	120 x 160 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	600 x 1280 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	720 x 1480 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1080 x 2280 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1080 x 2340 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1080 x 2400 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1125 x 2436 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	1242 x 2688 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	720 x 1520 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	720 x 1560 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	828 x 1792 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1,100mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1,150mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2,815mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3687mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,180 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,200mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,400 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,700mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4520mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4800mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5,160 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5,180mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5,580mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7,000mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1,020 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1,200 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1,450 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1,500 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,046 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,110 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,300 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,400 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,500 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,969 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,350 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,500 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,650 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5,000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5,020mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6,000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	800 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Micro USB	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Power bank/Reverse wireless charging	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Qi wireless charging	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	USB Power Delivery 2.0	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	USB Power Delivery 3.0	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	USB Type C	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	120Hz	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	90Hz	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Aurora Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Carbon Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Carbon Silver
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Charcoal Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cloud Navy
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cloud Red
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cloud White
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Fantasy Forest
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Graphite
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Grey
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Interstellar Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Lake Green
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Matte Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Midnight Grey
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Mint Green
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Mystic Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Mystic Bronze
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Nature Green
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Onyx Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pacific Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Phantom Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Phantom Silver
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Phantom Violet
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pink Pastel
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Purple
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Sea Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Shadow Grey
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Sky Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Sky White
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Space Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Sporty Orange
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Sunrise Flare
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Sunset Red
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Aura Glow
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Clear Purple
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Clear Yellow
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cloud Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cobalt Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coral
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Dusty Pink
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Gold
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Green
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Lavender Purple
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Lilac Purple
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Midnight Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Midnight Green
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Orange
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Prism Crush Violet
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Red
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Silver
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Space Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	White
\.


--
-- Data for Name: filter217; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter217 (nenkategori, "filtro_sipas_markës", viti_i_prodhimit, memoria, lloj_i_lidhjes, ram, kamera_kryesore, kamera_e_perparme, tipi_ekranit, "madhësia_ekranit", rezolucioni_ekranit, bateria, vendi_i_karikimit, refresh_rate, filtro_sipas_ngjyrave) FROM stdin;
E-Readers	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
iPad	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Android Tablets	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Amazon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Acer	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Alcatel	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Apple	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Blackview	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Huawei	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Lenovo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Samsung	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	Xiaomi	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2020	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2015	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2017	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2018	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	2019	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	8GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	16GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	32GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	64GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	128GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	256GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	512GB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	1TB	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	3G	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	4G	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	4G / LTE	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	WiFi	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	1.5 GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	1GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	2GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	3GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	4GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	6GB	\N	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Triple (12MP, 10MP, TOF 3D )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Dual (13MP, 5MP )	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (12MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (13MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (2MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (5MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	Single (8MP)	\N	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Single (0.3MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	VGA	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Single (1.2MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Single (2MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Single (5MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Single (7MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	Single (8MP)	\N	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	E Ink Carta	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	LCD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Liquid Retina	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	PLS LCD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	TN	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	IPS LCD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Liquid Retina IPS LCD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	LTPS IPS LCD	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	Super AMOLED	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	TFT	\N	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	10.4"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	10.9"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	10"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	11"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	13.5"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	9.6"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	9.7"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	10.1"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	10.2"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	10.5"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	12.9"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	6.0"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	7.0"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	8.0"	\N	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1024 x 600 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200 x 2000 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1280 x 800	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1536 x 2048 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1600 x 2560 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1620 x 2160 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1640 x 2360 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1668 x 2224 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1668 x 2388 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1920 x 1200 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2160 x 1620 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2732 x 2048 pixel	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	300ppi	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	800 x 1280 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200 x 1920 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200 x 800 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1920 x 1080 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	600 x 1024 pixels	\N	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2,580mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,590mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3200mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,200mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4450mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4800mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4850mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5100mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6,580mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7040mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8,000mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8,134mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8827mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Up to 10 hours	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2,750 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3,500 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4,080 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5,000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6,000 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6,150 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7.300 mAh	\N	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Micro USB	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	USB Type C	\N	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	120Hz	\N
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Angora Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Charcoal Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Chiffon Pink
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Graphite
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Iron Grey
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Mystic Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Mystic Bronze
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Mystic Silver
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Oxford Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Platinum Grey
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Plum
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Purple
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Sandstone
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Sky Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Black
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cloud Blue
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Gold
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Green
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pink
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Red
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Rose Gold
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Silver
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Space Gray
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	White
\.


--
-- Data for Name: filter218; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter218 (nenkategori, "filtro_sipas_markës", aksesor_per, "madhësia_ekranit", memoria, filtro_sipas_ngjyrave, write_speed, read_speed, filtro_sipas_kapacitetit) FROM stdin;
Ftohes per laptop	\N	\N	\N	\N	\N	\N	\N	\N
Selfie Stick	\N	\N	\N	\N	\N	\N	\N	\N
Vegla Pune	\N	\N	\N	\N	\N	\N	\N	\N
Bateri	\N	\N	\N	\N	\N	\N	\N	\N
Elektrik	\N	\N	\N	\N	\N	\N	\N	\N
Kart Memorie	\N	\N	\N	\N	\N	\N	\N	\N
Kover	\N	\N	\N	\N	\N	\N	\N	\N
Kufje	\N	\N	\N	\N	\N	\N	\N	\N
Power Bank	\N	\N	\N	\N	\N	\N	\N	\N
\N	AKG	\N	\N	\N	\N	\N	\N	\N
\N	AQL	\N	\N	\N	\N	\N	\N	\N
\N	Cellularline	\N	\N	\N	\N	\N	\N	\N
\N	Emtec	\N	\N	\N	\N	\N	\N	\N
\N	Havit	\N	\N	\N	\N	\N	\N	\N
\N	Honor	\N	\N	\N	\N	\N	\N	\N
\N	HYCOO	\N	\N	\N	\N	\N	\N	\N
\N	Imilad	\N	\N	\N	\N	\N	\N	\N
\N	INNOVATION IT	\N	\N	\N	\N	\N	\N	\N
\N	iPEGA	\N	\N	\N	\N	\N	\N	\N
\N	Logitech	\N	\N	\N	\N	\N	\N	\N
\N	Maxell	\N	\N	\N	\N	\N	\N	\N
\N	Microsoft	\N	\N	\N	\N	\N	\N	\N
\N	Moxom	\N	\N	\N	\N	\N	\N	\N
\N	Oculus	\N	\N	\N	\N	\N	\N	\N
\N	Onikuma	\N	\N	\N	\N	\N	\N	\N
\N	Ploos	\N	\N	\N	\N	\N	\N	\N
\N	Realme	\N	\N	\N	\N	\N	\N	\N
\N	Tigernu	\N	\N	\N	\N	\N	\N	\N
\N	Bose	\N	\N	\N	\N	\N	\N	\N
\N	Cross Gear	\N	\N	\N	\N	\N	\N	\N
\N	Fiesta	\N	\N	\N	\N	\N	\N	\N
\N	Haylou	\N	\N	\N	\N	\N	\N	\N
\N	Jabra	\N	\N	\N	\N	\N	\N	\N
\N	Kodak	\N	\N	\N	\N	\N	\N	\N
\N	Monster	\N	\N	\N	\N	\N	\N	\N
\N	Platinet	\N	\N	\N	\N	\N	\N	\N
\N	Proda	\N	\N	\N	\N	\N	\N	\N
\N	Sbox	\N	\N	\N	\N	\N	\N	\N
\N	WK	\N	\N	\N	\N	\N	\N	\N
\N	A4Tech	\N	\N	\N	\N	\N	\N	\N
\N	Apple	\N	\N	\N	\N	\N	\N	\N
\N	Asus	\N	\N	\N	\N	\N	\N	\N
\N	Baseus	\N	\N	\N	\N	\N	\N	\N
\N	Beats	\N	\N	\N	\N	\N	\N	\N
\N	Dell	\N	\N	\N	\N	\N	\N	\N
\N	Gembird	\N	\N	\N	\N	\N	\N	\N
\N	Genius	\N	\N	\N	\N	\N	\N	\N
\N	Google	\N	\N	\N	\N	\N	\N	\N
\N	Hitachi-LG	\N	\N	\N	\N	\N	\N	\N
\N	HP	\N	\N	\N	\N	\N	\N	\N
\N	JBL	\N	\N	\N	\N	\N	\N	\N
\N	Kingston	\N	\N	\N	\N	\N	\N	\N
\N	LDNIO	\N	\N	\N	\N	\N	\N	\N
\N	Lenovo	\N	\N	\N	\N	\N	\N	\N
\N	Omega	\N	\N	\N	\N	\N	\N	\N
\N	Oneplus	\N	\N	\N	\N	\N	\N	\N
\N	Panasonic	\N	\N	\N	\N	\N	\N	\N
\N	Philips	\N	\N	\N	\N	\N	\N	\N
\N	Picun	\N	\N	\N	\N	\N	\N	\N
\N	QCY	\N	\N	\N	\N	\N	\N	\N
\N	Remax	\N	\N	\N	\N	\N	\N	\N
\N	Samsung	\N	\N	\N	\N	\N	\N	\N
\N	SanDisk	\N	\N	\N	\N	\N	\N	\N
\N	Sony	\N	\N	\N	\N	\N	\N	\N
\N	TP-Link	\N	\N	\N	\N	\N	\N	\N
\N	Trust	\N	\N	\N	\N	\N	\N	\N
\N	TWS	\N	\N	\N	\N	\N	\N	\N
\N	Tysso	\N	\N	\N	\N	\N	\N	\N
\N	Uiisii	\N	\N	\N	\N	\N	\N	\N
\N	Verbatim	\N	\N	\N	\N	\N	\N	\N
\N	Xiaomi	\N	\N	\N	\N	\N	\N	\N
\N	\N	Kompjuter	\N	\N	\N	\N	\N	\N
\N	\N	Tablet	\N	\N	\N	\N	\N	\N
\N	\N	Telefon	\N	\N	\N	\N	\N	\N
\N	\N	\N	11"	\N	\N	\N	\N	\N
\N	\N	\N	12.9"	\N	\N	\N	\N	\N
\N	\N	\N	13.3"	\N	\N	\N	\N	\N
\N	\N	\N	14"	\N	\N	\N	\N	\N
\N	\N	\N	15.6"	\N	\N	\N	\N	\N
\N	\N	\N	15"	\N	\N	\N	\N	\N
\N	\N	\N	16"	\N	\N	\N	\N	\N
\N	\N	\N	17.3"	\N	\N	\N	\N	\N
\N	\N	\N	7"	\N	\N	\N	\N	\N
\N	\N	\N	\N	250GB	\N	\N	\N	\N
\N	\N	\N	\N	400GB	\N	\N	\N	\N
\N	\N	\N	\N	120GB	\N	\N	\N	\N
\N	\N	\N	\N	500GB	\N	\N	\N	\N
\N	\N	\N	\N	16GB	\N	\N	\N	\N
\N	\N	\N	\N	32GB	\N	\N	\N	\N
\N	\N	\N	\N	64GB	\N	\N	\N	\N
\N	\N	\N	\N	128GB	\N	\N	\N	\N
\N	\N	\N	\N	256GB	\N	\N	\N	\N
\N	\N	\N	\N	512GB	\N	\N	\N	\N
\N	\N	\N	\N	1TB	\N	\N	\N	\N
\N	\N	\N	\N	2TB	\N	\N	\N	\N
\N	\N	\N	\N	4TB	\N	\N	\N	\N
\N	\N	\N	\N	\N	Dark Blue	\N	\N	\N
\N	\N	\N	\N	\N	Dark Grey	\N	\N	\N
\N	\N	\N	\N	\N	Grey	\N	\N	\N
\N	\N	\N	\N	\N	Matte Black	\N	\N	\N
\N	\N	\N	\N	\N	Meteor Silver	\N	\N	\N
\N	\N	\N	\N	\N	Mint Green	\N	\N	\N
\N	\N	\N	\N	\N	Mystic Black	\N	\N	\N
\N	\N	\N	\N	\N	Mystic Bronze	\N	\N	\N
\N	\N	\N	\N	\N	Phantom Black	\N	\N	\N
\N	\N	\N	\N	\N	Phantom Silver	\N	\N	\N
\N	\N	\N	\N	\N	Purple	\N	\N	\N
\N	\N	\N	\N	\N	Starry Sky	\N	\N	\N
\N	\N	\N	\N	\N	Teal	\N	\N	\N
\N	\N	\N	\N	\N	Turquoise	\N	\N	\N
\N	\N	\N	\N	\N	Yellow	\N	\N	\N
\N	\N	\N	\N	\N	Black	\N	\N	\N
\N	\N	\N	\N	\N	Blue	\N	\N	\N
\N	\N	\N	\N	\N	Clear Yellow	\N	\N	\N
\N	\N	\N	\N	\N	Cobalt Blue	\N	\N	\N
\N	\N	\N	\N	\N	Coral	\N	\N	\N
\N	\N	\N	\N	\N	Dusty Pink	\N	\N	\N
\N	\N	\N	\N	\N	Fiesta Red	\N	\N	\N
\N	\N	\N	\N	\N	Gold	\N	\N	\N
\N	\N	\N	\N	\N	Gray	\N	\N	\N
\N	\N	\N	\N	\N	Green	\N	\N	\N
\N	\N	\N	\N	\N	Ice Blue	\N	\N	\N
\N	\N	\N	\N	\N	Midnight Black	\N	\N	\N
\N	\N	\N	\N	\N	Orange	\N	\N	\N
\N	\N	\N	\N	\N	Pink	\N	\N	\N
\N	\N	\N	\N	\N	Red	\N	\N	\N
\N	\N	\N	\N	\N	Rose Gold	\N	\N	\N
\N	\N	\N	\N	\N	Rose Red	\N	\N	\N
\N	\N	\N	\N	\N	Silver	\N	\N	\N
\N	\N	\N	\N	\N	Space Gray	\N	\N	\N
\N	\N	\N	\N	\N	Stone Gray	\N	\N	\N
\N	\N	\N	\N	\N	White	\N	\N	\N
\N	\N	\N	\N	\N	\N	1000 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	150 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	2000 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	260 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	385 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	450 MBps	\N	\N
\N	\N	\N	\N	\N	\N	500MB/s	\N	\N
\N	\N	\N	\N	\N	\N	515 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	530 MB/s	\N	\N
\N	\N	\N	\N	\N	\N	10MB/s	\N	\N
\N	\N	\N	\N	\N	\N	140MB/s	\N	\N
\N	\N	\N	\N	\N	\N	20MB/s	\N	\N
\N	\N	\N	\N	\N	\N	480MB/s	\N	\N
\N	\N	\N	\N	\N	\N	4MB/s	\N	\N
\N	\N	\N	\N	\N	\N	60MB/s	\N	\N
\N	\N	\N	\N	\N	\N	90MB/s	\N	\N
\N	\N	\N	\N	\N	\N	\N	1050 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	20 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	2000 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	420 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	500 MBps	\N
\N	\N	\N	\N	\N	\N	\N	540 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	550 MB/s	\N
\N	\N	\N	\N	\N	\N	\N	10MB/s	\N
\N	\N	\N	\N	\N	\N	\N	160MB/s	\N
\N	\N	\N	\N	\N	\N	\N	170MB/s	\N
\N	\N	\N	\N	\N	\N	\N	480MB/s	\N
\N	\N	\N	\N	\N	\N	\N	48MB/s	\N
\N	\N	\N	\N	\N	\N	\N	560MB/s	\N
\N	\N	\N	\N	\N	\N	\N	80MB/s	\N
\N	\N	\N	\N	\N	\N	\N	90MB/s	\N
\N	\N	\N	\N	\N	\N	\N	98MB/s	\N
\N	\N	\N	\N	\N	\N	\N	100MB/s	\N
\N	\N	\N	\N	\N	\N	\N	130MB/s	\N
\N	\N	\N	\N	\N	\N	\N	150MB/s	\N
\N	\N	\N	\N	\N	\N	\N	300MB/s	\N
\N	\N	\N	\N	\N	\N	\N	\N	10000 mAh
\N	\N	\N	\N	\N	\N	\N	\N	1000mAh
\N	\N	\N	\N	\N	\N	\N	\N	10050 mAh
\N	\N	\N	\N	\N	\N	\N	\N	100mAh
\N	\N	\N	\N	\N	\N	\N	\N	1050mAh
\N	\N	\N	\N	\N	\N	\N	\N	1150mAh
\N	\N	\N	\N	\N	\N	\N	\N	1300mAh
\N	\N	\N	\N	\N	\N	\N	\N	20000 mAh
\N	\N	\N	\N	\N	\N	\N	\N	2600mAh
\N	\N	\N	\N	\N	\N	\N	\N	2800mAh
\N	\N	\N	\N	\N	\N	\N	\N	30000 mAh
\N	\N	\N	\N	\N	\N	\N	\N	3300 mAh
\N	\N	\N	\N	\N	\N	\N	\N	4200 mAh
\N	\N	\N	\N	\N	\N	\N	\N	450mAh
\N	\N	\N	\N	\N	\N	\N	\N	750mAh
\.


--
-- Data for Name: filter219; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter219 (nenkategori, "filtro_sipas_markës", memoria, ram, filtro_sipas_ngjyrave) FROM stdin;
Apple Watches	\N	\N	\N	\N
Samsung Galaxy Watches	\N	\N	\N	\N
Xiaomi Mi Band	\N	\N	\N	\N
Amazfit Series	\N	\N	\N	\N
Mi Ciga Watches	\N	\N	\N	\N
Huawei Watches	\N	\N	\N	\N
\N	Amazfit	\N	\N	\N
\N	G-TAB	\N	\N	\N
\N	Honor	\N	\N	\N
\N	Imilad	\N	\N	\N
\N	Modio	\N	\N	\N
\N	Haylou	\N	\N	\N
\N	Apple	\N	\N	\N
\N	Blackview	\N	\N	\N
\N	Doogee	\N	\N	\N
\N	Samsung	\N	\N	\N
\N	Xiaomi	\N	\N	\N
\N	\N	32GB	\N	\N
\N	\N	\N	1GB	\N
\N	\N	\N	\N	Black/Red
\N	\N	\N	\N	Black/Yellow
\N	\N	\N	\N	Bronze
\N	\N	\N	\N	Brown
\N	\N	\N	\N	Cloud Silver
\N	\N	\N	\N	Dark Blue
\N	\N	\N	\N	Dark Green
\N	\N	\N	\N	Dark Grey
\N	\N	\N	\N	Deep Green/White
\N	\N	\N	\N	Grey
\N	\N	\N	\N	Light Green/White
\N	\N	\N	\N	Matte Black
\N	\N	\N	\N	Mystic Black
\N	\N	\N	\N	Mystic Silver
\N	\N	\N	\N	Nature Green
\N	\N	\N	\N	Orange/Black
\N	\N	\N	\N	Pink Pastel
\N	\N	\N	\N	Pink/White
\N	\N	\N	\N	Purple
\N	\N	\N	\N	Sky Blue
\N	\N	\N	\N	Yellow
\N	\N	\N	\N	Yellow/Black
\N	\N	\N	\N	Aqua Black
\N	\N	\N	\N	Black
\N	\N	\N	\N	Blue
\N	\N	\N	\N	Clear Purple
\N	\N	\N	\N	Cobalt Blue
\N	\N	\N	\N	Cyan
\N	\N	\N	\N	Gold
\N	\N	\N	\N	Green
\N	\N	\N	\N	Lilac Purple
\N	\N	\N	\N	Lime Green
\N	\N	\N	\N	Mustard Yellow
\N	\N	\N	\N	Orange
\N	\N	\N	\N	Pink
\N	\N	\N	\N	Red
\N	\N	\N	\N	Rose Gold
\N	\N	\N	\N	Silver
\N	\N	\N	\N	Space Gray
\N	\N	\N	\N	White
\.


--
-- Data for Name: filter22; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter22 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë lidhës	\N
Tuba PVC portokalli të hollë	\N
Tuba PVC portokalli të trashë	\N
Rakorderi PVC	\N
Tuba PP	\N
Rakorderi PP	\N
Tuba të brinjëzuar HDPE - SN4	\N
Tuba PVC portokalli të mesëm	\N
\N	Confort
\N	Teqja
\N	Parsan
\N	Tork
\.


--
-- Data for Name: filter220; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter220 (nenkategori, "filtro_sipas_markës", aksesor_per, filtro_sipas_ngjyrave) FROM stdin;
Over-ear Headphones	\N	\N	\N
On-ear Headphones	\N	\N	\N
In-Ear Headphones	\N	\N	\N
Sports &amp; Fitness Headphones	\N	\N	\N
Noise Canceling Headphones	\N	\N	\N
Premium Headphones	\N	\N	\N
Mini Jack Headphones	\N	\N	\N
Gaming Headphones	\N	\N	\N
\N	AKG	\N	\N
\N	AQL	\N	\N
\N	Cellularline	\N	\N
\N	Havit	\N	\N
\N	Honor	\N	\N
\N	HYCOO	\N	\N
\N	iPEGA	\N	\N
\N	Logitech	\N	\N
\N	Maxell	\N	\N
\N	Moxom	\N	\N
\N	Onikuma	\N	\N
\N	Ploos	\N	\N
\N	Realme	\N	\N
\N	Bose	\N	\N
\N	Jabra	\N	\N
\N	Monster	\N	\N
\N	Proda	\N	\N
\N	WK	\N	\N
\N	A4Tech	\N	\N
\N	Apple	\N	\N
\N	Baseus	\N	\N
\N	Beats	\N	\N
\N	Google	\N	\N
\N	JBL	\N	\N
\N	Lenovo	\N	\N
\N	Oneplus	\N	\N
\N	Philips	\N	\N
\N	Picun	\N	\N
\N	QCY	\N	\N
\N	Remax	\N	\N
\N	Samsung	\N	\N
\N	Sony	\N	\N
\N	Trust	\N	\N
\N	TWS	\N	\N
\N	Uiisii	\N	\N
\N	Xiaomi	\N	\N
\N	\N	Kompjuter	\N
\N	\N	Tablet	\N
\N	\N	Telefon	\N
\N	\N	\N	Dark Blue
\N	\N	\N	Grey
\N	\N	\N	Matte Black
\N	\N	\N	Meteor Silver
\N	\N	\N	Mint Green
\N	\N	\N	Mystic Black
\N	\N	\N	Mystic Bronze
\N	\N	\N	Phantom Black
\N	\N	\N	Phantom Silver
\N	\N	\N	Starry Sky
\N	\N	\N	Teal
\N	\N	\N	Turquoise
\N	\N	\N	Yellow
\N	\N	\N	Black
\N	\N	\N	Blue
\N	\N	\N	Coral
\N	\N	\N	Dusty Pink
\N	\N	\N	Gold
\N	\N	\N	Gray
\N	\N	\N	Green
\N	\N	\N	Midnight Black
\N	\N	\N	Pink
\N	\N	\N	Red
\N	\N	\N	Rose Gold
\N	\N	\N	Silver
\N	\N	\N	Space Gray
\N	\N	\N	Stone Gray
\N	\N	\N	White
\.


--
-- Data for Name: filter222; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter222 (nenkategori, "filtro_sipas_markës", "madhësia_ekranit", rezolucioni_ekranit, refresh_rate, filtro_sipas_ngjyrave) FROM stdin;
LED	\N	\N	\N	\N	\N
QLED	\N	\N	\N	\N	\N
OLED	\N	\N	\N	\N	\N
\N	LG	\N	\N	\N	\N
\N	Lobod	\N	\N	\N	\N
\N	Philips	\N	\N	\N	\N
\N	Samsung	\N	\N	\N	\N
\N	Xiaomi	\N	\N	\N	\N
\N	\N	70"	\N	\N	\N
\N	\N	82"	\N	\N	\N
\N	\N	32"	\N	\N	\N
\N	\N	42"	\N	\N	\N
\N	\N	43"	\N	\N	\N
\N	\N	49"	\N	\N	\N
\N	\N	50"	\N	\N	\N
\N	\N	55"	\N	\N	\N
\N	\N	60"	\N	\N	\N
\N	\N	65"	\N	\N	\N
\N	\N	75"	\N	\N	\N
\N	\N	\N	3840 × 2160 pixels	\N	\N
\N	\N	\N	7680 x 4320 pixels	\N	\N
\N	\N	\N	\N	100Hz	\N
\N	\N	\N	\N	\N	Carbon Silver
\N	\N	\N	\N	\N	Black
\N	\N	\N	\N	\N	Silver
\N	\N	\N	\N	\N	Titanium Gold
\.


--
-- Data for Name: filter223; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter223 (nenkategori, "filtro_sipas_markës") FROM stdin;
Projektor	\N
\N	Acer
\N	Canon
\N	Epson
\.


--
-- Data for Name: filter224; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter224 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave) FROM stdin;
Home Cinema	\N	\N
Soundbars	\N	\N
Portable Bluetooth Speakers	\N	\N
Party Speakers	\N	\N
Home Speakers	\N	\N
\N	Amazon	\N
\N	Bose	\N
\N	Bosnda	\N
\N	Peterhot	\N
\N	Apple	\N
\N	Baseus	\N
\N	Beats	\N
\N	Google	\N
\N	Harman Kardon	\N
\N	JBL	\N
\N	Marshall	\N
\N	Remax	\N
\N	Samsung	\N
\N	Seeknature	\N
\N	Xiaomi	\N
\N	\N	Chalk White
\N	\N	Champagne
\N	\N	Charcoal Gray
\N	\N	Copper Brown
\N	\N	Glacier White
\N	\N	Magenta
\N	\N	Midnight Blue
\N	\N	Twilight Blue
\N	\N	Yellow
\N	\N	Black
\N	\N	Blue
\N	\N	Cinnamon
\N	\N	Clear Yellow
\N	\N	Cyan
\N	\N	Desert Sand
\N	\N	Dusty Pink
\N	\N	Fiesta Red
\N	\N	Forest Green
\N	\N	Gray
\N	\N	Green
\N	\N	Midnight Black
\N	\N	Mustard Yellow
\N	\N	Ocean Blue
\N	\N	Orange
\N	\N	Pink
\N	\N	Red
\N	\N	River Teal
\N	\N	Silver
\N	\N	Space Gray
\N	\N	Squad
\N	\N	Steel White
\N	\N	Stone Gray
\N	\N	White
\.


--
-- Data for Name: filter225; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter225 (nenkategori, "filtro_sipas_markës", memoria, ram) FROM stdin;
Dekoder DVB T2S2	\N	\N	\N
Chromecast	\N	\N	\N
Android Box	\N	\N	\N
\N	Amazon	\N	\N
\N	Mirascreen	\N	\N
\N	Romsat	\N	\N
\N	Xiaomi	\N	\N
\N	\N	8GB	\N
\N	\N	\N	1GB
\N	\N	\N	2GB
\.


--
-- Data for Name: filter226; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter226 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave) FROM stdin;
Mbajtese TV Muri	\N	\N
Mbrojtese Tensioni	\N	\N
\N	Schneider Electric	\N
\N	Baseus	\N
\N	Gembird	\N
\N	Lobod	\N
\N	LogiLink	\N
\N	Omega	\N
\N	Xiaomi	\N
\N	\N	Black
\N	\N	White
\.


--
-- Data for Name: filter227; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter227 (nenkategori, "filtro_sipas_markës") FROM stdin;
Mavic	\N
Osmo	\N
Ronin	\N
\N	DJI
\.


--
-- Data for Name: filter228; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter228 (nenkategori, "filtro_sipas_markës") FROM stdin;
Pocket Camera	\N
\N	FeiyuTech
\.


--
-- Data for Name: filter229; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter229 (nenkategori, "filtro_sipas_markës") FROM stdin;
Stabilizer for Pro Cameras	\N
Stabilizer for Smartphones	\N
\N	Zhiyun
\.


--
-- Data for Name: filter23; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter23 (lloji, "filtro_sipas_markës") FROM stdin;
Pllake gipsi standart	\N
Pllake gipsi çimentato	\N
Pllake gipsi kundra zjarrit	\N
Aksesorë	\N
Pllake gipsi kundra lagështirës	\N
Profile gipsi	\N
Stuko dhe kollë me bazë gipsi	\N
Vida gipsi	\N
Tavane të varura me fibra minerale	\N
\N	TESA
\N	KNAUF
\.


--
-- Data for Name: filter230; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter230 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave) FROM stdin;
Mi Smartphone Gimbal	\N	\N
\N	Apai Genie	\N
\N	Xiaomi	\N
\N	\N	Black
\N	\N	White
\.


--
-- Data for Name: filter231; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter231 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave) FROM stdin;
Web Cameras	\N	\N
Action Cameras	\N	\N
Film Cameras	\N	\N
\N	Insta360	\N
\N	Logitech	\N
\N	Fujifilm	\N
\N	GoPro	\N
\N	Sony	\N
\N	Xiaomi	\N
\N	\N	Blush Gold
\N	\N	Brown
\N	\N	Chalk White
\N	\N	Charcoal Gray
\N	\N	Glacier Blue
\N	\N	Ice White
\N	\N	Sky Blue
\N	\N	Terracotta Orange
\N	\N	Black
\N	\N	Blush Rose
\N	\N	Clear Purple
\N	\N	Clear Yellow
\N	\N	Dark Denim
\N	\N	Dusty Pink
\N	\N	Flamingo Pink
\N	\N	Gray
\N	\N	Ice Blue
\N	\N	Lilac Purple
\N	\N	Smokey White
\N	\N	White
\.


--
-- Data for Name: filter232; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter232 (nenkategori, "filtro_sipas_markës", aksesor_per, filtro_sipas_ngjyrave) FROM stdin;
Aksesore per Dron	\N	\N	\N
Aksesore per Kamera	\N	\N	\N
\N	Puluz	\N	\N
\N	DJI	\N	\N
\N	Samsung	\N	\N
\N	Xiaomi	\N	\N
\N	\N	Dron	\N
\N	\N	\N	Black
\.


--
-- Data for Name: filter233; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter233 (nenkategori, "filtro_sipas_markës", memoria, filtro_sipas_ngjyrave) FROM stdin;
Handheld Console	\N	\N	\N
PlayStation	\N	\N	\N
\N	Sony	\N	\N
\N	\N	825GB	\N
\N	\N	\N	Blue
\N	\N	\N	Orange
\N	\N	\N	Red
\N	\N	\N	White
\.


--
-- Data for Name: filter234; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter234 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave) FROM stdin;
Video Games	\N	\N
Smart Games	\N	\N
Spinners	\N	\N
\N	Ubisoft	\N
\N	Warner Bros	\N
\N	EA Sports	\N
\N	PTW	\N
\N	Sony	\N
\N	\N	Blue
\N	\N	Red
\.


--
-- Data for Name: filter235; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter235 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave) FROM stdin;
DualShocks	\N	\N
Mobile Controllers	\N	\N
\N	Baseus	\N
\N	Sony	\N
\N	Xiaomi	\N
\N	\N	Black
\N	\N	Forest Green
\N	\N	Green
\N	\N	White
\.


--
-- Data for Name: filter236; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter236 (nenkategori, filtro_sipas_ngjyrave) FROM stdin;
Hoverboard	\N
\N	Pink Pastel
\N	Black
\N	Blue
\N	Clear Yellow
\N	Fiesta Red
\N	Forest Green
\N	Orange
\N	Pink
\N	Red
\N	White
\.


--
-- Data for Name: filter237; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter237 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave, filtro_sipas_kapacitetit) FROM stdin;
Electric Scooters	\N	\N	\N
\N	Segway	\N	\N
\N	Xiaomi	\N	\N
\N	\N	Dark Grey	\N
\N	\N	Black	\N
\N	\N	Gray	\N
\N	\N	White	\N
\N	\N	\N	10,000mAh
\.


--
-- Data for Name: filter238; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter238 (nenkategori, "filtro_sipas_markës", kapaciteti_btu, klas_energjie_ftohje, klas_energjie_ngrohje) FROM stdin;
\N	Arielli	\N	\N	\N
\N	AUX	\N	\N	\N
\N	LG	\N	\N	\N
\N	Samsung	\N	\N	\N
\N	Skyworth	\N	\N	\N
\N	\N	12000 BTU	\N	\N
\N	\N	18000 BTU	\N	\N
\N	\N	24000 BTU	\N	\N
\N	\N	\N	A++	\N
\N	\N	\N	\N	A
\N	\N	\N	\N	A+
\N	\N	\N	\N	A+++
\.


--
-- Data for Name: filter239; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter239 (nenkategori, "filtro_sipas_markës", filtro_sipas_ngjyrave) FROM stdin;
Cleaning Devices	\N	\N
LED Lamps	\N	\N
Mi Home Sets	\N	\N
Mi Smart Plugs	\N	\N
Personal Care	\N	\N
\N	Berrcom	\N
\N	Hoco	\N
\N	Baseus	\N
\N	Lenovo	\N
\N	Xiaomi	\N
\N	\N	Black
\N	\N	White
\.


--
-- Data for Name: filter24; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter24 (lloji, "filtro_sipas_markës") FROM stdin;
Lesh guri	\N
Polisterol i ekstruduar XPS	\N
Polisterol i ekspanduar EPS	\N
Poliuretan	\N
Baza dhe Astar	\N
Rrjetë	\N
Këndore dhe aksesore	\N
Sfungjerë akustikë	\N
Grafiato	\N
Tapa	\N
Lesh xhami	\N
\N	NTM Italy
\N	GUTTA
\N	FIBERMESH  ONE
\N	IZOTERM
\N	Dast
\.


--
-- Data for Name: filter25; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter25 (lloji, "filtro_sipas_markës") FROM stdin;
Llaç i gatshëm	\N
Fino	\N
Stuko standart	\N
Nivelues	\N
Silikone	\N
Prajmer	\N
Çimento	\N
Kollë	\N
\N	PRIMA  K2
\N	Bitex
\N	Ceresit
\N	Bison
\N	Nirlat
\N	Dast
\N	Arexons
\N	Fischer
\N	Ege Dekor
\.


--
-- Data for Name: filter26; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter26 (lloji, "filtro_sipas_markës") FROM stdin;
Membranë bituminoze me granil	\N
Mbulues polietileni	\N
Fibra polipropileni	\N
Membranë bituminoze standart	\N
Fasho bituminoze dhe aksesorë	\N
Ngjitës shtresash plastike	\N
Ngjitës bazë poliuretani	\N
Ngjitës bazë aditive	\N
TNT- gjeotekstil	\N
\N	SIKA
\N	GUTTA
\N	POLYGLASS
\N	Nirlat
\N	IZOTERM
\N	Dast
\.


--
-- Data for Name: filter27; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter27 (lloji, "filtro_sipas_markës") FROM stdin;
Tulla ndarëse	\N
Tulla bllok	\N
Blloqe çimentoje	\N
Tulla xhami	\N
\N	Jinghua
\.


--
-- Data for Name: filter28; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter28 (lloji, "filtro_sipas_markës") FROM stdin;
Dru bredhi	\N
Dru pishe	\N
Lidhëza druri metalike	\N
Tavane të varura	\N
Panele të gatshme	\N
\N	KONKURENT
\N	HOLZ SCHMIDT
\.


--
-- Data for Name: filter29; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter29 (lloji, "filtro_sipas_markës") FROM stdin;
Tjegulla Standarte	\N
Streha Bituminoze të valëzuara	\N
Streha Polikarbonati	\N
Streha  PVC	\N
Tjegulla Speciale	\N
Aksesorë catie	\N
Panel sanduiç i  valëzuar	\N
Streha Poliestër	\N
Streha metalike	\N
\N	INTERMAS
\N	GUTTA
\.


--
-- Data for Name: filter3; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter3 (lloji, "filtro_sipas_markës") FROM stdin;
Biskota	\N
Lepirese	\N
\.


--
-- Data for Name: filter30; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter30 (lloji, "filtro_sipas_markës") FROM stdin;
Puseta  polipropileni	\N
Aksesorë shkarkimesh	\N
Kapak pusete gize	\N
Grila polipropileni	\N
Kapakë polipropileni	\N
Telajo poliprpileni	\N
Ulluqe Betoni	\N
Ulluqe plastike	\N
Zgara ulluqesh	\N
Shkarkime çatie të galvanizuara	\N
Shkarkime çatie PVC	\N
Puseta çimentoje	\N
Kapak pusete çimentoje	\N
\N	PALAPLAST
\N	Confort
\N	ACO
\.


--
-- Data for Name: filter31; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter31 (lloji, "filtro_sipas_markës") FROM stdin;
Tuba alumini	\N
Tuba inoksi	\N
Tuba të zinkuar	\N
Kapele oxhaqesh	\N
\N	TECHNOMETAL
\.


--
-- Data for Name: filter32; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter32 (lloji, "filtro_sipas_markës") FROM stdin;
Pllaka shtrimi prej betoni	\N
Decking	\N
Gurë natyral	\N
Kapak parapeti	\N
\.


--
-- Data for Name: filter33; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter33 (lloji, "filtro_sipas_markës") FROM stdin;
Profile	\N
Ele	\N
Llamarina	\N
Tuba të galvanizuar	\N
Gozhdë dhe tel	\N
Lama	\N
Shufra hekuri	\N
Zgara hekuri	\N
Aksesorë	\N
\N	Power Metric
\N	KANAD'TILING Fpl
\N	Brixo
\N	Verdelook
\N	Arcansas
\.


--
-- Data for Name: filter34; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter34 (lloji, "filtro_sipas_markës") FROM stdin;
Horizontale plastike	\N
Vertikale plastike	\N
Horizontale xingato	\N
Vertikale xingato	\N
Vaska IMOF	\N
\N	Telcom
\N	Selmani
\.


--
-- Data for Name: filter35; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter35 (lloji, "filtro_sipas_markës") FROM stdin;
Kufizues kantieresh	\N
Adezivë rrugorë	\N
Tabela rrugore	\N
Pasqyra	\N
Transena	\N
Adeziv për kantiere	\N
Tabela për kantiere	\N
Tabela dhe sinjalistikë për fabrika	\N
\.


--
-- Data for Name: filter36; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter36 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesore perberes te skelerive	\N
\.


--
-- Data for Name: filter37; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter37 (lloji, "filtro_sipas_markës") FROM stdin;
Kondicionim	\N
Ngrohës Elektrik	\N
Freskues Elektrik	\N
Delagështues	\N
Kaldaja ngrohjeje	\N
Pastrues Ajri	\N
\N	De Longhi
\N	Fuego
\N	Beko
\N	Ariston
\N	AGD
\N	STANLEY
\N	Brixo
\N	Black&amp;Decker
\N	Volcano
\N	IMETEC
\N	Venus
\N	MAX
\N	Elektra
\N	Deluxe
\N	NIKLAS
\N	Alpina
\N	HYUNDAI
\N	Grundig
\N	ROWENTA
\N	EMOS
\N	KUMTEL
\N	Hoobart
\N	Atlantik
\N	Vivax
\N	Kooper
\N	MITSUBISHI
\N	VARMA
\N	BREIXO
\N	SHARP
\N	Simfer
\N	ETA
\N	Haier
\N	Dunlop
\N	TCL
\N	ARGO
\N	Saray
\N	Nebula
\.


--
-- Data for Name: filter38; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter38 (lloji, "filtro_sipas_markës") FROM stdin;
Kaldaja ngrohje	\N
Etanol	\N
Ngrohes me Gaz	\N
\N	RBM
\N	Power Metric
\N	Fuego
\N	Ariston
\N	ETHANOL FIRE
\N	NTM Italy
\N	Hot Crystal
\N	Elektra
\N	NIKLAS
\N	GARDENSUN
\.


--
-- Data for Name: filter39; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter39 (lloji, "filtro_sipas_markës") FROM stdin;
Oxhake	\N
Soba	\N
Aksesore	\N
Kaldaje me pelet	\N
\N	Brixo
\N	Castellano
\N	Prity
\N	Victoria
\N	Centrometal
\N	Diavolina
\N	GEKO
\N	Veneto Stufe
\N	DAC
\N	BLIST
\.


--
-- Data for Name: filter4; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter4 (lloji, "filtro_sipas_markës") FROM stdin;
Lavaman	\N
Bide	\N
Panel dushi	\N
Rubinetari	\N
Urinal	\N
WC	\N
Pllakë dushi	\N
Vaskë	\N
Kabinë dushi	\N
\N	Metaform
\N	Ideal Standart
\N	Bonomini
\N	Esedra
\N	Bobble Soap
\N	Azzura
\N	Mariani
\N	Grohe
\N	Sonet
\N	L'acquario
\N	MEGATEK
\N	Idealine
\N	L'acqua
\N	Iris
\N	Flusso
\N	Krihler
\N	Olympi Sanitary
\N	Dost
\N	Mr Shower
\N	Rubineta &amp;
\N	GRB mixers
\N	IDEVIT
\.


--
-- Data for Name: filter40; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter40 (lloji, "filtro_sipas_markës") FROM stdin;
Panele diellore	\N
\N	Power Sun
\.


--
-- Data for Name: filter41; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter41 (lloji, "filtro_sipas_markës") FROM stdin;
Divanë	\N
Mbajtëse për TV	\N
Karrige	\N
Rafte të ndryshme	\N
Tavolina mesi dhe këndi	\N
Mobilje për televizor	\N
Kolltukë	\N
Pupa	\N
Ndarëse ambienti	\N
Pasqyra	\N
Mobilje koridori	\N
Rafte këpucësh	\N
\N	BEAUTY FURNITURE
\N	Forma Ideale
\N	Artplast
\N	Smart Furniture
\N	MEGATEK
\N	La Sedia
\N	Adore
\N	Home sofa
\N	Diva&amp;Divani
\N	MAX
\N	BALIOUSKAS
\N	Galileo Casa
\N	Elektra
\N	Disrael
\N	EMOS
\N	Valentini
\N	H &amp; S collection
\N	Metaltex
\N	Atmosphera
\.


--
-- Data for Name: filter42; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter42 (lloji, "filtro_sipas_markës") FROM stdin;
Dhoma gjumi	\N
Dollapë	\N
Krevatë	\N
Dyshekë	\N
Tekstile	\N
Jastëkë dhe mbulesa	\N
Komodina dhe rafte	\N
Magazinim dhe sirtarë	\N
Mbajtëse dysheku	\N
\N	Forma Ideale
\N	Artplast
\N	Smart Furniture
\N	MEGATEK
\N	Ambrosiana
\N	EASY WAY FURNITURE
\N	De'Casa
\N	Home Linen
\N	Dormeo
\N	Adore
\N	LUOCA PATISCA
\N	MComfort
\N	Kid City
\N	Home Sweet Home
\N	LOGEX
\N	BALIOUSKAS
\N	Galileo Casa
\N	Valentini
\N	Storage solutions
\N	ItalCasa
\.


--
-- Data for Name: filter43; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter43 (lloji, "filtro_sipas_markës") FROM stdin;
Tavolina	\N
Karrige zyre	\N
Rafte për libra dhe dosje	\N
\N	Forma Ideale
\N	Smart Furniture
\N	MEGATEK
\N	La Sedia
\N	Adore
\N	Tutto Mobili
\N	Solenne
\.


--
-- Data for Name: filter44; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter44 (lloji, "filtro_sipas_markës") FROM stdin;
Rafte	\N
Piktura	\N
Mbajtëse raftesh	\N
Kornizë Polisteroli	\N
Dekorime Tavoline	\N
Suporte vazosh	\N
\N	JEWE
\N	BOVELACCI
\N	NatyrART
\N	Disrael
\.


--
-- Data for Name: filter45; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter45 (lloji, "filtro_sipas_markës") FROM stdin;
Varëse rrobash	\N
\.


--
-- Data for Name: filter46; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter46 (lloji, "filtro_sipas_markës") FROM stdin;
Siguri për fëmijët	\N
Tekstile	\N
Mobilje	\N
Aksesorë Bebesh	\N
Krevate	\N
\N	Deco Casa
\N	MEGATEK
\N	Adore
\N	LUOCA PATISCA
\.


--
-- Data for Name: filter47; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter47 (lloji, "filtro_sipas_markës") FROM stdin;
Jastëk mbeshtetes	\N
Druri natyral	\N
Thurje natyrale	\N
Thurje PE	\N
Plastike	\N
Tekstilen dhe metalike	\N
Çadra dhe bazamente	\N
Gaxebo dhe tenda	\N
Lisharëse	\N
Pishtarë	\N
Shilte	\N
Tekstike për mobilje	\N
Lisharëse	\N
Plastike	\N
\N	Verdelook
\N	Pro garden
\N	PAPATYA
\N	Keter
\N	Vivace
\.


--
-- Data for Name: filter48; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter48 (lloji, "filtro_sipas_markës") FROM stdin;
Kuzhina	\N
Lavapjata	\N
Kosha	\N
Tavolinë ngrënie	\N
Karrige ngrënie	\N
Rubineta	\N
Aksesorë	\N
\N	Blanco
\N	Forma Ideale
\N	Mariani
\N	Grohe
\N	Smart Furniture
\N	Minos
\N	MEGATEK
\N	Drina
\N	De'Casa
\N	La Sedia
\N	Krihler
\N	Dost
\N	Rubineta &amp;
\N	Sanindusa
\N	Eliplast
\N	VIOMES
\N	Stefanplast
\N	GRB mixers
\N	CM
\N	CURVER
\N	Diadem
\N	Metaltex
\N	Atmosphera
\N	FIVE Simply smart
\.


--
-- Data for Name: filter49; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter49 (lloji, "filtro_sipas_markës") FROM stdin;
Parket druri	\N
Parket Laminat	\N
Aksesore Parketi	\N
\N	BODENWELT
\N	Kaindl
\N	DUOMO PROFILI
\N	JEWE
\N	HOLZMEISTER
\N	KRONO FLOORING
\N	BAUWERK
\N	IZOTERM
\N	Arcansas
\N	Barlinek
\N	Bakonyerdő
\N	PAN PARKET
\N	MODEMA
\N	ARBITON
\.


--
-- Data for Name: filter5; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter5 (lloji, "filtro_sipas_markës") FROM stdin;
Sistem Inkaso	\N
Gominë, sifon, piletë	\N
Kaseta plastike	\N
Mekanizma kasete	\N
\N	Geberit
\N	LIV
\N	Bonomini
\N	Brixo
\N	Grohe
\N	L'acquario
\N	Hidrosanitare
\N	Drina
\N	Feridras
\N	Dost
\N	Rubineta &amp;
\N	Chudej
\N	Eliplast
\N	GREAT FRIEND
\.


--
-- Data for Name: filter50; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter50 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesore pllake	\N
Pllaka shtrimi	\N
Pllaka tualeti	\N
Pllake Veshje	\N
\N	Spacer
\N	Super
\N	AG
\N	Azuleja
\N	STN-pllaka
\N	MEGATEK
\N	HLC-pllaka
\N	Brunes
\N	Botanica
\N	CicoGres-pllaka
\N	Stegu
\N	Argenta-pllaka
\N	NAVARTI
\N	STON
\.


--
-- Data for Name: filter51; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter51 (lloji, "filtro_sipas_markës") FROM stdin;
Mokete dhe linoleume	\N
Mokete dhe Linoleume	\N
\.


--
-- Data for Name: filter52; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter52 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesore Montimi	\N
Priza elektrike	\N
Celesa elektrik	\N
Aksesore TV,Data,Tf	\N
Kapake prizash	\N
Sisteme mbrojtjeje elektrike	\N
\N	Philips
\N	Schneider
\N	ABB
\N	EU energy
\N	OV Cable
\N	Emme Esse
\N	Alcad
\N	Deliksi
\N	Vimar
\N	Luna
\N	EMOS
\N	Gewiss
\N	Bticino
\N	MUTLUSAN
\N	Digitus
\N	Matix
\N	Vimar NEVE
\.


--
-- Data for Name: filter53; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter53 (lloji, "filtro_sipas_markës") FROM stdin;
Sisteme mbrojtjeje elektrike	\N
Sisteme sigurie elektronike	\N
Sisteme matje	\N
\N	Schneider
\N	ABB
\N	EU energy
\N	Deliksi
\N	Vimar
\N	HOROZ
\N	LAMBARIO
\N	Grundig
\N	EMOS
\N	Hikvision
\N	Lafayete
\N	Kooper
\N	MUTLUSAN
\N	Dunlop
\N	Pawer Tree
\N	SAFE ALARM
\N	BRAYTON
\N	Motorola
\N	DKC
\.


--
-- Data for Name: filter54; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter54 (lloji, "filtro_sipas_markës") FROM stdin;
Kabell elektrik	\N
Aksesore montim kabelli	\N
Aksesorë montimi	\N
Priza zgjatuese dhe pershtatës	\N
\N	General Cavi
\N	Philips
\N	Brixo
\N	ABB
\N	Arno Canali
\N	EU energy
\N	Eglo
\N	OV Cable
\N	Emme Esse
\N	Alcad
\N	Deliksi
\N	Vimar
\N	Fischer
\N	BRILLIANT
\N	LAMBARIO
\N	Grundig
\N	EMOS
\N	Lafayete
\N	Xavax
\N	Magmaweld
\N	Arnocanali
\N	3M
\N	Prospecta
\N	MUTLUSAN
\N	Digitus
\N	Elettrocanali
\N	Kinzo
\N	Dunlop
\.


--
-- Data for Name: filter55; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter55 (lloji, "filtro_sipas_markës") FROM stdin;
Stabilizatore dhe Inverter	\N
Pompa uji elektrike	\N
Ngrohes uji elektrike	\N
Kompresore	\N
Aspirator	\N
Motogjeneratore elektrike	\N
Paisje te tjera Elektrike	\N
Pajisje Saldimi	\N
\N	Schneider
\N	Ariston
\N	STANLEY
\N	Brixo
\N	EU energy
\N	BOSCH
\N	Coral
\N	Vortice
\N	narva
\N	LEOV
\N	LEO
\N	Tolsen
\N	DAEWOO
\N	GTL
\N	Deca
\N	Delimano
\N	EMOS
\N	Hoobart
\N	Atlantik
\N	Lafayete
\N	ABKS
\N	Tecnoelektra
\N	Kedman
\N	Riese
\N	Magmaweld
\N	Map Pro
\N	Oxy turbo
\N	Subaru
\N	PUMPMAN
\N	Chaffoteaux
\N	MATIC
\N	Loncin
\N	LAUNTOP
\N	KEMPER
\N	MUTLUSAN
\N	Haier
\N	NEWCO
\N	ATLANTIC
\N	HACO
\N	HONDA
\.


--
-- Data for Name: filter56; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter56 (lloji, "filtro_sipas_markës") FROM stdin;
Elektrike te tjera	\N
Bateri	\N
Elektrikë dore dhe kamping	\N
\N	Philips
\N	Schneider
\N	Panasonic
\N	VARTA
\N	Beghelli
\N	EU energy
\N	OSRAM
\N	Eglo
\N	MAXELL
\N	OMEGA
\N	Elektra
\N	NIKLAS
\N	BEGHLER
\N	Grundig
\N	Duracell
\N	Delimano
\N	ENERGIZER
\N	EMOS
\N	Lafayete
\N	Kooper
\N	KEMPER
\N	Kinzo
\N	Dunlop
\N	SAFE ALARM
\.


--
-- Data for Name: filter57; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter57 (lloji, "filtro_sipas_markës") FROM stdin;
Pajisje Industriale dhe Profesionale	\N
\N	Schneider
\N	ABB
\N	EU energy
\N	Deliksi
\N	OMEGA
\.


--
-- Data for Name: filter58; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter58 (lloji, "filtro_sipas_markës") FROM stdin;
Ndriçues tavani	\N
Ndriçues muri	\N
Ndriçues zyre	\N
Ndriçues LED	\N
Ndriçues i varur	\N
Ndriçues spot	\N
Ndriçues pedan	\N
Ndriçues tavoline	\N
\N	TRIO
\N	Philips
\N	Artemis
\N	Beryl
\N	ArtdePierre
\N	Koral
\N	Arredoluce
\N	Beghelli
\N	Philips-Massive
\N	Lunar
\N	Antica
\N	OSRAM
\N	Alumierrei
\N	Stillicht
\N	Glowfmarta
\N	PVC-lighting
\N	Eglo
\N	Light life lighting
\N	PLATINET
\N	FAN EUROPE
\N	BEGHLER
\N	HOROZ
\N	BRILLIANT
\N	LAMBARIO
\N	Grundig
\N	EMOS
\N	MasterLight
\N	Elips
\N	DLU
\N	Kooper
\N	FMT
\N	KAISER LIGHT
\N	MUTLUSAN
\N	MILLE
\N	ATON LIGHT
\N	Lumineo
\N	Dunlop
\N	BRAYTON
\.


--
-- Data for Name: filter59; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter59 (lloji, "filtro_sipas_markës") FROM stdin;
Ndriçues LED	\N
Ndriçues muralë	\N
Ndriçim për shtyllë	\N
Ndriçues për lule dhe bimë	\N
Projektor	\N
Ndriçues me panel Diellor	\N
\N	Philips
\N	Beryl
\N	Romaantic
\N	Philips-Massive
\N	EU energy
\N	Eglo
\N	FAN EUROPE
\N	BEGHLER
\N	HOROZ
\N	BRILLIANT
\N	LAMBARIO
\N	Fumagalli
\N	Grundig
\N	EMOS
\N	Elips
\N	FMT
\N	MUTLUSAN
\N	MILLE
\N	ATON LIGHT
\N	Dunlop
\N	Pro garden
\N	BRAYTON
\.


--
-- Data for Name: filter6; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter6 (lloji, "filtro_sipas_markës") FROM stdin;
Set mobilje tualeti	\N
Pasqyra	\N
Rafte	\N
\N	Metaform
\N	Homeline
\N	Decoramica
\N	City Sanitary
\N	MEGATEK
\N	all4bath
\N	Sea Wave
\N	Olympi Sanitary
\N	Home Style
\N	Eliplast
\N	Disrael
\N	Bathroom solutions
\N	Van der Leeden
\.


--
-- Data for Name: filter60; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter60 (lloji, "filtro_sipas_markës") FROM stdin;
Llamba LED	\N
Llamba ekonomike	\N
Llamba fluoreshente	\N
Llamba halogjene	\N
Llamba inkandeshente	\N
Llamba profesionale	\N
Portollamba dhe aksesore ndricimi	\N
\N	TRIO
\N	Philips
\N	Beryl
\N	TCI Italy
\N	GENERAL ELECTRIC
\N	Beghelli
\N	OSRAM
\N	Eglo
\N	OMEGA
\N	FAN EUROPE
\N	BEGHLER
\N	HOROZ
\N	BRILLIANT
\N	LAMBARIO
\N	EMOS
\N	MasterLight
\N	DLU
\N	Kooper
\N	FMT
\N	Elettrocanali
\N	Sylvania
\N	BRAYTON
\.


--
-- Data for Name: filter61; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter61 (lloji, "filtro_sipas_markës") FROM stdin;
Sifona dhe aksesorë	\N
\N	Bonomini
\N	Dost
\N	Rubineta &amp;
\.


--
-- Data for Name: filter62; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter62 (lloji, "filtro_sipas_markës") FROM stdin;
Tenxhere	\N
Servirje	\N
Aksesorë kuzhine	\N
Pjekje	\N
Pjata	\N
Gota	\N
Prerje  dhe grirje	\N
Ene ushqimi	\N
Bonboniere dhe frutiere	\N
Festivë një-perdorimëshe	\N
Tiganë	\N
Sallatiere dhe tasa	\N
Dekanter, kana dhe termus	\N
Kullesa	\N
Ruajtje dhe konservim	\N
Kafe dhe caj	\N
Thika dhe prerëse	\N
Aksesorë të tjerë	\N
Aksesorë ngrënie tavoline	\N
Vaj/Uthull dhe Kripë/Piper	\N
Kanistër dhe shporta	\N
Aksesore gatimi dhe servirje	\N
Pesha dhe matëse	\N
Ene për Femije	\N
Tabaka	\N
Gjithcka për embëlsira	\N
Githcka për HO.RE.CA-Tavoline	\N
Gjithcka për HO.RE.CA-Gatim	\N
Aksesore Bari	\N
Gjithcka për HO.RE.CA-BUFE &amp; MENGJES	\N
\N	Drina
\N	Walther Glas
\N	Pasabahçe
\N	f&amp;d
\N	SOGA
\N	Marinex
\N	Dopla
\N	Home Style
\N	Durobor
\N	Bormioli
\N	Saturnia
\N	Glass4You
\N	Uniglass
\N	Devalbor
\N	Tescoma
\N	Mineralia
\N	BALIOUSKAS
\N	JMC
\N	Tramontina
\N	Eliplast
\N	Regina
\N	Sayonara
\N	Samurai
\N	BulkySoft
\N	Galileo Casa
\N	Roman Gallery
\N	Villa Deste
\N	Gürallar
\N	Borcam
\N	PINTINOX
\N	Sanelli
\N	Tognana
\N	BALLARINI
\N	POLIDIL
\N	Salvinelli
\N	Kostis
\N	ILSA
\N	Royal Leerdam
\N	Arte &amp; Fuoc
\N	Cabernet
\N	Pedrini
\N	LACOR
\N	GI·METAL
\N	CHEF LINE
\N	FASA
\N	AGNELLI
\N	ABERT
\N	Alpina
\N	Kütahya
\N	Polidil Foil
\N	Disrael
\N	Cerve
\N	Nachtmann
\N	Life Glass
\N	Fackelmann
\N	LEONE
\N	Excellent Houseware
\N	Arcoroc
\N	Atmosphera
\N	FIVE Simply smart
\N	Secret de Gourmet
\.


--
-- Data for Name: filter63; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter63 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesore Kuzhinash	\N
Aksesore per Kuzhina	\N
\N	JEWE
\N	ACCESSORIZE
\N	Drina
\N	Tognana
\N	FIORE
\N	Alpina
\.


--
-- Data for Name: filter64; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter64 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë pastrimi	\N
Detergjentë të ndryshëm	\N
Peceta Pastrimi	\N
Sfungjer dhe Tel Enesh	\N
Doreza pastrimi	\N
Peshqir Kuzhine	\N
Dysheme dhe Xham	\N
Qese mbeturinash	\N
\N	Frosch
\N	emsal
\N	Arix
\N	Home Style
\N	Verdelook
\N	Linea PERFETTA
\N	C'e
\N	Scrac
\N	Gorsia
\N	Calgon
\N	Perfetto factory
\.


--
-- Data for Name: filter65; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter65 (lloji, "filtro_sipas_markës") FROM stdin;
Detergjentë dhe aromatikë	\N
\N	Sanitec
\N	Matrix
\.


--
-- Data for Name: filter66; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter66 (lloji, "filtro_sipas_markës") FROM stdin;
Xhakete Kuzhinieri	\N
Kapele Kuzhinieri	\N
Pantallona Kuzhinieri	\N
Kemishe	\N
Perparese	\N
Papion, Kravate	\N
Pantallona kamarieri	\N
Bluze	\N
Fund	\N
Jelek kamarieri	\N
Doreza	\N
\.


--
-- Data for Name: filter67; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter67 (lloji, "filtro_sipas_markës") FROM stdin;
letër duarsh	\N
Zarfa ushqimi	\N
\N	Frescovuoto
\N	Melissa
\.


--
-- Data for Name: filter68; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter68 (lloji, "filtro_sipas_markës") FROM stdin;
letër duarsh	\N
\N	MEGATEK
\N	BulkySoft
\.


--
-- Data for Name: filter69; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter69 (lloji, "filtro_sipas_markës") FROM stdin;
Caj	\N
\.


--
-- Data for Name: filter7; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter7 (lloji, "filtro_sipas_markës") FROM stdin;
Kapakë tualeti	\N
Perde dushi	\N
Aksesorë për montim në mur	\N
Aksesorë për vendosje mbi mobilje	\N
Tuba rrëshqitës	\N
Tuba fleksibël	\N
Sete kokë dushi	\N
Kosha tualeti	\N
Peshore dhe kosha lavanderie	\N
Furça tualeti	\N
Mbajtëse letre dhe sapuni	\N
Peshqirë	\N
Gominë, sifon, piletë	\N
Aksesor mbajtes me varje	\N
Tharëse duarsh	\N
Tharëse flokesh	\N
Sinjalistikë	\N
Antirrëshqitës	\N
\N	Metaform
\N	Ivanicplast
\N	Siena
\N	Dolphin
\N	Esedra
\N	Interplast
\N	FIXON
\N	Mariani
\N	Grohe
\N	Smart Furniture
\N	Drina
\N	all4bath
\N	BTV
\N	Mathilde
\N	Feridras
\N	NTM Italy
\N	Krihler
\N	Dost
\N	Ippa
\N	Rubineta &amp;
\N	Ella
\N	Home Sweet Home
\N	Home Style
\N	Lucart
\N	Vialli
\N	Comfort2000
\N	Castelmerlino
\N	Eliplast
\N	Verdelook
\N	BulkySoft
\N	Galileo Casa
\N	Stefanplast
\N	Aqualine
\N	Disrael
\N	WASSENBERG
\N	CURVER
\N	Excellent Houseware
\N	Storage solutions
\N	Bathroom solutions
\N	MSV
\N	Ultra clean
\N	Saniplast
\.


--
-- Data for Name: filter70; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter70 (lloji, "filtro_sipas_markës") FROM stdin;
Bredhi	\N
Aksesorë Binarësh	\N
\N	JEWE
\.


--
-- Data for Name: filter71; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter71 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesore	\N
Panele	\N
Aksesorë mobiliesh	\N
\N	MEGA PAN
\N	JEWE
\N	KRONO FLOORING
\N	ACCESSORIZE
\N	MEGATEK
\N	PLANTS
\N	FIORE
\N	SALICE
\N	kastamonu
\N	Pircher
\.


--
-- Data for Name: filter72; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter72 (lloji, "filtro_sipas_markës") FROM stdin;
Shkallë papafingo dhe aksesorë	\N
\N	JEWE
\N	DOLLE
\N	OMAN
\.


--
-- Data for Name: filter73; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter73 (lloji, "filtro_sipas_markës") FROM stdin;
Brava	\N
Doreza	\N
Aksesorë për dyer	\N
Dryna	\N
Aksesorë për mobilje	\N
\N	FIXON
\N	STV
\N	MASTER
\N	TRI-RHOMB
\N	MU
\N	CISSA
\N	AGB
\N	STARK
\N	`
\N	Fischer
\N	ZINCO
\N	DLG
\N	Happy Deco
\N	MASTER Lock
\.


--
-- Data for Name: filter74; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter74 (lloji, "filtro_sipas_markës") FROM stdin;
Dritare PVC dhe alumini	\N
\N	SCHLUSSEL
\.


--
-- Data for Name: filter75; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter75 (lloji, "filtro_sipas_markës") FROM stdin;
Dyer Druri Tropikal	\N
Dyer Tamburat	\N
Dyer firzamonike PVC	\N
\N	PASSAGGIO
\N	FISARMONICA
\N	Porte.it
\N	INVADO
\N	MADEIRA DO BRASIL
\N	ZINCO
\N	MEGA PORTE
\.


--
-- Data for Name: filter76; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter76 (lloji, "filtro_sipas_markës") FROM stdin;
Dyer të jashtme	\N
Streha Mbrojtese	\N
\N	Verdelook
\N	ZINCO
\.


--
-- Data for Name: filter77; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter77 (lloji, "filtro_sipas_markës") FROM stdin;
Gure zbukurimi	\N
Rrethues dhe aksesore	\N
Vazo lulesh plastike	\N
Vazo druri	\N
Zbukurues kopshti	\N
Kangjella Metalike	\N
Pishtare	\N
Qirinj Citronela	\N
Vazo lule graniti/betoni	\N
Vazo lule qeramike	\N
Suport vazo	\N
Vazo metalike	\N
Vazo	\N
Vazo zbukurimi	\N
Mbajtëse qiriri	\N
Rafte	\N
Transportes	\N
Ashkla druri	\N
Vazo lulesh për ambient të brendshëm	\N
Vazo lulesh ratani	\N
Pjatë vazo lulesh plastike	\N
\N	GARDENnirDESIGN
\N	CYCLOPS
\N	Decoramica
\N	Artplast
\N	FERRO CANCELLI
\N	Telcom
\N	PREMIER WOOD
\N	MEGATEK
\N	Drina
\N	Botanica
\N	Akrol
\N	Florey
\N	MESH.TEC
\N	DeRoma
\N	Florance
\N	Vasar
\N	D`PETRA
\N	homemotion
\N	Verdelook
\N	Galileo Casa
\N	Primavera
\N	Leader
\N	Sally
\N	Fiorella
\N	Liberty
\N	Maxi
\N	Record
\N	United Fences
\N	Star Cord
\N	Disrael
\N	Teraplast
\N	Terraneo
\N	AnticoMestiere
\N	ProsperPlast
\N	MILLE
\N	Pircher
\N	Pro garden
\N	Niet Van Toepassing
\N	Van der Leeden
\N	H &amp; S collection
\N	Happy Garden
\N	Atmosphera
\.


--
-- Data for Name: filter78; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter78 (lloji, "filtro_sipas_markës") FROM stdin;
Gaxebo dhe Tenda	\N
Lisharese	\N
Thurje natyrale	\N
Plastike	\N
Metalike dhe Kamping	\N
Bar artificial	\N
Shatrivan	\N
\N	Keter
\.


--
-- Data for Name: filter79; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter79 (lloji, "filtro_sipas_markës") FROM stdin;
Humus, pesticide, fara bimesh	\N
Bimë Aromatike	\N
Lule dhe bimë për ambiente të jashtme	\N
Fidanë dhe Pemë frutore	\N
Fara Lulesh dhe bimësh	\N
Lule dhe bimë për ambiente të brëndshme	\N
Humus dhe&nbsp; Ushqyes për lule dhe Bimë	\N
\N	Brixo
\N	FLORTIS Long
\N	PLANTS
\N	Endri Gips
\N	Bavicchi
\N	Pro garden
\.


--
-- Data for Name: filter8; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter8 (lloji, "filtro_sipas_markës") FROM stdin;
Pajisje sanitare	\N
Aksesorë mbajtës	\N
\N	Metaform
\N	Dogvit
\N	MOBIAK
\N	Feridras
\N	Dost
\N	MSV
\.


--
-- Data for Name: filter80; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter80 (lloji, "filtro_sipas_markës") FROM stdin;
Korrese bari	\N
Prerese bari	\N
Prerese ligustrash	\N
Pompa lavazhi	\N
Fshesa elektrike	\N
Sharra Kopshtarie	\N
Aksesorë për vegla kopshti	\N
\N	SKIL
\N	STANLEY
\N	Brixo
\N	BOSCH
\N	Black&amp;Decker
\N	Bosch Jeshil
\N	Wurth
\N	Einhell
\N	Green Cat
\N	NIKLAS
\N	Alpina
\N	DAEWOO
\N	Oleo-Mac
\N	ELSEA
\.


--
-- Data for Name: filter81; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter81 (lloji, "filtro_sipas_markës") FROM stdin;
Korrese bari	\N
Prerese bari	\N
Prerese ligustrash	\N
Pompa spekatese	\N
\N	BOSCH
\N	Black&amp;Decker
\N	Bosch Jeshil
\N	Wurth
\N	Einhell
\.


--
-- Data for Name: filter82; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter82 (lloji, "filtro_sipas_markës") FROM stdin;
Korrese bari	\N
Sharra Kopshtarie	\N
\N	Einhell
\N	Alpina
\N	DAEWOO
\N	GTL
\N	Oleo-Mac
\.


--
-- Data for Name: filter83; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter83 (lloji, "filtro_sipas_markës") FROM stdin;
Vegla agrobujqesore	\N
Vegla per bime	\N
Te tjera vegla kopshti dhe aksesore	\N
Vegla prerese	\N
Sprucator	\N
Rakorderi	\N
Artikuj Mbrojtes	\N
\N	WORTH
\N	EDEN JARDIN
\N	Brixo
\N	MASTER FORCE
\N	Black&amp;Decker
\N	Verdelook
\N	Fiskars
\N	Benman
\N	Wurth
\N	gardenBreak
\N	Green Seasons
\.


--
-- Data for Name: filter84; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter84 (lloji, "filtro_sipas_markës") FROM stdin;
Tuba	\N
Programator per sisteme ujitje	\N
Elektrovalvula	\N
Sensor shiu	\N
Sprucator	\N
Rakorderi	\N
\N	PALAPLAST
\N	EDEN JARDIN
\N	K.TSALERS
\N	Iris
\N	RAIN BIND
\N	ACQUASAN
\N	Claber
\N	Green Seasons
\N	Agri Pipe
\N	YOYO
\.


--
-- Data for Name: filter85; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter85 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesore	\N
Barbekju guri	\N
Barbekju me qymyr	\N
Barbekju me gaz	\N
Aksesorë gatimi profesional	\N
Aksesorë pastrimi	\N
Barbekju dhe furra me dru	\N
Hell dhe aksesorë	\N
Qymyr dhe ndezës	\N
Tenda dhe mbulesa	\N
Zgara dhe tava	\N
Aksesorë servirje	\N
Hell dhe aksesorë	\N
Erza per gatim	\N
\N	Kronstar Oven &amp; Grill
\N	Mr.Grill
\N	Diavolina
\N	Eco Fiamma
\N	El Gaucho
\N	Vaggan
\N	Grill
\.


--
-- Data for Name: filter86; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter86 (lloji, "filtro_sipas_markës") FROM stdin;
Tapatrice	\N
Shishe	\N
\.


--
-- Data for Name: filter87; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter87 (lloji, "filtro_sipas_markës") FROM stdin;
Kosha mbeturinash	\N
Rafte dhe dollape	\N
Aksesorë të tjerë	\N
\N	Artplast
\N	all4bath
\N	Galileo Casa
\N	Claber
\N	Stefanplast
\N	MILLE
\N	Pro garden
\N	I.C.S.
\.


--
-- Data for Name: filter88; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter88 (lloji, "filtro_sipas_markës") FROM stdin;
Insekticide	\N
\N	Mayer
\N	Spira
\.


--
-- Data for Name: filter89; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter89 (lloji, "filtro_sipas_markës") FROM stdin;
Rakorderi bakri	\N
\.


--
-- Data for Name: filter9; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter9 (lloji, "filtro_sipas_markës") FROM stdin;
Sauna	\N
\.


--
-- Data for Name: filter90; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter90 (lloji, "filtro_sipas_markës") FROM stdin;
Aksesorë për vegla kopshti	\N
Magazina dhe organizim	\N
\N	SKIL
\N	FALCON
\N	BOSCH
\N	Bosch Jeshil
\N	Wurth
\N	Oregon
\N	Green Cat
\N	Carlton
\.


--
-- Data for Name: filter91; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter91 (lloji, "filtro_sipas_markës") FROM stdin;
Artikuj Plazhi	\N
Aksesorë plazhi	\N
\N	Galileo Casa
\.


--
-- Data for Name: filter92; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter92 (lloji, "filtro_sipas_markës") FROM stdin;
Plastike	\N
\N	Artplast
\.


--
-- Data for Name: filter93; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter93 (lloji, "filtro_sipas_markës") FROM stdin;
Artikuj Plazhi	\N
\.


--
-- Data for Name: filter94; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter94 (lloji, "filtro_sipas_markës") FROM stdin;
 Fshesa dhe aksesorë	\N
\N	Verdelook
\.


--
-- Data for Name: filter95; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter95 (lloji, "filtro_sipas_markës") FROM stdin;
Bojra per jashte	\N
\N	Bitex
\N	Nirlat
\N	Isomat
\N	Deutsch Color
\.


--
-- Data for Name: filter96; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter96 (lloji, "filtro_sipas_markës") FROM stdin;
Bojra per brenda	\N
\N	Decotric
\N	Nirlat
\N	Isomat
\N	Deutsch Color
\.


--
-- Data for Name: filter97; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter97 (lloji, "filtro_sipas_markës") FROM stdin;
Bojra dekorative	\N
\N	Bitex
\N	Nirlat
\N	Dast
\.


--
-- Data for Name: filter98; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter98 (lloji, "filtro_sipas_markës") FROM stdin;
Bojra druri me baze uji	\N
Bojra druri me baze diluenti	\N
\N	Nirlat
\N	VELECA
\N	Arexons
\N	Deutsch Color
\.


--
-- Data for Name: filter99; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.filter99 (lloji, "filtro_sipas_markës") FROM stdin;
Bojra metali	\N
\N	Nirlat
\N	Arexons
\N	Deutsch Color
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: eblej_director
--

COPY public.products (id, creation_time, details, owner, spot, category_id) FROM stdin;
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
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: eblej_director
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- PostgreSQL database dump complete
--

