--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

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
-- Name: corpora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corpora (
    id character varying NOT NULL,
    meta_data json
);


ALTER TABLE public.corpora OWNER TO postgres;

--
-- Name: corpus_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corpus_records (
    _dummy integer NOT NULL,
    corpus_id character varying,
    record_key character varying
);


ALTER TABLE public.corpus_records OWNER TO postgres;

--
-- Name: corpus_records__dummy_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corpus_records__dummy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.corpus_records__dummy_seq OWNER TO postgres;

--
-- Name: corpus_records__dummy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corpus_records__dummy_seq OWNED BY public.corpus_records._dummy;


--
-- Name: curations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curations (
    _dummy integer NOT NULL,
    project_id character varying,
    stmt_hash bigint,
    curation json
);


ALTER TABLE public.curations OWNER TO postgres;

--
-- Name: curations__dummy_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.curations__dummy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.curations__dummy_seq OWNER TO postgres;

--
-- Name: curations__dummy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curations__dummy_seq OWNED BY public.curations._dummy;


--
-- Name: dart_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dart_records (
    storage_key character varying NOT NULL,
    document_id character varying,
    reader_version character varying,
    reader character varying,
    output_version character varying,
    date character varying,
    labels character varying,
    tenants character varying
);


ALTER TABLE public.dart_records OWNER TO postgres;

--
-- Name: ontologies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ontologies (
    id integer NOT NULL,
    url character varying,
    ontology character varying
);


ALTER TABLE public.ontologies OWNER TO postgres;

--
-- Name: ontologies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ontologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ontologies_id_seq OWNER TO postgres;

--
-- Name: ontologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ontologies_id_seq OWNED BY public.ontologies.id;


--
-- Name: prepared_statements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prepared_statements (
    _dummy integer NOT NULL,
    record_key character varying,
    indra_version character varying,
    stmt json
);


ALTER TABLE public.prepared_statements OWNER TO postgres;

--
-- Name: prepared_statements__dummy_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prepared_statements__dummy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prepared_statements__dummy_seq OWNER TO postgres;

--
-- Name: prepared_statements__dummy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prepared_statements__dummy_seq OWNED BY public.prepared_statements._dummy;


--
-- Name: project_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_records (
    _dummy integer NOT NULL,
    project_id character varying,
    record_key character varying
);


ALTER TABLE public.project_records OWNER TO postgres;

--
-- Name: project_records__dummy_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_records__dummy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_records__dummy_seq OWNER TO postgres;

--
-- Name: project_records__dummy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_records__dummy_seq OWNED BY public.project_records._dummy;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id character varying NOT NULL,
    name character varying,
    ontology_id integer
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: corpus_records _dummy; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corpus_records ALTER COLUMN _dummy SET DEFAULT nextval('public.corpus_records__dummy_seq'::regclass);


--
-- Name: curations _dummy; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curations ALTER COLUMN _dummy SET DEFAULT nextval('public.curations__dummy_seq'::regclass);


--
-- Name: ontologies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ontologies ALTER COLUMN id SET DEFAULT nextval('public.ontologies_id_seq'::regclass);


--
-- Name: prepared_statements _dummy; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prepared_statements ALTER COLUMN _dummy SET DEFAULT nextval('public.prepared_statements__dummy_seq'::regclass);


--
-- Name: project_records _dummy; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_records ALTER COLUMN _dummy SET DEFAULT nextval('public.project_records__dummy_seq'::regclass);


--
-- Name: corpora corpora_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corpora
    ADD CONSTRAINT corpora_pkey PRIMARY KEY (id);


--
-- Name: corpus_records corpus_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corpus_records
    ADD CONSTRAINT corpus_records_pkey PRIMARY KEY (_dummy);


--
-- Name: curations curations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curations
    ADD CONSTRAINT curations_pkey PRIMARY KEY (_dummy);


--
-- Name: dart_records dart_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dart_records
    ADD CONSTRAINT dart_records_pkey PRIMARY KEY (storage_key);


--
-- Name: ontologies ontologies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ontologies
    ADD CONSTRAINT ontologies_pkey PRIMARY KEY (id);


--
-- Name: prepared_statements prepared_statements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prepared_statements
    ADD CONSTRAINT prepared_statements_pkey PRIMARY KEY (_dummy);


--
-- Name: project_records project_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_records
    ADD CONSTRAINT project_records_pkey PRIMARY KEY (_dummy);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: corpus_records uc_cr; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corpus_records
    ADD CONSTRAINT uc_cr UNIQUE (corpus_id, record_key);


--
-- Name: project_records uc_pr; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_records
    ADD CONSTRAINT uc_pr UNIQUE (project_id, record_key);


--
-- Name: record_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX record_key_idx ON public.prepared_statements USING btree (record_key);


--
-- PostgreSQL database dump complete
--