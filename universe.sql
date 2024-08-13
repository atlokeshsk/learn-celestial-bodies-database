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
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(10,2),
    age integer NOT NULL,
    galaxy_type integer NOT NULL
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
-- Name: galaxy_new; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_new (
    galaxy_new_id integer DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass) NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(10,2),
    age integer NOT NULL,
    galaxy_type integer NOT NULL
);


ALTER TABLE public.galaxy_new OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(10,2),
    age integer NOT NULL,
    moon_type integer NOT NULL,
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
    has_life boolean,
    is_spherical boolean,
    distance_from_sun numeric(10,2),
    age integer NOT NULL,
    plant_type integer NOT NULL,
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
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(10,2),
    age integer NOT NULL,
    star_type integer NOT NULL,
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System.', true, true, 0.00, 13600, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way.', false, true, 2537000.00, 10000, 1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A small spiral galaxy in the Local Group.', false, true, 3000000.00, 13000, 1);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'A spiral galaxy in the Virgo constellation.', false, true, 29000000.00, 9000, 1);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way.', false, true, 163000.00, 13700, 2);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'A classic spiral galaxy with well-defined arms.', false, true, 23000000.00, 10000, 1);


--
-- Data for Name: galaxy_new; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_new VALUES (7, 'Andromeda', 'The nearest spiral galaxy to the Milky Way.', true, true, 2500000.00, 10000, 1);
INSERT INTO public.galaxy_new VALUES (8, 'Triangulum', 'A spiral galaxy in the constellation Triangulum.', false, true, 3000000.00, 9000, 1);
INSERT INTO public.galaxy_new VALUES (9, 'Messier 81', 'A spiral galaxy in the constellation Ursa Major.', false, true, 12000000.00, 8000, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s only natural satellite.', false, true, 100.00, 4500, 1, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger of Mars'' two moons.', false, true, 100.00, 4600, 2, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller of Mars'' two moons.', false, true, 100.00, 4600, 2, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 'One of Jupiter''s largest moons.', false, true, 100.00, 4500, 3, 3);
INSERT INTO public.moon VALUES (5, 'Titan', 'Saturn''s largest moon.', false, true, 100.00, 4500, 3, 4);
INSERT INTO public.moon VALUES (6, 'Triton', 'Neptune''s largest moon.', false, true, 100.00, 4500, 3, 5);
INSERT INTO public.moon VALUES (7, 'Io', 'One of Jupiter''s largest moons.', false, true, 100.00, 4500, 3, 3);
INSERT INTO public.moon VALUES (8, 'Ganymede', 'The largest moon in the Solar System.', false, true, 100.00, 4500, 3, 3);
INSERT INTO public.moon VALUES (9, 'Rhea', 'One of Saturn''s moons.', false, true, 100.00, 4500, 3, 4);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'A moon of Saturn with icy geysers.', false, true, 100.00, 4500, 3, 4);
INSERT INTO public.moon VALUES (11, 'Mimas', 'A small moon of Saturn.', false, true, 100.00, 4500, 3, 4);
INSERT INTO public.moon VALUES (12, 'Miranda', 'A moon of Uranus with a rugged surface.', false, true, 100.00, 4500, 3, 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 'A moon of Uranus with bright surfaces.', false, true, 100.00, 4500, 3, 6);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'A dark moon of Uranus.', false, true, 100.00, 4500, 3, 6);
INSERT INTO public.moon VALUES (15, 'Titania', 'The largest moon of Uranus.', false, true, 100.00, 4500, 3, 6);
INSERT INTO public.moon VALUES (16, 'Oberon', 'A moon of Uranus with a heavily cratered surface.', false, true, 100.00, 4500, 3, 6);
INSERT INTO public.moon VALUES (17, 'Charon', 'Pluto''s largest moon.', false, true, 100.00, 4500, 4, 7);
INSERT INTO public.moon VALUES (18, 'Nix', 'One of Pluto''s moons.', false, true, 100.00, 4500, 4, 7);
INSERT INTO public.moon VALUES (19, 'Hydra', 'Another moon of Pluto.', false, true, 100.00, 4500, 4, 7);
INSERT INTO public.moon VALUES (20, 'Kerberos', 'A small moon of Pluto.', false, true, 100.00, 4500, 4, 7);
INSERT INTO public.moon VALUES (21, 'Styx', 'A small moon of Pluto.', false, true, 100.00, 4500, 4, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun and the only known planet to harbor life.', true, true, 149.60, 4500, 1, 1);
INSERT INTO public.planet VALUES (2, 'Proxima b', 'An exoplanet orbiting the star Proxima Centauri.', false, true, 7.50, 4600, 2, 2);
INSERT INTO public.planet VALUES (3, 'Rigel I', 'A planet orbiting the star Rigel.', false, true, 120.00, 8000, 3, 3);
INSERT INTO public.planet VALUES (4, 'Sombrero I', 'A planet orbiting a star in the Sombrero Galaxy.', false, true, 150.00, 7000, 2, 4);
INSERT INTO public.planet VALUES (5, 'Magellanic I', 'A planet orbiting a star in the Large Magellanic Cloud.', false, true, 130.00, 13700, 1, 5);
INSERT INTO public.planet VALUES (6, 'Whirlpool I', 'A planet orbiting a star in the Whirlpool Galaxy.', false, true, 160.00, 6000, 1, 6);
INSERT INTO public.planet VALUES (7, 'Mars', 'The fourth planet from the Sun, known as the Red Planet.', false, true, 227.90, 4500, 1, 1);
INSERT INTO public.planet VALUES (8, 'Alpha Centauri Bb', 'A planet orbiting the star Alpha Centauri A.', false, true, 36.00, 5000, 2, 2);
INSERT INTO public.planet VALUES (9, 'Rigel II', 'Another planet orbiting the star Rigel.', false, true, 200.00, 8000, 3, 3);
INSERT INTO public.planet VALUES (10, 'Sombrero II', 'Another planet orbiting a star in the Sombrero Galaxy.', false, true, 210.00, 7000, 2, 4);
INSERT INTO public.planet VALUES (11, 'Magellanic II', 'Another planet orbiting a star in the Large Magellanic Cloud.', false, true, 190.00, 13700, 1, 5);
INSERT INTO public.planet VALUES (12, 'Whirlpool II', 'Another planet orbiting a star in the Whirlpool Galaxy.', false, true, 220.00, 6000, 1, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our Solar System.', true, true, 0.00, 4600, 1, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'The closest known star to the Sun.', false, true, 4242.00, 4600, 2, 2);
INSERT INTO public.star VALUES (3, 'Rigel', 'A blue supergiant star in the Orion constellation.', false, true, 860.00, 8000, 3, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'A red supergiant star in the Orion constellation.', false, true, 642.00, 8000, 3, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 'One of the closest star systems to Earth.', false, true, 4242.00, 5000, 1, 2);
INSERT INTO public.star VALUES (6, 'Sirius', 'The brightest star in the night sky.', false, true, 8600.00, 200, 1, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


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
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy_new galaxy_new_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_new
    ADD CONSTRAINT galaxy_new_name_key UNIQUE (name);


--
-- Name: galaxy_new galaxy_new_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_new
    ADD CONSTRAINT galaxy_new_pkey PRIMARY KEY (galaxy_new_id);


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

