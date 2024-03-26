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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (98, 2018, 'Final', 147, 148, 4, 2);
INSERT INTO public.games VALUES (99, 2018, 'Third Place', 149, 150, 2, 0);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 148, 150, 2, 1);
INSERT INTO public.games VALUES (101, 2018, 'Semi-Final', 147, 149, 1, 0);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 148, 151, 3, 2);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 150, 152, 2, 0);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 149, 153, 2, 1);
INSERT INTO public.games VALUES (105, 2018, 'Quarter-Final', 147, 154, 2, 0);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 150, 155, 2, 1);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 152, 156, 1, 0);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 149, 157, 3, 2);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 153, 158, 2, 0);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 148, 159, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 151, 160, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 154, 161, 2, 1);
INSERT INTO public.games VALUES (113, 2018, 'Eighth-Final', 147, 162, 4, 3);
INSERT INTO public.games VALUES (114, 2014, 'Final', 163, 162, 1, 0);
INSERT INTO public.games VALUES (115, 2014, 'Third Place', 164, 153, 3, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 162, 164, 1, 0);
INSERT INTO public.games VALUES (117, 2014, 'Semi-Final', 163, 153, 7, 1);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 164, 165, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 162, 149, 1, 0);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 153, 155, 2, 1);
INSERT INTO public.games VALUES (121, 2014, 'Quarter-Final', 163, 147, 1, 0);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 153, 166, 2, 1);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 155, 154, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 147, 167, 2, 0);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 163, 168, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 164, 158, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 165, 169, 2, 1);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 162, 156, 1, 0);
INSERT INTO public.games VALUES (129, 2014, 'Eighth-Final', 149, 170, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (147, 'France');
INSERT INTO public.teams VALUES (148, 'Croatia');
INSERT INTO public.teams VALUES (149, 'Belgium');
INSERT INTO public.teams VALUES (150, 'England');
INSERT INTO public.teams VALUES (151, 'Russia');
INSERT INTO public.teams VALUES (152, 'Sweden');
INSERT INTO public.teams VALUES (153, 'Brazil');
INSERT INTO public.teams VALUES (154, 'Uruguay');
INSERT INTO public.teams VALUES (155, 'Colombia');
INSERT INTO public.teams VALUES (156, 'Switzerland');
INSERT INTO public.teams VALUES (157, 'Japan');
INSERT INTO public.teams VALUES (158, 'Mexico');
INSERT INTO public.teams VALUES (159, 'Denmark');
INSERT INTO public.teams VALUES (160, 'Spain');
INSERT INTO public.teams VALUES (161, 'Portugal');
INSERT INTO public.teams VALUES (162, 'Argentina');
INSERT INTO public.teams VALUES (163, 'Germany');
INSERT INTO public.teams VALUES (164, 'Netherlands');
INSERT INTO public.teams VALUES (165, 'Costa Rica');
INSERT INTO public.teams VALUES (166, 'Chile');
INSERT INTO public.teams VALUES (167, 'Nigeria');
INSERT INTO public.teams VALUES (168, 'Algeria');
INSERT INTO public.teams VALUES (169, 'Greece');
INSERT INTO public.teams VALUES (170, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 129, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 170, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games opponent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

