--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: evren; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.evren (
    name character varying(30) NOT NULL,
    evren_id integer NOT NULL,
    evren_r integer,
    far boolean,
    hot boolean
);


ALTER TABLE public.evren OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_r numeric(2,1),
    description text,
    name character varying(30),
    galaxy_order integer NOT NULL
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
    moon_r numeric(2,1),
    name character varying(30),
    moon_order character(4) NOT NULL,
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
    planet_r numeric(2,1),
    name character varying(30),
    star_id integer,
    planet_order integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_palnet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_palnet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_palnet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_palnet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_palnet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_r numeric(2,1),
    galaxy_id integer NOT NULL,
    name character varying(30),
    star_order integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_palnet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: evren; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.evren VALUES ('gogo', 1, 32, NULL, NULL);
INSERT INTO public.evren VALUES ('for', 2, 35, NULL, NULL);
INSERT INTO public.evren VALUES ('dep', 3, 54, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1.2, 'aa', 'aa', 1);
INSERT INTO public.galaxy VALUES (2, 1.3, 'ab', 'ab', 2);
INSERT INTO public.galaxy VALUES (3, 1.4, 'ac', 'ac', 3);
INSERT INTO public.galaxy VALUES (4, 1.5, 'ad', 'ad', 4);
INSERT INTO public.galaxy VALUES (5, 1.5, 'ae', 'ae', 5);
INSERT INTO public.galaxy VALUES (6, 1.6, 'af', 'af', 6);
INSERT INTO public.galaxy VALUES (7, 1.7, 'ag', 'ag', 7);
INSERT INTO public.galaxy VALUES (8, 1.8, 'ah', 'ah', 8);
INSERT INTO public.galaxy VALUES (9, 1.9, 'ai', 'ai', 9);
INSERT INTO public.galaxy VALUES (10, 1.1, 'aj', 'aj', 10);
INSERT INTO public.galaxy VALUES (11, 1.1, 'ak', 'ak', 11);
INSERT INTO public.galaxy VALUES (12, 1.1, 'al', 'al', 12);
INSERT INTO public.galaxy VALUES (13, 1.1, 'am', 'am', 13);
INSERT INTO public.galaxy VALUES (14, 1.1, 'an', 'an', 14);
INSERT INTO public.galaxy VALUES (15, 1.2, 'ap', 'ap', 15);
INSERT INTO public.galaxy VALUES (16, 1.2, 'ar', 'ar', 16);
INSERT INTO public.galaxy VALUES (17, 1.2, 'as', 'as', 17);
INSERT INTO public.galaxy VALUES (18, 1.2, 'at', 'at', 18);
INSERT INTO public.galaxy VALUES (19, 1.2, 'au', 'au', 19);
INSERT INTO public.galaxy VALUES (20, 1.2, 'av', 'av', 20);
INSERT INTO public.galaxy VALUES (21, 1.2, 'aw', 'aw', 21);
INSERT INTO public.galaxy VALUES (22, 1.2, 'az', 'az', 22);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1.1, 'ma', 'ma  ', 1);
INSERT INTO public.moon VALUES (2, 1.2, 'mb', 'mb  ', 2);
INSERT INTO public.moon VALUES (3, 1.3, 'mc', 'mc  ', 3);
INSERT INTO public.moon VALUES (4, 1.1, 'mdp', 'md  ', 4);
INSERT INTO public.moon VALUES (5, 1.5, 'me', 'me  ', 5);
INSERT INTO public.moon VALUES (6, 1.6, 'mf', 'mf  ', 6);
INSERT INTO public.moon VALUES (7, 1.7, 'mg', 'mg  ', 7);
INSERT INTO public.moon VALUES (8, 1.8, 'mh', 'mh  ', 8);
INSERT INTO public.moon VALUES (9, 1.9, 'mi', 'mi  ', 9);
INSERT INTO public.moon VALUES (10, 1.1, 'mj', 'mj  ', 10);
INSERT INTO public.moon VALUES (11, 1.1, 'mk', 'mk  ', 11);
INSERT INTO public.moon VALUES (12, 1.1, 'ml', 'ml  ', 12);
INSERT INTO public.moon VALUES (13, 1.1, 'mm', 'mm  ', 13);
INSERT INTO public.moon VALUES (14, 1.1, 'mo', 'mo  ', 14);
INSERT INTO public.moon VALUES (15, 1.2, 'msh', 'msh ', 15);
INSERT INTO public.moon VALUES (16, 1.2, 'msi', 'smi ', 16);
INSERT INTO public.moon VALUES (17, 1.2, 'msj', 'mjs ', 17);
INSERT INTO public.moon VALUES (18, 1.2, 'msk', 'msk ', 18);
INSERT INTO public.moon VALUES (19, 1.2, 'msl', 'msl ', 19);
INSERT INTO public.moon VALUES (20, 1.2, 'msm', 'msm ', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1.1, 'pa', 1, 1);
INSERT INTO public.planet VALUES (2, 1.2, 'pb', 2, 2);
INSERT INTO public.planet VALUES (3, 1.3, 'pc', 3, 3);
INSERT INTO public.planet VALUES (4, 1.4, 'pd', 4, 4);
INSERT INTO public.planet VALUES (5, 1.5, 'pe', 5, 5);
INSERT INTO public.planet VALUES (6, 1.6, 'pf', 6, 6);
INSERT INTO public.planet VALUES (7, 1.7, 'pg', 7, 7);
INSERT INTO public.planet VALUES (11, 1.1, 'ph', 11, 11);
INSERT INTO public.planet VALUES (12, 1.1, 'pi', 12, 12);
INSERT INTO public.planet VALUES (13, 1.1, 'pj', 13, 13);
INSERT INTO public.planet VALUES (14, 1.1, 'pk', 14, 14);
INSERT INTO public.planet VALUES (15, 1.2, 'pl', 15, 15);
INSERT INTO public.planet VALUES (16, 1.2, 'pm', 16, 16);
INSERT INTO public.planet VALUES (17, 1.2, 'pn', 17, 17);
INSERT INTO public.planet VALUES (18, 1.2, 'po', 18, 18);
INSERT INTO public.planet VALUES (19, 1.2, 'pr', 19, 19);
INSERT INTO public.planet VALUES (20, 1.2, 'ps', 20, 20);
INSERT INTO public.planet VALUES (8, 1.2, 'spk', 8, 8);
INSERT INTO public.planet VALUES (9, 1.9, 'spl', 9, 9);
INSERT INTO public.planet VALUES (10, 1.1, 'pms', 10, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1.1, 1, 'aa', 1);
INSERT INTO public.star VALUES (2, 1.2, 2, 'ab', 2);
INSERT INTO public.star VALUES (3, 1.3, 3, 'ac', 3);
INSERT INTO public.star VALUES (4, 1.4, 4, 'ad', 4);
INSERT INTO public.star VALUES (5, 1.5, 5, 'ae', 5);
INSERT INTO public.star VALUES (6, 1.6, 6, 'af', 6);
INSERT INTO public.star VALUES (7, 1.7, 7, 'ag', 7);
INSERT INTO public.star VALUES (11, 1.1, 11, 'an', 11);
INSERT INTO public.star VALUES (12, 1.1, 12, 'ah', 12);
INSERT INTO public.star VALUES (13, 1.1, 13, 'ai', 13);
INSERT INTO public.star VALUES (14, 1.1, 14, 'aj', 14);
INSERT INTO public.star VALUES (15, 1.2, 15, 'ak', 15);
INSERT INTO public.star VALUES (16, 1.2, 16, 'al', 16);
INSERT INTO public.star VALUES (17, 1.2, 17, 'am', 17);
INSERT INTO public.star VALUES (18, 1.2, 18, 'ao', 18);
INSERT INTO public.star VALUES (19, 1.2, 19, 'ap', 19);
INSERT INTO public.star VALUES (20, 1.2, 20, 'ar', 20);
INSERT INTO public.star VALUES (21, 1.2, 21, 'as', 21);
INSERT INTO public.star VALUES (22, 1.2, 22, 'at', 22);
INSERT INTO public.star VALUES (8, 1.8, 8, 'sa', 8);
INSERT INTO public.star VALUES (9, 1.9, 9, 'sp', 9);
INSERT INTO public.star VALUES (10, 1.1, 10, 'sr', 10);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_palnet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_palnet_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: evren evren_evren_r_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.evren
    ADD CONSTRAINT evren_evren_r_key UNIQUE (evren_r);


--
-- Name: evren evren_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.evren
    ADD CONSTRAINT evren_pkey PRIMARY KEY (evren_id);


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