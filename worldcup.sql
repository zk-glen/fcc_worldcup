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
    round character varying NOT NULL,
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (279, 2018, 'Final', 953, 954, 4, 2);
INSERT INTO public.games VALUES (280, 2018, 'Third Place', 955, 956, 2, 0);
INSERT INTO public.games VALUES (281, 2018, 'Semi-Final', 954, 956, 2, 1);
INSERT INTO public.games VALUES (282, 2018, 'Semi-Final', 953, 955, 1, 0);
INSERT INTO public.games VALUES (283, 2018, 'Quarter-Final', 954, 962, 3, 2);
INSERT INTO public.games VALUES (284, 2018, 'Quarter-Final', 956, 964, 2, 0);
INSERT INTO public.games VALUES (285, 2018, 'Quarter-Final', 955, 966, 2, 1);
INSERT INTO public.games VALUES (286, 2018, 'Quarter-Final', 953, 968, 2, 0);
INSERT INTO public.games VALUES (287, 2018, 'Eighth-Final', 956, 970, 2, 1);
INSERT INTO public.games VALUES (288, 2018, 'Eighth-Final', 964, 972, 1, 0);
INSERT INTO public.games VALUES (289, 2018, 'Eighth-Final', 955, 974, 3, 2);
INSERT INTO public.games VALUES (290, 2018, 'Eighth-Final', 966, 976, 2, 0);
INSERT INTO public.games VALUES (291, 2018, 'Eighth-Final', 954, 978, 2, 1);
INSERT INTO public.games VALUES (292, 2018, 'Eighth-Final', 962, 980, 2, 1);
INSERT INTO public.games VALUES (293, 2018, 'Eighth-Final', 968, 982, 2, 1);
INSERT INTO public.games VALUES (294, 2018, 'Eighth-Final', 953, 984, 4, 3);
INSERT INTO public.games VALUES (295, 2014, 'Final', 985, 984, 1, 0);
INSERT INTO public.games VALUES (296, 2014, 'Third Place', 987, 966, 3, 0);
INSERT INTO public.games VALUES (297, 2014, 'Semi-Final', 984, 987, 1, 0);
INSERT INTO public.games VALUES (298, 2014, 'Semi-Final', 985, 966, 7, 1);
INSERT INTO public.games VALUES (299, 2014, 'Quarter-Final', 987, 994, 1, 0);
INSERT INTO public.games VALUES (300, 2014, 'Quarter-Final', 984, 955, 1, 0);
INSERT INTO public.games VALUES (301, 2014, 'Quarter-Final', 966, 970, 2, 1);
INSERT INTO public.games VALUES (302, 2014, 'Quarter-Final', 985, 953, 1, 0);
INSERT INTO public.games VALUES (303, 2014, 'Eighth-Final', 966, 1002, 2, 1);
INSERT INTO public.games VALUES (304, 2014, 'Eighth-Final', 970, 968, 2, 0);
INSERT INTO public.games VALUES (305, 2014, 'Eighth-Final', 953, 1006, 2, 0);
INSERT INTO public.games VALUES (306, 2014, 'Eighth-Final', 985, 1008, 2, 1);
INSERT INTO public.games VALUES (307, 2014, 'Eighth-Final', 987, 976, 2, 1);
INSERT INTO public.games VALUES (308, 2014, 'Eighth-Final', 994, 1012, 2, 1);
INSERT INTO public.games VALUES (309, 2014, 'Eighth-Final', 984, 972, 1, 0);
INSERT INTO public.games VALUES (310, 2014, 'Eighth-Final', 955, 1016, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (953, 'France');
INSERT INTO public.teams VALUES (954, 'Croatia');
INSERT INTO public.teams VALUES (955, 'Belgium');
INSERT INTO public.teams VALUES (956, 'England');
INSERT INTO public.teams VALUES (962, 'Russia');
INSERT INTO public.teams VALUES (964, 'Sweden');
INSERT INTO public.teams VALUES (966, 'Brazil');
INSERT INTO public.teams VALUES (968, 'Uruguay');
INSERT INTO public.teams VALUES (970, 'Colombia');
INSERT INTO public.teams VALUES (972, 'Switzerland');
INSERT INTO public.teams VALUES (974, 'Japan');
INSERT INTO public.teams VALUES (976, 'Mexico');
INSERT INTO public.teams VALUES (978, 'Denmark');
INSERT INTO public.teams VALUES (980, 'Spain');
INSERT INTO public.teams VALUES (982, 'Portugal');
INSERT INTO public.teams VALUES (984, 'Argentina');
INSERT INTO public.teams VALUES (985, 'Germany');
INSERT INTO public.teams VALUES (987, 'Netherlands');
INSERT INTO public.teams VALUES (994, 'Costa Rica');
INSERT INTO public.teams VALUES (1002, 'Chile');
INSERT INTO public.teams VALUES (1006, 'Nigeria');
INSERT INTO public.teams VALUES (1008, 'Algeria');
INSERT INTO public.teams VALUES (1012, 'Greece');
INSERT INTO public.teams VALUES (1016, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 310, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1016, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

