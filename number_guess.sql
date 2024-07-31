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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 248);
INSERT INTO public.games VALUES (2, 1, 402);
INSERT INTO public.games VALUES (3, 2, 602);
INSERT INTO public.games VALUES (4, 2, 976);
INSERT INTO public.games VALUES (5, 1, 441);
INSERT INTO public.games VALUES (6, 1, 152);
INSERT INTO public.games VALUES (7, 1, 174);
INSERT INTO public.games VALUES (8, 3, 842);
INSERT INTO public.games VALUES (9, 3, 772);
INSERT INTO public.games VALUES (10, 4, 985);
INSERT INTO public.games VALUES (11, 4, 388);
INSERT INTO public.games VALUES (12, 3, 60);
INSERT INTO public.games VALUES (13, 3, 563);
INSERT INTO public.games VALUES (14, 3, 648);
INSERT INTO public.games VALUES (15, 5, 948);
INSERT INTO public.games VALUES (16, 5, 963);
INSERT INTO public.games VALUES (17, 6, 749);
INSERT INTO public.games VALUES (18, 6, 626);
INSERT INTO public.games VALUES (19, 5, 337);
INSERT INTO public.games VALUES (20, 5, 196);
INSERT INTO public.games VALUES (21, 5, 884);
INSERT INTO public.games VALUES (22, 7, 729);
INSERT INTO public.games VALUES (23, 7, 564);
INSERT INTO public.games VALUES (24, 8, 643);
INSERT INTO public.games VALUES (25, 8, 28);
INSERT INTO public.games VALUES (26, 7, 334);
INSERT INTO public.games VALUES (27, 7, 418);
INSERT INTO public.games VALUES (28, 7, 147);
INSERT INTO public.games VALUES (29, 9, 915);
INSERT INTO public.games VALUES (30, 9, 321);
INSERT INTO public.games VALUES (31, 10, 479);
INSERT INTO public.games VALUES (32, 10, 382);
INSERT INTO public.games VALUES (33, 9, 989);
INSERT INTO public.games VALUES (34, 9, 354);
INSERT INTO public.games VALUES (35, 9, 502);
INSERT INTO public.games VALUES (36, 11, 957);
INSERT INTO public.games VALUES (37, 11, 949);
INSERT INTO public.games VALUES (38, 12, 685);
INSERT INTO public.games VALUES (39, 12, 337);
INSERT INTO public.games VALUES (40, 11, 751);
INSERT INTO public.games VALUES (41, 11, 38);
INSERT INTO public.games VALUES (42, 11, 216);
INSERT INTO public.games VALUES (43, 13, 372);
INSERT INTO public.games VALUES (44, 13, 667);
INSERT INTO public.games VALUES (45, 14, 209);
INSERT INTO public.games VALUES (46, 14, 188);
INSERT INTO public.games VALUES (47, 13, 816);
INSERT INTO public.games VALUES (48, 13, 91);
INSERT INTO public.games VALUES (49, 13, 497);
INSERT INTO public.games VALUES (50, 19, 788);
INSERT INTO public.games VALUES (51, 19, 771);
INSERT INTO public.games VALUES (52, 20, 376);
INSERT INTO public.games VALUES (53, 20, 258);
INSERT INTO public.games VALUES (54, 19, 80);
INSERT INTO public.games VALUES (55, 19, 68);
INSERT INTO public.games VALUES (56, 19, 644);
INSERT INTO public.games VALUES (57, 21, 229);
INSERT INTO public.games VALUES (58, 21, 954);
INSERT INTO public.games VALUES (59, 22, 142);
INSERT INTO public.games VALUES (60, 22, 956);
INSERT INTO public.games VALUES (61, 21, 87);
INSERT INTO public.games VALUES (62, 21, 820);
INSERT INTO public.games VALUES (63, 21, 124);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1722465721173');
INSERT INTO public.users VALUES (2, 'user_1722465721172');
INSERT INTO public.users VALUES (3, 'user_1722465802077');
INSERT INTO public.users VALUES (4, 'user_1722465802076');
INSERT INTO public.users VALUES (5, 'user_1722466000631');
INSERT INTO public.users VALUES (6, 'user_1722466000630');
INSERT INTO public.users VALUES (7, 'user_1722466005367');
INSERT INTO public.users VALUES (8, 'user_1722466005366');
INSERT INTO public.users VALUES (9, 'user_1722466007792');
INSERT INTO public.users VALUES (10, 'user_1722466007791');
INSERT INTO public.users VALUES (11, 'user_1722466032041');
INSERT INTO public.users VALUES (12, 'user_1722466032040');
INSERT INTO public.users VALUES (13, 'user_1722466034710');
INSERT INTO public.users VALUES (14, 'user_1722466034709');
INSERT INTO public.users VALUES (15, 'user_1722466055730');
INSERT INTO public.users VALUES (16, 'user_1722466055729');
INSERT INTO public.users VALUES (17, 'user_1722466057964');
INSERT INTO public.users VALUES (18, 'user_1722466057963');
INSERT INTO public.users VALUES (19, 'user_1722466205793');
INSERT INTO public.users VALUES (20, 'user_1722466205792');
INSERT INTO public.users VALUES (21, 'user_1722466326639');
INSERT INTO public.users VALUES (22, 'user_1722466326638');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 63, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

