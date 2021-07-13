--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account_classes; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.account_classes (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    category character varying(191) NOT NULL,
    closed_on character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial117 character(1)
);


ALTER TABLE public.account_classes OWNER TO loanapp;

--
-- Name: TABLE account_classes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.account_classes IS 'TRIAL';


--
-- Name: COLUMN account_classes.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_classes.id IS 'TRIAL';


--
-- Name: COLUMN account_classes.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_classes.name IS 'TRIAL';


--
-- Name: COLUMN account_classes.category; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_classes.category IS 'TRIAL';


--
-- Name: COLUMN account_classes.closed_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_classes.closed_on IS 'TRIAL';


--
-- Name: COLUMN account_classes.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_classes.deleted_at IS 'TRIAL';


--
-- Name: COLUMN account_classes.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_classes.created_at IS 'TRIAL';


--
-- Name: COLUMN account_classes.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_classes.updated_at IS 'TRIAL';


--
-- Name: COLUMN account_classes.trial117; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_classes.trial117 IS 'TRIAL';


--
-- Name: account_ledgers; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.account_ledgers (
    id integer NOT NULL,
    account_id character varying(36) NOT NULL,
    journal_id integer NOT NULL,
    created_at character varying(191) NOT NULL,
    amount character varying(191) NOT NULL,
    trial170 character(1)
);


ALTER TABLE public.account_ledgers OWNER TO loanapp;

--
-- Name: TABLE account_ledgers; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.account_ledgers IS 'TRIAL';


--
-- Name: COLUMN account_ledgers.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_ledgers.id IS 'TRIAL';


--
-- Name: COLUMN account_ledgers.account_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_ledgers.account_id IS 'TRIAL';


--
-- Name: COLUMN account_ledgers.journal_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_ledgers.journal_id IS 'TRIAL';


--
-- Name: COLUMN account_ledgers.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_ledgers.created_at IS 'TRIAL';


--
-- Name: COLUMN account_ledgers.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_ledgers.amount IS 'TRIAL';


--
-- Name: COLUMN account_ledgers.trial170; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_ledgers.trial170 IS 'TRIAL';


--
-- Name: account_ledgers_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.account_ledgers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_ledgers_id_seq OWNER TO loanapp;

--
-- Name: account_ledgers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.account_ledgers_id_seq OWNED BY public.account_ledgers.id;


--
-- Name: account_members; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.account_members (
    id bigint NOT NULL,
    account_id character(36) NOT NULL,
    member_id character(36) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial173 character(1)
);


ALTER TABLE public.account_members OWNER TO loanapp;

--
-- Name: TABLE account_members; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.account_members IS 'TRIAL';


--
-- Name: COLUMN account_members.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_members.id IS 'TRIAL';


--
-- Name: COLUMN account_members.account_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_members.account_id IS 'TRIAL';


--
-- Name: COLUMN account_members.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_members.member_id IS 'TRIAL';


--
-- Name: COLUMN account_members.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_members.created_at IS 'TRIAL';


--
-- Name: COLUMN account_members.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_members.updated_at IS 'TRIAL';


--
-- Name: COLUMN account_members.trial173; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_members.trial173 IS 'TRIAL';


--
-- Name: account_members_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.account_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_members_id_seq OWNER TO loanapp;

--
-- Name: account_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.account_members_id_seq OWNED BY public.account_members.id;


--
-- Name: account_statuses; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.account_statuses (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial176 character(1)
);


ALTER TABLE public.account_statuses OWNER TO loanapp;

--
-- Name: TABLE account_statuses; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.account_statuses IS 'TRIAL';


--
-- Name: COLUMN account_statuses.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_statuses.id IS 'TRIAL';


--
-- Name: COLUMN account_statuses.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_statuses.name IS 'TRIAL';


--
-- Name: COLUMN account_statuses.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_statuses.description IS 'TRIAL';


--
-- Name: COLUMN account_statuses.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_statuses.deleted_at IS 'TRIAL';


--
-- Name: COLUMN account_statuses.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_statuses.created_at IS 'TRIAL';


--
-- Name: COLUMN account_statuses.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_statuses.updated_at IS 'TRIAL';


--
-- Name: COLUMN account_statuses.trial176; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_statuses.trial176 IS 'TRIAL';


--
-- Name: account_types; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.account_types (
    id character varying(36) NOT NULL,
    account_class_id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    code character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial179 character(1)
);


ALTER TABLE public.account_types OWNER TO loanapp;

--
-- Name: TABLE account_types; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.account_types IS 'TRIAL';


--
-- Name: COLUMN account_types.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.id IS 'TRIAL';


--
-- Name: COLUMN account_types.account_class_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.account_class_id IS 'TRIAL';


--
-- Name: COLUMN account_types.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.name IS 'TRIAL';


--
-- Name: COLUMN account_types.code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.code IS 'TRIAL';


--
-- Name: COLUMN account_types.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.description IS 'TRIAL';


--
-- Name: COLUMN account_types.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.deleted_at IS 'TRIAL';


--
-- Name: COLUMN account_types.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.created_at IS 'TRIAL';


--
-- Name: COLUMN account_types.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.updated_at IS 'TRIAL';


--
-- Name: COLUMN account_types.trial179; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.account_types.trial179 IS 'TRIAL';


--
-- Name: accounts; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.accounts (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    account_code character varying(191) NOT NULL,
    account_number character varying(191) NOT NULL,
    account_name character varying(191) NOT NULL,
    account_type_id character varying(36) NOT NULL,
    account_status_id character varying(36),
    other_details character varying(191),
    closed_on character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial183 character(1)
);


ALTER TABLE public.accounts OWNER TO loanapp;

--
-- Name: TABLE accounts; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.accounts IS 'TRIAL';


--
-- Name: COLUMN accounts.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.id IS 'TRIAL';


--
-- Name: COLUMN accounts.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.branch_id IS 'TRIAL';


--
-- Name: COLUMN accounts.account_code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.account_code IS 'TRIAL';


--
-- Name: COLUMN accounts.account_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.account_number IS 'TRIAL';


--
-- Name: COLUMN accounts.account_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.account_name IS 'TRIAL';


--
-- Name: COLUMN accounts.account_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.account_type_id IS 'TRIAL';


--
-- Name: COLUMN accounts.account_status_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.account_status_id IS 'TRIAL';


--
-- Name: COLUMN accounts.other_details; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.other_details IS 'TRIAL';


--
-- Name: COLUMN accounts.closed_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.closed_on IS 'TRIAL';


--
-- Name: COLUMN accounts.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.created_by IS 'TRIAL';


--
-- Name: COLUMN accounts.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.updated_by IS 'TRIAL';


--
-- Name: COLUMN accounts.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.deleted_by IS 'TRIAL';


--
-- Name: COLUMN accounts.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.deleted_at IS 'TRIAL';


--
-- Name: COLUMN accounts.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.created_at IS 'TRIAL';


--
-- Name: COLUMN accounts.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.updated_at IS 'TRIAL';


--
-- Name: COLUMN accounts.trial183; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.accounts.trial183 IS 'TRIAL';


--
-- Name: asset_loan_applications; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.asset_loan_applications (
    id integer NOT NULL,
    asset_id character(36) NOT NULL,
    loan_application_id character(36) NOT NULL,
    trial183 character(1)
);


ALTER TABLE public.asset_loan_applications OWNER TO loanapp;

--
-- Name: TABLE asset_loan_applications; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.asset_loan_applications IS 'TRIAL';


--
-- Name: COLUMN asset_loan_applications.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_loan_applications.id IS 'TRIAL';


--
-- Name: COLUMN asset_loan_applications.asset_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_loan_applications.asset_id IS 'TRIAL';


--
-- Name: COLUMN asset_loan_applications.loan_application_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_loan_applications.loan_application_id IS 'TRIAL';


--
-- Name: COLUMN asset_loan_applications.trial183; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_loan_applications.trial183 IS 'TRIAL';


--
-- Name: asset_loan_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.asset_loan_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asset_loan_applications_id_seq OWNER TO loanapp;

--
-- Name: asset_loan_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.asset_loan_applications_id_seq OWNED BY public.asset_loan_applications.id;


--
-- Name: asset_photos; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.asset_photos (
    id character varying(36) NOT NULL,
    asset_id character varying(36) NOT NULL,
    title character varying(191) NOT NULL,
    description character varying(191),
    date_taken character varying(191) NOT NULL,
    url character varying(191) NOT NULL,
    notes character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial186 character(1)
);


ALTER TABLE public.asset_photos OWNER TO loanapp;

--
-- Name: TABLE asset_photos; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.asset_photos IS 'TRIAL';


--
-- Name: COLUMN asset_photos.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.id IS 'TRIAL';


--
-- Name: COLUMN asset_photos.asset_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.asset_id IS 'TRIAL';


--
-- Name: COLUMN asset_photos.title; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.title IS 'TRIAL';


--
-- Name: COLUMN asset_photos.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.description IS 'TRIAL';


--
-- Name: COLUMN asset_photos.date_taken; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.date_taken IS 'TRIAL';


--
-- Name: COLUMN asset_photos.url; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.url IS 'TRIAL';


--
-- Name: COLUMN asset_photos.notes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.notes IS 'TRIAL';


--
-- Name: COLUMN asset_photos.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.created_by IS 'TRIAL';


--
-- Name: COLUMN asset_photos.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.updated_by IS 'TRIAL';


--
-- Name: COLUMN asset_photos.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.deleted_by IS 'TRIAL';


--
-- Name: COLUMN asset_photos.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.deleted_at IS 'TRIAL';


--
-- Name: COLUMN asset_photos.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.created_at IS 'TRIAL';


--
-- Name: COLUMN asset_photos.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.updated_at IS 'TRIAL';


--
-- Name: COLUMN asset_photos.trial186; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.asset_photos.trial186 IS 'TRIAL';


--
-- Name: assets; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.assets (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    member_id character varying(36) NOT NULL,
    asset_number character varying(191) NOT NULL,
    title character varying(191) NOT NULL,
    description character varying(191) NOT NULL,
    valuation_date date NOT NULL,
    valued_by character varying(191) NOT NULL,
    valuer_phone character varying(191) NOT NULL,
    valuation_amount character varying(191) NOT NULL,
    location character varying(191) NOT NULL,
    registration_number character varying(191),
    registered_to character varying(191),
    condition character varying(191),
    notes character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial189 character(1)
);


ALTER TABLE public.assets OWNER TO loanapp;

--
-- Name: TABLE assets; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.assets IS 'TRIAL';


--
-- Name: COLUMN assets.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.id IS 'TRIAL';


--
-- Name: COLUMN assets.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.branch_id IS 'TRIAL';


--
-- Name: COLUMN assets.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.member_id IS 'TRIAL';


--
-- Name: COLUMN assets.asset_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.asset_number IS 'TRIAL';


--
-- Name: COLUMN assets.title; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.title IS 'TRIAL';


--
-- Name: COLUMN assets.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.description IS 'TRIAL';


--
-- Name: COLUMN assets.valuation_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.valuation_date IS 'TRIAL';


--
-- Name: COLUMN assets.valued_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.valued_by IS 'TRIAL';


--
-- Name: COLUMN assets.valuer_phone; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.valuer_phone IS 'TRIAL';


--
-- Name: COLUMN assets.valuation_amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.valuation_amount IS 'TRIAL';


--
-- Name: COLUMN assets.location; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.location IS 'TRIAL';


--
-- Name: COLUMN assets.registration_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.registration_number IS 'TRIAL';


--
-- Name: COLUMN assets.registered_to; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.registered_to IS 'TRIAL';


--
-- Name: COLUMN assets.condition; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.condition IS 'TRIAL';


--
-- Name: COLUMN assets.notes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.notes IS 'TRIAL';


--
-- Name: COLUMN assets.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.created_by IS 'TRIAL';


--
-- Name: COLUMN assets.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.updated_by IS 'TRIAL';


--
-- Name: COLUMN assets.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.deleted_by IS 'TRIAL';


--
-- Name: COLUMN assets.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.deleted_at IS 'TRIAL';


--
-- Name: COLUMN assets.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.created_at IS 'TRIAL';


--
-- Name: COLUMN assets.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.updated_at IS 'TRIAL';


--
-- Name: COLUMN assets.trial189; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.assets.trial189 IS 'TRIAL';


--
-- Name: borrower_statuses; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.borrower_statuses (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial192 character(1)
);


ALTER TABLE public.borrower_statuses OWNER TO loanapp;

--
-- Name: TABLE borrower_statuses; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.borrower_statuses IS 'TRIAL';


--
-- Name: COLUMN borrower_statuses.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrower_statuses.id IS 'TRIAL';


--
-- Name: COLUMN borrower_statuses.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrower_statuses.name IS 'TRIAL';


--
-- Name: COLUMN borrower_statuses.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrower_statuses.description IS 'TRIAL';


--
-- Name: COLUMN borrower_statuses.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrower_statuses.deleted_at IS 'TRIAL';


--
-- Name: COLUMN borrower_statuses.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrower_statuses.created_at IS 'TRIAL';


--
-- Name: COLUMN borrower_statuses.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrower_statuses.updated_at IS 'TRIAL';


--
-- Name: COLUMN borrower_statuses.trial192; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrower_statuses.trial192 IS 'TRIAL';


--
-- Name: borrowers; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.borrowers (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    member_id character varying(36) NOT NULL,
    credit_score character varying(191),
    borrower_status_id character varying(191),
    witness_type_id character varying(36) NOT NULL,
    witness_first_name character varying(191),
    witness_last_name character varying(191),
    witness_country character varying(191),
    witness_city character varying(191),
    witness_national_id character varying(191),
    witness_phone character varying(191),
    witness_email character varying(191),
    witness_postal_address character varying(191),
    witness_residential_address character varying(191),
    notes character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial196 character(1)
);


ALTER TABLE public.borrowers OWNER TO loanapp;

--
-- Name: TABLE borrowers; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.borrowers IS 'TRIAL';


--
-- Name: COLUMN borrowers.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.id IS 'TRIAL';


--
-- Name: COLUMN borrowers.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.branch_id IS 'TRIAL';


--
-- Name: COLUMN borrowers.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.member_id IS 'TRIAL';


--
-- Name: COLUMN borrowers.credit_score; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.credit_score IS 'TRIAL';


--
-- Name: COLUMN borrowers.borrower_status_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.borrower_status_id IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_type_id IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_first_name IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_last_name IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_country; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_country IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_city; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_city IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_national_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_national_id IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_phone; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_phone IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_email IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_postal_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_postal_address IS 'TRIAL';


--
-- Name: COLUMN borrowers.witness_residential_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.witness_residential_address IS 'TRIAL';


--
-- Name: COLUMN borrowers.notes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.notes IS 'TRIAL';


--
-- Name: COLUMN borrowers.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.created_by IS 'TRIAL';


--
-- Name: COLUMN borrowers.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.updated_by IS 'TRIAL';


--
-- Name: COLUMN borrowers.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.deleted_by IS 'TRIAL';


--
-- Name: COLUMN borrowers.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.deleted_at IS 'TRIAL';


--
-- Name: COLUMN borrowers.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.created_at IS 'TRIAL';


--
-- Name: COLUMN borrowers.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.updated_at IS 'TRIAL';


--
-- Name: COLUMN borrowers.trial196; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.borrowers.trial196 IS 'TRIAL';


--
-- Name: branches; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.branches (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    location character varying(191),
    description character varying(191),
    country character varying(191),
    county character varying(191),
    town character varying(191),
    address character varying(191),
    branch_code character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial199 character(1)
);


ALTER TABLE public.branches OWNER TO loanapp;

--
-- Name: TABLE branches; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.branches IS 'TRIAL';


--
-- Name: COLUMN branches.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.id IS 'TRIAL';


--
-- Name: COLUMN branches.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.name IS 'TRIAL';


--
-- Name: COLUMN branches.location; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.location IS 'TRIAL';


--
-- Name: COLUMN branches.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.description IS 'TRIAL';


--
-- Name: COLUMN branches.country; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.country IS 'TRIAL';


--
-- Name: COLUMN branches.county; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.county IS 'TRIAL';


--
-- Name: COLUMN branches.town; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.town IS 'TRIAL';


--
-- Name: COLUMN branches.address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.address IS 'TRIAL';


--
-- Name: COLUMN branches.branch_code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.branch_code IS 'TRIAL';


--
-- Name: COLUMN branches.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.deleted_at IS 'TRIAL';


--
-- Name: COLUMN branches.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.created_at IS 'TRIAL';


--
-- Name: COLUMN branches.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.updated_at IS 'TRIAL';


--
-- Name: COLUMN branches.trial199; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.branches.trial199 IS 'TRIAL';


