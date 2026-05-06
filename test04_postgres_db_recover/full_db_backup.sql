--
-- PostgreSQL database cluster dump
--

\restrict o14W7oD98yYYDJXfS0KK2DDyRA24QQ9eEHYNt8ggdNhVscHQbDYUp6Y8vieO2jL

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE lee;
ALTER ROLE lee WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:BrJ4EnNU6KFEITgYAOs+yQ==$Sfu1hq4q+H43sZBKuwug1JVaYNOQydCpQs3TATJWxTk=:neA6AKhU2OIqaIqCuJwHma1EMuIJKnI5cQIRTTtrYh4=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:TQPOQMkGGpTZwTqgMYgZNg==$NQ3/w0AY5XIuIQLBoojO8DpHORrDv+nadnk4V7eS3fc=:2cza6PmzIkCzTEW6/g3/AUaXhufnFZb8YNW3+u5kuS4=';
CREATE ROLE scott;
ALTER ROLE scott WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:yWiTN8u34CM+84a24WNwnw==$lnjwBDjKDOAhkQhVEhSTzJ8tkpSNC3eZNf2BonSk4ms=:ZbVUEVy/7YOeU8m0bMfKFLTbCHeSCJKskPe7gRaSdYs=';
CREATE ROLE scott2;
ALTER ROLE scott2 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:Q8Kep2CEegZ5tt/z/NSHag==$Ic7xW6UaIDMmssTLpJ6YFV9j5QrbwWeBmm2vsiv4Rts=:r9iaRJbx6KKX7SW7VnF1EzG/hJJck0MzHpxsD8vfURs=';

--
-- User Configurations
--








\unrestrict o14W7oD98yYYDJXfS0KK2DDyRA24QQ9eEHYNt8ggdNhVscHQbDYUp6Y8vieO2jL

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict Br2ognIDhCLncWuUwxGc1d5T2NMkEKDUwDMd3B0FH2qPZzpBhnsBrbvi8jJsc3q

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- PostgreSQL database dump complete
--

\unrestrict Br2ognIDhCLncWuUwxGc1d5T2NMkEKDUwDMd3B0FH2qPZzpBhnsBrbvi8jJsc3q

--
-- Database "lee_db" dump
--

--
-- PostgreSQL database dump
--

\restrict XBSTRh79Ed3DCFuef7uH8OUS12qcuRNurDGRoOXfzrB4jeAlp6Sqwd7CX0YZVOV

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- Name: lee_db; Type: DATABASE; Schema: -; Owner: lee
--

CREATE DATABASE lee_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE lee_db OWNER TO lee;

\unrestrict XBSTRh79Ed3DCFuef7uH8OUS12qcuRNurDGRoOXfzrB4jeAlp6Sqwd7CX0YZVOV
\connect lee_db
\restrict XBSTRh79Ed3DCFuef7uH8OUS12qcuRNurDGRoOXfzrB4jeAlp6Sqwd7CX0YZVOV

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
-- Name: member; Type: TABLE; Schema: public; Owner: lee
--

CREATE TABLE public.member (
    num integer NOT NULL,
    name text NOT NULL,
    addr text
);


ALTER TABLE public.member OWNER TO lee;

--
-- Name: member_seq; Type: SEQUENCE; Schema: public; Owner: lee
--

CREATE SEQUENCE public.member_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_seq OWNER TO lee;

--
-- Name: post; Type: TABLE; Schema: public; Owner: lee
--

CREATE TABLE public.post (
    num integer NOT NULL,
    writer text NOT NULL,
    title text NOT NULL,
    content text,
    created_at timestamp without time zone
);


ALTER TABLE public.post OWNER TO lee;

--
-- Name: post_seq; Type: SEQUENCE; Schema: public; Owner: lee
--

CREATE SEQUENCE public.post_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_seq OWNER TO lee;

--
-- Name: test_seq; Type: SEQUENCE; Schema: public; Owner: lee
--

CREATE SEQUENCE public.test_seq
    START WITH 10
    INCREMENT BY 10
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_seq OWNER TO lee;

--
-- Name: todo; Type: TABLE; Schema: public; Owner: lee
--

