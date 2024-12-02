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
    name character varying(10) NOT NULL,
    age_in_millions integer,
    earth_distance numeric,
    description text,
    has_life boolean,
    spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_pk_seq OWNER TO freecodecamp;

--
-- Name: galaxy_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_pk_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(10) NOT NULL,
    age_in_millions integer,
    earth_distance numeric,
    description text,
    has_life boolean,
    spherical boolean,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_pk_seq OWNER TO freecodecamp;

--
-- Name: moon_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_pk_seq OWNED BY public.moon.moon_id;


--
-- Name: my_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.my_table (
);


ALTER TABLE public.my_table OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(10) NOT NULL,
    age_in_millions integer,
    earth_distance numeric,
    description text,
    has_life boolean,
    spherical boolean,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_pk_seq OWNER TO freecodecamp;

--
-- Name: planet_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_pk_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(10) NOT NULL,
    age_in_millions integer,
    earth_distance numeric,
    description text,
    has_life boolean,
    spherical boolean,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_pk_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_pk_seq OWNER TO freecodecamp;

--
-- Name: star_pk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_pk_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_pk_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_pk_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_pk_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_pk_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('data1', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('data2', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('data3', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('data4', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('data5', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('data6', NULL, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('data1', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('data2', NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES ('data3', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES ('data4', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('data5', NULL, NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('data6', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('data7', NULL, NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('data8', NULL, NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('data9', NULL, NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES ('data10', NULL, NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES ('data11', NULL, NULL, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES ('data12', NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES ('data13', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES ('data14', NULL, NULL, NULL, NULL, NULL, 14, NULL);
INSERT INTO public.moon VALUES ('data15', NULL, NULL, NULL, NULL, NULL, 15, NULL);
INSERT INTO public.moon VALUES ('data16', NULL, NULL, NULL, NULL, NULL, 16, NULL);
INSERT INTO public.moon VALUES ('data17', NULL, NULL, NULL, NULL, NULL, 17, NULL);
INSERT INTO public.moon VALUES ('data18', NULL, NULL, NULL, NULL, NULL, 18, NULL);
INSERT INTO public.moon VALUES ('data19', NULL, NULL, NULL, NULL, NULL, 19, NULL);
INSERT INTO public.moon VALUES ('data20', NULL, NULL, NULL, NULL, NULL, 20, NULL);


--
-- Data for Name: my_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('data1', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('data2', NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES ('data3', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES ('data4', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES ('data5', NULL, NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES ('data6', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES ('data7', NULL, NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES ('data8', NULL, NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.planet VALUES ('data9', NULL, NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.planet VALUES ('data10', NULL, NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES ('data11', NULL, NULL, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.planet VALUES ('data12', NULL, NULL, NULL, NULL, NULL, 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('data1', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES ('data2', NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.star VALUES ('data3', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.star VALUES ('data4', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.star VALUES ('data5', NULL, NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.star VALUES ('data6', NULL, NULL, NULL, NULL, NULL, 6, NULL);


--
-- Name: galaxy_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_pk_seq', 6, true);


--
-- Name: moon_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_pk_seq', 20, true);


--
-- Name: planet_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_pk_seq', 12, true);


--
-- Name: star_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_pk_seq', 6, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