--
-- Name: capitals; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.capitals (
    id character(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    method_id character varying(36) NOT NULL,
    fiscal_year_id character varying(36),
    amount character varying(191) NOT NULL,
    capital_date date NOT NULL,
    description character varying(191),
    created_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial199 character(1)
);


ALTER TABLE public.capitals OWNER TO loanapp;

--
-- Name: TABLE capitals; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.capitals IS 'TRIAL';


--
-- Name: COLUMN capitals.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.id IS 'TRIAL';


--
-- Name: COLUMN capitals.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.branch_id IS 'TRIAL';


--
-- Name: COLUMN capitals.method_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.method_id IS 'TRIAL';


--
-- Name: COLUMN capitals.fiscal_year_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.fiscal_year_id IS 'TRIAL';


--
-- Name: COLUMN capitals.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.amount IS 'TRIAL';


--
-- Name: COLUMN capitals.capital_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.capital_date IS 'TRIAL';


--
-- Name: COLUMN capitals.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.description IS 'TRIAL';


--
-- Name: COLUMN capitals.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.created_by IS 'TRIAL';


--
-- Name: COLUMN capitals.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.deleted_at IS 'TRIAL';


--
-- Name: COLUMN capitals.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.created_at IS 'TRIAL';


--
-- Name: COLUMN capitals.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.updated_at IS 'TRIAL';


--
-- Name: COLUMN capitals.trial199; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.capitals.trial199 IS 'TRIAL';


--
-- Name: communication_settings; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.communication_settings (
    id character(36) NOT NULL,
    name character varying(36) NOT NULL,
    display_name character varying(36) NOT NULL,
    email_template smallint DEFAULT 0 NOT NULL,
    sms_template smallint DEFAULT 0 NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial202 character(1)
);


ALTER TABLE public.communication_settings OWNER TO loanapp;

--
-- Name: TABLE communication_settings; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.communication_settings IS 'TRIAL';


--
-- Name: COLUMN communication_settings.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.id IS 'TRIAL';


--
-- Name: COLUMN communication_settings.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.name IS 'TRIAL';


--
-- Name: COLUMN communication_settings.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.display_name IS 'TRIAL';


--
-- Name: COLUMN communication_settings.email_template; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.email_template IS 'TRIAL';


--
-- Name: COLUMN communication_settings.sms_template; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.sms_template IS 'TRIAL';


--
-- Name: COLUMN communication_settings.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.deleted_at IS 'TRIAL';


--
-- Name: COLUMN communication_settings.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.created_at IS 'TRIAL';


--
-- Name: COLUMN communication_settings.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.updated_at IS 'TRIAL';


--
-- Name: COLUMN communication_settings.trial202; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.communication_settings.trial202 IS 'TRIAL';


--
-- Name: email_settings; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.email_settings (
    id character varying(36) NOT NULL,
    protocol character varying(191),
    smpt_host character varying(191),
    smpt_username character varying(191),
    smpt_password character varying(191),
    smpt_port character varying(191),
    mail_gun_domain character varying(191),
    mail_gun_secret character varying(191),
    mandrill_secret character varying(191),
    from_name character varying(191),
    from_email character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial205 character(1)
);


ALTER TABLE public.email_settings OWNER TO loanapp;

--
-- Name: TABLE email_settings; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.email_settings IS 'TRIAL';


--
-- Name: COLUMN email_settings.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.id IS 'TRIAL';


--
-- Name: COLUMN email_settings.protocol; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.protocol IS 'TRIAL';


--
-- Name: COLUMN email_settings.smpt_host; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.smpt_host IS 'TRIAL';


--
-- Name: COLUMN email_settings.smpt_username; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.smpt_username IS 'TRIAL';


--
-- Name: COLUMN email_settings.smpt_password; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.smpt_password IS 'TRIAL';


--
-- Name: COLUMN email_settings.smpt_port; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.smpt_port IS 'TRIAL';


--
-- Name: COLUMN email_settings.mail_gun_domain; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.mail_gun_domain IS 'TRIAL';


--
-- Name: COLUMN email_settings.mail_gun_secret; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.mail_gun_secret IS 'TRIAL';


--
-- Name: COLUMN email_settings.mandrill_secret; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.mandrill_secret IS 'TRIAL';


--
-- Name: COLUMN email_settings.from_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.from_name IS 'TRIAL';


--
-- Name: COLUMN email_settings.from_email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.from_email IS 'TRIAL';


--
-- Name: COLUMN email_settings.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.deleted_at IS 'TRIAL';


--
-- Name: COLUMN email_settings.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.created_at IS 'TRIAL';


--
-- Name: COLUMN email_settings.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.updated_at IS 'TRIAL';


--
-- Name: COLUMN email_settings.trial205; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_settings.trial205 IS 'TRIAL';


--
-- Name: email_templates; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.email_templates (
    id character(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    subject character varying(191) NOT NULL,
    body text NOT NULL,
    tags character varying(191),
    created_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial209 character(1)
);


ALTER TABLE public.email_templates OWNER TO loanapp;

--
-- Name: TABLE email_templates; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.email_templates IS 'TRIAL';


--
-- Name: COLUMN email_templates.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.id IS 'TRIAL';


--
-- Name: COLUMN email_templates.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.name IS 'TRIAL';


--
-- Name: COLUMN email_templates.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.display_name IS 'TRIAL';


--
-- Name: COLUMN email_templates.subject; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.subject IS 'TRIAL';


--
-- Name: COLUMN email_templates.body; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.body IS 'TRIAL';


--
-- Name: COLUMN email_templates.tags; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.tags IS 'TRIAL';


--
-- Name: COLUMN email_templates.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.created_by IS 'TRIAL';


--
-- Name: COLUMN email_templates.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.deleted_at IS 'TRIAL';


--
-- Name: COLUMN email_templates.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.created_at IS 'TRIAL';


--
-- Name: COLUMN email_templates.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.updated_at IS 'TRIAL';


--
-- Name: COLUMN email_templates.trial209; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.email_templates.trial209 IS 'TRIAL';


--
-- Name: employees; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.employees (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    employee_number character varying(191) NOT NULL,
    first_name character varying(191) NOT NULL,
    last_name character varying(191) NOT NULL,
    salutation character varying(191),
    email character varying(191) NOT NULL,
    telephone_number character varying(191),
    profile_picture character varying(191),
    national_id_image character varying(191),
    country character varying(191),
    county character varying(191),
    city character varying(191),
    address character varying(191),
    postal_code character varying(191),
    job_group character varying(191),
    nhif_number character varying(191),
    nssf_number character varying(191),
    gender character varying(191),
    kra_pin character varying(191),
    national_id_number character varying(191),
    passport_number character varying(191),
    designation_id character varying(191),
    department_id character varying(191),
    birth_day character varying(191) NOT NULL,
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial212 character(1)
);


ALTER TABLE public.employees OWNER TO loanapp;

--
-- Name: TABLE employees; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.employees IS 'TRIAL';


--
-- Name: COLUMN employees.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.id IS 'TRIAL';


--
-- Name: COLUMN employees.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.branch_id IS 'TRIAL';


--
-- Name: COLUMN employees.employee_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.employee_number IS 'TRIAL';


--
-- Name: COLUMN employees.first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.first_name IS 'TRIAL';


--
-- Name: COLUMN employees.last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.last_name IS 'TRIAL';


--
-- Name: COLUMN employees.salutation; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.salutation IS 'TRIAL';


--
-- Name: COLUMN employees.email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.email IS 'TRIAL';


--
-- Name: COLUMN employees.telephone_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.telephone_number IS 'TRIAL';


--
-- Name: COLUMN employees.profile_picture; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.profile_picture IS 'TRIAL';


--
-- Name: COLUMN employees.national_id_image; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.national_id_image IS 'TRIAL';


--
-- Name: COLUMN employees.country; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.country IS 'TRIAL';


--
-- Name: COLUMN employees.county; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.county IS 'TRIAL';


--
-- Name: COLUMN employees.city; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.city IS 'TRIAL';


--
-- Name: COLUMN employees.address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.address IS 'TRIAL';


--
-- Name: COLUMN employees.postal_code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.postal_code IS 'TRIAL';


--
-- Name: COLUMN employees.job_group; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.job_group IS 'TRIAL';


--
-- Name: COLUMN employees.nhif_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.nhif_number IS 'TRIAL';


--
-- Name: COLUMN employees.nssf_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.nssf_number IS 'TRIAL';


--
-- Name: COLUMN employees.gender; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.gender IS 'TRIAL';


--
-- Name: COLUMN employees.kra_pin; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.kra_pin IS 'TRIAL';


--
-- Name: COLUMN employees.national_id_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.national_id_number IS 'TRIAL';


--
-- Name: COLUMN employees.passport_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.passport_number IS 'TRIAL';


--
-- Name: COLUMN employees.designation_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.designation_id IS 'TRIAL';


--
-- Name: COLUMN employees.department_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.department_id IS 'TRIAL';


--
-- Name: COLUMN employees.birth_day; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.birth_day IS 'TRIAL';


--
-- Name: COLUMN employees.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.created_by IS 'TRIAL';


--
-- Name: COLUMN employees.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.updated_by IS 'TRIAL';


--
-- Name: COLUMN employees.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.deleted_by IS 'TRIAL';


--
-- Name: COLUMN employees.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.deleted_at IS 'TRIAL';


--
-- Name: COLUMN employees.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.created_at IS 'TRIAL';


--
-- Name: COLUMN employees.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.updated_at IS 'TRIAL';


--
-- Name: COLUMN employees.trial212; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.employees.trial212 IS 'TRIAL';


--
-- Name: expense_categories; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.expense_categories (
    id character varying(36) NOT NULL,
    account_type_id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial212 character(1)
);


ALTER TABLE public.expense_categories OWNER TO loanapp;

--
-- Name: TABLE expense_categories; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.expense_categories IS 'TRIAL';


--
-- Name: COLUMN expense_categories.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expense_categories.id IS 'TRIAL';


--
-- Name: COLUMN expense_categories.account_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expense_categories.account_type_id IS 'TRIAL';


--
-- Name: COLUMN expense_categories.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expense_categories.name IS 'TRIAL';


--
-- Name: COLUMN expense_categories.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expense_categories.description IS 'TRIAL';


--
-- Name: COLUMN expense_categories.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expense_categories.deleted_at IS 'TRIAL';


--
-- Name: COLUMN expense_categories.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expense_categories.created_at IS 'TRIAL';


--
-- Name: COLUMN expense_categories.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expense_categories.updated_at IS 'TRIAL';


--
-- Name: COLUMN expense_categories.trial212; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expense_categories.trial212 IS 'TRIAL';


--
-- Name: expenses; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.expenses (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    category_id character varying(36) NOT NULL,
    title character varying(191) NOT NULL,
    amount character varying(191) NOT NULL,
    expense_date date,
    attachment character varying(191),
    notes character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial215 character(1)
);


ALTER TABLE public.expenses OWNER TO loanapp;

--
-- Name: TABLE expenses; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.expenses IS 'TRIAL';


--
-- Name: COLUMN expenses.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.id IS 'TRIAL';


--
-- Name: COLUMN expenses.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.branch_id IS 'TRIAL';


--
-- Name: COLUMN expenses.category_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.category_id IS 'TRIAL';


--
-- Name: COLUMN expenses.title; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.title IS 'TRIAL';


--
-- Name: COLUMN expenses.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.amount IS 'TRIAL';


--
-- Name: COLUMN expenses.expense_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.expense_date IS 'TRIAL';


--
-- Name: COLUMN expenses.attachment; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.attachment IS 'TRIAL';


--
-- Name: COLUMN expenses.notes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.notes IS 'TRIAL';


--
-- Name: COLUMN expenses.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.created_by IS 'TRIAL';


--
-- Name: COLUMN expenses.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.updated_by IS 'TRIAL';


--
-- Name: COLUMN expenses.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.deleted_by IS 'TRIAL';


--
-- Name: COLUMN expenses.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.deleted_at IS 'TRIAL';


--
-- Name: COLUMN expenses.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.created_at IS 'TRIAL';


--
-- Name: COLUMN expenses.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.updated_at IS 'TRIAL';


--
-- Name: COLUMN expenses.trial215; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.expenses.trial215 IS 'TRIAL';


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp without time zone DEFAULT now() NOT NULL,
    trial219 character(1)
);


ALTER TABLE public.failed_jobs OWNER TO loanapp;

--
-- Name: TABLE failed_jobs; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.failed_jobs IS 'TRIAL';


--
-- Name: COLUMN failed_jobs.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_jobs.id IS 'TRIAL';


--
-- Name: COLUMN failed_jobs.connection; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_jobs.connection IS 'TRIAL';


--
-- Name: COLUMN failed_jobs.queue; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_jobs.queue IS 'TRIAL';


--
-- Name: COLUMN failed_jobs.payload; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_jobs.payload IS 'TRIAL';


--
-- Name: COLUMN failed_jobs.exception; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_jobs.exception IS 'TRIAL';


--
-- Name: COLUMN failed_jobs.failed_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_jobs.failed_at IS 'TRIAL';


--
-- Name: COLUMN failed_jobs.trial219; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_jobs.trial219 IS 'TRIAL';


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO loanapp;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: failed_logins; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.failed_logins (
    id integer NOT NULL,
    user_id character varying(191),
    email character varying(191),
    user_agent character varying(191),
    ip_address character varying(45) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial222 character(1)
);


ALTER TABLE public.failed_logins OWNER TO loanapp;

--
-- Name: TABLE failed_logins; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.failed_logins IS 'TRIAL';


--
-- Name: COLUMN failed_logins.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_logins.id IS 'TRIAL';


--
-- Name: COLUMN failed_logins.user_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_logins.user_id IS 'TRIAL';


--
-- Name: COLUMN failed_logins.email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_logins.email IS 'TRIAL';


--
-- Name: COLUMN failed_logins.user_agent; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_logins.user_agent IS 'TRIAL';


--
-- Name: COLUMN failed_logins.ip_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_logins.ip_address IS 'TRIAL';


--
-- Name: COLUMN failed_logins.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_logins.created_at IS 'TRIAL';


--
-- Name: COLUMN failed_logins.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_logins.updated_at IS 'TRIAL';


--
-- Name: COLUMN failed_logins.trial222; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.failed_logins.trial222 IS 'TRIAL';


--
-- Name: failed_logins_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.failed_logins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_logins_id_seq OWNER TO loanapp;

--
-- Name: failed_logins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.failed_logins_id_seq OWNED BY public.failed_logins.id;


--
-- Name: finance_statements; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.finance_statements (
    id character(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial225 character(1)
);


ALTER TABLE public.finance_statements OWNER TO loanapp;

--
-- Name: TABLE finance_statements; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.finance_statements IS 'TRIAL';


--
-- Name: COLUMN finance_statements.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.finance_statements.id IS 'TRIAL';


--
-- Name: COLUMN finance_statements.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.finance_statements.name IS 'TRIAL';


--
-- Name: COLUMN finance_statements.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.finance_statements.display_name IS 'TRIAL';


--
-- Name: COLUMN finance_statements.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.finance_statements.description IS 'TRIAL';


--
-- Name: COLUMN finance_statements.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.finance_statements.deleted_at IS 'TRIAL';


--
-- Name: COLUMN finance_statements.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.finance_statements.created_at IS 'TRIAL';


--
-- Name: COLUMN finance_statements.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.finance_statements.updated_at IS 'TRIAL';


--
-- Name: COLUMN finance_statements.trial225; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.finance_statements.trial225 IS 'TRIAL';


--
-- Name: fiscal_periods; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.fiscal_periods (
    id character varying(36) NOT NULL,
    start_on character varying(191) NOT NULL,
    end_on character varying(191) NOT NULL,
    closed_on character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial225 character(1)
);


ALTER TABLE public.fiscal_periods OWNER TO loanapp;

--
-- Name: TABLE fiscal_periods; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.fiscal_periods IS 'TRIAL';


--
-- Name: COLUMN fiscal_periods.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.fiscal_periods.id IS 'TRIAL';


--
-- Name: COLUMN fiscal_periods.start_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.fiscal_periods.start_on IS 'TRIAL';


--
-- Name: COLUMN fiscal_periods.end_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.fiscal_periods.end_on IS 'TRIAL';


--
-- Name: COLUMN fiscal_periods.closed_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.fiscal_periods.closed_on IS 'TRIAL';


--
-- Name: COLUMN fiscal_periods.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.fiscal_periods.deleted_at IS 'TRIAL';


--
-- Name: COLUMN fiscal_periods.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.fiscal_periods.created_at IS 'TRIAL';


--
-- Name: COLUMN fiscal_periods.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.fiscal_periods.updated_at IS 'TRIAL';


--
-- Name: COLUMN fiscal_periods.trial225; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.fiscal_periods.trial225 IS 'TRIAL';


--
-- Name: general_settings; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.general_settings (
    id character varying(36) NOT NULL,
    business_name character varying(191) NOT NULL,
    business_type character varying(191),
    email character varying(191) NOT NULL,
    currency character varying(191),
    phone character varying(191),
    physical_address character varying(191),
    postal_address character varying(191),
    postal_code character varying(191),
    logo character varying(191),
    favicon character varying(191),
    date_format character varying(191),
    amount_thousand_separator character varying(191),
    amount_decimal_separator character varying(191),
    amount_decimal character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial228 character(1)
);


ALTER TABLE public.general_settings OWNER TO loanapp;

--
-- Name: TABLE general_settings; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.general_settings IS 'TRIAL';


--
-- Name: COLUMN general_settings.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.id IS 'TRIAL';


--
-- Name: COLUMN general_settings.business_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.business_name IS 'TRIAL';


--
-- Name: COLUMN general_settings.business_type; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.business_type IS 'TRIAL';


--
-- Name: COLUMN general_settings.email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.email IS 'TRIAL';


--
-- Name: COLUMN general_settings.currency; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.currency IS 'TRIAL';


--
-- Name: COLUMN general_settings.phone; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.phone IS 'TRIAL';


--
-- Name: COLUMN general_settings.physical_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.physical_address IS 'TRIAL';


--
-- Name: COLUMN general_settings.postal_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.postal_address IS 'TRIAL';


--
-- Name: COLUMN general_settings.postal_code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.postal_code IS 'TRIAL';


--
-- Name: COLUMN general_settings.logo; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.logo IS 'TRIAL';


--
-- Name: COLUMN general_settings.favicon; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.favicon IS 'TRIAL';


--
-- Name: COLUMN general_settings.date_format; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.date_format IS 'TRIAL';


--
-- Name: COLUMN general_settings.amount_thousand_separator; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.amount_thousand_separator IS 'TRIAL';


--
-- Name: COLUMN general_settings.amount_decimal_separator; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.amount_decimal_separator IS 'TRIAL';


--
-- Name: COLUMN general_settings.amount_decimal; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.amount_decimal IS 'TRIAL';


--
-- Name: COLUMN general_settings.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.deleted_at IS 'TRIAL';


--
-- Name: COLUMN general_settings.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.created_at IS 'TRIAL';


--
-- Name: COLUMN general_settings.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.updated_at IS 'TRIAL';


--
-- Name: COLUMN general_settings.trial228; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.general_settings.trial228 IS 'TRIAL';


--
-- Name: guarantors; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.guarantors (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    member_id character varying(36) NOT NULL,
    loan_application_id character varying(36) NOT NULL,
    notes character varying(191),
    guarantee_amount character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial232 character(1)
);


ALTER TABLE public.guarantors OWNER TO loanapp;

--
-- Name: TABLE guarantors; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.guarantors IS 'TRIAL';


--
-- Name: COLUMN guarantors.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.id IS 'TRIAL';


--
-- Name: COLUMN guarantors.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.branch_id IS 'TRIAL';


--
-- Name: COLUMN guarantors.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.member_id IS 'TRIAL';


--
-- Name: COLUMN guarantors.loan_application_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.loan_application_id IS 'TRIAL';


--
-- Name: COLUMN guarantors.notes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.notes IS 'TRIAL';


--
-- Name: COLUMN guarantors.guarantee_amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.guarantee_amount IS 'TRIAL';


--
-- Name: COLUMN guarantors.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.created_by IS 'TRIAL';


--
-- Name: COLUMN guarantors.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.updated_by IS 'TRIAL';


--
-- Name: COLUMN guarantors.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.deleted_by IS 'TRIAL';


--
-- Name: COLUMN guarantors.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.deleted_at IS 'TRIAL';


--
-- Name: COLUMN guarantors.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.created_at IS 'TRIAL';


--
-- Name: COLUMN guarantors.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.updated_at IS 'TRIAL';


--
-- Name: COLUMN guarantors.trial232; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.guarantors.trial232 IS 'TRIAL';


--
-- Name: interest_types; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.interest_types (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial235 character(1)
);


ALTER TABLE public.interest_types OWNER TO loanapp;

--
-- Name: TABLE interest_types; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.interest_types IS 'TRIAL';


--
-- Name: COLUMN interest_types.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.interest_types.id IS 'TRIAL';


--
-- Name: COLUMN interest_types.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.interest_types.name IS 'TRIAL';


--
-- Name: COLUMN interest_types.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.interest_types.display_name IS 'TRIAL';


--
-- Name: COLUMN interest_types.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.interest_types.description IS 'TRIAL';


--
-- Name: COLUMN interest_types.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.interest_types.deleted_at IS 'TRIAL';


--
-- Name: COLUMN interest_types.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.interest_types.created_at IS 'TRIAL';


--
-- Name: COLUMN interest_types.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.interest_types.updated_at IS 'TRIAL';


--
-- Name: COLUMN interest_types.trial235; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.interest_types.trial235 IS 'TRIAL';


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(191) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at bigint,
    available_at bigint NOT NULL,
    created_at bigint NOT NULL,
    trial238 character(1)
);


ALTER TABLE public.jobs OWNER TO loanapp;

--
-- Name: TABLE jobs; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.jobs IS 'TRIAL';


--
-- Name: COLUMN jobs.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.jobs.id IS 'TRIAL';


--
-- Name: COLUMN jobs.queue; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.jobs.queue IS 'TRIAL';


--
-- Name: COLUMN jobs.payload; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.jobs.payload IS 'TRIAL';


--
-- Name: COLUMN jobs.attempts; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.jobs.attempts IS 'TRIAL';


--
-- Name: COLUMN jobs.reserved_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.jobs.reserved_at IS 'TRIAL';


--
-- Name: COLUMN jobs.available_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.jobs.available_at IS 'TRIAL';


--
-- Name: COLUMN jobs.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.jobs.created_at IS 'TRIAL';


--
-- Name: COLUMN jobs.trial238; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.jobs.trial238 IS 'TRIAL';


--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO loanapp;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: journals; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.journals (
    id integer NOT NULL,
    branch_id character varying(36) NOT NULL,
    transaction_id character varying(36) NOT NULL,
    debit_account_id character varying(36) NOT NULL,
    credit_account_id character varying(36) NOT NULL,
    amount character varying(191) NOT NULL,
    narration character varying(191) NOT NULL,
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial238 character(1)
);


ALTER TABLE public.journals OWNER TO loanapp;

--
-- Name: TABLE journals; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.journals IS 'TRIAL';


--
-- Name: COLUMN journals.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.id IS 'TRIAL';


--
-- Name: COLUMN journals.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.branch_id IS 'TRIAL';


--
-- Name: COLUMN journals.transaction_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.transaction_id IS 'TRIAL';


--
-- Name: COLUMN journals.debit_account_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.debit_account_id IS 'TRIAL';


--
-- Name: COLUMN journals.credit_account_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.credit_account_id IS 'TRIAL';


--
-- Name: COLUMN journals.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.amount IS 'TRIAL';


--
-- Name: COLUMN journals.narration; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.narration IS 'TRIAL';


--
-- Name: COLUMN journals.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.created_by IS 'TRIAL';


--
-- Name: COLUMN journals.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.updated_by IS 'TRIAL';


--
-- Name: COLUMN journals.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.deleted_by IS 'TRIAL';


--
-- Name: COLUMN journals.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.deleted_at IS 'TRIAL';


--
-- Name: COLUMN journals.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.created_at IS 'TRIAL';


--
-- Name: COLUMN journals.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.updated_at IS 'TRIAL';


--
-- Name: COLUMN journals.trial238; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.journals.trial238 IS 'TRIAL';


--
-- Name: journals_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.journals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.journals_id_seq OWNER TO loanapp;

--
-- Name: journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.journals_id_seq OWNED BY public.journals.id;


--
-- Name: loan_application_statuses; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.loan_application_statuses (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial241 character(1)
);


ALTER TABLE public.loan_application_statuses OWNER TO loanapp;

--
-- Name: TABLE loan_application_statuses; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.loan_application_statuses IS 'TRIAL';


--
-- Name: COLUMN loan_application_statuses.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_application_statuses.id IS 'TRIAL';


--
-- Name: COLUMN loan_application_statuses.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_application_statuses.name IS 'TRIAL';


--
-- Name: COLUMN loan_application_statuses.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_application_statuses.description IS 'TRIAL';


--
-- Name: COLUMN loan_application_statuses.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_application_statuses.deleted_at IS 'TRIAL';


--
-- Name: COLUMN loan_application_statuses.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_application_statuses.created_at IS 'TRIAL';


--
-- Name: COLUMN loan_application_statuses.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_application_statuses.updated_at IS 'TRIAL';


--
-- Name: COLUMN loan_application_statuses.trial241; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_application_statuses.trial241 IS 'TRIAL';


--
-- Name: loan_applications; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.loan_applications (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    member_id character varying(36) NOT NULL,
    loan_officer_id character varying(36) NOT NULL,
    loan_type_id character varying(36) NOT NULL,
    interest_type_id character varying(36),
    interest_rate character varying(191),
    service_fee double precision DEFAULT 0 NOT NULL,
    penalty_type_id character varying(36) DEFAULT ''::character varying,
    penalty_value double precision DEFAULT 0 NOT NULL,
    penalty_frequency_id character varying(36) DEFAULT ''::character varying,
    reduce_principal_early smallint DEFAULT 0 NOT NULL,
    amount_applied character varying(191) NOT NULL,
    repayment_period character varying(191),
    payment_frequency_id character varying(36),
    periodic_payment_amount character varying(191),
    application_date date NOT NULL,
    witness_type_id character varying(36),
    witness_first_name character varying(191),
    witness_last_name character varying(191),
    witness_country character varying(191),
    witness_county character varying(191),
    witness_city character varying(191),
    witness_national_id character varying(191),
    witness_phone character varying(191),
    witness_email character varying(191),
    witness_postal_address character varying(191),
    witness_residential_address character varying(191),
    disburse_method_id character varying(191),
    mpesa_number character varying(191),
    mpesa_first_name character varying(191),
    mpesa_middle_name character varying(191),
    mpesa_last_name character varying(191),
    cheque_number character varying(191),
    bank_name character varying(191),
    bank_branch character varying(191),
    cheque_date date,
    disburse_note character varying(191),
    status_id character varying(36),
    witnessed_by_user_id character varying(36),
    reviewed_by_user_id character varying(36),
    reviewed_on character varying(191),
    approved_on character varying(191),
    rejected_on character varying(191),
    rejection_notes character varying(191),
    attach_application_form character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial245 character(1)
);


ALTER TABLE public.loan_applications OWNER TO loanapp;

--
-- Name: TABLE loan_applications; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.loan_applications IS 'TRIAL';


--
-- Name: COLUMN loan_applications.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.branch_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.member_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.loan_officer_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.loan_officer_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.loan_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.loan_type_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.interest_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.interest_type_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.interest_rate; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.interest_rate IS 'TRIAL';


--
-- Name: COLUMN loan_applications.service_fee; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.service_fee IS 'TRIAL';


--
-- Name: COLUMN loan_applications.penalty_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.penalty_type_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.penalty_value; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.penalty_value IS 'TRIAL';


--
-- Name: COLUMN loan_applications.penalty_frequency_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.penalty_frequency_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.reduce_principal_early; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.reduce_principal_early IS 'TRIAL';


--
-- Name: COLUMN loan_applications.amount_applied; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.amount_applied IS 'TRIAL';


--
-- Name: COLUMN loan_applications.repayment_period; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.repayment_period IS 'TRIAL';


--
-- Name: COLUMN loan_applications.payment_frequency_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.payment_frequency_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.periodic_payment_amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.periodic_payment_amount IS 'TRIAL';


--
-- Name: COLUMN loan_applications.application_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.application_date IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_type_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_first_name IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_last_name IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_country; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_country IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_county; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_county IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_city; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_city IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_national_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_national_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_phone; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_phone IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_email IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_postal_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_postal_address IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witness_residential_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witness_residential_address IS 'TRIAL';


--
-- Name: COLUMN loan_applications.disburse_method_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.disburse_method_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.mpesa_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.mpesa_number IS 'TRIAL';


--
-- Name: COLUMN loan_applications.mpesa_first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.mpesa_first_name IS 'TRIAL';


--
-- Name: COLUMN loan_applications.mpesa_middle_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.mpesa_middle_name IS 'TRIAL';


--
-- Name: COLUMN loan_applications.mpesa_last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.mpesa_last_name IS 'TRIAL';


--
-- Name: COLUMN loan_applications.cheque_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.cheque_number IS 'TRIAL';


--
-- Name: COLUMN loan_applications.bank_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.bank_name IS 'TRIAL';


--
-- Name: COLUMN loan_applications.bank_branch; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.bank_branch IS 'TRIAL';


--
-- Name: COLUMN loan_applications.cheque_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.cheque_date IS 'TRIAL';


--
-- Name: COLUMN loan_applications.disburse_note; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.disburse_note IS 'TRIAL';


--
-- Name: COLUMN loan_applications.status_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.status_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.witnessed_by_user_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.witnessed_by_user_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.reviewed_by_user_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.reviewed_by_user_id IS 'TRIAL';


--
-- Name: COLUMN loan_applications.reviewed_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.reviewed_on IS 'TRIAL';


--
-- Name: COLUMN loan_applications.approved_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.approved_on IS 'TRIAL';


--
-- Name: COLUMN loan_applications.rejected_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.rejected_on IS 'TRIAL';


--
-- Name: COLUMN loan_applications.rejection_notes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.rejection_notes IS 'TRIAL';


--
-- Name: COLUMN loan_applications.attach_application_form; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.attach_application_form IS 'TRIAL';


--
-- Name: COLUMN loan_applications.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.created_by IS 'TRIAL';


--
-- Name: COLUMN loan_applications.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.updated_by IS 'TRIAL';


--
-- Name: COLUMN loan_applications.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.deleted_by IS 'TRIAL';


--
-- Name: COLUMN loan_applications.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.deleted_at IS 'TRIAL';


--
-- Name: COLUMN loan_applications.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.created_at IS 'TRIAL';


--
-- Name: COLUMN loan_applications.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.updated_at IS 'TRIAL';


--
-- Name: COLUMN loan_applications.trial245; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_applications.trial245 IS 'TRIAL';


--
-- Name: loan_interest_repayments; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.loan_interest_repayments (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    loan_id character varying(36) NOT NULL,
    period_count integer NOT NULL,
    due_date date NOT NULL,
    amount character varying(191) NOT NULL,
    paid_on timestamp without time zone,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial248 character(1)
);


ALTER TABLE public.loan_interest_repayments OWNER TO loanapp;

--
-- Name: TABLE loan_interest_repayments; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.loan_interest_repayments IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.id IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.branch_id IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.loan_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.loan_id IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.period_count; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.period_count IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.due_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.due_date IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.amount IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.paid_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.paid_on IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.deleted_at IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.created_at IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.updated_at IS 'TRIAL';


--
-- Name: COLUMN loan_interest_repayments.trial248; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_interest_repayments.trial248 IS 'TRIAL';


--
-- Name: loan_penalties; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.loan_penalties (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    loan_id character varying(36) NOT NULL,
    period_count integer,
    due_date date NOT NULL,
    amount character varying(191),
    paid_on timestamp without time zone,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial251 character(1)
);


ALTER TABLE public.loan_penalties OWNER TO loanapp;

--
-- Name: TABLE loan_penalties; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.loan_penalties IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.id IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.branch_id IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.loan_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.loan_id IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.period_count; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.period_count IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.due_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.due_date IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.amount IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.paid_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.paid_on IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.deleted_at IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.created_at IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.updated_at IS 'TRIAL';


--
-- Name: COLUMN loan_penalties.trial251; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_penalties.trial251 IS 'TRIAL';


--
-- Name: loan_principal_repayments; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.loan_principal_repayments (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    loan_id character varying(36) NOT NULL,
    period_count integer NOT NULL,
    due_date date NOT NULL,
    amount character varying(191),
    paid_on timestamp without time zone,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial251 character(1)
);


ALTER TABLE public.loan_principal_repayments OWNER TO loanapp;

--
-- Name: TABLE loan_principal_repayments; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.loan_principal_repayments IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.id IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.branch_id IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.loan_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.loan_id IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.period_count; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.period_count IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.due_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.due_date IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.amount IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.paid_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.paid_on IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.deleted_at IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.created_at IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.updated_at IS 'TRIAL';


--
-- Name: COLUMN loan_principal_repayments.trial251; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_principal_repayments.trial251 IS 'TRIAL';


--
-- Name: loan_statuses; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.loan_statuses (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial254 character(1)
);


ALTER TABLE public.loan_statuses OWNER TO loanapp;

--
-- Name: TABLE loan_statuses; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.loan_statuses IS 'TRIAL';


--
-- Name: COLUMN loan_statuses.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_statuses.id IS 'TRIAL';


--
-- Name: COLUMN loan_statuses.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_statuses.name IS 'TRIAL';


--
-- Name: COLUMN loan_statuses.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_statuses.description IS 'TRIAL';


--
-- Name: COLUMN loan_statuses.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_statuses.deleted_at IS 'TRIAL';


--
-- Name: COLUMN loan_statuses.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_statuses.created_at IS 'TRIAL';


--
-- Name: COLUMN loan_statuses.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_statuses.updated_at IS 'TRIAL';


--
-- Name: COLUMN loan_statuses.trial254; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_statuses.trial254 IS 'TRIAL';


--
-- Name: loan_types; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.loan_types (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    description character varying(191),
    active_status character varying(191),
    interest_rate character varying(191),
    interest_type_id character varying(36) NOT NULL,
    payment_frequency_id character varying(36) NOT NULL,
    repayment_period character varying(191),
    service_fee character varying(191) DEFAULT '0'::character varying NOT NULL,
    reduce_principal_early smallint DEFAULT 0 NOT NULL,
    penalty_type_id character varying(36) DEFAULT ''::character varying,
    penalty_value double precision DEFAULT 0 NOT NULL,
    penalty_frequency_id character varying(36) DEFAULT ''::character varying,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial258 character(1)
);


ALTER TABLE public.loan_types OWNER TO loanapp;

--
-- Name: TABLE loan_types; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.loan_types IS 'TRIAL';


--
-- Name: COLUMN loan_types.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.id IS 'TRIAL';


--
-- Name: COLUMN loan_types.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.name IS 'TRIAL';


--
-- Name: COLUMN loan_types.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.description IS 'TRIAL';


--
-- Name: COLUMN loan_types.active_status; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.active_status IS 'TRIAL';


--
-- Name: COLUMN loan_types.interest_rate; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.interest_rate IS 'TRIAL';


--
-- Name: COLUMN loan_types.interest_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.interest_type_id IS 'TRIAL';


--
-- Name: COLUMN loan_types.payment_frequency_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.payment_frequency_id IS 'TRIAL';


--
-- Name: COLUMN loan_types.repayment_period; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.repayment_period IS 'TRIAL';


--
-- Name: COLUMN loan_types.service_fee; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.service_fee IS 'TRIAL';


--
-- Name: COLUMN loan_types.reduce_principal_early; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.reduce_principal_early IS 'TRIAL';


--
-- Name: COLUMN loan_types.penalty_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.penalty_type_id IS 'TRIAL';


--
-- Name: COLUMN loan_types.penalty_value; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.penalty_value IS 'TRIAL';


--
-- Name: COLUMN loan_types.penalty_frequency_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.penalty_frequency_id IS 'TRIAL';


--
-- Name: COLUMN loan_types.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.deleted_at IS 'TRIAL';


--
-- Name: COLUMN loan_types.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.created_at IS 'TRIAL';


--
-- Name: COLUMN loan_types.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.updated_at IS 'TRIAL';


--
-- Name: COLUMN loan_types.trial258; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loan_types.trial258 IS 'TRIAL';


--
-- Name: loans; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.loans (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    loan_reference_number character varying(191),
    loan_application_id character varying(36) NOT NULL,
    member_id character varying(36) NOT NULL,
    loan_officer_id character varying(36) NOT NULL,
    loan_type_id character varying(36),
    interest_rate character varying(191) NOT NULL,
    interest_type_id character varying(36) NOT NULL,
    repayment_period character varying(191) NOT NULL,
    loan_status_id character varying(191),
    approved_by_user_id character varying(191),
    amount_approved character varying(191) NOT NULL,
    disburse_amount character varying(191) NOT NULL,
    service_fee double precision DEFAULT 0 NOT NULL,
    penalty_type_id character varying(36) DEFAULT ''::character varying,
    penalty_value double precision DEFAULT 0 NOT NULL,
    penalty_frequency_id character varying(36) DEFAULT ''::character varying,
    loan_disbursed smallint DEFAULT 0 NOT NULL,
    start_date date NOT NULL,
    end_date date,
    payment_frequency_id character varying(36) NOT NULL,
    reduce_principal_early smallint DEFAULT 0 NOT NULL,
    next_repayment_date date,
    disburse_method_id character varying(191),
    mpesa_number character varying(191),
    mpesa_first_name character varying(191),
    mpesa_middle_name character varying(191),
    mpesa_last_name character varying(191),
    bank_name character varying(191),
    bank_branch character varying(191),
    bank_account character varying(191),
    other_banking_details character varying(191),
    closed_on timestamp without time zone,
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial261 character(1)
);


ALTER TABLE public.loans OWNER TO loanapp;

--
-- Name: TABLE loans; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.loans IS 'TRIAL';


--
-- Name: COLUMN loans.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.id IS 'TRIAL';


--
-- Name: COLUMN loans.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.branch_id IS 'TRIAL';


--
-- Name: COLUMN loans.loan_reference_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.loan_reference_number IS 'TRIAL';


--
-- Name: COLUMN loans.loan_application_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.loan_application_id IS 'TRIAL';


--
-- Name: COLUMN loans.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.member_id IS 'TRIAL';


--
-- Name: COLUMN loans.loan_officer_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.loan_officer_id IS 'TRIAL';


--
-- Name: COLUMN loans.loan_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.loan_type_id IS 'TRIAL';


--
-- Name: COLUMN loans.interest_rate; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.interest_rate IS 'TRIAL';


--
-- Name: COLUMN loans.interest_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.interest_type_id IS 'TRIAL';


--
-- Name: COLUMN loans.repayment_period; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.repayment_period IS 'TRIAL';


--
-- Name: COLUMN loans.loan_status_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.loan_status_id IS 'TRIAL';


--
-- Name: COLUMN loans.approved_by_user_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.approved_by_user_id IS 'TRIAL';


--
-- Name: COLUMN loans.amount_approved; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.amount_approved IS 'TRIAL';


--
-- Name: COLUMN loans.disburse_amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.disburse_amount IS 'TRIAL';


--
-- Name: COLUMN loans.service_fee; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.service_fee IS 'TRIAL';


--
-- Name: COLUMN loans.penalty_type_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.penalty_type_id IS 'TRIAL';


--
-- Name: COLUMN loans.penalty_value; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.penalty_value IS 'TRIAL';


--
-- Name: COLUMN loans.penalty_frequency_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.penalty_frequency_id IS 'TRIAL';


--
-- Name: COLUMN loans.loan_disbursed; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.loan_disbursed IS 'TRIAL';


--
-- Name: COLUMN loans.start_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.start_date IS 'TRIAL';


--
-- Name: COLUMN loans.end_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.end_date IS 'TRIAL';


--
-- Name: COLUMN loans.payment_frequency_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.payment_frequency_id IS 'TRIAL';


--
-- Name: COLUMN loans.reduce_principal_early; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.reduce_principal_early IS 'TRIAL';


--
-- Name: COLUMN loans.next_repayment_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.next_repayment_date IS 'TRIAL';


--
-- Name: COLUMN loans.disburse_method_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.disburse_method_id IS 'TRIAL';


--
-- Name: COLUMN loans.mpesa_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.mpesa_number IS 'TRIAL';


--
-- Name: COLUMN loans.mpesa_first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.mpesa_first_name IS 'TRIAL';


--
-- Name: COLUMN loans.mpesa_middle_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.mpesa_middle_name IS 'TRIAL';


--
-- Name: COLUMN loans.mpesa_last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.mpesa_last_name IS 'TRIAL';


--
-- Name: COLUMN loans.bank_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.bank_name IS 'TRIAL';


--
-- Name: COLUMN loans.bank_branch; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.bank_branch IS 'TRIAL';


--
-- Name: COLUMN loans.bank_account; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.bank_account IS 'TRIAL';


--
-- Name: COLUMN loans.other_banking_details; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.other_banking_details IS 'TRIAL';


--
-- Name: COLUMN loans.closed_on; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.closed_on IS 'TRIAL';


--
-- Name: COLUMN loans.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.created_by IS 'TRIAL';


--
-- Name: COLUMN loans.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.updated_by IS 'TRIAL';


--
-- Name: COLUMN loans.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.deleted_by IS 'TRIAL';


--
-- Name: COLUMN loans.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.deleted_at IS 'TRIAL';


--
-- Name: COLUMN loans.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.created_at IS 'TRIAL';


--
-- Name: COLUMN loans.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.updated_at IS 'TRIAL';


--
-- Name: COLUMN loans.trial261; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.loans.trial261 IS 'TRIAL';


--
-- Name: login_events; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.login_events (
    id integer NOT NULL,
    user_id character varying(191),
    event character varying(191) NOT NULL,
    email character varying(191),
    user_agent character varying(191),
    ip_address character varying(45) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial264 character(1)
);


ALTER TABLE public.login_events OWNER TO loanapp;

--
-- Name: TABLE login_events; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.login_events IS 'TRIAL';


--
-- Name: COLUMN login_events.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.id IS 'TRIAL';


--
-- Name: COLUMN login_events.user_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.user_id IS 'TRIAL';


--
-- Name: COLUMN login_events.event; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.event IS 'TRIAL';


--
-- Name: COLUMN login_events.email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.email IS 'TRIAL';


--
-- Name: COLUMN login_events.user_agent; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.user_agent IS 'TRIAL';


--
-- Name: COLUMN login_events.ip_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.ip_address IS 'TRIAL';


--
-- Name: COLUMN login_events.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.created_at IS 'TRIAL';


--
-- Name: COLUMN login_events.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.updated_at IS 'TRIAL';


--
-- Name: COLUMN login_events.trial264; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.login_events.trial264 IS 'TRIAL';


--
-- Name: login_events_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.login_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.login_events_id_seq OWNER TO loanapp;

--
-- Name: login_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.login_events_id_seq OWNED BY public.login_events.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.members (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    first_name character varying(191) NOT NULL,
    middle_name character varying(191),
    last_name character varying(191) NOT NULL,
    date_of_birth date NOT NULL,
    date_became_member date NOT NULL,
    nationality character varying(191) NOT NULL,
    county character varying(191),
    city character varying(191),
    id_number character varying(191) NOT NULL,
    passport_number character varying(191),
    phone character varying(191),
    email character varying(191),
    postal_address character varying(191) NOT NULL,
    residential_address character varying(191) NOT NULL,
    status_id character varying(191),
    passport_photo character varying(191),
    extra_images character varying(191),
    membership_form character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial264 character(1)
);


ALTER TABLE public.members OWNER TO loanapp;

--
-- Name: TABLE members; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.members IS 'TRIAL';


--
-- Name: COLUMN members.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.id IS 'TRIAL';


--
-- Name: COLUMN members.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.branch_id IS 'TRIAL';


--
-- Name: COLUMN members.first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.first_name IS 'TRIAL';


--
-- Name: COLUMN members.middle_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.middle_name IS 'TRIAL';


--
-- Name: COLUMN members.last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.last_name IS 'TRIAL';


--
-- Name: COLUMN members.date_of_birth; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.date_of_birth IS 'TRIAL';


--
-- Name: COLUMN members.date_became_member; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.date_became_member IS 'TRIAL';


--
-- Name: COLUMN members.nationality; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.nationality IS 'TRIAL';


--
-- Name: COLUMN members.county; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.county IS 'TRIAL';


--
-- Name: COLUMN members.city; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.city IS 'TRIAL';


--
-- Name: COLUMN members.id_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.id_number IS 'TRIAL';


--
-- Name: COLUMN members.passport_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.passport_number IS 'TRIAL';


--
-- Name: COLUMN members.phone; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.phone IS 'TRIAL';


--
-- Name: COLUMN members.email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.email IS 'TRIAL';


--
-- Name: COLUMN members.postal_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.postal_address IS 'TRIAL';


--
-- Name: COLUMN members.residential_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.residential_address IS 'TRIAL';


--
-- Name: COLUMN members.status_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.status_id IS 'TRIAL';


--
-- Name: COLUMN members.passport_photo; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.passport_photo IS 'TRIAL';


--
-- Name: COLUMN members.extra_images; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.extra_images IS 'TRIAL';


--
-- Name: COLUMN members.membership_form; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.membership_form IS 'TRIAL';


--
-- Name: COLUMN members.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.created_by IS 'TRIAL';


--
-- Name: COLUMN members.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.updated_by IS 'TRIAL';


--
-- Name: COLUMN members.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.deleted_by IS 'TRIAL';


--
-- Name: COLUMN members.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.deleted_at IS 'TRIAL';


--
-- Name: COLUMN members.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.created_at IS 'TRIAL';


--
-- Name: COLUMN members.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.updated_at IS 'TRIAL';


--
-- Name: COLUMN members.trial264; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.members.trial264 IS 'TRIAL';


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL,
    trial268 character(1)
);