CREATE TABLE public.todo (
    num integer NOT NULL,
    content character varying(20),
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.todo OWNER TO lee;

--
-- Name: todo_num_seq; Type: SEQUENCE; Schema: public; Owner: lee
--

CREATE SEQUENCE public.todo_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todo_num_seq OWNER TO lee;

--
-- Name: todo_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lee
--

ALTER SEQUENCE public.todo_num_seq OWNED BY public.todo.num;


--
-- Name: todo num; Type: DEFAULT; Schema: public; Owner: lee
--

ALTER TABLE ONLY public.todo ALTER COLUMN num SET DEFAULT nextval('public.todo_num_seq'::regclass);


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: lee
--

COPY public.member (num, name, addr) FROM stdin;
1	이창수	부산
2	해골	행신동
3	원숭이	동물원
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: lee
--

COPY public.post (num, writer, title, content, created_at) FROM stdin;
1	lee	hello	굿바이..	2026-04-02 16:09:11.977783
2	kim	hell2o	굿바이4..	2026-04-02 16:10:06.68826
3	park	h33ell2o	24굿바이4..	2026-04-02 16:10:21.07526
\.


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: lee
--

COPY public.todo (num, content, created_at) FROM stdin;
1	python 공부하기	2026-04-02 17:06:48.957989
2	linux 공부하기	2026-04-02 17:07:21.669963
3	docker 공부하기	2026-04-02 17:07:33.602072
\.


--
-- Name: member_seq; Type: SEQUENCE SET; Schema: public; Owner: lee
--

SELECT pg_catalog.setval('public.member_seq', 3, true);


--
-- Name: post_seq; Type: SEQUENCE SET; Schema: public; Owner: lee
--

SELECT pg_catalog.setval('public.post_seq', 3, true);


--
-- Name: test_seq; Type: SEQUENCE SET; Schema: public; Owner: lee
--

SELECT pg_catalog.setval('public.test_seq', 30, true);


--
-- Name: todo_num_seq; Type: SEQUENCE SET; Schema: public; Owner: lee
--

SELECT pg_catalog.setval('public.todo_num_seq', 3, true);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: lee
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (num);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: lee
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (num);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: lee
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (num);


--
-- PostgreSQL database dump complete
--

\unrestrict XBSTRh79Ed3DCFuef7uH8OUS12qcuRNurDGRoOXfzrB4jeAlp6Sqwd7CX0YZVOV

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict VR7DmAnis6kJp8fgPpXSCzFdXlYklpqRXm1HVdW4UAskmkq4Nh5v9Q6sBHTpEi0

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- PostgreSQL database dump complete
--

\unrestrict VR7DmAnis6kJp8fgPpXSCzFdXlYklpqRXm1HVdW4UAskmkq4Nh5v9Q6sBHTpEi0

--
-- Database "scott2_db" dump
--

--
-- PostgreSQL database dump
--

\restrict EEZEVmKOKhN4K5oNRKadhyLxJbB89fsHD8McZ0jJPT39wDNLkVzjlGpHjebyA1w

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- Name: scott2_db; Type: DATABASE; Schema: -; Owner: scott2
--

CREATE DATABASE scott2_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE scott2_db OWNER TO scott2;

\unrestrict EEZEVmKOKhN4K5oNRKadhyLxJbB89fsHD8McZ0jJPT39wDNLkVzjlGpHjebyA1w
\connect scott2_db
\restrict EEZEVmKOKhN4K5oNRKadhyLxJbB89fsHD8McZ0jJPT39wDNLkVzjlGpHjebyA1w

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
-- Name: dept; Type: TABLE; Schema: public; Owner: scott2
--

CREATE TABLE public.dept (
    deptno integer NOT NULL,
    dname character varying(14),
    loc character varying(13)
);


ALTER TABLE public.dept OWNER TO scott2;

--
-- Name: emp; Type: TABLE; Schema: public; Owner: scott2
--

CREATE TABLE public.emp (
    empno integer NOT NULL,
    ename character varying(10),
    job character varying(9),
    mgr integer,
    hiredate date,
    sal numeric(7,2),
    comm numeric(7,2),
    deptno integer
);


ALTER TABLE public.emp OWNER TO scott2;

--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: scott2
--

COPY public.dept (deptno, dname, loc) FROM stdin;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: scott2
--

COPY public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) FROM stdin;
7369	SMITH	CLERK	7902	1980-12-17	800.00	\N	20
7499	ALLEN	SALESMAN	7698	1981-02-20	1600.00	300.00	30
7521	WARD	SALESMAN	7698	1981-02-22	1250.00	500.00	30
7566	JONES	MANAGER	7839	1981-04-02	2975.00	\N	20
7654	MARTIN	SALESMAN	7698	1981-09-28	1250.00	1400.00	30
7698	BLAKE	MANAGER	7839	1981-05-01	2850.00	\N	30
7782	CLARK	MANAGER	7839	1981-06-09	2450.00	\N	10
7788	SCOTT	ANALYST	7566	1987-07-13	3000.00	\N	20
7839	KING	PRESIDENT	\N	1981-11-17	5000.00	\N	10
7844	TURNER	SALESMAN	7698	1981-09-08	1500.00	0.00	30
7876	ADAMS	CLERK	7788	1987-07-13	1100.00	\N	20
7900	JAMES	CLERK	7698	1981-12-03	950.00	\N	30
7902	FORD	ANALYST	7566	1981-12-03	3000.00	\N	20
7934	MILLER	CLERK	7782	1982-01-23	1300.00	\N	10
\.


