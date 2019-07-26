--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)

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
-- Name: acmecorp; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA acmecorp;


ALTER SCHEMA acmecorp OWNER TO postgres;

--
-- Name: acmecorp1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA acmecorp1;


ALTER SCHEMA acmecorp1 OWNER TO postgres;

--
-- Name: decabits; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA decabits;


ALTER SCHEMA decabits OWNER TO postgres;

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
-- Name: active_storage_attachments; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.active_storage_attachments_id_seq OWNED BY acmecorp.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.active_storage_blobs_id_seq OWNED BY acmecorp.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.ar_internal_metadata OWNER TO postgres;

--
-- Name: audits; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.audits (
    id bigint NOT NULL,
    auditable_id integer,
    auditable_type character varying,
    associated_id integer,
    associated_type character varying,
    user_id integer,
    user_type character varying,
    username character varying,
    action character varying,
    audited_changes text,
    version integer DEFAULT 0,
    comment character varying,
    remote_address character varying,
    request_uuid character varying,
    created_at timestamp without time zone
);


ALTER TABLE acmecorp.audits OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.audits_id_seq OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.audits_id_seq OWNED BY acmecorp.audits.id;


--
-- Name: clusters; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.clusters (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.clusters OWNER TO postgres;

--
-- Name: COLUMN clusters.name; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.clusters.name IS 'Name of cluster';


--
-- Name: clusters_conversations; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.clusters_conversations (
    id bigint NOT NULL,
    cluster_id bigint,
    conversation_id bigint
);


ALTER TABLE acmecorp.clusters_conversations OWNER TO postgres;

--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.clusters_conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.clusters_conversations_id_seq OWNER TO postgres;

--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.clusters_conversations_id_seq OWNED BY acmecorp.clusters_conversations.id;


--
-- Name: clusters_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.clusters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.clusters_id_seq OWNER TO postgres;

--
-- Name: clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.clusters_id_seq OWNED BY acmecorp.clusters.id;


--
-- Name: companies; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.companies (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    company_slug character varying,
    phone character varying,
    country_code character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    industry character varying,
    privacy_policy text,
    time_zone character varying,
    leader character varying,
    locale character varying DEFAULT 'en'::character varying
);


ALTER TABLE acmecorp.companies OWNER TO postgres;

--
-- Name: COLUMN companies.locale; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.companies.locale IS 'Language identifier';


--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.companies_id_seq OWNED BY acmecorp.companies.id;


--
-- Name: conversation_answers; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.conversation_answers (
    id bigint NOT NULL,
    conversation_question_id bigint,
    user_id bigint,
    text character varying,
    value character varying,
    response character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.conversation_answers OWNER TO postgres;

--
-- Name: COLUMN conversation_answers.text; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_answers.text IS 'Description of Answer';


--
-- Name: COLUMN conversation_answers.value; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_answers.value IS 'Value of answer';


--
-- Name: COLUMN conversation_answers.response; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_answers.response IS 'Response by Employee';


--
-- Name: conversation_answers_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.conversation_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.conversation_answers_id_seq OWNER TO postgres;

--
-- Name: conversation_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.conversation_answers_id_seq OWNED BY acmecorp.conversation_answers.id;


--
-- Name: conversation_questions; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.conversation_questions (
    id bigint NOT NULL,
    conversation_id bigint,
    question_text character varying,
    question_type integer DEFAULT 0,
    driver character varying,
    tenure_group character varying,
    tenure_on_delivery character varying,
    employee_group character varying,
    department character varying,
    choices json,
    question_order integer,
    is_answered boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.conversation_questions OWNER TO postgres;

--
-- Name: COLUMN conversation_questions.question_text; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.question_text IS 'Question tex';


--
-- Name: COLUMN conversation_questions.question_type; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.question_type IS 'Type of question';


--
-- Name: COLUMN conversation_questions.driver; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.driver IS 'Driving factor';


--
-- Name: COLUMN conversation_questions.tenure_group; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.tenure_group IS 'Tenure group';


--
-- Name: COLUMN conversation_questions.tenure_on_delivery; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.tenure_on_delivery IS 'Tenure delivery in days';


--
-- Name: COLUMN conversation_questions.employee_group; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.employee_group IS 'Group which employee belongs to';


--
-- Name: COLUMN conversation_questions.department; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.department IS 'Department for conversation';


--
-- Name: COLUMN conversation_questions.choices; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.choices IS 'JSON of choices if any for this question';


--
-- Name: COLUMN conversation_questions.question_order; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.question_order IS 'Order value of question';


--
-- Name: COLUMN conversation_questions.is_answered; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversation_questions.is_answered IS 'Answered yet or not';


--
-- Name: conversation_questions_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.conversation_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.conversation_questions_id_seq OWNER TO postgres;

--
-- Name: conversation_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.conversation_questions_id_seq OWNED BY acmecorp.conversation_questions.id;


--
-- Name: conversations; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.conversations (
    id bigint NOT NULL,
    survey_id bigint,
    user_id bigint,
    is_editable boolean,
    expiry timestamp without time zone,
    active boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.conversations OWNER TO postgres;

--
-- Name: COLUMN conversations.is_editable; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversations.is_editable IS 'Weather conversation are editable or not';


--
-- Name: COLUMN conversations.expiry; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversations.expiry IS 'Expiry date of conversation';


--
-- Name: COLUMN conversations.active; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.conversations.active IS 'Active or Inactive';


--
-- Name: conversations_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.conversations_id_seq OWNER TO postgres;

--
-- Name: conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.conversations_id_seq OWNED BY acmecorp.conversations.id;


--
-- Name: orders; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.orders (
    id bigint NOT NULL,
    order_id character varying,
    amount character varying,
    currency_type character varying,
    receipt character varying,
    entity character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.orders OWNER TO postgres;

--
-- Name: COLUMN orders.amount; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.orders.amount IS 'Amount of payment';


--
-- Name: COLUMN orders.currency_type; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.orders.currency_type IS 'Type of payment current';


--
-- Name: COLUMN orders.receipt; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.orders.receipt IS 'Receipt of payment';


--
-- Name: COLUMN orders.entity; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.orders.entity IS 'Payment entity';


--
-- Name: COLUMN orders.status; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.orders.status IS 'Payment status';


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.orders_id_seq OWNED BY acmecorp.orders.id;


--
-- Name: password_histories; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.password_histories (
    id bigint NOT NULL,
    user_id character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.password_histories OWNER TO postgres;

--
-- Name: password_histories_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.password_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.password_histories_id_seq OWNER TO postgres;

--
-- Name: password_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.password_histories_id_seq OWNED BY acmecorp.password_histories.id;


--
-- Name: permissions; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.permissions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.permissions OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.permissions_id_seq OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.permissions_id_seq OWNED BY acmecorp.permissions.id;


--
-- Name: questions; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.questions (
    id bigint NOT NULL,
    question_type integer,
    description text,
    active boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    choices character varying[],
    "order" integer,
    min integer,
    max integer,
    step integer,
    driver character varying,
    tenure_group integer,
    tenure_on_delivery integer,
    employee_group character varying,
    department character varying
);


ALTER TABLE acmecorp.questions OWNER TO postgres;

--
-- Name: COLUMN questions.choices; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.choices IS 'choices in the question';


--
-- Name: COLUMN questions."order"; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions."order" IS 'order of the questions';


--
-- Name: COLUMN questions.min; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.min IS 'minimum value of range questions';


--
-- Name: COLUMN questions.max; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.max IS 'maximum value of range questions';


--
-- Name: COLUMN questions.step; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.step IS 'steps in range questions';


--
-- Name: COLUMN questions.driver; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.driver IS 'The driver for the question i.e exiting employee';


--
-- Name: COLUMN questions.tenure_group; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.tenure_group IS 'Tenure group in years';


--
-- Name: COLUMN questions.tenure_on_delivery; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.tenure_on_delivery IS 'tenure to delivered in days';


--
-- Name: COLUMN questions.employee_group; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.employee_group IS 'Group under which employee falls';


--
-- Name: COLUMN questions.department; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.questions.department IS 'Department for questions';


--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.questions_id_seq OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.questions_id_seq OWNED BY acmecorp.questions.id;


--
-- Name: role_permissions; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.role_permissions (
    id bigint NOT NULL,
    role_id bigint,
    permission_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.role_permissions OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.role_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.role_permissions_id_seq OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.role_permissions_id_seq OWNED BY acmecorp.role_permissions.id;


--
-- Name: roles; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.roles (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.roles_id_seq OWNED BY acmecorp.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE acmecorp.schema_migrations OWNER TO postgres;

--
-- Name: sms_credits; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.sms_credits (
    id bigint NOT NULL,
    transaction_type integer DEFAULT 0,
    "left" integer,
    purpose character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.sms_credits OWNER TO postgres;

--
-- Name: COLUMN sms_credits.transaction_type; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.sms_credits.transaction_type IS 'Smscredits type';


--
-- Name: COLUMN sms_credits."left"; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.sms_credits."left" IS 'Left sms credits';


--
-- Name: COLUMN sms_credits.purpose; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.sms_credits.purpose IS 'Purpose for credit and debit of Smscredits';


--
-- Name: sms_credits_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.sms_credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.sms_credits_id_seq OWNER TO postgres;

--
-- Name: sms_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.sms_credits_id_seq OWNED BY acmecorp.sms_credits.id;


--
-- Name: survey_question_answers; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.survey_question_answers (
    id bigint NOT NULL,
    survey_question_id bigint,
    user_id bigint,
    value character varying,
    option character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.survey_question_answers OWNER TO postgres;

--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.survey_question_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.survey_question_answers_id_seq OWNER TO postgres;

--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.survey_question_answers_id_seq OWNED BY acmecorp.survey_question_answers.id;


--
-- Name: survey_questions; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.survey_questions (
    id bigint NOT NULL,
    survey_id bigint,
    question_id bigint,
    answered boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.survey_questions OWNER TO postgres;

--
-- Name: survey_questions_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.survey_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.survey_questions_id_seq OWNER TO postgres;

--
-- Name: survey_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.survey_questions_id_seq OWNED BY acmecorp.survey_questions.id;


--
-- Name: survey_rules; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.survey_rules (
    id bigint NOT NULL,
    survey_id bigint,
    frequency character varying[],
    reminder_settings character varying[],
    frequency_value character varying,
    reminder_setting_value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.survey_rules OWNER TO postgres;

--
-- Name: COLUMN survey_rules.frequency; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.survey_rules.frequency IS 'frequency of the survey rules';


--
-- Name: COLUMN survey_rules.reminder_settings; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.survey_rules.reminder_settings IS 'Reminder settings of survey rules';


--
-- Name: COLUMN survey_rules.frequency_value; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.survey_rules.frequency_value IS 'Frequency value of survey rules';


--
-- Name: COLUMN survey_rules.reminder_setting_value; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.survey_rules.reminder_setting_value IS 'Reminder setting value of survey rules';


--
-- Name: survey_rules_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.survey_rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.survey_rules_id_seq OWNER TO postgres;

--
-- Name: survey_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.survey_rules_id_seq OWNED BY acmecorp.survey_rules.id;


--
-- Name: surveys; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.surveys (
    id bigint NOT NULL,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    survey_type character varying,
    survey_status character varying
);


ALTER TABLE acmecorp.surveys OWNER TO postgres;

--
-- Name: COLUMN surveys.name; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.surveys.name IS 'Name of the survey';


--
-- Name: COLUMN surveys.active; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.surveys.active IS 'Survey is active or not';


--
-- Name: COLUMN surveys.survey_type; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.surveys.survey_type IS 'type of survey';


--
-- Name: COLUMN surveys.survey_status; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.surveys.survey_status IS 'Status of survey';


--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.surveys_id_seq OWNER TO postgres;

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.surveys_id_seq OWNED BY acmecorp.surveys.id;


--
-- Name: templates; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.templates (
    id bigint NOT NULL,
    name character varying,
    sender_name character varying,
    subject character varying,
    content text,
    template_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.templates OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.templates_id_seq OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.templates_id_seq OWNED BY acmecorp.templates.id;


--
-- Name: user_roles; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.user_roles (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.user_roles OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.user_roles_id_seq OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.user_roles_id_seq OWNED BY acmecorp.user_roles.id;


--
-- Name: user_surveys; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.user_surveys (
    id bigint NOT NULL,
    user_id bigint,
    survey_id bigint,
    active boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp.user_surveys OWNER TO postgres;

--
-- Name: user_surveys_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.user_surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.user_surveys_id_seq OWNER TO postgres;

--
-- Name: user_surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.user_surveys_id_seq OWNED BY acmecorp.user_surveys.id;


--
-- Name: users; Type: TABLE; Schema: acmecorp; Owner: postgres
--

CREATE TABLE acmecorp.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    otp character varying DEFAULT ''::character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    employee_id character varying,
    department character varying,
    location character varying,
    supervisor character varying,
    head_of_department character varying,
    date_of_joining character varying,
    employment_status character varying,
    active character varying DEFAULT '1'::character varying,
    promotion_date character varying,
    current_job_role character varying,
    employment_type character varying,
    sub_department character varying,
    account character varying,
    country character varying,
    country_code character varying,
    date_of_birth character varying,
    termination_date character varying,
    current_status character varying,
    toc_accepted boolean DEFAULT false
);


ALTER TABLE acmecorp.users OWNER TO postgres;

--
-- Name: COLUMN users.toc_accepted; Type: COMMENT; Schema: acmecorp; Owner: postgres
--

COMMENT ON COLUMN acmecorp.users.toc_accepted IS 'Terms & Condition Accepted by user or not';


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: acmecorp; Owner: postgres
--

CREATE SEQUENCE acmecorp.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp; Owner: postgres
--

ALTER SEQUENCE acmecorp.users_id_seq OWNED BY acmecorp.users.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.active_storage_attachments_id_seq OWNED BY acmecorp1.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.active_storage_blobs_id_seq OWNED BY acmecorp1.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.ar_internal_metadata OWNER TO postgres;

--
-- Name: audits; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.audits (
    id bigint NOT NULL,
    auditable_id integer,
    auditable_type character varying,
    associated_id integer,
    associated_type character varying,
    user_id integer,
    user_type character varying,
    username character varying,
    action character varying,
    audited_changes text,
    version integer DEFAULT 0,
    comment character varying,
    remote_address character varying,
    request_uuid character varying,
    created_at timestamp without time zone
);


ALTER TABLE acmecorp1.audits OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.audits_id_seq OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.audits_id_seq OWNED BY acmecorp1.audits.id;


--
-- Name: clusters; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.clusters (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.clusters OWNER TO postgres;

--
-- Name: COLUMN clusters.name; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.clusters.name IS 'Name of cluster';


--
-- Name: clusters_conversations; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.clusters_conversations (
    id bigint NOT NULL,
    cluster_id bigint,
    conversation_id bigint
);


ALTER TABLE acmecorp1.clusters_conversations OWNER TO postgres;

--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.clusters_conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.clusters_conversations_id_seq OWNER TO postgres;

--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.clusters_conversations_id_seq OWNED BY acmecorp1.clusters_conversations.id;


--
-- Name: clusters_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.clusters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.clusters_id_seq OWNER TO postgres;

--
-- Name: clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.clusters_id_seq OWNED BY acmecorp1.clusters.id;


--
-- Name: companies; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.companies (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    company_slug character varying,
    phone character varying,
    country_code character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    industry character varying,
    privacy_policy text,
    time_zone character varying,
    leader character varying,
    locale character varying DEFAULT 'en'::character varying
);


ALTER TABLE acmecorp1.companies OWNER TO postgres;

--
-- Name: COLUMN companies.locale; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.companies.locale IS 'Language identifier';


--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.companies_id_seq OWNED BY acmecorp1.companies.id;


--
-- Name: conversation_answers; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.conversation_answers (
    id bigint NOT NULL,
    conversation_question_id bigint,
    user_id bigint,
    text character varying,
    value character varying,
    response character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.conversation_answers OWNER TO postgres;

--
-- Name: COLUMN conversation_answers.text; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_answers.text IS 'Description of Answer';


--
-- Name: COLUMN conversation_answers.value; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_answers.value IS 'Value of answer';


--
-- Name: COLUMN conversation_answers.response; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_answers.response IS 'Response by Employee';


--
-- Name: conversation_answers_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.conversation_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.conversation_answers_id_seq OWNER TO postgres;

--
-- Name: conversation_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.conversation_answers_id_seq OWNED BY acmecorp1.conversation_answers.id;


--
-- Name: conversation_questions; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.conversation_questions (
    id bigint NOT NULL,
    conversation_id bigint,
    question_text character varying,
    question_type integer DEFAULT 0,
    driver character varying,
    tenure_group character varying,
    tenure_on_delivery character varying,
    employee_group character varying,
    department character varying,
    choices json,
    question_order integer,
    is_answered boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.conversation_questions OWNER TO postgres;

--
-- Name: COLUMN conversation_questions.question_text; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.question_text IS 'Question tex';


--
-- Name: COLUMN conversation_questions.question_type; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.question_type IS 'Type of question';


--
-- Name: COLUMN conversation_questions.driver; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.driver IS 'Driving factor';


--
-- Name: COLUMN conversation_questions.tenure_group; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.tenure_group IS 'Tenure group';


--
-- Name: COLUMN conversation_questions.tenure_on_delivery; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.tenure_on_delivery IS 'Tenure delivery in days';


--
-- Name: COLUMN conversation_questions.employee_group; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.employee_group IS 'Group which employee belongs to';


--
-- Name: COLUMN conversation_questions.department; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.department IS 'Department for conversation';


--
-- Name: COLUMN conversation_questions.choices; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.choices IS 'JSON of choices if any for this question';


--
-- Name: COLUMN conversation_questions.question_order; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.question_order IS 'Order value of question';


--
-- Name: COLUMN conversation_questions.is_answered; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversation_questions.is_answered IS 'Answered yet or not';


--
-- Name: conversation_questions_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.conversation_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.conversation_questions_id_seq OWNER TO postgres;

--
-- Name: conversation_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.conversation_questions_id_seq OWNED BY acmecorp1.conversation_questions.id;


--
-- Name: conversations; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.conversations (
    id bigint NOT NULL,
    survey_id bigint,
    user_id bigint,
    is_editable boolean,
    expiry timestamp without time zone,
    active boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.conversations OWNER TO postgres;

--
-- Name: COLUMN conversations.is_editable; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversations.is_editable IS 'Weather conversation are editable or not';


--
-- Name: COLUMN conversations.expiry; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversations.expiry IS 'Expiry date of conversation';


--
-- Name: COLUMN conversations.active; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.conversations.active IS 'Active or Inactive';


--
-- Name: conversations_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.conversations_id_seq OWNER TO postgres;

--
-- Name: conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.conversations_id_seq OWNED BY acmecorp1.conversations.id;


--
-- Name: orders; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.orders (
    id bigint NOT NULL,
    order_id character varying,
    amount character varying,
    currency_type character varying,
    receipt character varying,
    entity character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.orders OWNER TO postgres;

--
-- Name: COLUMN orders.amount; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.orders.amount IS 'Amount of payment';


--
-- Name: COLUMN orders.currency_type; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.orders.currency_type IS 'Type of payment current';


--
-- Name: COLUMN orders.receipt; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.orders.receipt IS 'Receipt of payment';


--
-- Name: COLUMN orders.entity; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.orders.entity IS 'Payment entity';


--
-- Name: COLUMN orders.status; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.orders.status IS 'Payment status';


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.orders_id_seq OWNED BY acmecorp1.orders.id;


--
-- Name: password_histories; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.password_histories (
    id bigint NOT NULL,
    user_id character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.password_histories OWNER TO postgres;

--
-- Name: password_histories_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.password_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.password_histories_id_seq OWNER TO postgres;

--
-- Name: password_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.password_histories_id_seq OWNED BY acmecorp1.password_histories.id;


--
-- Name: permissions; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.permissions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.permissions OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.permissions_id_seq OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.permissions_id_seq OWNED BY acmecorp1.permissions.id;


--
-- Name: questions; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.questions (
    id bigint NOT NULL,
    question_type integer,
    description text,
    active boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    choices character varying[],
    "order" integer,
    min integer,
    max integer,
    step integer,
    driver character varying,
    tenure_group integer,
    tenure_on_delivery integer,
    employee_group character varying,
    department character varying
);


ALTER TABLE acmecorp1.questions OWNER TO postgres;

--
-- Name: COLUMN questions.choices; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.choices IS 'choices in the question';


--
-- Name: COLUMN questions."order"; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions."order" IS 'order of the questions';


--
-- Name: COLUMN questions.min; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.min IS 'minimum value of range questions';


--
-- Name: COLUMN questions.max; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.max IS 'maximum value of range questions';


--
-- Name: COLUMN questions.step; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.step IS 'steps in range questions';


--
-- Name: COLUMN questions.driver; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.driver IS 'The driver for the question i.e exiting employee';


--
-- Name: COLUMN questions.tenure_group; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.tenure_group IS 'Tenure group in years';


--
-- Name: COLUMN questions.tenure_on_delivery; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.tenure_on_delivery IS 'tenure to delivered in days';


--
-- Name: COLUMN questions.employee_group; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.employee_group IS 'Group under which employee falls';


--
-- Name: COLUMN questions.department; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.questions.department IS 'Department for questions';


--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.questions_id_seq OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.questions_id_seq OWNED BY acmecorp1.questions.id;


--
-- Name: role_permissions; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.role_permissions (
    id bigint NOT NULL,
    role_id bigint,
    permission_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.role_permissions OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.role_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.role_permissions_id_seq OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.role_permissions_id_seq OWNED BY acmecorp1.role_permissions.id;


--
-- Name: roles; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.roles (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.roles_id_seq OWNED BY acmecorp1.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE acmecorp1.schema_migrations OWNER TO postgres;

--
-- Name: sms_credits; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.sms_credits (
    id bigint NOT NULL,
    transaction_type integer DEFAULT 0,
    "left" integer,
    purpose character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.sms_credits OWNER TO postgres;

--
-- Name: COLUMN sms_credits.transaction_type; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.sms_credits.transaction_type IS 'Smscredits type';


--
-- Name: COLUMN sms_credits."left"; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.sms_credits."left" IS 'Left sms credits';


--
-- Name: COLUMN sms_credits.purpose; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.sms_credits.purpose IS 'Purpose for credit and debit of Smscredits';


--
-- Name: sms_credits_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.sms_credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.sms_credits_id_seq OWNER TO postgres;

--
-- Name: sms_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.sms_credits_id_seq OWNED BY acmecorp1.sms_credits.id;


--
-- Name: survey_question_answers; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.survey_question_answers (
    id bigint NOT NULL,
    survey_question_id bigint,
    user_id bigint,
    value character varying,
    option character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.survey_question_answers OWNER TO postgres;

--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.survey_question_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.survey_question_answers_id_seq OWNER TO postgres;

--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.survey_question_answers_id_seq OWNED BY acmecorp1.survey_question_answers.id;


--
-- Name: survey_questions; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.survey_questions (
    id bigint NOT NULL,
    survey_id bigint,
    question_id bigint,
    answered boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.survey_questions OWNER TO postgres;

--
-- Name: survey_questions_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.survey_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.survey_questions_id_seq OWNER TO postgres;

--
-- Name: survey_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.survey_questions_id_seq OWNED BY acmecorp1.survey_questions.id;


--
-- Name: survey_rules; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.survey_rules (
    id bigint NOT NULL,
    survey_id bigint,
    frequency character varying[],
    reminder_settings character varying[],
    frequency_value character varying,
    reminder_setting_value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.survey_rules OWNER TO postgres;

--
-- Name: COLUMN survey_rules.frequency; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.survey_rules.frequency IS 'frequency of the survey rules';


--
-- Name: COLUMN survey_rules.reminder_settings; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.survey_rules.reminder_settings IS 'Reminder settings of survey rules';


--
-- Name: COLUMN survey_rules.frequency_value; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.survey_rules.frequency_value IS 'Frequency value of survey rules';


--
-- Name: COLUMN survey_rules.reminder_setting_value; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.survey_rules.reminder_setting_value IS 'Reminder setting value of survey rules';


--
-- Name: survey_rules_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.survey_rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.survey_rules_id_seq OWNER TO postgres;

--
-- Name: survey_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.survey_rules_id_seq OWNED BY acmecorp1.survey_rules.id;


--
-- Name: surveys; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.surveys (
    id bigint NOT NULL,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    survey_type character varying,
    survey_status character varying
);


ALTER TABLE acmecorp1.surveys OWNER TO postgres;

--
-- Name: COLUMN surveys.name; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.surveys.name IS 'Name of the survey';


--
-- Name: COLUMN surveys.active; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.surveys.active IS 'Survey is active or not';


--
-- Name: COLUMN surveys.survey_type; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.surveys.survey_type IS 'type of survey';


--
-- Name: COLUMN surveys.survey_status; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.surveys.survey_status IS 'Status of survey';


--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.surveys_id_seq OWNER TO postgres;

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.surveys_id_seq OWNED BY acmecorp1.surveys.id;


--
-- Name: templates; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.templates (
    id bigint NOT NULL,
    name character varying,
    sender_name character varying,
    subject character varying,
    content text,
    template_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.templates OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.templates_id_seq OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.templates_id_seq OWNED BY acmecorp1.templates.id;


--
-- Name: user_roles; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.user_roles (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.user_roles OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.user_roles_id_seq OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.user_roles_id_seq OWNED BY acmecorp1.user_roles.id;


--
-- Name: user_surveys; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.user_surveys (
    id bigint NOT NULL,
    user_id bigint,
    survey_id bigint,
    active boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE acmecorp1.user_surveys OWNER TO postgres;

--
-- Name: user_surveys_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.user_surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.user_surveys_id_seq OWNER TO postgres;

--
-- Name: user_surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.user_surveys_id_seq OWNED BY acmecorp1.user_surveys.id;


--
-- Name: users; Type: TABLE; Schema: acmecorp1; Owner: postgres
--

CREATE TABLE acmecorp1.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    otp character varying DEFAULT ''::character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    employee_id character varying,
    department character varying,
    location character varying,
    supervisor character varying,
    head_of_department character varying,
    date_of_joining character varying,
    employment_status character varying,
    active character varying DEFAULT '1'::character varying,
    promotion_date character varying,
    current_job_role character varying,
    employment_type character varying,
    sub_department character varying,
    account character varying,
    country character varying,
    country_code character varying,
    date_of_birth character varying,
    termination_date character varying,
    current_status character varying,
    toc_accepted boolean DEFAULT false
);


ALTER TABLE acmecorp1.users OWNER TO postgres;

--
-- Name: COLUMN users.toc_accepted; Type: COMMENT; Schema: acmecorp1; Owner: postgres
--

COMMENT ON COLUMN acmecorp1.users.toc_accepted IS 'Terms & Condition Accepted by user or not';


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: acmecorp1; Owner: postgres
--

CREATE SEQUENCE acmecorp1.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acmecorp1.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: acmecorp1; Owner: postgres
--

ALTER SEQUENCE acmecorp1.users_id_seq OWNED BY acmecorp1.users.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.active_storage_attachments_id_seq OWNED BY decabits.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.active_storage_blobs_id_seq OWNED BY decabits.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.ar_internal_metadata OWNER TO postgres;

--
-- Name: audits; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.audits (
    id bigint NOT NULL,
    auditable_id integer,
    auditable_type character varying,
    associated_id integer,
    associated_type character varying,
    user_id integer,
    user_type character varying,
    username character varying,
    action character varying,
    audited_changes text,
    version integer DEFAULT 0,
    comment character varying,
    remote_address character varying,
    request_uuid character varying,
    created_at timestamp without time zone
);


ALTER TABLE decabits.audits OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.audits_id_seq OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.audits_id_seq OWNED BY decabits.audits.id;


--
-- Name: clusters; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.clusters (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.clusters OWNER TO postgres;

--
-- Name: COLUMN clusters.name; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.clusters.name IS 'Name of cluster';


--
-- Name: clusters_conversations; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.clusters_conversations (
    id bigint NOT NULL,
    cluster_id bigint,
    conversation_id bigint
);


ALTER TABLE decabits.clusters_conversations OWNER TO postgres;

--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.clusters_conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.clusters_conversations_id_seq OWNER TO postgres;

--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.clusters_conversations_id_seq OWNED BY decabits.clusters_conversations.id;


--
-- Name: clusters_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.clusters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.clusters_id_seq OWNER TO postgres;

--
-- Name: clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.clusters_id_seq OWNED BY decabits.clusters.id;


--
-- Name: companies; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.companies (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    company_slug character varying,
    phone character varying,
    country_code character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    industry character varying,
    privacy_policy text,
    time_zone character varying,
    leader character varying,
    locale character varying DEFAULT 'en'::character varying
);


ALTER TABLE decabits.companies OWNER TO postgres;

--
-- Name: COLUMN companies.locale; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.companies.locale IS 'Language identifier';


--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.companies_id_seq OWNED BY decabits.companies.id;


--
-- Name: conversation_answers; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.conversation_answers (
    id bigint NOT NULL,
    conversation_question_id bigint,
    user_id bigint,
    text character varying,
    value character varying,
    response character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.conversation_answers OWNER TO postgres;

--
-- Name: COLUMN conversation_answers.text; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_answers.text IS 'Description of Answer';


--
-- Name: COLUMN conversation_answers.value; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_answers.value IS 'Value of answer';


--
-- Name: COLUMN conversation_answers.response; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_answers.response IS 'Response by Employee';


--
-- Name: conversation_answers_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.conversation_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.conversation_answers_id_seq OWNER TO postgres;

--
-- Name: conversation_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.conversation_answers_id_seq OWNED BY decabits.conversation_answers.id;


--
-- Name: conversation_questions; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.conversation_questions (
    id bigint NOT NULL,
    conversation_id bigint,
    question_text character varying,
    question_type integer DEFAULT 0,
    driver character varying,
    tenure_group character varying,
    tenure_on_delivery character varying,
    employee_group character varying,
    department character varying,
    choices json,
    question_order integer,
    is_answered boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.conversation_questions OWNER TO postgres;

--
-- Name: COLUMN conversation_questions.question_text; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.question_text IS 'Question tex';


--
-- Name: COLUMN conversation_questions.question_type; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.question_type IS 'Type of question';


--
-- Name: COLUMN conversation_questions.driver; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.driver IS 'Driving factor';


--
-- Name: COLUMN conversation_questions.tenure_group; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.tenure_group IS 'Tenure group';


--
-- Name: COLUMN conversation_questions.tenure_on_delivery; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.tenure_on_delivery IS 'Tenure delivery in days';


--
-- Name: COLUMN conversation_questions.employee_group; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.employee_group IS 'Group which employee belongs to';


--
-- Name: COLUMN conversation_questions.department; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.department IS 'Department for conversation';


--
-- Name: COLUMN conversation_questions.choices; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.choices IS 'JSON of choices if any for this question';


--
-- Name: COLUMN conversation_questions.question_order; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.question_order IS 'Order value of question';


--
-- Name: COLUMN conversation_questions.is_answered; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversation_questions.is_answered IS 'Answered yet or not';


--
-- Name: conversation_questions_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.conversation_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.conversation_questions_id_seq OWNER TO postgres;

--
-- Name: conversation_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.conversation_questions_id_seq OWNED BY decabits.conversation_questions.id;


--
-- Name: conversations; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.conversations (
    id bigint NOT NULL,
    survey_id bigint,
    user_id bigint,
    is_editable boolean,
    expiry timestamp without time zone,
    active boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.conversations OWNER TO postgres;

--
-- Name: COLUMN conversations.is_editable; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversations.is_editable IS 'Weather conversation are editable or not';


--
-- Name: COLUMN conversations.expiry; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversations.expiry IS 'Expiry date of conversation';


--
-- Name: COLUMN conversations.active; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.conversations.active IS 'Active or Inactive';


--
-- Name: conversations_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.conversations_id_seq OWNER TO postgres;

--
-- Name: conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.conversations_id_seq OWNED BY decabits.conversations.id;


--
-- Name: orders; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.orders (
    id bigint NOT NULL,
    order_id character varying,
    amount character varying,
    currency_type character varying,
    receipt character varying,
    entity character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.orders OWNER TO postgres;

--
-- Name: COLUMN orders.amount; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.orders.amount IS 'Amount of payment';


--
-- Name: COLUMN orders.currency_type; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.orders.currency_type IS 'Type of payment current';


--
-- Name: COLUMN orders.receipt; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.orders.receipt IS 'Receipt of payment';


--
-- Name: COLUMN orders.entity; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.orders.entity IS 'Payment entity';


--
-- Name: COLUMN orders.status; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.orders.status IS 'Payment status';


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.orders_id_seq OWNED BY decabits.orders.id;


--
-- Name: password_histories; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.password_histories (
    id bigint NOT NULL,
    user_id character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.password_histories OWNER TO postgres;

--
-- Name: password_histories_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.password_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.password_histories_id_seq OWNER TO postgres;

--
-- Name: password_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.password_histories_id_seq OWNED BY decabits.password_histories.id;


--
-- Name: permissions; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.permissions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.permissions OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.permissions_id_seq OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.permissions_id_seq OWNED BY decabits.permissions.id;


--
-- Name: questions; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.questions (
    id bigint NOT NULL,
    question_type integer,
    description text,
    active boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    choices character varying[],
    "order" integer,
    min integer,
    max integer,
    step integer,
    driver character varying,
    tenure_group integer,
    tenure_on_delivery integer,
    employee_group character varying,
    department character varying
);


ALTER TABLE decabits.questions OWNER TO postgres;

--
-- Name: COLUMN questions.choices; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.choices IS 'choices in the question';


--
-- Name: COLUMN questions."order"; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions."order" IS 'order of the questions';


--
-- Name: COLUMN questions.min; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.min IS 'minimum value of range questions';


--
-- Name: COLUMN questions.max; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.max IS 'maximum value of range questions';


--
-- Name: COLUMN questions.step; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.step IS 'steps in range questions';


--
-- Name: COLUMN questions.driver; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.driver IS 'The driver for the question i.e exiting employee';


--
-- Name: COLUMN questions.tenure_group; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.tenure_group IS 'Tenure group in years';


--
-- Name: COLUMN questions.tenure_on_delivery; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.tenure_on_delivery IS 'tenure to delivered in days';


--
-- Name: COLUMN questions.employee_group; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.employee_group IS 'Group under which employee falls';


--
-- Name: COLUMN questions.department; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.questions.department IS 'Department for questions';


--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.questions_id_seq OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.questions_id_seq OWNED BY decabits.questions.id;


--
-- Name: role_permissions; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.role_permissions (
    id bigint NOT NULL,
    role_id bigint,
    permission_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.role_permissions OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.role_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.role_permissions_id_seq OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.role_permissions_id_seq OWNED BY decabits.role_permissions.id;


--
-- Name: roles; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.roles (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.roles_id_seq OWNED BY decabits.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE decabits.schema_migrations OWNER TO postgres;

--
-- Name: sms_credits; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.sms_credits (
    id bigint NOT NULL,
    transaction_type integer DEFAULT 0,
    "left" integer,
    purpose character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.sms_credits OWNER TO postgres;

--
-- Name: COLUMN sms_credits.transaction_type; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.sms_credits.transaction_type IS 'Smscredits type';


--
-- Name: COLUMN sms_credits."left"; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.sms_credits."left" IS 'Left sms credits';


--
-- Name: COLUMN sms_credits.purpose; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.sms_credits.purpose IS 'Purpose for credit and debit of Smscredits';


--
-- Name: sms_credits_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.sms_credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.sms_credits_id_seq OWNER TO postgres;

--
-- Name: sms_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.sms_credits_id_seq OWNED BY decabits.sms_credits.id;


--
-- Name: survey_question_answers; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.survey_question_answers (
    id bigint NOT NULL,
    survey_question_id bigint,
    user_id bigint,
    value character varying,
    option character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.survey_question_answers OWNER TO postgres;

--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.survey_question_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.survey_question_answers_id_seq OWNER TO postgres;

--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.survey_question_answers_id_seq OWNED BY decabits.survey_question_answers.id;


--
-- Name: survey_questions; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.survey_questions (
    id bigint NOT NULL,
    survey_id bigint,
    question_id bigint,
    answered boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.survey_questions OWNER TO postgres;

--
-- Name: survey_questions_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.survey_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.survey_questions_id_seq OWNER TO postgres;

--
-- Name: survey_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.survey_questions_id_seq OWNED BY decabits.survey_questions.id;


--
-- Name: survey_rules; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.survey_rules (
    id bigint NOT NULL,
    survey_id bigint,
    frequency character varying[],
    reminder_settings character varying[],
    frequency_value character varying,
    reminder_setting_value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.survey_rules OWNER TO postgres;

--
-- Name: COLUMN survey_rules.frequency; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.survey_rules.frequency IS 'frequency of the survey rules';


--
-- Name: COLUMN survey_rules.reminder_settings; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.survey_rules.reminder_settings IS 'Reminder settings of survey rules';


--
-- Name: COLUMN survey_rules.frequency_value; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.survey_rules.frequency_value IS 'Frequency value of survey rules';


--
-- Name: COLUMN survey_rules.reminder_setting_value; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.survey_rules.reminder_setting_value IS 'Reminder setting value of survey rules';


--
-- Name: survey_rules_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.survey_rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.survey_rules_id_seq OWNER TO postgres;

--
-- Name: survey_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.survey_rules_id_seq OWNED BY decabits.survey_rules.id;


--
-- Name: surveys; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.surveys (
    id bigint NOT NULL,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    survey_type character varying,
    survey_status character varying
);


ALTER TABLE decabits.surveys OWNER TO postgres;

--
-- Name: COLUMN surveys.name; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.surveys.name IS 'Name of the survey';


--
-- Name: COLUMN surveys.active; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.surveys.active IS 'Survey is active or not';


--
-- Name: COLUMN surveys.survey_type; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.surveys.survey_type IS 'type of survey';


--
-- Name: COLUMN surveys.survey_status; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.surveys.survey_status IS 'Status of survey';


--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.surveys_id_seq OWNER TO postgres;

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.surveys_id_seq OWNED BY decabits.surveys.id;


--
-- Name: templates; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.templates (
    id bigint NOT NULL,
    name character varying,
    sender_name character varying,
    subject character varying,
    content text,
    template_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.templates OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.templates_id_seq OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.templates_id_seq OWNED BY decabits.templates.id;


--
-- Name: user_roles; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.user_roles (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.user_roles OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.user_roles_id_seq OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.user_roles_id_seq OWNED BY decabits.user_roles.id;


--
-- Name: user_surveys; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.user_surveys (
    id bigint NOT NULL,
    user_id bigint,
    survey_id bigint,
    active boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE decabits.user_surveys OWNER TO postgres;

--
-- Name: user_surveys_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.user_surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.user_surveys_id_seq OWNER TO postgres;

--
-- Name: user_surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.user_surveys_id_seq OWNED BY decabits.user_surveys.id;


--
-- Name: users; Type: TABLE; Schema: decabits; Owner: postgres
--

CREATE TABLE decabits.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    otp character varying DEFAULT ''::character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    employee_id character varying,
    department character varying,
    location character varying,
    supervisor character varying,
    head_of_department character varying,
    date_of_joining character varying,
    employment_status character varying,
    active character varying DEFAULT '1'::character varying,
    promotion_date character varying,
    current_job_role character varying,
    employment_type character varying,
    sub_department character varying,
    account character varying,
    country character varying,
    country_code character varying,
    date_of_birth character varying,
    termination_date character varying,
    current_status character varying,
    toc_accepted boolean DEFAULT false
);


ALTER TABLE decabits.users OWNER TO postgres;

--
-- Name: COLUMN users.toc_accepted; Type: COMMENT; Schema: decabits; Owner: postgres
--

COMMENT ON COLUMN decabits.users.toc_accepted IS 'Terms & Condition Accepted by user or not';


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: decabits; Owner: postgres
--

CREATE SEQUENCE decabits.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decabits.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: decabits; Owner: postgres
--

ALTER SEQUENCE decabits.users_id_seq OWNED BY decabits.users.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: audits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audits (
    id bigint NOT NULL,
    auditable_id integer,
    auditable_type character varying,
    associated_id integer,
    associated_type character varying,
    user_id integer,
    user_type character varying,
    username character varying,
    action character varying,
    audited_changes text,
    version integer DEFAULT 0,
    comment character varying,
    remote_address character varying,
    request_uuid character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.audits OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audits_id_seq OWNER TO postgres;

--
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audits_id_seq OWNED BY public.audits.id;


--
-- Name: clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusters (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.clusters OWNER TO postgres;

--
-- Name: COLUMN clusters.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clusters.name IS 'Name of cluster';


--
-- Name: clusters_conversations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusters_conversations (
    id bigint NOT NULL,
    cluster_id bigint,
    conversation_id bigint
);


ALTER TABLE public.clusters_conversations OWNER TO postgres;

--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clusters_conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clusters_conversations_id_seq OWNER TO postgres;

--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clusters_conversations_id_seq OWNED BY public.clusters_conversations.id;


--
-- Name: clusters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clusters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clusters_id_seq OWNER TO postgres;

--
-- Name: clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clusters_id_seq OWNED BY public.clusters.id;


--
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    company_slug character varying,
    phone character varying,
    country_code character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    industry character varying,
    privacy_policy text,
    time_zone character varying,
    leader character varying,
    locale character varying DEFAULT 'en'::character varying
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- Name: COLUMN companies.locale; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.companies.locale IS 'Language identifier';


--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: conversation_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conversation_answers (
    id bigint NOT NULL,
    conversation_question_id bigint,
    user_id bigint,
    text character varying,
    value character varying,
    response character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.conversation_answers OWNER TO postgres;

--
-- Name: COLUMN conversation_answers.text; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_answers.text IS 'Description of Answer';


--
-- Name: COLUMN conversation_answers.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_answers.value IS 'Value of answer';


--
-- Name: COLUMN conversation_answers.response; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_answers.response IS 'Response by Employee';


--
-- Name: conversation_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversation_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversation_answers_id_seq OWNER TO postgres;

--
-- Name: conversation_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conversation_answers_id_seq OWNED BY public.conversation_answers.id;


--
-- Name: conversation_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conversation_questions (
    id bigint NOT NULL,
    conversation_id bigint,
    question_text character varying,
    question_type integer DEFAULT 0,
    driver character varying,
    tenure_group character varying,
    tenure_on_delivery character varying,
    employee_group character varying,
    department character varying,
    choices json,
    question_order integer,
    is_answered boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.conversation_questions OWNER TO postgres;

--
-- Name: COLUMN conversation_questions.question_text; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.question_text IS 'Question tex';


--
-- Name: COLUMN conversation_questions.question_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.question_type IS 'Type of question';


--
-- Name: COLUMN conversation_questions.driver; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.driver IS 'Driving factor';


--
-- Name: COLUMN conversation_questions.tenure_group; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.tenure_group IS 'Tenure group';


--
-- Name: COLUMN conversation_questions.tenure_on_delivery; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.tenure_on_delivery IS 'Tenure delivery in days';


--
-- Name: COLUMN conversation_questions.employee_group; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.employee_group IS 'Group which employee belongs to';


--
-- Name: COLUMN conversation_questions.department; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.department IS 'Department for conversation';


--
-- Name: COLUMN conversation_questions.choices; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.choices IS 'JSON of choices if any for this question';


--
-- Name: COLUMN conversation_questions.question_order; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.question_order IS 'Order value of question';


--
-- Name: COLUMN conversation_questions.is_answered; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversation_questions.is_answered IS 'Answered yet or not';


--
-- Name: conversation_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversation_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversation_questions_id_seq OWNER TO postgres;

--
-- Name: conversation_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conversation_questions_id_seq OWNED BY public.conversation_questions.id;


--
-- Name: conversations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conversations (
    id bigint NOT NULL,
    survey_id bigint,
    user_id bigint,
    is_editable boolean,
    expiry timestamp without time zone,
    active boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.conversations OWNER TO postgres;

--
-- Name: COLUMN conversations.is_editable; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversations.is_editable IS 'Weather conversation are editable or not';


--
-- Name: COLUMN conversations.expiry; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversations.expiry IS 'Expiry date of conversation';


--
-- Name: COLUMN conversations.active; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.conversations.active IS 'Active or Inactive';


--
-- Name: conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversations_id_seq OWNER TO postgres;

--
-- Name: conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conversations_id_seq OWNED BY public.conversations.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    order_id character varying,
    amount character varying,
    currency_type character varying,
    receipt character varying,
    entity character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: COLUMN orders.amount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.orders.amount IS 'Amount of payment';


--
-- Name: COLUMN orders.currency_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.orders.currency_type IS 'Type of payment current';


--
-- Name: COLUMN orders.receipt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.orders.receipt IS 'Receipt of payment';


--
-- Name: COLUMN orders.entity; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.orders.entity IS 'Payment entity';


--
-- Name: COLUMN orders.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.orders.status IS 'Payment status';


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: password_histories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_histories (
    id bigint NOT NULL,
    user_id character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.password_histories OWNER TO postgres;

--
-- Name: password_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.password_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.password_histories_id_seq OWNER TO postgres;

--
-- Name: password_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.password_histories_id_seq OWNED BY public.password_histories.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.permissions OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO postgres;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id bigint NOT NULL,
    question_type integer,
    description text,
    active boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    choices character varying[],
    "order" integer,
    min integer,
    max integer,
    step integer,
    driver character varying,
    tenure_group integer,
    tenure_on_delivery integer,
    employee_group character varying,
    department character varying
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- Name: COLUMN questions.choices; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.choices IS 'choices in the question';


--
-- Name: COLUMN questions."order"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions."order" IS 'order of the questions';


--
-- Name: COLUMN questions.min; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.min IS 'minimum value of range questions';


--
-- Name: COLUMN questions.max; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.max IS 'maximum value of range questions';


--
-- Name: COLUMN questions.step; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.step IS 'steps in range questions';


--
-- Name: COLUMN questions.driver; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.driver IS 'The driver for the question i.e exiting employee';


--
-- Name: COLUMN questions.tenure_group; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.tenure_group IS 'Tenure group in years';


--
-- Name: COLUMN questions.tenure_on_delivery; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.tenure_on_delivery IS 'tenure to delivered in days';


--
-- Name: COLUMN questions.employee_group; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.employee_group IS 'Group under which employee falls';


--
-- Name: COLUMN questions.department; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.questions.department IS 'Department for questions';


--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: role_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_permissions (
    id bigint NOT NULL,
    role_id bigint,
    permission_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.role_permissions OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_permissions_id_seq OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_permissions_id_seq OWNED BY public.role_permissions.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: sms_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sms_credits (
    id bigint NOT NULL,
    transaction_type integer DEFAULT 0,
    "left" integer,
    purpose character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sms_credits OWNER TO postgres;

--
-- Name: COLUMN sms_credits.transaction_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sms_credits.transaction_type IS 'Smscredits type';


--
-- Name: COLUMN sms_credits."left"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sms_credits."left" IS 'Left sms credits';


--
-- Name: COLUMN sms_credits.purpose; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sms_credits.purpose IS 'Purpose for credit and debit of Smscredits';


--
-- Name: sms_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sms_credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sms_credits_id_seq OWNER TO postgres;

--
-- Name: sms_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sms_credits_id_seq OWNED BY public.sms_credits.id;


--
-- Name: survey_question_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_question_answers (
    id bigint NOT NULL,
    survey_question_id bigint,
    user_id bigint,
    value character varying,
    option character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.survey_question_answers OWNER TO postgres;

--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_question_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_question_answers_id_seq OWNER TO postgres;

--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_question_answers_id_seq OWNED BY public.survey_question_answers.id;


--
-- Name: survey_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_questions (
    id bigint NOT NULL,
    survey_id bigint,
    question_id bigint,
    answered boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.survey_questions OWNER TO postgres;

--
-- Name: survey_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_questions_id_seq OWNER TO postgres;

--
-- Name: survey_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_questions_id_seq OWNED BY public.survey_questions.id;


--
-- Name: survey_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.survey_rules (
    id bigint NOT NULL,
    survey_id bigint,
    frequency character varying[],
    reminder_settings character varying[],
    frequency_value character varying,
    reminder_setting_value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.survey_rules OWNER TO postgres;

--
-- Name: COLUMN survey_rules.frequency; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.survey_rules.frequency IS 'frequency of the survey rules';


--
-- Name: COLUMN survey_rules.reminder_settings; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.survey_rules.reminder_settings IS 'Reminder settings of survey rules';


--
-- Name: COLUMN survey_rules.frequency_value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.survey_rules.frequency_value IS 'Frequency value of survey rules';


--
-- Name: COLUMN survey_rules.reminder_setting_value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.survey_rules.reminder_setting_value IS 'Reminder setting value of survey rules';


--
-- Name: survey_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.survey_rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.survey_rules_id_seq OWNER TO postgres;

--
-- Name: survey_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.survey_rules_id_seq OWNED BY public.survey_rules.id;


--
-- Name: surveys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.surveys (
    id bigint NOT NULL,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    survey_type character varying,
    survey_status character varying
);


ALTER TABLE public.surveys OWNER TO postgres;

--
-- Name: COLUMN surveys.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.surveys.name IS 'Name of the survey';


--
-- Name: COLUMN surveys.active; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.surveys.active IS 'Survey is active or not';


--
-- Name: COLUMN surveys.survey_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.surveys.survey_type IS 'type of survey';


--
-- Name: COLUMN surveys.survey_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.surveys.survey_status IS 'Status of survey';


--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.surveys_id_seq OWNER TO postgres;

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.surveys_id_seq OWNED BY public.surveys.id;


--
-- Name: templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.templates (
    id bigint NOT NULL,
    name character varying,
    sender_name character varying,
    subject character varying,
    content text,
    template_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.templates OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.templates_id_seq OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.templates_id_seq OWNED BY public.templates.id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_roles (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_roles OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_id_seq OWNER TO postgres;

--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;


--
-- Name: user_surveys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_surveys (
    id bigint NOT NULL,
    user_id bigint,
    survey_id bigint,
    active boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_surveys OWNER TO postgres;

--
-- Name: user_surveys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_surveys_id_seq OWNER TO postgres;

--
-- Name: user_surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_surveys_id_seq OWNED BY public.user_surveys.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    otp character varying DEFAULT ''::character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    employee_id character varying,
    department character varying,
    location character varying,
    supervisor character varying,
    head_of_department character varying,
    date_of_joining character varying,
    employment_status character varying,
    active character varying DEFAULT '1'::character varying,
    promotion_date character varying,
    current_job_role character varying,
    employment_type character varying,
    sub_department character varying,
    account character varying,
    country character varying,
    country_code character varying,
    date_of_birth character varying,
    termination_date character varying,
    current_status character varying,
    toc_accepted boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: COLUMN users.toc_accepted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.toc_accepted IS 'Terms & Condition Accepted by user or not';


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('acmecorp.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('acmecorp.active_storage_blobs_id_seq'::regclass);


--
-- Name: audits id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.audits ALTER COLUMN id SET DEFAULT nextval('acmecorp.audits_id_seq'::regclass);


--
-- Name: clusters id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.clusters ALTER COLUMN id SET DEFAULT nextval('acmecorp.clusters_id_seq'::regclass);


--
-- Name: clusters_conversations id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.clusters_conversations ALTER COLUMN id SET DEFAULT nextval('acmecorp.clusters_conversations_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.companies ALTER COLUMN id SET DEFAULT nextval('acmecorp.companies_id_seq'::regclass);


--
-- Name: conversation_answers id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.conversation_answers ALTER COLUMN id SET DEFAULT nextval('acmecorp.conversation_answers_id_seq'::regclass);


--
-- Name: conversation_questions id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.conversation_questions ALTER COLUMN id SET DEFAULT nextval('acmecorp.conversation_questions_id_seq'::regclass);


--
-- Name: conversations id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.conversations ALTER COLUMN id SET DEFAULT nextval('acmecorp.conversations_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.orders ALTER COLUMN id SET DEFAULT nextval('acmecorp.orders_id_seq'::regclass);


--
-- Name: password_histories id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.password_histories ALTER COLUMN id SET DEFAULT nextval('acmecorp.password_histories_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.permissions ALTER COLUMN id SET DEFAULT nextval('acmecorp.permissions_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.questions ALTER COLUMN id SET DEFAULT nextval('acmecorp.questions_id_seq'::regclass);


--
-- Name: role_permissions id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.role_permissions ALTER COLUMN id SET DEFAULT nextval('acmecorp.role_permissions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.roles ALTER COLUMN id SET DEFAULT nextval('acmecorp.roles_id_seq'::regclass);


--
-- Name: sms_credits id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.sms_credits ALTER COLUMN id SET DEFAULT nextval('acmecorp.sms_credits_id_seq'::regclass);


--
-- Name: survey_question_answers id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.survey_question_answers ALTER COLUMN id SET DEFAULT nextval('acmecorp.survey_question_answers_id_seq'::regclass);


--
-- Name: survey_questions id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.survey_questions ALTER COLUMN id SET DEFAULT nextval('acmecorp.survey_questions_id_seq'::regclass);


--
-- Name: survey_rules id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.survey_rules ALTER COLUMN id SET DEFAULT nextval('acmecorp.survey_rules_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.surveys ALTER COLUMN id SET DEFAULT nextval('acmecorp.surveys_id_seq'::regclass);


--
-- Name: templates id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.templates ALTER COLUMN id SET DEFAULT nextval('acmecorp.templates_id_seq'::regclass);


--
-- Name: user_roles id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.user_roles ALTER COLUMN id SET DEFAULT nextval('acmecorp.user_roles_id_seq'::regclass);


--
-- Name: user_surveys id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.user_surveys ALTER COLUMN id SET DEFAULT nextval('acmecorp.user_surveys_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.users ALTER COLUMN id SET DEFAULT nextval('acmecorp.users_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('acmecorp1.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('acmecorp1.active_storage_blobs_id_seq'::regclass);


--
-- Name: audits id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.audits ALTER COLUMN id SET DEFAULT nextval('acmecorp1.audits_id_seq'::regclass);


--
-- Name: clusters id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.clusters ALTER COLUMN id SET DEFAULT nextval('acmecorp1.clusters_id_seq'::regclass);


--
-- Name: clusters_conversations id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.clusters_conversations ALTER COLUMN id SET DEFAULT nextval('acmecorp1.clusters_conversations_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.companies ALTER COLUMN id SET DEFAULT nextval('acmecorp1.companies_id_seq'::regclass);


--
-- Name: conversation_answers id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.conversation_answers ALTER COLUMN id SET DEFAULT nextval('acmecorp1.conversation_answers_id_seq'::regclass);


--
-- Name: conversation_questions id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.conversation_questions ALTER COLUMN id SET DEFAULT nextval('acmecorp1.conversation_questions_id_seq'::regclass);


--
-- Name: conversations id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.conversations ALTER COLUMN id SET DEFAULT nextval('acmecorp1.conversations_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.orders ALTER COLUMN id SET DEFAULT nextval('acmecorp1.orders_id_seq'::regclass);


--
-- Name: password_histories id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.password_histories ALTER COLUMN id SET DEFAULT nextval('acmecorp1.password_histories_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.permissions ALTER COLUMN id SET DEFAULT nextval('acmecorp1.permissions_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.questions ALTER COLUMN id SET DEFAULT nextval('acmecorp1.questions_id_seq'::regclass);


--
-- Name: role_permissions id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.role_permissions ALTER COLUMN id SET DEFAULT nextval('acmecorp1.role_permissions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.roles ALTER COLUMN id SET DEFAULT nextval('acmecorp1.roles_id_seq'::regclass);


--
-- Name: sms_credits id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.sms_credits ALTER COLUMN id SET DEFAULT nextval('acmecorp1.sms_credits_id_seq'::regclass);


--
-- Name: survey_question_answers id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.survey_question_answers ALTER COLUMN id SET DEFAULT nextval('acmecorp1.survey_question_answers_id_seq'::regclass);


--
-- Name: survey_questions id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.survey_questions ALTER COLUMN id SET DEFAULT nextval('acmecorp1.survey_questions_id_seq'::regclass);


--
-- Name: survey_rules id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.survey_rules ALTER COLUMN id SET DEFAULT nextval('acmecorp1.survey_rules_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.surveys ALTER COLUMN id SET DEFAULT nextval('acmecorp1.surveys_id_seq'::regclass);


--
-- Name: templates id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.templates ALTER COLUMN id SET DEFAULT nextval('acmecorp1.templates_id_seq'::regclass);


--
-- Name: user_roles id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.user_roles ALTER COLUMN id SET DEFAULT nextval('acmecorp1.user_roles_id_seq'::regclass);


--
-- Name: user_surveys id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.user_surveys ALTER COLUMN id SET DEFAULT nextval('acmecorp1.user_surveys_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.users ALTER COLUMN id SET DEFAULT nextval('acmecorp1.users_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('decabits.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('decabits.active_storage_blobs_id_seq'::regclass);


--
-- Name: audits id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.audits ALTER COLUMN id SET DEFAULT nextval('decabits.audits_id_seq'::regclass);


--
-- Name: clusters id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.clusters ALTER COLUMN id SET DEFAULT nextval('decabits.clusters_id_seq'::regclass);


--
-- Name: clusters_conversations id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.clusters_conversations ALTER COLUMN id SET DEFAULT nextval('decabits.clusters_conversations_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.companies ALTER COLUMN id SET DEFAULT nextval('decabits.companies_id_seq'::regclass);


--
-- Name: conversation_answers id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.conversation_answers ALTER COLUMN id SET DEFAULT nextval('decabits.conversation_answers_id_seq'::regclass);


--
-- Name: conversation_questions id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.conversation_questions ALTER COLUMN id SET DEFAULT nextval('decabits.conversation_questions_id_seq'::regclass);


--
-- Name: conversations id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.conversations ALTER COLUMN id SET DEFAULT nextval('decabits.conversations_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.orders ALTER COLUMN id SET DEFAULT nextval('decabits.orders_id_seq'::regclass);


--
-- Name: password_histories id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.password_histories ALTER COLUMN id SET DEFAULT nextval('decabits.password_histories_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.permissions ALTER COLUMN id SET DEFAULT nextval('decabits.permissions_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.questions ALTER COLUMN id SET DEFAULT nextval('decabits.questions_id_seq'::regclass);


--
-- Name: role_permissions id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.role_permissions ALTER COLUMN id SET DEFAULT nextval('decabits.role_permissions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.roles ALTER COLUMN id SET DEFAULT nextval('decabits.roles_id_seq'::regclass);


--
-- Name: sms_credits id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.sms_credits ALTER COLUMN id SET DEFAULT nextval('decabits.sms_credits_id_seq'::regclass);


--
-- Name: survey_question_answers id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.survey_question_answers ALTER COLUMN id SET DEFAULT nextval('decabits.survey_question_answers_id_seq'::regclass);


--
-- Name: survey_questions id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.survey_questions ALTER COLUMN id SET DEFAULT nextval('decabits.survey_questions_id_seq'::regclass);


--
-- Name: survey_rules id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.survey_rules ALTER COLUMN id SET DEFAULT nextval('decabits.survey_rules_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.surveys ALTER COLUMN id SET DEFAULT nextval('decabits.surveys_id_seq'::regclass);


--
-- Name: templates id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.templates ALTER COLUMN id SET DEFAULT nextval('decabits.templates_id_seq'::regclass);


--
-- Name: user_roles id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.user_roles ALTER COLUMN id SET DEFAULT nextval('decabits.user_roles_id_seq'::regclass);


--
-- Name: user_surveys id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.user_surveys ALTER COLUMN id SET DEFAULT nextval('decabits.user_surveys_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.users ALTER COLUMN id SET DEFAULT nextval('decabits.users_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: audits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audits ALTER COLUMN id SET DEFAULT nextval('public.audits_id_seq'::regclass);


--
-- Name: clusters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusters ALTER COLUMN id SET DEFAULT nextval('public.clusters_id_seq'::regclass);


--
-- Name: clusters_conversations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusters_conversations ALTER COLUMN id SET DEFAULT nextval('public.clusters_conversations_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: conversation_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversation_answers ALTER COLUMN id SET DEFAULT nextval('public.conversation_answers_id_seq'::regclass);


--
-- Name: conversation_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversation_questions ALTER COLUMN id SET DEFAULT nextval('public.conversation_questions_id_seq'::regclass);


--
-- Name: conversations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations ALTER COLUMN id SET DEFAULT nextval('public.conversations_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: password_histories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_histories ALTER COLUMN id SET DEFAULT nextval('public.password_histories_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: role_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_permissions ALTER COLUMN id SET DEFAULT nextval('public.role_permissions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: sms_credits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sms_credits ALTER COLUMN id SET DEFAULT nextval('public.sms_credits_id_seq'::regclass);


--
-- Name: survey_question_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_question_answers ALTER COLUMN id SET DEFAULT nextval('public.survey_question_answers_id_seq'::regclass);


--
-- Name: survey_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_questions ALTER COLUMN id SET DEFAULT nextval('public.survey_questions_id_seq'::regclass);


--
-- Name: survey_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_rules ALTER COLUMN id SET DEFAULT nextval('public.survey_rules_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.surveys ALTER COLUMN id SET DEFAULT nextval('public.surveys_id_seq'::regclass);


--
-- Name: templates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates ALTER COLUMN id SET DEFAULT nextval('public.templates_id_seq'::regclass);


--
-- Name: user_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);


--
-- Name: user_surveys id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_surveys ALTER COLUMN id SET DEFAULT nextval('public.user_surveys_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-06-27 10:17:19.31098	2019-06-27 10:17:19.31098
\.


--
-- Data for Name: audits; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.audits (id, auditable_id, auditable_type, associated_id, associated_type, user_id, user_type, username, action, audited_changes, version, comment, remote_address, request_uuid, created_at) FROM stdin;
1	4	User	\N	\N	\N	\N	\N	create	---\nemail: admin@acmecorp.com\nencrypted_password: "$2a$11$svi06BIgtuvFh5CjcgySVuwzZC4/MnM9if5RdgEhwGh9I2PwJNOQS"\nphone: '11111111111'\notp: ''\nname: ''\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: \nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: \ndepartment: \nlocation: \nsupervisor: \nhead_of_department: \ndate_of_joining: \nemployment_status: \nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	\N	3070f33e-8d30-45bb-a00b-910df0c9a5c6	2019-07-06 20:17:31.273163
2	4	UserRole	\N	\N	\N	\N	\N	create	---\nuser_id: 4\nrole_id: 1\n	1	\N	\N	96b7cb7d-1b4e-4026-ba64-96039e19a178	2019-07-06 20:17:34.339355
3	4	User	\N	\N	4	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 08:17:32.761724054 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: *1\n  zone: *2\n  time: *1\ncurrent_sign_in_ip:\n- \n- 171.48.42.174\nlast_sign_in_ip:\n- \n- 171.48.42.174\nsign_in_count:\n- 0\n- 1\n	2	\N	171.48.42.174	2a4a9576-398c-42dd-92e0-350e104ffbaf	2019-07-07 08:17:32.765331
4	2	Company	\N	\N	4	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntime_zone:\n- \n- "(GMT-09:00)- Alaska"\n	1	\N	171.48.42.174	4216aed8-9030-4eae-acf6-f2a0f1245f2c	2019-07-07 08:25:20.39662
5	4	User	\N	\N	4	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 08:17:32.761724000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 12:49:31.244753202 Z\n  zone: *2\n  time: *3\nsign_in_count:\n- 1\n- 2\n	3	\N	171.48.42.174	175e4bff-e246-4da4-9dc7-7c71a1753796	2019-07-07 12:49:31.248524
6	4	User	\N	\N	4	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 12:49:31.244753000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 14:21:17.221574149 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 08:17:32.761724000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 12:49:31.244753000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 2\n- 3\n	4	\N	171.48.42.174	061aef85-9482-437f-aaf5-1f7486f09121	2019-07-07 14:21:17.225522
7	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-03 01:36:47.042884000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-12 12:24:46.005590660 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-06-27 22:01:03.475294000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-03 01:36:47.042884000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 120.29.117.205\n- 121.242.156.1\nlast_sign_in_ip:\n- 103.125.130.64\n- 120.29.117.205\nsign_in_count:\n- 3\n- 4\n	1	\N	121.242.156.1	0ecdffea-6d63-4aa4-9c87-8f086d37ad2f	2019-07-12 12:24:46.012039
8	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	2	\N	121.242.156.1	b8f7677a-2302-4955-852c-d7b683db9438	2019-07-12 12:26:40.426382
9	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-12 12:24:46.005590000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-15 17:29:36.440840467 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-03 01:36:47.042884000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-12 12:24:46.005590000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 120.29.117.205\n- 121.242.156.1\nsign_in_count:\n- 4\n- 5\n	3	\N	121.242.156.1	ab77d293-5766-4e9e-819e-a21448a1f6c8	2019-07-15 17:29:36.444946
10	4	User	\N	\N	4	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 14:21:17.221574000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 15:01:17.717400070 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 12:49:31.244753000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 14:21:17.221574000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.48.42.174\n- 223.190.116.211\nsign_in_count:\n- 3\n- 4\n	5	\N	223.190.116.211	a8959e41-51f0-457c-b1f2-9a21b42b8124	2019-07-23 15:01:17.721556
11	4	User	\N	\N	4	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	6	\N	223.190.116.211	743de6a0-3aa0-4648-851e-746a718c297f	2019-07-23 15:01:36.29655
12	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 17:29:36.440840000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 16:35:08.683031355 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-12 12:24:46.005590000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-15 17:29:36.440840000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 5\n- 6\n	4	\N	121.242.156.1	94e5511e-4c1a-4d8e-8f5e-c537bbcd6159	2019-07-24 16:35:08.68694
13	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 16:35:08.683031000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 16:35:15.839620429 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-15 17:29:36.440840000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 16:35:08.683031000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 6\n- 7\n	5	\N	121.242.156.1	6d284133-16af-43c1-bdfb-b0538f24295f	2019-07-24 16:35:15.84358
\.


--
-- Data for Name: clusters; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.clusters (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: clusters_conversations; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.clusters_conversations (id, cluster_id, conversation_id) FROM stdin;
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.companies (id, name, email, company_slug, phone, country_code, created_at, updated_at, industry, privacy_policy, time_zone, leader, locale) FROM stdin;
\.


--
-- Data for Name: conversation_answers; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.conversation_answers (id, conversation_question_id, user_id, text, value, response, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: conversation_questions; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.conversation_questions (id, conversation_id, question_text, question_type, driver, tenure_group, tenure_on_delivery, employee_group, department, choices, question_order, is_answered, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: conversations; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.conversations (id, survey_id, user_id, is_editable, expiry, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.orders (id, order_id, amount, currency_type, receipt, entity, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: password_histories; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.password_histories (id, user_id, encrypted_password, created_at, updated_at) FROM stdin;
1	1	$2a$11$BSXOus377YTJpetH4m753eKjBwkwB78uUp5wVnT4OsGWwCyNCKLWi	2019-06-27 10:19:23.273295	2019-06-27 10:19:23.273295
2	2	$2a$11$qubyeo2Y7TTu2IkSUKpWC.ePhIRVtqYpQW4Kj4N57e8adS8d4pcSi	2019-06-27 10:20:28.499691	2019-06-27 10:20:28.499691
3	3	$2a$11$F/saizH0G9e4Qhapm/hLMeaYCrlWV1ufQpkcHMfjgkaHATqtKD39W	2019-07-03 01:41:15.275504	2019-07-03 01:41:15.275504
4	4	$2a$11$svi06BIgtuvFh5CjcgySVuwzZC4/MnM9if5RdgEhwGh9I2PwJNOQS	2019-07-06 20:17:31.280899	2019-07-06 20:17:31.280899
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.permissions (id, name, created_at, updated_at) FROM stdin;
1	Add Employees Manually	2019-06-27 10:17:19.316839	2019-06-27 10:17:19.316839
2	Add Employees by CSV	2019-06-27 10:17:19.318081	2019-06-27 10:17:19.318081
3	Remove Employees	2019-06-27 10:17:19.319118	2019-06-27 10:17:19.319118
4	Change Roles	2019-06-27 10:17:19.320171	2019-06-27 10:17:19.320171
5	Edit functionality assigned to roles	2019-06-27 10:17:19.321218	2019-06-27 10:17:19.321218
6	Define company details	2019-06-27 10:17:19.32225	2019-06-27 10:17:19.32225
7	Define templates	2019-06-27 10:17:19.323296	2019-06-27 10:17:19.323296
8	Employee Opinion Surveys (Pulse, Exit, Onboarding)	2019-06-27 10:17:19.324392	2019-06-27 10:17:19.324392
9	Categorize feedback	2019-06-27 10:17:19.325419	2019-06-27 10:17:19.325419
10	Create and assign tasks	2019-06-27 10:17:19.326612	2019-06-27 10:17:19.326612
11	Create Pulse Surveys	2019-06-27 10:17:19.327747	2019-06-27 10:17:19.327747
12	Create Manager Feedback	2019-06-27 10:17:19.328732	2019-06-27 10:17:19.328732
13	Create Coaching feedback	2019-06-27 10:17:19.329721	2019-06-27 10:17:19.329721
14	Anonymous feedback	2019-06-27 10:17:19.330724	2019-06-27 10:17:19.330724
15	360 Feedback	2019-06-27 10:17:19.331878	2019-06-27 10:17:19.331878
16	Hi5	2019-06-27 10:17:19.332882	2019-06-27 10:17:19.332882
17	Tasks	2019-06-27 10:17:19.333845	2019-06-27 10:17:19.333845
18	Dashboard	2019-06-27 10:17:19.334845	2019-06-27 10:17:19.334845
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.questions (id, question_type, description, active, created_at, updated_at, choices, "order", min, max, step, driver, tenure_group, tenure_on_delivery, employee_group, department) FROM stdin;
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.role_permissions (id, role_id, permission_id, created_at, updated_at) FROM stdin;
1	1	1	2019-06-27 10:17:19.338707	2019-06-27 10:17:19.338707
2	1	2	2019-06-27 10:17:19.340377	2019-06-27 10:17:19.340377
3	1	3	2019-06-27 10:17:19.341943	2019-06-27 10:17:19.341943
4	1	4	2019-06-27 10:17:19.34351	2019-06-27 10:17:19.34351
5	1	5	2019-06-27 10:17:19.345064	2019-06-27 10:17:19.345064
6	1	6	2019-06-27 10:17:19.346588	2019-06-27 10:17:19.346588
7	1	7	2019-06-27 10:17:19.348118	2019-06-27 10:17:19.348118
8	1	8	2019-06-27 10:17:19.349649	2019-06-27 10:17:19.349649
9	1	9	2019-06-27 10:17:19.351221	2019-06-27 10:17:19.351221
10	1	10	2019-06-27 10:17:19.35276	2019-06-27 10:17:19.35276
11	1	11	2019-06-27 10:17:19.354281	2019-06-27 10:17:19.354281
12	1	12	2019-06-27 10:17:19.355819	2019-06-27 10:17:19.355819
13	1	13	2019-06-27 10:17:19.35732	2019-06-27 10:17:19.35732
14	1	14	2019-06-27 10:17:19.358832	2019-06-27 10:17:19.358832
15	1	15	2019-06-27 10:17:19.360309	2019-06-27 10:17:19.360309
16	1	16	2019-06-27 10:17:19.361895	2019-06-27 10:17:19.361895
17	1	17	2019-06-27 10:17:19.36342	2019-06-27 10:17:19.36342
18	1	18	2019-06-27 10:17:19.364998	2019-06-27 10:17:19.364998
19	2	10	2019-06-27 10:17:19.368902	2019-06-27 10:17:19.368902
20	2	11	2019-06-27 10:17:19.37044	2019-06-27 10:17:19.37044
21	2	12	2019-06-27 10:17:19.371956	2019-06-27 10:17:19.371956
22	2	13	2019-06-27 10:17:19.373462	2019-06-27 10:17:19.373462
23	2	14	2019-06-27 10:17:19.374969	2019-06-27 10:17:19.374969
24	2	15	2019-06-27 10:17:19.376497	2019-06-27 10:17:19.376497
25	2	16	2019-06-27 10:17:19.377977	2019-06-27 10:17:19.377977
26	2	17	2019-06-27 10:17:19.37943	2019-06-27 10:17:19.37943
27	2	18	2019-06-27 10:17:19.380926	2019-06-27 10:17:19.380926
28	3	14	2019-06-27 10:17:19.384319	2019-06-27 10:17:19.384319
29	3	15	2019-06-27 10:17:19.38578	2019-06-27 10:17:19.38578
30	3	16	2019-06-27 10:17:19.387266	2019-06-27 10:17:19.387266
31	3	18	2019-06-27 10:17:19.38878	2019-06-27 10:17:19.38878
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.roles (id, name, created_at, updated_at) FROM stdin;
1	admin	2019-06-27 10:17:19.313331	2019-06-27 10:17:19.313331
2	manager	2019-06-27 10:17:19.314586	2019-06-27 10:17:19.314586
3	employee	2019-06-27 10:17:19.315698	2019-06-27 10:17:19.315698
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.schema_migrations (version) FROM stdin;
20190625093752
20190524175441
20190605201726
20190624062234
20190509090146
20190408120435
20190614153935
20190306153740
20190509090603
20190621103633
20190614173732
20190515001136
20190531185428
20190517054332
20190609120447
20190609110340
20190408101840
20190509090440
20190408101748
20190408101547
20190607103803
20190408120754
20190607102956
20190524123216
20190608064139
20190617194542
20190414124939
20190624121349
20190509090333
20190605200422
20190614165032
20190314165340
20190614174057
20190326153502
20190627085042
20190703141827
20190707101638
20190709104946
\.


--
-- Data for Name: sms_credits; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.sms_credits (id, transaction_type, "left", purpose, created_at, updated_at) FROM stdin;
1	0	100	Sms credits initialized	2019-06-27 10:17:19.389856	2019-06-27 10:17:19.389856
\.


--
-- Data for Name: survey_question_answers; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.survey_question_answers (id, survey_question_id, user_id, value, option, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: survey_questions; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.survey_questions (id, survey_id, question_id, answered, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: survey_rules; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.survey_rules (id, survey_id, frequency, reminder_settings, frequency_value, reminder_setting_value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.surveys (id, description, created_at, updated_at, name, active, survey_type, survey_status) FROM stdin;
1	This suvey help us determine if the employees are engaged or not.	2019-06-27 10:26:04.392552	2019-06-27 10:26:04.392552	Employee Opinion Survey	t	0	\N
\.


--
-- Data for Name: templates; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.templates (id, name, sender_name, subject, content, template_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.user_roles (id, user_id, role_id, created_at, updated_at) FROM stdin;
1	1	1	2019-06-27 10:21:31.548934	2019-06-27 10:21:31.548934
2	2	1	2019-06-27 10:21:42.652258	2019-06-27 10:21:42.652258
3	3	3	2019-07-03 01:41:15.283372	2019-07-03 01:41:15.283372
4	4	1	2019-07-06 20:17:34.336715	2019-07-06 20:17:34.336715
\.


--
-- Data for Name: user_surveys; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.user_surveys (id, user_id, survey_id, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: acmecorp; Owner: postgres
--

COPY acmecorp.users (id, email, encrypted_password, phone, otp, name, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, employee_id, department, location, supervisor, head_of_department, date_of_joining, employment_status, active, promotion_date, current_job_role, employment_type, sub_department, account, country, country_code, date_of_birth, termination_date, current_status, toc_accepted) FROM stdin;
1	shubjain440@gmail.com	$2a$11$BSXOus377YTJpetH4m753eKjBwkwB78uUp5wVnT4OsGWwCyNCKLWi	7895204291		Shubham	\N	\N	\N	2019-06-27 10:19:23.264913	2019-06-27 10:19:23.264913	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	13/06/19	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
3	hello@engagepulse.com	$2a$11$F/saizH0G9e4Qhapm/hLMeaYCrlWV1ufQpkcHMfjgkaHATqtKD39W	9959572320		Sudeepta Parasar	\N	\N	\N	2019-07-03 01:41:15.269736	2019-07-03 01:41:15.269736	0	\N	\N	\N	\N	f703becef2b90cf9d7c063eeaf0a58b5	\N	\N						13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
4	admin@acmecorp.com	$2a$11$svi06BIgtuvFh5CjcgySVuwzZC4/MnM9if5RdgEhwGh9I2PwJNOQS	11111111111			\N	\N	\N	2019-07-06 20:17:31.269561	2019-07-23 15:01:36.294924	4	2019-07-23 15:01:17.7174	2019-07-07 14:21:17.221574	223.190.116.211	171.48.42.174	\N	\N	\N	\N	\N	\N	\N	\N	13/06/19	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
2	zyloto@engagepulse.com	$2a$11$qubyeo2Y7TTu2IkSUKpWC.ePhIRVtqYpQW4Kj4N57e8adS8d4pcSi	7894561230		Sahil batla	\N	\N	\N	2019-06-27 10:20:28.497558	2019-07-24 16:35:15.84093	7	2019-07-24 16:35:15.83962	2019-07-24 16:35:08.683031	121.242.156.1	121.242.156.1	\N	\N	\N	\N	\N	\N	\N	\N	13/06/19	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-07-06 20:07:56.021899	2019-07-06 20:07:56.021899
\.


--
-- Data for Name: audits; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.audits (id, auditable_id, auditable_type, associated_id, associated_type, user_id, user_type, username, action, audited_changes, version, comment, remote_address, request_uuid, created_at) FROM stdin;
1	1	Role	\N	\N	\N	\N	\N	create	---\nname: admin\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.03786
2	2	Role	\N	\N	\N	\N	\N	create	---\nname: manager\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.044461
3	3	Role	\N	\N	\N	\N	\N	create	---\nname: employee\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.050036
4	1	Permission	\N	\N	\N	\N	\N	create	---\nname: Add Employees Manually\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.066181
5	2	Permission	\N	\N	\N	\N	\N	create	---\nname: Add Employees by CSV\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.071718
6	3	Permission	\N	\N	\N	\N	\N	create	---\nname: Remove Employees\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.077175
7	4	Permission	\N	\N	\N	\N	\N	create	---\nname: Change Roles\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.082737
8	5	Permission	\N	\N	\N	\N	\N	create	---\nname: Edit functionality assigned to roles\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.088089
9	6	Permission	\N	\N	\N	\N	\N	create	---\nname: Define company details\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.093419
10	7	Permission	\N	\N	\N	\N	\N	create	---\nname: Define templates\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.098724
11	8	Permission	\N	\N	\N	\N	\N	create	---\nname: Employee Opinion Surveys (Pulse, Exit, Onboarding)\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.103927
12	9	Permission	\N	\N	\N	\N	\N	create	---\nname: Categorize feedback\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.109156
13	10	Permission	\N	\N	\N	\N	\N	create	---\nname: Create and assign tasks\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.114544
14	11	Permission	\N	\N	\N	\N	\N	create	---\nname: Create Pulse Surveys\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.120114
15	12	Permission	\N	\N	\N	\N	\N	create	---\nname: Create Manager Feedback\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.125415
16	13	Permission	\N	\N	\N	\N	\N	create	---\nname: Create Coaching feedback\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.130976
17	14	Permission	\N	\N	\N	\N	\N	create	---\nname: Anonymous feedback\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.136308
18	15	Permission	\N	\N	\N	\N	\N	create	---\nname: 360 Feedback\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.141669
19	16	Permission	\N	\N	\N	\N	\N	create	---\nname: Hi5\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.147107
20	17	Permission	\N	\N	\N	\N	\N	create	---\nname: Tasks\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.152495
21	18	Permission	\N	\N	\N	\N	\N	create	---\nname: Dashboard\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.157822
22	1	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 1\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.182825
23	2	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 2\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.188848
24	3	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 3\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.194641
25	4	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 4\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.200688
26	5	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 5\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.206724
27	6	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 6\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.212518
28	7	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 7\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.218438
29	8	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 8\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.224448
30	9	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 9\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.230554
31	10	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 10\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.236453
32	11	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 11\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.242395
33	12	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 12\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.248366
34	13	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 13\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.254307
35	14	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 14\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.260472
36	15	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 15\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.266751
37	16	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 16\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.273134
38	17	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 17\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.279766
39	18	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 1\npermission_id: 18\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.290745
40	19	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 10\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.299713
41	20	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 11\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.305901
42	21	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 12\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.311951
43	22	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 13\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.317944
44	23	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 14\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.323703
45	24	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 15\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.329667
46	25	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 16\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.335469
47	26	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 17\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.341256
48	27	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 2\npermission_id: 18\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.346989
49	28	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 3\npermission_id: 14\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.355714
50	29	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 3\npermission_id: 15\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.361682
51	30	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 3\npermission_id: 16\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.367506
52	31	RolePermission	\N	\N	\N	\N	\N	create	---\nrole_id: 3\npermission_id: 18\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.373317
53	1	SmsCredit	\N	\N	\N	\N	\N	create	---\ntransaction_type: 0\nleft: 100\npurpose: Sms credits initialized\n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:56.390763
54	1	User	\N	\N	\N	\N	\N	create	---\nemail: admin@acmecorp1.com\nencrypted_password: "$2a$11$9YxQ8Cju5jVzcZ..GWXez.Asq1QUH7vtbksM.kyJdkA7R6moT.1/2"\nphone: '11111111111'\notp: ''\nname: ''\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: \nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: \ndepartment: \nlocation: \nsupervisor: \nhead_of_department: \ndate_of_joining: \nemployment_status: \nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	\N	4914f8a8-411c-4986-8dad-d5a3f8e797ca	2019-07-06 20:15:48.258332
55	1	UserRole	\N	\N	\N	\N	\N	create	---\nuser_id: 1\nrole_id: 1\n	1	\N	\N	1a7987d5-5f8d-42bd-81b6-6abd12f21e4c	2019-07-06 20:16:27.645661
\.


--
-- Data for Name: clusters; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.clusters (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: clusters_conversations; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.clusters_conversations (id, cluster_id, conversation_id) FROM stdin;
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.companies (id, name, email, company_slug, phone, country_code, created_at, updated_at, industry, privacy_policy, time_zone, leader, locale) FROM stdin;
\.


--
-- Data for Name: conversation_answers; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.conversation_answers (id, conversation_question_id, user_id, text, value, response, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: conversation_questions; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.conversation_questions (id, conversation_id, question_text, question_type, driver, tenure_group, tenure_on_delivery, employee_group, department, choices, question_order, is_answered, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: conversations; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.conversations (id, survey_id, user_id, is_editable, expiry, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.orders (id, order_id, amount, currency_type, receipt, entity, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: password_histories; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.password_histories (id, user_id, encrypted_password, created_at, updated_at) FROM stdin;
1	1	$2a$11$9YxQ8Cju5jVzcZ..GWXez.Asq1QUH7vtbksM.kyJdkA7R6moT.1/2	2019-07-06 20:15:48.287963	2019-07-06 20:15:48.287963
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.permissions (id, name, created_at, updated_at) FROM stdin;
1	Add Employees Manually	2019-07-06 20:07:56.062936	2019-07-06 20:07:56.062936
2	Add Employees by CSV	2019-07-06 20:07:56.069485	2019-07-06 20:07:56.069485
3	Remove Employees	2019-07-06 20:07:56.074877	2019-07-06 20:07:56.074877
4	Change Roles	2019-07-06 20:07:56.080542	2019-07-06 20:07:56.080542
5	Edit functionality assigned to roles	2019-07-06 20:07:56.085812	2019-07-06 20:07:56.085812
6	Define company details	2019-07-06 20:07:56.091075	2019-07-06 20:07:56.091075
7	Define templates	2019-07-06 20:07:56.096382	2019-07-06 20:07:56.096382
8	Employee Opinion Surveys (Pulse, Exit, Onboarding)	2019-07-06 20:07:56.10177	2019-07-06 20:07:56.10177
9	Categorize feedback	2019-07-06 20:07:56.106907	2019-07-06 20:07:56.106907
10	Create and assign tasks	2019-07-06 20:07:56.112249	2019-07-06 20:07:56.112249
11	Create Pulse Surveys	2019-07-06 20:07:56.117795	2019-07-06 20:07:56.117795
12	Create Manager Feedback	2019-07-06 20:07:56.123123	2019-07-06 20:07:56.123123
13	Create Coaching feedback	2019-07-06 20:07:56.128708	2019-07-06 20:07:56.128708
14	Anonymous feedback	2019-07-06 20:07:56.133964	2019-07-06 20:07:56.133964
15	360 Feedback	2019-07-06 20:07:56.139342	2019-07-06 20:07:56.139342
16	Hi5	2019-07-06 20:07:56.144835	2019-07-06 20:07:56.144835
17	Tasks	2019-07-06 20:07:56.150248	2019-07-06 20:07:56.150248
18	Dashboard	2019-07-06 20:07:56.155629	2019-07-06 20:07:56.155629
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.questions (id, question_type, description, active, created_at, updated_at, choices, "order", min, max, step, driver, tenure_group, tenure_on_delivery, employee_group, department) FROM stdin;
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.role_permissions (id, role_id, permission_id, created_at, updated_at) FROM stdin;
1	1	1	2019-07-06 20:07:56.179605	2019-07-06 20:07:56.179605
2	1	2	2019-07-06 20:07:56.186516	2019-07-06 20:07:56.186516
3	1	3	2019-07-06 20:07:56.192348	2019-07-06 20:07:56.192348
4	1	4	2019-07-06 20:07:56.198216	2019-07-06 20:07:56.198216
5	1	5	2019-07-06 20:07:56.204332	2019-07-06 20:07:56.204332
6	1	6	2019-07-06 20:07:56.21015	2019-07-06 20:07:56.21015
7	1	7	2019-07-06 20:07:56.216097	2019-07-06 20:07:56.216097
8	1	8	2019-07-06 20:07:56.22204	2019-07-06 20:07:56.22204
9	1	9	2019-07-06 20:07:56.2282	2019-07-06 20:07:56.2282
10	1	10	2019-07-06 20:07:56.234113	2019-07-06 20:07:56.234113
11	1	11	2019-07-06 20:07:56.240072	2019-07-06 20:07:56.240072
12	1	12	2019-07-06 20:07:56.246027	2019-07-06 20:07:56.246027
13	1	13	2019-07-06 20:07:56.251964	2019-07-06 20:07:56.251964
14	1	14	2019-07-06 20:07:56.257946	2019-07-06 20:07:56.257946
15	1	15	2019-07-06 20:07:56.264057	2019-07-06 20:07:56.264057
16	1	16	2019-07-06 20:07:56.270545	2019-07-06 20:07:56.270545
17	1	17	2019-07-06 20:07:56.277165	2019-07-06 20:07:56.277165
18	1	18	2019-07-06 20:07:56.28836	2019-07-06 20:07:56.28836
19	2	10	2019-07-06 20:07:56.297329	2019-07-06 20:07:56.297329
20	2	11	2019-07-06 20:07:56.303439	2019-07-06 20:07:56.303439
21	2	12	2019-07-06 20:07:56.309583	2019-07-06 20:07:56.309583
22	2	13	2019-07-06 20:07:56.315664	2019-07-06 20:07:56.315664
23	2	14	2019-07-06 20:07:56.321406	2019-07-06 20:07:56.321406
24	2	15	2019-07-06 20:07:56.327366	2019-07-06 20:07:56.327366
25	2	16	2019-07-06 20:07:56.333172	2019-07-06 20:07:56.333172
26	2	17	2019-07-06 20:07:56.338982	2019-07-06 20:07:56.338982
27	2	18	2019-07-06 20:07:56.344721	2019-07-06 20:07:56.344721
28	3	14	2019-07-06 20:07:56.353206	2019-07-06 20:07:56.353206
29	3	15	2019-07-06 20:07:56.359404	2019-07-06 20:07:56.359404
30	3	16	2019-07-06 20:07:56.365233	2019-07-06 20:07:56.365233
31	3	18	2019-07-06 20:07:56.371047	2019-07-06 20:07:56.371047
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.roles (id, name, created_at, updated_at) FROM stdin;
1	admin	2019-07-06 20:07:56.034388	2019-07-06 20:07:56.034388
2	manager	2019-07-06 20:07:56.041979	2019-07-06 20:07:56.041979
3	employee	2019-07-06 20:07:56.047797	2019-07-06 20:07:56.047797
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.schema_migrations (version) FROM stdin;
20190703141827
20190627085042
20190524175441
20190605201726
20190624062234
20190509090146
20190408120435
20190614153935
20190306153740
20190509090603
20190621103633
20190614173732
20190515001136
20190531185428
20190517054332
20190609120447
20190609110340
20190408101840
20190509090440
20190408101748
20190408101547
20190607103803
20190408120754
20190607102956
20190524123216
20190608064139
20190617194542
20190414124939
20190624121349
20190509090333
20190605200422
20190614165032
20190625093752
20190314165340
20190614174057
20190326153502
20190707101638
20190709104946
\.


--
-- Data for Name: sms_credits; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.sms_credits (id, transaction_type, "left", purpose, created_at, updated_at) FROM stdin;
1	0	100	Sms credits initialized	2019-07-06 20:07:56.387464	2019-07-06 20:07:56.387464
\.


--
-- Data for Name: survey_question_answers; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.survey_question_answers (id, survey_question_id, user_id, value, option, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: survey_questions; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.survey_questions (id, survey_id, question_id, answered, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: survey_rules; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.survey_rules (id, survey_id, frequency, reminder_settings, frequency_value, reminder_setting_value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.surveys (id, description, created_at, updated_at, name, active, survey_type, survey_status) FROM stdin;
\.


--
-- Data for Name: templates; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.templates (id, name, sender_name, subject, content, template_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.user_roles (id, user_id, role_id, created_at, updated_at) FROM stdin;
1	1	1	2019-07-06 20:16:27.6422	2019-07-06 20:16:27.6422
\.


--
-- Data for Name: user_surveys; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.user_surveys (id, user_id, survey_id, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: acmecorp1; Owner: postgres
--

COPY acmecorp1.users (id, email, encrypted_password, phone, otp, name, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, employee_id, department, location, supervisor, head_of_department, date_of_joining, employment_status, active, promotion_date, current_job_role, employment_type, sub_department, account, country, country_code, date_of_birth, termination_date, current_status, toc_accepted) FROM stdin;
1	admin@acmecorp1.com	$2a$11$9YxQ8Cju5jVzcZ..GWXez.Asq1QUH7vtbksM.kyJdkA7R6moT.1/2	11111111111			\N	\N	\N	2019-07-06 20:15:48.182097	2019-07-06 20:15:48.182097	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
6	company_logo	Company	1	6	2019-07-21 05:41:12.690096
7	profile_picture	User	2	7	2019-07-24 06:26:10.608714
12	profile_picture	User	39	12	2019-07-26 06:44:36.82435
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
1	byEoWQHN3e5y7TrySA36C8LE	Decabits_logofinal-01.png	image/png	{"identified":true,"analyzed":true}	128617	VSbElKuUyy5//Osci3o7RA==	2019-06-27 10:47:36.949024
4	Bh9KmfKq1qPNFbMNuQK5aGC5	1.png	image/png	{"identified":true,"analyzed":true}	50047	IuT3wunbCPIV9jlmQ8m2lg==	2019-07-21 05:36:59.1775
6	8vuxKUxKcQzdvPxY18e9z6ME	1(b).png	image/png	{"identified":true,"analyzed":true}	34868	LnPqxgSmvdedRLOluQN5oA==	2019-07-21 05:41:12.685653
7	d8fHRq76AAGnf2QYJo8Nbnx5	index.png	image/png	{"identified":true,"analyzed":true}	2538	A1znSD7o9jl2c3bfxBTA5g==	2019-07-24 06:26:10.598309
11	aAHGcsNjHk3JsN72MpK1H7JB	index.png	image/png	{"identified":true,"analyzed":true}	2538	A1znSD7o9jl2c3bfxBTA5g==	2019-07-25 05:12:15.06699
12	1rg5kY9CN1ywi6pGgcDHEdqT	WhatsApp Image 2019-07-19 at 10.57.42 PM.jpeg	image/jpeg	{"identified":true}	188618	YPgN0H0fhJOaiBkDb8TJlg==	2019-07-26 06:44:36.816771
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-06-27 10:16:41.098734	2019-06-27 10:16:41.098734
\.


--
-- Data for Name: audits; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.audits (id, auditable_id, auditable_type, associated_id, associated_type, user_id, user_type, username, action, audited_changes, version, comment, remote_address, request_uuid, created_at) FROM stdin;
1	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-03 14:11:09.692074000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-03 16:09:41.921691967 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-03 14:09:03.900326000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-03 14:11:09.692074000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 59\n- 60\n	1	\N	171.61.167.127	a60c489a-4c25-49ec-a431-2b0824da00ff	2019-07-03 16:09:41.94832
2	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-03 16:09:41.921691000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-03 16:30:17.809602459 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-03 14:11:09.692074000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-03 16:09:41.921691000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 60\n- 61\n	2	\N	171.61.167.127	790a3aa1-87a3-45c4-87a4-5b9c00373e48	2019-07-03 16:30:17.81513
3	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-03 16:30:17.809602000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-03 17:21:05.408793638 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-03 16:09:41.921691000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-03 16:30:17.809602000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.61.167.127\n- 139.167.187.237\nsign_in_count:\n- 61\n- 62\n	3	\N	139.167.187.237	2493f88b-00dc-4766-9ec9-14247f30122f	2019-07-03 17:21:05.412804
4	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-03 17:21:05.408793000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 06:05:14.648559444 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-03 16:30:17.809602000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-03 17:21:05.408793000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 139.167.187.237\n- 117.212.114.166\nlast_sign_in_ip:\n- 171.61.167.127\n- 139.167.187.237\nsign_in_count:\n- 62\n- 63\n	4	\N	117.212.114.166	e733597f-f026-44b1-93c4-4238023c4dba	2019-07-04 06:05:14.652519
5	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 06:05:14.648559000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 06:05:59.303930903 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-03 17:21:05.408793000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 06:05:14.648559000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 139.167.187.237\n- 117.212.114.166\nsign_in_count:\n- 63\n- 64\n	5	\N	117.212.114.166	59e22712-aab2-48d4-acbc-7ac9c32ad8a0	2019-07-04 06:05:59.311722
6	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 06:05:59.303930000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 06:07:19.105585059 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 06:05:14.648559000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 06:05:59.303930000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 64\n- 65\n	6	\N	117.212.114.166	074621d7-b0b2-46ce-ab8b-aa9f4b822634	2019-07-04 06:07:19.10934
7	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 06:07:19.105585000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 06:07:52.048236118 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 06:05:59.303930000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 06:07:19.105585000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 65\n- 66\n	7	\N	117.212.114.166	d1fe6fce-7112-4f66-a036-e234078408dd	2019-07-04 06:07:52.052093
8	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 06:07:52.048236000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 06:51:47.796667169 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 06:07:19.105585000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 06:07:52.048236000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 117.212.114.166\n- 139.167.191.220\nsign_in_count:\n- 66\n- 67\n	8	\N	139.167.191.220	9b401d88-428a-48f2-a5a8-ef2e70f8481f	2019-07-04 06:51:47.800674
9	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 06:51:47.796667000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 07:26:13.028633283 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 06:07:52.048236000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 06:51:47.796667000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 117.212.114.166\n- 139.167.191.220\nsign_in_count:\n- 67\n- 68\n	9	\N	139.167.191.220	1a4f46b2-f471-4b66-a0e2-673aef1c7a2f	2019-07-04 07:26:13.032655
10	11	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$4P92oyTTDS8pPhc.wnvsCuGjyAmdhM9FV8eGw4eBP5GeIHu0OIpj6"\nphone: '9999999999'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 54a6e8ad044dca2e1ce6033feb683f9a\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	139.167.191.220	877472ae-302b-497b-b06d-e4bdb739157c	2019-07-04 07:53:39.708671
11	6	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 11\nrole_id: 3\n	1	\N	139.167.191.220	877472ae-302b-497b-b06d-e4bdb739157c	2019-07-04 07:53:39.761118
12	11	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	139.167.191.220	3775a4a5-04d2-4efd-8b73-c9bfd9c47764	2019-07-04 07:53:56.925593
13	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 07:26:13.028633000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:03:25.417017209 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 06:51:47.796667000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 07:26:13.028633000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 139.167.191.220\n- 47.31.125.147\nsign_in_count:\n- 68\n- 69\n	10	\N	47.31.125.147	18d0fd0f-0a8f-4dfa-b26a-4b0e399a244f	2019-07-04 08:03:25.421361
14	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:03:25.417017000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:15:51.444251195 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 07:26:13.028633000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:03:25.417017000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 139.167.191.220\n- 47.31.125.147\nsign_in_count:\n- 69\n- 70\n	11	\N	47.31.125.147	10a450d0-56f5-4d41-a5f0-2d972dfd1494	2019-07-04 08:15:51.448383
15	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:15:51.444251000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:16:48.050275020 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:03:25.417017000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:15:51.444251000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 70\n- 71\n	12	\N	47.31.125.147	7a83bf22-b1dc-4219-b20d-3689f101f5d7	2019-07-04 08:16:48.05436
16	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:16:48.050275000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:22:22.940116839 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:15:51.444251000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:16:48.050275000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 71\n- 72\n	13	\N	47.31.125.147	55747aa3-bbf5-4ca2-9f9c-31ef45f318e6	2019-07-04 08:22:22.944514
17	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:22:22.940116000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:32:54.079858012 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:16:48.050275000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:22:22.940116000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.125.147\n- 139.167.184.137\nsign_in_count:\n- 72\n- 73\n	14	\N	139.167.184.137	08b059bd-da79-41dc-9dc4-dd888a651f8d	2019-07-04 08:32:54.108587
18	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:32:54.079858000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:45:57.664793312 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:22:22.940116000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:32:54.079858000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 47.31.125.147\n- 139.167.184.137\nsign_in_count:\n- 73\n- 74\n	15	\N	139.167.184.137	404c9e9b-f385-4778-985c-1b49c47a2712	2019-07-04 08:45:57.671403
19	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:45:57.664793000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:50:00.900643316 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:32:54.079858000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:45:57.664793000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 139.167.184.137\n- 47.31.125.147\nsign_in_count:\n- 74\n- 75\n	16	\N	47.31.125.147	aeedb3da-8908-4777-8b12-3c7b5fe0f0fb	2019-07-04 08:50:00.904673
20	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:50:00.900643000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:53:06.199053529 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:45:57.664793000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:50:00.900643000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.125.147\n- 139.167.184.137\nlast_sign_in_ip:\n- 139.167.184.137\n- 47.31.125.147\nsign_in_count:\n- 75\n- 76\n	17	\N	139.167.184.137	73fd1bce-c5a1-4f09-8bc2-17b008661b6b	2019-07-04 08:53:06.20306
21	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:53:06.199053000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 08:55:36.740261663 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:50:00.900643000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:53:06.199053000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 47.31.125.147\n- 139.167.184.137\nsign_in_count:\n- 76\n- 77\n	18	\N	139.167.184.137	292ea8d3-cd62-47c8-8b1f-8db56888b00b	2019-07-04 08:55:36.744129
22	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 08:55:36.740261000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 09:00:22.771131140 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:53:06.199053000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 08:55:36.740261000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 77\n- 78\n	19	\N	139.167.184.137	59fc36b4-0ff1-4360-964a-d094130ae3a4	2019-07-04 09:00:22.774859
23	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 09:00:22.771131000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 09:39:19.742335269 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 08:55:36.740261000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 09:00:22.771131000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 78\n- 79\n	20	\N	139.167.184.137	c1cf50fd-f99e-4175-aab0-71e86e82e2e6	2019-07-04 09:39:19.746252
24	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 09:39:19.742335000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 09:44:47.419221428 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 09:00:22.771131000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 09:39:19.742335000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 79\n- 80\n	21	\N	139.167.184.137	9e8c041f-f625-4b93-a664-2ecdeeca06bb	2019-07-04 09:44:47.422953
25	9	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	1	\N	117.212.114.166	753446a3-a3fb-4305-bb9e-21106edaab6a	2019-07-04 11:05:59.862435
26	11	User	\N	\N	2	User	\N	destroy	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$4P92oyTTDS8pPhc.wnvsCuGjyAmdhM9FV8eGw4eBP5GeIHu0OIpj6"\nphone: '9999999999'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 54a6e8ad044dca2e1ce6033feb683f9a\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	3	\N	117.212.114.166	74fb843e-a0b8-4c47-9eac-310ce39882db	2019-07-04 13:03:14.830388
27	12	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$QG8afrJExJRWYxgzJOXjguaR8HqDeI5G5KPyvrhCEi3gza1mkKjfC"\nphone: '9999999999'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: f696398cdd1137e65c2fc0c334cef37b\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	117.212.114.166	74fb843e-a0b8-4c47-9eac-310ce39882db	2019-07-04 13:03:14.859799
28	7	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 12\nrole_id: 3\n	1	\N	117.212.114.166	74fb843e-a0b8-4c47-9eac-310ce39882db	2019-07-04 13:03:14.927637
31	3	Order	\N	\N	2	User	\N	create	---\norder_id: pay_CpbYhCWJOgyLEf\namount: '10'\ncurrency_type: INR\nreceipt: Buy your sms credits\nentity: \nstatus: authorized\n	1	\N	139.167.140.3	64ee1068-ff4b-4b76-b1c7-3be425cad6be	2019-07-04 13:31:01.279635
32	2	SmsCredit	\N	\N	2	User	\N	create	---\ntransaction_type: 0\nleft: 10\npurpose: Buy your sms credits\n	1	\N	139.167.140.3	64ee1068-ff4b-4b76-b1c7-3be425cad6be	2019-07-04 13:31:01.292848
33	4	Order	\N	\N	2	User	\N	create	---\norder_id: pay_CpbaHRu9tLkI0g\namount: '10'\ncurrency_type: INR\nreceipt: Buy your sms credits\nentity: \nstatus: authorized\n	1	\N	139.167.140.3	67090f6f-2652-4611-a16b-f583248381cd	2019-07-04 13:32:32.010837
34	3	SmsCredit	\N	\N	2	User	\N	create	---\ntransaction_type: 0\nleft: 10\npurpose: Buy your sms credits\n	1	\N	139.167.140.3	67090f6f-2652-4611-a16b-f583248381cd	2019-07-04 13:32:32.028967
35	5	Order	\N	\N	2	User	\N	create	---\norder_id: pay_CpbeRXBcVRW1iu\namount: '10'\ncurrency_type: INR\nreceipt: Buy your sms credits\nentity: \nstatus: authorized\n	1	\N	139.167.140.3	b68055e9-165f-4d26-ba01-b23235890cc0	2019-07-04 13:36:31.726308
36	4	SmsCredit	\N	\N	2	User	\N	create	---\ntransaction_type: 0\nleft: 10\npurpose: Buy your sms credits\n	1	\N	139.167.140.3	b68055e9-165f-4d26-ba01-b23235890cc0	2019-07-04 13:36:31.731702
37	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 09:44:47.419221000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 14:44:30.259368656 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 09:39:19.742335000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 09:44:47.419221000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 139.167.184.137\n- 139.167.140.3\nsign_in_count:\n- 80\n- 81\n	22	\N	139.167.140.3	55095015-6dc3-48d7-b58c-356cea5abd42	2019-07-04 14:44:30.264216
38	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 14:44:30.259368000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-04 14:51:44.364811102 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 09:44:47.419221000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 14:44:30.259368000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 139.167.184.137\n- 139.167.140.3\nsign_in_count:\n- 81\n- 82\n	23	\N	139.167.140.3	488ee95b-495d-4e7c-88bd-3ca90000f1dd	2019-07-04 14:51:44.368811
39	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nphone:\n- '7895204291'\n- '7017852851'\ncountry_code:\n- \n- "+91"\n	1	\N	27.6.202.189	30e28ca4-10e3-4ac3-b29f-4c2acf3a3fc0	2019-07-04 21:21:19.451357
40	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntime_zone:\n- "(GMT+05:30)- Chennai, Kolkata, Mumbai, New Delhi"\n- "(GMT+04:00)- Yerevan"\n	1	\N	27.6.202.189	5804f902-4ef9-4614-ad82-d2ebdf52d1a4	2019-07-04 21:26:55.992915
164	5	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	1	\N	171.48.42.174	919a5581-aef3-4f08-8241-4cb9b6687531	2019-07-07 08:11:34.965695
165	6	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	1	\N	171.48.42.174	1c86ee20-4ea0-4a92-8425-ed07ac0a4d67	2019-07-07 08:11:38.841146
41	8	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$oUxmjnpDeC7T3edbRxNzF.xO/GrMNvhO61OejsxaJ6cviOUR5TEve"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 8be097d1cf3a5ca21ca3acbd4d86e3f7\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: 13/06/19\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	09f25fdf-29af-468c-9e2d-7d1f0be159c1	2019-07-04 21:32:37.749419
42	13	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$If4rwUHPi/TRo1d95KeRe.e33Bnccjzl8JdyJnS3oMShQiGF0WFt6"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: abc0261aa216c303274ad672d2bab20c\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	09f25fdf-29af-468c-9e2d-7d1f0be159c1	2019-07-04 21:32:37.816743
43	8	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 13\nrole_id: 3\n	1	\N	27.6.202.189	09f25fdf-29af-468c-9e2d-7d1f0be159c1	2019-07-04 21:32:37.875854
44	13	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$If4rwUHPi/TRo1d95KeRe.e33Bnccjzl8JdyJnS3oMShQiGF0WFt6"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: abc0261aa216c303274ad672d2bab20c\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	2	\N	27.6.202.189	f16fa7e8-8eae-4bea-8dee-c510cc0952fa	2019-07-04 21:33:24.484809
45	14	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$AAUNk0C50Fy/DCEMaiwSt.cWOdm3YaaYpMI0.4ZJ55y8QgR.uKY3G"\nphone: '98765432109'\notp: ''\nname: sonal\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 3980e16c56721138f70739c0bd068b11\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	f16fa7e8-8eae-4bea-8dee-c510cc0952fa	2019-07-04 21:33:24.494199
46	9	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 14\nrole_id: 3\n	1	\N	27.6.202.189	f16fa7e8-8eae-4bea-8dee-c510cc0952fa	2019-07-04 21:33:24.504669
47	14	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$AAUNk0C50Fy/DCEMaiwSt.cWOdm3YaaYpMI0.4ZJ55y8QgR.uKY3G"\nphone: '98765432109'\notp: ''\nname: sonal\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 3980e16c56721138f70739c0bd068b11\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	2	\N	27.6.202.189	792fcb43-ddc2-4d5c-809b-7ee0854e0e08	2019-07-04 21:34:13.940914
48	15	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$kG2T8821m5EikFS5yrW7LOCkc2aRtf97ZiNsL.RIjZ8nmC11YrIHq"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: e2c5f6d10226566f8428a144d5418d4d\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	792fcb43-ddc2-4d5c-809b-7ee0854e0e08	2019-07-04 21:34:13.95184
49	10	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 15\nrole_id: 3\n	1	\N	27.6.202.189	792fcb43-ddc2-4d5c-809b-7ee0854e0e08	2019-07-04 21:34:13.964388
50	15	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$kG2T8821m5EikFS5yrW7LOCkc2aRtf97ZiNsL.RIjZ8nmC11YrIHq"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: e2c5f6d10226566f8428a144d5418d4d\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	2	\N	27.6.202.189	a770476d-a3b7-47a0-a779-ecb2e3704108	2019-07-04 21:34:38.462822
51	16	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$E51c9qHdFYpGA330FLTYgecMRof7OLVwuRXUVDHC9IXn1lSGxOh.2"\nphone: '9876543210'\notp: ''\nname: sonal\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 3f6f72af8e2bbdd9febcbf4968efffd8\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	a770476d-a3b7-47a0-a779-ecb2e3704108	2019-07-04 21:34:38.473883
52	11	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 16\nrole_id: 3\n	1	\N	27.6.202.189	a770476d-a3b7-47a0-a779-ecb2e3704108	2019-07-04 21:34:38.485979
53	16	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	27.6.202.189	b2a8ec7b-1530-4217-83a2-9f1e65717b77	2019-07-04 21:38:10.992349
166	10	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	1	\N	171.48.42.174	a3509dff-4332-43f8-8e92-5975ae6fa445	2019-07-07 08:11:46.663102
167	7	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	1	\N	171.48.42.174	032462ac-2788-4797-be81-2042a8387a9c	2019-07-07 08:11:51.660219
54	16	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$E51c9qHdFYpGA330FLTYgecMRof7OLVwuRXUVDHC9IXn1lSGxOh.2"\nphone: '9876543210'\notp: ''\nname: sonal\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 3f6f72af8e2bbdd9febcbf4968efffd8\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	3	\N	27.6.202.189	258c5462-6f0f-43fd-b1ca-d907d7b9dd82	2019-07-04 21:38:34.991592
55	17	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$K9wJdTbDmjZrGtO503j7HuQ9vCLKCd5iqAsK7viDqpDyD2.VrkQ5u"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: f3684818fad2f78060f515748507bfc9\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	258c5462-6f0f-43fd-b1ca-d907d7b9dd82	2019-07-04 21:38:35.001489
56	12	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 17\nrole_id: 3\n	1	\N	27.6.202.189	258c5462-6f0f-43fd-b1ca-d907d7b9dd82	2019-07-04 21:38:35.012579
57	17	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$K9wJdTbDmjZrGtO503j7HuQ9vCLKCd5iqAsK7viDqpDyD2.VrkQ5u"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: f3684818fad2f78060f515748507bfc9\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	2	\N	27.6.202.189	dc76e14c-4f8c-4f8b-86bd-669d7ed75c05	2019-07-04 21:38:58.764743
58	18	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$51ZGNA/yrLprnYPTMd.rXOzKP/JMlWHWc8RAwyVkHCk7IqM.DbRsm"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 9b513f76823c0bbbde28b68ce0989835\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	dc76e14c-4f8c-4f8b-86bd-669d7ed75c05	2019-07-04 21:38:58.774404
59	13	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 18\nrole_id: 3\n	1	\N	27.6.202.189	dc76e14c-4f8c-4f8b-86bd-669d7ed75c05	2019-07-04 21:38:58.785506
60	18	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	27.6.202.189	6e0e976d-aded-43a6-a573-6662386207fb	2019-07-04 21:54:33.350713
61	18	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$51ZGNA/yrLprnYPTMd.rXOzKP/JMlWHWc8RAwyVkHCk7IqM.DbRsm"\nphone: '9876543210'\notp: ''\nname: 'sonal '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 9b513f76823c0bbbde28b68ce0989835\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	3	\N	27.6.202.189	a872646e-2185-459b-98af-a288770d5022	2019-07-04 21:55:37.778873
62	19	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$mNObYweBEzuyuacyL2wrxeeh3EwQ7xUBq0bdIfEf0AEmJQUgcffaO"\nphone: '9876543210'\notp: ''\nname: sonal\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: c573021fbd10888d075aee3d8072620b\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	a872646e-2185-459b-98af-a288770d5022	2019-07-04 21:55:37.788843
63	14	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 19\nrole_id: 3\n	1	\N	27.6.202.189	a872646e-2185-459b-98af-a288770d5022	2019-07-04 21:55:37.800621
64	19	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$mNObYweBEzuyuacyL2wrxeeh3EwQ7xUBq0bdIfEf0AEmJQUgcffaO"\nphone: '9876543210'\notp: ''\nname: sonal\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: c573021fbd10888d075aee3d8072620b\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	2	\N	27.6.202.189	a5844ca4-f91c-4eb2-b52a-20b49590000d	2019-07-04 21:58:28.701107
65	20	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$Tcn0s7U2/Z7FP/Qishzz4u5dUDr9BVajjgcQxTGjv8PbtdRhIwMiK"\nphone: '9876543210'\notp: ''\nname: kusum\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: cac78cc5462a3b92153d179583ea2f98\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	a5844ca4-f91c-4eb2-b52a-20b49590000d	2019-07-04 21:58:28.711152
66	15	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 20\nrole_id: 3\n	1	\N	27.6.202.189	a5844ca4-f91c-4eb2-b52a-20b49590000d	2019-07-04 21:58:28.722649
168	25	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	3	\N	171.48.42.174	d9688bd0-9e9f-4dab-8804-889ae6456aea	2019-07-07 08:11:56.79775
169	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	10	\N	171.48.42.174	d4f816c1-f95b-47bb-860e-212a8bf6a2a3	2019-07-07 08:12:02.02297
68	20	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$Tcn0s7U2/Z7FP/Qishzz4u5dUDr9BVajjgcQxTGjv8PbtdRhIwMiK"\nphone: '9876543210'\notp: ''\nname: kusum\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: cac78cc5462a3b92153d179583ea2f98\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	2	\N	27.6.202.189	4c290337-bb6a-4b15-abfb-2ddb9631260a	2019-07-04 21:59:22.125913
69	21	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$WCMDqLSK.ap4KE/4NzLhCu0ML/kOdKuZCwjgC/wr.28n3eYLbQ5UO"\nphone: '9876543210'\notp: ''\nname: 'naveen '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 419e30c73cc281867a13e4fbb2531ab6\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	4c290337-bb6a-4b15-abfb-2ddb9631260a	2019-07-04 21:59:22.135563
70	16	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 21\nrole_id: 3\n	1	\N	27.6.202.189	4c290337-bb6a-4b15-abfb-2ddb9631260a	2019-07-04 21:59:22.146603
71	21	User	\N	\N	2	User	\N	destroy	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$WCMDqLSK.ap4KE/4NzLhCu0ML/kOdKuZCwjgC/wr.28n3eYLbQ5UO"\nphone: '9876543210'\notp: ''\nname: 'naveen '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 419e30c73cc281867a13e4fbb2531ab6\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	2	\N	27.6.202.189	02187fb9-5f16-4633-904e-62d8b35937d9	2019-07-04 22:00:09.620738
72	22	User	\N	\N	2	User	\N	create	---\nemail: sonal@gmail.com\nencrypted_password: "$2a$11$QFSm8f/RT/oRk2KnUUAGbeYIL/ssU5GDecQHldXkBC6IyJWdLVZt2"\nphone: '9876543210'\notp: ''\nname: nihal\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 51356582baf7798491fc0463868db4b0\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	27.6.202.189	02187fb9-5f16-4633-904e-62d8b35937d9	2019-07-04 22:00:09.63486
73	17	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 22\nrole_id: 3\n	1	\N	27.6.202.189	02187fb9-5f16-4633-904e-62d8b35937d9	2019-07-04 22:00:09.657024
74	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-04 14:51:44.364811000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 04:43:35.258469932 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 14:44:30.259368000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-04 14:51:44.364811000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 139.167.140.3\n- 47.30.191.23\nsign_in_count:\n- 82\n- 83\n	24	\N	47.30.191.23	62ffa9cf-93c3-49b4-9d03-9b14471caac8	2019-07-05 04:43:35.26266
75	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 04:43:35.258469000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 14:48:30.771365203 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-04 14:51:44.364811000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 04:43:35.258469000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.30.191.23\n- 171.61.167.127\nlast_sign_in_ip:\n- 139.167.140.3\n- 47.30.191.23\nsign_in_count:\n- 83\n- 84\n	25	\N	171.61.167.127	a1456ee1-2d8b-4cfb-bb5c-427b42574c56	2019-07-05 14:48:30.799956
76	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 14:48:30.771365000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 14:49:45.734251687 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 04:43:35.258469000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 14:48:30.771365000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 47.30.191.23\n- 171.61.167.127\nsign_in_count:\n- 84\n- 85\n	26	\N	171.61.167.127	ae476f36-a13b-487f-9068-0cc176a756af	2019-07-05 14:49:45.738247
77	23	User	\N	\N	2	User	\N	create	---\nemail: gshukla66@gmail.com\nencrypted_password: "$2a$11$LLKCPr3sEZYWLw5KleCDO.uNCqQayeEORkwrBK7icur4PpwcukfW."\nphone: '9044747946'\notp: ''\nname: Gaurav Shukla\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 1547a09a23665dd33aff64a1600ccddd\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	171.61.167.127	a5f2cfe3-c8b4-483f-b1b0-c74c280552f1	2019-07-05 14:50:30.254619
78	18	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 23\nrole_id: 3\n	1	\N	171.61.167.127	a5f2cfe3-c8b4-483f-b1b0-c74c280552f1	2019-07-05 14:50:30.305263
79	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 14:49:45.734251000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 15:03:03.612931289 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 14:48:30.771365000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 14:49:45.734251000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 85\n- 86\n	27	\N	171.61.167.127	55ba78e8-e326-4a3b-b2ba-59a7fcc46845	2019-07-05 15:03:03.616919
80	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 15:03:03.612931000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 16:59:20.277586631 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 14:49:45.734251000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 15:03:03.612931000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 86\n- 87\n	28	\N	171.61.167.127	4deded9e-bf02-495e-92c8-7b2d5b575aaa	2019-07-05 16:59:20.285435
81	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nphone:\n- '7017852851'\n- '7838171569'\n	2	\N	171.61.167.127	69add47e-648a-4aab-911c-b0e15ff498af	2019-07-05 16:59:59.282868
82	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 16:59:20.277586000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 17:00:12.053683757 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 15:03:03.612931000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 16:59:20.277586000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 87\n- 88\n	29	\N	171.61.167.127	85ab5bec-bf1d-44ac-8235-f10b747f4b52	2019-07-05 17:00:12.057234
83	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 17:00:12.053683000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 17:00:34.408129934 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 16:59:20.277586000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 17:00:12.053683000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 88\n- 89\n	30	\N	171.61.167.127	d87b0d10-5f14-4a9f-91e9-e6d33688ccdf	2019-07-05 17:00:34.411545
84	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 17:00:34.408129000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 17:01:18.682454532 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 17:00:12.053683000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 17:00:34.408129000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 89\n- 90\n	31	\N	171.61.167.127	d871bb23-c128-420d-9258-65d818d244ee	2019-07-05 17:01:18.686424
85	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 17:01:18.682454000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-05 17:01:48.545041601 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 17:00:34.408129000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 17:01:18.682454000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 90\n- 91\n	32	\N	171.61.167.127	931f199b-9be0-455a-85ce-163c2d270bbf	2019-07-05 17:01:48.54892
86	24	User	\N	\N	2	User	\N	create	---\nemail: kesharvani99+j@gmail.com\nencrypted_password: "$2a$11$mIi3LI6iGQIlBWHIbQLH7u8XBfcmhrHukHbI5m2IkVOLEPVDINlHO"\nphone: '7838171560'\notp: ''\nname: 'ashutosh '\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 68b58da1b3e4ffa02f55f6974f0d6f05\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	171.61.167.127	85e66e9f-6e7e-40cc-8afc-0713d2ed3a31	2019-07-05 17:02:47.805034
87	19	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 24\nrole_id: 3\n	1	\N	171.61.167.127	85e66e9f-6e7e-40cc-8afc-0713d2ed3a31	2019-07-05 17:02:47.816587
88	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nphone:\n- '7838171569'\n- '1111111111'\n	3	\N	139.167.164.179	ce0324e1-957d-4da1-9177-2078d4a50f9b	2019-07-05 18:29:40.365081
89	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncountry_code:\n- "+91"\n- "+1 876"\n	4	\N	139.167.164.179	a6446f7e-ac67-4c4a-8bfc-310660f16e88	2019-07-05 18:29:56.04637
90	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-05 17:01:48.545041000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 06:07:58.328021694 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 17:01:18.682454000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-05 17:01:48.545041000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 91\n- 92\n	33	\N	171.61.167.127	7da6fd4c-92d1-4727-8b70-862f10c3ba32	2019-07-06 06:07:58.360928
91	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncountry_code:\n- "+1 876"\n- "+91"\n	5	\N	171.61.167.127	16619eae-6a19-4fdc-8552-c735b1d6d541	2019-07-06 06:12:59.6221
92	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncountry_code:\n- "+91"\n- "+353"\n	6	\N	171.61.167.127	2d830aa7-34f9-470a-a35f-94ce5f23790c	2019-07-06 06:13:28.084276
170	24	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	171.48.42.174	bca400fc-0a59-46c0-9c89-6a06d9a8871f	2019-07-07 08:12:06.543234
171	22	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	171.48.42.174	bd575186-0702-4833-a0bd-cb057ac48f9a	2019-07-07 08:12:11.635328
93	25	User	\N	\N	2	User	\N	create	---\nemail: deathping1994@gmail.com\nencrypted_password: "$2a$11$mkO86MFRl8ID6/XlGivQWe.a9.zCpf/wNHVXSsQOpqy7nVp7ZwGPK"\nphone: '8375847862'\notp: ''\nname: Gaurav Shukla\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 41d19699bfd38f12027337bb64173ff8\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	171.61.167.127	cd60ff3d-3356-4dc5-aedc-28f07e952255	2019-07-06 06:20:42.587303
94	20	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 25\nrole_id: 3\n	1	\N	171.61.167.127	cd60ff3d-3356-4dc5-aedc-28f07e952255	2019-07-06 06:20:42.613681
95	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 06:07:58.328021000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 06:22:32.202463699 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-05 17:01:48.545041000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 06:07:58.328021000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 92\n- 93\n	34	\N	171.61.167.127	738be869-824e-4e9e-80aa-509bd7efd6b7	2019-07-06 06:22:32.206308
96	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nphone:\n- '1111111111'\n- '9999925147'\ncountry_code:\n- "+353"\n- "+91"\n	7	\N	171.61.167.127	85980aee-843c-4436-928a-9a4832731d5e	2019-07-06 06:28:20.686836
97	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 06:22:32.202463000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 06:31:20.110198104 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 06:07:58.328021000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 06:22:32.202463000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 93\n- 94\n	35	\N	171.61.167.127	64965a06-84ab-42df-a72e-8df741a6d661	2019-07-06 06:31:20.114284
98	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 06:31:20.110198000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 06:32:56.253038187 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 06:22:32.202463000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 06:31:20.110198000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 94\n- 95\n	36	\N	171.61.167.127	bd62c72e-9131-402f-8d90-4a1b6d9c9115	2019-07-06 06:32:56.256954
99	2	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\notp:\n- ''\n- '81053'\n	37	\N	103.212.144.87	2136d898-2904-46c7-b2a7-f3a25dd952e1	2019-07-06 07:15:44.136228
100	1	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\notp:\n- ''\n- '10145'\n	8	\N	103.212.144.87	4dfaac71-d219-4433-8413-7cb9f0ed17e1	2019-07-06 07:18:49.597291
101	23	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\notp:\n- ''\n- '34667'\n	2	\N	171.61.167.127	efa780ec-c1bb-43d9-bd2b-6f77aa127eaa	2019-07-06 08:55:24.047864
102	23	User	\N	\N	23	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 08:56:27.518806424 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: *1\n  zone: *2\n  time: *1\ncurrent_sign_in_ip:\n- \n- 171.61.167.127\nlast_sign_in_ip:\n- \n- 171.61.167.127\nsign_in_count:\n- 0\n- 1\n	3	\N	171.61.167.127	a7686ea7-04d6-4847-a38b-38c32e2e6db4	2019-07-06 08:56:27.523495
103	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 06:32:56.253038000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 09:13:45.788631226 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 06:31:20.110198000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 06:32:56.253038000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 95\n- 96\n	38	\N	171.61.167.127	aac30e5e-80b6-4c80-a59c-1316eefba7ea	2019-07-06 09:13:45.7941
104	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 09:13:45.788631000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 09:14:11.994166383 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 06:32:56.253038000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 09:13:45.788631000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 96\n- 97\n	39	\N	171.61.167.127	de349d35-0337-4611-879a-bcfc4c91359b	2019-07-06 09:14:11.999804
105	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 09:14:11.994166000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 09:38:04.920711837 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 09:13:45.788631000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 09:14:11.994166000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 97\n- 98\n	40	\N	171.61.167.127	776af9a8-63fa-4112-ad6d-9424ce20e3e8	2019-07-06 09:38:04.924641
106	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 09:38:04.920711000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 09:41:18.885535525 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 09:14:11.994166000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 09:38:04.920711000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 98\n- 99\n	41	\N	171.61.167.127	1bd9d51f-1397-4f8b-95da-5444f4c8933d	2019-07-06 09:41:18.889517
107	12	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	117.212.115.197	198c5a68-cbb8-473b-8f8d-79ab0ef98cc1	2019-07-06 15:06:59.433062
108	12	User	\N	\N	2	User	\N	destroy	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$QG8afrJExJRWYxgzJOXjguaR8HqDeI5G5KPyvrhCEi3gza1mkKjfC"\nphone: '9999999999'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: f696398cdd1137e65c2fc0c334cef37b\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	3	\N	117.212.115.197	c8e6cb57-65cd-4477-95d3-5052bd4baf46	2019-07-06 15:07:20.415995
109	26	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$xj.St939NA1ZIgDfchdqN.QyU.AF0efywZyweZKwGC14sr52mHChK"\nphone: '99997804080'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: f9589bdec0de4265fc3d1fe59b1f730b\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	117.212.115.197	c8e6cb57-65cd-4477-95d3-5052bd4baf46	2019-07-06 15:07:20.439211
110	21	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 26\nrole_id: 3\n	1	\N	117.212.115.197	c8e6cb57-65cd-4477-95d3-5052bd4baf46	2019-07-06 15:07:20.470296
111	26	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	117.212.115.197	d6c33c9f-9a4d-42dd-afa0-8e343815a2a2	2019-07-06 15:30:40.637668
112	26	User	\N	\N	2	User	\N	destroy	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$xj.St939NA1ZIgDfchdqN.QyU.AF0efywZyweZKwGC14sr52mHChK"\nphone: '99997804080'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: f9589bdec0de4265fc3d1fe59b1f730b\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	3	\N	117.212.115.197	7c78da61-9b28-45b6-9f4f-fd31237b4204	2019-07-06 15:31:00.565356
113	27	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$mXL6PPSQ.AAaFq5YREjyvOZ.KXY/NI2KMGQKtvnFTSnFUMSdy6p62"\nphone: '9997804080'\notp: ''\nname: Rajat Jain\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: fe1a463d3f8374c68d6104ff787770e1\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	117.212.115.197	7c78da61-9b28-45b6-9f4f-fd31237b4204	2019-07-06 15:31:00.575373
114	22	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 27\nrole_id: 3\n	1	\N	117.212.115.197	7c78da61-9b28-45b6-9f4f-fd31237b4204	2019-07-06 15:31:00.5879
115	1	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncountry_code:\n- "+91"\n- "+1 876"\n	9	\N	117.212.115.197	2b8dcbbf-1082-46e5-8bb2-b8b83415f3e2	2019-07-06 16:09:00.603636
116	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 09:41:18.885535000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 16:17:43.354478324 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 09:38:04.920711000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 09:41:18.885535000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.61.167.127\n- 117.212.115.197\nsign_in_count:\n- 99\n- 100\n	42	\N	117.212.115.197	3d67c814-c683-47be-91bb-ca42d6e831b3	2019-07-06 16:17:43.358399
117	23	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	4	\N	171.61.167.127	1026bc15-4043-43d7-823c-433b0ef9ab9e	2019-07-06 18:22:05.316295
118	23	User	\N	\N	2	User	\N	destroy	---\nemail: gshukla66@gmail.com\nencrypted_password: "$2a$11$LLKCPr3sEZYWLw5KleCDO.uNCqQayeEORkwrBK7icur4PpwcukfW."\nphone: '9044747946'\notp: '34667'\nname: Gaurav Shukla\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 1\ncurrent_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 08:56:27.518806000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 08:56:27.518806000 Z\n  zone: *2\n  time: *3\ncurrent_sign_in_ip: 171.61.167.127\nlast_sign_in_ip: 171.61.167.127\nconfirmation_token: 1547a09a23665dd33aff64a1600ccddd\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	5	\N	171.61.167.127	d286dde3-374c-4449-8712-0815fe7ed10f	2019-07-06 18:23:10.011225
119	28	User	\N	\N	2	User	\N	create	---\nemail: gshukla66@gmail.com\nencrypted_password: "$2a$11$7UH1laXIiWfODaOwqudyU.XIhGRf1MJSC0vHqHETIUd1zUwJpzSnO"\nphone: '9044747946'\notp: ''\nname: Gaurav Shukla\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 34d0525eaad71b3992d4818e7250df80\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: '134'\ndepartment: Engineering\nlocation: Lucknow\nsupervisor: Jane Valicia\nhead_of_department: Hari Sadu\ndate_of_joining: 01/12/2017\nemployment_status: Employed\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	171.61.167.127	d286dde3-374c-4449-8712-0815fe7ed10f	2019-07-06 18:23:10.022524
120	23	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 28\nrole_id: 3\n	1	\N	171.61.167.127	d286dde3-374c-4449-8712-0815fe7ed10f	2019-07-06 18:23:10.035831
121	27	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	117.212.115.197	efc92978-3659-4eb1-b6be-df7ba8c062bc	2019-07-06 18:27:04.203119
324	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- true\n- false\n	108	\N	47.31.136.55	edd97243-b24f-4914-9581-5d761c445b8a	2019-07-23 15:46:42.53978
122	27	User	\N	\N	2	User	\N	destroy	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$mXL6PPSQ.AAaFq5YREjyvOZ.KXY/NI2KMGQKtvnFTSnFUMSdy6p62"\nphone: '9997804080'\notp: ''\nname: Rajat Jain\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: fe1a463d3f8374c68d6104ff787770e1\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	3	\N	117.212.115.197	1577136a-7bf2-4a47-8a3c-ed01a70ec438	2019-07-06 18:27:53.012412
123	29	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$/Mz87Re46hhIsSnKvxL.w.bft32pgsT26TrzV4sOlJ6qsCNxDJGlG"\nphone: '9997804080'\notp: ''\nname: Rajat Jain\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: ad511818fe6764276efc502f87595aea\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: 13/06/2019\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	117.212.115.197	1577136a-7bf2-4a47-8a3c-ed01a70ec438	2019-07-06 18:27:53.023661
124	24	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 29\nrole_id: 3\n	1	\N	117.212.115.197	1577136a-7bf2-4a47-8a3c-ed01a70ec438	2019-07-06 18:27:53.036437
125	6	Template	\N	\N	\N	\N	\N	create	---\nname: Survey Invitation Link\nsender_name: \nsubject: \ncontent: "{Leader_Image}\\n\\nHi {Employee_Name}, \\n\\nPlease share your direct and unbiased\n  feedback with us/me using the link below.  Be assured that your responses are strictly\n  confidential and governed by our Trust Policy.\\n\\n[Share my Opinion] (button)\\n\\nYour\n  continuous feedback will help us make the right changes at {Company_Name} and make\n  it a better place to work and grow.\\n\\n\\nNot sure what this new feedback platform\n  is?\\nEngagePulse is an Employee Experience platform - one that allows you to participate\n  in experience surveys, give anonymous feedback and more. Employees interact with\n  Cara, a digital HR assistant, who collects all individual experiences & opinions\n  for {company}'s senior leadership. Whatever you share with Cara, rest assured that\n  she'll treat it all as confidential & privileged information and will never share\n  anything publicly or to your immediate peers & supervisors.\\n\\nIf you need help\n  with anything related to using the platform, please don't hesitate to contact our\n  support team \\U0001F481 at support@engagepulse.com\\n\\nCheers,\\n{LEADER_NAME}\\n"\ntemplate_type: email\n	1	\N	\N	489f171a-cfb7-4db1-928e-2a29f916d6d6	2019-07-06 18:29:46.967922
126	6	Template	\N	\N	\N	\N	\N	destroy	---\nname: Survey Invitation Link\nsender_name: \nsubject: \ncontent: "{Leader_Image}\\n\\nHi {Employee_Name}, \\n\\nPlease share your direct and unbiased\n  feedback with us/me using the link below.  Be assured that your responses are strictly\n  confidential and governed by our Trust Policy.\\n\\n[Share my Opinion] (button)\\n\\nYour\n  continuous feedback will help us make the right changes at {Company_Name} and make\n  it a better place to work and grow.\\n\\n\\nNot sure what this new feedback platform\n  is?\\nEngagePulse is an Employee Experience platform - one that allows you to participate\n  in experience surveys, give anonymous feedback and more. Employees interact with\n  Cara, a digital HR assistant, who collects all individual experiences & opinions\n  for {company}'s senior leadership. Whatever you share with Cara, rest assured that\n  she'll treat it all as confidential & privileged information and will never share\n  anything publicly or to your immediate peers & supervisors.\\n\\nIf you need help\n  with anything related to using the platform, please don't hesitate to contact our\n  support team \\U0001F481 at support@engagepulse.com\\n\\nCheers,\\n{LEADER_NAME}\\n"\ntemplate_type: email\n	2	\N	\N	048a65da-92b4-4bef-bebd-27942108c7c8	2019-07-06 18:30:35.295372
127	29	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$/Mz87Re46hhIsSnKvxL.w.bft32pgsT26TrzV4sOlJ6qsCNxDJGlG"\n- "$2a$11$ir8SQPGesmi5QL1kWKP/8uK6CKi9yb8gjp78VjzDDBkyA/9xPMucO"\nconfirmation_token:\n- ad511818fe6764276efc502f87595aea\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 18:31:09.430003663 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	2	\N	117.212.115.197	1b4f00a4-968f-49f3-a08e-a8aa730650d8	2019-07-06 18:31:09.750667
128	7	Template	\N	\N	\N	\N	\N	create	---\nname: Survey Invitation Link\nsender_name: \nsubject: "{Employee_Name} here is your domain to log in"\ncontent: "{Admin_Banner}\\n\\nHi {Employee_Name}, \\n\\nPlease share your direct and unbiased\n  feedback with us/me using the link below.  Be assured that your responses are strictly\n  confidential and governed by our Trust Policy.\\n\\n[Share my Opinion] (button)\\n\\nYour\n  continuous feedback will help us make the right changes at {Company_Name} and make\n  it a better place to work and grow.\\n\\n\\nNot sure what this new feedback platform\n  is?\\nEngagePulse is an Employee Experience platform - one that allows you to participate\n  in experience surveys, give anonymous feedback and more. Employees interact with\n  Cara, a digital HR assistant, who collects all individual experiences & opinions\n  for {company}'s senior leadership. Whatever you share with Cara, rest assured that\n  she'll treat it all as confidential & privileged information and will never share\n  anything publicly or to your immediate peers & supervisors.\\n\\nIf you need help\n  with anything related to using the platform, please don't hesitate to contact our\n  support team \\U0001F481 at support@engagepulse.com\\n\\nCheers,\\n{Leader_Name}\\n"\ntemplate_type: email\n	1	\N	\N	62f62563-d493-4b53-a14c-58e83c610cbe	2019-07-06 18:41:48.088097
129	8	Template	\N	\N	\N	\N	\N	create	---\nname: Login Link\nsender_name: \nsubject: "{Sender_Name} invites you to share your opinion"\ncontent: "{Company_Logo}\\n\\nHi {Employee_Name},\\n\\nPlease click on the button below\n  to access your company domain registered with Engagepulse and log in.\\n\\n[Access\n  your Engagepulse account] (button)\\n\\n\\nNot sure what Engagepulse is?\\nEngagePulse\n  is an Employee Experience platform - one that allows you to participate in experience\n  surveys, give anonymous feedback and more. Employees interact with Cara, a digital\n  HR assistant, who collects all individual experiences & opinions for {company}'s\n  senior leadership. Whatever you share with Cara, rest assured that she'll treat\n  it all as confidential & privileged information and will never share anything publicly\n  or to your immediate peers & supervisors.\\n\\n\\nIf you need help with anything related\n  to using the platform, please don't hesitate to contact our support team \\U0001F481\n  at support@engagepulse.com\\n\\n\\n\\nCheers,\\nCara \\U0001F47C\\n"\ntemplate_type: email\n	1	\N	\N	da9cd8e1-8122-459f-975c-2b5aaf5dcf53	2019-07-06 18:41:48.097939
134	29	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	3	\N	117.212.115.197	a034ecc5-0893-4ff0-bd60-641f46e04351	2019-07-06 18:46:04.642918
130	9	Template	\N	\N	\N	\N	\N	create	---\nname: Password Reset\nsender_name: \nsubject: "{Employee_Name} your Engagepulse password request"\ncontent: "{Company_Logo}\\n\\nHi {Employee_Name},\\n\\nPlease click on the button below\n  to reset your password. \\n\\n[Reset my password] (button)\\n\\nIf you did not request\n  to reset your password, please forward this email to support@engagepulse.com.\\n\\n\\nWhat\n  is Engagepulse\\nEngagePulse is an Employee Experience platform - one that allows\n  you to participate in experience surveys, give anonymous feedback and more. Employees\n  interact with Cara, a digital HR assistant, who collects all individual experiences\n  & opinions for {company}'s senior leadership. Whatever you share with Cara, rest\n  assured that she'll treat it all as confidential & privileged information and will\n  never share anything publicly or to your immediate peers & supervisors.\\n\\nIf you\n  need help with anything related to using the platform, please don't hesitate to\n  contact our support team \\U0001F481 at support@engagepulse.com\\n\\n\\n\\nCheers,\\nCara\n  \\U0001F47C\\n"\ntemplate_type: email\n	1	\N	\N	b9bd439e-3c40-41bb-86ff-531929b8db20	2019-07-06 18:41:48.107619
131	10	Template	\N	\N	\N	\N	\N	create	---\nname: OTP Received\nsender_name: \nsubject: "{Employee_Name} your one time password (OTP) for Engagepulse"\ncontent: "{Company_Logo}\\n\\nHi {Employee_Name},\\n\\nPlease use the OTP below to login\n  to your Engagepulse account.\\n\\n[OTP code]\\n\\nIf you did not request this OTP, please\n  forward this email to support@engagepulse.com.\\n\\nWhat is Engagepulse\\nEngagePulse\n  is an Employee Experience platform - one that allows you to participate in experience\n  surveys, give anonymous feedback and more. Employees interact with Cara, a digital\n  HR assistant, who collects all individual experiences & opinions for {company}'s\n  senior leadership. Whatever you share with Cara, rest assured that she'll treat\n  it all as confidential & privileged information and will never share anything publicly\n  or to your immediate peers & supervisors. \\n\\n\\nIf you need help with anything related\n  to using the platform, please don't hesitate to contact our support team \\U0001F481\n  at support@engagepulse.com\\n\\n\\n\\nCheers,\\nCara \\U0001F47C\\n"\ntemplate_type: email\n	1	\N	\N	f71623f0-c097-492f-8019-cb8fdb655226	2019-07-06 18:41:48.180859
132	11	Template	\N	\N	\N	\N	\N	create	---\nname: Incomplete Survey Reminder 1\nsender_name: \nsubject: "{Sender_Name} still waiting to hear from you"\ncontent: "{Admin_Banner}\\n\\nLet's build our culture together\\n\\n{Employee_Name},\\n\\nWe\n  are still waiting for your responses. It will just take a few minutes of your time\n  but you can make a big difference for yourself and others working at {Company_Name}\n  by providing your true and fearless feedback. \\n\\n[Share my Opinion] (button)\\n\\nJust\n  to remind you we strictly adhere by our TRUST POLICY which ensures that everything\n  you share in your feedback are kept completely confidential so you can share your\n  feedback without any hesitation. If you are facing any issues submitting your feedback\n  or you think this can be done in a better way please feel free to write to  support@engagepulse.com\n  in confidence.\\n\\n\\nWhy Engagepulse\\nEngagePulse is an Employee Experience platform\n  - one that allows you to participate in experience surveys, give anonymous feedback\n  and more. Employees interact with Cara, a digital HR assistant, who collects all\n  individual experiences & opinions for {company}'s senior leadership. Whatever you\n  share with Cara, rest assured that she'll treat it all as confidential & privileged\n  information and will never share anything publicly or to your immediate peers &\n  supervisors. \\n\\nIf you need help with anything related to using the platform, please\n  don't hesitate to contact our support team \\U0001F481 at support@engagepulse.com\\n\\n\\n\\nCheers,\\nCara\n  \\U0001F47C\\n"\ntemplate_type: email\n	1	\N	\N	83862a80-2708-4a0b-a283-08162c85666e	2019-07-06 18:41:48.190815
133	12	Template	\N	\N	\N	\N	\N	create	---\nname: Incomplete Survey Reminder 2\nsender_name: \nsubject: "{Sender_Name} still waiting to hear from you"\ncontent: "{Admin_Banner}\\n\\nLet's build our culture together\\n\\n{Employee_Name},\\n\\nYou\n  have the power to make a big difference for yourself and others working at {Company_Name}\n  by providing your direct feedback. Please take a couple of minutes to share your\n  feedback.\\n\\nJust to remind you we strictly adhere by our TRUST POLICY which ensures\n  that everything you share in your feedback are kept completely confidential so you\n  can share your feedback without any hesitation. If you are facing any issues submitting\n  your feedback or you think this can be done in a better way please feel free to\n  write to  support@engagepulse.com in confidence.\\n\\n\\n\\nWhy Engagepulse\\nEngagePulse\n  is an Employee Experience platform - one that allows you to participate in experience\n  surveys, give anonymous feedback and more. Employees interact with Cara, a digital\n  HR assistant, who collects all individual experiences & opinions for {company}'s\n  senior leadership. Whatever you share with Cara, rest assured that she'll treat\n  it all as confidential & privileged information and will never share anything publicly\n  or to your immediate peers & supervisors.\\n\\nIf you need help with anything related\n  to using the platform, please don't hesitate to contact our support team \\U0001F481\n  at support@engagepulse.com\\n\\n\\n\\nCheers,\\nCara \\U0001F47C\\n"\ntemplate_type: email\n	1	\N	\N	48f513f1-5f78-4843-b85d-632d690698e1	2019-07-06 18:41:51.355928
135	29	User	\N	\N	2	User	\N	destroy	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$ir8SQPGesmi5QL1kWKP/8uK6CKi9yb8gjp78VjzDDBkyA/9xPMucO"\nphone: '9997804080'\notp: ''\nname: Rajat Jain\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: \nconfirmed_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 18:31:09.430003000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: 13/06/2019\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	4	\N	117.212.115.197	61c23101-11bb-497c-b96f-aacf71d58d28	2019-07-06 18:46:21.180572
136	30	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$sx0sjmU9jj32yXDMjyQX8ur4fcm5EZP0yjn5b.hwr0NUUYUzS0pYW"\nphone: '9997804080'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: e3ce2aa58cf51f9a91a50ae9f27de8b8\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	117.212.115.197	61c23101-11bb-497c-b96f-aacf71d58d28	2019-07-06 18:46:21.190585
137	25	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 30\nrole_id: 3\n	1	\N	117.212.115.197	61c23101-11bb-497c-b96f-aacf71d58d28	2019-07-06 18:46:21.201636
138	30	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$sx0sjmU9jj32yXDMjyQX8ur4fcm5EZP0yjn5b.hwr0NUUYUzS0pYW"\n- "$2a$11$ZTypBB.AVUYd5swFYAukhOzN4T7oztOR6JOqd4UxgE8pvA1Z/wyWG"\nconfirmation_token:\n- e3ce2aa58cf51f9a91a50ae9f27de8b8\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 18:47:26.572058369 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	2	\N	117.212.115.197	e82a094f-3c82-4192-ac23-264d19db30f8	2019-07-06 18:47:26.879608
139	30	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	3	\N	117.212.115.197	5b8d0c39-b2f8-45e4-8fc5-bd56f78ceaf2	2019-07-06 18:50:14.207264
140	30	User	\N	\N	2	User	\N	destroy	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$ZTypBB.AVUYd5swFYAukhOzN4T7oztOR6JOqd4UxgE8pvA1Z/wyWG"\nphone: '9997804080'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: \nconfirmed_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 18:47:26.572058000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	4	\N	117.212.115.197	c39c555d-db5b-423e-a70c-a914e2e92f2b	2019-07-06 18:50:31.659114
141	31	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$p23szSyhVkNz/EasLU1NWuw4Yefb7SFRs8X94q9EHSx7b.XJiN.r6"\nphone: '9997888888'\notp: ''\nname: r\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: a580e913fa30aeaf9a786ef4fc7cc1b3\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \n	1	\N	117.212.115.197	c39c555d-db5b-423e-a70c-a914e2e92f2b	2019-07-06 18:50:31.672031
142	26	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 31\nrole_id: 3\n	1	\N	117.212.115.197	c39c555d-db5b-423e-a70c-a914e2e92f2b	2019-07-06 18:50:31.682924
143	31	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$p23szSyhVkNz/EasLU1NWuw4Yefb7SFRs8X94q9EHSx7b.XJiN.r6"\n- "$2a$11$3aLS3Q.0x3NwNt/L8e4UGuXvSOfVPg5.4LJ7wSy/Jw2uypqAP9Ffq"\nconfirmation_token:\n- a580e913fa30aeaf9a786ef4fc7cc1b3\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 18:53:36.814237120 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	2	\N	117.212.115.197	1fe43d45-acfb-461c-8d94-9e134b1e2d56	2019-07-06 18:53:37.122007
144	31	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	3	\N	117.212.115.197	a8b15d7f-e5c5-4f3b-953f-8d23927fa849	2019-07-06 18:59:33.812399
145	28	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\notp:\n- ''\n- '78497'\n	2	\N	103.212.144.87	6642d257-c454-412b-91b7-8de4dd6c9707	2019-07-06 19:06:57.002605
147	31	User	\N	\N	31	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:12:36.104344126 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: *1\n  zone: *2\n  time: *1\ncurrent_sign_in_ip:\n- \n- 117.212.115.197\nlast_sign_in_ip:\n- \n- 117.212.115.197\nsign_in_count:\n- 0\n- 1\n	4	\N	117.212.115.197	e2194dac-a3ef-40cf-9cef-5545b8c5473a	2019-07-06 19:12:36.107942
148	25	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\notp:\n- ''\n- '61852'\n	2	\N	103.212.144.87	bd3d7df3-6e3d-427d-9fe5-dabeab5ec99a	2019-07-06 19:13:01.706017
149	28	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$7UH1laXIiWfODaOwqudyU.XIhGRf1MJSC0vHqHETIUd1zUwJpzSnO"\n- "$2a$11$cky1mHzbxsVd2n1oQ./5celXHYjjDx5NJUmM9jjEw8L79XXr1K.RK"\nconfirmation_token:\n- 34d0525eaad71b3992d4818e7250df80\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:15:32.919283656 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	3	\N	171.61.167.127	8f3e9ffd-9eb9-42b7-b18c-69b19ed92781	2019-07-06 19:15:33.246968
150	2	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\notp:\n- '81053'\n- '55520'\n	43	\N	117.212.115.197	d12fb385-3cb9-4b80-a0a9-bf5f5eeaf4ad	2019-07-06 19:15:52.176781
199	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:50:22.258782000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:57:13.786250371 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:36:52.734016000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:50:22.258782000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 124\n- 125\n	69	\N	117.220.185.219	ea7c864b-ebb4-4820-b3c5-3f338336cee9	2019-07-09 11:57:13.795361
151	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 16:17:43.354478000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 19:17:24.255020689 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 09:41:18.885535000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 16:17:43.354478000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 171.61.167.127\n- 117.212.115.197\nsign_in_count:\n- 100\n- 101\n	44	\N	117.212.115.197	dda4af8e-9441-4acc-8bda-371506719750	2019-07-06 19:17:24.259159
152	28	User	\N	\N	28	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:20:54.689472070 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: *1\n  zone: *2\n  time: *1\ncurrent_sign_in_ip:\n- \n- 171.61.167.127\nlast_sign_in_ip:\n- \n- 171.61.167.127\nsign_in_count:\n- 0\n- 1\n	4	\N	171.61.167.127	318271b1-5163-4f12-b80f-671a32dab459	2019-07-06 19:20:54.693286
153	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:17:24.255020000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 19:28:55.983280012 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 16:17:43.354478000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 19:17:24.255020000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 117.212.115.197\n- 171.61.167.127\nsign_in_count:\n- 101\n- 102\n	45	\N	171.61.167.127	06eb1ac3-4841-4936-b443-07c0cce50ec3	2019-07-06 19:28:55.98767
154	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:28:55.983280000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 19:31:21.239558383 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 19:17:24.255020000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 19:28:55.983280000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 117.212.115.197\n- 171.61.167.127\nsign_in_count:\n- 102\n- 103\n	46	\N	171.61.167.127	e73b8b35-6525-409a-8234-1f7b8a4f38bf	2019-07-06 19:31:21.243734
155	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:31:21.239558000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 19:31:56.412956785 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 19:28:55.983280000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 19:31:21.239558000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 103\n- 104\n	47	\N	171.61.167.127	81d1f030-4074-4068-b0e2-16579cb37248	2019-07-06 19:31:56.416902
156	28	User	\N	\N	28	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:20:54.689472000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 19:34:21.455351597 Z\n  zone: *2\n  time: *3\nsign_in_count:\n- 1\n- 2\n	5	\N	171.61.167.127	7eafe426-b849-43ed-85ec-8d5a1f90043f	2019-07-06 19:34:21.459094
157	28	User	\N	\N	28	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:34:21.455351000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 19:36:19.284607056 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 19:20:54.689472000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 19:34:21.455351000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.61.167.127\n- 103.212.144.87\nsign_in_count:\n- 2\n- 3\n	6	\N	103.212.144.87	4d21004f-f4b7-4710-a74a-a5ca8f4da18d	2019-07-06 19:36:19.288803
158	28	User	\N	\N	28	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:36:19.284607000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 19:57:38.071231132 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 19:34:21.455351000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 19:36:19.284607000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 103.212.144.87\n- 171.61.167.127\nlast_sign_in_ip:\n- 171.61.167.127\n- 103.212.144.87\nsign_in_count:\n- 3\n- 4\n	7	\N	171.61.167.127	f7bf24eb-762c-4d0e-8d9c-22f607a97a92	2019-07-06 19:57:38.097711
159	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:31:56.412956000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 20:18:48.907967280 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 19:31:21.239558000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 19:31:56.412956000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 104\n- 105\n	48	\N	171.61.167.127	f2a7b5c1-a362-45b3-ae60-998d1532c745	2019-07-06 20:18:48.934628
160	6	Order	\N	\N	2	User	\N	create	---\norder_id: pay_Cqe9jzhlzMON5i\namount: '10'\ncurrency_type: INR\nreceipt: Buy your sms credits\nentity: \nstatus: authorized\n	1	\N	139.167.185.120	f4f520c7-80f4-4085-95b8-a8f7e7081b16	2019-07-07 04:42:29.338525
161	5	SmsCredit	\N	\N	2	User	\N	create	---\ntransaction_type: 0\nleft: 10\npurpose: Buy your sms credits\n	1	\N	139.167.185.120	f4f520c7-80f4-4085-95b8-a8f7e7081b16	2019-07-07 04:42:29.353356
162	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 20:18:48.907967000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 08:09:24.331337985 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 19:31:56.412956000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 20:18:48.907967000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.61.167.127\n- 171.48.42.174\nsign_in_count:\n- 105\n- 106\n	49	\N	171.48.42.174	c18f828e-1830-43d6-b579-5ca4ffc59db3	2019-07-07 08:09:24.357278
163	4	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	1	\N	171.48.42.174	b1af4588-a51f-4883-9a78-ca5e3eab0f48	2019-07-07 08:11:30.773368
172	7	Template	\N	\N	\N	\N	\N	destroy	---\nname: Survey Invitation Link\nsender_name: \nsubject: "{Employee_Name} here is your domain to log in"\ncontent: "{Admin_Banner}\\n\\nHi {Employee_Name}, \\n\\nPlease share your direct and unbiased\n  feedback with us/me using the link below.  Be assured that your responses are strictly\n  confidential and governed by our Trust Policy.\\n\\n[Share my Opinion] (button)\\n\\nYour\n  continuous feedback will help us make the right changes at {Company_Name} and make\n  it a better place to work and grow.\\n\\n\\nNot sure what this new feedback platform\n  is?\\nEngagePulse is an Employee Experience platform - one that allows you to participate\n  in experience surveys, give anonymous feedback and more. Employees interact with\n  Cara, a digital HR assistant, who collects all individual experiences & opinions\n  for {company}'s senior leadership. Whatever you share with Cara, rest assured that\n  she'll treat it all as confidential & privileged information and will never share\n  anything publicly or to your immediate peers & supervisors.\\n\\nIf you need help\n  with anything related to using the platform, please don't hesitate to contact our\n  support team \\U0001F481 at support@engagepulse.com\\n\\nCheers,\\n{Leader_Name}\\n"\ntemplate_type: email\n	2	\N	\N	653a9336-6c7b-4f26-ad88-8774cdcdaa95	2019-07-07 10:06:30.123351
173	13	Template	\N	\N	\N	\N	\N	create	---\nname: Survey Invitation Link\nsender_name: \nsubject: "{Sender_Name} invites you to share your opinion"\ncontent: "\\n{Admin_Banner}\\n\\nHi {employee_name}, \\n\\nPlease share your direct and\n  unbiased feedback with us/me using the link below.  Be assured that your responses\n  are strictly confidential and governed by our Trust Policy.\\n\\n[share_my_opinion]\\n\\nYour\n  continuous feedback will help us make the right changes at {Company_Name} and make\n  it a better place to work and grow.\\n\\n\\nNot sure what this new feedback platform\n  is?\\nEngagePulse is an Employee Experience platform - one that allows you to participate\n  in experience surveys, give anonymous feedback and more. Employees interact with\n  Cara, a digital HR assistant, who collects all individual experiences & opinions\n  for {company_name}'s senior leadership. Whatever you share with Cara, rest assured\n  that she'll treat it all as confidential & privileged information and will never\n  share anything publicly or to your immediate peers & supervisors.\\n\\nIf you need\n  help with anything related to using the platform, please don't hesitate to contact\n  our support team \\U0001F481 at support@engagepulse.com\\n\\nCheers,\\n{Leader_Name}\\n"\ntemplate_type: email\n	1	\N	\N	88ee7927-a9a6-4362-aeed-b6eab10f47e4	2019-07-07 10:06:37.679129
174	11	Template	\N	\N	\N	\N	\N	destroy	---\nname: Incomplete Survey Reminder 1\nsender_name: \nsubject: "{Sender_Name} still waiting to hear from you"\ncontent: "{Admin_Banner}\\n\\nLet's build our culture together\\n\\n{Employee_Name},\\n\\nWe\n  are still waiting for your responses. It will just take a few minutes of your time\n  but you can make a big difference for yourself and others working at {Company_Name}\n  by providing your true and fearless feedback. \\n\\n[Share my Opinion] (button)\\n\\nJust\n  to remind you we strictly adhere by our TRUST POLICY which ensures that everything\n  you share in your feedback are kept completely confidential so you can share your\n  feedback without any hesitation. If you are facing any issues submitting your feedback\n  or you think this can be done in a better way please feel free to write to  support@engagepulse.com\n  in confidence.\\n\\n\\nWhy Engagepulse\\nEngagePulse is an Employee Experience platform\n  - one that allows you to participate in experience surveys, give anonymous feedback\n  and more. Employees interact with Cara, a digital HR assistant, who collects all\n  individual experiences & opinions for {company}'s senior leadership. Whatever you\n  share with Cara, rest assured that she'll treat it all as confidential & privileged\n  information and will never share anything publicly or to your immediate peers &\n  supervisors. \\n\\nIf you need help with anything related to using the platform, please\n  don't hesitate to contact our support team \\U0001F481 at support@engagepulse.com\\n\\n\\n\\nCheers,\\nCara\n  \\U0001F47C\\n"\ntemplate_type: email\n	2	\N	\N	3ed6cc78-e327-47ae-aa18-3c001ec0cc4e	2019-07-07 10:30:51.328509
175	14	Template	\N	\N	\N	\N	\N	create	---\nname: Incomplete Survey Reminder 1\nsender_name: \nsubject: "{Sender_Name} still waiting to hear from you"\ncontent: "{Admin_Banner}\\n\\nLet's build our culture together\\n\\n{Employee_Name},\\n\\nWe\n  are still waiting for your responses. It will just take a few minutes of your time\n  but you can make a big difference for yourself and others working at {Company_Name}\n  by providing your true and fearless feedback. \\n\\n[Share_My_Opinion]\\n\\nJust to\n  remind you we strictly adhere by our TRUST POLICY which ensures that everything\n  you share in your feedback are kept completely confidential so you can share your\n  feedback without any hesitation. If you are facing any issues submitting your feedback\n  or you think this can be done in a better way please feel free to write to  support@engagepulse.com\n  in confidence.\\n\\n\\nWhy Engagepulse\\nEngagePulse is an Employee Experience platform\n  - one that allows you to participate in experience surveys, give anonymous feedback\n  and more. Employees interact with Cara, a digital HR assistant, who collects all\n  individual experiences & opinions for {company}'s senior leadership. Whatever you\n  share with Cara, rest assured that she'll treat it all as confidential & privileged\n  information and will never share anything publicly or to your immediate peers &\n  supervisors. \\n\\nIf you need help with anything related to using the platform, please\n  don't hesitate to contact our support team \\U0001F481 at support@engagepulse.com\\n\\n\\n\\nCheers,\\nCara\n  \\U0001F47C\\n"\ntemplate_type: email\n	1	\N	\N	9d744dab-4773-4c98-a5c5-d5b3b3b88a32	2019-07-07 10:30:57.922795
176	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 08:09:24.331337000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 12:32:39.051638042 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 20:18:48.907967000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 08:09:24.331337000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 171.61.167.127\n- 171.48.42.174\nsign_in_count:\n- 106\n- 107\n	50	\N	171.48.42.174	e1628ba9-8e5d-4d04-8e81-bdb55f238804	2019-07-07 12:32:39.080148
177	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncountry_code:\n- \n- in\n	2	\N	139.167.185.120	8fee9e9f-cf91-4592-ae3a-74d1f741ae3d	2019-07-07 12:53:48.728978
178	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 12:32:39.051638000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 13:45:16.815491448 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 08:09:24.331337000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 12:32:39.051638000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 107\n- 108\n	51	\N	171.48.42.174	63737a0a-d391-466a-8940-887171e9632a	2019-07-07 13:45:16.819438
179	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 13:45:16.815491000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 13:51:35.938737097 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 12:32:39.051638000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 13:45:16.815491000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.48.42.174\n- 117.212.116.110\nsign_in_count:\n- 108\n- 109\n	52	\N	117.212.116.110	581cb1b9-195f-4419-a7ae-26d705e7f5f8	2019-07-07 13:51:35.942979
180	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 13:51:35.938737000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 14:42:27.396719269 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 13:45:16.815491000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 13:51:35.938737000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 117.212.116.110\n- 171.48.42.174\nlast_sign_in_ip:\n- 171.48.42.174\n- 117.212.116.110\nsign_in_count:\n- 109\n- 110\n	53	\N	171.48.42.174	a0153ea7-3508-4523-ab9d-4972c3c621f3	2019-07-07 14:42:27.401072
181	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 14:42:27.396719000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 15:39:36.224680756 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 13:51:35.938737000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 14:42:27.396719000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.48.42.174\n- 106.215.28.233\nlast_sign_in_ip:\n- 117.212.116.110\n- 171.48.42.174\nsign_in_count:\n- 110\n- 111\n	54	\N	106.215.28.233	071446fc-374a-4f4d-97cb-443b1ad5594d	2019-07-07 15:39:36.258818
182	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 15:39:36.224680000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-07 15:48:43.833776975 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 14:42:27.396719000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 15:39:36.224680000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 106.215.28.233\n- 120.29.117.205\nlast_sign_in_ip:\n- 171.48.42.174\n- 106.215.28.233\nsign_in_count:\n- 111\n- 112\n	55	\N	120.29.117.205	0d0a5e86-d813-477d-bbe6-01e5cdf60c90	2019-07-07 15:48:43.837963
183	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncountry_code:\n- in\n- us\nlocale:\n- en\n- sp\n	3	\N	106.215.2.39	c7370cff-8135-42ca-bd42-591e60c9b4d9	2019-07-07 16:40:02.828762
184	13	Template	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncontent:\n- "\\n{Admin_Banner}\\n\\nHi {employee_name}, \\n\\nPlease share your direct and unbiased\n  feedback with us/me using the link below.  Be assured that your responses are strictly\n  confidential and governed by our Trust Policy.\\n\\n[share_my_opinion]\\n\\nYour continuous\n  feedback will help us make the right changes at {Company_Name} and make it a better\n  place to work and grow.\\n\\n\\nNot sure what this new feedback platform is?\\nEngagePulse\n  is an Employee Experience platform - one that allows you to participate in experience\n  surveys, give anonymous feedback and more. Employees interact with Cara, a digital\n  HR assistant, who collects all individual experiences & opinions for {company_name}'s\n  senior leadership. Whatever you share with Cara, rest assured that she'll treat\n  it all as confidential & privileged information and will never share anything publicly\n  or to your immediate peers & supervisors.\\n\\nIf you need help with anything related\n  to using the platform, please don't hesitate to contact our support team \\U0001F481\n  at support@engagepulse.com\\n\\nCheers,\\n{Leader_Name}\\n"\n- "\\n{Admin_Banner}\\n\\nHi {employee_name}, \\n\\nPlease share your direct and unbiased\n  feedback with us/me using the link below.  Be assured that your responses are strictly\n  confidential and governed by our Trust Policy.\\n\\n[share_my_opinion]\\n\\nYour continuous\n  feedback will help us make  right changes at {Company_Name} and make it a better\n  place to work and grow.\\n\\n\\nNot sure what this new feedback platform is?\\nEngagePulse\n  is an Employee Experience platform - one that allows you to participate in experience\n  surveys, give anonymous feedback and more. Employees interact with Cara, a digital\n  HR assistant, who collects all individual experiences & opinions for {company_name}'s\n  senior leadership. Whatever you share with Cara, rest assured that she'll treat\n  it all as confidential & privileged information and will never share anything publicly\n  or to your immediate peers & supervisors.\\n\\nIf you need help with anything related\n  to using the platform, please don't hesitate to contact our support team \\U0001F481\n  at support@engagepulse.com\\n\\nCheers,\\n{Leader_Name}\\n"\n	2	\N	106.215.2.39	e6ceaa7d-af24-4971-b603-73d1473314d3	2019-07-07 16:44:53.514603
185	13	Template	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncontent:\n- "\\n{Admin_Banner}\\n\\nHi {employee_name}, \\n\\nPlease share your direct and unbiased\n  feedback with us/me using the link below.  Be assured that your responses are strictly\n  confidential and governed by our Trust Policy.\\n\\n[share_my_opinion]\\n\\nYour continuous\n  feedback will help us make  right changes at {Company_Name} and make it a better\n  place to work and grow.\\n\\n\\nNot sure what this new feedback platform is?\\nEngagePulse\n  is an Employee Experience platform - one that allows you to participate in experience\n  surveys, give anonymous feedback and more. Employees interact with Cara, a digital\n  HR assistant, who collects all individual experiences & opinions for {company_name}'s\n  senior leadership. Whatever you share with Cara, rest assured that she'll treat\n  it all as confidential & privileged information and will never share anything publicly\n  or to your immediate peers & supervisors.\\n\\nIf you need help with anything related\n  to using the platform, please don't hesitate to contact our support team \\U0001F481\n  at support@engagepulse.com\\n\\nCheers,\\n{Leader_Name}\\n"\n- "\\n{Admin_Banner}\\n\\nHi {employee_name}, \\n\\nPlease share your direct and unbiased\n  feedback with us/me using the link below.  Be assured that your responses are strictly\n  confidential and governed by our Trust Policy.\\n\\n[share_my_opinion]\\n\\nYour continuous\n  feedback will help us make the right changes at {Company_Name} and make it a better\n  place to work and grow.\\n\\n\\nNot sure what this new feedback platform is?\\nEngagePulse\n  is an Employee Experience platform - one that allows you to participate in experience\n  surveys, give anonymous feedback and more. Employees interact with Cara, a digital\n  HR assistant, who collects all individual experiences & opinions for {company_name}'s\n  senior leadership. Whatever you share with Cara, rest assured that she'll treat\n  it all as confidential & privileged information and will never share anything publicly\n  or to your immediate peers & supervisors.\\n\\nIf you need help with anything related\n  to using the platform, please don't hesitate to contact our support team \\U0001F481\n  at support@engagepulse.com\\n\\nCheers,\\n{Leader_Name}\\n"\n	3	\N	106.215.2.39	edeea9d5-5b1d-4c25-a88e-602130ac3294	2019-07-07 16:45:14.400978
186	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-07 15:48:43.833776000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-08 15:32:35.136210798 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 15:39:36.224680000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-07 15:48:43.833776000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 120.29.117.205\n- 47.31.66.235\nlast_sign_in_ip:\n- 106.215.28.233\n- 120.29.117.205\nsign_in_count:\n- 112\n- 113\n	56	\N	47.31.66.235	4c639ac9-0a42-4845-9420-f187011e2369	2019-07-08 15:32:35.144325
187	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-08 15:32:35.136210000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-08 15:34:19.982123962 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-07 15:48:43.833776000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-08 15:32:35.136210000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 120.29.117.205\n- 47.31.66.235\nsign_in_count:\n- 113\n- 114\n	57	\N	47.31.66.235	72ace7ff-b0fa-4b3f-b6d8-6b2b9a2f6322	2019-07-08 15:34:19.986125
255	35	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$vRhy2sDzBcCpQmREXNrecOTD/Xr.H3P36.SycuJcOEk9oxvyUBKGa"\n- "$2a$11$CncpkMvsp05g7we.ZQL7ZOB.wtVQp12eWF6oR2rnZcvM6YJ5c9e4i"\nconfirmation_token:\n- 25acb6e4f3c3cfa01b4b1c8a854a9537\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 16:37:47.264878534 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	2	\N	60.243.144.123	a6aa458d-719a-43f5-b68d-1805c848c9ed	2019-07-15 16:37:47.573752
188	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-08 15:34:19.982123000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-08 15:45:14.998021515 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-08 15:32:35.136210000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-08 15:34:19.982123000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.66.235\n- 139.167.149.103\nsign_in_count:\n- 114\n- 115\n	58	\N	139.167.149.103	d4ba9bda-7067-4c08-b72b-ce14c4f6ef91	2019-07-08 15:45:15.002195
189	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-08 15:45:14.998021000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-08 15:53:00.607216107 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-08 15:34:19.982123000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-08 15:45:14.998021000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 139.167.149.103\n- 106.215.2.39\nlast_sign_in_ip:\n- 47.31.66.235\n- 139.167.149.103\nsign_in_count:\n- 115\n- 116\n	59	\N	106.215.2.39	40e2756b-d88a-4dc4-8b7f-3b5cb00d1a35	2019-07-08 15:53:00.611333
190	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-08 15:53:00.607216000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:26:49.824956103 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-08 15:45:14.998021000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-08 15:53:00.607216000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 106.215.2.39\n- 117.220.185.219\nlast_sign_in_ip:\n- 139.167.149.103\n- 106.215.2.39\nsign_in_count:\n- 116\n- 117\n	60	\N	117.220.185.219	e3be23a9-114e-4efb-851d-f6e631fdc4e0	2019-07-09 11:26:49.85807
191	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:26:49.824956000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:30:02.974561163 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-08 15:53:00.607216000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:26:49.824956000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 106.215.2.39\n- 117.220.185.219\nsign_in_count:\n- 117\n- 118\n	61	\N	117.220.185.219	a762978e-4a79-4c8f-a4b4-3b00653a7721	2019-07-09 11:30:02.978684
192	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:30:02.974561000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:31:39.486080303 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:26:49.824956000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:30:02.974561000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 118\n- 119\n	62	\N	117.220.185.219	25f8595b-03c2-470a-92c2-b51cd14372a8	2019-07-09 11:31:39.489996
193	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:31:39.486080000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:32:38.673128802 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:30:02.974561000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:31:39.486080000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 119\n- 120\n	63	\N	117.220.185.219	6d390a12-c3d4-4cfb-9a0b-498c57f63103	2019-07-09 11:32:38.677118
194	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:32:38.673128000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:34:21.147896679 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:31:39.486080000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:32:38.673128000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 120\n- 121\n	64	\N	117.220.185.219	8ea191a4-6dea-4ef6-881c-368651ab45a3	2019-07-09 11:34:21.151815
195	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:34:21.147896000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:36:08.421809460 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:32:38.673128000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:34:21.147896000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 121\n- 122\n	65	\N	117.220.185.219	453b0248-46a6-46b3-b383-56f8f925c23c	2019-07-09 11:36:08.42584
196	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:36:08.421809000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:36:52.734016498 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:34:21.147896000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:36:08.421809000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 122\n- 123\n	66	\N	117.220.185.219	d377222e-1ece-46b0-8116-6cbf70bd5f5b	2019-07-09 11:36:52.737867
197	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	67	\N	117.220.185.219	7424c9c8-949b-46bf-8d53-0687b44aff27	2019-07-09 11:50:16.674367
198	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:36:52.734016000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 11:50:22.258782236 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:36:08.421809000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:36:52.734016000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 123\n- 124\n	68	\N	117.220.185.219	8e76f7e1-c026-4661-b47d-d2431d299822	2019-07-09 11:50:22.262662
200	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 11:57:13.786250000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 12:02:11.041897956 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:50:22.258782000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 11:57:13.786250000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 125\n- 126\n	70	\N	117.220.185.219	054baa70-b376-4074-9a6b-8efb1df7b580	2019-07-09 12:02:11.045966
201	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 12:02:11.041897000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 12:07:53.017601516 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 11:57:13.786250000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 12:02:11.041897000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 126\n- 127\n	71	\N	117.220.185.219	d7e5a253-c143-40d8-b66b-8aae42f9031c	2019-07-09 12:07:53.021566
202	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 12:07:53.017601000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-09 17:20:31.554684768 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 12:02:11.041897000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 12:07:53.017601000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 117.220.185.219\n- 106.215.37.51\nsign_in_count:\n- 127\n- 128\n	72	\N	106.215.37.51	b8298eb6-e8f3-493a-8bb7-95e13022ee4c	2019-07-09 17:20:31.558848
203	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-09 17:20:31.554684000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-10 06:30:46.407404474 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 12:07:53.017601000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-09 17:20:31.554684000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 106.215.37.51\n- 117.220.187.93\nlast_sign_in_ip:\n- 117.220.185.219\n- 106.215.37.51\nsign_in_count:\n- 128\n- 129\n	73	\N	117.220.187.93	98fcb9d2-fba1-4c33-a92c-f0b192fd2f28	2019-07-10 06:30:46.414778
204	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-10 06:30:46.407404000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-10 07:37:08.480995368 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-09 17:20:31.554684000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-10 06:30:46.407404000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 117.220.187.93\n- 47.31.154.134\nlast_sign_in_ip:\n- 106.215.37.51\n- 117.220.187.93\nsign_in_count:\n- 129\n- 130\n	74	\N	47.31.154.134	806c04a9-ca84-4b12-b876-b519fd5fc5ed	2019-07-10 07:37:08.48527
205	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-10 07:37:08.480995000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-10 09:19:09.564485595 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-10 06:30:46.407404000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-10 07:37:08.480995000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.154.134\n- 139.167.135.228\nlast_sign_in_ip:\n- 117.220.187.93\n- 47.31.154.134\nsign_in_count:\n- 130\n- 131\n	75	\N	139.167.135.228	7042a583-822d-416e-9e1b-e80261efc881	2019-07-10 09:19:09.568742
206	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-10 09:19:09.564485000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-10 09:21:49.146991555 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-10 07:37:08.480995000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-10 09:19:09.564485000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 47.31.154.134\n- 139.167.135.228\nsign_in_count:\n- 131\n- 132\n	76	\N	139.167.135.228	5dc84a9a-c38a-4a3b-b835-4926e4d4428b	2019-07-10 09:21:49.151063
207	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- sp\n- en\n	4	\N	139.167.135.228	9de45dc7-b6ae-486a-8723-f8e3e4607be6	2019-07-10 09:43:20.985013
208	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- en\n- es\n	5	\N	139.167.135.228	958dd3ed-b6ca-460d-a1bb-e2efa88e29c4	2019-07-10 09:43:29.370197
209	32	User	\N	\N	2	User	\N	create	---\nemail: newmail4raj@gmail.com\nencrypted_password: "$2a$11$UQSvR5gD8yNU6ww6mXy9Ue8FUQCs1uVANGTupaC.ePBTrX7r0kNha"\nphone: '09711028993'\notp: ''\nname: Raj Baruah\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 344b4506c6d5ac925785994854b1508e\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	43.226.5.26	29af6021-7e76-4b9d-bfd7-2e93ca40fd23	2019-07-10 12:21:03.623387
210	27	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 32\nrole_id: 3\n	1	\N	43.226.5.26	29af6021-7e76-4b9d-bfd7-2e93ca40fd23	2019-07-10 12:21:03.655217
211	32	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	43.226.5.26	14e3ca53-874b-4ec1-b94f-512e7c4003c7	2019-07-10 12:21:30.148627
212	32	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$UQSvR5gD8yNU6ww6mXy9Ue8FUQCs1uVANGTupaC.ePBTrX7r0kNha"\n- "$2a$11$8PdOdIuBKt1i/oMIm3bsB.VicuEa4Qivg29AnIjm2MhpvwK2Yqx3W"\nconfirmation_token:\n- 344b4506c6d5ac925785994854b1508e\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-10 12:31:58.352345491 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	3	\N	43.226.5.26	3568e3eb-88e8-4f88-ad8f-c192f7f06f95	2019-07-10 12:31:58.659833
213	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-10 09:21:49.146991000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-10 17:15:07.693200113 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-10 09:19:09.564485000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-10 09:21:49.146991000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 139.167.135.228\n- 106.215.37.51\nsign_in_count:\n- 132\n- 133\n	77	\N	106.215.37.51	5f1d2d56-6a61-41e4-942a-5f526cf06947	2019-07-10 17:15:07.697282
214	28	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\notp:\n- '78497'\n- '80511'\n	8	\N	106.215.37.51	b66f98c3-a0d8-4f89-8f8c-7b1a75b0940e	2019-07-10 21:18:55.36354
215	28	User	\N	\N	28	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:57:38.071231000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-10 21:19:25.274612143 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 19:36:19.284607000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-06 19:57:38.071231000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.61.167.127\n- 106.215.37.51\nlast_sign_in_ip:\n- 103.212.144.87\n- 171.61.167.127\nsign_in_count:\n- 4\n- 5\n	9	\N	106.215.37.51	7c7c56e9-c44f-4934-afdf-2639ec7d7d36	2019-07-10 21:19:25.278229
216	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-10 17:15:07.693200000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 08:33:04.543274431 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-10 09:21:49.146991000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-10 17:15:07.693200000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 139.167.135.228\n- 106.215.37.51\nsign_in_count:\n- 133\n- 134\n	78	\N	106.215.37.51	8fc2ab58-e0c7-4cd8-957d-51ce3df00ba6	2019-07-11 08:33:04.553021
217	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- es\n- en\n	6	\N	139.167.187.60	2b6a2749-fcea-4f1b-b788-a99aba5bb11e	2019-07-11 09:09:43.143047
218	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- en\n- es\n	7	\N	139.167.187.60	9faff837-28c9-4541-b570-496e8e89821f	2019-07-11 09:20:19.245867
219	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- es\n- en\n	8	\N	139.167.187.60	830eb86b-53c0-4989-96c2-11069083a52f	2019-07-11 09:20:28.622474
220	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- en\n- es\n	9	\N	139.167.187.60	a67acda8-2da8-4230-a656-b9874632120c	2019-07-11 09:22:42.955345
221	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- es\n- en\n	10	\N	139.167.187.60	51fa9c42-be31-4d18-b933-d311727b2c57	2019-07-11 09:22:51.066902
222	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- en\n- es\n	11	\N	139.167.187.60	e5428d40-b149-4294-9c09-518ef452fb31	2019-07-11 09:24:23.916269
223	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- es\n- en\n	12	\N	139.167.187.60	b0661f1f-3a96-415c-aec2-1a8ceda71309	2019-07-11 09:24:38.478621
224	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- en\n- es\n	13	\N	139.167.173.103	a6b94014-a133-4054-a02a-09cffa3ba696	2019-07-11 12:34:34.849398
225	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- es\n- en\n	14	\N	139.167.173.103	9c55e950-95d7-42cb-9070-5177fb044576	2019-07-11 12:34:47.783152
226	28	User	\N	\N	28	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-10 21:19:25.274612000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 15:17:38.956974724 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 19:57:38.071231000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-10 21:19:25.274612000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 171.61.167.127\n- 106.215.37.51\nsign_in_count:\n- 5\n- 6\n	10	\N	106.215.37.51	70905d8f-347c-4312-ad49-bf63ad91d263	2019-07-11 15:17:38.996724
227	28	User	\N	\N	28	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	11	\N	106.215.37.51	57c837e3-cee6-4a93-bad1-f014b919fae7	2019-07-11 15:17:55.990343
228	1	Company	\N	\N	28	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- en\n- es\n	15	\N	106.215.37.51	8229e105-d9fd-45e0-baa4-7ab4bb7de683	2019-07-11 15:18:21.89414
229	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- es\n- en\n	16	\N	139.167.173.103	9d977595-06cb-4cf4-8290-d1045d24e2df	2019-07-11 15:28:38.843959
230	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nlocale:\n- en\n- es\n	17	\N	139.167.173.103	18a181a8-792d-4167-b685-2af8ad94d7ab	2019-07-11 15:28:48.958694
231	31	User	\N	\N	2	User	\N	destroy	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$3aLS3Q.0x3NwNt/L8e4UGuXvSOfVPg5.4LJ7wSy/Jw2uypqAP9Ffq"\nphone: '9997888888'\notp: ''\nname: r\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 1\ncurrent_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-06 19:12:36.104344000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-06 19:12:36.104344000 Z\n  zone: *2\n  time: *3\ncurrent_sign_in_ip: 117.212.115.197\nlast_sign_in_ip: 117.212.115.197\nconfirmation_token: \nconfirmed_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-06 18:53:36.814237000 Z\n  zone: *2\n  time: *4\nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	5	\N	139.167.173.103	86649518-09e6-4122-a09e-ae872214fa82	2019-07-11 15:38:53.86139
256	35	User	\N	\N	35	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 16:38:09.517595858 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: *1\n  zone: *2\n  time: *1\ncurrent_sign_in_ip:\n- \n- 60.243.144.123\nlast_sign_in_ip:\n- \n- 60.243.144.123\nsign_in_count:\n- 0\n- 1\n	3	\N	60.243.144.123	77ad7d0c-a872-4c36-a3dd-3543123407f1	2019-07-15 16:38:09.521378
232	33	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$8Ud9aLsLjoRbdidqo80EjuQHVUDMeMKH3vkAkCS3CwTt7N6F2Uupi"\nphone: '9999888877'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 2442b0e4abab427573f311e0e08eb365\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: d\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	139.167.173.103	86649518-09e6-4122-a09e-ae872214fa82	2019-07-11 15:38:53.889529
233	28	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 33\nrole_id: 3\n	1	\N	139.167.173.103	86649518-09e6-4122-a09e-ae872214fa82	2019-07-11 15:38:53.916182
234	33	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$8Ud9aLsLjoRbdidqo80EjuQHVUDMeMKH3vkAkCS3CwTt7N6F2Uupi"\n- "$2a$11$qFjadLduW33B2xnPWJ5CFee4BsUMIXPPvKPC37.XNXxKg/nfjc5BC"\nconfirmation_token:\n- 2442b0e4abab427573f311e0e08eb365\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 15:39:42.194921294 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	2	\N	139.167.173.103	c45a2520-82d2-4e66-86f2-be3a5e99ce49	2019-07-11 15:39:42.547891
235	33	User	\N	\N	33	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 15:40:05.333789295 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: *1\n  zone: *2\n  time: *1\ncurrent_sign_in_ip:\n- \n- 139.167.173.103\nlast_sign_in_ip:\n- \n- 139.167.173.103\nsign_in_count:\n- 0\n- 1\n	3	\N	139.167.173.103	f993e735-6b19-4aa1-a43f-ab33a2c810d4	2019-07-11 15:40:05.337828
236	33	User	\N	\N	33	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	4	\N	139.167.173.103	b9ee951f-bcab-4b14-b82a-cb55e9e381f5	2019-07-11 15:40:10.667447
237	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 08:33:04.543274000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 15:52:05.353339782 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-10 17:15:07.693200000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-11 08:33:04.543274000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 106.215.37.51\n- 139.167.173.103\nsign_in_count:\n- 134\n- 135\n	79	\N	139.167.173.103	502a560e-c2a5-4b17-b8f6-c99bcf6a79dc	2019-07-11 15:52:05.357306
238	33	User	\N	\N	33	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 15:40:05.333789000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 15:52:34.357800227 Z\n  zone: *2\n  time: *3\nsign_in_count:\n- 1\n- 2\n	5	\N	139.167.173.103	7ba84b32-9ec0-4224-bc93-41fd32590e06	2019-07-11 15:52:34.361426
239	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 15:52:05.353339000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 15:58:10.108155432 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-11 08:33:04.543274000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-11 15:52:05.353339000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 106.215.37.51\n- 139.167.173.103\nsign_in_count:\n- 135\n- 136\n	80	\N	139.167.173.103	88df676c-699e-4694-9c0b-fe900bb4c451	2019-07-11 15:58:10.111946
240	33	User	\N	\N	33	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 15:52:34.357800000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 15:58:21.933748594 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-11 15:40:05.333789000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-11 15:52:34.357800000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 2\n- 3\n	6	\N	139.167.173.103	d31b1ab8-ae39-4746-bbd9-2c9ccd801baf	2019-07-11 15:58:21.937624
241	33	User	\N	\N	33	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 15:58:21.933748000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 16:08:18.613100927 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-11 15:52:34.357800000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-11 15:58:21.933748000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 3\n- 4\n	7	\N	139.167.173.103	16b65958-d881-4b55-adf0-b68f3d069f83	2019-07-11 16:08:18.617072
242	33	User	\N	\N	33	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 16:08:18.613100000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 17:03:25.055131862 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-11 15:58:21.933748000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-11 16:08:18.613100000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 4\n- 5\n	8	\N	139.167.173.103	d4edf45b-e42e-4d38-864e-bc8da79da87e	2019-07-11 17:03:25.059124
243	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 15:58:10.108155000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-12 05:46:20.845101623 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-11 15:52:05.353339000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-11 15:58:10.108155000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 139.167.173.103\n- 47.31.160.165\nsign_in_count:\n- 136\n- 137\n	81	\N	47.31.160.165	82025efc-0d05-45ec-9ced-7c559e7af24e	2019-07-12 05:46:20.85669
257	35	User	\N	\N	35	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	4	\N	60.243.144.123	5ad84948-93f7-44e4-b5df-38f75a4dc089	2019-07-15 16:38:40.68063
244	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-12 05:46:20.845101000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-13 04:06:55.781296913 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-11 15:58:10.108155000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-12 05:46:20.845101000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.160.165\n- 117.220.188.7\nlast_sign_in_ip:\n- 139.167.173.103\n- 47.31.160.165\nsign_in_count:\n- 137\n- 138\n	82	\N	117.220.188.7	3b695be7-6bd1-445d-8824-d41e2caa368a	2019-07-13 04:06:55.785271
245	1	Company	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nleader:\n- 'Sahil '\n- Sahil\n	18	\N	117.220.188.7	8e2c4c1d-9ad8-4bcf-a4d5-66a5e0f1f868	2019-07-13 05:56:32.350252
246	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-13 04:06:55.781296000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-15 07:56:14.608370767 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-12 05:46:20.845101000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-13 04:06:55.781296000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 117.220.188.7\n- 103.212.144.67\nlast_sign_in_ip:\n- 47.31.160.165\n- 117.220.188.7\nsign_in_count:\n- 138\n- 139\n	83	\N	103.212.144.67	c7d81c9f-cf80-4f58-a465-158127d49f2f	2019-07-15 07:56:14.6357
247	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 07:56:14.608370000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-15 08:00:02.129110307 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-13 04:06:55.781296000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-15 07:56:14.608370000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 117.220.188.7\n- 103.212.144.67\nsign_in_count:\n- 139\n- 140\n	84	\N	103.212.144.67	42f3cef7-b05a-400a-9c78-8d4208ca2ee5	2019-07-15 08:00:02.133471
248	34	User	\N	\N	2	User	\N	create	---\nemail: raj.b@engagepulse.com\nencrypted_password: "$2a$11$fTQ0P9nJ9PjlfUNPnrfl8OjxPw6i9YjloQ0zry./OQFAN/OTVmnu."\nphone: '9650349306'\notp: ''\nname: Raj Test\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: c52df73d383ef7812d4b2362e7ffc8c7\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Sales\nlocation: ''\nsupervisor: test\nhead_of_department: ''\ndate_of_joining: 11/1/2018\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	120.29.117.205	75263f8b-e516-44c4-a13c-85946c4d6216	2019-07-15 15:56:40.833791
249	29	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 34\nrole_id: 3\n	1	\N	120.29.117.205	75263f8b-e516-44c4-a13c-85946c4d6216	2019-07-15 15:56:40.872353
253	35	User	\N	\N	2	User	\N	create	---\nemail: ashutosh@engagepulse.com\nencrypted_password: "$2a$11$vRhy2sDzBcCpQmREXNrecOTD/Xr.H3P36.SycuJcOEk9oxvyUBKGa"\nphone: '999071459'\notp: ''\nname: Ashutosh\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 25acb6e4f3c3cfa01b4b1c8a854a9537\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: 11/1/2017\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	120.29.117.205	a4884dd5-1ec8-4db2-bca8-6761754ac3e4	2019-07-15 16:36:40.512799
254	30	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 35\nrole_id: 3\n	1	\N	120.29.117.205	a4884dd5-1ec8-4db2-bca8-6761754ac3e4	2019-07-15 16:36:40.524736
258	34	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$fTQ0P9nJ9PjlfUNPnrfl8OjxPw6i9YjloQ0zry./OQFAN/OTVmnu."\n- "$2a$11$eJMp08xfYB2ENlqhYFzgruDUMPi1CY9.LfPf7eQSMtoFaCDRtA7yS"\nconfirmation_token:\n- c52df73d383ef7812d4b2362e7ffc8c7\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 16:41:16.914553192 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	2	\N	122.55.19.100	0405e8b5-005b-4cc3-8f3c-71f286bf0e3f	2019-07-15 16:41:17.222313
259	34	User	\N	\N	34	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 16:43:02.249276657 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: *1\n  zone: *2\n  time: *1\ncurrent_sign_in_ip:\n- \n- 122.55.19.100\nlast_sign_in_ip:\n- \n- 122.55.19.100\nsign_in_count:\n- 0\n- 1\n	3	\N	122.55.19.100	f3205d09-6adc-4fa7-88bc-88262ed30123	2019-07-15 16:43:02.252933
260	34	User	\N	\N	34	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	4	\N	122.55.19.100	b208166c-a17e-456b-9ec7-4b7573474ed2	2019-07-15 16:47:16.972569
261	34	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	5	\N	120.29.117.205	71e0bc9e-f3a6-4751-bc47-bd4681599943	2019-07-15 16:49:18.947565
262	34	User	\N	\N	2	User	\N	destroy	---\nemail: raj.b@engagepulse.com\nencrypted_password: "$2a$11$eJMp08xfYB2ENlqhYFzgruDUMPi1CY9.LfPf7eQSMtoFaCDRtA7yS"\nphone: '9650349306'\notp: ''\nname: Raj Test\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 1\ncurrent_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 16:43:02.249276000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-15 16:43:02.249276000 Z\n  zone: *2\n  time: *3\ncurrent_sign_in_ip: 122.55.19.100\nlast_sign_in_ip: 122.55.19.100\nconfirmation_token: \nconfirmed_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-15 16:41:16.914553000 Z\n  zone: *2\n  time: *4\nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Sales\nlocation: ''\nsupervisor: test\nhead_of_department: ''\ndate_of_joining: 11/1/2018\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: true\n	6	\N	120.29.117.205	5740890b-d0d4-4f74-af2f-67c097193056	2019-07-15 16:50:00.015397
263	36	User	\N	\N	2	User	\N	create	---\nemail: raj.b@engagepulse.com\nencrypted_password: "$2a$11$Ttepy69Lcs0gAdKIw.17V.8z8JPjWKaE2YYlAoMl6k1cc5AQrD6Ti"\nphone: '9650349306'\notp: ''\nname: "Raj Test\\t\\t\\t"\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 5741dabd7bc1b828bac19f787e841816\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: 06/15/2019\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	120.29.117.205	5740890b-d0d4-4f74-af2f-67c097193056	2019-07-15 16:50:00.028038
264	31	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 36\nrole_id: 3\n	1	\N	120.29.117.205	5740890b-d0d4-4f74-af2f-67c097193056	2019-07-15 16:50:00.04059
265	35	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	5	\N	120.29.117.205	72162292-22e8-4ad5-b894-f75068788a93	2019-07-15 16:54:31.420014
266	35	User	\N	\N	2	User	\N	destroy	---\nemail: ashutosh@engagepulse.com\nencrypted_password: "$2a$11$CncpkMvsp05g7we.ZQL7ZOB.wtVQp12eWF6oR2rnZcvM6YJ5c9e4i"\nphone: '999071459'\notp: ''\nname: Ashutosh\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 1\ncurrent_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 16:38:09.517595000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-15 16:38:09.517595000 Z\n  zone: *2\n  time: *3\ncurrent_sign_in_ip: 60.243.144.123\nlast_sign_in_ip: 60.243.144.123\nconfirmation_token: \nconfirmed_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-15 16:37:47.264878000 Z\n  zone: *2\n  time: *4\nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: 11/1/2017\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: true\n	6	\N	120.29.117.205	71ba7763-a789-4468-8452-a80b39052187	2019-07-15 16:55:30.314998
267	37	User	\N	\N	2	User	\N	create	---\nemail: ashutosh@engagepulse.com\nencrypted_password: "$2a$11$sbOmQ90OBb2BQoMUZ9ltkegzO2SJerVFC/lP5sMMsb3W3AK2eeH7y"\nphone: '999071459'\notp: ''\nname: Ashutosh\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: f791023ab1aad07040b09705742625e5\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: 06/15/2019\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	120.29.117.205	71ba7763-a789-4468-8452-a80b39052187	2019-07-15 16:55:30.325165
268	32	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 37\nrole_id: 3\n	1	\N	120.29.117.205	71ba7763-a789-4468-8452-a80b39052187	2019-07-15 16:55:30.336814
269	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 08:00:02.129110000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-15 17:32:57.527532195 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-15 07:56:14.608370000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-15 08:00:02.129110000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 103.212.144.67\n- 121.242.156.1\nsign_in_count:\n- 140\n- 141\n	85	\N	121.242.156.1	ad9317e6-9030-48fa-bba7-cebd242ae910	2019-07-15 17:32:57.531414
270	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-15 17:32:57.527532000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-16 01:56:12.471566380 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-15 08:00:02.129110000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-15 17:32:57.527532000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 121.242.156.1\n- 122.55.19.100\nlast_sign_in_ip:\n- 103.212.144.67\n- 121.242.156.1\nsign_in_count:\n- 141\n- 142\n	86	\N	122.55.19.100	bd6426f8-4bad-4277-a4cd-a0ebf39bcef6	2019-07-16 01:56:12.475763
271	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-16 01:56:12.471566000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-16 10:44:23.748103945 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-15 17:32:57.527532000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-16 01:56:12.471566000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 122.55.19.100\n- 171.76.249.41\nlast_sign_in_ip:\n- 121.242.156.1\n- 122.55.19.100\nsign_in_count:\n- 142\n- 143\n	87	\N	171.76.249.41	e59c06fd-3b3a-40f6-9d6a-8ac90f9b3682	2019-07-16 10:44:23.752362
272	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncountry_code:\n- \n- "+91"\n	88	\N	43.226.5.26	142cf068-7cc2-4d0b-9b11-ab032df0b03f	2019-07-16 10:46:40.531333
273	36	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	43.226.5.26	040c657e-399b-4668-8fac-479d77bc3c48	2019-07-16 10:55:29.611544
274	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-16 10:44:23.748103000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-16 11:10:16.924555753 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-16 01:56:12.471566000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-16 10:44:23.748103000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.76.249.41\n- 43.226.5.26\nlast_sign_in_ip:\n- 122.55.19.100\n- 171.76.249.41\nsign_in_count:\n- 143\n- 144\n	89	\N	43.226.5.26	7e642e6a-ed31-4040-b15b-543b76fc777d	2019-07-16 11:10:16.928968
275	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-16 11:10:16.924555000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-16 17:56:04.349354634 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-16 10:44:23.748103000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-16 11:10:16.924555000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 43.226.5.26\n- 60.243.144.123\nlast_sign_in_ip:\n- 171.76.249.41\n- 43.226.5.26\nsign_in_count:\n- 144\n- 145\n	90	\N	60.243.144.123	4eea307c-2b25-48ed-80c4-5582cade2ca9	2019-07-16 17:56:04.353494
276	33	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	9	\N	60.243.144.123	926f8f71-fd63-404d-9e04-c55d69f70e31	2019-07-16 18:01:57.099871
277	28	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	12	\N	60.243.144.123	3ee541e2-f710-4fc6-95ae-bf8520c3b56d	2019-07-16 18:02:01.256165
278	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	91	\N	60.243.144.123	14591604-5020-4248-9680-90cd3a85fa69	2019-07-16 18:02:08.838471
279	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-16 17:56:04.349354000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-17 12:24:47.749354943 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-16 11:10:16.924555000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-16 17:56:04.349354000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 60.243.144.123\n- 122.55.19.100\nlast_sign_in_ip:\n- 43.226.5.26\n- 60.243.144.123\nsign_in_count:\n- 145\n- 146\n	92	\N	122.55.19.100	d972e788-e2a5-425e-9d57-e4031dd2398a	2019-07-17 12:24:47.761563
280	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-17 12:24:47.749354000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-17 19:32:09.190945072 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-16 17:56:04.349354000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-17 12:24:47.749354000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 122.55.19.100\n- 171.76.245.202\nlast_sign_in_ip:\n- 60.243.144.123\n- 122.55.19.100\nsign_in_count:\n- 146\n- 147\n	93	\N	171.76.245.202	8b237bc9-f95e-414d-909d-bb3d03f95e78	2019-07-17 19:32:09.199446
281	37	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	171.76.245.202	a38805f3-efae-4577-904d-beee34effdcc	2019-07-17 19:35:52.308372
282	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-17 19:32:09.190945000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-18 03:12:11.236332006 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-17 12:24:47.749354000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-17 19:32:09.190945000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 171.76.245.202\n- 47.30.130.152\nlast_sign_in_ip:\n- 122.55.19.100\n- 171.76.245.202\nsign_in_count:\n- 147\n- 148\n	94	\N	47.30.130.152	d99ccea0-51df-4d98-a0ea-a7072064d2ff	2019-07-18 03:12:11.240282
283	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncountry_code:\n- "+91"\n- "+964"\n	95	\N	47.30.130.152	f316c13a-e5fa-4178-b706-96098b3a95bf	2019-07-18 03:16:51.094103
284	33	User	\N	\N	2	User	\N	destroy	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$qFjadLduW33B2xnPWJ5CFee4BsUMIXPPvKPC37.XNXxKg/nfjc5BC"\nphone: '9999888877'\notp: ''\nname: Rajat\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 5\ncurrent_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-11 17:03:25.055131000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-11 16:08:18.613100000 Z\n  zone: *2\n  time: *3\ncurrent_sign_in_ip: 139.167.173.103\nlast_sign_in_ip: 139.167.173.103\nconfirmation_token: \nconfirmed_at: !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-11 15:39:42.194921000 Z\n  zone: *2\n  time: *4\nconfirmation_sent_at: \nemployee_id: ''\ndepartment: d\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: true\n	10	\N	47.30.130.152	5f04f8a8-0179-47a7-a898-2ea48ed27343	2019-07-18 03:37:22.366225
285	38	User	\N	\N	2	User	\N	create	---\nemail: mznrajatjain@gmail.com\nencrypted_password: "$2a$11$l4EgFqvPW7VM8Zx6Cwy0i.wJ1JnmyDZflOHr7FsRa2DtWj8EyXxsK"\nphone: '98974575889'\notp: ''\nname: Abc\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 86a12d020cb787c606489519fa8047df\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	47.30.130.152	5f04f8a8-0179-47a7-a898-2ea48ed27343	2019-07-18 03:37:22.37742
286	33	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 38\nrole_id: 3\n	1	\N	47.30.130.152	5f04f8a8-0179-47a7-a898-2ea48ed27343	2019-07-18 03:37:22.389418
287	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-18 03:12:11.236332000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-19 12:14:59.286599725 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-17 19:32:09.190945000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-18 03:12:11.236332000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.30.130.152\n- 47.31.150.243\nlast_sign_in_ip:\n- 171.76.245.202\n- 47.30.130.152\nsign_in_count:\n- 148\n- 149\n	96	\N	47.31.150.243	4cb0b72f-a83b-49c2-b4c4-076e5351eebf	2019-07-19 12:14:59.327623
288	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-19 12:14:59.286599000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-19 14:14:23.877236167 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-18 03:12:11.236332000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-19 12:14:59.286599000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.150.243\n- 47.31.78.199\nlast_sign_in_ip:\n- 47.30.130.152\n- 47.31.150.243\nsign_in_count:\n- 149\n- 150\n	97	\N	47.31.78.199	064bec5a-0e46-456e-b171-e207df6204b5	2019-07-19 14:14:23.881218
289	39	User	\N	\N	2	User	\N	create	---\nemail: hello@engagepulse.com\nencrypted_password: "$2a$11$FKGEPlfUfYrqS.2MRHjhSOdFuiIfn.mI2EXvMKf2rp9GO00k94nm6"\nphone: '121212121'\notp: ''\nname: Sudeepta\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: e389cec2b541de27ea58bfae9fcc1ba7\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: ''\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	120.29.117.205	0aae05a1-4f19-4be2-a9cc-a72cc461371e	2019-07-21 05:56:37.695276
290	34	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 39\nrole_id: 3\n	1	\N	120.29.117.205	0aae05a1-4f19-4be2-a9cc-a72cc461371e	2019-07-21 05:56:37.740707
291	39	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '1'\n- '0'\n	2	\N	120.29.117.205	74555f03-a9ec-4565-95f0-f9cb6d92b665	2019-07-21 05:57:09.099512
292	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-19 14:14:23.877236000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-21 15:21:36.169078941 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-19 12:14:59.286599000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-19 14:14:23.877236000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.78.199\n- 47.30.255.218\nlast_sign_in_ip:\n- 47.31.150.243\n- 47.31.78.199\nsign_in_count:\n- 150\n- 151\n	98	\N	47.30.255.218	f94c34cd-176a-4496-8e6f-882f4cdc68a3	2019-07-21 15:21:36.173157
293	40	User	\N	\N	2	User	\N	create	---\nemail: sparasar@gmail.com\nencrypted_password: "$2a$11$0uElG0Gla8guEw8uazKBduSOpmiOa5p4LtjjvL7W/ddcnZYBsbIYW"\nphone: '639959572320'\notp: ''\nname: "Ben\\tBraun"\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: f63c8896332ced3ccd820b194ae47c24\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Sales\nlocation: Kuala Lumpur,Malaysia\nsupervisor: Neil Davis\nhead_of_department: Pat Bow\ndate_of_joining: January 2, 2019\nemployment_status: Employed\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	f50c0efb-dca3-44e2-a98f-b05c9a996bef	2019-07-21 19:27:17.270268
294	35	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 40\nrole_id: 3\n	1	\N	106.215.37.51	f50c0efb-dca3-44e2-a98f-b05c9a996bef	2019-07-21 19:27:17.283172
295	41	User	\N	\N	2	User	\N	create	---\nemail: jane.r@engagepulse.com\nencrypted_password: "$2a$11$p0ZxVWYczdt5XyZ26bG.VOT/lqIln73KyCnlqdYDeyqafzgXdMS0C"\nphone: '635555555555'\notp: ''\nname: Jane Ramirez\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: c4a15e47698c605aa82d66edef2adcda\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Finance\nlocation: Manila,Philippines\nsupervisor: Drew Fronda\nhead_of_department: Jeremy Aldous\ndate_of_joining: May 6, 2019\nemployment_status: Employed\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	f9712c00-8766-4b98-8aec-d4e054b6bfa9	2019-07-21 19:30:46.780599
296	36	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 41\nrole_id: 3\n	1	\N	106.215.37.51	f9712c00-8766-4b98-8aec-d4e054b6bfa9	2019-07-21 19:30:46.792274
297	36	User	\N	\N	2	User	\N	destroy	---\nemail: raj.b@engagepulse.com\nencrypted_password: "$2a$11$Ttepy69Lcs0gAdKIw.17V.8z8JPjWKaE2YYlAoMl6k1cc5AQrD6Ti"\nphone: '9650349306'\notp: ''\nname: "Raj Test\\t\\t\\t"\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 5741dabd7bc1b828bac19f787e841816\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: ''\nlocation: ''\nsupervisor: ''\nhead_of_department: ''\ndate_of_joining: 06/15/2019\nemployment_status: ''\nactive: '0'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	3	\N	106.215.37.51	380ad6c6-a3a8-403c-b2e8-11c864f1eea8	2019-07-21 19:32:16.09065
298	42	User	\N	\N	2	User	\N	create	---\nemail: raj.b@engagepulse.com\nencrypted_password: "$2a$11$GTQJPatqC1v0qthIKTewJ.Cl7zqtWdbZaK6hGRnmDKUCdqrq8lc2a"\nphone: '919650349306'\notp: ''\nname: Raj Gupta\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: bea4528b879182c322dff373800b2a57\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Engineering\nlocation: New Delhi,India\nsupervisor: Ravi Gupta\nhead_of_department: Ankit Rao\ndate_of_joining: July 1, 2019\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	380ad6c6-a3a8-403c-b2e8-11c864f1eea8	2019-07-21 19:32:16.104692
299	37	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 42\nrole_id: 3\n	1	\N	106.215.37.51	380ad6c6-a3a8-403c-b2e8-11c864f1eea8	2019-07-21 19:32:16.118089
300	43	User	\N	\N	2	User	\N	create	---\nemail: joyce.c@engagepulse.com,\nencrypted_password: "$2a$11$Zh5gbmYaENm2MQ78LQads.ZaUBm1A2L6OMyflthN2nJTth78O./02"\nphone: '605555555555'\notp: ''\nname: Joyce,Chao\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 50c0a7b186a0e061006262244053fd6e\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Product,\nlocation: Kuala Lumpur,Malaysia\nsupervisor: Jason Lee\nhead_of_department: Ben Harvey\ndate_of_joining: 02/08/2018\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	e165c43b-e475-4d6a-b8c9-ca059e1b549c	2019-07-21 19:48:49.894922
301	38	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 43\nrole_id: 3\n	1	\N	106.215.37.51	e165c43b-e475-4d6a-b8c9-ca059e1b549c	2019-07-21 19:48:49.907164
302	44	User	\N	\N	2	User	\N	create	---\nemail: elsy.d@engagepulse.com\nencrypted_password: "$2a$11$tyEwGEvLGHEB7CzFmK.y0ulmd5OZR.9LllRUEb8x/OvlxDE12TlrK"\nphone: '275555555555'\notp: ''\nname: Elsy,Davis\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 24a6a1a4b0159af1634e45f04922227b\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Product\nlocation: Cape Town,South Africa\nsupervisor: Jason Lee\nhead_of_department: Ben Harvey\ndate_of_joining: 04/02/2017\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	40faec63-f9af-4465-af75-265e88676ba0	2019-07-21 19:50:17.24184
303	39	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 44\nrole_id: 3\n	1	\N	106.215.37.51	40faec63-f9af-4465-af75-265e88676ba0	2019-07-21 19:50:17.252944
304	45	User	\N	\N	2	User	\N	create	---\nemail: romain.s@engagepulse.com\nencrypted_password: "$2a$11$gy6yV5cjieIOVucQ5TvN2.CfybL64zmsdNaLwahhvWT6ZXC.j7rqq"\nphone: '335555555555'\notp: ''\nname: Romain,Sicot\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 2cfd599efc8c0b557092259c2f69d819\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Finance\nlocation: Paris,France\nsupervisor: Drew Fronda\nhead_of_department: Jeremy Aldous\ndate_of_joining: 02/04/2019\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	49d2c92c-cb53-4d08-8b4f-242dbb12bd15	2019-07-21 19:51:25.610823
305	40	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 45\nrole_id: 3\n	1	\N	106.215.37.51	49d2c92c-cb53-4d08-8b4f-242dbb12bd15	2019-07-21 19:51:25.621643
306	46	User	\N	\N	2	User	\N	create	---\nemail: henry.w@engagepulse.com\nencrypted_password: "$2a$11$FU6yDJUSYtmpwGS0bCudduJi2B.BtYUgCEFT44.h.yGpkV02uWMKK"\nphone: '15555555555'\notp: ''\nname: Henry ,Walker\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 1b140a269986bdca0f47ea86257400b6\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Sales\nlocation: Delaware,United States\nsupervisor: Neil Davis\nhead_of_department: Pat Bow\ndate_of_joining: 02/05/2018\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	c4d0c2c8-0a82-4af3-ac19-43c7836e2498	2019-07-21 19:52:45.119648
307	41	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 46\nrole_id: 3\n	1	\N	106.215.37.51	c4d0c2c8-0a82-4af3-ac19-43c7836e2498	2019-07-21 19:52:45.131073
308	47	User	\N	\N	2	User	\N	create	---\nemail: mary.o@engagepulse.com\nencrypted_password: "$2a$11$2iZn.VVNbwxdfCzTG8q1f.Ni67dTFo9uLQG9wvDpCTIxiryAXpcBq"\nphone: '635555555559'\notp: ''\nname: Mary Ocampo\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: bae6b0d2b2f1f35f9b8e00035bb8876c\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Marketing\nlocation: Manila,Philippines\nsupervisor: Kate Ocampo\nhead_of_department: Kurt Lee\ndate_of_joining: 01/01/2018\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	c0e16aa4-6081-4d00-b121-df942e144a34	2019-07-21 19:55:20.244263
309	42	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 47\nrole_id: 3\n	1	\N	106.215.37.51	c0e16aa4-6081-4d00-b121-df942e144a34	2019-07-21 19:55:20.255729
310	48	User	\N	\N	2	User	\N	create	---\nemail: nikita.p@engagepulse.com\nencrypted_password: "$2a$11$lvNlhvUwWcbh2C1RVpTEL.OZk7bTQ2oHZmzxZGERVDExUIRgOx89K"\nphone: '919711028993'\notp: ''\nname: Nikita Pal\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 85af606591e751191858aec5395833f5\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Engineering\nlocation: New Delhi,India\nsupervisor: Ravi Gupta\nhead_of_department: Ankit Rao\ndate_of_joining: '09/03/2018'\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	37a84d22-bc1e-48c7-beed-38d7f92c8bea	2019-07-21 19:56:25.327604
311	43	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 48\nrole_id: 3\n	1	\N	106.215.37.51	37a84d22-bc1e-48c7-beed-38d7f92c8bea	2019-07-21 19:56:25.339758
312	49	User	\N	\N	2	User	\N	create	---\nemail: ashley.f@engagepulse.com\nencrypted_password: "$2a$11$EKwfkxDvaDar2PJ4tyPsie8cKGR6g6K.Vf6c6p3ybQbJUqzaV1K.q"\nphone: '635555555550'\notp: ''\nname: Ashley Fronda\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nsign_in_count: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nconfirmation_token: 940bcb756d38824351faabfd9d7a4646\nconfirmed_at: \nconfirmation_sent_at: \nemployee_id: ''\ndepartment: Marketing\nlocation: Manila,Philippines\nsupervisor: Kate Ocampo\nhead_of_department: Kurt Lee\ndate_of_joining: 11/05/2018\nemployment_status: ''\nactive: '1'\npromotion_date: \ncurrent_job_role: \nemployment_type: \nsub_department: \naccount: \ncountry: \ncountry_code: \ndate_of_birth: \ntermination_date: \ncurrent_status: \ntoc_accepted: false\n	1	\N	106.215.37.51	aabeb67b-b13e-4d45-99af-94fbed88941b	2019-07-21 19:58:25.017653
313	44	UserRole	\N	\N	2	User	\N	create	---\nuser_id: 49\nrole_id: 3\n	1	\N	106.215.37.51	aabeb67b-b13e-4d45-99af-94fbed88941b	2019-07-21 19:58:25.029201
314	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-21 15:21:36.169078000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-21 22:43:55.708920309 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-19 14:14:23.877236000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-21 15:21:36.169078000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.30.255.218\n- 106.215.37.51\nlast_sign_in_ip:\n- 47.31.78.199\n- 47.30.255.218\nsign_in_count:\n- 151\n- 152\n	99	\N	106.215.37.51	76a96b95-255a-40aa-8808-47ce1613cd1d	2019-07-21 22:43:55.71283
315	42	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$GTQJPatqC1v0qthIKTewJ.Cl7zqtWdbZaK6hGRnmDKUCdqrq8lc2a"\n- "$2a$11$6AcW5e707kgKpGFEyHU25OCLZ9GqQkChtiXN64XYkOns.kRafwG.."\nconfirmation_token:\n- bea4528b879182c322dff373800b2a57\n- \nconfirmed_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-22 05:26:09.320678945 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n	2	\N	122.55.19.100	896dda01-51de-4b07-84d1-5d298a826301	2019-07-22 05:26:09.66868
316	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-21 22:43:55.708920000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-22 06:36:43.412470500 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-21 15:21:36.169078000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-21 22:43:55.708920000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 106.215.37.51\n- 110.54.208.230\nlast_sign_in_ip:\n- 47.30.255.218\n- 106.215.37.51\nsign_in_count:\n- 152\n- 153\n	100	\N	110.54.208.230	9e3ca0d8-ec10-41af-9e4c-6635db42a3ef	2019-07-22 06:36:43.416575
317	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-22 06:36:43.412470000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-22 08:03:13.621539960 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-21 22:43:55.708920000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-22 06:36:43.412470000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 106.215.37.51\n- 110.54.208.230\nsign_in_count:\n- 153\n- 154\n	101	\N	110.54.208.230	d79a64a6-4a93-4b1d-8623-202f8a2a40e0	2019-07-22 08:03:13.625646
318	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-22 08:03:13.621539000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-22 19:42:21.976303919 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-22 06:36:43.412470000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-22 08:03:13.621539000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 110.54.208.230\n- 223.190.116.211\nsign_in_count:\n- 154\n- 155\n	102	\N	223.190.116.211	092ae2c5-770a-48ea-8381-78db9893cfc6	2019-07-22 19:42:21.980633
319	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-22 19:42:21.976303000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 09:48:14.634873323 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-22 08:03:13.621539000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-22 19:42:21.976303000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 223.190.116.211\n- 14.141.249.170\nlast_sign_in_ip:\n- 110.54.208.230\n- 223.190.116.211\nsign_in_count:\n- 155\n- 156\n	103	\N	14.141.249.170	a1ba258f-d206-46e1-950d-1e18cdb2ce5d	2019-07-23 09:48:14.661824
320	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 09:48:14.634873000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 15:29:06.292853854 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-22 19:42:21.976303000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 09:48:14.634873000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 14.141.249.170\n- 223.190.116.211\nlast_sign_in_ip:\n- 223.190.116.211\n- 14.141.249.170\nsign_in_count:\n- 156\n- 157\n	104	\N	223.190.116.211	7b190dcb-8b32-48e7-8aba-cbfba1dd3b62	2019-07-23 15:29:06.300979
321	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 15:29:06.292853000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 15:32:55.561376095 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 09:48:14.634873000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 15:29:06.292853000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 14.141.249.170\n- 223.190.116.211\nsign_in_count:\n- 157\n- 158\n	105	\N	223.190.116.211	bd1f1933-eb3b-42ac-8c4d-59895b613aa8	2019-07-23 15:32:55.567367
322	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- true\n- false\n	106	\N	47.31.136.55	1817797a-2c54-4e49-8fa2-39e53749cb92	2019-07-23 15:45:13.367212
323	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	107	\N	47.31.136.55	2ddc5118-20c4-4c40-9b56-84380d5ddc40	2019-07-23 15:46:31.029588
325	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 15:32:55.561376000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 15:48:43.356087603 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 15:29:06.292853000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 15:32:55.561376000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 223.190.116.211\n- 47.31.136.55\nsign_in_count:\n- 158\n- 159\n	109	\N	47.31.136.55	e59132ab-24ec-4101-bf9e-e048dd51e67f	2019-07-23 15:48:43.360006
326	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 15:48:43.356087000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 15:50:52.202523814 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 15:32:55.561376000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 15:48:43.356087000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 223.190.116.211\n- 47.31.136.55\nsign_in_count:\n- 159\n- 160\n	110	\N	47.31.136.55	13feddcd-2f33-47a7-8380-2d232ba332a0	2019-07-23 15:50:52.208547
327	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 15:50:52.202523000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 15:52:04.544397209 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 15:48:43.356087000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 15:50:52.202523000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 160\n- 161\n	111	\N	47.31.136.55	94d9f25e-eb15-42ed-82e7-6c6cc7f22ead	2019-07-23 15:52:04.548196
328	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	112	\N	47.31.136.55	83fcef44-c072-4e86-a91d-9fecb36d8dcb	2019-07-23 15:52:12.700374
329	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 15:52:04.544397000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:04:22.223872145 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 15:50:52.202523000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 15:52:04.544397000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 161\n- 162\n	113	\N	47.31.136.55	351a2c1e-c07b-4000-b984-77ad284ba668	2019-07-23 16:04:22.227648
330	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:04:22.223872000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:05:30.052907890 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 15:52:04.544397000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:04:22.223872000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 162\n- 163\n	114	\N	47.31.136.55	d48b9129-97f4-494d-a217-bf6b44d1905b	2019-07-23 16:05:30.056758
331	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:05:30.052907000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:06:27.764056712 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:04:22.223872000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:05:30.052907000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 163\n- 164\n	115	\N	47.31.136.55	f23055b8-b00c-43cf-8e6d-2597ea26d52f	2019-07-23 16:06:27.767908
332	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:06:27.764056000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:10:00.961762449 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:05:30.052907000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:06:27.764056000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 164\n- 165\n	116	\N	47.31.136.55	7be6521d-899c-40ed-a637-e92c1a8137bf	2019-07-23 16:10:00.965567
333	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:10:00.961762000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:29:38.904595881 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:06:27.764056000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:10:00.961762000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 165\n- 166\n	117	\N	47.31.136.55	515f0782-1457-422d-9af8-ab28cc8d1645	2019-07-23 16:29:38.908459
334	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:29:38.904595000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:30:48.485656125 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:10:00.961762000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:29:38.904595000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 166\n- 167\n	118	\N	47.31.136.55	d25cad4a-cc2b-4a82-b001-23c748ecac35	2019-07-23 16:30:48.489607
335	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:30:48.485656000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:35:27.973208156 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:29:38.904595000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:30:48.485656000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 167\n- 168\n	119	\N	47.31.136.55	8e64f98d-5714-4f61-9772-19bc8cdb7491	2019-07-23 16:35:27.977052
336	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:35:27.973208000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:41:31.675104141 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:30:48.485656000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:35:27.973208000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 168\n- 169\n	120	\N	47.31.136.55	23aa41c9-0dd3-4990-ad8c-d26bc2520472	2019-07-23 16:41:31.678921
337	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:41:31.675104000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:41:42.905761159 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:35:27.973208000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:41:31.675104000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 169\n- 170\n	121	\N	47.31.136.55	0f2221d0-00b5-4656-9270-0360685db8da	2019-07-23 16:41:42.909548
338	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:41:42.905761000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:43:08.725326321 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:41:31.675104000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:41:42.905761000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 170\n- 171\n	122	\N	47.31.136.55	b6203253-3211-447e-a9d0-b149b19e2cc3	2019-07-23 16:43:08.729083
339	2	User	\N	\N	2	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 16:43:08.725326000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 16:48:56.195721848 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 16:41:42.905761000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 16:43:08.725326000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 171\n- 172\n	123	\N	47.31.136.55	7034f726-e1f7-41a0-b059-bf73fd1f79cc	2019-07-23 16:48:56.199398
341	45	UserRole	\N	\N	\N	\N	\N	create	---\nuser_id: 39\nrole_id: 1\n	1	\N	\N	f93bc44a-97ee-4987-accd-9b46d437b2c5	2019-07-23 21:05:34.461405
342	39	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nencrypted_password:\n- "$2a$11$FKGEPlfUfYrqS.2MRHjhSOdFuiIfn.mI2EXvMKf2rp9GO00k94nm6"\n- "$2a$11$gfjTaOKoYXmliEPZP/zLXeRejGEmnyEcajGbH4BbKqXgvWF.swQI2"\n	3	\N	\N	93430f0e-11e5-47cc-8952-4ad81dd8d1dc	2019-07-23 21:09:09.17197
343	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 21:09:45.753502646 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\nlast_sign_in_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: *1\n  zone: *2\n  time: *1\ncurrent_sign_in_ip:\n- \n- 73.202.191.109\nlast_sign_in_ip:\n- \n- 73.202.191.109\nsign_in_count:\n- 0\n- 1\n	4	\N	73.202.191.109	77c874f4-fa90-4b92-99ba-21e2d3d26c3b	2019-07-23 21:09:45.757494
344	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntoc_accepted:\n- false\n- true\n	5	\N	73.202.191.109	aab9af4a-b6fd-43ca-b394-b27f5ab59252	2019-07-23 21:09:53.967055
345	39	User	\N	\N	\N	\N	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nactive:\n- '0'\n- '1'\n	6	\N	\N	c611cb57-b882-4afb-8d4b-9fc003dcfa2f	2019-07-23 21:44:47.607297
346	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 21:09:45.753502000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-23 21:44:55.198096378 Z\n  zone: *2\n  time: *3\nsign_in_count:\n- 1\n- 2\n	7	\N	73.202.191.109	bc5113be-9205-482d-8105-a53d323e70e8	2019-07-23 21:44:55.229801
347	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-23 21:44:55.198096000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 01:05:06.559559948 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 21:09:45.753502000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-23 21:44:55.198096000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 73.202.191.109\n- 120.29.117.205\nsign_in_count:\n- 2\n- 3\n	8	\N	120.29.117.205	61d4490f-8971-401a-a59b-828ab41c0c88	2019-07-24 01:05:06.586086
348	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 01:05:06.559559000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 01:05:39.996903408 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-23 21:44:55.198096000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 01:05:06.559559000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 73.202.191.109\n- 120.29.117.205\nsign_in_count:\n- 3\n- 4\n	9	\N	120.29.117.205	30b76cf9-ed5c-4969-bf6c-287f56668f8a	2019-07-24 01:05:40.001144
349	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 01:05:39.996903000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 05:30:12.173499463 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 01:05:06.559559000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 01:05:39.996903000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 120.29.117.205\n- 73.202.191.109\nsign_in_count:\n- 4\n- 5\n	10	\N	73.202.191.109	d57ea7d2-9dff-4ab4-bbc5-ffbd9ae2d678	2019-07-24 05:30:12.182758
350	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 05:30:12.173499000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 06:23:32.516354630 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 01:05:39.996903000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 05:30:12.173499000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 73.202.191.109\n- 47.31.162.71\nlast_sign_in_ip:\n- 120.29.117.205\n- 73.202.191.109\nsign_in_count:\n- 5\n- 6\n	11	\N	47.31.162.71	f0211b35-6e9f-4371-a84f-1f1056c0c537	2019-07-24 06:23:32.520286
351	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 06:23:32.516354000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 06:26:37.787577824 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 05:30:12.173499000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 06:23:32.516354000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 73.202.191.109\n- 47.31.162.71\nsign_in_count:\n- 6\n- 7\n	12	\N	47.31.162.71	85785f7d-a4db-487b-bff3-28c4c30ab365	2019-07-24 06:26:37.791594
352	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 06:26:37.787577000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 06:26:43.878015010 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 06:23:32.516354000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 06:26:37.787577000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 7\n- 8\n	13	\N	47.31.162.71	a6a690c2-9219-4963-96b3-ab07263c2280	2019-07-24 06:26:43.88185
353	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 06:26:43.878015000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 06:36:15.312337407 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 06:26:37.787577000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 06:26:43.878015000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 8\n- 9\n	14	\N	47.31.162.71	292e4d6f-0eb4-4559-a33e-6c1e295cf22b	2019-07-24 06:36:15.316441
354	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 06:36:15.312337000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 06:40:02.129314416 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 06:26:43.878015000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 06:36:15.312337000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 9\n- 10\n	15	\N	47.31.162.71	55598c4b-0b4c-4206-8b2c-515e50c0a2d7	2019-07-24 06:40:02.133184
355	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 06:40:02.129314000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 14:59:58.054932826 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 06:36:15.312337000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 06:40:02.129314000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.162.71\n- 122.55.19.100\nsign_in_count:\n- 10\n- 11\n	16	\N	122.55.19.100	ce8f1460-045b-49b1-8ed1-8be45a3ccadd	2019-07-24 14:59:58.062158
356	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 14:59:58.054932000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 15:02:12.491749419 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 06:40:02.129314000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 14:59:58.054932000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 122.55.19.100\n- 121.242.156.1\nlast_sign_in_ip:\n- 47.31.162.71\n- 122.55.19.100\nsign_in_count:\n- 11\n- 12\n	17	\N	121.242.156.1	d07e57df-5835-42b7-954c-33c3da6e85c1	2019-07-24 15:02:12.495837
357	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 15:02:12.491749000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-24 20:46:49.507720375 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 14:59:58.054932000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 15:02:12.491749000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 121.242.156.1\n- 73.202.191.109\nlast_sign_in_ip:\n- 122.55.19.100\n- 121.242.156.1\nsign_in_count:\n- 12\n- 13\n	18	\N	73.202.191.109	55e0a742-6b9e-47fe-9a36-0a35de5d60e2	2019-07-24 20:46:49.540644
358	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-24 20:46:49.507720000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:12:50.231487876 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 15:02:12.491749000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-24 20:46:49.507720000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 73.202.191.109\n- 47.31.165.49\nlast_sign_in_ip:\n- 121.242.156.1\n- 73.202.191.109\nsign_in_count:\n- 13\n- 14\n	19	\N	47.31.165.49	ca5b197c-a172-4f4f-8524-d1749fb45780	2019-07-25 04:12:50.235778
359	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:12:50.231487000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:21:10.205390467 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-24 20:46:49.507720000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:12:50.231487000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 73.202.191.109\n- 47.31.165.49\nsign_in_count:\n- 14\n- 15\n	20	\N	47.31.165.49	8df8d83e-d393-46bd-ba4d-65fa90f3e98a	2019-07-25 04:21:10.209313
360	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:21:10.205390000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:51:26.520490808 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:12:50.231487000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:21:10.205390000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 15\n- 16\n	21	\N	47.31.165.49	5cc37364-a723-408a-99a2-24c652f6539f	2019-07-25 04:51:26.524369
361	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:51:26.520490000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:51:33.417514339 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:21:10.205390000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:51:26.520490000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 16\n- 17\n	22	\N	47.31.165.49	7971ca48-3b3f-4a3c-9f3a-b3b4082ab5cf	2019-07-25 04:51:33.42131
362	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:51:33.417514000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:52:45.296272497 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:51:26.520490000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:51:33.417514000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 17\n- 18\n	23	\N	47.31.165.49	18180ddb-d03e-491a-9d02-e2469141150e	2019-07-25 04:52:45.299992
363	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:52:45.296272000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:53:43.536247131 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:51:33.417514000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:52:45.296272000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 18\n- 19\n	24	\N	47.31.165.49	1ebbf163-e4ee-429c-b454-d27e8cb3fa09	2019-07-25 04:53:43.540197
364	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:53:43.536247000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:54:01.519211314 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:52:45.296272000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:53:43.536247000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 19\n- 20\n	25	\N	47.31.165.49	1131cd7e-71b3-484a-bacc-642d3961f9ee	2019-07-25 04:54:01.523169
365	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:54:01.519211000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:55:20.906231322 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:53:43.536247000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:54:01.519211000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 20\n- 21\n	26	\N	47.31.165.49	ecd17e7f-45cd-49fc-8608-5f0418da94ca	2019-07-25 04:55:20.909976
366	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:55:20.906231000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:56:44.341008683 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:54:01.519211000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:55:20.906231000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 21\n- 22\n	27	\N	47.31.165.49	5e1fe6ca-6ea9-4e1a-93e3-5242f34bd648	2019-07-25 04:56:44.344878
367	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:56:44.341008000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:58:27.663029701 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:55:20.906231000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:56:44.341008000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 22\n- 23\n	28	\N	47.31.165.49	c072600a-c686-4cc2-a2a2-e018dc8aa189	2019-07-25 04:58:27.666857
368	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:58:27.663029000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 04:59:21.645955959 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:56:44.341008000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:58:27.663029000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 23\n- 24\n	29	\N	47.31.165.49	3adc47ac-208e-4e03-bc06-bf3e1ce8f211	2019-07-25 04:59:21.649861
369	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 04:59:21.645955000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 05:07:38.217867782 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:58:27.663029000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 04:59:21.645955000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 24\n- 25\n	30	\N	47.31.165.49	923a415b-14d5-43cf-a523-9d40f45656fa	2019-07-25 05:07:38.221677
370	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 05:07:38.217867000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 05:07:58.397206928 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 04:59:21.645955000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 05:07:38.217867000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 25\n- 26\n	31	\N	47.31.165.49	9ee3300b-2783-47cb-8140-3fc09e8638d4	2019-07-25 05:07:58.401017
371	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 05:07:58.397206000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 05:12:02.069019324 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 05:07:38.217867000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 05:07:58.397206000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 26\n- 27\n	32	\N	47.31.165.49	011e8afd-64aa-4a6a-a194-399d7483a948	2019-07-25 05:12:02.073112
372	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 05:12:02.069019000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 05:19:36.420430084 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 05:07:58.397206000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 05:12:02.069019000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.31.165.49\n- 47.30.196.26\nsign_in_count:\n- 27\n- 28\n	33	\N	47.30.196.26	3d1f0726-ad01-43c5-b79d-bf4ac8744aae	2019-07-25 05:19:36.42443
373	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 05:19:36.420430000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-25 06:53:11.693383491 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 05:12:02.069019000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 05:19:36.420430000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 47.30.196.26\n- 175.176.32.204\nlast_sign_in_ip:\n- 47.31.165.49\n- 47.30.196.26\nsign_in_count:\n- 28\n- 29\n	34	\N	175.176.32.204	646d316d-770f-44fa-8b09-6ea89281a4ab	2019-07-25 06:53:11.703572
374	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-25 06:53:11.693383000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 06:34:06.942123344 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 05:19:36.420430000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-25 06:53:11.693383000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 175.176.32.204\n- 122.55.19.100\nlast_sign_in_ip:\n- 47.30.196.26\n- 175.176.32.204\nsign_in_count:\n- 29\n- 30\n	35	\N	122.55.19.100	ba2e6d88-db08-490f-a010-d8596cf67a4c	2019-07-26 06:34:06.949014
375	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 06:34:06.942123000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 11:14:51.588449861 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-25 06:53:11.693383000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 06:34:06.942123000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 122.55.19.100\n- 223.190.116.211\nlast_sign_in_ip:\n- 175.176.32.204\n- 122.55.19.100\nsign_in_count:\n- 30\n- 31\n	36	\N	223.190.116.211	998d8636-7537-4d44-a938-c6698447bd61	2019-07-26 11:14:51.592635
376	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 11:14:51.588449000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 11:26:03.298507240 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-26 06:34:06.942123000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 11:14:51.588449000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 122.55.19.100\n- 223.190.116.211\nsign_in_count:\n- 31\n- 32\n	37	\N	223.190.116.211	2f8386ae-de6f-4c28-9c19-9b496c1063e9	2019-07-26 11:26:03.302474
377	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 11:26:03.298507000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 11:38:11.626344565 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-26 11:14:51.588449000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 11:26:03.298507000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 32\n- 33\n	38	\N	223.190.116.211	f80bce63-a275-4288-a0cb-5600559bf42b	2019-07-26 11:38:11.630328
378	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 11:38:11.626344000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 14:25:32.977859552 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-26 11:26:03.298507000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 11:38:11.626344000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 33\n- 34\n	39	\N	223.190.116.211	0515d5db-6d4c-4977-8b1b-b2377ede2993	2019-07-26 14:25:32.985736
379	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 14:25:32.977859000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 14:36:45.295880975 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-26 11:38:11.626344000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 14:25:32.977859000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 34\n- 35\n	40	\N	223.190.116.211	48a2c7c7-097d-4c4f-8887-edd52a8ac4b8	2019-07-26 14:36:45.299709
380	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 14:36:45.295880000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 14:36:54.495335698 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-26 14:25:32.977859000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 14:36:45.295880000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 35\n- 36\n	41	\N	223.190.116.211	d76e6cdb-017b-4f36-be8e-8189f5f3a9c6	2019-07-26 14:36:54.499051
381	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 14:36:54.495335000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 14:40:54.174974795 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-26 14:36:45.295880000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 14:36:54.495335000 Z\n  zone: *2\n  time: *5\nsign_in_count:\n- 36\n- 37\n	42	\N	223.190.116.211	257aa435-ed26-4604-98e9-a2419cd00a82	2019-07-26 14:40:54.178877
382	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 14:40:54.174974000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 15:19:08.275981743 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-26 14:36:54.495335000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 14:40:54.174974000 Z\n  zone: *2\n  time: *5\ncurrent_sign_in_ip:\n- 223.190.116.211\n- 120.29.117.205\nsign_in_count:\n- 37\n- 38\n	43	\N	120.29.117.205	73e041c7-2a68-4740-9c01-a5cd6fad6b28	2019-07-26 15:19:08.28007
383	39	User	\N	\N	39	User	\N	update	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncurrent_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &1 2019-07-26 15:19:08.275981000 Z\n  zone: &2 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: *1\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &3 2019-07-26 15:43:36.088806941 Z\n  zone: *2\n  time: *3\nlast_sign_in_at:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &4 2019-07-26 14:40:54.174974000 Z\n  zone: *2\n  time: *4\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: &5 2019-07-26 15:19:08.275981000 Z\n  zone: *2\n  time: *5\nlast_sign_in_ip:\n- 223.190.116.211\n- 120.29.117.205\nsign_in_count:\n- 38\n- 39\n	44	\N	120.29.117.205	d5bc5a9d-7be6-4511-a1cf-15dea7aa536b	2019-07-26 15:43:36.092835
\.


--
-- Data for Name: clusters; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.clusters (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: clusters_conversations; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.clusters_conversations (id, cluster_id, conversation_id) FROM stdin;
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.companies (id, name, email, company_slug, phone, country_code, created_at, updated_at, industry, privacy_policy, time_zone, leader, locale) FROM stdin;
\.


--
-- Data for Name: conversation_answers; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.conversation_answers (id, conversation_question_id, user_id, text, value, response, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: conversation_questions; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.conversation_questions (id, conversation_id, question_text, question_type, driver, tenure_group, tenure_on_delivery, employee_group, department, choices, question_order, is_answered, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: conversations; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.conversations (id, survey_id, user_id, is_editable, expiry, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.orders (id, order_id, amount, currency_type, receipt, entity, status, created_at, updated_at) FROM stdin;
3	pay_CpbYhCWJOgyLEf	10	INR	Buy your sms credits	\N	authorized	2019-07-04 13:31:01.210636	2019-07-04 13:31:01.210636
4	pay_CpbaHRu9tLkI0g	10	INR	Buy your sms credits	\N	authorized	2019-07-04 13:32:31.984392	2019-07-04 13:32:31.984392
5	pay_CpbeRXBcVRW1iu	10	INR	Buy your sms credits	\N	authorized	2019-07-04 13:36:31.722874	2019-07-04 13:36:31.722874
6	pay_Cqe9jzhlzMON5i	10	INR	Buy your sms credits	\N	authorized	2019-07-07 04:42:29.312044	2019-07-07 04:42:29.312044
\.


--
-- Data for Name: password_histories; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.password_histories (id, user_id, encrypted_password, created_at, updated_at) FROM stdin;
1	1	$2a$11$6BAJxNE4ISrC7liqCxrkveP6FkVGG8dhakXdf/Al4xc42eqgYFZzq	2019-06-27 10:44:17.569595	2019-06-27 10:44:17.569595
2	2	$2a$11$csMSOLqIGhKvOOQVv9ZY5.ypZIHjuXmWvaxv9l5btp08K2b/lnwue	2019-06-27 10:45:13.479973	2019-06-27 10:45:13.479973
3	3	$2a$11$hSIgbIRgDIzkLgwyRuXtnOyEoDWzmhW6BX7PMG85cB9gOu1beH5f.	2019-06-27 11:50:35.62191	2019-06-27 11:50:35.62191
4	4	$2a$11$6Xa7inmq0biWbg7pDwHh1eTU46/8BQii4lsIOyIhAj82zBE0ULEGm	2019-06-27 11:50:35.781644	2019-06-27 11:50:35.781644
5	5	$2a$11$XBw6m3TkqZoKF3zrFD.0g.F5pihhhgf7n.0jkz24qZUcA5i34aG0m	2019-06-27 11:50:35.947429	2019-06-27 11:50:35.947429
6	6	$2a$11$Zu0XytuR8XUxMlEMWfcbMO6eVx1fOzPa3BX/uWe1Zm.EkP6mXK00m	2019-06-27 11:50:36.106701	2019-06-27 11:50:36.106701
7	7	$2a$11$GyUKqNgUzTV6hSZ4TFuBcOrPpeWGuEkR4q94F3SIfwCaGjcORqRlC	2019-06-28 10:40:11.997987	2019-06-28 10:40:11.997987
8	2	$2a$11$HoY/YPgNVidzjOiF5NAG0eHPtcoweHr/cXVQx1AcGIzYZhHnnD4j2	2019-07-02 11:12:56.832617	2019-07-02 11:12:56.832617
9	3	$2a$11$kp3T7bUx4aFa0MdGa0rx2OqhHIo7JpoNhZcxEz.d5hXzAJb3H5GIC	2019-07-02 12:39:28.432384	2019-07-02 12:39:28.432384
10	8	$2a$11$oUxmjnpDeC7T3edbRxNzF.xO/GrMNvhO61OejsxaJ6cviOUR5TEve	2019-07-02 13:02:52.212237	2019-07-02 13:02:52.212237
11	9	$2a$11$4C9gMCQlmoqjFS1Djao2BukiUnpoCvjJ8qv2I5NnY2AMsW9x1FsXK	2019-07-03 09:54:15.753226	2019-07-03 09:54:15.753226
12	10	$2a$11$15FhVFaFeu496Qc8EZnNieUcLjN4.crNi1GLjbLKfzbURAnylkwBu	2019-07-03 09:55:25.554538	2019-07-03 09:55:25.554538
13	11	$2a$11$4P92oyTTDS8pPhc.wnvsCuGjyAmdhM9FV8eGw4eBP5GeIHu0OIpj6	2019-07-04 07:53:39.720698	2019-07-04 07:53:39.720698
14	12	$2a$11$QG8afrJExJRWYxgzJOXjguaR8HqDeI5G5KPyvrhCEi3gza1mkKjfC	2019-07-04 13:03:14.886429	2019-07-04 13:03:14.886429
15	13	$2a$11$If4rwUHPi/TRo1d95KeRe.e33Bnccjzl8JdyJnS3oMShQiGF0WFt6	2019-07-04 21:32:37.826389	2019-07-04 21:32:37.826389
16	14	$2a$11$AAUNk0C50Fy/DCEMaiwSt.cWOdm3YaaYpMI0.4ZJ55y8QgR.uKY3G	2019-07-04 21:33:24.497898	2019-07-04 21:33:24.497898
17	15	$2a$11$kG2T8821m5EikFS5yrW7LOCkc2aRtf97ZiNsL.RIjZ8nmC11YrIHq	2019-07-04 21:34:13.956436	2019-07-04 21:34:13.956436
18	16	$2a$11$E51c9qHdFYpGA330FLTYgecMRof7OLVwuRXUVDHC9IXn1lSGxOh.2	2019-07-04 21:34:38.478573	2019-07-04 21:34:38.478573
19	17	$2a$11$K9wJdTbDmjZrGtO503j7HuQ9vCLKCd5iqAsK7viDqpDyD2.VrkQ5u	2019-07-04 21:38:35.005474	2019-07-04 21:38:35.005474
20	18	$2a$11$51ZGNA/yrLprnYPTMd.rXOzKP/JMlWHWc8RAwyVkHCk7IqM.DbRsm	2019-07-04 21:38:58.778276	2019-07-04 21:38:58.778276
21	19	$2a$11$mNObYweBEzuyuacyL2wrxeeh3EwQ7xUBq0bdIfEf0AEmJQUgcffaO	2019-07-04 21:55:37.792898	2019-07-04 21:55:37.792898
22	20	$2a$11$Tcn0s7U2/Z7FP/Qishzz4u5dUDr9BVajjgcQxTGjv8PbtdRhIwMiK	2019-07-04 21:58:28.715256	2019-07-04 21:58:28.715256
23	21	$2a$11$WCMDqLSK.ap4KE/4NzLhCu0ML/kOdKuZCwjgC/wr.28n3eYLbQ5UO	2019-07-04 21:59:22.139523	2019-07-04 21:59:22.139523
24	22	$2a$11$QFSm8f/RT/oRk2KnUUAGbeYIL/ssU5GDecQHldXkBC6IyJWdLVZt2	2019-07-04 22:00:09.643109	2019-07-04 22:00:09.643109
25	23	$2a$11$LLKCPr3sEZYWLw5KleCDO.uNCqQayeEORkwrBK7icur4PpwcukfW.	2019-07-05 14:50:30.277172	2019-07-05 14:50:30.277172
26	24	$2a$11$mIi3LI6iGQIlBWHIbQLH7u8XBfcmhrHukHbI5m2IkVOLEPVDINlHO	2019-07-05 17:02:47.809037	2019-07-05 17:02:47.809037
27	25	$2a$11$mkO86MFRl8ID6/XlGivQWe.a9.zCpf/wNHVXSsQOpqy7nVp7ZwGPK	2019-07-06 06:20:42.597629	2019-07-06 06:20:42.597629
28	26	$2a$11$xj.St939NA1ZIgDfchdqN.QyU.AF0efywZyweZKwGC14sr52mHChK	2019-07-06 15:07:20.450226	2019-07-06 15:07:20.450226
29	27	$2a$11$mXL6PPSQ.AAaFq5YREjyvOZ.KXY/NI2KMGQKtvnFTSnFUMSdy6p62	2019-07-06 15:31:00.579693	2019-07-06 15:31:00.579693
30	28	$2a$11$7UH1laXIiWfODaOwqudyU.XIhGRf1MJSC0vHqHETIUd1zUwJpzSnO	2019-07-06 18:23:10.027087	2019-07-06 18:23:10.027087
31	29	$2a$11$/Mz87Re46hhIsSnKvxL.w.bft32pgsT26TrzV4sOlJ6qsCNxDJGlG	2019-07-06 18:27:53.028171	2019-07-06 18:27:53.028171
32	29	$2a$11$ir8SQPGesmi5QL1kWKP/8uK6CKi9yb8gjp78VjzDDBkyA/9xPMucO	2019-07-06 18:31:09.759816	2019-07-06 18:31:09.759816
33	30	$2a$11$sx0sjmU9jj32yXDMjyQX8ur4fcm5EZP0yjn5b.hwr0NUUYUzS0pYW	2019-07-06 18:46:21.194454	2019-07-06 18:46:21.194454
34	30	$2a$11$ZTypBB.AVUYd5swFYAukhOzN4T7oztOR6JOqd4UxgE8pvA1Z/wyWG	2019-07-06 18:47:26.885026	2019-07-06 18:47:26.885026
35	31	$2a$11$p23szSyhVkNz/EasLU1NWuw4Yefb7SFRs8X94q9EHSx7b.XJiN.r6	2019-07-06 18:50:31.675899	2019-07-06 18:50:31.675899
36	31	$2a$11$3aLS3Q.0x3NwNt/L8e4UGuXvSOfVPg5.4LJ7wSy/Jw2uypqAP9Ffq	2019-07-06 18:53:37.127389	2019-07-06 18:53:37.127389
37	28	$2a$11$cky1mHzbxsVd2n1oQ./5celXHYjjDx5NJUmM9jjEw8L79XXr1K.RK	2019-07-06 19:15:33.253634	2019-07-06 19:15:33.253634
38	32	$2a$11$UQSvR5gD8yNU6ww6mXy9Ue8FUQCs1uVANGTupaC.ePBTrX7r0kNha	2019-07-10 12:21:03.635503	2019-07-10 12:21:03.635503
39	32	$2a$11$8PdOdIuBKt1i/oMIm3bsB.VicuEa4Qivg29AnIjm2MhpvwK2Yqx3W	2019-07-10 12:31:58.665361	2019-07-10 12:31:58.665361
40	33	$2a$11$8Ud9aLsLjoRbdidqo80EjuQHVUDMeMKH3vkAkCS3CwTt7N6F2Uupi	2019-07-11 15:38:53.900183	2019-07-11 15:38:53.900183
41	33	$2a$11$qFjadLduW33B2xnPWJ5CFee4BsUMIXPPvKPC37.XNXxKg/nfjc5BC	2019-07-11 15:39:42.554889	2019-07-11 15:39:42.554889
42	34	$2a$11$fTQ0P9nJ9PjlfUNPnrfl8OjxPw6i9YjloQ0zry./OQFAN/OTVmnu.	2019-07-15 15:56:40.844459	2019-07-15 15:56:40.844459
43	35	$2a$11$vRhy2sDzBcCpQmREXNrecOTD/Xr.H3P36.SycuJcOEk9oxvyUBKGa	2019-07-15 16:36:40.516936	2019-07-15 16:36:40.516936
44	35	$2a$11$CncpkMvsp05g7we.ZQL7ZOB.wtVQp12eWF6oR2rnZcvM6YJ5c9e4i	2019-07-15 16:37:47.579295	2019-07-15 16:37:47.579295
45	34	$2a$11$eJMp08xfYB2ENlqhYFzgruDUMPi1CY9.LfPf7eQSMtoFaCDRtA7yS	2019-07-15 16:41:17.228019	2019-07-15 16:41:17.228019
46	36	$2a$11$Ttepy69Lcs0gAdKIw.17V.8z8JPjWKaE2YYlAoMl6k1cc5AQrD6Ti	2019-07-15 16:50:00.032961	2019-07-15 16:50:00.032961
47	37	$2a$11$sbOmQ90OBb2BQoMUZ9ltkegzO2SJerVFC/lP5sMMsb3W3AK2eeH7y	2019-07-15 16:55:30.329454	2019-07-15 16:55:30.329454
48	38	$2a$11$l4EgFqvPW7VM8Zx6Cwy0i.wJ1JnmyDZflOHr7FsRa2DtWj8EyXxsK	2019-07-18 03:37:22.381856	2019-07-18 03:37:22.381856
49	39	$2a$11$FKGEPlfUfYrqS.2MRHjhSOdFuiIfn.mI2EXvMKf2rp9GO00k94nm6	2019-07-21 05:56:37.71201	2019-07-21 05:56:37.71201
50	40	$2a$11$0uElG0Gla8guEw8uazKBduSOpmiOa5p4LtjjvL7W/ddcnZYBsbIYW	2019-07-21 19:27:17.275138	2019-07-21 19:27:17.275138
51	41	$2a$11$p0ZxVWYczdt5XyZ26bG.VOT/lqIln73KyCnlqdYDeyqafzgXdMS0C	2019-07-21 19:30:46.784916	2019-07-21 19:30:46.784916
52	42	$2a$11$GTQJPatqC1v0qthIKTewJ.Cl7zqtWdbZaK6hGRnmDKUCdqrq8lc2a	2019-07-21 19:32:16.10963	2019-07-21 19:32:16.10963
53	43	$2a$11$Zh5gbmYaENm2MQ78LQads.ZaUBm1A2L6OMyflthN2nJTth78O./02	2019-07-21 19:48:49.899937	2019-07-21 19:48:49.899937
54	44	$2a$11$tyEwGEvLGHEB7CzFmK.y0ulmd5OZR.9LllRUEb8x/OvlxDE12TlrK	2019-07-21 19:50:17.245975	2019-07-21 19:50:17.245975
55	45	$2a$11$gy6yV5cjieIOVucQ5TvN2.CfybL64zmsdNaLwahhvWT6ZXC.j7rqq	2019-07-21 19:51:25.614944	2019-07-21 19:51:25.614944
56	46	$2a$11$FU6yDJUSYtmpwGS0bCudduJi2B.BtYUgCEFT44.h.yGpkV02uWMKK	2019-07-21 19:52:45.124378	2019-07-21 19:52:45.124378
57	47	$2a$11$2iZn.VVNbwxdfCzTG8q1f.Ni67dTFo9uLQG9wvDpCTIxiryAXpcBq	2019-07-21 19:55:20.248498	2019-07-21 19:55:20.248498
58	48	$2a$11$lvNlhvUwWcbh2C1RVpTEL.OZk7bTQ2oHZmzxZGERVDExUIRgOx89K	2019-07-21 19:56:25.332046	2019-07-21 19:56:25.332046
59	49	$2a$11$EKwfkxDvaDar2PJ4tyPsie8cKGR6g6K.Vf6c6p3ybQbJUqzaV1K.q	2019-07-21 19:58:25.022049	2019-07-21 19:58:25.022049
60	42	$2a$11$6AcW5e707kgKpGFEyHU25OCLZ9GqQkChtiXN64XYkOns.kRafwG..	2019-07-22 05:26:09.675	2019-07-22 05:26:09.675
61	39	$2a$11$gfjTaOKoYXmliEPZP/zLXeRejGEmnyEcajGbH4BbKqXgvWF.swQI2	2019-07-23 21:09:09.19529	2019-07-23 21:09:09.19529
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.permissions (id, name, created_at, updated_at) FROM stdin;
1	Add Employees Manually	2019-06-27 10:16:41.122336	2019-06-27 10:16:41.122336
2	Add Employees by CSV	2019-06-27 10:16:41.123768	2019-06-27 10:16:41.123768
3	Remove Employees	2019-06-27 10:16:41.124918	2019-06-27 10:16:41.124918
4	Change Roles	2019-06-27 10:16:41.12597	2019-06-27 10:16:41.12597
5	Edit functionality assigned to roles	2019-06-27 10:16:41.127056	2019-06-27 10:16:41.127056
6	Define company details	2019-06-27 10:16:41.128267	2019-06-27 10:16:41.128267
7	Define templates	2019-06-27 10:16:41.129324	2019-06-27 10:16:41.129324
8	Employee Opinion Surveys (Pulse, Exit, Onboarding)	2019-06-27 10:16:41.130396	2019-06-27 10:16:41.130396
9	Categorize feedback	2019-06-27 10:16:41.131431	2019-06-27 10:16:41.131431
10	Create and assign tasks	2019-06-27 10:16:41.132542	2019-06-27 10:16:41.132542
11	Create Pulse Surveys	2019-06-27 10:16:41.133568	2019-06-27 10:16:41.133568
12	Create Manager Feedback	2019-06-27 10:16:41.134592	2019-06-27 10:16:41.134592
13	Create Coaching feedback	2019-06-27 10:16:41.135651	2019-06-27 10:16:41.135651
14	Anonymous feedback	2019-06-27 10:16:41.136699	2019-06-27 10:16:41.136699
15	360 Feedback	2019-06-27 10:16:41.137742	2019-06-27 10:16:41.137742
16	Hi5	2019-06-27 10:16:41.138805	2019-06-27 10:16:41.138805
17	Tasks	2019-06-27 10:16:41.139888	2019-06-27 10:16:41.139888
18	Dashboard	2019-06-27 10:16:41.141035	2019-06-27 10:16:41.141035
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.questions (id, question_type, description, active, created_at, updated_at, choices, "order", min, max, step, driver, tenure_group, tenure_on_delivery, employee_group, department) FROM stdin;
1	0	How much would you rate the company overall?	t	2019-06-27 10:31:07.559314	2019-06-27 10:31:07.559314	{"{:value=>1, :repr=>\\"😖\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>2, :repr=>\\"😣\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>3, :repr=>\\"😐\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>4, :repr=>\\"😊\\", :responses=>[\\"Great to hear that!!\\", \\"Happy to hear that!!\\"]}"}	0	0	0	0	\N	\N	\N	\N	\N
2	0	Are you satisfied with work here?	t	2019-06-27 10:31:07.572063	2019-06-27 10:31:07.572063	{"{:value=>1, :repr=>\\"😖\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>2, :repr=>\\"😣\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>3, :repr=>\\"😐\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>4, :repr=>\\"😊\\", :responses=>[\\"Great to hear that!!\\", \\"Happy to hear that!!\\"]}"}	2	0	0	0	\N	\N	\N	\N	\N
3	0	How much would you rate the company food?	t	2019-06-27 10:31:07.579851	2019-06-27 10:31:07.579851	{"{:value=>1, :repr=>\\"😖\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>2, :repr=>\\"😣\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>3, :repr=>\\"😐\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>4, :repr=>\\"😊\\", :responses=>[\\"Great to hear that!!\\", \\"Happy to hear that!!\\"]}"}	3	0	0	0	\N	\N	\N	\N	\N
4	0	How likely would you recommend a friend to join this company?	t	2019-06-27 10:31:07.587531	2019-06-27 10:31:07.587531	{"{:value=>1, :repr=>\\"😖\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>2, :repr=>\\"😣\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>3, :repr=>\\"😐\\", :responses=>[\\"Sorry to hear that. I hope that changes soon\\", \\"Thank you for your honest feedback!!\\", \\"Thank you for sharing\\", \\"Appreciate your response\\"]}","{:value=>4, :repr=>\\"😊\\", :responses=>[\\"Great to hear that!!\\", \\"Happy to hear that!!\\"]}"}	1	0	0	0	\N	\N	\N	\N	\N
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.role_permissions (id, role_id, permission_id, created_at, updated_at) FROM stdin;
1	1	1	2019-06-27 10:16:41.187375	2019-06-27 10:16:41.187375
2	1	2	2019-06-27 10:16:41.189519	2019-06-27 10:16:41.189519
3	1	3	2019-06-27 10:16:41.191187	2019-06-27 10:16:41.191187
4	1	4	2019-06-27 10:16:41.192955	2019-06-27 10:16:41.192955
5	1	5	2019-06-27 10:16:41.194748	2019-06-27 10:16:41.194748
6	1	6	2019-06-27 10:16:41.197152	2019-06-27 10:16:41.197152
7	1	7	2019-06-27 10:16:41.1988	2019-06-27 10:16:41.1988
8	1	8	2019-06-27 10:16:41.200627	2019-06-27 10:16:41.200627
9	1	9	2019-06-27 10:16:41.202345	2019-06-27 10:16:41.202345
10	1	10	2019-06-27 10:16:41.204424	2019-06-27 10:16:41.204424
11	1	11	2019-06-27 10:16:41.206446	2019-06-27 10:16:41.206446
12	1	12	2019-06-27 10:16:41.208839	2019-06-27 10:16:41.208839
13	1	13	2019-06-27 10:16:41.210718	2019-06-27 10:16:41.210718
14	1	14	2019-06-27 10:16:41.212712	2019-06-27 10:16:41.212712
15	1	15	2019-06-27 10:16:41.21475	2019-06-27 10:16:41.21475
16	1	16	2019-06-27 10:16:41.217299	2019-06-27 10:16:41.217299
17	1	17	2019-06-27 10:16:41.219253	2019-06-27 10:16:41.219253
18	1	18	2019-06-27 10:16:41.221153	2019-06-27 10:16:41.221153
19	2	10	2019-06-27 10:16:41.226878	2019-06-27 10:16:41.226878
20	2	11	2019-06-27 10:16:41.22888	2019-06-27 10:16:41.22888
21	2	12	2019-06-27 10:16:41.230824	2019-06-27 10:16:41.230824
22	2	13	2019-06-27 10:16:41.232815	2019-06-27 10:16:41.232815
23	2	14	2019-06-27 10:16:41.23479	2019-06-27 10:16:41.23479
24	2	15	2019-06-27 10:16:41.236846	2019-06-27 10:16:41.236846
25	2	16	2019-06-27 10:16:41.238859	2019-06-27 10:16:41.238859
26	2	17	2019-06-27 10:16:41.240916	2019-06-27 10:16:41.240916
27	2	18	2019-06-27 10:16:41.242885	2019-06-27 10:16:41.242885
28	3	14	2019-06-27 10:16:41.247425	2019-06-27 10:16:41.247425
29	3	15	2019-06-27 10:16:41.249454	2019-06-27 10:16:41.249454
30	3	16	2019-06-27 10:16:41.25151	2019-06-27 10:16:41.25151
31	3	18	2019-06-27 10:16:41.253818	2019-06-27 10:16:41.253818
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.roles (id, name, created_at, updated_at) FROM stdin;
1	admin	2019-06-27 10:16:41.110552	2019-06-27 10:16:41.110552
2	manager	2019-06-27 10:16:41.112112	2019-06-27 10:16:41.112112
3	employee	2019-06-27 10:16:41.113199	2019-06-27 10:16:41.113199
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.schema_migrations (version) FROM stdin;
20190625093752
20190524175441
20190605201726
20190624062234
20190509090146
20190408120435
20190614153935
20190306153740
20190509090603
20190621103633
20190614173732
20190515001136
20190531185428
20190517054332
20190609120447
20190609110340
20190408101840
20190509090440
20190408101748
20190408101547
20190607103803
20190408120754
20190607102956
20190524123216
20190608064139
20190617194542
20190414124939
20190624121349
20190509090333
20190605200422
20190614165032
20190314165340
20190614174057
20190326153502
20190627085042
20190703141827
20190707101638
20190709104946
\.


--
-- Data for Name: sms_credits; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.sms_credits (id, transaction_type, "left", purpose, created_at, updated_at) FROM stdin;
1	0	100	Sms credits initialized	2019-06-27 10:16:41.268028	2019-06-27 10:16:41.268028
2	0	10	Buy your sms credits	2019-07-04 13:31:01.286392	2019-07-04 13:31:01.286392
3	0	10	Buy your sms credits	2019-07-04 13:32:32.025716	2019-07-04 13:32:32.025716
4	0	10	Buy your sms credits	2019-07-04 13:36:31.729559	2019-07-04 13:36:31.729559
5	0	10	Buy your sms credits	2019-07-07 04:42:29.350317	2019-07-07 04:42:29.350317
\.


--
-- Data for Name: survey_question_answers; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.survey_question_answers (id, survey_question_id, user_id, value, option, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: survey_questions; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.survey_questions (id, survey_id, question_id, answered, created_at, updated_at) FROM stdin;
1	1	1	f	2019-06-27 10:31:10.240705	2019-06-27 10:31:10.240705
2	1	2	f	2019-06-27 10:31:10.242866	2019-06-27 10:31:10.242866
3	1	3	f	2019-06-27 10:31:10.24447	2019-06-27 10:31:10.24447
4	1	4	f	2019-06-27 10:31:10.246016	2019-06-27 10:31:10.246016
\.


--
-- Data for Name: survey_rules; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.survey_rules (id, survey_id, frequency, reminder_settings, frequency_value, reminder_setting_value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.surveys (id, description, created_at, updated_at, name, active, survey_type, survey_status) FROM stdin;
1	This suvey help us determine if the employees are engaged or not.	2019-06-27 10:30:22.383495	2019-06-27 10:30:22.383495	Employee Opinion Survey	t	0	\N
\.


--
-- Data for Name: templates; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.templates (id, name, sender_name, subject, content, template_type, created_at, updated_at) FROM stdin;
5	Template 5	sonal	Subject 5	Lorem Lipsum	sms	2019-06-27 10:53:26.188727	2019-07-03 11:34:50.317404
4	Template 4	sonal	Subject 4	Lorem Lipsum	sms	2019-06-27 10:53:10.488763	2019-07-03 11:49:18.274602
2	Template 2	sonal	Subject 2	Lorem Lipsum	email	2019-06-27 10:51:45.288557	2019-07-03 11:49:43.073547
3	Template 3	sonal	Subject 3	Lorem Lipsum	email	2019-06-27 10:52:08.168444	2019-07-03 11:49:56.046161
1	Template 1	sonal	Subject 1	Lorem Lipsum	email	2019-06-27 10:51:20.346355	2019-07-03 11:50:09.088558
8	Login Link	\N	{Sender_Name} invites you to share your opinion	{Company_Logo}\n\nHi {Employee_Name},\n\nPlease click on the button below to access your company domain registered with Engagepulse and log in.\n\n[Access your Engagepulse account] (button)\n\n\nNot sure what Engagepulse is?\nEngagePulse is an Employee Experience platform - one that allows you to participate in experience surveys, give anonymous feedback and more. Employees interact with Cara, a digital HR assistant, who collects all individual experiences & opinions for {company}'s senior leadership. Whatever you share with Cara, rest assured that she'll treat it all as confidential & privileged information and will never share anything publicly or to your immediate peers & supervisors.\n\n\nIf you need help with anything related to using the platform, please don't hesitate to contact our support team 💁 at support@engagepulse.com\n\n\n\nCheers,\nCara 👼\n	email	2019-07-06 18:41:48.095724	2019-07-06 18:41:48.095724
9	Password Reset	\N	{Employee_Name} your Engagepulse password request	{Company_Logo}\n\nHi {Employee_Name},\n\nPlease click on the button below to reset your password. \n\n[Reset my password] (button)\n\nIf you did not request to reset your password, please forward this email to support@engagepulse.com.\n\n\nWhat is Engagepulse\nEngagePulse is an Employee Experience platform - one that allows you to participate in experience surveys, give anonymous feedback and more. Employees interact with Cara, a digital HR assistant, who collects all individual experiences & opinions for {company}'s senior leadership. Whatever you share with Cara, rest assured that she'll treat it all as confidential & privileged information and will never share anything publicly or to your immediate peers & supervisors.\n\nIf you need help with anything related to using the platform, please don't hesitate to contact our support team 💁 at support@engagepulse.com\n\n\n\nCheers,\nCara 👼\n	email	2019-07-06 18:41:48.105259	2019-07-06 18:41:48.105259
10	OTP Received	\N	{Employee_Name} your one time password (OTP) for Engagepulse	{Company_Logo}\n\nHi {Employee_Name},\n\nPlease use the OTP below to login to your Engagepulse account.\n\n[OTP code]\n\nIf you did not request this OTP, please forward this email to support@engagepulse.com.\n\nWhat is Engagepulse\nEngagePulse is an Employee Experience platform - one that allows you to participate in experience surveys, give anonymous feedback and more. Employees interact with Cara, a digital HR assistant, who collects all individual experiences & opinions for {company}'s senior leadership. Whatever you share with Cara, rest assured that she'll treat it all as confidential & privileged information and will never share anything publicly or to your immediate peers & supervisors. \n\n\nIf you need help with anything related to using the platform, please don't hesitate to contact our support team 💁 at support@engagepulse.com\n\n\n\nCheers,\nCara 👼\n	email	2019-07-06 18:41:48.178042	2019-07-06 18:41:48.178042
12	Incomplete Survey Reminder 2	\N	{Sender_Name} still waiting to hear from you	{Admin_Banner}\n\nLet's build our culture together\n\n{Employee_Name},\n\nYou have the power to make a big difference for yourself and others working at {Company_Name} by providing your direct feedback. Please take a couple of minutes to share your feedback.\n\nJust to remind you we strictly adhere by our TRUST POLICY which ensures that everything you share in your feedback are kept completely confidential so you can share your feedback without any hesitation. If you are facing any issues submitting your feedback or you think this can be done in a better way please feel free to write to  support@engagepulse.com in confidence.\n\n\n\nWhy Engagepulse\nEngagePulse is an Employee Experience platform - one that allows you to participate in experience surveys, give anonymous feedback and more. Employees interact with Cara, a digital HR assistant, who collects all individual experiences & opinions for {company}'s senior leadership. Whatever you share with Cara, rest assured that she'll treat it all as confidential & privileged information and will never share anything publicly or to your immediate peers & supervisors.\n\nIf you need help with anything related to using the platform, please don't hesitate to contact our support team 💁 at support@engagepulse.com\n\n\n\nCheers,\nCara 👼\n	email	2019-07-06 18:41:51.352487	2019-07-06 18:41:51.352487
14	Incomplete Survey Reminder 1	\N	{Sender_Name} still waiting to hear from you	{Admin_Banner}\n\nLet's build our culture together\n\n{Employee_Name},\n\nWe are still waiting for your responses. It will just take a few minutes of your time but you can make a big difference for yourself and others working at {Company_Name} by providing your true and fearless feedback. \n\n[Share_My_Opinion]\n\nJust to remind you we strictly adhere by our TRUST POLICY which ensures that everything you share in your feedback are kept completely confidential so you can share your feedback without any hesitation. If you are facing any issues submitting your feedback or you think this can be done in a better way please feel free to write to  support@engagepulse.com in confidence.\n\n\nWhy Engagepulse\nEngagePulse is an Employee Experience platform - one that allows you to participate in experience surveys, give anonymous feedback and more. Employees interact with Cara, a digital HR assistant, who collects all individual experiences & opinions for {company}'s senior leadership. Whatever you share with Cara, rest assured that she'll treat it all as confidential & privileged information and will never share anything publicly or to your immediate peers & supervisors. \n\nIf you need help with anything related to using the platform, please don't hesitate to contact our support team 💁 at support@engagepulse.com\n\n\n\nCheers,\nCara 👼\n	email	2019-07-07 10:30:57.919712	2019-07-07 10:30:57.919712
13	Survey Invitation Link	\N	{Sender_Name} invites you to share your opinion	\n{Admin_Banner}\n\nHi {employee_name}, \n\nPlease share your direct and unbiased feedback with us/me using the link below.  Be assured that your responses are strictly confidential and governed by our Trust Policy.\n\n[share_my_opinion]\n\nYour continuous feedback will help us make the right changes at {Company_Name} and make it a better place to work and grow.\n\n\nNot sure what this new feedback platform is?\nEngagePulse is an Employee Experience platform - one that allows you to participate in experience surveys, give anonymous feedback and more. Employees interact with Cara, a digital HR assistant, who collects all individual experiences & opinions for {company_name}'s senior leadership. Whatever you share with Cara, rest assured that she'll treat it all as confidential & privileged information and will never share anything publicly or to your immediate peers & supervisors.\n\nIf you need help with anything related to using the platform, please don't hesitate to contact our support team 💁 at support@engagepulse.com\n\nCheers,\n{Leader_Name}\n	email	2019-07-07 10:06:37.675399	2019-07-07 16:45:14.399214
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.user_roles (id, user_id, role_id, created_at, updated_at) FROM stdin;
1	1	1	2019-06-27 10:46:06.3505	2019-06-27 10:46:06.3505
2	2	1	2019-06-27 10:46:12.110546	2019-06-27 10:46:12.110546
3	8	3	2019-07-02 13:02:52.227145	2019-07-02 13:02:52.227145
4	9	3	2019-07-03 09:54:15.758294	2019-07-03 09:54:15.758294
5	10	3	2019-07-03 09:55:25.559215	2019-07-03 09:55:25.559215
6	11	3	2019-07-04 07:53:39.757937	2019-07-04 07:53:39.757937
7	12	3	2019-07-04 13:03:14.924439	2019-07-04 13:03:14.924439
8	13	3	2019-07-04 21:32:37.872707	2019-07-04 21:32:37.872707
9	14	3	2019-07-04 21:33:24.502558	2019-07-04 21:33:24.502558
10	15	3	2019-07-04 21:34:13.961765	2019-07-04 21:34:13.961765
11	16	3	2019-07-04 21:34:38.483549	2019-07-04 21:34:38.483549
12	17	3	2019-07-04 21:38:35.010335	2019-07-04 21:38:35.010335
13	18	3	2019-07-04 21:38:58.783193	2019-07-04 21:38:58.783193
14	19	3	2019-07-04 21:55:37.798246	2019-07-04 21:55:37.798246
15	20	3	2019-07-04 21:58:28.720431	2019-07-04 21:58:28.720431
16	21	3	2019-07-04 21:59:22.14437	2019-07-04 21:59:22.14437
17	22	3	2019-07-04 22:00:09.652047	2019-07-04 22:00:09.652047
18	23	3	2019-07-05 14:50:30.300605	2019-07-05 14:50:30.300605
19	24	3	2019-07-05 17:02:47.814237	2019-07-05 17:02:47.814237
20	25	3	2019-07-06 06:20:42.610707	2019-07-06 06:20:42.610707
21	26	3	2019-07-06 15:07:20.464381	2019-07-06 15:07:20.464381
22	27	3	2019-07-06 15:31:00.585403	2019-07-06 15:31:00.585403
23	28	3	2019-07-06 18:23:10.033286	2019-07-06 18:23:10.033286
24	29	3	2019-07-06 18:27:53.033994	2019-07-06 18:27:53.033994
25	30	3	2019-07-06 18:46:21.199336	2019-07-06 18:46:21.199336
26	31	3	2019-07-06 18:50:31.680673	2019-07-06 18:50:31.680673
27	32	3	2019-07-10 12:21:03.652241	2019-07-10 12:21:03.652241
28	33	3	2019-07-11 15:38:53.913388	2019-07-11 15:38:53.913388
29	34	3	2019-07-15 15:56:40.869405	2019-07-15 15:56:40.869405
30	35	3	2019-07-15 16:36:40.522375	2019-07-15 16:36:40.522375
31	36	3	2019-07-15 16:50:00.03817	2019-07-15 16:50:00.03817
32	37	3	2019-07-15 16:55:30.334459	2019-07-15 16:55:30.334459
33	38	3	2019-07-18 03:37:22.387088	2019-07-18 03:37:22.387088
34	39	3	2019-07-21 05:56:37.734871	2019-07-21 05:56:37.734871
35	40	3	2019-07-21 19:27:17.280781	2019-07-21 19:27:17.280781
36	41	3	2019-07-21 19:30:46.789848	2019-07-21 19:30:46.789848
37	42	3	2019-07-21 19:32:16.115799	2019-07-21 19:32:16.115799
38	43	3	2019-07-21 19:48:49.904865	2019-07-21 19:48:49.904865
39	44	3	2019-07-21 19:50:17.25074	2019-07-21 19:50:17.25074
40	45	3	2019-07-21 19:51:25.619541	2019-07-21 19:51:25.619541
41	46	3	2019-07-21 19:52:45.129009	2019-07-21 19:52:45.129009
42	47	3	2019-07-21 19:55:20.253425	2019-07-21 19:55:20.253425
43	48	3	2019-07-21 19:56:25.337391	2019-07-21 19:56:25.337391
44	49	3	2019-07-21 19:58:25.027014	2019-07-21 19:58:25.027014
45	39	1	2019-07-23 21:05:34.458061	2019-07-23 21:05:34.458061
\.


--
-- Data for Name: user_surveys; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.user_surveys (id, user_id, survey_id, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: decabits; Owner: postgres
--

COPY decabits.users (id, email, encrypted_password, phone, otp, name, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, employee_id, department, location, supervisor, head_of_department, date_of_joining, employment_status, active, promotion_date, current_job_role, employment_type, sub_department, account, country, country_code, date_of_birth, termination_date, current_status, toc_accepted) FROM stdin;
9	nimrat@gmail.com	$2a$11$4C9gMCQlmoqjFS1Djao2BukiUnpoCvjJ8qv2I5NnY2AMsW9x1FsXK	98765432786		nimrat	\N	\N	\N	2019-07-03 09:54:15.750703	2019-07-04 11:05:59.860782	0	\N	\N	\N	\N	96f89a5f2f38fb97f867462d25fb513b	\N	\N						13/06/19		0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
4	testuser52@gmail.com	$2a$11$6Xa7inmq0biWbg7pDwHh1eTU46/8BQii4lsIOyIhAj82zBE0ULEGm	7846455714		Test user 52	\N	\N	\N	2019-06-27 11:50:35.778972	2019-07-07 08:11:30.771533	0	\N	\N	\N	\N	\N	\N	\N	52	IT	New delhi	Sahil balta	none	13/06/19	\N	0	05/10/19	Software developer	Full time	Web app	none	India	\N	13/10/95	none	\N	f
5	testuser53@gmail.com	$2a$11$XBw6m3TkqZoKF3zrFD.0g.F5pihhhgf7n.0jkz24qZUcA5i34aG0m	4444487448		Test user 53	\N	\N	\N	2019-06-27 11:50:35.945038	2019-07-07 08:11:34.964005	0	\N	\N	\N	\N	\N	\N	\N	53	IT	New delhi	Sahil balta	none	13/06/19	\N	0	05/10/19	Software developer	Full time	Web app	none	India	\N	13/10/95	none	\N	f
6	testuser54@gmail.com	$2a$11$Zu0XytuR8XUxMlEMWfcbMO6eVx1fOzPa3BX/uWe1Zm.EkP6mXK00m	7879965154		Test user 54	\N	\N	\N	2019-06-27 11:50:36.104099	2019-07-07 08:11:38.839437	0	\N	\N	\N	\N	\N	\N	\N	54	IT	New delhi	Sahil balta	none	13/06/19	\N	0	05/10/19	Software developer	Full time	Web app	none	India	\N	13/10/95	none	\N	f
10	ankita@decaits.com	$2a$11$15FhVFaFeu496Qc8EZnNieUcLjN4.crNi1GLjbLKfzbURAnylkwBu	9876543219		ankita	\N	\N	\N	2019-07-03 09:55:25.552291	2019-07-07 08:11:46.66137	0	\N	\N	\N	\N	2d69250cf754525117abc7464111cdf1	\N	\N						13/06/19		0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
3	testuser51@gmail.com	$2a$11$kp3T7bUx4aFa0MdGa0rx2OqhHIo7JpoNhZcxEz.d5hXzAJb3H5GIC	5455468464		Test user 51	\N	\N	\N	2019-06-27 11:50:35.612256	2019-07-02 13:49:04.070452	4	2019-07-02 13:49:04.069229	2019-07-02 13:22:03.86228	117.212.113.85	117.212.113.85	\N	\N	\N	51	IT	New delhi	Sahil balta	none	13/06/19	\N	0	05/10/19	Software developer	Full time	Web app	none	India	\N	13/10/95	none	\N	f
7	newuser@abc.com	$2a$11$GyUKqNgUzTV6hSZ4TFuBcOrPpeWGuEkR4q94F3SIfwCaGjcORqRlC	3333333333		Rajat Jain	\N	\N	\N	2019-06-28 10:40:11.994606	2019-07-07 08:11:51.658427	0	\N	\N	\N	\N	\N	\N	\N	34	\N	\N	\N	\N	13/06/19	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
25	deathping1994@gmail.com	$2a$11$mkO86MFRl8ID6/XlGivQWe.a9.zCpf/wNHVXSsQOpqy7nVp7ZwGPK	8375847862	61852	Gaurav Shukla	\N	\N	\N	2019-07-06 06:20:42.583503	2019-07-07 08:11:56.79606	0	\N	\N	\N	\N	41d19699bfd38f12027337bb64173ff8	\N	\N						13/06/19		0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
1	sahil@zyloto.com	$2a$11$6BAJxNE4ISrC7liqCxrkveP6FkVGG8dhakXdf/Al4xc42eqgYFZzq	9999925147	10145	Shubham	\N	\N	\N	2019-06-27 10:44:17.566927	2019-07-07 08:12:02.021252	6	2019-06-30 08:02:45.444015	2019-06-27 11:50:20.676962	103.105.96.187	47.31.171.210	\N	\N	\N	\N	\N	\N	\N	\N	13/06/19	\N	0	\N	\N	\N	\N	\N	\N	+1 876	\N	\N	\N	f
24	kesharvani99+j@gmail.com	$2a$11$mIi3LI6iGQIlBWHIbQLH7u8XBfcmhrHukHbI5m2IkVOLEPVDINlHO	7838171560		ashutosh 	\N	\N	\N	2019-07-05 17:02:47.801281	2019-07-07 08:12:06.541604	0	\N	\N	\N	\N	68b58da1b3e4ffa02f55f6974f0d6f05	\N	\N						13/06/19		0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
22	sonal@gmail.com	$2a$11$QFSm8f/RT/oRk2KnUUAGbeYIL/ssU5GDecQHldXkBC6IyJWdLVZt2	9876543210		nihal	\N	\N	\N	2019-07-02 13:02:52.171144	2019-07-07 08:12:11.633689	0	\N	\N	\N	\N	51356582baf7798491fc0463868db4b0	\N	\N						13/06/19		0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
28	gshukla66@gmail.com	$2a$11$cky1mHzbxsVd2n1oQ./5celXHYjjDx5NJUmM9jjEw8L79XXr1K.RK	9044747946	80511	Gaurav Shukla	\N	\N	\N	2019-07-05 14:50:30.248878	2019-07-16 18:02:01.254445	6	2019-07-11 15:17:38.956974	2019-07-10 21:19:25.274612	106.215.37.51	106.215.37.51	\N	2019-07-06 19:15:32.919283	\N	134	Engineering	Lucknow	Jane Valicia	Hari Sadu	13/06/19	Employed	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
40	sparasar@gmail.com	$2a$11$0uElG0Gla8guEw8uazKBduSOpmiOa5p4LtjjvL7W/ddcnZYBsbIYW	639959572320		Ben\tBraun	\N	\N	\N	2019-07-21 19:27:17.266295	2019-07-21 19:27:17.266295	0	\N	\N	\N	\N	f63c8896332ced3ccd820b194ae47c24	\N	\N		Sales	Kuala Lumpur,Malaysia	Neil Davis	Pat Bow	13/06/19	Employed	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
32	newmail4raj@gmail.com	$2a$11$8PdOdIuBKt1i/oMIm3bsB.VicuEa4Qivg29AnIjm2MhpvwK2Yqx3W	09711028993		Raj Baruah	\N	\N	\N	2019-07-10 12:21:03.617208	2019-07-10 12:31:58.657609	0	\N	\N	\N	\N	\N	2019-07-10 12:31:58.352345	\N						13/06/19		0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
41	jane.r@engagepulse.com	$2a$11$p0ZxVWYczdt5XyZ26bG.VOT/lqIln73KyCnlqdYDeyqafzgXdMS0C	635555555555		Jane Ramirez	\N	\N	\N	2019-07-21 19:30:46.776642	2019-07-21 19:30:46.776642	0	\N	\N	\N	\N	c4a15e47698c605aa82d66edef2adcda	\N	\N		Finance	Manila,Philippines	Drew Fronda	Jeremy Aldous	13/06/19	Employed	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
37	ashutosh@engagepulse.com	$2a$11$sbOmQ90OBb2BQoMUZ9ltkegzO2SJerVFC/lP5sMMsb3W3AK2eeH7y	999071459		Ashutosh	\N	\N	\N	2019-07-15 16:36:40.509134	2019-07-17 19:35:52.30661	0	\N	\N	\N	\N	f791023ab1aad07040b09705742625e5	\N	\N						13/06/19		0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
43	joyce.c@engagepulse.com,	$2a$11$Zh5gbmYaENm2MQ78LQads.ZaUBm1A2L6OMyflthN2nJTth78O./02	605555555555		Joyce,Chao	\N	\N	\N	2019-07-21 19:48:49.89119	2019-07-21 19:48:49.89119	0	\N	\N	\N	\N	50c0a7b186a0e061006262244053fd6e	\N	\N		Product,	Kuala Lumpur,Malaysia	Jason Lee	Ben Harvey	13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
44	elsy.d@engagepulse.com	$2a$11$tyEwGEvLGHEB7CzFmK.y0ulmd5OZR.9LllRUEb8x/OvlxDE12TlrK	275555555555		Elsy,Davis	\N	\N	\N	2019-07-21 19:50:17.238182	2019-07-21 19:50:17.238182	0	\N	\N	\N	\N	24a6a1a4b0159af1634e45f04922227b	\N	\N		Product	Cape Town,South Africa	Jason Lee	Ben Harvey	13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
45	romain.s@engagepulse.com	$2a$11$gy6yV5cjieIOVucQ5TvN2.CfybL64zmsdNaLwahhvWT6ZXC.j7rqq	335555555555		Romain,Sicot	\N	\N	\N	2019-07-21 19:51:25.607135	2019-07-21 19:51:25.607135	0	\N	\N	\N	\N	2cfd599efc8c0b557092259c2f69d819	\N	\N		Finance	Paris,France	Drew Fronda	Jeremy Aldous	13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
38	mznrajatjain@gmail.com	$2a$11$l4EgFqvPW7VM8Zx6Cwy0i.wJ1JnmyDZflOHr7FsRa2DtWj8EyXxsK	98974575889		Abc	\N	\N	\N	2019-07-04 07:53:39.673502	2019-07-18 03:37:22.374168	0	\N	\N	\N	\N	86a12d020cb787c606489519fa8047df	\N	\N						13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
46	henry.w@engagepulse.com	$2a$11$FU6yDJUSYtmpwGS0bCudduJi2B.BtYUgCEFT44.h.yGpkV02uWMKK	15555555555		Henry ,Walker	\N	\N	\N	2019-07-21 19:52:45.116124	2019-07-21 19:52:45.116124	0	\N	\N	\N	\N	1b140a269986bdca0f47ea86257400b6	\N	\N		Sales	Delaware,United States	Neil Davis	Pat Bow	13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
42	raj.b@engagepulse.com	$2a$11$6AcW5e707kgKpGFEyHU25OCLZ9GqQkChtiXN64XYkOns.kRafwG..	919650349306		Raj Gupta	\N	\N	\N	2019-07-15 15:56:40.805285	2019-07-22 05:26:09.666383	0	\N	\N	\N	\N	\N	2019-07-22 05:26:09.320678	\N		Engineering	New Delhi,India	Ravi Gupta	Ankit Rao	13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
47	mary.o@engagepulse.com	$2a$11$2iZn.VVNbwxdfCzTG8q1f.Ni67dTFo9uLQG9wvDpCTIxiryAXpcBq	635555555559		Mary Ocampo	\N	\N	\N	2019-07-21 19:55:20.240434	2019-07-21 19:55:20.240434	0	\N	\N	\N	\N	bae6b0d2b2f1f35f9b8e00035bb8876c	\N	\N		Marketing	Manila,Philippines	Kate Ocampo	Kurt Lee	13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
48	nikita.p@engagepulse.com	$2a$11$lvNlhvUwWcbh2C1RVpTEL.OZk7bTQ2oHZmzxZGERVDExUIRgOx89K	919711028993		Nikita Pal	\N	\N	\N	2019-07-21 19:56:25.323544	2019-07-21 19:56:25.323544	0	\N	\N	\N	\N	85af606591e751191858aec5395833f5	\N	\N		Engineering	New Delhi,India	Ravi Gupta	Ankit Rao	13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
49	ashley.f@engagepulse.com	$2a$11$EKwfkxDvaDar2PJ4tyPsie8cKGR6g6K.Vf6c6p3ybQbJUqzaV1K.q	635555555550		Ashley Fronda	\N	\N	\N	2019-07-21 19:58:25.013898	2019-07-21 19:58:25.013898	0	\N	\N	\N	\N	940bcb756d38824351faabfd9d7a4646	\N	\N		Marketing	Manila,Philippines	Kate Ocampo	Kurt Lee	13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
2	zyloto@engagepulse.com	$2a$11$HoY/YPgNVidzjOiF5NAG0eHPtcoweHr/cXVQx1AcGIzYZhHnnD4j2	7894561230	55520	Sahil	\N	\N	\N	2019-06-27 10:45:13.477872	2019-07-24 06:26:10.610807	172	2019-07-23 16:48:56.195721	2019-07-23 16:43:08.725326	47.31.136.55	47.31.136.55	\N	\N	\N	\N	\N	\N	\N	\N	13/06/19	\N	0	\N	\N	\N	\N	\N	\N	+964	\N	\N	\N	t
39	hello@engagepulse.com	$2a$11$gfjTaOKoYXmliEPZP/zLXeRejGEmnyEcajGbH4BbKqXgvWF.swQI2	121212121		Sudeepta	\N	\N	\N	2019-07-21 05:56:37.679969	2019-07-26 15:43:36.090018	39	2019-07-26 15:43:36.088806	2019-07-26 15:19:08.275981	120.29.117.205	120.29.117.205	e389cec2b541de27ea58bfae9fcc1ba7	\N	\N						13/06/19		1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-06-27 10:11:18.602494	2019-06-27 10:11:18.602494
\.


--
-- Data for Name: audits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audits (id, auditable_id, auditable_type, associated_id, associated_type, user_id, user_type, username, action, audited_changes, version, comment, remote_address, request_uuid, created_at) FROM stdin;
1	3	Company	\N	\N	\N	\N	\N	create	---\nname: \nemail: \ncompany_slug: acmecorp1\nphone: \ncountry_code: \nindustry: \nprivacy_policy: \ntime_zone: \nleader: \n	1	\N	103.212.144.87	a1d878ea-4b22-41cf-892a-6dd986126f65	2019-07-06 20:07:55.170135
\.


--
-- Data for Name: clusters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusters (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: clusters_conversations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusters_conversations (id, cluster_id, conversation_id) FROM stdin;
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companies (id, name, email, company_slug, phone, country_code, created_at, updated_at, industry, privacy_policy, time_zone, leader, locale) FROM stdin;
3	\N	\N	acmecorp1	\N	\N	2019-07-06 20:07:55.144572	2019-07-06 20:07:55.144572	\N	\N	\N	\N	en
2	\N	\N	acmecorp	\N	\N	2019-06-27 10:17:18.590105	2019-07-07 08:25:20.393986	\N	\N	(GMT-09:00)- Alaska	\N	en
1	Decabits software	\N	decabits	\N	us	2019-06-27 10:16:40.366879	2019-07-21 05:41:12.691415	Software development	https://decabits.com	(GMT+04:00)- Yerevan	Sahil	es
\.


--
-- Data for Name: conversation_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversation_answers (id, conversation_question_id, user_id, text, value, response, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: conversation_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversation_questions (id, conversation_id, question_text, question_type, driver, tenure_group, tenure_on_delivery, employee_group, department, choices, question_order, is_answered, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: conversations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversations (id, survey_id, user_id, is_editable, expiry, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, order_id, amount, currency_type, receipt, entity, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: password_histories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_histories (id, user_id, encrypted_password, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissions (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (id, question_type, description, active, created_at, updated_at, choices, "order", min, max, step, driver, tenure_group, tenure_on_delivery, employee_group, department) FROM stdin;
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_permissions (id, role_id, permission_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20190306153740
20190314165340
20190326153502
20190408101547
20190408101748
20190408101840
20190408120435
20190408120754
20190414124939
20190509090146
20190509090333
20190509090440
20190509090603
20190515001136
20190517054332
20190524123216
20190524175441
20190531185428
20190605200422
20190605201726
20190607102956
20190607103803
20190608064139
20190609110340
20190609120447
20190614153935
20190614165032
20190614173732
20190614174057
20190617194542
20190621103633
20190624062234
20190624121349
20190625093752
20190627085042
20190703141827
20190707101638
20190709104946
\.


--
-- Data for Name: sms_credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sms_credits (id, transaction_type, "left", purpose, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: survey_question_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_question_answers (id, survey_question_id, user_id, value, option, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: survey_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_questions (id, survey_id, question_id, answered, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: survey_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.survey_rules (id, survey_id, frequency, reminder_settings, frequency_value, reminder_setting_value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.surveys (id, description, created_at, updated_at, name, active, survey_type, survey_status) FROM stdin;
\.


--
-- Data for Name: templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.templates (id, name, sender_name, subject, content, template_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_roles (id, user_id, role_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_surveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_surveys (id, user_id, survey_id, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, phone, otp, name, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, employee_id, department, location, supervisor, head_of_department, date_of_joining, employment_status, active, promotion_date, current_job_role, employment_type, sub_department, account, country, country_code, date_of_birth, termination_date, current_status, toc_accepted) FROM stdin;
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.active_storage_attachments_id_seq', 1, false);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.active_storage_blobs_id_seq', 1, false);


--
-- Name: audits_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.audits_id_seq', 13, true);


--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.clusters_conversations_id_seq', 1, false);


--
-- Name: clusters_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.clusters_id_seq', 1, false);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.companies_id_seq', 1, false);


--
-- Name: conversation_answers_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.conversation_answers_id_seq', 1, false);


--
-- Name: conversation_questions_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.conversation_questions_id_seq', 1, false);


--
-- Name: conversations_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.conversations_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.orders_id_seq', 1, false);


--
-- Name: password_histories_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.password_histories_id_seq', 4, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.permissions_id_seq', 18, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.questions_id_seq', 1, false);


--
-- Name: role_permissions_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.role_permissions_id_seq', 31, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.roles_id_seq', 3, true);


--
-- Name: sms_credits_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.sms_credits_id_seq', 1, true);


--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.survey_question_answers_id_seq', 1, false);


--
-- Name: survey_questions_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.survey_questions_id_seq', 1, false);


--
-- Name: survey_rules_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.survey_rules_id_seq', 1, false);


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.surveys_id_seq', 1, true);


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.templates_id_seq', 1, false);


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.user_roles_id_seq', 4, true);


--
-- Name: user_surveys_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.user_surveys_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: acmecorp; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp.users_id_seq', 4, true);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.active_storage_attachments_id_seq', 1, false);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.active_storage_blobs_id_seq', 1, false);


--
-- Name: audits_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.audits_id_seq', 55, true);


--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.clusters_conversations_id_seq', 1, false);


--
-- Name: clusters_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.clusters_id_seq', 1, false);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.companies_id_seq', 1, false);


--
-- Name: conversation_answers_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.conversation_answers_id_seq', 1, false);


--
-- Name: conversation_questions_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.conversation_questions_id_seq', 1, false);


--
-- Name: conversations_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.conversations_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.orders_id_seq', 1, false);


--
-- Name: password_histories_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.password_histories_id_seq', 1, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.permissions_id_seq', 18, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.questions_id_seq', 1, false);


--
-- Name: role_permissions_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.role_permissions_id_seq', 31, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.roles_id_seq', 3, true);


--
-- Name: sms_credits_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.sms_credits_id_seq', 1, true);


--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.survey_question_answers_id_seq', 1, false);


--
-- Name: survey_questions_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.survey_questions_id_seq', 1, false);


--
-- Name: survey_rules_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.survey_rules_id_seq', 1, false);


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.surveys_id_seq', 1, false);


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.templates_id_seq', 1, false);


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.user_roles_id_seq', 1, true);


--
-- Name: user_surveys_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.user_surveys_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: acmecorp1; Owner: postgres
--

SELECT pg_catalog.setval('acmecorp1.users_id_seq', 1, true);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.active_storage_attachments_id_seq', 12, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.active_storage_blobs_id_seq', 12, true);


--
-- Name: audits_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.audits_id_seq', 383, true);


--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.clusters_conversations_id_seq', 1, false);


--
-- Name: clusters_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.clusters_id_seq', 1, false);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.companies_id_seq', 1, false);


--
-- Name: conversation_answers_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.conversation_answers_id_seq', 1, false);


--
-- Name: conversation_questions_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.conversation_questions_id_seq', 1, false);


--
-- Name: conversations_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.conversations_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.orders_id_seq', 6, true);


--
-- Name: password_histories_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.password_histories_id_seq', 61, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.permissions_id_seq', 18, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.questions_id_seq', 4, true);


--
-- Name: role_permissions_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.role_permissions_id_seq', 31, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.roles_id_seq', 3, true);


--
-- Name: sms_credits_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.sms_credits_id_seq', 5, true);


--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.survey_question_answers_id_seq', 1, false);


--
-- Name: survey_questions_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.survey_questions_id_seq', 4, true);


--
-- Name: survey_rules_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.survey_rules_id_seq', 1, false);


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.surveys_id_seq', 1, true);


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.templates_id_seq', 14, true);


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.user_roles_id_seq', 45, true);


--
-- Name: user_surveys_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.user_surveys_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: decabits; Owner: postgres
--

SELECT pg_catalog.setval('decabits.users_id_seq', 49, true);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);


--
-- Name: audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audits_id_seq', 1, true);


--
-- Name: clusters_conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clusters_conversations_id_seq', 1, false);


--
-- Name: clusters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clusters_id_seq', 1, false);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companies_id_seq', 3, true);


--
-- Name: conversation_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversation_answers_id_seq', 1, false);


--
-- Name: conversation_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversation_questions_id_seq', 1, false);


--
-- Name: conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversations_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: password_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.password_histories_id_seq', 1, false);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 1, false);


--
-- Name: role_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_permissions_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: sms_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sms_credits_id_seq', 1, false);


--
-- Name: survey_question_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_question_answers_id_seq', 1, false);


--
-- Name: survey_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_questions_id_seq', 1, false);


--
-- Name: survey_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.survey_rules_id_seq', 1, false);


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.surveys_id_seq', 1, false);


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.templates_id_seq', 1, false);


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_roles_id_seq', 1, false);


--
-- Name: user_surveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_surveys_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: audits audits_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- Name: clusters_conversations clusters_conversations_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.clusters_conversations
    ADD CONSTRAINT clusters_conversations_pkey PRIMARY KEY (id);


--
-- Name: clusters clusters_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.clusters
    ADD CONSTRAINT clusters_pkey PRIMARY KEY (id);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: conversation_answers conversation_answers_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.conversation_answers
    ADD CONSTRAINT conversation_answers_pkey PRIMARY KEY (id);


--
-- Name: conversation_questions conversation_questions_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.conversation_questions
    ADD CONSTRAINT conversation_questions_pkey PRIMARY KEY (id);


--
-- Name: conversations conversations_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: password_histories password_histories_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.password_histories
    ADD CONSTRAINT password_histories_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sms_credits sms_credits_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.sms_credits
    ADD CONSTRAINT sms_credits_pkey PRIMARY KEY (id);


--
-- Name: survey_question_answers survey_question_answers_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.survey_question_answers
    ADD CONSTRAINT survey_question_answers_pkey PRIMARY KEY (id);


--
-- Name: survey_questions survey_questions_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.survey_questions
    ADD CONSTRAINT survey_questions_pkey PRIMARY KEY (id);


--
-- Name: survey_rules survey_rules_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.survey_rules
    ADD CONSTRAINT survey_rules_pkey PRIMARY KEY (id);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: user_surveys user_surveys_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.user_surveys
    ADD CONSTRAINT user_surveys_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: audits audits_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- Name: clusters_conversations clusters_conversations_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.clusters_conversations
    ADD CONSTRAINT clusters_conversations_pkey PRIMARY KEY (id);


--
-- Name: clusters clusters_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.clusters
    ADD CONSTRAINT clusters_pkey PRIMARY KEY (id);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: conversation_answers conversation_answers_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.conversation_answers
    ADD CONSTRAINT conversation_answers_pkey PRIMARY KEY (id);


--
-- Name: conversation_questions conversation_questions_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.conversation_questions
    ADD CONSTRAINT conversation_questions_pkey PRIMARY KEY (id);


--
-- Name: conversations conversations_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: password_histories password_histories_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.password_histories
    ADD CONSTRAINT password_histories_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sms_credits sms_credits_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.sms_credits
    ADD CONSTRAINT sms_credits_pkey PRIMARY KEY (id);


--
-- Name: survey_question_answers survey_question_answers_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.survey_question_answers
    ADD CONSTRAINT survey_question_answers_pkey PRIMARY KEY (id);


--
-- Name: survey_questions survey_questions_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.survey_questions
    ADD CONSTRAINT survey_questions_pkey PRIMARY KEY (id);


--
-- Name: survey_rules survey_rules_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.survey_rules
    ADD CONSTRAINT survey_rules_pkey PRIMARY KEY (id);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: user_surveys user_surveys_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.user_surveys
    ADD CONSTRAINT user_surveys_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: audits audits_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- Name: clusters_conversations clusters_conversations_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.clusters_conversations
    ADD CONSTRAINT clusters_conversations_pkey PRIMARY KEY (id);


--
-- Name: clusters clusters_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.clusters
    ADD CONSTRAINT clusters_pkey PRIMARY KEY (id);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: conversation_answers conversation_answers_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.conversation_answers
    ADD CONSTRAINT conversation_answers_pkey PRIMARY KEY (id);


--
-- Name: conversation_questions conversation_questions_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.conversation_questions
    ADD CONSTRAINT conversation_questions_pkey PRIMARY KEY (id);


--
-- Name: conversations conversations_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: password_histories password_histories_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.password_histories
    ADD CONSTRAINT password_histories_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sms_credits sms_credits_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.sms_credits
    ADD CONSTRAINT sms_credits_pkey PRIMARY KEY (id);


--
-- Name: survey_question_answers survey_question_answers_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.survey_question_answers
    ADD CONSTRAINT survey_question_answers_pkey PRIMARY KEY (id);


--
-- Name: survey_questions survey_questions_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.survey_questions
    ADD CONSTRAINT survey_questions_pkey PRIMARY KEY (id);


--
-- Name: survey_rules survey_rules_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.survey_rules
    ADD CONSTRAINT survey_rules_pkey PRIMARY KEY (id);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: user_surveys user_surveys_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.user_surveys
    ADD CONSTRAINT user_surveys_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: audits audits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- Name: clusters_conversations clusters_conversations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusters_conversations
    ADD CONSTRAINT clusters_conversations_pkey PRIMARY KEY (id);


--
-- Name: clusters clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT clusters_pkey PRIMARY KEY (id);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: conversation_answers conversation_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversation_answers
    ADD CONSTRAINT conversation_answers_pkey PRIMARY KEY (id);


--
-- Name: conversation_questions conversation_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversation_questions
    ADD CONSTRAINT conversation_questions_pkey PRIMARY KEY (id);


--
-- Name: conversations conversations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: password_histories password_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_histories
    ADD CONSTRAINT password_histories_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sms_credits sms_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sms_credits
    ADD CONSTRAINT sms_credits_pkey PRIMARY KEY (id);


--
-- Name: survey_question_answers survey_question_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_question_answers
    ADD CONSTRAINT survey_question_answers_pkey PRIMARY KEY (id);


--
-- Name: survey_questions survey_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_questions
    ADD CONSTRAINT survey_questions_pkey PRIMARY KEY (id);


--
-- Name: survey_rules survey_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.survey_rules
    ADD CONSTRAINT survey_rules_pkey PRIMARY KEY (id);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: user_surveys user_surveys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_surveys
    ADD CONSTRAINT user_surveys_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: associated_index; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX associated_index ON acmecorp.audits USING btree (associated_type, associated_id);


--
-- Name: auditable_index; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX auditable_index ON acmecorp.audits USING btree (auditable_type, auditable_id, version);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON acmecorp.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON acmecorp.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON acmecorp.active_storage_blobs USING btree (key);


--
-- Name: index_audits_on_created_at; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_audits_on_created_at ON acmecorp.audits USING btree (created_at);


--
-- Name: index_audits_on_request_uuid; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_audits_on_request_uuid ON acmecorp.audits USING btree (request_uuid);


--
-- Name: index_clusters_conversations_on_cluster_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_clusters_conversations_on_cluster_id ON acmecorp.clusters_conversations USING btree (cluster_id);


--
-- Name: index_clusters_conversations_on_conversation_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_clusters_conversations_on_conversation_id ON acmecorp.clusters_conversations USING btree (conversation_id);


--
-- Name: index_clusters_on_name; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_clusters_on_name ON acmecorp.clusters USING btree (name);


--
-- Name: index_conversation_answers_on_conversation_question_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_conversation_answers_on_conversation_question_id ON acmecorp.conversation_answers USING btree (conversation_question_id);


--
-- Name: index_conversation_answers_on_user_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_conversation_answers_on_user_id ON acmecorp.conversation_answers USING btree (user_id);


--
-- Name: index_conversation_questions_on_conversation_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_conversation_questions_on_conversation_id ON acmecorp.conversation_questions USING btree (conversation_id);


--
-- Name: index_conversation_questions_on_question_type; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_conversation_questions_on_question_type ON acmecorp.conversation_questions USING btree (question_type);


--
-- Name: index_conversations_on_survey_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_conversations_on_survey_id ON acmecorp.conversations USING btree (survey_id);


--
-- Name: index_conversations_on_user_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_conversations_on_user_id ON acmecorp.conversations USING btree (user_id);


--
-- Name: index_orders_on_order_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_orders_on_order_id ON acmecorp.orders USING btree (order_id);


--
-- Name: index_orders_on_status; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_orders_on_status ON acmecorp.orders USING btree (status);


--
-- Name: index_password_histories_on_user_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_password_histories_on_user_id ON acmecorp.password_histories USING btree (user_id);


--
-- Name: index_role_permissions_on_permission_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_role_permissions_on_permission_id ON acmecorp.role_permissions USING btree (permission_id);


--
-- Name: index_role_permissions_on_role_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_role_permissions_on_role_id ON acmecorp.role_permissions USING btree (role_id);


--
-- Name: index_sms_credits_on_left; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_sms_credits_on_left ON acmecorp.sms_credits USING btree ("left");


--
-- Name: index_sms_credits_on_transaction_type; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_sms_credits_on_transaction_type ON acmecorp.sms_credits USING btree (transaction_type);


--
-- Name: index_survey_question_answers_on_survey_question_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_survey_question_answers_on_survey_question_id ON acmecorp.survey_question_answers USING btree (survey_question_id);


--
-- Name: index_survey_question_answers_on_user_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_survey_question_answers_on_user_id ON acmecorp.survey_question_answers USING btree (user_id);


--
-- Name: index_survey_questions_on_question_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_survey_questions_on_question_id ON acmecorp.survey_questions USING btree (question_id);


--
-- Name: index_survey_questions_on_survey_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_survey_questions_on_survey_id ON acmecorp.survey_questions USING btree (survey_id);


--
-- Name: index_survey_rules_on_survey_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_survey_rules_on_survey_id ON acmecorp.survey_rules USING btree (survey_id);


--
-- Name: index_templates_on_name; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_templates_on_name ON acmecorp.templates USING btree (name);


--
-- Name: index_user_roles_on_role_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_user_roles_on_role_id ON acmecorp.user_roles USING btree (role_id);


--
-- Name: index_user_roles_on_user_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_user_roles_on_user_id ON acmecorp.user_roles USING btree (user_id);


--
-- Name: index_user_surveys_on_survey_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_user_surveys_on_survey_id ON acmecorp.user_surveys USING btree (survey_id);


--
-- Name: index_user_surveys_on_user_id; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX index_user_surveys_on_user_id ON acmecorp.user_surveys USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON acmecorp.users USING btree (email);


--
-- Name: index_users_on_phone; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_phone ON acmecorp.users USING btree (phone);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON acmecorp.users USING btree (reset_password_token);


--
-- Name: user_index; Type: INDEX; Schema: acmecorp; Owner: postgres
--

CREATE INDEX user_index ON acmecorp.audits USING btree (user_id, user_type);


--
-- Name: associated_index; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX associated_index ON acmecorp1.audits USING btree (associated_type, associated_id);


--
-- Name: auditable_index; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX auditable_index ON acmecorp1.audits USING btree (auditable_type, auditable_id, version);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON acmecorp1.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON acmecorp1.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON acmecorp1.active_storage_blobs USING btree (key);


--
-- Name: index_audits_on_created_at; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_audits_on_created_at ON acmecorp1.audits USING btree (created_at);


--
-- Name: index_audits_on_request_uuid; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_audits_on_request_uuid ON acmecorp1.audits USING btree (request_uuid);


--
-- Name: index_clusters_conversations_on_cluster_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_clusters_conversations_on_cluster_id ON acmecorp1.clusters_conversations USING btree (cluster_id);


--
-- Name: index_clusters_conversations_on_conversation_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_clusters_conversations_on_conversation_id ON acmecorp1.clusters_conversations USING btree (conversation_id);


--
-- Name: index_clusters_on_name; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_clusters_on_name ON acmecorp1.clusters USING btree (name);


--
-- Name: index_conversation_answers_on_conversation_question_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_conversation_answers_on_conversation_question_id ON acmecorp1.conversation_answers USING btree (conversation_question_id);


--
-- Name: index_conversation_answers_on_user_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_conversation_answers_on_user_id ON acmecorp1.conversation_answers USING btree (user_id);


--
-- Name: index_conversation_questions_on_conversation_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_conversation_questions_on_conversation_id ON acmecorp1.conversation_questions USING btree (conversation_id);


--
-- Name: index_conversation_questions_on_question_type; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_conversation_questions_on_question_type ON acmecorp1.conversation_questions USING btree (question_type);


--
-- Name: index_conversations_on_survey_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_conversations_on_survey_id ON acmecorp1.conversations USING btree (survey_id);


--
-- Name: index_conversations_on_user_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_conversations_on_user_id ON acmecorp1.conversations USING btree (user_id);


--
-- Name: index_orders_on_order_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_orders_on_order_id ON acmecorp1.orders USING btree (order_id);


--
-- Name: index_orders_on_status; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_orders_on_status ON acmecorp1.orders USING btree (status);


--
-- Name: index_password_histories_on_user_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_password_histories_on_user_id ON acmecorp1.password_histories USING btree (user_id);


--
-- Name: index_role_permissions_on_permission_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_role_permissions_on_permission_id ON acmecorp1.role_permissions USING btree (permission_id);


--
-- Name: index_role_permissions_on_role_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_role_permissions_on_role_id ON acmecorp1.role_permissions USING btree (role_id);


--
-- Name: index_sms_credits_on_left; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_sms_credits_on_left ON acmecorp1.sms_credits USING btree ("left");


--
-- Name: index_sms_credits_on_transaction_type; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_sms_credits_on_transaction_type ON acmecorp1.sms_credits USING btree (transaction_type);


--
-- Name: index_survey_question_answers_on_survey_question_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_survey_question_answers_on_survey_question_id ON acmecorp1.survey_question_answers USING btree (survey_question_id);


--
-- Name: index_survey_question_answers_on_user_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_survey_question_answers_on_user_id ON acmecorp1.survey_question_answers USING btree (user_id);


--
-- Name: index_survey_questions_on_question_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_survey_questions_on_question_id ON acmecorp1.survey_questions USING btree (question_id);


--
-- Name: index_survey_questions_on_survey_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_survey_questions_on_survey_id ON acmecorp1.survey_questions USING btree (survey_id);


--
-- Name: index_survey_rules_on_survey_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_survey_rules_on_survey_id ON acmecorp1.survey_rules USING btree (survey_id);


--
-- Name: index_templates_on_name; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_templates_on_name ON acmecorp1.templates USING btree (name);


--
-- Name: index_user_roles_on_role_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_user_roles_on_role_id ON acmecorp1.user_roles USING btree (role_id);


--
-- Name: index_user_roles_on_user_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_user_roles_on_user_id ON acmecorp1.user_roles USING btree (user_id);


--
-- Name: index_user_surveys_on_survey_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_user_surveys_on_survey_id ON acmecorp1.user_surveys USING btree (survey_id);


--
-- Name: index_user_surveys_on_user_id; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX index_user_surveys_on_user_id ON acmecorp1.user_surveys USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON acmecorp1.users USING btree (email);


--
-- Name: index_users_on_phone; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_phone ON acmecorp1.users USING btree (phone);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON acmecorp1.users USING btree (reset_password_token);


--
-- Name: user_index; Type: INDEX; Schema: acmecorp1; Owner: postgres
--

CREATE INDEX user_index ON acmecorp1.audits USING btree (user_id, user_type);


--
-- Name: associated_index; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX associated_index ON decabits.audits USING btree (associated_type, associated_id);


--
-- Name: auditable_index; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX auditable_index ON decabits.audits USING btree (auditable_type, auditable_id, version);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON decabits.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON decabits.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON decabits.active_storage_blobs USING btree (key);


--
-- Name: index_audits_on_created_at; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_audits_on_created_at ON decabits.audits USING btree (created_at);


--
-- Name: index_audits_on_request_uuid; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_audits_on_request_uuid ON decabits.audits USING btree (request_uuid);


--
-- Name: index_clusters_conversations_on_cluster_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_clusters_conversations_on_cluster_id ON decabits.clusters_conversations USING btree (cluster_id);


--
-- Name: index_clusters_conversations_on_conversation_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_clusters_conversations_on_conversation_id ON decabits.clusters_conversations USING btree (conversation_id);


--
-- Name: index_clusters_on_name; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_clusters_on_name ON decabits.clusters USING btree (name);


--
-- Name: index_conversation_answers_on_conversation_question_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_conversation_answers_on_conversation_question_id ON decabits.conversation_answers USING btree (conversation_question_id);


--
-- Name: index_conversation_answers_on_user_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_conversation_answers_on_user_id ON decabits.conversation_answers USING btree (user_id);


--
-- Name: index_conversation_questions_on_conversation_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_conversation_questions_on_conversation_id ON decabits.conversation_questions USING btree (conversation_id);


--
-- Name: index_conversation_questions_on_question_type; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_conversation_questions_on_question_type ON decabits.conversation_questions USING btree (question_type);


--
-- Name: index_conversations_on_survey_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_conversations_on_survey_id ON decabits.conversations USING btree (survey_id);


--
-- Name: index_conversations_on_user_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_conversations_on_user_id ON decabits.conversations USING btree (user_id);


--
-- Name: index_orders_on_order_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_orders_on_order_id ON decabits.orders USING btree (order_id);


--
-- Name: index_orders_on_status; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_orders_on_status ON decabits.orders USING btree (status);


--
-- Name: index_password_histories_on_user_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_password_histories_on_user_id ON decabits.password_histories USING btree (user_id);


--
-- Name: index_role_permissions_on_permission_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_role_permissions_on_permission_id ON decabits.role_permissions USING btree (permission_id);


--
-- Name: index_role_permissions_on_role_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_role_permissions_on_role_id ON decabits.role_permissions USING btree (role_id);


--
-- Name: index_sms_credits_on_left; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_sms_credits_on_left ON decabits.sms_credits USING btree ("left");


--
-- Name: index_sms_credits_on_transaction_type; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_sms_credits_on_transaction_type ON decabits.sms_credits USING btree (transaction_type);


--
-- Name: index_survey_question_answers_on_survey_question_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_survey_question_answers_on_survey_question_id ON decabits.survey_question_answers USING btree (survey_question_id);


--
-- Name: index_survey_question_answers_on_user_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_survey_question_answers_on_user_id ON decabits.survey_question_answers USING btree (user_id);


--
-- Name: index_survey_questions_on_question_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_survey_questions_on_question_id ON decabits.survey_questions USING btree (question_id);


--
-- Name: index_survey_questions_on_survey_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_survey_questions_on_survey_id ON decabits.survey_questions USING btree (survey_id);


--
-- Name: index_survey_rules_on_survey_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_survey_rules_on_survey_id ON decabits.survey_rules USING btree (survey_id);


--
-- Name: index_templates_on_name; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_templates_on_name ON decabits.templates USING btree (name);


--
-- Name: index_user_roles_on_role_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_user_roles_on_role_id ON decabits.user_roles USING btree (role_id);


--
-- Name: index_user_roles_on_user_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_user_roles_on_user_id ON decabits.user_roles USING btree (user_id);


--
-- Name: index_user_surveys_on_survey_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_user_surveys_on_survey_id ON decabits.user_surveys USING btree (survey_id);


--
-- Name: index_user_surveys_on_user_id; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX index_user_surveys_on_user_id ON decabits.user_surveys USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON decabits.users USING btree (email);


--
-- Name: index_users_on_phone; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_phone ON decabits.users USING btree (phone);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON decabits.users USING btree (reset_password_token);


--
-- Name: user_index; Type: INDEX; Schema: decabits; Owner: postgres
--

CREATE INDEX user_index ON decabits.audits USING btree (user_id, user_type);


--
-- Name: associated_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX associated_index ON public.audits USING btree (associated_type, associated_id);


--
-- Name: auditable_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auditable_index ON public.audits USING btree (auditable_type, auditable_id, version);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_audits_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_audits_on_created_at ON public.audits USING btree (created_at);


--
-- Name: index_audits_on_request_uuid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_audits_on_request_uuid ON public.audits USING btree (request_uuid);


--
-- Name: index_clusters_conversations_on_cluster_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_clusters_conversations_on_cluster_id ON public.clusters_conversations USING btree (cluster_id);


--
-- Name: index_clusters_conversations_on_conversation_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_clusters_conversations_on_conversation_id ON public.clusters_conversations USING btree (conversation_id);


--
-- Name: index_clusters_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_clusters_on_name ON public.clusters USING btree (name);


--
-- Name: index_conversation_answers_on_conversation_question_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_conversation_answers_on_conversation_question_id ON public.conversation_answers USING btree (conversation_question_id);


--
-- Name: index_conversation_answers_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_conversation_answers_on_user_id ON public.conversation_answers USING btree (user_id);


--
-- Name: index_conversation_questions_on_conversation_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_conversation_questions_on_conversation_id ON public.conversation_questions USING btree (conversation_id);


--
-- Name: index_conversation_questions_on_question_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_conversation_questions_on_question_type ON public.conversation_questions USING btree (question_type);


--
-- Name: index_conversations_on_survey_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_conversations_on_survey_id ON public.conversations USING btree (survey_id);


--
-- Name: index_conversations_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_conversations_on_user_id ON public.conversations USING btree (user_id);


--
-- Name: index_orders_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_orders_on_order_id ON public.orders USING btree (order_id);


--
-- Name: index_orders_on_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_orders_on_status ON public.orders USING btree (status);


--
-- Name: index_password_histories_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_password_histories_on_user_id ON public.password_histories USING btree (user_id);


--
-- Name: index_role_permissions_on_permission_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_role_permissions_on_permission_id ON public.role_permissions USING btree (permission_id);


--
-- Name: index_role_permissions_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_role_permissions_on_role_id ON public.role_permissions USING btree (role_id);


--
-- Name: index_sms_credits_on_left; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sms_credits_on_left ON public.sms_credits USING btree ("left");


--
-- Name: index_sms_credits_on_transaction_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sms_credits_on_transaction_type ON public.sms_credits USING btree (transaction_type);


--
-- Name: index_survey_question_answers_on_survey_question_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_survey_question_answers_on_survey_question_id ON public.survey_question_answers USING btree (survey_question_id);


--
-- Name: index_survey_question_answers_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_survey_question_answers_on_user_id ON public.survey_question_answers USING btree (user_id);


--
-- Name: index_survey_questions_on_question_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_survey_questions_on_question_id ON public.survey_questions USING btree (question_id);


--
-- Name: index_survey_questions_on_survey_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_survey_questions_on_survey_id ON public.survey_questions USING btree (survey_id);


--
-- Name: index_survey_rules_on_survey_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_survey_rules_on_survey_id ON public.survey_rules USING btree (survey_id);


--
-- Name: index_templates_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_templates_on_name ON public.templates USING btree (name);


--
-- Name: index_user_roles_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_roles_on_role_id ON public.user_roles USING btree (role_id);


--
-- Name: index_user_roles_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_roles_on_user_id ON public.user_roles USING btree (user_id);


--
-- Name: index_user_surveys_on_survey_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_surveys_on_survey_id ON public.user_surveys USING btree (survey_id);


--
-- Name: index_user_surveys_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_surveys_on_user_id ON public.user_surveys USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_phone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_phone ON public.users USING btree (phone);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: user_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_index ON public.audits USING btree (user_id, user_type);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: acmecorp; Owner: postgres
--

ALTER TABLE ONLY acmecorp.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES acmecorp.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: acmecorp1; Owner: postgres
--

ALTER TABLE ONLY acmecorp1.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES acmecorp1.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: decabits; Owner: postgres
--

ALTER TABLE ONLY decabits.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES decabits.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

