--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Homebrew)
-- Dumped by pg_dump version 14.17 (Homebrew)

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
-- Name: monster_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.monster_type (
    id integer NOT NULL,
    name character varying NOT NULL,
    description integer
);


ALTER TABLE public.monster_type OWNER TO postgres;

--
-- Name: monster_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.monster_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monster_type_id_seq OWNER TO postgres;

--
-- Name: monster_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.monster_type_id_seq OWNED BY public.monster_type.id;


--
-- Name: monsters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.monsters (
    id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    type_id integer,
    strength integer,
    constitution integer,
    dexterity integer,
    power integer,
    damage_bonus character varying,
    armor character varying,
    mind_loss character varying,
    skills character varying,
    combat_abilities character varying,
    image_url character varying
);


ALTER TABLE public.monsters OWNER TO postgres;

--
-- Name: monsters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.monsters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monsters_id_seq OWNER TO postgres;

--
-- Name: monsters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.monsters_id_seq OWNED BY public.monsters.id;


--
-- Name: spells; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spells (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    type_id integer,
    sanity_loss character varying(20) NOT NULL,
    power_loss character varying(20),
    health_loss character varying(20),
    magic_points_cost character varying NOT NULL,
    casting_time character varying(50),
    duration character varying(50),
    range character varying(50),
    components text,
    difficulty character varying(50)
);


ALTER TABLE public.spells OWNER TO postgres;

--
-- Name: spells_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spells_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spells_id_seq OWNER TO postgres;

--
-- Name: spells_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spells_id_seq OWNED BY public.spells.id;


--
-- Name: spells_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spells_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.spells_types OWNER TO postgres;

--
-- Name: spells_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spells_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spells_types_id_seq OWNER TO postgres;

--
-- Name: spells_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spells_types_id_seq OWNED BY public.spells_types.id;


--
-- Name: weapon_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weapon_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.weapon_types OWNER TO postgres;

--
-- Name: weapon_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.weapon_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weapon_types_id_seq OWNER TO postgres;

--
-- Name: weapon_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.weapon_types_id_seq OWNED BY public.weapon_types.id;


--
-- Name: weapons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weapons (
    id integer NOT NULL,
    name character varying NOT NULL,
    type_id integer,
    damage character varying NOT NULL,
    range character varying,
    misfire_chance character varying,
    attacks_per_round character varying,
    magazine_size integer,
    price character varying,
    weight_kg numeric,
    concealment character varying,
    special_effects text,
    era character varying
);


ALTER TABLE public.weapons OWNER TO postgres;

--
-- Name: weapons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.weapons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weapons_id_seq OWNER TO postgres;

--
-- Name: weapons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.weapons_id_seq OWNED BY public.weapons.id;


--
-- Name: monster_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monster_type ALTER COLUMN id SET DEFAULT nextval('public.monster_type_id_seq'::regclass);


--
-- Name: monsters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monsters ALTER COLUMN id SET DEFAULT nextval('public.monsters_id_seq'::regclass);


--
-- Name: spells id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spells ALTER COLUMN id SET DEFAULT nextval('public.spells_id_seq'::regclass);


--
-- Name: spells_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spells_types ALTER COLUMN id SET DEFAULT nextval('public.spells_types_id_seq'::regclass);


--
-- Name: weapon_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapon_types ALTER COLUMN id SET DEFAULT nextval('public.weapon_types_id_seq'::regclass);


--
-- Name: weapons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons ALTER COLUMN id SET DEFAULT nextval('public.weapons_id_seq'::regclass);


--
-- Data for Name: monster_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.monster_type (id, name, description) FROM stdin;
1	Божества мифов	\N
2	Животные	\N
3	Традиционные монстры	\N
4	Чудовища мифов	\N
\.


--
-- Data for Name: monsters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.monsters (id, name, description, type_id, strength, constitution, dexterity, power, damage_bonus, armor, mind_loss, skills, combat_abilities, image_url) FROM stdin;
\.


--
-- Data for Name: spells; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spells (id, name, description, type_id, sanity_loss, power_loss, health_loss, magic_points_cost, casting_time, duration, range, components, difficulty) FROM stdin;
\.


--
-- Data for Name: spells_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spells_types (id, name, description) FROM stdin;
1	Вызов	\N
2	Призыв	\N
3	Связь	\N
4	Укрощение	\N
5	Обычные заклинания	\N
\.


--
-- Data for Name: weapon_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.weapon_types (id, name, description) FROM stdin;
1	Винтовки	\N
2	Дробовики	\N
3	Инопланетное	\N
4	Метательное оружие	\N
5	Осадные орудия	\N
6	Пистолеты	\N
7	Пистолеты-пулеметы	\N
8	Пулеметы	\N
9	Холодное оружие	\N
10	Автоматические винтовки	\N
11	Взрывчатка, тяжелое оружие	\N
12	Щиты	\N
\.


--
-- Data for Name: weapons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.weapons (id, name, type_id, damage, range, misfire_chance, attacks_per_round, magazine_size, price, weight_kg, concealment, special_effects, era) FROM stdin;
\.


--
-- Name: monster_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.monster_type_id_seq', 4, true);


--
-- Name: monsters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.monsters_id_seq', 1, false);


--
-- Name: spells_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spells_id_seq', 1, false);


--
-- Name: spells_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spells_types_id_seq', 5, true);


--
-- Name: weapon_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.weapon_types_id_seq', 12, true);


--
-- Name: weapons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.weapons_id_seq', 1, false);


--
-- Name: monster_type monster_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monster_type
    ADD CONSTRAINT monster_type_pkey PRIMARY KEY (id);


--
-- Name: monsters monsters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT monsters_pkey PRIMARY KEY (id);


--
-- Name: spells spells_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spells
    ADD CONSTRAINT spells_pkey PRIMARY KEY (id);


--
-- Name: spells_types spells_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spells_types
    ADD CONSTRAINT spells_types_pkey PRIMARY KEY (id);


--
-- Name: weapon_types weapon_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapon_types
    ADD CONSTRAINT weapon_types_pkey PRIMARY KEY (id);


--
-- Name: weapons weapons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons
    ADD CONSTRAINT weapons_pkey PRIMARY KEY (id);


--
-- Name: idx_spells_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_spells_type ON public.spells USING btree (type_id);


--
-- Name: idx_weapons_damage; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_weapons_damage ON public.weapons USING btree (damage);


--
-- Name: idx_weapons_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_weapons_type ON public.weapons USING btree (type_id);


--
-- Name: monsters monsters_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT monsters_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.monster_type(id);


--
-- Name: spells spells_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spells
    ADD CONSTRAINT spells_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.spells_types(id);


--
-- Name: weapons weapons_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons
    ADD CONSTRAINT weapons_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.weapon_types(id);


--
-- Name: TABLE monster_type; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.monster_type TO developer;


--
-- Name: TABLE monsters; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.monsters TO developer;


--
-- Name: TABLE spells; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spells TO developer;


--
-- Name: TABLE spells_types; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spells_types TO developer;


--
-- Name: TABLE weapon_types; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.weapon_types TO developer;


--
-- Name: TABLE weapons; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.weapons TO developer;


--
-- PostgreSQL database dump complete
--

