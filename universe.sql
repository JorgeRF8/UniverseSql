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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    type text,
    scape_speed integer,
    distance_mod integer
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
    name character varying(40) NOT NULL,
    is_spherical boolean,
    planet_id integer,
    gravity numeric(3,1)
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
-- Name: my_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.my_table (
    my_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.my_table OWNER TO freecodecamp;

--
-- Name: my_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.my_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_table_id_seq OWNER TO freecodecamp;

--
-- Name: my_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.my_table_id_seq OWNED BY public.my_table.my_table_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    star_id integer,
    color character varying(20)
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
    name character varying(40) NOT NULL,
    scape_speed numeric(4,1),
    galaxy_id integer,
    type_of character varying(10)
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: my_table my_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_table ALTER COLUMN my_table_id SET DEFAULT nextval('public.my_table_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'spiral', 550, 14);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 320, 25);
INSERT INTO public.galaxy VALUES (3, 'Magallanes', 'SB', 119, 9);
INSERT INTO public.galaxy VALUES (4, 'Carina', 'dE3', 113, 23);
INSERT INTO public.galaxy VALUES (5, 'Leo I', 'dE3', 112, 9);
INSERT INTO public.galaxy VALUES (6, 'Fornax', 'dE0', 93, 17);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Io', true, 5, 2.2);
INSERT INTO public.moon VALUES (3, 'Europa', true, 5, 2.0);
INSERT INTO public.moon VALUES (4, 'Ganimedes', true, 5, 2.1);
INSERT INTO public.moon VALUES (5, 'Calisto', true, 5, 1.8);
INSERT INTO public.moon VALUES (6, 'Tebe', true, 5, 1.9);
INSERT INTO public.moon VALUES (7, 'Adrastea', false, 5, 1.7);
INSERT INTO public.moon VALUES (8, 'Cordelia', true, 7, 3.2);
INSERT INTO public.moon VALUES (9, 'Ofelia', true, 7, 2.2);
INSERT INTO public.moon VALUES (10, 'Bianca', false, 7, 3.1);
INSERT INTO public.moon VALUES (11, 'Cresida', true, 7, 2.8);
INSERT INTO public.moon VALUES (12, 'Desdemona', true, 7, 2.2);
INSERT INTO public.moon VALUES (13, 'Julieta', true, 7, 2.1);
INSERT INTO public.moon VALUES (14, 'Porcia', true, 7, 2.3);
INSERT INTO public.moon VALUES (15, 'Rosalinda', true, 7, 1.8);
INSERT INTO public.moon VALUES (16, 'Cupido', false, 7, 2.7);
INSERT INTO public.moon VALUES (17, 'Belinda', true, 7, 2.1);
INSERT INTO public.moon VALUES (18, 'Perdita', true, 7, 1.9);
INSERT INTO public.moon VALUES (19, 'Puck', true, 7, 2.7);
INSERT INTO public.moon VALUES (20, 'Mab', true, 7, 2.4);


--
-- Data for Name: my_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.my_table VALUES (1, 'Pyro', 32);
INSERT INTO public.my_table VALUES (2, 'Hellfish', 30);
INSERT INTO public.my_table VALUES (3, 'Gman', 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', false, 1, 'brown');
INSERT INTO public.planet VALUES (3, 'Venus', false, 1, 'orange');
INSERT INTO public.planet VALUES (4, 'Mars', false, 1, 'red');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 1, 'brown');
INSERT INTO public.planet VALUES (6, 'Saturn', false, 1, 'grey');
INSERT INTO public.planet VALUES (1, 'Tierra', true, 1, 'blue');
INSERT INTO public.planet VALUES (7, 'Uranus', false, 1, 'green');
INSERT INTO public.planet VALUES (8, 'Neptune', false, 1, 'blue');
INSERT INTO public.planet VALUES (9, 'Pluton', false, 1, 'purple');
INSERT INTO public.planet VALUES (10, 'Eris', false, 2, 'grey');
INSERT INTO public.planet VALUES (11, 'Makemake', false, 1, 'red');
INSERT INTO public.planet VALUES (12, 'Nix', false, 6, 'yellow');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 617.8, 1, NULL);
INSERT INTO public.star VALUES (2, 'Alpheratz', 117.0, 2, NULL);
INSERT INTO public.star VALUES (3, 'Doradus', 224.0, 3, NULL);
INSERT INTO public.star VALUES (4, 'Canopus', 256.0, 4, NULL);
INSERT INTO public.star VALUES (5, 'Denebola', 138.0, 5, NULL);
INSERT INTO public.star VALUES (6, 'Epsilon', 312.0, 6, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: my_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.my_table_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: my_table my_table_nombre_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_table
    ADD CONSTRAINT my_table_nombre_key UNIQUE (name);


--
-- Name: my_table my_table_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_table
    ADD CONSTRAINT my_table_pk PRIMARY KEY (my_table_id);


--
-- Name: my_table name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_table
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: galaxy name_unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique_galaxy UNIQUE (name);


--
-- Name: moon name_unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unique_moon UNIQUE (name);


--
-- Name: planet name_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique_planet UNIQUE (name);


--
-- Name: star name_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_star UNIQUE (name);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