ALTER TABLE public.migrations OWNER TO loanapp;

--
-- Name: TABLE migrations; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.migrations IS 'TRIAL';


--
-- Name: COLUMN migrations.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.migrations.id IS 'TRIAL';


--
-- Name: COLUMN migrations.migration; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.migrations.migration IS 'TRIAL';


--
-- Name: COLUMN migrations.batch; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.migrations.batch IS 'TRIAL';


--
-- Name: COLUMN migrations.trial268; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.migrations.trial268 IS 'TRIAL';


--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO loanapp;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: mpesa_bulk_payments; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.mpesa_bulk_payments (
    id bigint NOT NULL,
    transaction_amount character varying(191) NOT NULL,
    transaction_receipt character varying(191) NOT NULL,
    b2c_recipientis_registered_customer character varying(191) NOT NULL,
    b2c_charges_paid_account_available_funds character varying(191) NOT NULL,
    receiver_party_public_name character varying(191) NOT NULL,
    transaction_completed_date_time character varying(191) NOT NULL,
    b2c_utility_account_available_funds character varying(191) NOT NULL,
    b2c_working_account_available_funds character varying(191) NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial271 character(1)
);


ALTER TABLE public.mpesa_bulk_payments OWNER TO loanapp;

--
-- Name: TABLE mpesa_bulk_payments; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.mpesa_bulk_payments IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.id IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.transaction_amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.transaction_amount IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.transaction_receipt; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.transaction_receipt IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.b2c_recipientis_registered_customer; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.b2c_recipientis_registered_customer IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.b2c_charges_paid_account_available_funds; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.b2c_charges_paid_account_available_funds IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.receiver_party_public_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.receiver_party_public_name IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.transaction_completed_date_time; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.transaction_completed_date_time IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.b2c_utility_account_available_funds; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.b2c_utility_account_available_funds IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.b2c_working_account_available_funds; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.b2c_working_account_available_funds IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.deleted_at IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.created_at IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.updated_at IS 'TRIAL';


--
-- Name: COLUMN mpesa_bulk_payments.trial271; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_bulk_payments.trial271 IS 'TRIAL';


--
-- Name: mpesa_bulk_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.mpesa_bulk_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mpesa_bulk_payments_id_seq OWNER TO loanapp;

--
-- Name: mpesa_bulk_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.mpesa_bulk_payments_id_seq OWNED BY public.mpesa_bulk_payments.id;


--
-- Name: mpesa_custom_sends; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.mpesa_custom_sends (
    id bigint NOT NULL,
    phone character varying(191) NOT NULL,
    amount character varying(191) NOT NULL,
    description character varying(191) NOT NULL,
    transaction_type date,
    trans_id date,
    trans_time date,
    business_short_code date,
    bill_ref_number date,
    invoice_number date,
    phone_number date,
    first_name date,
    middle_name date,
    last_name date,
    org_account_balance date,
    third_party_trans_id date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial274 character(1)
);


ALTER TABLE public.mpesa_custom_sends OWNER TO loanapp;

--
-- Name: TABLE mpesa_custom_sends; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.mpesa_custom_sends IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.id IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.phone; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.phone IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.amount IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.description IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.transaction_type; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.transaction_type IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.trans_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.trans_id IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.trans_time; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.trans_time IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.business_short_code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.business_short_code IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.bill_ref_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.bill_ref_number IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.invoice_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.invoice_number IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.phone_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.phone_number IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.first_name IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.middle_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.middle_name IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.last_name IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.org_account_balance; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.org_account_balance IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.third_party_trans_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.third_party_trans_id IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.created_at IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.updated_at IS 'TRIAL';


--
-- Name: COLUMN mpesa_custom_sends.trial274; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_custom_sends.trial274 IS 'TRIAL';


--
-- Name: mpesa_custom_sends_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.mpesa_custom_sends_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mpesa_custom_sends_id_seq OWNER TO loanapp;

--
-- Name: mpesa_custom_sends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.mpesa_custom_sends_id_seq OWNED BY public.mpesa_custom_sends.id;


--
-- Name: mpesa_scheduled_disbursements; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.mpesa_scheduled_disbursements (
    id character varying(36) NOT NULL,
    branch_id character varying(191),
    member_id character varying(191),
    created_by character varying(191),
    mpesa_number character varying(191) NOT NULL,
    amount character varying(191) NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial277 character(1)
);


ALTER TABLE public.mpesa_scheduled_disbursements OWNER TO loanapp;

--
-- Name: TABLE mpesa_scheduled_disbursements; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.mpesa_scheduled_disbursements IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.id IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.branch_id IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.member_id IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.created_by IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.mpesa_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.mpesa_number IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.amount IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.deleted_at IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.created_at IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.updated_at IS 'TRIAL';


--
-- Name: COLUMN mpesa_scheduled_disbursements.trial277; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.mpesa_scheduled_disbursements.trial277 IS 'TRIAL';


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.notifications (
    id character(36) NOT NULL,
    type character varying(191) NOT NULL,
    notifiable_type character varying(191) NOT NULL,
    notifiable_id bigint NOT NULL,
    data text NOT NULL,
    read_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial277 character(1)
);


ALTER TABLE public.notifications OWNER TO loanapp;

--
-- Name: TABLE notifications; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.notifications IS 'TRIAL';


--
-- Name: COLUMN notifications.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.id IS 'TRIAL';


--
-- Name: COLUMN notifications.type; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.type IS 'TRIAL';


--
-- Name: COLUMN notifications.notifiable_type; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.notifiable_type IS 'TRIAL';


--
-- Name: COLUMN notifications.notifiable_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.notifiable_id IS 'TRIAL';


--
-- Name: COLUMN notifications.data; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.data IS 'TRIAL';


--
-- Name: COLUMN notifications.read_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.read_at IS 'TRIAL';


--
-- Name: COLUMN notifications.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.created_at IS 'TRIAL';


--
-- Name: COLUMN notifications.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.updated_at IS 'TRIAL';


--
-- Name: COLUMN notifications.trial277; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.notifications.trial277 IS 'TRIAL';


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.oauth_access_tokens (
    id character varying(100) NOT NULL,
    client_id bigint NOT NULL,
    name character varying(191),
    scopes text,
    revoked smallint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    expires_at timestamp without time zone,
    user_id character(36),
    trial281 character(1)
);


ALTER TABLE public.oauth_access_tokens OWNER TO loanapp;

--
-- Name: TABLE oauth_access_tokens; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.oauth_access_tokens IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.id IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.client_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.client_id IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.name IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.scopes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.scopes IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.revoked; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.revoked IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.created_at IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.updated_at IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.expires_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.expires_at IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.user_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.user_id IS 'TRIAL';


--
-- Name: COLUMN oauth_access_tokens.trial281; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_access_tokens.trial281 IS 'TRIAL';


--
-- Name: oauth_auth_codes; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.oauth_auth_codes (
    id character varying(100) NOT NULL,
    client_id bigint NOT NULL,
    scopes text,
    revoked smallint NOT NULL,
    expires_at timestamp without time zone,
    user_id character varying(36),
    trial284 character(1)
);


ALTER TABLE public.oauth_auth_codes OWNER TO loanapp;

--
-- Name: TABLE oauth_auth_codes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.oauth_auth_codes IS 'TRIAL';


--
-- Name: COLUMN oauth_auth_codes.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_auth_codes.id IS 'TRIAL';


--
-- Name: COLUMN oauth_auth_codes.client_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_auth_codes.client_id IS 'TRIAL';


--
-- Name: COLUMN oauth_auth_codes.scopes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_auth_codes.scopes IS 'TRIAL';


--
-- Name: COLUMN oauth_auth_codes.revoked; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_auth_codes.revoked IS 'TRIAL';


--
-- Name: COLUMN oauth_auth_codes.expires_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_auth_codes.expires_at IS 'TRIAL';


--
-- Name: COLUMN oauth_auth_codes.user_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_auth_codes.user_id IS 'TRIAL';


--
-- Name: COLUMN oauth_auth_codes.trial284; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_auth_codes.trial284 IS 'TRIAL';


--
-- Name: oauth_clients; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.oauth_clients (
    id integer NOT NULL,
    user_id bigint,
    name character varying(191) NOT NULL,
    secret character varying(100) NOT NULL,
    redirect text NOT NULL,
    personal_access_client smallint NOT NULL,
    password_client smallint NOT NULL,
    revoked smallint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial287 character(1)
);


ALTER TABLE public.oauth_clients OWNER TO loanapp;

--
-- Name: TABLE oauth_clients; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.oauth_clients IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.id IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.user_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.user_id IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.name IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.secret; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.secret IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.redirect; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.redirect IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.personal_access_client; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.personal_access_client IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.password_client; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.password_client IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.revoked; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.revoked IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.created_at IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.updated_at IS 'TRIAL';


--
-- Name: COLUMN oauth_clients.trial287; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_clients.trial287 IS 'TRIAL';


--
-- Name: oauth_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.oauth_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_clients_id_seq OWNER TO loanapp;

--
-- Name: oauth_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.oauth_clients_id_seq OWNED BY public.oauth_clients.id;


--
-- Name: oauth_personal_access_clients; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.oauth_personal_access_clients (
    id integer NOT NULL,
    client_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial290 character(1)
);


ALTER TABLE public.oauth_personal_access_clients OWNER TO loanapp;

--
-- Name: TABLE oauth_personal_access_clients; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.oauth_personal_access_clients IS 'TRIAL';


--
-- Name: COLUMN oauth_personal_access_clients.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_personal_access_clients.id IS 'TRIAL';


--
-- Name: COLUMN oauth_personal_access_clients.client_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_personal_access_clients.client_id IS 'TRIAL';


--
-- Name: COLUMN oauth_personal_access_clients.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_personal_access_clients.created_at IS 'TRIAL';


--
-- Name: COLUMN oauth_personal_access_clients.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_personal_access_clients.updated_at IS 'TRIAL';


--
-- Name: COLUMN oauth_personal_access_clients.trial290; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_personal_access_clients.trial290 IS 'TRIAL';


--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.oauth_personal_access_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_personal_access_clients_id_seq OWNER TO loanapp;

--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNED BY public.oauth_personal_access_clients.id;


--
-- Name: oauth_refresh_tokens; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.oauth_refresh_tokens (
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked smallint NOT NULL,
    expires_at timestamp without time zone,
    trial290 character(1)
);


ALTER TABLE public.oauth_refresh_tokens OWNER TO loanapp;

--
-- Name: TABLE oauth_refresh_tokens; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.oauth_refresh_tokens IS 'TRIAL';


--
-- Name: COLUMN oauth_refresh_tokens.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_refresh_tokens.id IS 'TRIAL';


--
-- Name: COLUMN oauth_refresh_tokens.access_token_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_refresh_tokens.access_token_id IS 'TRIAL';


--
-- Name: COLUMN oauth_refresh_tokens.revoked; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_refresh_tokens.revoked IS 'TRIAL';


--
-- Name: COLUMN oauth_refresh_tokens.expires_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_refresh_tokens.expires_at IS 'TRIAL';


--
-- Name: COLUMN oauth_refresh_tokens.trial290; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.oauth_refresh_tokens.trial290 IS 'TRIAL';


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp without time zone,
    trial294 character(1)
);


ALTER TABLE public.password_resets OWNER TO loanapp;

--
-- Name: TABLE password_resets; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.password_resets IS 'TRIAL';


--
-- Name: COLUMN password_resets.email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.password_resets.email IS 'TRIAL';


--
-- Name: COLUMN password_resets.token; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.password_resets.token IS 'TRIAL';


--
-- Name: COLUMN password_resets.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.password_resets.created_at IS 'TRIAL';


--
-- Name: COLUMN password_resets.trial294; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.password_resets.trial294 IS 'TRIAL';


--
-- Name: payment_frequencies; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.payment_frequencies (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial297 character(1)
);


ALTER TABLE public.payment_frequencies OWNER TO loanapp;

--
-- Name: TABLE payment_frequencies; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.payment_frequencies IS 'TRIAL';


--
-- Name: COLUMN payment_frequencies.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_frequencies.id IS 'TRIAL';


--
-- Name: COLUMN payment_frequencies.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_frequencies.name IS 'TRIAL';


--
-- Name: COLUMN payment_frequencies.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_frequencies.display_name IS 'TRIAL';


--
-- Name: COLUMN payment_frequencies.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_frequencies.description IS 'TRIAL';


--
-- Name: COLUMN payment_frequencies.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_frequencies.deleted_at IS 'TRIAL';


--
-- Name: COLUMN payment_frequencies.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_frequencies.created_at IS 'TRIAL';


--
-- Name: COLUMN payment_frequencies.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_frequencies.updated_at IS 'TRIAL';


--
-- Name: COLUMN payment_frequencies.trial297; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_frequencies.trial297 IS 'TRIAL';


--
-- Name: payment_methods; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.payment_methods (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial300 character(1)
);


ALTER TABLE public.payment_methods OWNER TO loanapp;

--
-- Name: TABLE payment_methods; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.payment_methods IS 'TRIAL';


--
-- Name: COLUMN payment_methods.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_methods.id IS 'TRIAL';


--
-- Name: COLUMN payment_methods.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_methods.name IS 'TRIAL';


--
-- Name: COLUMN payment_methods.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_methods.display_name IS 'TRIAL';


--
-- Name: COLUMN payment_methods.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_methods.description IS 'TRIAL';


--
-- Name: COLUMN payment_methods.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_methods.deleted_at IS 'TRIAL';


--
-- Name: COLUMN payment_methods.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_methods.created_at IS 'TRIAL';


--
-- Name: COLUMN payment_methods.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_methods.updated_at IS 'TRIAL';


--
-- Name: COLUMN payment_methods.trial300; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payment_methods.trial300 IS 'TRIAL';


--
-- Name: payments; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.payments (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    member_id character varying(191),
    amount character varying(191) NOT NULL,
    method_id character varying(191),
    transaction_id character varying(191),
    payment_date date NOT NULL,
    receipt_number character varying(191),
    attachment character varying(191),
    notes character varying(191),
    cheque_number character varying(191),
    bank_name character varying(191),
    bank_branch character varying(191),
    cheque_date date,
    is_mpesa smallint,
    transaction_type character varying(191),
    trans_id character varying(191),
    trans_time character varying(191),
    business_short_code character varying(191),
    bill_ref_number character varying(191),
    invoice_number character varying(191),
    mpesa_number character varying(191),
    mpesa_first_name character varying(191),
    mpesa_middle_name character varying(191),
    mpesa_last_name character varying(191),
    org_account_balance character varying(191),
    third_party_trans_id character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial303 character(1)
);


ALTER TABLE public.payments OWNER TO loanapp;

--
-- Name: TABLE payments; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.payments IS 'TRIAL';


--
-- Name: COLUMN payments.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.id IS 'TRIAL';


--
-- Name: COLUMN payments.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.branch_id IS 'TRIAL';