--
-- Name: dept dept_pkey; Type: CONSTRAINT; Schema: public; Owner: scott2
--

ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (deptno);


--
-- Name: emp emp_pkey; Type: CONSTRAINT; Schema: public; Owner: scott2
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_pkey PRIMARY KEY (empno);


--
-- Name: emp emp_deptno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: scott2
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_deptno_fkey FOREIGN KEY (deptno) REFERENCES public.dept(deptno);


--
-- PostgreSQL database dump complete
--

\unrestrict EEZEVmKOKhN4K5oNRKadhyLxJbB89fsHD8McZ0jJPT39wDNLkVzjlGpHjebyA1w

--
-- Database "scott_db" dump
--

--
-- PostgreSQL database dump
--

\restrict 945x4troqq3Pxcaa5F1283SBr35iQRa9B2YvviaUm1pKNqdXq1bm0sx9AC8IS7z

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- Name: scott_db; Type: DATABASE; Schema: -; Owner: scott
--

CREATE DATABASE scott_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE scott_db OWNER TO scott;

\unrestrict 945x4troqq3Pxcaa5F1283SBr35iQRa9B2YvviaUm1pKNqdXq1bm0sx9AC8IS7z
\connect scott_db
\restrict 945x4troqq3Pxcaa5F1283SBr35iQRa9B2YvviaUm1pKNqdXq1bm0sx9AC8IS7z

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
-- Name: dept; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.dept (
    deptno integer NOT NULL,
    dname character varying(14),
    loc character varying(13)
);


ALTER TABLE public.dept OWNER TO scott;

--
-- Name: emp; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.emp (
    empno integer NOT NULL,
    ename character varying(10),
    job character varying(9),
    mgr integer,
    hiredate date,
    sal numeric(7,2),
    comm numeric(7,2),
    deptno integer
);


ALTER TABLE public.emp OWNER TO scott;

--
-- Name: member; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.member (
    num integer NOT NULL,
    name text NOT NULL,
    addr text
);


ALTER TABLE public.member OWNER TO scott;

--
-- Name: member_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.member_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_num_seq OWNER TO scott;

--
-- Name: member_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.member_num_seq OWNED BY public.member.num;


--
-- Name: notice; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.notice (
    num integer NOT NULL,
    content text
);


ALTER TABLE public.notice OWNER TO scott;

--
-- Name: notice2; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.notice2 (
    num integer NOT NULL,
    content text
);


ALTER TABLE public.notice2 OWNER TO scott;

--
-- Name: notice2_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.notice2_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notice2_num_seq OWNER TO scott;

--
-- Name: notice2_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.notice2_num_seq OWNED BY public.notice2.num;


--
-- Name: notice_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.notice_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notice_num_seq OWNER TO scott;

--
-- Name: notice_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.notice_num_seq OWNED BY public.notice.num;


