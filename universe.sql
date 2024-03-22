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
    age_millions integer,
    description text,
    has_life boolean NOT NULL,
    status numeric(4,1)
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
-- Name: galaxy_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_planet (
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    galaxy_planet_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy_planet OWNER TO freecodecamp;

--
-- Name: galaxy_planet_galaxy_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_planet_galaxy_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_planet_galaxy_planet_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_planet_galaxy_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_planet_galaxy_planet_id_seq OWNED BY public.galaxy_planet.galaxy_planet_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_millions integer,
    description text,
    has_life boolean NOT NULL,
    planet_id integer NOT NULL,
    status numeric(4,1)
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
    age_millions integer,
    description text,
    has_life boolean NOT NULL,
    star_id integer NOT NULL,
    status numeric(4,1)
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
    age_millions integer,
    description text,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL,
    status numeric(4,1)
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_planet galaxy_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet ALTER COLUMN galaxy_planet_id SET DEFAULT nextval('public.galaxy_planet_galaxy_planet_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 35, 'asdf ffd fff', false, 45.6);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 56, 'fjghgk kdjfn', false, 67.8);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 57, 'fjghdl gjgkh', true, 68.3);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 54, 'hgkfjfb fhfj', false, 56.8);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 48, 'gjhfnvj gkgjgn', true, 56.1);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 35, 'asdf ffd fff', false, 45.6);


--
-- Data for Name: galaxy_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_planet VALUES (1, 5, 1, 'planet5');
INSERT INTO public.galaxy_planet VALUES (2, 3, 2, 'planet3');
INSERT INTO public.galaxy_planet VALUES (3, 6, 3, 'planet6');
INSERT INTO public.galaxy_planet VALUES (4, 8, 4, 'planet8');
INSERT INTO public.galaxy_planet VALUES (2, 1, 5, 'planet1');
INSERT INTO public.galaxy_planet VALUES (6, 10, 6, 'planet10');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (22, 'moon1', 35, 'asdf ffd fff', false, 1, 45.6);
INSERT INTO public.moon VALUES (23, 'moon2', 56, 'fjghgk kdjfn', false, 2, 67.8);
INSERT INTO public.moon VALUES (24, 'moon3', 57, 'fjghdl gjgkh', true, 3, 68.3);
INSERT INTO public.moon VALUES (25, 'moon4', 54, 'hgkfjfb fhfj', false, 4, 56.8);
INSERT INTO public.moon VALUES (26, 'moon5', 48, 'gjhfnvj gkgjgn', true, 5, 56.1);
INSERT INTO public.moon VALUES (27, 'moon6', 45, 'dhfjg fjfj', true, 6, 56.3);
INSERT INTO public.moon VALUES (28, 'moon7', 35, 'asdf ffd fff', false, 1, 45.6);
INSERT INTO public.moon VALUES (29, 'moon8', 56, 'fjghgk kdjfn', false, 2, 67.8);
INSERT INTO public.moon VALUES (30, 'moon9', 57, 'fjghdl gjgkh', true, 3, 68.3);
INSERT INTO public.moon VALUES (31, 'moon10', 54, 'hgkfjfb fhfj', false, 4, 56.8);
INSERT INTO public.moon VALUES (32, 'moon11', 48, 'gjhfnvj gkgjgn', true, 5, 56.1);
INSERT INTO public.moon VALUES (33, 'moon12', 45, 'dhfjg fjfj', true, 6, 56.3);
INSERT INTO public.moon VALUES (34, 'moon13', 54, 'hgkfjfb fhfj', false, 7, 56.8);
INSERT INTO public.moon VALUES (35, 'moon14', 48, 'gjhfnvj gkgjgn', true, 7, 56.1);
INSERT INTO public.moon VALUES (36, 'moon15', 45, 'dhfjg fjfj', true, 8, 56.3);
INSERT INTO public.moon VALUES (37, 'moon16', 35, 'asdf ffd fff', false, 6, 45.6);
INSERT INTO public.moon VALUES (38, 'moon17', 56, 'fjghgk kdjfn', false, 9, 67.8);
INSERT INTO public.moon VALUES (39, 'moon18', 57, 'fjghdl gjgkh', true, 9, 68.3);
INSERT INTO public.moon VALUES (40, 'moon19', 54, 'hgkfjfb fhfj', false, 10, 56.8);
INSERT INTO public.moon VALUES (41, 'moon20', 48, 'gjhfnvj gkgjgn', true, 5, 56.1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 35, 'asdf ffd fff', false, 1, 45.6);
INSERT INTO public.planet VALUES (2, 'planet2', 56, 'fjghgk kdjfn', false, 2, 67.8);
INSERT INTO public.planet VALUES (3, 'planet3', 57, 'fjghdl gjgkh', true, 3, 68.3);
INSERT INTO public.planet VALUES (4, 'planet4', 54, 'hgkfjfb fhfj', false, 4, 56.8);
INSERT INTO public.planet VALUES (5, 'planet5', 48, 'gjhfnvj gkgjgn', true, 5, 56.1);
INSERT INTO public.planet VALUES (6, 'planet6', 45, 'dhfjg fjfj', true, 6, 56.3);
INSERT INTO public.planet VALUES (7, 'planet7', 35, 'asdf ffd fff', false, 1, 45.6);
INSERT INTO public.planet VALUES (8, 'planet8', 56, 'fjghgk kdjfn', false, 2, 67.8);
INSERT INTO public.planet VALUES (9, 'planet9', 57, 'fjghdl gjgkh', true, 3, 68.3);
INSERT INTO public.planet VALUES (10, 'planet10', 54, 'hgkfjfb fhfj', false, 4, 56.8);
INSERT INTO public.planet VALUES (11, 'planet11', 48, 'gjhfnvj gkgjgn', true, 5, 56.1);
INSERT INTO public.planet VALUES (12, 'planet12', 45, 'dhfjg fjfj', true, 6, 56.3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 35, 'asdf ffd fff', false, 1, 45.6);
INSERT INTO public.star VALUES (2, 'star2', 56, 'fjghgk kdjfn', false, 2, 67.8);
INSERT INTO public.star VALUES (3, 'star3', 57, 'fjghdl gjgkh', true, 3, 68.3);
INSERT INTO public.star VALUES (4, 'star4', 54, 'hgkfjfb fhfj', false, 4, 56.8);
INSERT INTO public.star VALUES (5, 'star5', 48, 'gjhfnvj gkgjgn', true, 5, 56.1);
INSERT INTO public.star VALUES (6, 'star6', 45, 'dhfjg fjfj', true, 6, 56.3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_planet_galaxy_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_planet_galaxy_planet_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 41, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy_planet galaxy_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT galaxy_planet_name_key UNIQUE (name);


--
-- Name: galaxy_planet galaxy_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT galaxy_planet_pkey PRIMARY KEY (galaxy_planet_id);


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
-- Name: galaxy_planet galaxy_planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT galaxy_planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_planet galaxy_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT galaxy_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

