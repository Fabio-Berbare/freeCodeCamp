--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: table_five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_five (
    one integer NOT NULL,
    two integer NOT NULL,
    three integer,
    name character varying(30),
    table_five_id integer NOT NULL
);


ALTER TABLE public.table_five OWNER TO freecodecamp;

--
-- Name: table_five_table_five_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_five_table_five_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_five_table_five_id_seq OWNER TO freecodecamp;

--
-- Name: table_five_table_five_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_five_table_five_id_seq OWNED BY public.table_five.table_five_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: table_five table_five_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_five ALTER COLUMN table_five_id SET DEFAULT nextval('public.table_five_table_five_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Láctea', 'Nossa galáxia, o lar do Sistema Solar', true, 13600, 0);
INSERT INTO public.galaxy VALUES (2, 'Andrômeda', 'A galáxia espiral mais próxima da Via Láctea', false, 10000, 2537000);
INSERT INTO public.galaxy VALUES (3, 'Triângulo', 'Galáxia espiral localizada a 3 milhões de anos-luz', false, 9000, 2730000);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 'Galáxia espiral brilhante na constelação de Ursa Major', false, 12000, 11800000);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 'Galáxia espiral barrada na constelação de Eridanus', false, 9500, 61000000);
INSERT INTO public.galaxy VALUES (6, 'Redemoinho', 'Galáxia em espiral localizada na constelação Cães de Caça', false, 10500, 23160000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Satélite natural da Terra', false, 4500, 0.384, 3);
INSERT INTO public.moon VALUES (2, 'Fobos', 'Maior lua de Marte', false, 4500, 9.4, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Menor lua de Marte', false, 4500, 23.5, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 'Lua gelada de Júpiter', false, 4500, 628.3, 5);
INSERT INTO public.moon VALUES (5, 'Ganimedes', 'Maior lua do Sistema Solar', false, 4500, 1070.4, 5);
INSERT INTO public.moon VALUES (6, 'Calisto', 'Lua com superfície cheia de crateras', false, 4500, 1882.7, 5);
INSERT INTO public.moon VALUES (7, 'Io', 'Lua vulcanicamente ativa', false, 4500, 628.3, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Maior lua de Saturno, possui atmosfera densa', false, 4500, 1206.0, 6);
INSERT INTO public.moon VALUES (9, 'Reia', 'Segunda maior lua de Saturno', false, 4500, 527.1, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Lua com uma das maiores variações de brilho do Sistema Solar', false, 4500, 3561.3, 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Pequena lua de Urano', false, 4500, 5118.9, 7);
INSERT INTO public.moon VALUES (12, 'Ariel', 'Segunda maior lua de Urano', false, 4500, 1909.8, 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Lua escura de Urano', false, 4500, 2652.4, 7);
INSERT INTO public.moon VALUES (14, 'Tritão', 'Lua maior de Netuno', false, 4500, 3548.8, 8);
INSERT INTO public.moon VALUES (15, 'Nereida', 'Lua excêntrica de Netuno', false, 4500, 5513.3, 8);
INSERT INTO public.moon VALUES (16, 'Proxima Centauri b1', 'Primeira lua de Proxima b', false, 4850, 4.24, 9);
INSERT INTO public.moon VALUES (17, 'Proxima Centauri b2', 'Segunda lua de Proxima b', false, 4850, 4.24, 9);
INSERT INTO public.moon VALUES (18, 'Alpha Centauri Bb1', 'Primeira lua de Alpha Centauri Bb', false, 4550, 4.37, 10);
INSERT INTO public.moon VALUES (19, 'Alpha Centauri Bb2', 'Segunda lua de Alpha Centauri Bb', false, 4550, 4.37, 10);
INSERT INTO public.moon VALUES (20, 'Betelgeuse b1', 'Primeira lua de Betelgeuse b', false, 8500, 642.5, 11);
INSERT INTO public.moon VALUES (21, 'Betelgeuse b2', 'Segunda lua de Betelgeuse b', false, 8500, 642.5, 11);
INSERT INTO public.moon VALUES (22, 'Sirius b1', 'Primeira lua de Sirius b', false, 300, 8.6, 12);
INSERT INTO public.moon VALUES (23, 'Sirius b2', 'Segunda lua de Sirius b', false, 300, 8.6, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercúrio', 'O menor planeta do Sistema Solar', false, 4500, 57.9, 1);
INSERT INTO public.planet VALUES (2, 'Vênus', 'Planeta com atmosfera densa e quente', false, 4500, 108.2, 1);
INSERT INTO public.planet VALUES (3, 'Terra', 'Nosso planeta, com vida', true, 4500, 149.6, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 'O planeta vermelho', false, 4500, 227.9, 1);
INSERT INTO public.planet VALUES (5, 'Júpiter', 'O maior planeta do Sistema Solar', false, 4500, 778.5, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 'Conhecido por seus anéis', false, 4500, 1434.0, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 'Planeta com inclinação axial extrema', false, 4500, 2871.0, 1);
INSERT INTO public.planet VALUES (8, 'Netuno', 'Planeta gasoso com ventos fortes', false, 4500, 4497.1, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Exoplaneta em órbita de Proxima Centauri', false, 4850, 4.24, 2);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 'Exoplaneta em Alpha Centauri A', false, 4550, 4.37, 3);
INSERT INTO public.planet VALUES (11, 'Betelgeuse b', 'Exoplaneta em órbita de Betelgeuse', false, 8500, 642.5, 4);
INSERT INTO public.planet VALUES (12, 'Sirius b', 'Exoplaneta em órbita de Sirius', false, 300, 8.6, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Estrela principal do Sistema Solar', true, 4600, 0, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'A estrela mais próxima do Sistema Solar', false, 4850, 42400, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Parte de um sistema estelar triplo', false, 4550, 42400, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Uma das estrelas mais brilhantes da constelação de Orion', false, 8500, 642500, 3);
INSERT INTO public.star VALUES (5, 'Sirius', 'A estrela mais brilhante no céu noturno', false, 300, 8600, 4);
INSERT INTO public.star VALUES (6, 'Vega', 'Estrela mais brilhante da constelação de Lira', false, 455, 25400, 5);


--
-- Data for Name: table_five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_five VALUES (1, 10, 100, NULL, 1);
INSERT INTO public.table_five VALUES (2, 20, 200, NULL, 2);
INSERT INTO public.table_five VALUES (3, 30, 300, NULL, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: table_five_table_five_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_five_table_five_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table_five table_five_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_five
    ADD CONSTRAINT table_five_pkey PRIMARY KEY (table_five_id);


--
-- Name: table_five table_five_three_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_five
    ADD CONSTRAINT table_five_three_key UNIQUE (three);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

