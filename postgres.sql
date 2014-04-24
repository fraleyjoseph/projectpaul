--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE employee (
    name character(20),
    dept character(20),
    jobtitle character(20)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: sample_data; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sample_data (
    "int" character(20) NOT NULL,
    strings character(20) NOT NULL,
    "boolean" character(20) NOT NULL
);


ALTER TABLE public.sample_data OWNER TO postgres;

--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY employee (name, dept, jobtitle) FROM stdin;
Fred Flinstone      	Quarry Worker       	Rock Digger         
\.


--
-- Data for Name: sample_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sample_data ("int", strings, "boolean") FROM stdin;
Sample              	9.99                	23                  
Sample              	9.99                	23                  
Sample2             	4.55                	24                  
Sm3                 	4.54                	22                  
Sm4                 	3.44                	25                  
Sm5                 	4.66                	26                  
Sm6                 	6.66                	27                  
Sm7                 	12.22               	28                  
Sm8                 	7.77                	29                  
Sm9                 	4.66                	30                  
Sm10                	2.11                	31                  
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