--
-- Name: post; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.post (
    num integer NOT NULL,
    writer character varying(50) NOT NULL,
    title character varying(100),
    content text,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.post OWNER TO scott;

--
-- Name: post_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.post_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_num_seq OWNER TO scott;

--
-- Name: post_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.post_num_seq OWNED BY public.post.num;


--
-- Name: todo; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.todo (
    num integer NOT NULL,
    content text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.todo OWNER TO scott;

--
-- Name: member num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.member ALTER COLUMN num SET DEFAULT nextval('public.member_num_seq'::regclass);


--
-- Name: notice num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice ALTER COLUMN num SET DEFAULT nextval('public.notice_num_seq'::regclass);


--
-- Name: notice2 num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice2 ALTER COLUMN num SET DEFAULT nextval('public.notice2_num_seq'::regclass);


--
-- Name: post num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.post ALTER COLUMN num SET DEFAULT nextval('public.post_num_seq'::regclass);


--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.dept (deptno, dname, loc) FROM stdin;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) FROM stdin;
7369	SMITH	CLERK	7902	1980-12-17	800.00	\N	20
7499	ALLEN	SALESMAN	7698	1981-02-20	1600.00	300.00	30
7521	WARD	SALESMAN	7698	1981-02-22	1250.00	500.00	30
7566	JONES	MANAGER	7839	1981-04-02	2975.00	\N	20
7654	MARTIN	SALESMAN	7698	1981-09-28	1250.00	1400.00	30
7698	BLAKE	MANAGER	7839	1981-05-01	2850.00	\N	30
7782	CLARK	MANAGER	7839	1981-06-09	2450.00	\N	10
7788	SCOTT	ANALYST	7566	1987-07-13	3000.00	\N	20
7839	KING	PRESIDENT	\N	1981-11-17	5000.00	\N	10
7844	TURNER	SALESMAN	7698	1981-09-08	1500.00	0.00	30
7876	ADAMS	CLERK	7788	1987-07-13	1100.00	\N	20
7900	JAMES	CLERK	7698	1981-12-03	950.00	\N	30
7902	FORD	ANALYST	7566	1981-12-03	3000.00	\N	20
7934	MILLER	CLERK	7782	1982-01-23	1300.00	\N	10
\.


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.member (num, name, addr) FROM stdin;
1	siuuuu	포르투갈
3	siuuu3u	포르투3갈
4	숭이	\N
\.


--
-- Data for Name: notice; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.notice (num, content) FROM stdin;
1	첫공지입니다.
2	second not1ce.
3	3  not1ce.
\.


--
-- Data for Name: notice2; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.notice2 (num, content) FROM stdin;
1	1번째공지입니다,,
2	2번째공지입니다,,
3	3번째공지입니다,,
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.post (num, writer, title, content, created_at) FROM stdin;
14	213123	124124124	rrr	2026-04-20 12:36:02.387177
18	12313	123123	2131231	2026-04-21 09:31:50.484295
17	12	23123	12313	2026-04-21 09:25:33.92909
22	123	12	123ㄴ	2026-04-21 10:27:49.106632
20	1	1	2312131132132	2026-04-21 09:40:23.633193
21	123	1231	수정햇음ㅎㅎ22	2026-04-21 10:22:05.972716
\.


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.todo (num, content, created_at) FROM stdin;
\.


--
-- Name: member_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.member_num_seq', 4, true);


--
-- Name: notice2_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.notice2_num_seq', 3, true);


--
-- Name: notice_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.notice_num_seq', 3, true);


--
-- Name: post_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.post_num_seq', 23, true);


--
-- Name: dept dept_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (deptno);


--
-- Name: emp emp_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_pkey PRIMARY KEY (empno);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (num);


--
-- Name: notice2 notice2_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice2
    ADD CONSTRAINT notice2_pkey PRIMARY KEY (num);


--
-- Name: notice notice_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice
    ADD CONSTRAINT notice_pkey PRIMARY KEY (num);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (num);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (num);


--
-- Name: emp emp_deptno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_deptno_fkey FOREIGN KEY (deptno) REFERENCES public.dept(deptno);


--
-- PostgreSQL database dump complete
--

\unrestrict 945x4troqq3Pxcaa5F1283SBr35iQRa9B2YvviaUm1pKNqdXq1bm0sx9AC8IS7z

--
-- PostgreSQL database cluster dump complete
--