--
-- Name: COLUMN payments.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.member_id IS 'TRIAL';


--
-- Name: COLUMN payments.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.amount IS 'TRIAL';


--
-- Name: COLUMN payments.method_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.method_id IS 'TRIAL';


--
-- Name: COLUMN payments.transaction_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.transaction_id IS 'TRIAL';


--
-- Name: COLUMN payments.payment_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.payment_date IS 'TRIAL';


--
-- Name: COLUMN payments.receipt_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.receipt_number IS 'TRIAL';


--
-- Name: COLUMN payments.attachment; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.attachment IS 'TRIAL';


--
-- Name: COLUMN payments.notes; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.notes IS 'TRIAL';


--
-- Name: COLUMN payments.cheque_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.cheque_number IS 'TRIAL';


--
-- Name: COLUMN payments.bank_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.bank_name IS 'TRIAL';


--
-- Name: COLUMN payments.bank_branch; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.bank_branch IS 'TRIAL';


--
-- Name: COLUMN payments.cheque_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.cheque_date IS 'TRIAL';


--
-- Name: COLUMN payments.is_mpesa; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.is_mpesa IS 'TRIAL';


--
-- Name: COLUMN payments.transaction_type; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.transaction_type IS 'TRIAL';


--
-- Name: COLUMN payments.trans_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.trans_id IS 'TRIAL';


--
-- Name: COLUMN payments.trans_time; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.trans_time IS 'TRIAL';


--
-- Name: COLUMN payments.business_short_code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.business_short_code IS 'TRIAL';


--
-- Name: COLUMN payments.bill_ref_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.bill_ref_number IS 'TRIAL';


--
-- Name: COLUMN payments.invoice_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.invoice_number IS 'TRIAL';


--
-- Name: COLUMN payments.mpesa_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.mpesa_number IS 'TRIAL';


--
-- Name: COLUMN payments.mpesa_first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.mpesa_first_name IS 'TRIAL';


--
-- Name: COLUMN payments.mpesa_middle_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.mpesa_middle_name IS 'TRIAL';


--
-- Name: COLUMN payments.mpesa_last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.mpesa_last_name IS 'TRIAL';


--
-- Name: COLUMN payments.org_account_balance; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.org_account_balance IS 'TRIAL';


--
-- Name: COLUMN payments.third_party_trans_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.third_party_trans_id IS 'TRIAL';


--
-- Name: COLUMN payments.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.created_by IS 'TRIAL';


--
-- Name: COLUMN payments.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.updated_by IS 'TRIAL';


--
-- Name: COLUMN payments.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.deleted_by IS 'TRIAL';


--
-- Name: COLUMN payments.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.deleted_at IS 'TRIAL';


--
-- Name: COLUMN payments.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.created_at IS 'TRIAL';


--
-- Name: COLUMN payments.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.updated_at IS 'TRIAL';


--
-- Name: COLUMN payments.trial303; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.payments.trial303 IS 'TRIAL';


--
-- Name: penalty_frequencies; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.penalty_frequencies (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial303 character(1)
);


ALTER TABLE public.penalty_frequencies OWNER TO loanapp;

--
-- Name: TABLE penalty_frequencies; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.penalty_frequencies IS 'TRIAL';


--
-- Name: COLUMN penalty_frequencies.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_frequencies.id IS 'TRIAL';


--
-- Name: COLUMN penalty_frequencies.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_frequencies.name IS 'TRIAL';


--
-- Name: COLUMN penalty_frequencies.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_frequencies.display_name IS 'TRIAL';


--
-- Name: COLUMN penalty_frequencies.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_frequencies.description IS 'TRIAL';


--
-- Name: COLUMN penalty_frequencies.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_frequencies.deleted_at IS 'TRIAL';


--
-- Name: COLUMN penalty_frequencies.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_frequencies.created_at IS 'TRIAL';


--
-- Name: COLUMN penalty_frequencies.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_frequencies.updated_at IS 'TRIAL';


--
-- Name: COLUMN penalty_frequencies.trial303; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_frequencies.trial303 IS 'TRIAL';


--
-- Name: penalty_types; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.penalty_types (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial307 character(1)
);


ALTER TABLE public.penalty_types OWNER TO loanapp;

--
-- Name: TABLE penalty_types; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.penalty_types IS 'TRIAL';


--
-- Name: COLUMN penalty_types.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_types.id IS 'TRIAL';


--
-- Name: COLUMN penalty_types.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_types.name IS 'TRIAL';


--
-- Name: COLUMN penalty_types.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_types.display_name IS 'TRIAL';


--
-- Name: COLUMN penalty_types.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_types.description IS 'TRIAL';


--
-- Name: COLUMN penalty_types.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_types.deleted_at IS 'TRIAL';


--
-- Name: COLUMN penalty_types.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_types.created_at IS 'TRIAL';


--
-- Name: COLUMN penalty_types.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_types.updated_at IS 'TRIAL';


--
-- Name: COLUMN penalty_types.trial307; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.penalty_types.trial307 IS 'TRIAL';


--
-- Name: permission_role; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.permission_role (
    id integer NOT NULL,
    permission_id character(36) NOT NULL,
    role_id character(36) NOT NULL,
    trial310 character(1)
);


ALTER TABLE public.permission_role OWNER TO loanapp;

--
-- Name: TABLE permission_role; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.permission_role IS 'TRIAL';


--
-- Name: COLUMN permission_role.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permission_role.id IS 'TRIAL';


--
-- Name: COLUMN permission_role.permission_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permission_role.permission_id IS 'TRIAL';


--
-- Name: COLUMN permission_role.role_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permission_role.role_id IS 'TRIAL';


--
-- Name: COLUMN permission_role.trial310; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permission_role.trial310 IS 'TRIAL';


--
-- Name: permission_role_id_seq; Type: SEQUENCE; Schema: public; Owner: loanapp
--

CREATE SEQUENCE public.permission_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_role_id_seq OWNER TO loanapp;

--
-- Name: permission_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: loanapp
--

