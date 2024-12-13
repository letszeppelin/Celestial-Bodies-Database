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
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer NOT NULL,
    galaxy_types character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_name_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_name_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_name_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: humans; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.humans (
    humans_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.humans OWNER TO freecodecamp;

--
-- Name: humans_humans_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.humans_humans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.humans_humans_id_seq OWNER TO freecodecamp;

--
-- Name: humans_humans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.humans_humans_id_seq OWNED BY public.humans.humans_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    moon_type character varying(20)
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
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    planet_type character varying(20),
    distance_from_earth_light_years numeric(4,1)
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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    star_type character varying(40),
    distance_from_earth_millions_light_years numeric(4,1)
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_name_id_seq'::regclass);


--
-- Name: humans humans_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans ALTER COLUMN humans_id SET DEFAULT nextval('public.humans_humans_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A barred spiral galaxy, home to our Solar System.', true, 13000, 'Spiral Barred');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The closest spiral galaxy to the Milky Way', true, 10000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A small spiral galaxy near Andromeda.', true, 3000, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'A giant elliptical galaxy in the Virgo Cluster.', false, 13000, 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'A spiral galaxy known for its prominent arm.', true, 6000, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'A spiral galaxy with a large central bulge.', false, 10000, 'Lenticular');


--
-- Data for Name: humans; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.humans VALUES (1, 'John', 27);
INSERT INTO public.humans VALUES (2, 'Carla', 38);
INSERT INTO public.humans VALUES (3, 'Greta', 23);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, true, false, 5.0, 'Rocky');
INSERT INTO public.moon VALUES (2, 'Phobos', 2, false, false, 4.0, 'Rocky');
INSERT INTO public.moon VALUES (3, 'Alpheratz I-1', 3, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (4, 'Alpheratz II-1', 4, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (5, 'Triangulum I-1', 5, false, false, 2.0, 'Rocky');
INSERT INTO public.moon VALUES (6, 'Triangulum II-2', 6, false, false, 1.5, 'Rocky');
INSERT INTO public.moon VALUES (7, 'M87b-1', 7, false, true, 13.0, 'Ice');
INSERT INTO public.moon VALUES (8, 'M87c-1', 8, false, true, 12.0, 'Rocky');
INSERT INTO public.moon VALUES (9, 'Whirlpool', 9, true, false, 6.0, 'Ice');
INSERT INTO public.moon VALUES (10, 'Whirlpool II', 10, false, false, 6.5, 'Rocky');
INSERT INTO public.moon VALUES (11, 'Sombrero I-1', 11, false, true, 10.0, 'Rocky');
INSERT INTO public.moon VALUES (12, 'Sombrero II-1', 12, false, false, 9.0, 'Ice');
INSERT INTO public.moon VALUES (13, 'LUNA AUX 1', 10, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (14, 'LUNA AUX 2', 7, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (15, 'LUNA AUX 3', 6, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (16, 'LUNA AUX 4', 5, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (17, 'LUNA AUX 5', 4, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (18, 'LUNA AUX 6', 3, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (19, 'LUNA AUX 7', 2, false, true, 9.0, 'Ice');
INSERT INTO public.moon VALUES (20, 'LUNA AUX 8', 1, false, true, 9.0, 'Ice');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, false, 4, 'Terrestrial', 0.0);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, false, 4, 'Terrestrial', 0.0);
INSERT INTO public.planet VALUES (3, 'Alpheratz I', 2, false, false, 8000, 'Terrestrial', 2.5);
INSERT INTO public.planet VALUES (4, 'Alpheratz II', 2, true, false, 10000, 'Ice Giant', 2.5);
INSERT INTO public.planet VALUES (5, 'Triangulum I', 3, true, false, 2000, 'Terrestrial', 5.0);
INSERT INTO public.planet VALUES (6, 'Triangulum II', 3, false, false, 1500, 'Gas Giant', 3.0);
INSERT INTO public.planet VALUES (7, 'M87 b', 4, false, true, 13000, NULL, 53.0);
INSERT INTO public.planet VALUES (8, 'M87 c', 4, false, true, 12000, NULL, 53.0);
INSERT INTO public.planet VALUES (9, 'Whirlpool I', 5, true, false, 6000, 'Gas Giants', 23.0);
INSERT INTO public.planet VALUES (10, 'Whirlpool II', 5, false, false, 6500, 'Ice Giants', 23.0);
INSERT INTO public.planet VALUES (11, 'Sombrero I', 6, false, true, 10000, NULL, 28.0);
INSERT INTO public.planet VALUES (12, 'Sombre II', 6, false, true, 9000, NULL, 28.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, true, false, 4600, 'Gas Giant', 0.0);
INSERT INTO public.star VALUES (2, 'Alpheratz', 2, true, false, 3000, 'Ice Giant', 2.5);
INSERT INTO public.star VALUES (3, 'M33 Star A', 3, true, false, 5000, 'Gas Giant', 3.0);
INSERT INTO public.star VALUES (4, 'M87 Star X', 4, false, true, 13000, NULL, 53.0);
INSERT INTO public.star VALUES (5, 'Whirlpool Star', 5, true, false, 7000, 'Ice Giant', 23.0);
INSERT INTO public.star VALUES (6, 'Sombrero Star', 6, false, true, 10000, NULL, 28.0);


--
-- Name: galaxy_galaxy_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_name_id_seq', 6, true);


--
-- Name: humans_humans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.humans_humans_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


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
-- Name: humans humans_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans
    ADD CONSTRAINT humans_name_key UNIQUE (name);


--
-- Name: humans humans_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans
    ADD CONSTRAINT humans_pkey PRIMARY KEY (humans_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


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