ALTER SEQUENCE public.permission_role_id_seq OWNED BY public.permission_role.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.permissions (
    id character(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial313 character(1)
);


ALTER TABLE public.permissions OWNER TO loanapp;

--
-- Name: TABLE permissions; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.permissions IS 'TRIAL';


--
-- Name: COLUMN permissions.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permissions.id IS 'TRIAL';


--
-- Name: COLUMN permissions.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permissions.name IS 'TRIAL';


--
-- Name: COLUMN permissions.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permissions.display_name IS 'TRIAL';


--
-- Name: COLUMN permissions.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permissions.description IS 'TRIAL';


--
-- Name: COLUMN permissions.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permissions.deleted_at IS 'TRIAL';


--
-- Name: COLUMN permissions.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permissions.created_at IS 'TRIAL';


--
-- Name: COLUMN permissions.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permissions.updated_at IS 'TRIAL';


--
-- Name: COLUMN permissions.trial313; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.permissions.trial313 IS 'TRIAL';


--
-- Name: report_types; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.report_types (
    id character(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial317 character(1)
);


ALTER TABLE public.report_types OWNER TO loanapp;

--
-- Name: TABLE report_types; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.report_types IS 'TRIAL';


--
-- Name: COLUMN report_types.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.report_types.id IS 'TRIAL';


--
-- Name: COLUMN report_types.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.report_types.name IS 'TRIAL';


--
-- Name: COLUMN report_types.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.report_types.display_name IS 'TRIAL';


--
-- Name: COLUMN report_types.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.report_types.description IS 'TRIAL';


--
-- Name: COLUMN report_types.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.report_types.deleted_at IS 'TRIAL';


--
-- Name: COLUMN report_types.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.report_types.created_at IS 'TRIAL';


--
-- Name: COLUMN report_types.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.report_types.updated_at IS 'TRIAL';


--
-- Name: COLUMN report_types.trial317; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.report_types.trial317 IS 'TRIAL';


--
-- Name: roles; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.roles (
    id character(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial320 character(1)
);


ALTER TABLE public.roles OWNER TO loanapp;

--
-- Name: TABLE roles; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.roles IS 'TRIAL';


--
-- Name: COLUMN roles.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.roles.id IS 'TRIAL';


--
-- Name: COLUMN roles.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.roles.name IS 'TRIAL';


--
-- Name: COLUMN roles.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.roles.display_name IS 'TRIAL';


--
-- Name: COLUMN roles.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.roles.description IS 'TRIAL';


--
-- Name: COLUMN roles.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.roles.deleted_at IS 'TRIAL';


--
-- Name: COLUMN roles.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.roles.created_at IS 'TRIAL';


--
-- Name: COLUMN roles.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.roles.updated_at IS 'TRIAL';


--
-- Name: COLUMN roles.trial320; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.roles.trial320 IS 'TRIAL';


--
-- Name: sms_settings; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.sms_settings (
    id character varying(36) NOT NULL,
    url character varying(191),
    username character varying(191),
    password character varying(191),
    created_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial320 character(1)
);


ALTER TABLE public.sms_settings OWNER TO loanapp;

--
-- Name: TABLE sms_settings; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.sms_settings IS 'TRIAL';


--
-- Name: COLUMN sms_settings.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.id IS 'TRIAL';


--
-- Name: COLUMN sms_settings.url; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.url IS 'TRIAL';


--
-- Name: COLUMN sms_settings.username; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.username IS 'TRIAL';


--
-- Name: COLUMN sms_settings.password; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.password IS 'TRIAL';


--
-- Name: COLUMN sms_settings.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.created_by IS 'TRIAL';


--
-- Name: COLUMN sms_settings.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.deleted_at IS 'TRIAL';


--
-- Name: COLUMN sms_settings.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.created_at IS 'TRIAL';


--
-- Name: COLUMN sms_settings.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.updated_at IS 'TRIAL';


--
-- Name: COLUMN sms_settings.trial320; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_settings.trial320 IS 'TRIAL';


--
-- Name: sms_templates; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.sms_templates (
    id character(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    body character varying(191) NOT NULL,
    tags character varying(191),
    created_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial323 character(1)
);


ALTER TABLE public.sms_templates OWNER TO loanapp;

--
-- Name: TABLE sms_templates; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.sms_templates IS 'TRIAL';


--
-- Name: COLUMN sms_templates.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.id IS 'TRIAL';


--
-- Name: COLUMN sms_templates.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.name IS 'TRIAL';


--
-- Name: COLUMN sms_templates.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.display_name IS 'TRIAL';


--
-- Name: COLUMN sms_templates.body; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.body IS 'TRIAL';


--
-- Name: COLUMN sms_templates.tags; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.tags IS 'TRIAL';


--
-- Name: COLUMN sms_templates.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.created_by IS 'TRIAL';


--
-- Name: COLUMN sms_templates.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.deleted_at IS 'TRIAL';


--
-- Name: COLUMN sms_templates.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.created_at IS 'TRIAL';


--
-- Name: COLUMN sms_templates.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.updated_at IS 'TRIAL';


--
-- Name: COLUMN sms_templates.trial323; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.sms_templates.trial323 IS 'TRIAL';


--
-- Name: transaction_types; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.transaction_types (
    id character varying(36) NOT NULL,
    code character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial326 character(1)
);


ALTER TABLE public.transaction_types OWNER TO loanapp;

--
-- Name: TABLE transaction_types; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.transaction_types IS 'TRIAL';


--
-- Name: COLUMN transaction_types.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transaction_types.id IS 'TRIAL';


--
-- Name: COLUMN transaction_types.code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transaction_types.code IS 'TRIAL';


--
-- Name: COLUMN transaction_types.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transaction_types.description IS 'TRIAL';


--
-- Name: COLUMN transaction_types.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transaction_types.deleted_at IS 'TRIAL';


--
-- Name: COLUMN transaction_types.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transaction_types.created_at IS 'TRIAL';


--
-- Name: COLUMN transaction_types.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transaction_types.updated_at IS 'TRIAL';


--
-- Name: COLUMN transaction_types.trial326; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transaction_types.trial326 IS 'TRIAL';


--
-- Name: transactions; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.transactions (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    fiscal_period_id character varying(36),
    loan_id character varying(36) NOT NULL,
    payment_id character varying(36),
    amount character varying(191) NOT NULL,
    transaction_date date NOT NULL,
    loan_interest_repayments_id character varying(36),
    loan_principal_repayments_id character varying(36),
    loan_penalties_id character varying(36),
    transaction_type character varying(17),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial330 character(1)
);


ALTER TABLE public.transactions OWNER TO loanapp;

--
-- Name: TABLE transactions; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.transactions IS 'TRIAL';


--
-- Name: COLUMN transactions.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.id IS 'TRIAL';


--
-- Name: COLUMN transactions.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.branch_id IS 'TRIAL';


--
-- Name: COLUMN transactions.fiscal_period_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.fiscal_period_id IS 'TRIAL';


--
-- Name: COLUMN transactions.loan_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.loan_id IS 'TRIAL';


--
-- Name: COLUMN transactions.payment_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.payment_id IS 'TRIAL';


--
-- Name: COLUMN transactions.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.amount IS 'TRIAL';


--
-- Name: COLUMN transactions.transaction_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.transaction_date IS 'TRIAL';


--
-- Name: COLUMN transactions.loan_interest_repayments_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.loan_interest_repayments_id IS 'TRIAL';


--
-- Name: COLUMN transactions.loan_principal_repayments_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.loan_principal_repayments_id IS 'TRIAL';


--
-- Name: COLUMN transactions.loan_penalties_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.loan_penalties_id IS 'TRIAL';


--
-- Name: COLUMN transactions.transaction_type; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.transaction_type IS 'TRIAL';


--
-- Name: COLUMN transactions.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.created_by IS 'TRIAL';


--
-- Name: COLUMN transactions.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.updated_by IS 'TRIAL';


--
-- Name: COLUMN transactions.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.deleted_by IS 'TRIAL';


--
-- Name: COLUMN transactions.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.deleted_at IS 'TRIAL';


--
-- Name: COLUMN transactions.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.created_at IS 'TRIAL';


--
-- Name: COLUMN transactions.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.updated_at IS 'TRIAL';


--
-- Name: COLUMN transactions.trial330; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.transactions.trial330 IS 'TRIAL';


--
-- Name: users; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.users (
    id character varying(36) NOT NULL,
    branch_id character varying(36) NOT NULL,
    first_name character varying(191) NOT NULL,
    middle_name character varying(191),
    last_name character varying(191),
    photo character varying(191),
    postal_code character varying(191),
    postal_address character varying(191),
    physical_address character varying(191),
    city character varying(191),
    country character varying(191),
    role_id character(36) NOT NULL,
    employee_id character(36),
    phone character(36),
    email character varying(191) NOT NULL,
    password character varying(60) NOT NULL,
    confirmed smallint DEFAULT 0 NOT NULL,
    confirmation_code character varying(191),
    created_by character varying(36),
    updated_by character varying(36),
    deleted_by character varying(36),
    remember_token character varying(100),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial330 character(1)
);


ALTER TABLE public.users OWNER TO loanapp;

--
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.users IS 'TRIAL';


--
-- Name: COLUMN users.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.id IS 'TRIAL';


--
-- Name: COLUMN users.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.branch_id IS 'TRIAL';


--
-- Name: COLUMN users.first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.first_name IS 'TRIAL';


--
-- Name: COLUMN users.middle_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.middle_name IS 'TRIAL';


--
-- Name: COLUMN users.last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.last_name IS 'TRIAL';


--
-- Name: COLUMN users.photo; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.photo IS 'TRIAL';


--
-- Name: COLUMN users.postal_code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.postal_code IS 'TRIAL';


--
-- Name: COLUMN users.postal_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.postal_address IS 'TRIAL';


--
-- Name: COLUMN users.physical_address; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.physical_address IS 'TRIAL';


--
-- Name: COLUMN users.city; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.city IS 'TRIAL';


--
-- Name: COLUMN users.country; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.country IS 'TRIAL';


--
-- Name: COLUMN users.role_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.role_id IS 'TRIAL';


--
-- Name: COLUMN users.employee_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.employee_id IS 'TRIAL';


--
-- Name: COLUMN users.phone; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.phone IS 'TRIAL';


--
-- Name: COLUMN users.email; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.email IS 'TRIAL';


--
-- Name: COLUMN users.password; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.password IS 'TRIAL';


--
-- Name: COLUMN users.confirmed; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.confirmed IS 'TRIAL';


--
-- Name: COLUMN users.confirmation_code; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.confirmation_code IS 'TRIAL';


--
-- Name: COLUMN users.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.created_by IS 'TRIAL';


--
-- Name: COLUMN users.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.updated_by IS 'TRIAL';


--
-- Name: COLUMN users.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.deleted_by IS 'TRIAL';


--
-- Name: COLUMN users.remember_token; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.remember_token IS 'TRIAL';


--
-- Name: COLUMN users.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.deleted_at IS 'TRIAL';


--
-- Name: COLUMN users.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.created_at IS 'TRIAL';


--
-- Name: COLUMN users.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.updated_at IS 'TRIAL';


--
-- Name: COLUMN users.trial330; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.users.trial330 IS 'TRIAL';


--
-- Name: withdrawals; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.withdrawals (
    id character(36) NOT NULL,
    branch_id character varying(191) NOT NULL,
    member_id character varying(191) NOT NULL,
    amount character varying(191) NOT NULL,
    withdrawal_date character varying(191) NOT NULL,
    method_id character varying(191) NOT NULL,
    withdrawal_number character varying(191) NOT NULL,
    withdrawal_charges character varying(191),
    balance_before_withdrawal character varying(191),
    balance_after_withdrawal character varying(191),
    status character varying(191),
    mpesa_number character varying(191),
    first_name character varying(191),
    last_name character varying(191),
    cheque_number character varying(191),
    bank_name character varying(191),
    bank_branch character varying(191),
    cheque_date date,
    created_by character varying(191),
    updated_by character varying(191),
    deleted_by character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial333 character(1)
);


ALTER TABLE public.withdrawals OWNER TO loanapp;

--
-- Name: TABLE withdrawals; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.withdrawals IS 'TRIAL';


--
-- Name: COLUMN withdrawals.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.id IS 'TRIAL';


--
-- Name: COLUMN withdrawals.branch_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.branch_id IS 'TRIAL';


--
-- Name: COLUMN withdrawals.member_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.member_id IS 'TRIAL';


--
-- Name: COLUMN withdrawals.amount; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.amount IS 'TRIAL';


--
-- Name: COLUMN withdrawals.withdrawal_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.withdrawal_date IS 'TRIAL';


--
-- Name: COLUMN withdrawals.method_id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.method_id IS 'TRIAL';


--
-- Name: COLUMN withdrawals.withdrawal_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.withdrawal_number IS 'TRIAL';


--
-- Name: COLUMN withdrawals.withdrawal_charges; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.withdrawal_charges IS 'TRIAL';


--
-- Name: COLUMN withdrawals.balance_before_withdrawal; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.balance_before_withdrawal IS 'TRIAL';


--
-- Name: COLUMN withdrawals.balance_after_withdrawal; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.balance_after_withdrawal IS 'TRIAL';


--
-- Name: COLUMN withdrawals.status; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.status IS 'TRIAL';


--
-- Name: COLUMN withdrawals.mpesa_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.mpesa_number IS 'TRIAL';


--
-- Name: COLUMN withdrawals.first_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.first_name IS 'TRIAL';


--
-- Name: COLUMN withdrawals.last_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.last_name IS 'TRIAL';


--
-- Name: COLUMN withdrawals.cheque_number; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.cheque_number IS 'TRIAL';


--
-- Name: COLUMN withdrawals.bank_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.bank_name IS 'TRIAL';


--
-- Name: COLUMN withdrawals.bank_branch; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.bank_branch IS 'TRIAL';


--
-- Name: COLUMN withdrawals.cheque_date; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.cheque_date IS 'TRIAL';


--
-- Name: COLUMN withdrawals.created_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.created_by IS 'TRIAL';


--
-- Name: COLUMN withdrawals.updated_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.updated_by IS 'TRIAL';


--
-- Name: COLUMN withdrawals.deleted_by; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.deleted_by IS 'TRIAL';


--
-- Name: COLUMN withdrawals.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.deleted_at IS 'TRIAL';


--
-- Name: COLUMN withdrawals.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.created_at IS 'TRIAL';


--
-- Name: COLUMN withdrawals.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.updated_at IS 'TRIAL';


--
-- Name: COLUMN withdrawals.trial333; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.withdrawals.trial333 IS 'TRIAL';


--
-- Name: witness_types; Type: TABLE; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE TABLE public.witness_types (
    id character varying(36) NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    description character varying(191),
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial336 character(1)
);


ALTER TABLE public.witness_types OWNER TO loanapp;

--
-- Name: TABLE witness_types; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON TABLE public.witness_types IS 'TRIAL';


--
-- Name: COLUMN witness_types.id; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.witness_types.id IS 'TRIAL';


--
-- Name: COLUMN witness_types.name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.witness_types.name IS 'TRIAL';


--
-- Name: COLUMN witness_types.display_name; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.witness_types.display_name IS 'TRIAL';


--
-- Name: COLUMN witness_types.description; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.witness_types.description IS 'TRIAL';


--
-- Name: COLUMN witness_types.deleted_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.witness_types.deleted_at IS 'TRIAL';


--
-- Name: COLUMN witness_types.created_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.witness_types.created_at IS 'TRIAL';


--
-- Name: COLUMN witness_types.updated_at; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.witness_types.updated_at IS 'TRIAL';


--
-- Name: COLUMN witness_types.trial336; Type: COMMENT; Schema: public; Owner: loanapp
--

COMMENT ON COLUMN public.witness_types.trial336 IS 'TRIAL';


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.account_ledgers ALTER COLUMN id SET DEFAULT nextval('public.account_ledgers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.account_members ALTER COLUMN id SET DEFAULT nextval('public.account_members_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.asset_loan_applications ALTER COLUMN id SET DEFAULT nextval('public.asset_loan_applications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.failed_logins ALTER COLUMN id SET DEFAULT nextval('public.failed_logins_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.journals ALTER COLUMN id SET DEFAULT nextval('public.journals_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.login_events ALTER COLUMN id SET DEFAULT nextval('public.login_events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.mpesa_bulk_payments ALTER COLUMN id SET DEFAULT nextval('public.mpesa_bulk_payments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.mpesa_custom_sends ALTER COLUMN id SET DEFAULT nextval('public.mpesa_custom_sends_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.oauth_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_clients_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.oauth_personal_access_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_personal_access_clients_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.permission_role ALTER COLUMN id SET DEFAULT nextval('public.permission_role_id_seq'::regclass);


--
-- Data for Name: account_classes; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.account_classes (id, name, category, closed_on, deleted_at, created_at, updated_at, trial117) FROM stdin;
3fa9e173-40db-4d79-b9b0-b1bee0168259	INCOME	CR	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
bf239de1-d932-4333-9e39-40e44c221c40	LIABILITY	CR	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
ee813810-8566-4c16-b2cf-8159be132cba	ASSET	DR	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
f09bfb8b-903c-42f5-aaac-1cab03d8cbb2	EXPENDITURE	DR	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: account_ledgers; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.account_ledgers (id, account_id, journal_id, created_at, amount, trial170) FROM stdin;
1	5619da7c-ee10-479b-a1b0-4fed9fbdc989	1	2021-07-07 22:50:25	10000	T
2	acaf7f43-e08e-4f54-a720-28d1dcc9b715	1	2021-07-07 22:50:25	-10000	T
4	acaf7f43-e08e-4f54-a720-28d1dcc9b715	2	2021-07-07 22:50:25	10000	T
5	46e89c0c-c45d-4232-ac32-114acd79bf89	2	2021-07-07 22:50:25	-10000	T
7	46e89c0c-c45d-4232-ac32-114acd79bf89	3	2021-07-07 22:50:25	1000	T
8	14a0aef8-5649-48e5-a484-bbd688570169	3	2021-07-07 22:50:25	-1000	T
10	5619da7c-ee10-479b-a1b0-4fed9fbdc989	4	2021-07-07 22:50:25	500	T
11	31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	4	2021-07-07 22:50:25	-500	T
13	46e89c0c-c45d-4232-ac32-114acd79bf89	5	2021-07-08 00:56:53	1000	T
14	acaf7f43-e08e-4f54-a720-28d1dcc9b715	5	2021-07-08 00:56:53	-1000	T
16	acaf7f43-e08e-4f54-a720-28d1dcc9b715	6	2021-07-08 01:54:57	200	T
17	46e89c0c-c45d-4232-ac32-114acd79bf89	6	2021-07-08 01:54:57	-200	T
19	fadedd4b-3446-46bf-b3a3-faf67616f3eb	7	2021-07-08 02:07:43	20000	T
20	acaf7f43-e08e-4f54-a720-28d1dcc9b715	7	2021-07-08 02:07:43	-20000	T
22	acaf7f43-e08e-4f54-a720-28d1dcc9b715	8	2021-07-08 02:07:43	20000	T
23	c15dc7d4-65ad-41b0-967a-41f433b57df2	8	2021-07-08 02:07:43	-20000	T
25	c15dc7d4-65ad-41b0-967a-41f433b57df2	9	2021-07-08 02:07:43	500	T
26	14a0aef8-5649-48e5-a484-bbd688570169	9	2021-07-08 02:07:43	-500	T
28	fadedd4b-3446-46bf-b3a3-faf67616f3eb	10	2021-07-08 02:07:43	2000	T
29	31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	10	2021-07-08 02:07:43	-2000	T
31	acaf7f43-e08e-4f54-a720-28d1dcc9b715	11	2021-07-08 18:48:35	100	T
32	c15dc7d4-65ad-41b0-967a-41f433b57df2	11	2021-07-08 18:48:35	-100	T
34	41475ce1-e224-4295-a7e6-b87111ec9a85	12	2021-07-08 18:56:09	15000	T
35	56e0ed90-74d1-4227-bbdd-a55fc6336805	12	2021-07-08 18:56:09	-15000	T
37	56e0ed90-74d1-4227-bbdd-a55fc6336805	13	2021-07-08 18:56:09	15000	T
38	a1820689-a0b8-457f-ab6c-3c2f19c913f6	13	2021-07-08 18:56:09	-15000	T
40	a1820689-a0b8-457f-ab6c-3c2f19c913f6	14	2021-07-08 18:56:09	500	T
41	14a0aef8-5649-48e5-a484-bbd688570169	14	2021-07-08 18:56:09	-500	T
43	41475ce1-e224-4295-a7e6-b87111ec9a85	15	2021-07-08 18:56:09	1500	T
44	31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	15	2021-07-08 18:56:09	-1500	T
46	44528f21-a542-4f76-8aa3-dde8d9065983	16	2021-07-08 18:56:30	5000	T
47	56e0ed90-74d1-4227-bbdd-a55fc6336805	16	2021-07-08 18:56:30	-5000	T
49	56e0ed90-74d1-4227-bbdd-a55fc6336805	17	2021-07-08 18:56:30	5000	T
50	5a2f45d0-3929-464b-9429-39dc7d3e8ad8	17	2021-07-08 18:56:30	-5000	T
52	5a2f45d0-3929-464b-9429-39dc7d3e8ad8	18	2021-07-08 18:56:30	100	T
53	14a0aef8-5649-48e5-a484-bbd688570169	18	2021-07-08 18:56:30	-100	T
55	44528f21-a542-4f76-8aa3-dde8d9065983	19	2021-07-08 18:56:30	300	T
56	31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	19	2021-07-08 18:56:30	-300	T
58	5a2f45d0-3929-464b-9429-39dc7d3e8ad8	20	2021-07-09 09:25:47	121	T
59	56e0ed90-74d1-4227-bbdd-a55fc6336805	20	2021-07-09 09:25:47	-121	T
61	acaf7f43-e08e-4f54-a720-28d1dcc9b715	21	2021-07-09 09:38:07	454545	T
62	5ea628ba-7a3f-4ff6-89f7-92c1101d037d	21	2021-07-09 09:38:07	-454545	T
\.


--
-- Name: account_ledgers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.account_ledgers_id_seq', 62, true);


--
-- Data for Name: account_members; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.account_members (id, account_id, member_id, created_at, updated_at, trial173) FROM stdin;
\.


--
-- Name: account_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.account_members_id_seq', 1, false);


--
-- Data for Name: account_statuses; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.account_statuses (id, name, description, deleted_at, created_at, updated_at, trial176) FROM stdin;
\.


--
-- Data for Name: account_types; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.account_types (id, account_class_id, name, code, description, deleted_at, created_at, updated_at, trial179) FROM stdin;
056a8155-4595-4ac0-a3b5-310bb13b5cb1	3fa9e173-40db-4d79-b9b0-b1bee0168259	LENDING ACTIVITY	400	LENDING ACTIVITY	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
795152f7-61bc-470f-bf63-81bf385483c7	bf239de1-d932-4333-9e39-40e44c221c40	MEMBER DEPOSIT	700	MEMBER DEPOSIT	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
7c2870f4-dbf2-4ee8-a409-c7d7f27d251a	ee813810-8566-4c16-b2cf-8159be132cba	FIXED ASSET	200	FIXED ASSET	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
823db40a-e27a-4dcc-880c-bfd9a0e6b0ef	ee813810-8566-4c16-b2cf-8159be132cba	CURRENT ASSET	300	CURRENT ASSET	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
8acc9b09-0881-4a6f-ab20-306c13fe1cd6	ee813810-8566-4c16-b2cf-8159be132cba	LOAN RECEIVABLE	500	LOAN RECEIVABLE	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
ebdd0915-6b76-4a80-9abf-0b34c6e52639	f09bfb8b-903c-42f5-aaac-1cab03d8cbb2	EXPENSE	600	EXPENSE	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
f00ec095-bc4d-422e-ba88-ab5bb5d997bd	bf239de1-d932-4333-9e39-40e44c221c40	CAPITAL	100	CAPITAL	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.accounts (id, branch_id, account_code, account_number, account_name, account_type_id, account_status_id, other_details, closed_on, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial183) FROM stdin;
14a0aef8-5649-48e5-a484-bbd688570169	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	403	MN-0007	SERVICE FEE ACCOUNT	056a8155-4595-4ac0-a3b5-310bb13b5cb1	\N	\N	\N	\N	\N	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
2365a904-fd19-48c2-b9a2-ec35a22b1b7f	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	302	MN-0002	MPESA ACCOUNT	823db40a-e27a-4dcc-880c-bfd9a0e6b0ef	\N	\N	\N	\N	\N	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
2718dc16-b189-403a-9d4d-d77480fdffb5	7712fe48-9226-42b1-82be-e6afcf814c8f	101	55667-0004	CAPITAL ACCOUNT	f00ec095-bc4d-422e-ba88-ab5bb5d997bd	\N	\N	\N	\N	\N	\N	\N	2021-07-09 22:08:46	2021-07-09 22:08:46	T
31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	402	MN-0006	INTEREST ACCOUNT	056a8155-4595-4ac0-a3b5-310bb13b5cb1	\N	\N	\N	\N	\N	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
361b84f9-4c62-4f01-9431-2a5b4edf836c	7712fe48-9226-42b1-82be-e6afcf814c8f	403	55667-0007	SERVICE FEE ACCOUNT	056a8155-4595-4ac0-a3b5-310bb13b5cb1	\N	\N	\N	\N	\N	\N	\N	2021-07-09 22:08:46	2021-07-09 22:08:46	T
3e82cb43-169b-49ad-a101-cdb43bf136a7	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	700	MN202179507	5abdb0d4-b502-4b95-8789-2fa80dd481b4	795152f7-61bc-470f-bf63-81bf385483c7	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-10 07:25:46	2021-07-10 07:25:46	T
41475ce1-e224-4295-a7e6-b87111ec9a85	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	500	LN0003	987d1299-e007-401a-9149-e726ee099883	8acc9b09-0881-4a6f-ab20-306c13fe1cd6	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:09	2021-07-09 07:26:09	T
44528f21-a542-4f76-8aa3-dde8d9065983	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	500	LN0004	34362a3d-0c87-4d90-b096-2eff987d91e1	8acc9b09-0881-4a6f-ab20-306c13fe1cd6	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:30	2021-07-09 07:26:30	T
46e89c0c-c45d-4232-ac32-114acd79bf89	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	700	MN202177379	2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5	795152f7-61bc-470f-bf63-81bf385483c7	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:14:17	2021-07-08 11:14:17	T
5619da7c-ee10-479b-a1b0-4fed9fbdc989	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	500	LN0001	adc82db1-ca25-401a-a2d9-671a7122fd3c	8acc9b09-0881-4a6f-ab20-306c13fe1cd6	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:20:25	2021-07-08 11:20:25	T
56e0ed90-74d1-4227-bbdd-a55fc6336805	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	301	MN-0001	CASH ACCOUNT	823db40a-e27a-4dcc-880c-bfd9a0e6b0ef	\N	\N	\N	\N	\N	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
5a2f45d0-3929-464b-9429-39dc7d3e8ad8	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	700	MN202178783	56c5bd71-ee24-4412-8569-4b22baa35dfd	795152f7-61bc-470f-bf63-81bf385483c7	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:22:37	2021-07-09 07:22:37	T
5ea628ba-7a3f-4ff6-89f7-92c1101d037d	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	101	MN-0004	CAPITAL ACCOUNT	f00ec095-bc4d-422e-ba88-ab5bb5d997bd	\N	\N	\N	\N	\N	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
613ff45a-2d1f-4bc7-ae21-76e99ba7823b	7712fe48-9226-42b1-82be-e6afcf814c8f	302	55667-0002	MPESA ACCOUNT	823db40a-e27a-4dcc-880c-bfd9a0e6b0ef	\N	\N	\N	\N	\N	\N	\N	2021-07-09 22:08:46	2021-07-09 22:08:46	T
6306a265-9ce5-487c-be93-8f17e5b7c49d	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	401	MN-0005	PENALTY ACCOUNT	056a8155-4595-4ac0-a3b5-310bb13b5cb1	\N	\N	\N	\N	\N	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
9aaeae11-0be8-4c85-aec5-314284b8d794	7712fe48-9226-42b1-82be-e6afcf814c8f	303	55667-0003	BANK ACCOUNT	823db40a-e27a-4dcc-880c-bfd9a0e6b0ef	\N	\N	\N	\N	\N	\N	\N	2021-07-09 22:08:46	2021-07-09 22:08:46	T
9d3c3268-0c0f-4123-b54b-06049a9594f8	7712fe48-9226-42b1-82be-e6afcf814c8f	401	55667-0005	PENALTY ACCOUNT	056a8155-4595-4ac0-a3b5-310bb13b5cb1	\N	\N	\N	\N	\N	\N	\N	2021-07-09 22:08:46	2021-07-09 22:08:46	T
a1820689-a0b8-457f-ab6c-3c2f19c913f6	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	700	MN202178752	ffa102d3-0a0b-43d6-a84c-fac93bdad808	795152f7-61bc-470f-bf63-81bf385483c7	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:49:08	2021-07-08 14:49:08	T
a2cad2b1-beda-47b8-a8cd-6e26618ee3a1	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	601	MN202179009	EXP433	ebdd0915-6b76-4a80-9abf-0b34c6e52639	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 22:10:14	2021-07-09 22:10:14	T
acaf7f43-e08e-4f54-a720-28d1dcc9b715	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	303	MN-0003	BANK ACCOUNT	823db40a-e27a-4dcc-880c-bfd9a0e6b0ef	\N	\N	\N	\N	\N	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
c15dc7d4-65ad-41b0-967a-41f433b57df2	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	700	MN202178859	c3726c01-8614-4f71-84f7-dffd15ce8700	795152f7-61bc-470f-bf63-81bf385483c7	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:33:45	2021-07-08 14:33:45	T
d6249fca-6f1e-484b-a7fd-9f9d61388ae6	7712fe48-9226-42b1-82be-e6afcf814c8f	301	55667-0001	CASH ACCOUNT	823db40a-e27a-4dcc-880c-bfd9a0e6b0ef	\N	\N	\N	\N	\N	\N	\N	2021-07-09 22:08:46	2021-07-09 22:08:46	T
d6c3f2a6-6afe-4a1e-bb49-87086fc137fc	7712fe48-9226-42b1-82be-e6afcf814c8f	402	55667-0006	INTEREST ACCOUNT	056a8155-4595-4ac0-a3b5-310bb13b5cb1	\N	\N	\N	\N	\N	\N	\N	2021-07-09 22:08:46	2021-07-09 22:08:46	T
fadedd4b-3446-46bf-b3a3-faf67616f3eb	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	500	LN0002	029a31d2-c011-45d9-b9d9-733f37d2f4b6	8acc9b09-0881-4a6f-ab20-306c13fe1cd6	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:37:43	2021-07-08 14:37:43	T
\.


--
-- Data for Name: asset_loan_applications; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.asset_loan_applications (id, asset_id, loan_application_id, trial183) FROM stdin;
\.


--
-- Name: asset_loan_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.asset_loan_applications_id_seq', 1, false);


--
-- Data for Name: asset_photos; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.asset_photos (id, asset_id, title, description, date_taken, url, notes, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial186) FROM stdin;
\.


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.assets (id, branch_id, member_id, asset_number, title, description, valuation_date, valued_by, valuer_phone, valuation_amount, location, registration_number, registered_to, condition, notes, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial189) FROM stdin;
85503919-8fa7-4d07-87ca-f738ec381bdd	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5	20217745	Car	Car - Honda	2021-07-07	BP	5555555555	20000	Naperville	ABC123	BP	New	OK	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:19:54	2021-07-08 11:19:54	T
db98169f-d6a6-4aba-9721-4d1008368203	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	ffa102d3-0a0b-43d6-a84c-fac93bdad808	20217869	House	house	2021-07-08	admin	6757655	100000	chicago	jgu7476	member 3	new	checked	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:51:56	2021-07-08 14:51:56	T
\.


--
-- Data for Name: borrower_statuses; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.borrower_statuses (id, name, description, deleted_at, created_at, updated_at, trial192) FROM stdin;
7c6f7680-5771-4d0a-9833-7c6e4bf3bd33	Associate	Associate-test	\N	2021-07-08 11:23:09	2021-07-08 11:23:09	T
\.


--
-- Data for Name: borrowers; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.borrowers (id, branch_id, member_id, credit_score, borrower_status_id, witness_type_id, witness_first_name, witness_last_name, witness_country, witness_city, witness_national_id, witness_phone, witness_email, witness_postal_address, witness_residential_address, notes, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial196) FROM stdin;
\.


--
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.branches (id, name, location, description, country, county, town, address, branch_code, deleted_at, created_at, updated_at, trial199) FROM stdin;
7712fe48-9226-42b1-82be-e6afcf814c8f	TYU	FGFGFFG	ERERE	\N	\N	\N	ERERE	55667	\N	2021-07-09 22:08:46	2021-07-09 22:08:46	T
ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	Main	\N	\N	\N	\N	\N	\N	MN	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: capitals; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.capitals (id, branch_id, method_id, fiscal_year_id, amount, capital_date, description, created_by, deleted_at, created_at, updated_at, trial199) FROM stdin;
aeca1af8-b1cd-4ef4-be12-5e28e2b36445	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	454545	2021-07-09	FDD3434	\N	\N	2021-07-09 22:08:07	2021-07-09 22:08:07	T
\.


--
-- Data for Name: communication_settings; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.communication_settings (id, name, display_name, email_template, sms_template, deleted_at, created_at, updated_at, trial202) FROM stdin;
06b32e27-39ca-4271-9cfc-a4a31dad19ce	new_member_welcome	New Member Welcome	1	0	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
08333b7a-8bf7-4518-a1f5-b37883037f0f	payment_received	Payment Received	1	1	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
3c5df6ff-147d-463e-85ef-fdc9ffc18063	new_loan_application	New Loan Application	1	1	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
5b61d3c1-9372-4d73-b0b8-168d0f8d365f	system_summary	System Summary	0	0	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
63b6c4f9-1af7-4d97-8be2-5ac1226f14f4	loan_application_approved	Loan Application Approved	1	1	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
a40ecfba-4c2d-4beb-ab83-dec1f1b93dfe	loan_application_rejected	Loan Application Rejected	1	1	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
bd9afd3c-cd7e-4bb6-8ede-a1926113fb9e	reset_password	Reset Password	1	0	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
f67203a1-7b97-48b9-871a-51e268e0548d	new_user_welcome	New User Welcome	1	0	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: email_settings; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.email_settings (id, protocol, smpt_host, smpt_username, smpt_password, smpt_port, mail_gun_domain, mail_gun_secret, mandrill_secret, from_name, from_email, deleted_at, created_at, updated_at, trial205) FROM stdin;
107ffa47-c55b-4080-ab80-8ceb9ec937b7	smtp	sendmail.gmail.com	gmasdfa@gmail.com	dsfasdf	222						\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.email_templates (id, name, display_name, subject, body, tags, created_by, deleted_at, created_at, updated_at, trial209) FROM stdin;
509416fd-587f-41c7-b211-cda1f9f0d5fb	payment_received	Payment Received	Payment Received.	We have received your payment of {amount}. Thank you.	{first_name}, {middle_name}, {last_name}, {amount}, {payment_date}, {phone}, {receipt_number}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
584180be-2bb0-4915-bf75-b2931eabe8ab	password_reset	Password Reset	Password Reset	We received a request to reset your password. Below is a code to confirm this reset. {password_reset_code}	{first_name}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
58970446-76d2-4320-9d1d-c8037ca45223	new_member_welcome	New Member Welcome	New member Welcome	Hi {first_name}, Welcome.	{first_name}, {middle_name}, {last_name}, {phone}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
740405d5-12a5-4fcb-9bc9-cc24687e6f7c	system_summary	System Summary	System Summary	 See data ...		\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
b828c7f6-f48d-4c09-ad89-0a9d96ab5770	loan_application_approved	Loan Application Approved	Loan Application Review	<p>Congratulations {first_name}. Your loan Application - {loan_reference_number} has been approved for {amount_applied}.</p>	{first_name}, {middle_name}, {last_name}, {phone}, {repayment_period}, {loan_type}, {interest_rate}, {amount_applied}, {loan_reference_number}, {repayment_period}, {start_date}	\N	\N	2021-07-08 07:16:11	2021-07-08 14:56:50	T
d0c395f4-4336-406c-876b-33b65cb1f630	loan_application_rejected	Loan Application Rejected	Loan Application Review	Unfortunately. Your Loan Application has been rejected.	{first_name}, {middle_name}, {last_name}, {phone}, {amount_applied}, {rejection_notes}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
e178877b-d176-4465-9495-7fbfaec9a353	new_loan_application	New Loan Application	New Loan Application	We have received  your loan application. Our staff will review and communicate.	{first_name}, {middle_name}, {last_name}, {phone}, {amount_applied}, {repayment_period}, {loan_type}, {interest_rate}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
fc666434-fd77-4761-b8e9-ce25e9098fe5	new_user_welcome	New User Welcome	New user Welcome	Hi {first_name}, Welcome.	{first_name}, {middle_name}, {last_name}, {phone}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.employees (id, branch_id, employee_number, first_name, last_name, salutation, email, telephone_number, profile_picture, national_id_image, country, county, city, address, postal_code, job_group, nhif_number, nssf_number, gender, kra_pin, national_id_number, passport_number, designation_id, department_id, birth_day, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial212) FROM stdin;
\.


--
-- Data for Name: expense_categories; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.expense_categories (id, account_type_id, name, description, deleted_at, created_at, updated_at, trial212) FROM stdin;
\.


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.expenses (id, branch_id, category_id, title, amount, expense_date, attachment, notes, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial215) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at, trial219) FROM stdin;
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Data for Name: failed_logins; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.failed_logins (id, user_id, email, user_agent, ip_address, created_at, updated_at, trial222) FROM stdin;
1	e534e550-c8ab-4c60-99f5-632027518f95	admin@admin.com	Symfony	127.0.0.1	2021-07-09 00:58:59	2021-07-09 00:58:59	T
\.


--
-- Name: failed_logins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.failed_logins_id_seq', 1, true);


--
-- Data for Name: finance_statements; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.finance_statements (id, name, display_name, description, deleted_at, created_at, updated_at, trial225) FROM stdin;
0296e0ec-9939-4b50-a159-c440935be9da	trial_balance	Trial balance	Trial balance	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
9965a819-ab6f-4e62-9030-6130f973a389	income_statement	Income Statement	Income Statement	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: fiscal_periods; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.fiscal_periods (id, start_on, end_on, closed_on, deleted_at, created_at, updated_at, trial225) FROM stdin;
\.


--
-- Data for Name: general_settings; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.general_settings (id, business_name, business_type, email, currency, phone, physical_address, postal_address, postal_code, logo, favicon, date_format, amount_thousand_separator, amount_decimal_separator, amount_decimal, deleted_at, created_at, updated_at, trial228) FROM stdin;
b002a213-645f-42c9-ba99-6c634bfcb565	KYB - Infy	Finance	devendra@bizofit.com	$	+6305555555	EIWIOEUI	SEWIOWIO	94934839	Zoom-Background_1625687463.jpg	\N	d-m-Y	,	.	2	\N	2021-07-08 07:16:11	2021-07-09 22:07:45	T
\.


--
-- Data for Name: guarantors; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.guarantors (id, branch_id, member_id, loan_application_id, notes, guarantee_amount, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial232) FROM stdin;
17e6e6a9-9922-41a3-bfad-523912cacedd	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5	9afac841-f7c3-45b0-b309-8b853b241bf9	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:18:20	2021-07-08 11:18:20	T
251a10ce-699e-4990-b872-facc27ac8d5d	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	c3726c01-8614-4f71-84f7-dffd15ce8700	fe61e23c-b478-4c38-9454-522d2d8401ec	member guarantor notes	\N	e534e550-c8ab-4c60-99f5-632027518f95	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	2021-07-08 14:50:19	2021-07-08 14:50:34	T
513896f8-c421-40de-b776-a808cbd992a4	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	c3726c01-8614-4f71-84f7-dffd15ce8700	44c71c8f-33c1-4e30-8e5c-99b376e88852	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:34:00	2021-07-08 14:34:00	T
\.


--
-- Data for Name: interest_types; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.interest_types (id, name, display_name, description, deleted_at, created_at, updated_at, trial235) FROM stdin;
0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	reducing_balance	Reducing Balance	Reducing Balance	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	fixed	Fixed Rate	Fixed Rate	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at, trial238) FROM stdin;
1	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:45:\\"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\":10:{s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\u0000member\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"1581e261-ceca-4836-872f-085c41a04c62\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625687057	1625687057	T
2	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:47:\\"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\":10:{s:64:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"9afac841-f7c3-45b0-b309-8b853b241bf9\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"8c76cb49-ae4b-4c8d-9639-0cde849ef01b\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625687246	1625687246	T
3	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:43:\\"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\":11:{s:60:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"9afac841-f7c3-45b0-b309-8b853b241bf9\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:62:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"6fd7623b-667b-4098-8724-efd7f84442f8\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625687246	1625687246	T
4	default	{"displayName":"App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:52:\\"App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail\\":10:{s:69:\\"\\u0000App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\Loan\\";s:2:\\"id\\";s:36:\\"adc82db1-ca25-401a-a2d9-671a7122fd3c\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"667507e6-18f2-4057-aeb7-59e23c905396\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625687425	1625687425	T
5	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:48:\\"App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\":11:{s:65:\\"\\u0000App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\Loan\\";s:2:\\"id\\";s:36:\\"adc82db1-ca25-401a-a2d9-671a7122fd3c\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:67:\\"\\u0000App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"2848572a-aafe-42ac-b53f-6ad44a98e560\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625687425	1625687425	T
6	default	{"displayName":"App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:44:\\"App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\":11:{s:50:\\"\\u0000App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\u0000loan\\";N;s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\u0000payment\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:18:\\"App\\\\Models\\\\Payment\\";s:2:\\"id\\";s:36:\\"e74aabdc-75ee-43ca-bb06-8fdafe43aa3c\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"0aa0b978-4ec2-42f8-b146-2adbefffd3aa\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625698497	1625698497	T
7	default	{"displayName":"App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:44:\\"App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\":11:{s:50:\\"\\u0000App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\u0000loan\\";N;s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\u0000payment\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:18:\\"App\\\\Models\\\\Payment\\";s:2:\\"id\\";s:36:\\"e74aabdc-75ee-43ca-bb06-8fdafe43aa3c\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"0aa0b978-4ec2-42f8-b146-2adbefffd3aa\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:8:\\"database\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625698497	1625698497	T
8	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:40:\\"App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\":13:{s:46:\\"\\u0000App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\u0000user\\";N;s:46:\\"\\u0000App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\u0000loan\\";N;s:49:\\"\\u0000App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\u0000payment\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:18:\\"App\\\\Models\\\\Payment\\";s:2:\\"id\\";s:36:\\"e74aabdc-75ee-43ca-bb06-8fdafe43aa3c\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:59:\\"\\u0000App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"7f87dbff-ccef-463e-83d9-f71fa15c00be\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625698497	1625698497	T
9	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:47:\\"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\":10:{s:64:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"44c71c8f-33c1-4e30-8e5c-99b376e88852\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"7c888a4d-160e-4d2a-9ea0-71de88fad4ac\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625698656	1625698656	T
10	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:43:\\"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\":11:{s:60:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"44c71c8f-33c1-4e30-8e5c-99b376e88852\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:62:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"160ecab6-c875-492c-9326-c5966a73960e\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625698656	1625698656	T
11	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"c3726c01-8614-4f71-84f7-dffd15ce8700\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:45:\\"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\":10:{s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\u0000member\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"c3726c01-8614-4f71-84f7-dffd15ce8700\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"da1090af-8b38-4527-9f37-a672cbd2b62d\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625699025	1625699025	T
12	default	{"displayName":"App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"c3726c01-8614-4f71-84f7-dffd15ce8700\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:52:\\"App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail\\":10:{s:69:\\"\\u0000App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\Loan\\";s:2:\\"id\\";s:36:\\"029a31d2-c011-45d9-b9d9-733f37d2f4b6\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"03a24c17-5c6a-4dea-bd62-d0e5ade4bd31\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625699263	1625699263	T
13	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"c3726c01-8614-4f71-84f7-dffd15ce8700\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:48:\\"App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\":11:{s:65:\\"\\u0000App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\Loan\\";s:2:\\"id\\";s:36:\\"029a31d2-c011-45d9-b9d9-733f37d2f4b6\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:67:\\"\\u0000App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"f1c16ed5-64e3-4107-9b5f-a042f2c8c764\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625699263	1625699263	T
14	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"ffa102d3-0a0b-43d6-a84c-fac93bdad808\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:45:\\"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\":10:{s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\u0000member\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"ffa102d3-0a0b-43d6-a84c-fac93bdad808\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"14c18b52-4b09-449a-acde-dce7398ea5cf\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625699948	1625699948	T
15	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"ffa102d3-0a0b-43d6-a84c-fac93bdad808\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:47:\\"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\":10:{s:64:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"fe61e23c-b478-4c38-9454-522d2d8401ec\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"a1193009-6c83-4429-a5c5-d2f0bc1874c5\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625700006	1625700006	T
16	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"ffa102d3-0a0b-43d6-a84c-fac93bdad808\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:43:\\"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\":11:{s:60:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"fe61e23c-b478-4c38-9454-522d2d8401ec\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:62:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"b3fa3b7f-8fd6-4ce7-96b8-0820e4ab04bf\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625700006	1625700006	T
17	default	{"displayName":"App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"c3726c01-8614-4f71-84f7-dffd15ce8700\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:44:\\"App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\":11:{s:50:\\"\\u0000App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\u0000loan\\";N;s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\u0000payment\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:18:\\"App\\\\Models\\\\Payment\\";s:2:\\"id\\";s:36:\\"46695969-eb48-40a0-9dab-29affacec337\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"94bfad2d-e7fa-4e7d-b9e3-6164e2f620d7\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759315	1625759315	T
18	default	{"displayName":"App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"c3726c01-8614-4f71-84f7-dffd15ce8700\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:44:\\"App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\":11:{s:50:\\"\\u0000App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\u0000loan\\";N;s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\PaymentReceivedEmail\\u0000payment\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:18:\\"App\\\\Models\\\\Payment\\";s:2:\\"id\\";s:36:\\"46695969-eb48-40a0-9dab-29affacec337\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"94bfad2d-e7fa-4e7d-b9e3-6164e2f620d7\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:8:\\"database\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759315	1625759315	T
19	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"c3726c01-8614-4f71-84f7-dffd15ce8700\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:40:\\"App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\":13:{s:46:\\"\\u0000App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\u0000user\\";N;s:46:\\"\\u0000App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\u0000loan\\";N;s:49:\\"\\u0000App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\u0000payment\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:18:\\"App\\\\Models\\\\Payment\\";s:2:\\"id\\";s:36:\\"46695969-eb48-40a0-9dab-29affacec337\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:59:\\"\\u0000App\\\\Notifications\\\\Sms\\\\PaymentReceivedSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"cd84bf0a-3269-4f8d-9c93-bef4e8605faf\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759315	1625759315	T
20	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:45:\\"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\":10:{s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\u0000member\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"190a6c83-1e67-4bf5-b5e3-fa7af8aa0c84\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759557	1625759557	T
21	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:47:\\"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\":10:{s:64:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"8f69a154-c89a-4737-bc86-04402921b731\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"81f390c7-0c0b-469a-af87-77920532d32b\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759739	1625759739	T
22	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:43:\\"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\":11:{s:60:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"8f69a154-c89a-4737-bc86-04402921b731\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:62:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"1d6e6dc6-124a-4d89-b963-14fdd8f92cbd\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759739	1625759739	T
23	default	{"displayName":"App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"ffa102d3-0a0b-43d6-a84c-fac93bdad808\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:52:\\"App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail\\":10:{s:69:\\"\\u0000App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\Loan\\";s:2:\\"id\\";s:36:\\"987d1299-e007-401a-9149-e726ee099883\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"0fa0c496-0ac3-4c04-8524-4729d06f0426\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759770	1625759770	T
24	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"ffa102d3-0a0b-43d6-a84c-fac93bdad808\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:48:\\"App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\":11:{s:65:\\"\\u0000App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\Loan\\";s:2:\\"id\\";s:36:\\"987d1299-e007-401a-9149-e726ee099883\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:67:\\"\\u0000App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"a4b444c2-389d-4e5f-b5c2-f2f35bb12d93\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759770	1625759770	T
25	default	{"displayName":"App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:52:\\"App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail\\":10:{s:69:\\"\\u0000App\\\\Notifications\\\\Email\\\\LoanApplicationApprovedEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\Loan\\";s:2:\\"id\\";s:36:\\"34362a3d-0c87-4d90-b096-2eff987d91e1\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"66ed4359-f41e-46b2-95f7-59bf74bf18a3\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759790	1625759790	T
26	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:48:\\"App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\":11:{s:65:\\"\\u0000App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\Loan\\";s:2:\\"id\\";s:36:\\"34362a3d-0c87-4d90-b096-2eff987d91e1\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:67:\\"\\u0000App\\\\Notifications\\\\Sms\\\\LoanApplicationApprovedSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"cd3be1e9-33ec-4b03-a094-e160e28ca8ef\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625759790	1625759790	T
27	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:47:\\"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\":10:{s:64:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"4dd17193-a541-45c5-b7ae-039b6acff910\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"065372c9-e1ec-4f47-996b-c52e3e9db2a9\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625810102	1625810102	T
28	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:43:\\"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\":11:{s:60:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"4dd17193-a541-45c5-b7ae-039b6acff910\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:62:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"0472fa6c-b0cf-4fce-bce1-d5e2fc4046aa\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625810102	1625810102	T
29	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:47:\\"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\":10:{s:64:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"d9891fbe-4993-4672-8e33-33d542cc8835\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"2f9acc4c-f837-4f4b-b62f-ce230e319118\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625810171	1625810171	T
30	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:43:\\"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\":11:{s:60:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"d9891fbe-4993-4672-8e33-33d542cc8835\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:62:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"257f8af6-7eed-498f-a5a8-af9d84fcc1eb\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625810171	1625810171	T
31	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:47:\\"App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\":10:{s:64:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewLoanApplicationEmail\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"16cff967-dbad-4a12-872e-4ca48f07461d\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"2dbee7a4-ffcc-40a0-9524-b563a7a0f4b8\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625810236	1625810236	T
32	default	{"displayName":"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"56c5bd71-ee24-4412-8569-4b22baa35dfd\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:43:\\"App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\":11:{s:60:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000loanApplication\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:26:\\"App\\\\Models\\\\LoanApplication\\";s:2:\\"id\\";s:36:\\"16cff967-dbad-4a12-872e-4ca48f07461d\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:62:\\"\\u0000App\\\\Notifications\\\\Sms\\\\NewLoanApplicationSms\\u0000smsSendRepository\\";N;s:2:\\"id\\";s:36:\\"e51bdd6a-4d8a-4b78-a744-4fa0922c4b91\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:33:\\"App\\\\Channels\\\\AfricaTalkingChannel\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625810236	1625810236	T
33	default	{"displayName":"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":13:{s:11:\\"notifiables\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"5abdb0d4-b502-4b95-8789-2fa80dd481b4\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:12:\\"notification\\";O:45:\\"App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\":10:{s:53:\\"\\u0000App\\\\Notifications\\\\Email\\\\NewMemberWelcomeEmail\\u0000member\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:17:\\"App\\\\Models\\\\Member\\";s:2:\\"id\\";s:36:\\"5abdb0d4-b502-4b95-8789-2fa80dd481b4\\";s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"cf63cd0f-90d2-47cf-8938-b12a69f26c19\\";s:6:\\"locale\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}	0	\N	1625846146	1625846146	T
\.


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.jobs_id_seq', 33, true);


--
-- Data for Name: journals; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.journals (id, branch_id, transaction_id, debit_account_id, credit_account_id, amount, narration, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial238) FROM stdin;
1	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	adc82db1-ca25-401a-a2d9-671a7122fd3c	5619da7c-ee10-479b-a1b0-4fed9fbdc989	acaf7f43-e08e-4f54-a720-28d1dcc9b715	10000	Loan Disbursed (bank) #LN0001	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:20:25	2021-07-08 11:20:25	T
2	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	adc82db1-ca25-401a-a2d9-671a7122fd3c	acaf7f43-e08e-4f54-a720-28d1dcc9b715	46e89c0c-c45d-4232-ac32-114acd79bf89	10000	Deposit via Loan Disburse (bank) #LN0001	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:20:25	2021-07-08 11:20:25	T
3	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	adc82db1-ca25-401a-a2d9-671a7122fd3c	46e89c0c-c45d-4232-ac32-114acd79bf89	14a0aef8-5649-48e5-a484-bbd688570169	1000	Service Fee #LN0001	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:20:25	2021-07-08 11:20:25	T
4	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	f6c97cca-5b1d-4590-9869-e20d7954afb4	5619da7c-ee10-479b-a1b0-4fed9fbdc989	31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	500	Interest Due #LN0001	system	\N	\N	\N	2021-07-08 11:20:25	2021-07-08 11:20:25	T
5	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	d064c7f3-1e51-4a25-9769-fad304078244	46e89c0c-c45d-4232-ac32-114acd79bf89	acaf7f43-e08e-4f54-a720-28d1dcc9b715	1000	Bank Withdrawal #WTD-0001	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 13:26:53	2021-07-08 13:26:53	T
6	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	e74aabdc-75ee-43ca-bb06-8fdafe43aa3c	acaf7f43-e08e-4f54-a720-28d1dcc9b715	46e89c0c-c45d-4232-ac32-114acd79bf89	200	Bank Deposit #RCT-0001	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:24:57	2021-07-08 14:24:57	T
7	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	029a31d2-c011-45d9-b9d9-733f37d2f4b6	fadedd4b-3446-46bf-b3a3-faf67616f3eb	acaf7f43-e08e-4f54-a720-28d1dcc9b715	20000	Loan Disbursed (bank) #LN0002	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:37:43	2021-07-08 14:37:43	T
8	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	029a31d2-c011-45d9-b9d9-733f37d2f4b6	acaf7f43-e08e-4f54-a720-28d1dcc9b715	c15dc7d4-65ad-41b0-967a-41f433b57df2	20000	Deposit via Loan Disburse (bank) #LN0002	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:37:43	2021-07-08 14:37:43	T
9	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	029a31d2-c011-45d9-b9d9-733f37d2f4b6	c15dc7d4-65ad-41b0-967a-41f433b57df2	14a0aef8-5649-48e5-a484-bbd688570169	500	Service Fee #LN0002	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:37:43	2021-07-08 14:37:43	T
10	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	83d16c46-7b28-4ffc-9db9-365c5831c5dd	fadedd4b-3446-46bf-b3a3-faf67616f3eb	31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	2000	Interest Due #LN0002	system	\N	\N	\N	2021-07-08 14:37:43	2021-07-08 14:37:43	T
11	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	46695969-eb48-40a0-9dab-29affacec337	acaf7f43-e08e-4f54-a720-28d1dcc9b715	c15dc7d4-65ad-41b0-967a-41f433b57df2	100	Bank Deposit #RCT-0002	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:18:35	2021-07-09 07:18:35	T
12	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	987d1299-e007-401a-9149-e726ee099883	41475ce1-e224-4295-a7e6-b87111ec9a85	56e0ed90-74d1-4227-bbdd-a55fc6336805	15000	Loan Disbursed (cash) #LN0003	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:09	2021-07-09 07:26:09	T
13	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	987d1299-e007-401a-9149-e726ee099883	56e0ed90-74d1-4227-bbdd-a55fc6336805	a1820689-a0b8-457f-ab6c-3c2f19c913f6	15000	Deposit via Loan Disburse (cash) #LN0003	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:09	2021-07-09 07:26:09	T
14	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	987d1299-e007-401a-9149-e726ee099883	a1820689-a0b8-457f-ab6c-3c2f19c913f6	14a0aef8-5649-48e5-a484-bbd688570169	500	Service Fee #LN0003	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:09	2021-07-09 07:26:09	T
15	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	74faf012-8eb6-433c-ac6b-e84021c8a65e	41475ce1-e224-4295-a7e6-b87111ec9a85	31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	1500	Interest Due #LN0003	system	\N	\N	\N	2021-07-09 07:26:09	2021-07-09 07:26:09	T
16	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	34362a3d-0c87-4d90-b096-2eff987d91e1	44528f21-a542-4f76-8aa3-dde8d9065983	56e0ed90-74d1-4227-bbdd-a55fc6336805	5000	Loan Disbursed (cash) #LN0004	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:30	2021-07-09 07:26:30	T
17	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	34362a3d-0c87-4d90-b096-2eff987d91e1	56e0ed90-74d1-4227-bbdd-a55fc6336805	5a2f45d0-3929-464b-9429-39dc7d3e8ad8	5000	Deposit via Loan Disburse (cash) #LN0004	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:30	2021-07-09 07:26:30	T
18	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	34362a3d-0c87-4d90-b096-2eff987d91e1	5a2f45d0-3929-464b-9429-39dc7d3e8ad8	14a0aef8-5649-48e5-a484-bbd688570169	100	Service Fee #LN0004	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:30	2021-07-09 07:26:30	T
19	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	299bee9c-6856-44cf-ba85-2eaf6d7db2c6	44528f21-a542-4f76-8aa3-dde8d9065983	31c7fb76-0e34-4ac9-8d54-e2c9eca88d05	300	Interest Due #LN0004	system	\N	\N	\N	2021-07-09 07:26:30	2021-07-09 07:26:30	T
20	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	ff9fc759-13be-465e-91b5-a70a6dc713be	5a2f45d0-3929-464b-9429-39dc7d3e8ad8	56e0ed90-74d1-4227-bbdd-a55fc6336805	121	Cash Withdrawal #WTD-0002	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 21:55:47	2021-07-09 21:55:47	T
21	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	aeca1af8-b1cd-4ef4-be12-5e28e2b36445	acaf7f43-e08e-4f54-a720-28d1dcc9b715	5ea628ba-7a3f-4ff6-89f7-92c1101d037d	454545	Capital to BANK Account	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 22:08:07	2021-07-09 22:08:07	T
\.


--
-- Name: journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.journals_id_seq', 21, true);


--
-- Data for Name: loan_application_statuses; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.loan_application_statuses (id, name, description, deleted_at, created_at, updated_at, trial241) FROM stdin;
\.


--
-- Data for Name: loan_applications; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.loan_applications (id, branch_id, member_id, loan_officer_id, loan_type_id, interest_type_id, interest_rate, service_fee, penalty_type_id, penalty_value, penalty_frequency_id, reduce_principal_early, amount_applied, repayment_period, payment_frequency_id, periodic_payment_amount, application_date, witness_type_id, witness_first_name, witness_last_name, witness_country, witness_county, witness_city, witness_national_id, witness_phone, witness_email, witness_postal_address, witness_residential_address, disburse_method_id, mpesa_number, mpesa_first_name, mpesa_middle_name, mpesa_last_name, cheque_number, bank_name, bank_branch, cheque_date, disburse_note, status_id, witnessed_by_user_id, reviewed_by_user_id, reviewed_on, approved_on, rejected_on, rejection_notes, attach_application_form, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial245) FROM stdin;
16cff967-dbad-4a12-872e-4ca48f07461d	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	56c5bd71-ee24-4412-8569-4b22baa35dfd	e534e550-c8ab-4c60-99f5-632027518f95	5b6c29bd-742c-4867-8021-e3aaeaa4f828	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	6	100	null	0	null	0	8757878	2	c386771e-12ab-4329-ad0f-b659be3e3a5e	\N	2021-07-09	1b212d1d-f460-4d5d-9a42-dd666250e333	HGJHGHG	GJGH	JKJHGJ	JHGJGJH	JGG	5675677	55675765757	GHFGHFH	JKJKHJKHK	JGJHGJHGJHG	3e0a8d19-e980-4ead-9f62-ecb88d3b82dd	\N	\N	\N	\N	\N	\N	\N	2021-07-09	GJGJHGJ	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 21:27:16	2021-07-09 21:27:16	T
44c71c8f-33c1-4e30-8e5c-99b376e88852	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	c3726c01-8614-4f71-84f7-dffd15ce8700	e534e550-c8ab-4c60-99f5-632027518f95	801b0fbd-ee6d-4bdb-9dd3-3d487f262503	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	10	500	5a59c911-344b-451b-8d17-62e9275abb23	100	891dced1-77fd-4375-a422-b03da4ec90f8	0	20000	3	21be2cd3-91d1-418c-b576-2c6a2986507c	\N	2021-07-08	05195692-4137-4ba7-92c1-076a221d9784	Friend FN	Friend LN	United States	IL	Naperville	1234	4444444444	balapr2000@yahoo.com	3528 Fairmont Ave	1 Mag Mile	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	\N	\N	\N	301	Chase	Aurora	2021-07-08	Direct Deposit	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	2021-07-08 02:07:43	2021-07-08 02:07:43	\N	\N	statement (4)_1625698656.pdf	e534e550-c8ab-4c60-99f5-632027518f95	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	2021-07-08 14:27:36	2021-07-08 14:37:43	T
4dd17193-a541-45c5-b7ae-039b6acff910	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	56c5bd71-ee24-4412-8569-4b22baa35dfd	e534e550-c8ab-4c60-99f5-632027518f95	801b0fbd-ee6d-4bdb-9dd3-3d487f262503	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	10	500	5a59c911-344b-451b-8d17-62e9275abb23	100	891dced1-77fd-4375-a422-b03da4ec90f8	0	1000	3	21be2cd3-91d1-418c-b576-2c6a2986507c	\N	2021-07-09	05195692-4137-4ba7-92c1-076a221d9784	fds	fs	India	Rajasthan	Jaipur	sdsds	3433453453	SDSD	SDSD	SDSDSD	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	\N	\N	\N	223223232	dssdfs	dfsf	2021-07-09	sfsdfsdf	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 21:25:02	2021-07-09 21:25:02	T
8f69a154-c89a-4737-bc86-04402921b731	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	56c5bd71-ee24-4412-8569-4b22baa35dfd	e534e550-c8ab-4c60-99f5-632027518f95	5b6c29bd-742c-4867-8021-e3aaeaa4f828	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	6	100	null	0	null	0	5000	2	c386771e-12ab-4329-ad0f-b659be3e3a5e	\N	2021-07-08	1b212d1d-f460-4d5d-9a42-dd666250e333	ewfwf	weffewff	india	ewfw	ewfwef	32r355	888888888	abc@bizofit.com	1 Magnificent Mile	435345	3e0a8d19-e980-4ead-9f62-ecb88d3b82dd	\N	\N	\N	\N	\N	\N	\N	2021-07-08	test	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	2021-07-08 18:56:30	2021-07-08 18:56:30	\N	\N	statement (2)_1625759739.pdf	e534e550-c8ab-4c60-99f5-632027518f95	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	2021-07-09 07:25:39	2021-07-09 07:26:30	T
9afac841-f7c3-45b0-b309-8b853b241bf9	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5	e534e550-c8ab-4c60-99f5-632027518f95	71b5321b-f3aa-4788-b969-8d669e343c0e	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	5	1000	5a59c911-344b-451b-8d17-62e9275abb23	1000	891dced1-77fd-4375-a422-b03da4ec90f8	0	10000	5	21be2cd3-91d1-418c-b576-2c6a2986507c	\N	2021-07-07	1b212d1d-f460-4d5d-9a42-dd666250e333	R	P	United States	IL	Naperville	\N	5555555555	balapr2000@yahoo.com	3528 Fairmont Ave	\N	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	\N	\N	\N	111	Chase	Aurora	2021-07-07	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	2021-07-07 22:50:25	2021-07-07 22:50:25	\N	\N	0416238f34b7fbc707bb853187a645b2_1625687245.pdf	e534e550-c8ab-4c60-99f5-632027518f95	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	2021-07-08 11:17:25	2021-07-08 11:20:25	T
d9891fbe-4993-4672-8e33-33d542cc8835	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	56c5bd71-ee24-4412-8569-4b22baa35dfd	e534e550-c8ab-4c60-99f5-632027518f95	71b5321b-f3aa-4788-b969-8d669e343c0e	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	5	1000	5a59c911-344b-451b-8d17-62e9275abb23	1000	891dced1-77fd-4375-a422-b03da4ec90f8	0	23232	5	21be2cd3-91d1-418c-b576-2c6a2986507c	\N	2021-07-09	05195692-4137-4ba7-92c1-076a221d9784	SDSD	ESDS	SDSD	SDSD	SDSD	SDSD	SDSD	SDSDS	SDSD	SDSDS	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	\N	\N	\N	SDSDSDSD	QWQ	SDSD	2021-07-09	SDSDS	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 21:26:11	2021-07-09 21:26:11	T
fe61e23c-b478-4c38-9454-522d2d8401ec	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	ffa102d3-0a0b-43d6-a84c-fac93bdad808	e534e550-c8ab-4c60-99f5-632027518f95	801b0fbd-ee6d-4bdb-9dd3-3d487f262503	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	10	500	5a59c911-344b-451b-8d17-62e9275abb23	100	891dced1-77fd-4375-a422-b03da4ec90f8	0	15000	3	21be2cd3-91d1-418c-b576-2c6a2986507c	\N	2021-07-08	b289be41-d97e-424e-b5f6-5f30994f52de	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3e0a8d19-e980-4ead-9f62-ecb88d3b82dd	\N	\N	\N	\N	\N	\N	\N	2021-07-08	Cash	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	2021-07-08 18:56:09	2021-07-08 18:56:09	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	2021-07-08 14:50:06	2021-07-09 07:26:09	T
\.


--
-- Data for Name: loan_interest_repayments; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.loan_interest_repayments (id, branch_id, loan_id, period_count, due_date, amount, paid_on, deleted_at, created_at, updated_at, trial248) FROM stdin;
299bee9c-6856-44cf-ba85-2eaf6d7db2c6	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	34362a3d-0c87-4d90-b096-2eff987d91e1	1	2021-07-09	300	\N	\N	2021-07-09 07:26:30	2021-07-09 07:26:30	T
74faf012-8eb6-433c-ac6b-e84021c8a65e	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	987d1299-e007-401a-9149-e726ee099883	1	2021-08-08	1500	\N	\N	2021-07-09 07:26:09	2021-07-09 07:26:09	T
83d16c46-7b28-4ffc-9db9-365c5831c5dd	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	029a31d2-c011-45d9-b9d9-733f37d2f4b6	1	2021-08-08	2000	\N	\N	2021-07-08 14:37:43	2021-07-08 14:37:43	T
f6c97cca-5b1d-4590-9869-e20d7954afb4	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	adc82db1-ca25-401a-a2d9-671a7122fd3c	1	2021-08-07	500	\N	\N	2021-07-08 11:20:25	2021-07-08 11:20:25	T
\.


--
-- Data for Name: loan_penalties; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.loan_penalties (id, branch_id, loan_id, period_count, due_date, amount, paid_on, deleted_at, created_at, updated_at, trial251) FROM stdin;
\.


--
-- Data for Name: loan_principal_repayments; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.loan_principal_repayments (id, branch_id, loan_id, period_count, due_date, amount, paid_on, deleted_at, created_at, updated_at, trial251) FROM stdin;
052349cd-91d9-4718-9a48-10242309261b	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	029a31d2-c011-45d9-b9d9-733f37d2f4b6	1	2021-08-08	6042.3	\N	\N	2021-07-08 14:37:43	2021-07-08 14:37:43	T
13bba30f-97ac-41dd-8e42-800737d1f7a2	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	987d1299-e007-401a-9149-e726ee099883	1	2021-08-08	4531.72	\N	\N	2021-07-09 07:26:10	2021-07-09 07:26:10	T
71053e42-468b-44bb-a074-6595cd50d4b8	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	adc82db1-ca25-401a-a2d9-671a7122fd3c	1	2021-08-07	2000	\N	\N	2021-07-08 11:20:25	2021-07-08 11:20:25	T
c7c63364-e107-4e1d-a2c2-b7dcaad123df	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	34362a3d-0c87-4d90-b096-2eff987d91e1	1	2021-07-09	2427.18	\N	\N	2021-07-09 07:26:30	2021-07-09 07:26:30	T
\.


--
-- Data for Name: loan_statuses; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.loan_statuses (id, name, description, deleted_at, created_at, updated_at, trial254) FROM stdin;
593a8e18-1f4b-4606-b96c-f76a1b63a2c5	Value 1	\N	2021-07-08 14:18:48	2021-07-08 14:17:57	2021-07-08 14:18:48	T
6b1f4e36-f457-40ae-9cc4-b50cecaa8fd7	Value2	Loan Status Value 2	\N	2021-07-08 14:20:14	2021-07-08 14:20:14	T
a2a635f4-a90e-4ab2-b3b5-a372c7638dc6	Value 2	\N	2021-07-08 14:18:52	2021-07-08 14:18:03	2021-07-08 14:18:52	T
e4d98e85-73dd-4a0b-91f4-097be7414db9	Value1	Loan Status Value 1	\N	2021-07-08 14:20:03	2021-07-08 14:20:03	T
\.


--
-- Data for Name: loan_types; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.loan_types (id, name, description, active_status, interest_rate, interest_type_id, payment_frequency_id, repayment_period, service_fee, reduce_principal_early, penalty_type_id, penalty_value, penalty_frequency_id, deleted_at, created_at, updated_at, trial258) FROM stdin;
09f6b8ad-5110-40f5-8037-28db8020c8d5	Small business loan (Unsecured)	\N	\N	6	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	21be2cd3-91d1-418c-b576-2c6a2986507c	14	5	0	5a59c911-344b-451b-8d17-62e9275abb23	4	09405a49-483a-4c48-84e3-b2c0447a0e52	\N	2021-07-10 07:21:59	2021-07-10 07:21:59	T
1975b778-d484-4f77-aa80-d9ec3f34171d	Checking	\N	\N	4	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	21be2cd3-91d1-418c-b576-2c6a2986507c	0	10	0	5a59c911-344b-451b-8d17-62e9275abb23	0	cd252ec6-e640-4b55-98e4-36d596825013	\N	2021-07-10 07:20:18	2021-07-10 07:20:18	T
39813ece-8187-4ee1-a529-d472f9019d69	Sapphire Credit	\N	\N	5	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	c386771e-12ab-4329-ad0f-b659be3e3a5e	4	100	0	\N	0	\N	2021-07-09 08:39:46	2021-07-09 08:14:12	2021-07-09 08:39:46	T
4bd53a23-aa0b-4531-8c4d-23fc335392ff	Term Deposit	\N	\N	4	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	21be2cd3-91d1-418c-b576-2c6a2986507c	0	9	0	5a59c911-344b-451b-8d17-62e9275abb23	0	cd252ec6-e640-4b55-98e4-36d596825013	\N	2021-07-10 07:18:57	2021-07-10 07:18:57	T
575846ec-28bf-4262-b182-907fb5f16061	Retirement Product	\N	\N	3	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	21be2cd3-91d1-418c-b576-2c6a2986507c	13	11	0	5a59c911-344b-451b-8d17-62e9275abb23	0	\N	\N	2021-07-10 07:22:54	2021-07-10 07:22:54	T
5b6c29bd-742c-4867-8021-e3aaeaa4f828	LoC	sample LoC	\N	6	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	c386771e-12ab-4329-ad0f-b659be3e3a5e	2	100	0	\N	0	\N	\N	2021-07-09 07:20:02	2021-07-09 07:20:02	T
71b5321b-f3aa-4788-b969-8d669e343c0e	Personal Loan	\N	\N	5	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	21be2cd3-91d1-418c-b576-2c6a2986507c	5	1000	0	5a59c911-344b-451b-8d17-62e9275abb23	1000	891dced1-77fd-4375-a422-b03da4ec90f8	\N	2021-07-08 11:15:46	2021-07-08 11:15:46	T
801b0fbd-ee6d-4bdb-9dd3-3d487f262503	Business Loan	Business Loan	\N	10	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	21be2cd3-91d1-418c-b576-2c6a2986507c	3	500	0	5a59c911-344b-451b-8d17-62e9275abb23	100	891dced1-77fd-4375-a422-b03da4ec90f8	\N	2021-07-08 14:12:41	2021-07-08 14:12:41	T
9b996941-691d-4cdb-897d-a07330cfdb32	Small business line of credit (Unsecured)	\N	\N	6	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	21be2cd3-91d1-418c-b576-2c6a2986507c	12	11	0	5a59c911-344b-451b-8d17-62e9275abb23	0	\N	\N	2021-07-10 07:24:07	2021-07-10 07:24:07	T
a661df72-c3c8-4011-98f7-1f5aa903aa9d	Unsecured consumer loan	\N	\N	8	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	21be2cd3-91d1-418c-b576-2c6a2986507c	20	3	0	5a59c911-344b-451b-8d17-62e9275abb23	11	891dced1-77fd-4375-a422-b03da4ec90f8	\N	2021-07-10 07:21:15	2021-07-10 07:21:15	T
cfe7e4dc-e246-48dc-af72-704760de6528	Savings	\N	\N	4	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	c386771e-12ab-4329-ad0f-b659be3e3a5e	0	19	0	5a59c911-344b-451b-8d17-62e9275abb23	11	cd252ec6-e640-4b55-98e4-36d596825013	\N	2021-07-10 07:19:51	2021-07-10 07:19:51	T
f02b015a-10f9-46d9-9857-330c5c545270	Credit Card	Credit card	\N	3	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	21be2cd3-91d1-418c-b576-2c6a2986507c	1	16	0	479febb5-2746-41ec-bba7-76c47463a3ea	10	09405a49-483a-4c48-84e3-b2c0447a0e52	\N	2021-07-10 07:18:20	2021-07-10 07:18:20	T
\.


--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.loans (id, branch_id, loan_reference_number, loan_application_id, member_id, loan_officer_id, loan_type_id, interest_rate, interest_type_id, repayment_period, loan_status_id, approved_by_user_id, amount_approved, disburse_amount, service_fee, penalty_type_id, penalty_value, penalty_frequency_id, loan_disbursed, start_date, end_date, payment_frequency_id, reduce_principal_early, next_repayment_date, disburse_method_id, mpesa_number, mpesa_first_name, mpesa_middle_name, mpesa_last_name, bank_name, bank_branch, bank_account, other_banking_details, closed_on, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial261) FROM stdin;
029a31d2-c011-45d9-b9d9-733f37d2f4b6	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	LN0002	44c71c8f-33c1-4e30-8e5c-99b376e88852	c3726c01-8614-4f71-84f7-dffd15ce8700	e534e550-c8ab-4c60-99f5-632027518f95	801b0fbd-ee6d-4bdb-9dd3-3d487f262503	10	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	3	\N	\N	20000	19500	500	5a59c911-344b-451b-8d17-62e9275abb23	100	891dced1-77fd-4375-a422-b03da4ec90f8	0	2021-07-08	\N	21be2cd3-91d1-418c-b576-2c6a2986507c	0	2021-08-08	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:37:43	2021-07-08 14:37:43	T
34362a3d-0c87-4d90-b096-2eff987d91e1	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	LN0004	8f69a154-c89a-4737-bc86-04402921b731	56c5bd71-ee24-4412-8569-4b22baa35dfd	e534e550-c8ab-4c60-99f5-632027518f95	5b6c29bd-742c-4867-8021-e3aaeaa4f828	6	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	2	\N	\N	5000	4900	100	null	0	null	0	2021-07-08	\N	c386771e-12ab-4329-ad0f-b659be3e3a5e	0	2021-07-09	3e0a8d19-e980-4ead-9f62-ecb88d3b82dd	\N	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:30	2021-07-09 07:26:30	T
987d1299-e007-401a-9149-e726ee099883	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	LN0003	fe61e23c-b478-4c38-9454-522d2d8401ec	ffa102d3-0a0b-43d6-a84c-fac93bdad808	e534e550-c8ab-4c60-99f5-632027518f95	801b0fbd-ee6d-4bdb-9dd3-3d487f262503	10	0a97c77b-b3b7-4bbe-9849-c3a0db925aa7	3	\N	\N	15000	14500	500	5a59c911-344b-451b-8d17-62e9275abb23	100	891dced1-77fd-4375-a422-b03da4ec90f8	0	2021-07-08	\N	21be2cd3-91d1-418c-b576-2c6a2986507c	0	2021-08-08	3e0a8d19-e980-4ead-9f62-ecb88d3b82dd	\N	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:26:09	2021-07-09 07:26:10	T
adc82db1-ca25-401a-a2d9-671a7122fd3c	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	LN0001	9afac841-f7c3-45b0-b309-8b853b241bf9	2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5	e534e550-c8ab-4c60-99f5-632027518f95	71b5321b-f3aa-4788-b969-8d669e343c0e	5	58a3cefe-ca2c-4f46-a4e3-6e6c09bea24e	5	\N	\N	10000	9000	1000	5a59c911-344b-451b-8d17-62e9275abb23	1000	891dced1-77fd-4375-a422-b03da4ec90f8	0	2021-07-07	\N	21be2cd3-91d1-418c-b576-2c6a2986507c	0	2021-08-07	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:20:25	2021-07-08 11:20:25	T
\.


--
-- Data for Name: login_events; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.login_events (id, user_id, event, email, user_agent, ip_address, created_at, updated_at, trial264) FROM stdin;
1	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-08 07:16:41	2021-07-08 07:16:41	T
2	e534e550-c8ab-4c60-99f5-632027518f95	out	admin@admin.com	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0	162.158.227.162	2021-07-08 07:19:01	2021-07-08 07:19:01	T
3	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-08 07:22:35	2021-07-08 07:22:35	T
4	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-08 07:32:03	2021-07-08 07:32:03	T
5	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-08 13:24:57	2021-07-08 13:24:57	T
6	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-08 13:49:50	2021-07-08 13:49:50	T
7	e534e550-c8ab-4c60-99f5-632027518f95	out	admin@admin.com	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	172.70.126.190	2021-07-08 13:54:03	2021-07-08 13:54:03	T
8	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-08 13:54:20	2021-07-08 13:54:20	T
9	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-09 00:59:05	2021-07-09 00:59:05	T
10	e534e550-c8ab-4c60-99f5-632027518f95	out	admin@admin.com	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0	162.158.227.162	2021-07-09 00:59:18	2021-07-09 00:59:18	T
11	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-09 07:15:20	2021-07-09 07:15:20	T
12	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-09 21:22:57	2021-07-09 21:22:57	T
13	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-10 06:10:05	2021-07-10 06:10:05	T
14	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-10 07:11:47	2021-07-10 07:11:47	T
15	e534e550-c8ab-4c60-99f5-632027518f95	in	admin@admin.com	Symfony	127.0.0.1	2021-07-10 23:25:15	2021-07-10 23:25:15	T
\.


--
-- Name: login_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.login_events_id_seq', 15, true);


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.members (id, branch_id, first_name, middle_name, last_name, date_of_birth, date_became_member, nationality, county, city, id_number, passport_number, phone, email, postal_address, residential_address, status_id, passport_photo, extra_images, membership_form, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial264) FROM stdin;
2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	Bal	Ram	P	2021-07-01	2021-07-07	Indian	IL	Naperville	J444	\N	5555555555	balapr2000@yahoo.com	1 Mag	1 Magnificent Mile	\N	Infosys_1625687057.jfif	\N	0416238f34b7fbc707bb853187a645b2_1625687057.pdf	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 11:14:17	2021-07-08 11:14:17	T
56c5bd71-ee24-4412-8569-4b22baa35dfd	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	DeV	Xam	Mangani	2021-07-01	2021-07-08	India	dfsfsfs	Jaipur	123456	\N	7777777877	devendra@bizofit.com	dfsfs	23123	\N	Infosys_1625759557.jfif	\N	statement (2)_1625759557.pdf	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:22:37	2021-07-09 07:22:37	T
5abdb0d4-b502-4b95-8789-2fa80dd481b4	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	Rohit	Tasas	Mehra	1991-12-31	2021-07-09	Indian	Raj	Jaipur	Passsport	\N	888888889	sdsdhssk@gmail.com	2382983	ddsjkjdhskj	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-10 07:25:46	2021-07-10 07:25:46	T
c3726c01-8614-4f71-84f7-dffd15ce8700	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	Member 2 FN	Member 2 MN	Member 2 LN	2021-07-01	2021-07-08	Indian	Illinois	Chicago	1234	\N	3333333333	test@bizofit.com	1 Mag mile	1 Magnificent Mile	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	2021-07-08 14:33:45	2021-07-08 14:36:25	T
ffa102d3-0a0b-43d6-a84c-fac93bdad808	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	Member 3 FN	Member 3 MN	Member 3 LN	2021-07-02	2021-07-08	USA	IL	Naperville	12345	\N	6666666666	balapr2000@yahoo.com	1 mg	3528 Fairmont Ave	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:49:08	2021-07-08 14:49:08	T
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.migrations (id, migration, batch, trial268) FROM stdin;
1	2014_10_12_100000_create_password_resets_table	1	T
2	2016_01_28_203842_create_roles_table	1	T
3	2016_06_01_000001_create_oauth_auth_codes_table	1	T
4	2016_06_01_000002_create_oauth_access_tokens_table	1	T
5	2016_06_01_000003_create_oauth_refresh_tokens_table	1	T
6	2016_06_01_000004_create_oauth_clients_table	1	T
7	2016_06_01_000005_create_oauth_personal_access_clients_table	1	T
8	2017_10_12_000000_create_users_table	1	T
9	2018_01_28_203941_create_permissions_table	1	T
10	2018_01_28_205009_create_permission_role_table	1	T
11	2018_01_30_155315_alter_table_oauth_auth_codes	1	T
12	2018_01_30_155318_alter_table_oauth_access_tokens	1	T
13	2018_10_20_083334_create_borrowers_table	1	T
14	2018_10_20_084510_create_loans_table	1	T
15	2018_10_20_084547_create_loan_types_table	1	T
16	2018_10_20_084612_create_loan_applications_table	1	T
17	2018_10_20_084658_create_loan_statuses_table	1	T
18	2018_10_26_183101_create_branches_table	1	T
19	2018_10_27_063728_create_employees_table	1	T
20	2018_10_27_074325_create_members_table	1	T
21	2018_10_27_075145_create_guarantors_table	1	T
22	2018_10_27_093105_create_loan_application_statuses	1	T
23	2018_10_27_093311_create_borrower_statuses	1	T
24	2018_12_16_080354_create_payments_table	1	T
25	2018_12_16_080924_create_payment_methods_table	1	T
26	2019_06_03_075434_create_general_settings_table	1	T
27	2019_07_11_043622_create_witness_types_table	1	T
28	2019_07_11_172040_create_assets_table	1	T
29	2019_07_11_172126_create_asset_photos_table	1	T
30	2019_08_02_071815_create_accounts_table	1	T
31	2019_08_02_073517_create_account_types_table	1	T
32	2019_08_02_073538_create_account_statuses_table	1	T
33	2019_08_02_080108_create_account_members_table	1	T
34	2019_08_02_084559_create_email_settings_table	1	T
35	2019_08_07_054817_create_interest_types_table	1	T
36	2019_08_27_125333_create_expenses_table	1	T
37	2019_08_27_125430_create_expense_categories_table	1	T
38	2019_08_27_135912_create_fiscal_periods_table	1	T
39	2019_08_28_114622_create_account_classes_table	1	T
40	2019_08_28_114921_create_transaction_types_table	1	T
41	2019_08_28_115129_create_transactions_table	1	T
42	2019_08_28_115417_create_journals_table	1	T
43	2019_09_01_131452_create_asset_loan_applications	1	T
44	2019_09_08_223026_create_payment_frequencies_table	1	T
45	2019_09_21_104607_create_loan_penalties_table	1	T
46	2019_09_21_211428_loan_interest_repayments	1	T
47	2019_09_21_211509_loan_principal_repayments	1	T
48	2019_09_26_141020_create_login_events_table	1	T
49	2019_09_27_011135_create_failed_logins_table	1	T
50	2019_10_11_232646_create_report_types_table	1	T
51	2019_10_15_122250_create_finance_statements_table	1	T
52	2019_10_20_211845_create_account_ledgers_table	1	T
53	2019_10_27_134345_create_sms_settings_table	1	T
54	2019_11_02_202439_create_capitals_table	1	T
55	2019_11_02_212357_create_email_templates_table	1	T
56	2019_11_02_212427_create_sms_templates_table	1	T
57	2019_11_10_152623_create_penalty_types_table	1	T
58	2019_11_10_152724_create_penalty_frequencies_table	1	T
59	2019_11_22_022334_create_notifications_table	1	T
60	2019_11_24_173404_create_communication_settings_table	1	T
61	2019_12_15_120648_create_jobs_table	1	T
62	2020_01_22_180950_create_table_withdrawals	1	T
63	2020_01_24_090056_create_table_mpesa_bulk_payments	1	T
64	2020_01_24_231725_create_mpesa_custom_sends_table	1	T
65	2020_01_31_101250_create_mpesa_scheduled_disbursements_table	1	T
66	2020_01_31_110622_create_failed_jobs_table	1	T
\.


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.migrations_id_seq', 66, true);


--
-- Data for Name: mpesa_bulk_payments; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.mpesa_bulk_payments (id, transaction_amount, transaction_receipt, b2c_recipientis_registered_customer, b2c_charges_paid_account_available_funds, receiver_party_public_name, transaction_completed_date_time, b2c_utility_account_available_funds, b2c_working_account_available_funds, deleted_at, created_at, updated_at, trial271) FROM stdin;
\.


--
-- Name: mpesa_bulk_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.mpesa_bulk_payments_id_seq', 1, false);


--
-- Data for Name: mpesa_custom_sends; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.mpesa_custom_sends (id, phone, amount, description, transaction_type, trans_id, trans_time, business_short_code, bill_ref_number, invoice_number, phone_number, first_name, middle_name, last_name, org_account_balance, third_party_trans_id, created_at, updated_at, trial274) FROM stdin;
\.


--
-- Name: mpesa_custom_sends_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.mpesa_custom_sends_id_seq', 1, false);


--
-- Data for Name: mpesa_scheduled_disbursements; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.mpesa_scheduled_disbursements (id, branch_id, member_id, created_by, mpesa_number, amount, deleted_at, created_at, updated_at, trial277) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.notifications (id, type, notifiable_type, notifiable_id, data, read_at, created_at, updated_at, trial277) FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.oauth_access_tokens (id, client_id, name, scopes, revoked, created_at, updated_at, expires_at, user_id, trial281) FROM stdin;
1df8ea8c18e23d0654ead058b05859e042d6e22b3e67b58545ce814491603911ec1b0879ac7da4e4	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-08 07:22:34	2021-07-08 07:22:34	2021-07-07 23:52:34	e534e550-c8ab-4c60-99f5-632027518f95	T
35e7dcf89dcb539893058a43914cb600324ac0e2420086af26a4b793e2754e3a670ac14b459c9ef6	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	1	2021-07-08 07:16:40	2021-07-08 07:16:40	2021-07-07 23:46:40	e534e550-c8ab-4c60-99f5-632027518f95	T
41c3cc8f0970884572033da96e51f561471883bbacadfc7b855834d0436518930086558f9f839ecd	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	1	2021-07-09 00:59:04	2021-07-09 00:59:04	2021-07-08 17:29:04	e534e550-c8ab-4c60-99f5-632027518f95	T
4c0d98d970cbbb33aeb5d119c96bb3bf16773069a4a02cb6fae19570c72f39fdce76c66fbd434ddc	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-10 06:10:05	2021-07-10 06:10:05	2021-07-09 22:40:05	e534e550-c8ab-4c60-99f5-632027518f95	T
4ee9e7a904b9975c07be0e2de188908aafc076f72ee66ffe7d9bb781251a2f3d932ce48a19999199	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-08 07:32:02	2021-07-08 07:32:02	2021-07-08 00:02:02	e534e550-c8ab-4c60-99f5-632027518f95	T
5b452f8aeae85f7d7d34aba9393edc7f3cf2254c8984521087790790907e6cb7c64115b37bc164d3	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-10 23:25:15	2021-07-10 23:25:15	2021-07-10 15:55:14	e534e550-c8ab-4c60-99f5-632027518f95	T
876d2e798710ebb6c17b556ec5dddc0f509f0047251218d5a048ada83ebe8726ad8db580c59683ca	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-08 13:24:57	2021-07-08 13:24:57	2021-07-08 05:54:57	e534e550-c8ab-4c60-99f5-632027518f95	T
c0de39ac8a58f1cba3d3944fe2ad838b0eb71343dd1257ed10a76d70b0e60954b986416137dad90f	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-09 07:15:20	2021-07-09 07:15:20	2021-07-08 23:45:20	e534e550-c8ab-4c60-99f5-632027518f95	T
e308b000356fdb22f9f8ec147b1722c9e72898ff4da77fc6d52c2f535c1d97c8c2a769c58ec86d69	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	1	2021-07-08 13:49:50	2021-07-08 13:49:50	2021-07-08 06:19:50	e534e550-c8ab-4c60-99f5-632027518f95	T
ee642edecb1a25738b6fe314b87f18acef3d1f1555458cbac2dd6574ac7db027de91f347d94ff622	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-10 07:11:47	2021-07-10 07:11:47	2021-07-09 23:41:47	e534e550-c8ab-4c60-99f5-632027518f95	T
f28ce44dab55cd10bf3daca7603d14bd7693387d10bf9385c12f9bbf26fd4d2ea3f811127fe77c9e	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-09 21:22:57	2021-07-09 21:22:57	2021-07-09 13:52:56	e534e550-c8ab-4c60-99f5-632027518f95	T
ff1e48698d82155627da79cea0f3cf69e49bcbcd2d67f17718fa84263ac93a218693d8bf49598fea	2	\N	["my-profile","settings-loans","view-reports","loans-view","settings-expenses","loan-application-add","member-add","loan-application-review","settings-accounting","settings-payments","settings-branches","settings-general","settings-users","settings-communication","payments-add","expense-add","settings-borrowers"]	0	2021-07-08 13:54:20	2021-07-08 13:54:20	2021-07-08 06:24:20	e534e550-c8ab-4c60-99f5-632027518f95	T
\.


--
-- Data for Name: oauth_auth_codes; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.oauth_auth_codes (id, client_id, scopes, revoked, expires_at, user_id, trial284) FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.oauth_clients (id, user_id, name, secret, redirect, personal_access_client, password_client, revoked, created_at, updated_at, trial287) FROM stdin;
1	\N	SignalLoans Personal Access Client	fl4odhNeWLF46RdcybdM6vixIgMUU5T0SZkRCIFD	http://localhost	1	0	0	2021-07-08 07:16:12	2021-07-08 07:16:12	T
2	\N	SignalLoans Password Grant Client	oS4bYpNu4p8wE3tR835BmZiOcSsnBJKenUtv6Gn5	http://localhost	0	1	0	2021-07-08 07:16:12	2021-07-08 07:16:12	T
\.


--
-- Name: oauth_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.oauth_clients_id_seq', 2, true);


--
-- Data for Name: oauth_personal_access_clients; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.oauth_personal_access_clients (id, client_id, created_at, updated_at, trial290) FROM stdin;
1	1	2021-07-08 07:16:12	2021-07-08 07:16:12	T
\.


--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 1, true);


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.oauth_refresh_tokens (id, access_token_id, revoked, expires_at, trial290) FROM stdin;
018720eb06ecfe8dd51975197eabad1c57417ba1ceffa71317b68bd466d7780b50a117c1d55c0a7e	4ee9e7a904b9975c07be0e2de188908aafc076f72ee66ffe7d9bb781251a2f3d932ce48a19999199	0	2021-07-08 00:02:02	T
0a56b9e693ea2067d2d4d2f32a397d100c6c87d52f29ad0ed4586cddca7c1137158e41d14b611f1f	ff1e48698d82155627da79cea0f3cf69e49bcbcd2d67f17718fa84263ac93a218693d8bf49598fea	0	2021-07-08 06:24:20	T
347ee89e0f75a4a991af20929aab2ce23ab52461f4cab37c239dc92c220c60c19e469424fc3bdc7c	5b452f8aeae85f7d7d34aba9393edc7f3cf2254c8984521087790790907e6cb7c64115b37bc164d3	0	2021-07-10 15:55:14	T
49795339f9a7b2bf766d7d8e6586ec7cc7a0dd052280f6d6ca7f6e67001ecde0cb888e10ef6cc2fc	35e7dcf89dcb539893058a43914cb600324ac0e2420086af26a4b793e2754e3a670ac14b459c9ef6	1	2021-07-07 23:46:40	T
558274bd47611f0cb96f24d44a6584f47e64eb8c8e8c0a1da7ed4ed8b5ba7604dbbdb2d8b568d541	f28ce44dab55cd10bf3daca7603d14bd7693387d10bf9385c12f9bbf26fd4d2ea3f811127fe77c9e	0	2021-07-09 13:52:56	T
6702eac98a5fdb262ed186140e2548fbe9b70249d4ab140f039a9d422b5e2da672e01d9729e315dc	ee642edecb1a25738b6fe314b87f18acef3d1f1555458cbac2dd6574ac7db027de91f347d94ff622	0	2021-07-09 23:41:47	T
68e1af273798fa34a3d3bbec5d25e360bc7c64da71957a73bfbff6e3d77126ce454604a47d8ee9c8	41c3cc8f0970884572033da96e51f561471883bbacadfc7b855834d0436518930086558f9f839ecd	1	2021-07-08 17:29:04	T
7664565ccedf79c1ae8ae47d78dc85b3cfbfc673938d689f5ab410198de55d08fc62197b9d54f253	4c0d98d970cbbb33aeb5d119c96bb3bf16773069a4a02cb6fae19570c72f39fdce76c66fbd434ddc	0	2021-07-09 22:40:05	T
87a9136120cbfac9ec13fd1053befcebfca3b708e3b16e0f789ab15086fb2a300142a494e40ac442	c0de39ac8a58f1cba3d3944fe2ad838b0eb71343dd1257ed10a76d70b0e60954b986416137dad90f	0	2021-07-08 23:45:20	T
91fb8da580718b63a6d9ae16b855b491a9c170a01a8cc1966e4f0d0a069fba34ecbcadc20d056b4c	e308b000356fdb22f9f8ec147b1722c9e72898ff4da77fc6d52c2f535c1d97c8c2a769c58ec86d69	1	2021-07-08 06:19:50	T
e7066f94538bc0cf9d87203e33a990bb4ef148d5acb80f6bcb5c1f3a527a5001d0a52c0caaaf170e	1df8ea8c18e23d0654ead058b05859e042d6e22b3e67b58545ce814491603911ec1b0879ac7da4e4	0	2021-07-07 23:52:34	T
f9b2763bca548cc069c7f6d4aa3e0bba706dfcb0d3ab0c5a1e80ab2656a3672718fa149476f5c14f	876d2e798710ebb6c17b556ec5dddc0f509f0047251218d5a048ada83ebe8726ad8db580c59683ca	0	2021-07-08 05:54:57	T
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.password_resets (email, token, created_at, trial294) FROM stdin;
\.


--
-- Data for Name: payment_frequencies; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.payment_frequencies (id, name, display_name, description, deleted_at, created_at, updated_at, trial297) FROM stdin;
21be2cd3-91d1-418c-b576-2c6a2986507c	monthly	Monthly	Monthly Repayment	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
697659a2-d84d-42ed-9199-b78a6d0a8b7b	weekly	Weekly	Weekly Repayment	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
6d57812d-7a98-4d2c-a9ae-7738e12e1892	one_time	One Time	Single Fixed Repayment	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
c386771e-12ab-4329-ad0f-b659be3e3a5e	daily	Daily	Everyday Repayment	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: payment_methods; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.payment_methods (id, name, display_name, description, deleted_at, created_at, updated_at, trial300) FROM stdin;
3e0a8d19-e980-4ead-9f62-ecb88d3b82dd	CASH	CASH	CASH Payment system.	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
9b3d7c44-40f2-4eae-999f-ac7385a359bb	BANK	BANK	BANK Payment system.	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.payments (id, branch_id, member_id, amount, method_id, transaction_id, payment_date, receipt_number, attachment, notes, cheque_number, bank_name, bank_branch, cheque_date, is_mpesa, transaction_type, trans_id, trans_time, business_short_code, bill_ref_number, invoice_number, mpesa_number, mpesa_first_name, mpesa_middle_name, mpesa_last_name, org_account_balance, third_party_trans_id, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial303) FROM stdin;
46695969-eb48-40a0-9dab-29affacec337	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	c3726c01-8614-4f71-84f7-dffd15ce8700	100	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	2021-07-08	RCT-0002	\N	test deposit	131	Chase	\N	2021-07-08	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 07:18:35	2021-07-09 07:18:35	T
e74aabdc-75ee-43ca-bb06-8fdafe43aa3c	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5	200	9b3d7c44-40f2-4eae-999f-ac7385a359bb	\N	2021-07-08	RCT-0001	\N	Teller deposit	201	Chase	Aurora	2021-07-08	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 14:24:57	2021-07-08 14:24:57	T
\.


--
-- Data for Name: penalty_frequencies; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.penalty_frequencies (id, name, display_name, description, deleted_at, created_at, updated_at, trial303) FROM stdin;
09405a49-483a-4c48-84e3-b2c0447a0e52	weekly	Weekly	Weekly Repayment	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
6decdeff-b21a-477e-8013-1be473346201	one_time	One Time	Single Fixed Repayment	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
891dced1-77fd-4375-a422-b03da4ec90f8	monthly	Monthly	Monthly Repayment	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
cd252ec6-e640-4b55-98e4-36d596825013	daily	Daily	Everyday Repayment	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: penalty_types; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.penalty_types (id, name, display_name, description, deleted_at, created_at, updated_at, trial307) FROM stdin;
003e846e-05cc-44c0-b7bb-7d334455d51f	principal_due_percentage	% on Due Principal	Due Principal Percentage	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
479febb5-2746-41ec-bba7-76c47463a3ea	principal_plus_interest_due_percentage	% on Due Principal + Due Interest	Percentage on due principal plus due interest	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
5a59c911-344b-451b-8d17-62e9275abb23	fixed_value	Fixed Value	Fixed Value	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: permission_role; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.permission_role (id, permission_id, role_id, trial310) FROM stdin;
1	01efe0d0-478e-46f9-acc9-03983d5cb51d	76fed982-2499-4223-a49e-aa8fd9e0e708	T
2	02bad870-00df-49bd-b730-f67be55d5167	76fed982-2499-4223-a49e-aa8fd9e0e708	T
3	227b7d3a-b0f6-4f1a-abf0-169caf16e2b8	76fed982-2499-4223-a49e-aa8fd9e0e708	T
4	37cbda1a-5773-4720-b50b-63ee6b6c9a08	76fed982-2499-4223-a49e-aa8fd9e0e708	T
5	3879bad5-b57d-49ef-a878-4f8066ec281a	76fed982-2499-4223-a49e-aa8fd9e0e708	T
6	44ca071c-0db3-42e7-aae0-8df8ac550874	76fed982-2499-4223-a49e-aa8fd9e0e708	T
7	5e28affa-47c3-486f-b292-f21b9bd2c36c	76fed982-2499-4223-a49e-aa8fd9e0e708	T
8	622d0e6b-7c7d-4ca6-8358-73bd47a3675b	76fed982-2499-4223-a49e-aa8fd9e0e708	T
9	6398b9a5-08fa-4dee-a7ab-fd54556094e5	76fed982-2499-4223-a49e-aa8fd9e0e708	T
10	73c3c631-6785-4e33-9cfa-3513bb60fa74	76fed982-2499-4223-a49e-aa8fd9e0e708	T
11	782a8a73-e7d9-42df-8b78-2d7c0f204b92	76fed982-2499-4223-a49e-aa8fd9e0e708	T
12	9ee49a41-0a17-4fd9-83cf-6c458402755f	76fed982-2499-4223-a49e-aa8fd9e0e708	T
13	a40ad296-b363-486d-a09b-34743ca7718f	76fed982-2499-4223-a49e-aa8fd9e0e708	T
14	c3c36ce3-0eb0-42e5-8b46-0ab6f67050a3	76fed982-2499-4223-a49e-aa8fd9e0e708	T
15	ca7d5d13-cb7d-4825-8ea0-d4827fce2414	76fed982-2499-4223-a49e-aa8fd9e0e708	T
16	cdcf2398-f79b-48fd-abc9-f68d0b69b259	76fed982-2499-4223-a49e-aa8fd9e0e708	T
17	fc4ba00f-ba56-45a9-a2d8-a69575e78cc0	76fed982-2499-4223-a49e-aa8fd9e0e708	T
\.


--
-- Name: permission_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: loanapp
--

SELECT pg_catalog.setval('public.permission_role_id_seq', 17, true);


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.permissions (id, name, display_name, description, deleted_at, created_at, updated_at, trial313) FROM stdin;
01efe0d0-478e-46f9-acc9-03983d5cb51d	my-profile	Edit Own Profile	Edit Own Profile	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
02bad870-00df-49bd-b730-f67be55d5167	settings-loans	Loan Settings	Loan Settings	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
227b7d3a-b0f6-4f1a-abf0-169caf16e2b8	view-reports	View Reports	View Reports	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
37cbda1a-5773-4720-b50b-63ee6b6c9a08	loans-view	Loans View Details	Loans View Details	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
3879bad5-b57d-49ef-a878-4f8066ec281a	settings-expenses	Expense Settings	Expense Settings	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
44ca071c-0db3-42e7-aae0-8df8ac550874	loan-application-add	Add Loan Application	Add Loan Application	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
5e28affa-47c3-486f-b292-f21b9bd2c36c	member-add	Members Add	Members Add	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
622d0e6b-7c7d-4ca6-8358-73bd47a3675b	loan-application-review	Loan Application Review	Ability to Confirm or Reject loans	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
6398b9a5-08fa-4dee-a7ab-fd54556094e5	settings-accounting	Accounting Settings	Accounting Settings	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
73c3c631-6785-4e33-9cfa-3513bb60fa74	settings-payments	Payment Settings	Payment Settings	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
782a8a73-e7d9-42df-8b78-2d7c0f204b92	settings-branches	Branches Settings	Branches Settings	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
9ee49a41-0a17-4fd9-83cf-6c458402755f	settings-general	General Settings	General Settings	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
a40ad296-b363-486d-a09b-34743ca7718f	settings-users	Users - Add-Edit-Delete	Users - Add-Edit-Delete	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
c3c36ce3-0eb0-42e5-8b46-0ab6f67050a3	settings-communication	Communication Settings	Communication Settings	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
ca7d5d13-cb7d-4825-8ea0-d4827fce2414	payments-add	Payments Add-View	Payments Add-View	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
cdcf2398-f79b-48fd-abc9-f68d0b69b259	expense-add	Expense Add	Expense Add	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
fc4ba00f-ba56-45a9-a2d8-a69575e78cc0	settings-borrowers	Borrowers Settings	Borrowers Settings	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: report_types; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.report_types (id, name, display_name, description, deleted_at, created_at, updated_at, trial317) FROM stdin;
6c86a2ff-b7f0-424d-a71a-80a01c63b771	loans_due	Loans Due	Loans Due	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
e3c0c4eb-2736-40d8-b314-a92ee9e8a868	loans_overDue	Loans OverDue	Loans OverDue	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.roles (id, name, display_name, description, deleted_at, created_at, updated_at, trial320) FROM stdin;
76fed982-2499-4223-a49e-aa8fd9e0e708	Admin	Admin	site admin	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: sms_settings; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.sms_settings (id, url, username, password, created_by, deleted_at, created_at, updated_at, trial320) FROM stdin;
\.


--
-- Data for Name: sms_templates; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.sms_templates (id, name, display_name, body, tags, created_by, deleted_at, created_at, updated_at, trial323) FROM stdin;
02782eeb-1d50-45a2-8476-331d32814f6a	new_member_welcome	New Member Welcome	Hi {first_name}, Welcome.	{first_name}, {middle_name}, {last_name}, {phone}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
2839ce72-d943-410c-8e83-abad9e7a756b	loan_application_approved	Loan Application Approved	Congratulations. Your loan Application has been approved.	{first_name}, {middle_name}, {last_name}, {phone}, {amount_applied}, {loan_reference_number}, {repayment_period}, {start_date}, {interest_rate}, {loan_type}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
4b4ec894-1bb4-4984-b06c-b92e3e06a662	payment_received	Payment Received	We have received your payment of {amount}. Thank you.	{first_name}, {middle_name}, {last_name}, {amount}, {payment_date}, {phone}, {receipt_number}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
70b33322-c61e-47f2-aea4-70a4d7ff8cf5	new_user_welcome	New User Welcome	Hi {first_name}, Welcome.	{first_name}, {middle_name}, {last_name}, {phone}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
bba0d554-624c-4699-a169-48bbbb37e79f	password_reset	Password Reset	We received a request to reset your password. Below is a code to confirm this reset. {password_reset_code}	{first_name}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
c77d7a43-5d75-4dd5-93e5-a49706033fea	loan_application_rejected	Loan Application Rejected	Unfortunately. Your Loan Application has been rejected.	{first_name}, {middle_name}, {last_name}, {phone}, {amount_applied}, {rejection_notes}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
ca50de8e-2a5d-4e67-b08c-4f8076359cbd	system_summary	System Summary	System Summary		\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
e85e3105-ddc8-47d2-a2e3-0bb6816bf6cf	new_loan_application	New Loan Application	We have received  your loan application. Our staff will review and communicate.	{first_name}, {middle_name}, {last_name}, {phone}, {amount_applied}, {repayment_period}, {loan_type}, {interest_rate}	\N	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Data for Name: transaction_types; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.transaction_types (id, code, description, deleted_at, created_at, updated_at, trial326) FROM stdin;
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.transactions (id, branch_id, fiscal_period_id, loan_id, payment_id, amount, transaction_date, loan_interest_repayments_id, loan_principal_repayments_id, loan_penalties_id, transaction_type, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial330) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.users (id, branch_id, first_name, middle_name, last_name, photo, postal_code, postal_address, physical_address, city, country, role_id, employee_id, phone, email, password, confirmed, confirmation_code, created_by, updated_by, deleted_by, remember_token, deleted_at, created_at, updated_at, trial330) FROM stdin;
e534e550-c8ab-4c60-99f5-632027518f95	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	Admin FN	Admin MN	Admin LN	\N	\N	\N	\N	\N	\N	76fed982-2499-4223-a49e-aa8fd9e0e708	\N	\N	admin@admin.com	$2y$10$JEe1VAdtHMls5zOz7SvS0eXkLenTJs0yFawI5hvAD7tt0Hr7LRSp2	0	\N	\N	\N	\N	\N	\N	2021-07-08 07:16:11	2021-07-08 14:22:35	T
\.


--
-- Data for Name: withdrawals; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.withdrawals (id, branch_id, member_id, amount, withdrawal_date, method_id, withdrawal_number, withdrawal_charges, balance_before_withdrawal, balance_after_withdrawal, status, mpesa_number, first_name, last_name, cheque_number, bank_name, bank_branch, cheque_date, created_by, updated_by, deleted_by, deleted_at, created_at, updated_at, trial333) FROM stdin;
d064c7f3-1e51-4a25-9769-fad304078244	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	2b72d9a1-1ed6-44ab-a523-56fe02fc4cf5	1000	2021-07-08 00:55:47	9b3d7c44-40f2-4eae-999f-ac7385a359bb	WTD-0001	\N	\N	\N	\N	\N	\N	\N	123	Citi	naper	2021-07-07	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-08 13:26:53	2021-07-08 13:26:53	T
ff9fc759-13be-465e-91b5-a70a6dc713be	ac4bae65-4bfb-4f1e-ac42-c543366e9fc5	56c5bd71-ee24-4412-8569-4b22baa35dfd	121	2021-07-09 09:25:19	3e0a8d19-e980-4ead-9f62-ecb88d3b82dd	WTD-0002	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-07-09	e534e550-c8ab-4c60-99f5-632027518f95	\N	\N	\N	2021-07-09 21:55:47	2021-07-09 21:55:47	T
\.


--
-- Data for Name: witness_types; Type: TABLE DATA; Schema: public; Owner: loanapp
--

COPY public.witness_types (id, name, display_name, description, deleted_at, created_at, updated_at, trial336) FROM stdin;
05195692-4137-4ba7-92c1-076a221d9784	friend	Friend	Close Friend	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
1b212d1d-f460-4d5d-9a42-dd666250e333	business_partner	Business Partner	Business Partner	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
b289be41-d97e-424e-b5f6-5f30994f52de	relative	Relative	Family Relative	\N	2021-07-08 07:16:11	2021-07-08 07:16:11	T
\.


--
-- Name: pk_account_classes; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.account_classes
    ADD CONSTRAINT pk_account_classes PRIMARY KEY (id);


--
-- Name: pk_account_ledgers; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.account_ledgers
    ADD CONSTRAINT pk_account_ledgers PRIMARY KEY (id);


--
-- Name: pk_account_members; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.account_members
    ADD CONSTRAINT pk_account_members PRIMARY KEY (id);


--
-- Name: pk_account_statuses; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.account_statuses
    ADD CONSTRAINT pk_account_statuses PRIMARY KEY (id);


--
-- Name: pk_account_types; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.account_types
    ADD CONSTRAINT pk_account_types PRIMARY KEY (id);


--
-- Name: pk_accounts; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT pk_accounts PRIMARY KEY (id);


--
-- Name: pk_asset_loan_applications; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.asset_loan_applications
    ADD CONSTRAINT pk_asset_loan_applications PRIMARY KEY (id);


--
-- Name: pk_asset_photos; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.asset_photos
    ADD CONSTRAINT pk_asset_photos PRIMARY KEY (id);


--
-- Name: pk_assets; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT pk_assets PRIMARY KEY (id);


--
-- Name: pk_borrower_statuses; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.borrower_statuses
    ADD CONSTRAINT pk_borrower_statuses PRIMARY KEY (id);


--
-- Name: pk_borrowers; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.borrowers
    ADD CONSTRAINT pk_borrowers PRIMARY KEY (id);


--
-- Name: pk_branches; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.branches
    ADD CONSTRAINT pk_branches PRIMARY KEY (id);


--
-- Name: pk_capitals; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.capitals
    ADD CONSTRAINT pk_capitals PRIMARY KEY (id);


--
-- Name: pk_communication_settings; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.communication_settings
    ADD CONSTRAINT pk_communication_settings PRIMARY KEY (id);


--
-- Name: pk_email_settings; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.email_settings
    ADD CONSTRAINT pk_email_settings PRIMARY KEY (id);


--
-- Name: pk_email_templates; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT pk_email_templates PRIMARY KEY (id);


--
-- Name: pk_employees; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (id);


--
-- Name: pk_expense_categories; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.expense_categories
    ADD CONSTRAINT pk_expense_categories PRIMARY KEY (id);


--
-- Name: pk_expenses; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT pk_expenses PRIMARY KEY (id);


--
-- Name: pk_failed_jobs; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT pk_failed_jobs PRIMARY KEY (id);


--
-- Name: pk_failed_logins; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.failed_logins
    ADD CONSTRAINT pk_failed_logins PRIMARY KEY (id);


--
-- Name: pk_finance_statements; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.finance_statements
    ADD CONSTRAINT pk_finance_statements PRIMARY KEY (id);


--
-- Name: pk_fiscal_periods; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.fiscal_periods
    ADD CONSTRAINT pk_fiscal_periods PRIMARY KEY (id);


--
-- Name: pk_general_settings; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.general_settings
    ADD CONSTRAINT pk_general_settings PRIMARY KEY (id);


--
-- Name: pk_guarantors; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.guarantors
    ADD CONSTRAINT pk_guarantors PRIMARY KEY (id);


--
-- Name: pk_interest_types; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.interest_types
    ADD CONSTRAINT pk_interest_types PRIMARY KEY (id);


--
-- Name: pk_jobs; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT pk_jobs PRIMARY KEY (id);


--
-- Name: pk_journals; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.journals
    ADD CONSTRAINT pk_journals PRIMARY KEY (id);


--
-- Name: pk_loan_application_statuses; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.loan_application_statuses
    ADD CONSTRAINT pk_loan_application_statuses PRIMARY KEY (id);


--
-- Name: pk_loan_applications; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.loan_applications
    ADD CONSTRAINT pk_loan_applications PRIMARY KEY (id);


--
-- Name: pk_loan_interest_repayments; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.loan_interest_repayments
    ADD CONSTRAINT pk_loan_interest_repayments PRIMARY KEY (id);


--
-- Name: pk_loan_penalties; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.loan_penalties
    ADD CONSTRAINT pk_loan_penalties PRIMARY KEY (id);


--
-- Name: pk_loan_principal_repayments; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.loan_principal_repayments
    ADD CONSTRAINT pk_loan_principal_repayments PRIMARY KEY (id);


--
-- Name: pk_loan_statuses; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.loan_statuses
    ADD CONSTRAINT pk_loan_statuses PRIMARY KEY (id);


--
-- Name: pk_loan_types; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.loan_types
    ADD CONSTRAINT pk_loan_types PRIMARY KEY (id);


--
-- Name: pk_loans; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT pk_loans PRIMARY KEY (id);


--
-- Name: pk_login_events; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.login_events
    ADD CONSTRAINT pk_login_events PRIMARY KEY (id);


--
-- Name: pk_members; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT pk_members PRIMARY KEY (id);


--
-- Name: pk_migrations; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT pk_migrations PRIMARY KEY (id);


--
-- Name: pk_mpesa_bulk_payments; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.mpesa_bulk_payments
    ADD CONSTRAINT pk_mpesa_bulk_payments PRIMARY KEY (id);


--
-- Name: pk_mpesa_custom_sends; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.mpesa_custom_sends
    ADD CONSTRAINT pk_mpesa_custom_sends PRIMARY KEY (id);


--
-- Name: pk_mpesa_scheduled_disbursements; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.mpesa_scheduled_disbursements
    ADD CONSTRAINT pk_mpesa_scheduled_disbursements PRIMARY KEY (id);


--
-- Name: pk_notifications; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT pk_notifications PRIMARY KEY (id);


--
-- Name: pk_oauth_access_tokens; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT pk_oauth_access_tokens PRIMARY KEY (id);


--
-- Name: pk_oauth_auth_codes; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.oauth_auth_codes
    ADD CONSTRAINT pk_oauth_auth_codes PRIMARY KEY (id);


--
-- Name: pk_oauth_clients; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT pk_oauth_clients PRIMARY KEY (id);


--
-- Name: pk_oauth_personal_access_clients; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.oauth_personal_access_clients
    ADD CONSTRAINT pk_oauth_personal_access_clients PRIMARY KEY (id);


--
-- Name: pk_oauth_refresh_tokens; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT pk_oauth_refresh_tokens PRIMARY KEY (id);


--
-- Name: pk_payment_frequencies; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.payment_frequencies
    ADD CONSTRAINT pk_payment_frequencies PRIMARY KEY (id);


--
-- Name: pk_payment_methods; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT pk_payment_methods PRIMARY KEY (id);


--
-- Name: pk_payments; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT pk_payments PRIMARY KEY (id);


--
-- Name: pk_penalty_frequencies; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.penalty_frequencies
    ADD CONSTRAINT pk_penalty_frequencies PRIMARY KEY (id);


--
-- Name: pk_penalty_types; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.penalty_types
    ADD CONSTRAINT pk_penalty_types PRIMARY KEY (id);


--
-- Name: pk_permission_role; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT pk_permission_role PRIMARY KEY (id);


--
-- Name: pk_permissions; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT pk_permissions PRIMARY KEY (id);


--
-- Name: pk_report_types; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.report_types
    ADD CONSTRAINT pk_report_types PRIMARY KEY (id);


--
-- Name: pk_roles; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT pk_roles PRIMARY KEY (id);


--
-- Name: pk_sms_settings; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.sms_settings
    ADD CONSTRAINT pk_sms_settings PRIMARY KEY (id);


--
-- Name: pk_sms_templates; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.sms_templates
    ADD CONSTRAINT pk_sms_templates PRIMARY KEY (id);


--
-- Name: pk_transaction_types; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.transaction_types
    ADD CONSTRAINT pk_transaction_types PRIMARY KEY (id);


--
-- Name: pk_transactions; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT pk_transactions PRIMARY KEY (id);


--
-- Name: pk_users; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_users PRIMARY KEY (id);


--
-- Name: pk_withdrawals; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.withdrawals
    ADD CONSTRAINT pk_withdrawals PRIMARY KEY (id);


--
-- Name: pk_witness_types; Type: CONSTRAINT; Schema: public; Owner: loanapp; Tablespace: 
--

ALTER TABLE ONLY public.witness_types
    ADD CONSTRAINT pk_witness_types PRIMARY KEY (id);


--
-- Name: account_statuses_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX account_statuses_name_unique ON public.account_statuses USING btree (name);


--
-- Name: account_types_code_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX account_types_code_unique ON public.account_types USING btree (code);


--
-- Name: account_types_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX account_types_name_unique ON public.account_types USING btree (name);


--
-- Name: accounts_account_number_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX accounts_account_number_unique ON public.accounts USING btree (account_number);


--
-- Name: assets_asset_number_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX assets_asset_number_unique ON public.assets USING btree (asset_number);


--
-- Name: borrower_statuses_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX borrower_statuses_name_unique ON public.borrower_statuses USING btree (name);


--
-- Name: branches_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX branches_name_unique ON public.branches USING btree (name);


--
-- Name: employees_birth_day_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX employees_birth_day_unique ON public.employees USING btree (birth_day);


--
-- Name: employees_email_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX employees_email_unique ON public.employees USING btree (email);


--
-- Name: employees_employee_number_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX employees_employee_number_unique ON public.employees USING btree (employee_number);


--
-- Name: finance_statements_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX finance_statements_display_name_unique ON public.finance_statements USING btree (display_name);


--
-- Name: finance_statements_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX finance_statements_name_unique ON public.finance_statements USING btree (name);


--
-- Name: general_settings_business_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX general_settings_business_name_unique ON public.general_settings USING btree (business_name);


--
-- Name: general_settings_email_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX general_settings_email_unique ON public.general_settings USING btree (email);


--
-- Name: interest_types_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX interest_types_display_name_unique ON public.interest_types USING btree (display_name);


--
-- Name: interest_types_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX interest_types_name_unique ON public.interest_types USING btree (name);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: loan_application_statuses_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX loan_application_statuses_name_unique ON public.loan_application_statuses USING btree (name);


--
-- Name: loan_statuses_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX loan_statuses_name_unique ON public.loan_statuses USING btree (name);


--
-- Name: loan_types_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX loan_types_name_unique ON public.loan_types USING btree (name);


--
-- Name: loans_loan_application_id_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX loans_loan_application_id_unique ON public.loans USING btree (loan_application_id);


--
-- Name: login_events_user_id_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX login_events_user_id_index ON public.login_events USING btree (user_id);


--
-- Name: members_id_number_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX members_id_number_unique ON public.members USING btree (id_number);


--
-- Name: members_passport_number_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX members_passport_number_unique ON public.members USING btree (passport_number);


--
-- Name: members_phone_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX members_phone_unique ON public.members USING btree (phone);


--
-- Name: mpesa_bulk_payments_transaction_receipt_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX mpesa_bulk_payments_transaction_receipt_unique ON public.mpesa_bulk_payments USING btree (transaction_receipt);


--
-- Name: mpesa_custom_sends_amount_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX mpesa_custom_sends_amount_unique ON public.mpesa_custom_sends USING btree (amount);


--
-- Name: mpesa_custom_sends_description_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX mpesa_custom_sends_description_unique ON public.mpesa_custom_sends USING btree (description);


--
-- Name: mpesa_custom_sends_trans_id_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX mpesa_custom_sends_trans_id_unique ON public.mpesa_custom_sends USING btree (trans_id);


--
-- Name: notifications_notifiable_type_notifiable_id_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX notifications_notifiable_type_notifiable_id_index ON public.notifications USING btree (notifiable_type, notifiable_id);


--
-- Name: oauth_access_tokens_user_id_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX oauth_access_tokens_user_id_index ON public.oauth_access_tokens USING btree (user_id);


--
-- Name: oauth_auth_codes_user_id_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX oauth_auth_codes_user_id_index ON public.oauth_auth_codes USING btree (user_id);


--
-- Name: oauth_clients_user_id_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX oauth_clients_user_id_index ON public.oauth_clients USING btree (user_id);


--
-- Name: oauth_personal_access_clients_client_id_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX oauth_personal_access_clients_client_id_index ON public.oauth_personal_access_clients USING btree (client_id);


--
-- Name: oauth_refresh_tokens_access_token_id_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX oauth_refresh_tokens_access_token_id_index ON public.oauth_refresh_tokens USING btree (access_token_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: payment_frequencies_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX payment_frequencies_display_name_unique ON public.payment_frequencies USING btree (display_name);


--
-- Name: payment_frequencies_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX payment_frequencies_name_unique ON public.payment_frequencies USING btree (name);


--
-- Name: payment_methods_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX payment_methods_display_name_unique ON public.payment_methods USING btree (display_name);


--
-- Name: payment_methods_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX payment_methods_name_unique ON public.payment_methods USING btree (name);


--
-- Name: payments_trans_id_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX payments_trans_id_unique ON public.payments USING btree (trans_id);


--
-- Name: penalty_frequencies_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX penalty_frequencies_display_name_unique ON public.penalty_frequencies USING btree (display_name);


--
-- Name: penalty_frequencies_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX penalty_frequencies_name_unique ON public.penalty_frequencies USING btree (name);


--
-- Name: penalty_types_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX penalty_types_display_name_unique ON public.penalty_types USING btree (display_name);


--
-- Name: penalty_types_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX penalty_types_name_unique ON public.penalty_types USING btree (name);


--
-- Name: permissions_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX permissions_display_name_unique ON public.permissions USING btree (display_name);


--
-- Name: permissions_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX permissions_name_unique ON public.permissions USING btree (name);


--
-- Name: report_types_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX report_types_display_name_unique ON public.report_types USING btree (display_name);


--
-- Name: report_types_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX report_types_name_unique ON public.report_types USING btree (name);


--
-- Name: roles_display_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX roles_display_name_unique ON public.roles USING btree (display_name);


--
-- Name: roles_name_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX roles_name_unique ON public.roles USING btree (name);


--
-- Name: users_email_unique; Type: INDEX; Schema: public; Owner: loanapp; Tablespace: 
--

CREATE UNIQUE INDEX users_email_unique ON public.users USING btree (email);


--
-- Name: login_events_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: loanapp
--

ALTER TABLE ONLY public.login_events
    ADD CONSTRAINT login_events_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: loanapp
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM loanapp;
GRANT ALL ON SCHEMA public TO loanapp;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

