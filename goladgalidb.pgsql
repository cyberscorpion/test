--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.13
-- Dumped by pg_dump version 9.6.13

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO goldgali_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO goldgali_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO goldgali_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO goldgali_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO goldgali_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO goldgali_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: cart_cart; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.cart_cart (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer,
    shipping_cost integer NOT NULL,
    CONSTRAINT cart_cart_shipping_cost_check CHECK ((shipping_cost >= 0))
);


ALTER TABLE public.cart_cart OWNER TO goldgali_user;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_cart_id_seq OWNER TO goldgali_user;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart_cart.id;


--
-- Name: cart_cartproduct; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.cart_cartproduct (
    id integer NOT NULL,
    quantity integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    cart_id integer NOT NULL,
    product_id integer NOT NULL,
    CONSTRAINT cart_cartproduct_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.cart_cartproduct OWNER TO goldgali_user;

--
-- Name: cart_cartproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.cart_cartproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_cartproduct_id_seq OWNER TO goldgali_user;

--
-- Name: cart_cartproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.cart_cartproduct_id_seq OWNED BY public.cart_cartproduct.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO goldgali_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO goldgali_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO goldgali_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO goldgali_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO goldgali_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO goldgali_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO goldgali_user;

--
-- Name: main_area; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.main_area (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    pincode character varying(10) NOT NULL,
    latitude character varying(20),
    longitude character varying(20),
    city_id integer NOT NULL
);


ALTER TABLE public.main_area OWNER TO goldgali_user;

--
-- Name: main_area_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.main_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_area_id_seq OWNER TO goldgali_user;

--
-- Name: main_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.main_area_id_seq OWNED BY public.main_area.id;


--
-- Name: main_city; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.main_city (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    state_id integer NOT NULL
);


ALTER TABLE public.main_city OWNER TO goldgali_user;

--
-- Name: main_city_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.main_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_city_id_seq OWNER TO goldgali_user;

--
-- Name: main_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.main_city_id_seq OWNED BY public.main_city.id;


--
-- Name: main_country; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.main_country (
    id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.main_country OWNER TO goldgali_user;

--
-- Name: main_country_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.main_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_country_id_seq OWNER TO goldgali_user;

--
-- Name: main_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.main_country_id_seq OWNED BY public.main_country.id;


--
-- Name: main_state; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.main_state (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.main_state OWNER TO goldgali_user;

--
-- Name: main_state_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.main_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_state_id_seq OWNER TO goldgali_user;

--
-- Name: main_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.main_state_id_seq OWNED BY public.main_state.id;


--
-- Name: order_order; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.order_order (
    id integer NOT NULL,
    status character varying(100) NOT NULL,
    remark character varying(1000),
    date timestamp with time zone,
    quantity integer NOT NULL,
    discount integer,
    tax integer,
    total integer,
    product_id integer NOT NULL,
    user_id integer NOT NULL,
    user_address_id integer NOT NULL,
    CONSTRAINT order_order_discount_check CHECK ((discount >= 0)),
    CONSTRAINT order_order_quantity_check CHECK ((quantity >= 0)),
    CONSTRAINT order_order_tax_check CHECK ((tax >= 0)),
    CONSTRAINT order_order_total_check CHECK ((total >= 0))
);


ALTER TABLE public.order_order OWNER TO goldgali_user;

--
-- Name: order_order_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.order_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_order_id_seq OWNER TO goldgali_user;

--
-- Name: order_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.order_order_id_seq OWNED BY public.order_order.id;


--
-- Name: product_category; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_category (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    "timestamp" timestamp with time zone
);


ALTER TABLE public.product_category OWNER TO goldgali_user;

--
-- Name: product_category_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_id_seq OWNER TO goldgali_user;

--
-- Name: product_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_category_id_seq OWNED BY public.product_category.id;


--
-- Name: product_claritytable; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_claritytable (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.product_claritytable OWNER TO goldgali_user;

--
-- Name: product_claritytable_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_claritytable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_claritytable_id_seq OWNER TO goldgali_user;

--
-- Name: product_claritytable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_claritytable_id_seq OWNED BY public.product_claritytable.id;


--
-- Name: product_colortable; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_colortable (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.product_colortable OWNER TO goldgali_user;

--
-- Name: product_colortable_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_colortable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_colortable_id_seq OWNER TO goldgali_user;

--
-- Name: product_colortable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_colortable_id_seq OWNED BY public.product_colortable.id;


--
-- Name: product_cuttable; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_cuttable (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.product_cuttable OWNER TO goldgali_user;

--
-- Name: product_cuttable_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_cuttable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_cuttable_id_seq OWNER TO goldgali_user;

--
-- Name: product_cuttable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_cuttable_id_seq OWNED BY public.product_cuttable.id;


--
-- Name: product_material; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_material (
    id integer NOT NULL,
    name character varying(70) NOT NULL,
    description text
);


ALTER TABLE public.product_material OWNER TO goldgali_user;

--
-- Name: product_material_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_material_id_seq OWNER TO goldgali_user;

--
-- Name: product_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_material_id_seq OWNED BY public.product_material.id;


--
-- Name: product_pricetable; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_pricetable (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price numeric(19,2) NOT NULL,
    unit_gm integer NOT NULL,
    updated_at timestamp with time zone,
    CONSTRAINT product_pricetable_unit_gm_check CHECK ((unit_gm >= 0))
);


ALTER TABLE public.product_pricetable OWNER TO goldgali_user;

--
-- Name: product_pricetable_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_pricetable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_pricetable_id_seq OWNER TO goldgali_user;

--
-- Name: product_pricetable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_pricetable_id_seq OWNED BY public.product_pricetable.id;


--
-- Name: product_product; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_product (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    product_code character varying(100),
    metal jsonb,
    stone jsonb,
    diamond jsonb,
    tax numeric(6,2) NOT NULL,
    discount numeric(6,2) NOT NULL,
    additional_charges integer NOT NULL,
    specification jsonb,
    description text,
    status boolean NOT NULL,
    "MRP" integer NOT NULL,
    image character varying(100) NOT NULL,
    "timestamp" timestamp with time zone,
    updated timestamp with time zone,
    height numeric(10,3) NOT NULL,
    width numeric(10,3) NOT NULL,
    rating numeric(3,2) NOT NULL,
    category_id integer NOT NULL,
    sub_category_id integer,
    user_id integer NOT NULL,
    CONSTRAINT "product_product_MRP_check" CHECK (("MRP" >= 0)),
    CONSTRAINT product_product_additional_charges_check CHECK ((additional_charges >= 0))
);


ALTER TABLE public.product_product OWNER TO goldgali_user;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO goldgali_user;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_product.id;


--
-- Name: product_product_store; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_product_store (
    id integer NOT NULL,
    product_id integer NOT NULL,
    store_id integer NOT NULL
);


ALTER TABLE public.product_product_store OWNER TO goldgali_user;

--
-- Name: product_product_store_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_product_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_store_id_seq OWNER TO goldgali_user;

--
-- Name: product_product_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_product_store_id_seq OWNED BY public.product_product_store.id;


--
-- Name: product_productimage; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_productimage (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.product_productimage OWNER TO goldgali_user;

--
-- Name: product_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_productimage_id_seq OWNER TO goldgali_user;

--
-- Name: product_productimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_productimage_id_seq OWNED BY public.product_productimage.id;


--
-- Name: product_subcategory; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.product_subcategory (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    "timestamp" timestamp with time zone,
    category_id integer NOT NULL
);


ALTER TABLE public.product_subcategory OWNER TO goldgali_user;

--
-- Name: product_subcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.product_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_subcategory_id_seq OWNER TO goldgali_user;

--
-- Name: product_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.product_subcategory_id_seq OWNED BY public.product_subcategory.id;


--
-- Name: ui_banner; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.ui_banner (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    identity character varying(100) NOT NULL,
    description text,
    image character varying(100),
    "timestamp" timestamp with time zone,
    updated timestamp with time zone
);


ALTER TABLE public.ui_banner OWNER TO goldgali_user;

--
-- Name: ui_banner_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.ui_banner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ui_banner_id_seq OWNER TO goldgali_user;

--
-- Name: ui_banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.ui_banner_id_seq OWNED BY public.ui_banner.id;


--
-- Name: ui_bestcollection; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.ui_bestcollection (
    id integer NOT NULL,
    updated timestamp with time zone,
    product_id integer NOT NULL
);


ALTER TABLE public.ui_bestcollection OWNER TO goldgali_user;

--
-- Name: ui_bestcollection_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.ui_bestcollection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ui_bestcollection_id_seq OWNER TO goldgali_user;

--
-- Name: ui_bestcollection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.ui_bestcollection_id_seq OWNED BY public.ui_bestcollection.id;


--
-- Name: ui_bestseller; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.ui_bestseller (
    id integer NOT NULL,
    updated timestamp with time zone,
    product_id integer NOT NULL
);


ALTER TABLE public.ui_bestseller OWNER TO goldgali_user;

--
-- Name: ui_bestseller_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.ui_bestseller_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ui_bestseller_id_seq OWNER TO goldgali_user;

--
-- Name: ui_bestseller_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.ui_bestseller_id_seq OWNED BY public.ui_bestseller.id;


--
-- Name: ui_featured; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.ui_featured (
    id integer NOT NULL,
    updated timestamp with time zone,
    product_id integer NOT NULL
);


ALTER TABLE public.ui_featured OWNER TO goldgali_user;

--
-- Name: ui_featured_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.ui_featured_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ui_featured_id_seq OWNER TO goldgali_user;

--
-- Name: ui_featured_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.ui_featured_id_seq OWNED BY public.ui_featured.id;


--
-- Name: ui_newarrival; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.ui_newarrival (
    id integer NOT NULL,
    updated timestamp with time zone,
    product_id integer NOT NULL
);


ALTER TABLE public.ui_newarrival OWNER TO goldgali_user;

--
-- Name: ui_newarrival_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.ui_newarrival_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ui_newarrival_id_seq OWNER TO goldgali_user;

--
-- Name: ui_newarrival_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.ui_newarrival_id_seq OWNED BY public.ui_newarrival.id;


--
-- Name: ui_testimonial; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.ui_testimonial (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    text text NOT NULL,
    description text,
    image character varying(100),
    "timestamp" timestamp with time zone,
    updated timestamp with time zone
);


ALTER TABLE public.ui_testimonial OWNER TO goldgali_user;

--
-- Name: ui_testimonial_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.ui_testimonial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ui_testimonial_id_seq OWNER TO goldgali_user;

--
-- Name: ui_testimonial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.ui_testimonial_id_seq OWNED BY public.ui_testimonial.id;


--
-- Name: ui_trending; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.ui_trending (
    id integer NOT NULL,
    updated timestamp with time zone,
    product_id integer NOT NULL
);


ALTER TABLE public.ui_trending OWNER TO goldgali_user;

--
-- Name: ui_trending_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.ui_trending_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ui_trending_id_seq OWNER TO goldgali_user;

--
-- Name: ui_trending_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.ui_trending_id_seq OWNED BY public.ui_trending.id;


--
-- Name: user_appointment; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.user_appointment (
    id integer NOT NULL,
    "time" timestamp with time zone NOT NULL,
    status boolean NOT NULL,
    "timestamp" timestamp with time zone,
    app_to_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_appointment OWNER TO goldgali_user;

--
-- Name: user_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.user_appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_appointment_id_seq OWNER TO goldgali_user;

--
-- Name: user_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.user_appointment_id_seq OWNED BY public.user_appointment.id;


--
-- Name: user_companyprofile; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.user_companyprofile (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    gst character varying(15),
    pincode character varying(7) NOT NULL,
    area character varying(100) NOT NULL,
    address_1 text NOT NULL,
    address_2 text,
    landmark character varying(100),
    description text,
    city_id integer NOT NULL,
    country_id integer NOT NULL,
    state_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_companyprofile OWNER TO goldgali_user;

--
-- Name: user_companyprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.user_companyprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_companyprofile_id_seq OWNER TO goldgali_user;

--
-- Name: user_companyprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.user_companyprofile_id_seq OWNED BY public.user_companyprofile.id;


--
-- Name: user_store; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.user_store (
    id integer NOT NULL,
    image character varying(100),
    name character varying(100) NOT NULL,
    pincode character varying(7) NOT NULL,
    area character varying(100) NOT NULL,
    address_1 text NOT NULL,
    address_2 text,
    description text,
    city_id integer NOT NULL,
    country_id integer NOT NULL,
    state_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_store OWNER TO goldgali_user;

--
-- Name: user_store_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.user_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_store_id_seq OWNER TO goldgali_user;

--
-- Name: user_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.user_store_id_seq OWNED BY public.user_store.id;


--
-- Name: user_user; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.user_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    first_name character varying(30),
    last_name character varying(30),
    user_type character varying(15),
    is_staff boolean NOT NULL,
    mobile character varying(15),
    dob date,
    date_joined timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    avatar character varying(100),
    is_verified boolean NOT NULL
);


ALTER TABLE public.user_user OWNER TO goldgali_user;

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.user_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO goldgali_user;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.user_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_groups_id_seq OWNER TO goldgali_user;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.user_user_groups_id_seq OWNED BY public.user_user_groups.id;


--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO goldgali_user;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_user.id;


--
-- Name: user_user_user_permissions; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.user_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.user_user_user_permissions OWNER TO goldgali_user;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.user_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_user_permissions_id_seq OWNER TO goldgali_user;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.user_user_user_permissions_id_seq OWNED BY public.user_user_user_permissions.id;


--
-- Name: user_useraddress; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.user_useraddress (
    id integer NOT NULL,
    pincode character varying(7) NOT NULL,
    area character varying(100) NOT NULL,
    address_1 text NOT NULL,
    address_2 text,
    landmark character varying(100),
    city_id integer NOT NULL,
    country_id integer NOT NULL,
    state_id integer NOT NULL,
    user_id integer NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.user_useraddress OWNER TO goldgali_user;

--
-- Name: user_useraddress_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.user_useraddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_useraddress_id_seq OWNER TO goldgali_user;

--
-- Name: user_useraddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.user_useraddress_id_seq OWNED BY public.user_useraddress.id;


--
-- Name: user_usertoken; Type: TABLE; Schema: public; Owner: goldgali_user
--

CREATE TABLE public.user_usertoken (
    id integer NOT NULL,
    token text,
    token_type integer NOT NULL,
    active boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    expire_date timestamp with time zone NOT NULL,
    CONSTRAINT user_usertoken_token_type_check CHECK ((token_type >= 0))
);


ALTER TABLE public.user_usertoken OWNER TO goldgali_user;

--
-- Name: user_usertoken_id_seq; Type: SEQUENCE; Schema: public; Owner: goldgali_user
--

CREATE SEQUENCE public.user_usertoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_usertoken_id_seq OWNER TO goldgali_user;

--
-- Name: user_usertoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goldgali_user
--

ALTER SEQUENCE public.user_usertoken_id_seq OWNED BY public.user_usertoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: cart_cart id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.cart_cart ALTER COLUMN id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);


--
-- Name: cart_cartproduct id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.cart_cartproduct ALTER COLUMN id SET DEFAULT nextval('public.cart_cartproduct_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: main_area id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_area ALTER COLUMN id SET DEFAULT nextval('public.main_area_id_seq'::regclass);


--
-- Name: main_city id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_city ALTER COLUMN id SET DEFAULT nextval('public.main_city_id_seq'::regclass);


--
-- Name: main_country id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_country ALTER COLUMN id SET DEFAULT nextval('public.main_country_id_seq'::regclass);


--
-- Name: main_state id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_state ALTER COLUMN id SET DEFAULT nextval('public.main_state_id_seq'::regclass);


--
-- Name: order_order id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.order_order ALTER COLUMN id SET DEFAULT nextval('public.order_order_id_seq'::regclass);


--
-- Name: product_category id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_category ALTER COLUMN id SET DEFAULT nextval('public.product_category_id_seq'::regclass);


--
-- Name: product_claritytable id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_claritytable ALTER COLUMN id SET DEFAULT nextval('public.product_claritytable_id_seq'::regclass);


--
-- Name: product_colortable id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_colortable ALTER COLUMN id SET DEFAULT nextval('public.product_colortable_id_seq'::regclass);


--
-- Name: product_cuttable id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_cuttable ALTER COLUMN id SET DEFAULT nextval('public.product_cuttable_id_seq'::regclass);


--
-- Name: product_material id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_material ALTER COLUMN id SET DEFAULT nextval('public.product_material_id_seq'::regclass);


--
-- Name: product_pricetable id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_pricetable ALTER COLUMN id SET DEFAULT nextval('public.product_pricetable_id_seq'::regclass);


--
-- Name: product_product id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Name: product_product_store id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product_store ALTER COLUMN id SET DEFAULT nextval('public.product_product_store_id_seq'::regclass);


--
-- Name: product_productimage id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_productimage ALTER COLUMN id SET DEFAULT nextval('public.product_productimage_id_seq'::regclass);


--
-- Name: product_subcategory id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_subcategory ALTER COLUMN id SET DEFAULT nextval('public.product_subcategory_id_seq'::regclass);


--
-- Name: ui_banner id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_banner ALTER COLUMN id SET DEFAULT nextval('public.ui_banner_id_seq'::regclass);


--
-- Name: ui_bestcollection id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_bestcollection ALTER COLUMN id SET DEFAULT nextval('public.ui_bestcollection_id_seq'::regclass);


--
-- Name: ui_bestseller id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_bestseller ALTER COLUMN id SET DEFAULT nextval('public.ui_bestseller_id_seq'::regclass);


--
-- Name: ui_featured id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_featured ALTER COLUMN id SET DEFAULT nextval('public.ui_featured_id_seq'::regclass);


--
-- Name: ui_newarrival id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_newarrival ALTER COLUMN id SET DEFAULT nextval('public.ui_newarrival_id_seq'::regclass);


--
-- Name: ui_testimonial id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_testimonial ALTER COLUMN id SET DEFAULT nextval('public.ui_testimonial_id_seq'::regclass);


--
-- Name: ui_trending id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_trending ALTER COLUMN id SET DEFAULT nextval('public.ui_trending_id_seq'::regclass);


--
-- Name: user_appointment id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_appointment ALTER COLUMN id SET DEFAULT nextval('public.user_appointment_id_seq'::regclass);


--
-- Name: user_companyprofile id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_companyprofile ALTER COLUMN id SET DEFAULT nextval('public.user_companyprofile_id_seq'::regclass);


--
-- Name: user_store id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_store ALTER COLUMN id SET DEFAULT nextval('public.user_store_id_seq'::regclass);


--
-- Name: user_user id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user ALTER COLUMN id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Name: user_user_groups id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_user_groups_id_seq'::regclass);


--
-- Name: user_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_user_permissions_id_seq'::regclass);


--
-- Name: user_useraddress id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_useraddress ALTER COLUMN id SET DEFAULT nextval('public.user_useraddress_id_seq'::regclass);


--
-- Name: user_usertoken id; Type: DEFAULT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_usertoken ALTER COLUMN id SET DEFAULT nextval('public.user_usertoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add country	6	add_country
22	Can change country	6	change_country
23	Can delete country	6	delete_country
24	Can view country	6	view_country
25	Can add city	7	add_city
26	Can change city	7	change_city
27	Can delete city	7	delete_city
28	Can view city	7	view_city
29	Can add state	8	add_state
30	Can change state	8	change_state
31	Can delete state	8	delete_state
32	Can view state	8	view_state
33	Can add area	9	add_area
34	Can change area	9	change_area
35	Can delete area	9	delete_area
36	Can view area	9	view_area
37	Can add material	10	add_material
38	Can change material	10	change_material
39	Can delete material	10	delete_material
40	Can view material	10	view_material
41	Can add product image	11	add_productimage
42	Can change product image	11	change_productimage
43	Can delete product image	11	delete_productimage
44	Can view product image	11	view_productimage
45	Can add clarity table	12	add_claritytable
46	Can change clarity table	12	change_claritytable
47	Can delete clarity table	12	delete_claritytable
48	Can view clarity table	12	view_claritytable
49	Can add sub category	13	add_subcategory
50	Can change sub category	13	change_subcategory
51	Can delete sub category	13	delete_subcategory
52	Can view sub category	13	view_subcategory
53	Can add category	14	add_category
54	Can change category	14	change_category
55	Can delete category	14	delete_category
56	Can view category	14	view_category
57	Can add color table	15	add_colortable
58	Can change color table	15	change_colortable
59	Can delete color table	15	delete_colortable
60	Can view color table	15	view_colortable
61	Can add price table	16	add_pricetable
62	Can change price table	16	change_pricetable
63	Can delete price table	16	delete_pricetable
64	Can view price table	16	view_pricetable
65	Can add cut table	17	add_cuttable
66	Can change cut table	17	change_cuttable
67	Can delete cut table	17	delete_cuttable
68	Can view cut table	17	view_cuttable
69	Can add product	18	add_product
70	Can change product	18	change_product
71	Can delete product	18	delete_product
72	Can view product	18	view_product
73	Can add company profile	19	add_companyprofile
74	Can change company profile	19	change_companyprofile
75	Can delete company profile	19	delete_companyprofile
76	Can view company profile	19	view_companyprofile
77	Can add appointment	20	add_appointment
78	Can change appointment	20	change_appointment
79	Can delete appointment	20	delete_appointment
80	Can view appointment	20	view_appointment
81	Can add user token	21	add_usertoken
82	Can change user token	21	change_usertoken
83	Can delete user token	21	delete_usertoken
84	Can view user token	21	view_usertoken
85	Can add user address	22	add_useraddress
86	Can change user address	22	change_useraddress
87	Can delete user address	22	delete_useraddress
88	Can view user address	22	view_useraddress
89	Can add user	23	add_user
90	Can change user	23	change_user
91	Can delete user	23	delete_user
92	Can view user	23	view_user
93	Can add store	24	add_store
94	Can change store	24	change_store
95	Can delete store	24	delete_store
96	Can view store	24	view_store
97	Can add cart	25	add_cart
98	Can change cart	25	change_cart
99	Can delete cart	25	delete_cart
100	Can view cart	25	view_cart
101	Can add cart product	26	add_cartproduct
102	Can change cart product	26	change_cartproduct
103	Can delete cart product	26	delete_cartproduct
104	Can view cart product	26	view_cartproduct
105	Can add best collection	27	add_bestcollection
106	Can change best collection	27	change_bestcollection
107	Can delete best collection	27	delete_bestcollection
108	Can view best collection	27	view_bestcollection
109	Can add best seller	28	add_bestseller
110	Can change best seller	28	change_bestseller
111	Can delete best seller	28	delete_bestseller
112	Can view best seller	28	view_bestseller
113	Can add testimonial	29	add_testimonial
114	Can change testimonial	29	change_testimonial
115	Can delete testimonial	29	delete_testimonial
116	Can view testimonial	29	view_testimonial
117	Can add banner	30	add_banner
118	Can change banner	30	change_banner
119	Can delete banner	30	delete_banner
120	Can view banner	30	view_banner
121	Can add new arrival	31	add_newarrival
122	Can change new arrival	31	change_newarrival
123	Can delete new arrival	31	delete_newarrival
124	Can view new arrival	31	view_newarrival
125	Can add featured	32	add_featured
126	Can change featured	32	change_featured
127	Can delete featured	32	delete_featured
128	Can view featured	32	view_featured
129	Can add trending	33	add_trending
130	Can change trending	33	change_trending
131	Can delete trending	33	delete_trending
132	Can view trending	33	view_trending
133	Can add order	34	add_order
134	Can change order	34	change_order
135	Can delete order	34	delete_order
136	Can view order	34	view_order
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 136, true);


--
-- Data for Name: cart_cart; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.cart_cart (id, "timestamp", updated, user_id, shipping_cost) FROM stdin;
1	2019-05-26 21:02:48.203136+00	2019-05-26 21:02:48.203192+00	\N	0
2	2019-05-26 21:24:47.438833+00	2019-05-26 21:24:47.438882+00	\N	0
3	2019-05-27 03:34:04.396266+00	2019-05-27 03:34:04.396447+00	\N	0
4	2019-05-27 03:34:05.197321+00	2019-05-27 03:34:05.197385+00	\N	0
5	2019-05-27 20:27:14.89636+00	2019-05-27 20:27:14.896736+00	\N	0
6	2019-05-29 05:05:39.306901+00	2019-05-29 05:05:39.307068+00	\N	0
7	2019-05-29 07:01:14.875321+00	2019-05-29 07:01:14.87564+00	\N	0
8	2019-05-29 09:34:41.561028+00	2019-05-29 09:34:41.561085+00	\N	0
9	2019-05-29 09:34:42.613859+00	2019-05-29 09:34:42.614105+00	\N	0
10	2019-05-29 17:09:31.829618+00	2019-05-29 17:09:31.82967+00	\N	0
11	2019-05-30 23:54:16.252624+00	2019-05-30 23:54:16.252737+00	\N	0
12	2019-05-30 23:54:17.221459+00	2019-05-30 23:54:17.221788+00	\N	0
13	2019-05-30 23:54:24.142301+00	2019-05-30 23:54:24.142359+00	\N	0
14	2019-05-30 23:54:25.113306+00	2019-05-30 23:54:25.113362+00	\N	0
15	2019-05-30 23:54:26.069922+00	2019-05-30 23:54:26.069969+00	\N	0
16	2019-05-31 07:29:42.078901+00	2019-05-31 07:29:42.079016+00	\N	0
17	2019-05-31 07:29:42.930323+00	2019-05-31 07:29:42.930497+00	\N	0
18	2019-05-31 17:13:49.013018+00	2019-05-31 17:13:49.013067+00	\N	0
19	2019-05-31 17:13:50.236065+00	2019-05-31 17:13:50.236105+00	\N	0
20	2019-05-31 17:13:51.473608+00	2019-05-31 17:13:51.473657+00	\N	0
21	2019-05-31 17:13:52.766193+00	2019-05-31 17:13:52.766233+00	\N	0
22	2019-05-31 22:40:26.791308+00	2019-05-31 22:40:26.79136+00	\N	0
23	2019-06-01 04:51:22.832698+00	2019-06-01 04:51:22.832746+00	\N	0
24	2019-06-01 05:26:16.370592+00	2019-06-01 05:26:16.370701+00	\N	0
25	2019-06-01 09:00:36.373135+00	2019-06-01 09:00:36.373373+00	\N	0
26	2019-06-01 21:27:16.846283+00	2019-06-01 21:27:16.84636+00	\N	0
27	2019-06-02 02:53:37.395323+00	2019-06-02 02:53:37.395398+00	\N	0
28	2019-06-02 03:44:32.496997+00	2019-06-02 03:44:32.497046+00	\N	0
29	2019-06-02 11:40:18.86465+00	2019-06-02 11:40:18.864868+00	\N	0
30	2019-06-02 11:40:19.338712+00	2019-06-02 11:40:19.338959+00	\N	0
31	2019-06-02 11:40:20.140464+00	2019-06-02 11:40:20.140505+00	\N	0
32	2019-06-03 05:52:07.498435+00	2019-06-03 05:52:07.498514+00	\N	0
33	2019-06-03 23:15:06.92266+00	2019-06-03 23:15:06.923001+00	\N	0
34	2019-06-04 14:40:50.289494+00	2019-06-04 14:40:50.289693+00	\N	0
35	2019-06-05 09:05:56.357811+00	2019-06-05 09:05:56.358001+00	\N	0
36	2019-06-05 18:09:49.59917+00	2019-06-05 18:09:49.599243+00	\N	0
37	2019-06-06 11:26:25.394194+00	2019-06-06 11:26:25.394463+00	\N	0
38	2019-06-06 11:35:57.618107+00	2019-06-06 11:35:57.618154+00	\N	0
39	2019-06-06 21:59:31.865298+00	2019-06-06 21:59:31.865528+00	\N	0
40	2019-06-06 21:59:37.338642+00	2019-06-06 21:59:37.338856+00	\N	0
41	2019-06-07 06:49:01.174296+00	2019-06-07 06:49:01.174604+00	\N	0
42	2019-06-07 13:47:13.970848+00	2019-06-07 13:47:13.970921+00	\N	0
43	2019-06-07 13:47:14.853755+00	2019-06-07 13:47:14.853792+00	\N	0
44	2019-06-07 13:47:21.885712+00	2019-06-07 13:47:21.885749+00	\N	0
45	2019-06-07 13:47:22.880539+00	2019-06-07 13:47:22.88081+00	\N	0
46	2019-06-07 13:47:23.771178+00	2019-06-07 13:47:23.771216+00	\N	0
47	2019-06-07 16:24:16.430426+00	2019-06-07 16:24:16.430495+00	\N	0
48	2019-06-08 01:37:38.880967+00	2019-06-08 01:37:38.881023+00	\N	0
49	2019-06-08 02:50:40.802276+00	2019-06-08 02:50:40.802334+00	\N	0
50	2019-06-08 04:28:09.879202+00	2019-06-08 04:28:09.87947+00	\N	0
51	2019-06-09 03:38:57.877033+00	2019-06-09 03:38:57.877315+00	\N	0
52	2019-06-09 04:48:33.312858+00	2019-06-09 04:48:33.313027+00	\N	0
53	2019-06-09 15:40:04.428878+00	2019-06-09 15:40:04.428922+00	\N	0
54	2019-06-10 01:26:32.565638+00	2019-06-10 01:26:32.565906+00	\N	0
55	2019-06-10 04:58:02.492008+00	2019-06-10 04:58:02.49206+00	\N	0
57	2019-06-10 15:17:07.13946+00	2019-06-10 15:17:07.139506+00	\N	0
59	2019-06-10 16:51:06.433111+00	2019-06-10 16:51:06.433155+00	\N	0
60	2019-06-10 21:39:06.052228+00	2019-06-10 21:39:06.052275+00	\N	0
61	2019-06-12 05:19:15.37917+00	2019-06-12 05:19:15.379462+00	\N	0
62	2019-06-12 09:06:54.868356+00	2019-06-12 09:06:54.868558+00	\N	0
58	2019-06-10 16:09:11.752559+00	2019-06-12 14:12:50.614676+00	4	0
64	2019-06-13 06:32:41.431376+00	2019-06-13 06:32:41.431663+00	\N	0
65	2019-06-13 11:07:10.115605+00	2019-06-13 11:07:10.115806+00	\N	0
66	2019-06-13 17:24:28.933963+00	2019-06-13 17:24:28.934005+00	\N	0
67	2019-06-14 00:15:46.492019+00	2019-06-14 00:15:46.492067+00	\N	0
73	2019-06-14 05:10:23.783038+00	2019-06-14 05:10:23.78308+00	\N	0
74	2019-06-14 05:13:16.282598+00	2019-06-14 05:13:16.282646+00	\N	0
75	2019-06-14 05:13:17.731101+00	2019-06-14 05:13:17.731132+00	\N	0
76	2019-06-14 05:14:35.647737+00	2019-06-14 05:14:35.647778+00	\N	0
77	2019-06-14 06:32:48.241641+00	2019-06-14 06:32:48.241826+00	\N	0
78	2019-06-14 08:26:00.687106+00	2019-06-14 08:26:00.687246+00	\N	0
79	2019-06-14 08:26:20.497158+00	2019-06-14 08:26:20.497188+00	4	0
80	2019-06-14 10:42:21.926164+00	2019-06-14 10:42:21.926213+00	\N	0
81	2019-06-14 11:52:28.384312+00	2019-06-14 11:52:28.384482+00	\N	0
82	2019-06-14 14:24:00.971717+00	2019-06-14 14:24:00.971759+00	\N	0
84	2019-06-14 17:42:42.206569+00	2019-06-14 17:42:42.206595+00	4	0
85	2019-06-14 17:43:52.18939+00	2019-06-14 17:43:52.189432+00	\N	0
86	2019-06-14 17:44:00.897859+00	2019-06-14 17:44:00.897896+00	4	0
88	2019-06-14 18:18:44.270866+00	2019-06-14 18:18:44.270894+00	4	0
90	2019-06-14 18:22:01.043642+00	2019-06-14 18:22:01.043672+00	4	0
92	2019-06-14 18:24:29.464253+00	2019-06-14 18:24:29.464291+00	4	0
94	2019-06-14 18:32:50.067571+00	2019-06-14 18:32:50.067609+00	4	0
96	2019-06-14 18:49:36.648577+00	2019-06-14 18:49:36.648612+00	4	0
97	2019-06-14 18:55:54.355855+00	2019-06-14 18:55:54.355896+00	\N	0
98	2019-06-14 18:59:17.29072+00	2019-06-14 18:59:17.290761+00	\N	0
99	2019-06-14 18:59:28.61088+00	2019-06-14 18:59:28.610905+00	5	0
100	2019-06-14 19:07:22.99048+00	2019-06-14 19:07:22.990526+00	\N	0
101	2019-06-14 22:26:25.089796+00	2019-06-14 22:26:25.089842+00	\N	0
102	2019-06-14 22:26:25.963256+00	2019-06-14 22:26:25.963299+00	\N	0
103	2019-06-14 22:26:31.871772+00	2019-06-14 22:26:31.871811+00	\N	0
104	2019-06-14 22:26:37.497121+00	2019-06-14 22:26:37.497172+00	\N	0
105	2019-06-14 22:26:38.41219+00	2019-06-14 22:26:38.412234+00	\N	0
106	2019-06-14 22:26:39.346886+00	2019-06-14 22:26:39.346929+00	\N	0
108	2019-06-14 22:52:30.972426+00	2019-06-14 22:52:30.97246+00	4	0
110	2019-06-14 22:53:14.559258+00	2019-06-14 22:53:14.559292+00	4	0
112	2019-06-14 22:56:50.145122+00	2019-06-14 22:56:50.145159+00	\N	0
113	2019-06-14 22:57:00.822316+00	2019-06-14 22:57:00.822351+00	5	0
115	2019-06-14 23:02:30.055899+00	2019-06-14 23:02:30.055934+00	4	0
116	2019-06-15 14:19:45.470649+00	2019-06-15 14:19:45.470924+00	\N	0
117	2019-06-15 16:36:15.113692+00	2019-06-15 16:36:15.113727+00	4	0
119	2019-06-15 16:37:33.530929+00	2019-06-15 16:37:33.530965+00	5	0
121	2019-06-15 17:06:47.49041+00	2019-06-15 17:06:47.490454+00	4	0
124	2019-06-15 18:25:21.152932+00	2019-06-15 18:25:21.152964+00	5	0
126	2019-06-15 18:27:15.880787+00	2019-06-15 18:27:15.88082+00	4	0
128	2019-06-15 19:07:44.903669+00	2019-06-15 19:07:44.903701+00	4	0
130	2019-06-15 19:43:42.498939+00	2019-06-15 19:43:42.499011+00	\N	0
131	2019-06-15 19:50:35.299031+00	2019-06-15 19:50:35.299074+00	\N	0
132	2019-06-15 19:51:27.663198+00	2019-06-15 19:51:27.663245+00	\N	0
133	2019-06-15 20:01:33.467777+00	2019-06-15 20:01:33.467833+00	\N	0
134	2019-06-16 03:29:49.413231+00	2019-06-16 03:29:49.413329+00	\N	0
135	2019-06-16 05:30:24.253266+00	2019-06-16 05:30:24.253437+00	\N	0
136	2019-06-16 06:23:32.914248+00	2019-06-16 06:23:32.91428+00	\N	0
137	2019-06-16 21:36:17.624734+00	2019-06-16 21:36:17.625+00	\N	0
138	2019-06-17 06:54:33.331332+00	2019-06-17 06:54:33.331481+00	\N	0
139	2019-06-17 07:13:22.508+00	2019-06-17 07:15:45.488603+00	14	0
140	2019-06-17 07:25:00.491195+00	2019-06-17 07:25:00.491256+00	\N	0
141	2019-06-17 07:25:04.780456+00	2019-06-17 07:25:04.7805+00	\N	0
142	2019-06-17 07:38:57.350489+00	2019-06-17 07:38:57.350526+00	5	0
144	2019-06-17 07:40:36.906949+00	2019-06-17 07:40:36.906982+00	4	0
145	2019-06-17 08:58:59.616317+00	2019-06-17 08:58:59.61649+00	\N	0
146	2019-06-17 18:50:03.505244+00	2019-06-17 18:50:03.505294+00	\N	0
147	2019-06-17 18:51:08.102856+00	2019-06-17 18:51:08.1029+00	\N	0
148	2019-06-17 18:51:40.10744+00	2019-06-17 18:51:40.107542+00	\N	0
149	2019-06-17 18:51:56.615999+00	2019-06-17 18:51:56.616042+00	\N	0
150	2019-06-17 18:52:14.860026+00	2019-06-17 18:52:14.860073+00	\N	0
151	2019-06-17 19:39:03.288489+00	2019-06-17 19:39:03.288537+00	\N	0
153	2019-06-17 21:03:42.70359+00	2019-06-17 21:03:42.703628+00	5	0
154	2019-06-18 02:56:04.396518+00	2019-06-18 02:56:04.396614+00	4	0
155	2019-06-18 03:31:41.912357+00	2019-06-18 03:31:41.912387+00	4	0
156	2019-06-18 05:28:19.534072+00	2019-06-18 05:28:19.534202+00	\N	0
157	2019-06-18 07:27:15.723052+00	2019-06-18 07:27:15.723108+00	\N	0
158	2019-06-18 10:11:54.865421+00	2019-06-18 10:11:54.865675+00	\N	0
159	2019-06-18 16:52:02.372509+00	2019-06-18 16:52:02.372779+00	\N	0
160	2019-06-18 17:32:06.985916+00	2019-06-18 17:32:06.985985+00	\N	0
161	2019-06-19 07:22:14.290725+00	2019-06-19 07:22:14.290994+00	\N	0
162	2019-06-19 08:02:56.90566+00	2019-06-19 08:02:56.905846+00	\N	0
163	2019-06-19 12:32:17.459539+00	2019-06-19 12:32:17.459589+00	\N	0
164	2019-06-19 12:37:58.536244+00	2019-06-19 12:37:58.536289+00	\N	0
165	2019-06-19 14:57:31.552949+00	2019-06-19 14:57:31.553011+00	\N	0
166	2019-06-19 19:45:39.863647+00	2019-06-19 19:45:39.863843+00	\N	0
167	2019-06-19 21:40:07.699657+00	2019-06-19 21:40:07.6997+00	\N	0
168	2019-06-19 21:54:21.135501+00	2019-06-19 21:54:21.135553+00	\N	0
169	2019-06-20 05:42:01.32692+00	2019-06-20 05:42:01.326995+00	\N	0
170	2019-06-20 06:06:25.820738+00	2019-06-20 06:06:25.820783+00	\N	0
171	2019-06-20 18:50:04.854296+00	2019-06-20 18:50:04.854535+00	\N	0
172	2019-06-20 21:45:26.330184+00	2019-06-20 21:45:26.33023+00	\N	0
173	2019-06-20 21:56:05.115086+00	2019-06-20 21:56:05.115131+00	\N	0
174	2019-06-20 23:24:52.902507+00	2019-06-20 23:24:52.902705+00	\N	0
175	2019-06-21 07:44:47.002665+00	2019-06-21 07:44:47.002931+00	\N	0
176	2019-06-21 08:48:31.13885+00	2019-06-21 08:48:31.138922+00	\N	0
177	2019-06-21 17:23:06.73316+00	2019-06-21 17:23:06.733245+00	\N	0
178	2019-06-21 17:23:11.344057+00	2019-06-21 17:23:11.34409+00	\N	0
180	2019-06-21 17:44:33.477603+00	2019-06-21 17:44:33.477631+00	14	0
181	2019-06-22 06:14:07.902913+00	2019-06-22 06:14:07.902973+00	\N	0
182	2019-06-22 06:14:09.044287+00	2019-06-22 06:14:09.044329+00	\N	0
183	2019-06-22 06:14:18.984509+00	2019-06-22 06:14:18.984553+00	\N	0
184	2019-06-22 06:14:24.65676+00	2019-06-22 06:14:24.656805+00	\N	0
185	2019-06-22 06:14:25.549243+00	2019-06-22 06:14:25.549286+00	\N	0
186	2019-06-22 06:14:26.436324+00	2019-06-22 06:14:26.436369+00	\N	0
187	2019-06-22 06:14:45.757011+00	2019-06-22 06:14:45.757049+00	\N	0
188	2019-06-22 06:14:46.478969+00	2019-06-22 06:14:46.479009+00	\N	0
189	2019-06-22 06:14:52.251805+00	2019-06-22 06:14:52.251846+00	\N	0
190	2019-06-22 06:14:58.114671+00	2019-06-22 06:14:58.114711+00	\N	0
191	2019-06-22 06:14:59.032651+00	2019-06-22 06:14:59.032752+00	\N	0
192	2019-06-22 06:14:59.93435+00	2019-06-22 06:14:59.934388+00	\N	0
193	2019-06-22 06:15:19.301029+00	2019-06-22 06:15:19.301066+00	\N	0
194	2019-06-22 06:20:59.449906+00	2019-06-22 06:20:59.449976+00	\N	0
195	2019-06-22 13:02:44.534922+00	2019-06-22 13:02:44.534966+00	\N	0
196	2019-06-22 18:06:10.88931+00	2019-06-22 18:06:10.889607+00	\N	0
197	2019-06-22 21:15:07.432958+00	2019-06-22 21:15:07.433009+00	\N	0
198	2019-06-22 21:37:40.534505+00	2019-06-22 21:37:40.534552+00	\N	0
199	2019-06-23 03:37:41.920313+00	2019-06-23 03:37:41.920762+00	\N	0
200	2019-06-23 06:58:36.201513+00	2019-06-23 06:58:36.201597+00	\N	0
201	2019-06-23 08:10:47.185857+00	2019-06-23 08:10:47.185906+00	\N	0
202	2019-06-23 18:50:07.493801+00	2019-06-23 18:50:07.494075+00	\N	0
203	2019-06-24 04:23:01.178541+00	2019-06-24 04:23:01.178606+00	\N	0
204	2019-06-24 05:27:00.403718+00	2019-06-24 05:27:00.403888+00	\N	0
205	2019-06-24 08:39:28.777991+00	2019-06-24 08:39:28.778171+00	\N	0
206	2019-06-24 10:13:25.92586+00	2019-06-24 10:13:25.925911+00	\N	0
207	2019-06-24 11:10:02.838108+00	2019-06-24 11:10:02.83815+00	\N	0
208	2019-06-24 11:29:16.73252+00	2019-06-24 11:29:16.732549+00	\N	0
209	2019-06-24 11:32:41.421761+00	2019-06-24 11:32:41.421793+00	15	0
210	2019-06-25 05:15:03.37677+00	2019-06-25 05:15:03.377031+00	\N	0
211	2019-06-25 05:48:17.262399+00	2019-06-25 05:48:17.262647+00	\N	0
212	2019-06-25 06:07:13.69523+00	2019-06-25 06:07:13.695427+00	\N	0
213	2019-06-25 06:59:00.456981+00	2019-06-25 06:59:00.457027+00	\N	0
215	2019-06-25 07:42:11.098965+00	2019-06-25 07:42:11.099002+00	4	0
217	2019-06-25 07:44:50.135952+00	2019-06-25 07:44:50.135996+00	4	0
218	2019-06-26 03:03:04.592197+00	2019-06-26 03:03:04.592367+00	\N	0
219	2019-06-26 03:35:27.194931+00	2019-06-26 03:35:27.194976+00	\N	0
220	2019-06-26 04:54:00.549696+00	2019-06-26 04:54:00.549737+00	\N	0
221	2019-06-26 06:19:16.407484+00	2019-06-26 06:19:16.40755+00	\N	0
222	2019-06-26 06:43:35.403472+00	2019-06-26 06:43:35.403538+00	\N	0
223	2019-06-26 12:00:17.845275+00	2019-06-26 12:00:17.845318+00	\N	0
224	2019-06-26 12:01:08.10748+00	2019-06-26 12:01:08.107539+00	\N	0
225	2019-06-26 23:42:17.322638+00	2019-06-26 23:42:17.322829+00	\N	0
226	2019-06-27 06:03:18.90493+00	2019-06-27 06:03:18.90522+00	\N	0
227	2019-06-27 07:38:12.118906+00	2019-06-27 07:38:12.118955+00	\N	0
228	2019-06-27 09:53:19.371505+00	2019-06-27 09:53:19.371623+00	\N	0
229	2019-06-27 14:32:02.212177+00	2019-06-27 14:32:02.212245+00	\N	0
230	2019-06-27 16:28:51.757398+00	2019-06-27 16:28:51.757445+00	\N	0
231	2019-06-27 20:13:21.047054+00	2019-06-27 20:13:21.047119+00	\N	0
232	2019-06-28 01:18:42.777125+00	2019-06-28 01:18:42.777238+00	\N	0
233	2019-06-28 02:57:41.912317+00	2019-06-28 02:57:41.912489+00	\N	0
234	2019-06-28 06:11:07.966823+00	2019-06-28 06:11:07.966887+00	\N	0
235	2019-06-28 07:48:31.315671+00	2019-06-28 07:48:31.315718+00	\N	0
236	2019-06-28 08:07:19.400593+00	2019-06-28 08:07:19.400784+00	\N	0
237	2019-06-28 09:38:40.771168+00	2019-06-28 09:38:40.771273+00	\N	0
238	2019-06-28 09:56:34.859354+00	2019-06-28 09:56:34.859527+00	\N	0
239	2019-06-28 09:56:36.441192+00	2019-06-28 09:56:36.44123+00	\N	0
240	2019-06-28 10:49:26.484726+00	2019-06-28 10:49:26.484768+00	\N	0
241	2019-06-28 11:28:20.662877+00	2019-06-28 11:28:20.662952+00	\N	0
243	2019-06-28 12:21:53.863813+00	2019-06-28 12:21:53.863857+00	\N	0
242	2019-06-28 12:20:31.453523+00	2019-06-28 12:21:53.874566+00	16	0
244	2019-06-28 16:06:13.9916+00	2019-06-28 16:06:13.991708+00	\N	0
245	2019-06-28 18:14:18.395051+00	2019-06-28 18:14:18.395131+00	\N	0
246	2019-06-29 03:14:44.171784+00	2019-06-29 03:14:44.171888+00	\N	0
247	2019-06-29 05:49:14.987454+00	2019-06-29 05:49:14.987628+00	\N	0
248	2019-06-29 05:50:19.039563+00	2019-06-29 05:50:19.039724+00	\N	0
249	2019-06-29 05:51:22.436487+00	2019-06-29 05:51:22.43653+00	\N	0
250	2019-06-29 05:55:07.540288+00	2019-06-29 05:55:07.540341+00	\N	0
251	2019-06-29 05:56:08.895163+00	2019-06-29 05:56:08.895204+00	\N	0
252	2019-06-29 06:03:36.048481+00	2019-06-29 06:03:36.048528+00	\N	0
253	2019-06-29 06:04:36.356889+00	2019-06-29 06:04:36.356933+00	\N	0
254	2019-06-29 06:05:48.522477+00	2019-06-29 06:05:48.522518+00	\N	0
255	2019-06-29 06:06:15.541846+00	2019-06-29 06:06:15.541888+00	\N	0
256	2019-06-29 06:06:54.756747+00	2019-06-29 06:06:54.756784+00	\N	0
257	2019-06-29 08:26:16.215904+00	2019-06-29 08:26:16.216027+00	\N	0
258	2019-06-29 08:37:01.5263+00	2019-06-29 08:37:01.526461+00	\N	0
259	2019-06-29 12:06:42.563694+00	2019-06-29 12:06:42.563972+00	\N	0
260	2019-06-29 17:12:20.654382+00	2019-06-29 17:12:20.654435+00	\N	0
261	2019-06-29 17:18:12.054357+00	2019-06-29 17:18:12.054404+00	\N	0
262	2019-06-29 21:19:00.350271+00	2019-06-29 21:19:00.350354+00	\N	0
263	2019-06-30 03:33:27.613932+00	2019-06-30 03:33:27.61398+00	\N	0
264	2019-06-30 05:38:01.761055+00	2019-06-30 05:38:01.761114+00	\N	0
265	2019-06-30 05:38:02.820984+00	2019-06-30 05:38:02.821192+00	\N	0
266	2019-06-30 05:38:10.628405+00	2019-06-30 05:38:10.628587+00	\N	0
267	2019-06-30 05:38:24.227194+00	2019-06-30 05:38:24.227229+00	\N	0
268	2019-06-30 05:38:25.101814+00	2019-06-30 05:38:25.101848+00	\N	0
269	2019-06-30 05:38:28.12172+00	2019-06-30 05:38:28.121754+00	\N	0
270	2019-06-30 05:38:31.585281+00	2019-06-30 05:38:31.585322+00	\N	0
271	2019-06-30 05:38:32.396154+00	2019-06-30 05:38:32.396198+00	\N	0
272	2019-06-30 05:38:35.462848+00	2019-06-30 05:38:35.462887+00	\N	0
273	2019-06-30 05:38:41.296877+00	2019-06-30 05:38:41.296913+00	\N	0
274	2019-06-30 05:38:53.388312+00	2019-06-30 05:38:53.388355+00	\N	0
275	2019-06-30 05:38:54.656592+00	2019-06-30 05:38:54.656627+00	\N	0
276	2019-06-30 05:38:56.398028+00	2019-06-30 05:38:56.398063+00	\N	0
277	2019-06-30 05:38:58.022976+00	2019-06-30 05:38:58.023016+00	\N	0
278	2019-06-30 05:38:58.028398+00	2019-06-30 05:38:58.028432+00	\N	0
279	2019-06-30 05:38:59.6669+00	2019-06-30 05:38:59.66694+00	\N	0
280	2019-06-30 05:39:00.989074+00	2019-06-30 05:39:00.989115+00	\N	0
281	2019-06-30 05:39:01.882418+00	2019-06-30 05:39:01.882456+00	\N	0
282	2019-06-30 05:39:03.211831+00	2019-06-30 05:39:03.211876+00	\N	0
283	2019-06-30 05:39:07.634164+00	2019-06-30 05:39:07.634258+00	\N	0
284	2019-06-30 05:39:21.811636+00	2019-06-30 05:39:21.81167+00	\N	0
285	2019-06-30 05:39:24.51163+00	2019-06-30 05:39:24.511669+00	\N	0
286	2019-06-30 05:39:26.106391+00	2019-06-30 05:39:26.106424+00	\N	0
287	2019-06-30 05:39:27.390653+00	2019-06-30 05:39:27.39069+00	\N	0
288	2019-06-30 05:39:28.681987+00	2019-06-30 05:39:28.682021+00	\N	0
289	2019-06-30 05:39:31.027512+00	2019-06-30 05:39:31.027551+00	\N	0
290	2019-06-30 07:58:10.064784+00	2019-06-30 07:58:10.064922+00	\N	0
291	2019-06-30 09:05:54.657087+00	2019-06-30 09:05:54.657142+00	\N	0
292	2019-06-30 09:56:45.176245+00	2019-06-30 09:56:45.176309+00	\N	0
293	2019-06-30 10:50:21.190247+00	2019-06-30 10:50:21.190294+00	\N	0
294	2019-06-30 18:42:11.09245+00	2019-06-30 18:42:11.092507+00	\N	0
295	2019-06-30 23:07:36.529802+00	2019-06-30 23:07:36.529849+00	\N	0
296	2019-07-01 06:33:22.646062+00	2019-07-01 06:33:22.646383+00	\N	0
297	2019-07-01 06:38:26.676348+00	2019-07-01 06:38:26.676864+00	\N	0
298	2019-07-01 10:45:55.035896+00	2019-07-01 10:45:55.035938+00	\N	0
299	2019-07-01 12:26:19.803268+00	2019-07-01 12:26:19.803309+00	\N	0
300	2019-07-01 19:40:21.526083+00	2019-07-01 19:40:21.526128+00	\N	0
301	2019-07-02 05:41:36.063955+00	2019-07-02 05:41:36.064014+00	\N	0
302	2019-07-02 06:39:43.332487+00	2019-07-02 06:39:43.332528+00	\N	0
303	2019-07-02 10:31:47.736381+00	2019-07-02 10:31:47.736475+00	\N	0
304	2019-07-02 10:37:13.116951+00	2019-07-02 10:37:13.117166+00	\N	0
305	2019-07-02 21:15:55.643509+00	2019-07-02 21:15:55.643688+00	\N	0
306	2019-07-02 23:58:30.620714+00	2019-07-02 23:58:30.620959+00	\N	0
307	2019-07-03 04:18:03.929679+00	2019-07-03 04:18:03.929729+00	\N	0
308	2019-07-03 04:18:04.840207+00	2019-07-03 04:18:04.840251+00	\N	0
309	2019-07-03 04:18:05.36675+00	2019-07-03 04:18:05.366792+00	\N	0
310	2019-07-03 04:18:06.239248+00	2019-07-03 04:18:06.239291+00	\N	0
311	2019-07-03 04:18:07.096617+00	2019-07-03 04:18:07.096657+00	\N	0
312	2019-07-03 07:27:11.871018+00	2019-07-03 07:27:11.871277+00	\N	0
313	2019-07-03 14:39:31.341666+00	2019-07-03 14:39:31.341716+00	\N	0
314	2019-07-03 15:25:48.528996+00	2019-07-03 15:25:48.529177+00	\N	0
315	2019-07-03 15:25:54.063725+00	2019-07-03 15:25:54.063815+00	\N	0
318	2019-07-03 15:27:32.838358+00	2019-07-03 15:27:32.838399+00	4	0
319	2019-07-03 15:27:44.033431+00	2019-07-03 15:27:44.033461+00	14	0
320	2019-07-03 16:40:37.280927+00	2019-07-03 16:40:37.280971+00	\N	0
321	2019-07-03 17:12:10.227572+00	2019-07-03 17:12:10.227617+00	\N	0
322	2019-07-03 17:24:13.832587+00	2019-07-03 17:24:13.832617+00	4	0
323	2019-07-03 17:42:57.711798+00	2019-07-03 17:42:57.711843+00	\N	0
324	2019-07-03 17:48:16.018862+00	2019-07-03 17:48:16.018907+00	\N	0
325	2019-07-03 19:18:48.612148+00	2019-07-03 19:18:48.612193+00	\N	0
326	2019-07-03 19:19:47.495121+00	2019-07-03 19:19:47.495164+00	\N	0
327	2019-07-03 19:26:28.790161+00	2019-07-03 19:26:28.790206+00	\N	0
328	2019-07-03 19:31:16.123115+00	2019-07-03 19:31:16.12316+00	\N	0
329	2019-07-03 19:56:55.05459+00	2019-07-03 19:56:55.054662+00	\N	0
330	2019-07-03 20:29:19.122024+00	2019-07-03 20:29:19.122074+00	\N	0
331	2019-07-04 00:38:26.220185+00	2019-07-04 00:38:26.220236+00	\N	0
332	2019-07-04 07:17:47.618062+00	2019-07-04 07:17:47.618243+00	\N	0
333	2019-07-04 07:33:45.365818+00	2019-07-04 07:33:45.365975+00	\N	0
334	2019-07-04 09:43:43.911041+00	2019-07-04 09:43:43.911091+00	\N	0
335	2019-07-04 13:53:46.539515+00	2019-07-04 13:53:46.539555+00	\N	0
336	2019-07-04 14:35:30.318636+00	2019-07-04 14:35:30.318679+00	\N	0
337	2019-07-04 14:35:52.04903+00	2019-07-04 14:35:52.049074+00	\N	0
338	2019-07-04 14:45:09.386454+00	2019-07-04 14:45:09.386495+00	\N	0
339	2019-07-04 16:03:14.074498+00	2019-07-04 16:03:14.074544+00	\N	0
340	2019-07-04 16:50:11.868618+00	2019-07-04 16:50:11.868659+00	\N	0
341	2019-07-04 16:53:53.232745+00	2019-07-04 16:53:53.232789+00	\N	0
342	2019-07-04 17:16:20.662449+00	2019-07-04 17:16:20.662492+00	\N	0
343	2019-07-04 17:27:50.262267+00	2019-07-04 17:27:50.262319+00	\N	0
344	2019-07-04 17:44:07.267144+00	2019-07-04 17:44:07.267187+00	\N	0
345	2019-07-04 20:45:33.549181+00	2019-07-04 20:45:33.549222+00	\N	0
346	2019-07-04 20:54:02.311421+00	2019-07-04 20:54:02.311466+00	\N	0
347	2019-07-04 21:46:35.056693+00	2019-07-04 21:46:35.056733+00	\N	0
348	2019-07-04 22:36:13.492379+00	2019-07-04 22:36:13.492453+00	\N	0
349	2019-07-04 23:12:18.541578+00	2019-07-04 23:12:18.541624+00	\N	0
350	2019-07-05 00:25:06.261302+00	2019-07-05 00:25:06.261348+00	\N	0
351	2019-07-05 00:34:57.366284+00	2019-07-05 00:34:57.366327+00	\N	0
352	2019-07-05 00:34:57.856891+00	2019-07-05 00:34:57.85693+00	\N	0
353	2019-07-05 00:34:58.351198+00	2019-07-05 00:34:58.351234+00	\N	0
354	2019-07-05 00:34:58.845912+00	2019-07-05 00:34:58.845942+00	\N	0
355	2019-07-05 00:34:59.338316+00	2019-07-05 00:34:59.338349+00	\N	0
356	2019-07-05 00:35:00.050814+00	2019-07-05 00:35:00.050847+00	\N	0
357	2019-07-05 00:35:00.76376+00	2019-07-05 00:35:00.763794+00	\N	0
358	2019-07-05 00:35:01.450933+00	2019-07-05 00:35:01.450985+00	\N	0
359	2019-07-05 00:35:02.168179+00	2019-07-05 00:35:02.16821+00	\N	0
360	2019-07-05 00:35:02.820264+00	2019-07-05 00:35:02.820305+00	\N	0
361	2019-07-05 00:35:03.316229+00	2019-07-05 00:35:03.316259+00	\N	0
362	2019-07-05 00:35:03.807648+00	2019-07-05 00:35:03.807683+00	\N	0
363	2019-07-05 00:35:04.30112+00	2019-07-05 00:35:04.301153+00	\N	0
364	2019-07-05 00:35:04.792891+00	2019-07-05 00:35:04.792925+00	\N	0
365	2019-07-05 00:35:05.284588+00	2019-07-05 00:35:05.28462+00	\N	0
366	2019-07-05 01:43:34.889566+00	2019-07-05 01:43:34.889747+00	\N	0
367	2019-07-05 05:48:25.091867+00	2019-07-05 05:48:25.091913+00	\N	0
368	2019-07-05 10:39:52.113087+00	2019-07-05 10:39:52.113308+00	\N	0
369	2019-07-05 10:58:01.189255+00	2019-07-05 10:58:01.189321+00	\N	0
370	2019-07-05 21:11:36.348346+00	2019-07-05 21:11:36.348392+00	\N	0
371	2019-07-05 22:23:28.70172+00	2019-07-05 22:23:28.701862+00	\N	0
372	2019-07-06 09:42:51.681953+00	2019-07-06 09:42:51.68218+00	\N	0
373	2019-07-06 10:12:31.010754+00	2019-07-06 10:12:31.01097+00	\N	0
374	2019-07-06 11:29:49.76919+00	2019-07-06 11:29:49.76927+00	\N	0
375	2019-07-06 11:29:50.810006+00	2019-07-06 11:29:50.810154+00	\N	0
376	2019-07-06 11:29:54.500964+00	2019-07-06 11:29:54.501008+00	\N	0
377	2019-07-06 11:29:55.42731+00	2019-07-06 11:29:55.427389+00	\N	0
378	2019-07-06 11:30:04.344024+00	2019-07-06 11:30:04.344069+00	\N	0
379	2019-07-06 11:30:08.626946+00	2019-07-06 11:30:08.626988+00	\N	0
380	2019-07-06 11:30:11.246799+00	2019-07-06 11:30:11.246844+00	\N	0
381	2019-07-06 11:30:12.889058+00	2019-07-06 11:30:12.889104+00	\N	0
382	2019-07-06 11:30:14.458063+00	2019-07-06 11:30:14.458105+00	\N	0
383	2019-07-06 11:30:15.692594+00	2019-07-06 11:30:15.692639+00	\N	0
384	2019-07-06 11:30:16.205369+00	2019-07-06 11:30:16.205414+00	\N	0
385	2019-07-06 11:30:17.048786+00	2019-07-06 11:30:17.048843+00	\N	0
386	2019-07-06 11:30:18.61955+00	2019-07-06 11:30:18.619597+00	\N	0
387	2019-07-06 11:30:18.867224+00	2019-07-06 11:30:18.86727+00	\N	0
388	2019-07-06 11:30:20.493219+00	2019-07-06 11:30:20.493264+00	\N	0
389	2019-07-06 11:30:22.857939+00	2019-07-06 11:30:22.857992+00	\N	0
390	2019-07-06 11:30:24.989454+00	2019-07-06 11:30:24.989499+00	\N	0
391	2019-07-06 11:30:28.257852+00	2019-07-06 11:30:28.257898+00	\N	0
392	2019-07-06 11:30:29.019182+00	2019-07-06 11:30:29.01923+00	\N	0
393	2019-07-06 11:30:31.928224+00	2019-07-06 11:30:31.928272+00	\N	0
394	2019-07-06 11:30:32.116205+00	2019-07-06 11:30:32.116253+00	\N	0
395	2019-07-06 11:30:35.922118+00	2019-07-06 11:30:35.922162+00	\N	0
396	2019-07-06 11:30:37.640985+00	2019-07-06 11:30:37.641034+00	\N	0
397	2019-07-06 11:30:39.26097+00	2019-07-06 11:30:39.261017+00	\N	0
398	2019-07-06 11:30:41.37677+00	2019-07-06 11:30:41.37682+00	\N	0
399	2019-07-06 11:30:42.023769+00	2019-07-06 11:30:42.023816+00	\N	0
400	2019-07-06 11:30:42.990653+00	2019-07-06 11:30:42.990699+00	\N	0
401	2019-07-06 11:30:43.638594+00	2019-07-06 11:30:43.638758+00	\N	0
402	2019-07-06 11:30:45.230757+00	2019-07-06 11:30:45.230803+00	\N	0
403	2019-07-06 11:30:46.545962+00	2019-07-06 11:30:46.546011+00	\N	0
404	2019-07-06 11:30:46.650506+00	2019-07-06 11:30:46.650553+00	\N	0
405	2019-07-06 11:30:49.269916+00	2019-07-06 11:30:49.269964+00	\N	0
406	2019-07-06 11:30:49.451028+00	2019-07-06 11:30:49.451082+00	\N	0
407	2019-07-06 11:30:51.771742+00	2019-07-06 11:30:51.771788+00	\N	0
408	2019-07-06 11:30:52.266971+00	2019-07-06 11:30:52.267018+00	\N	0
409	2019-07-06 11:30:53.376425+00	2019-07-06 11:30:53.376464+00	\N	0
410	2019-07-06 11:30:54.905276+00	2019-07-06 11:30:54.905321+00	\N	0
411	2019-07-06 11:30:55.105707+00	2019-07-06 11:30:55.10574+00	\N	0
412	2019-07-06 11:30:55.93273+00	2019-07-06 11:30:55.932767+00	\N	0
413	2019-07-06 11:30:57.370778+00	2019-07-06 11:30:57.370814+00	\N	0
414	2019-07-06 11:30:57.893098+00	2019-07-06 11:30:57.893131+00	\N	0
415	2019-07-06 11:30:59.505561+00	2019-07-06 11:30:59.505599+00	\N	0
416	2019-07-06 11:31:00.082359+00	2019-07-06 11:31:00.082395+00	\N	0
417	2019-07-06 11:31:01.398392+00	2019-07-06 11:31:01.398426+00	\N	0
418	2019-07-06 11:31:03.46753+00	2019-07-06 11:31:03.467562+00	\N	0
419	2019-07-06 12:26:34.349079+00	2019-07-06 12:26:34.349158+00	\N	0
420	2019-07-06 23:13:14.364757+00	2019-07-06 23:13:14.36481+00	\N	0
421	2019-07-07 04:40:43.348907+00	2019-07-07 04:40:43.349008+00	\N	0
422	2019-07-07 05:27:18.386038+00	2019-07-07 05:27:18.386077+00	\N	0
423	2019-07-07 09:02:50.812335+00	2019-07-07 09:02:50.812516+00	\N	0
424	2019-07-07 11:24:19.114305+00	2019-07-07 11:24:19.114351+00	\N	0
425	2019-07-07 12:04:42.277594+00	2019-07-07 12:04:42.27764+00	\N	0
426	2019-07-07 12:05:16.624736+00	2019-07-07 12:05:16.624786+00	\N	0
427	2019-07-07 12:05:35.665536+00	2019-07-07 12:05:35.665592+00	\N	0
428	2019-07-07 12:05:58.923381+00	2019-07-07 12:05:58.92344+00	\N	0
429	2019-07-07 12:06:26.047054+00	2019-07-07 12:06:26.047099+00	\N	0
430	2019-07-07 12:06:59.987737+00	2019-07-07 12:06:59.987786+00	\N	0
431	2019-07-07 12:08:12.125445+00	2019-07-07 12:08:12.125504+00	\N	0
432	2019-07-07 12:24:48.030988+00	2019-07-07 12:24:48.031034+00	\N	0
433	2019-07-07 12:25:43.054173+00	2019-07-07 12:25:43.054223+00	\N	0
434	2019-07-07 12:25:50.883246+00	2019-07-07 12:25:50.883299+00	\N	0
435	2019-07-07 12:25:59.116913+00	2019-07-07 12:25:59.116962+00	\N	0
436	2019-07-07 12:26:13.720732+00	2019-07-07 12:26:13.720784+00	\N	0
437	2019-07-07 12:26:29.90406+00	2019-07-07 12:26:29.904106+00	\N	0
438	2019-07-07 12:27:04.80113+00	2019-07-07 12:27:04.801175+00	\N	0
439	2019-07-07 12:27:44.013318+00	2019-07-07 12:27:44.013368+00	\N	0
440	2019-07-07 12:47:11.405754+00	2019-07-07 12:47:11.405805+00	\N	0
441	2019-07-07 19:17:56.860398+00	2019-07-07 19:17:56.860632+00	\N	0
442	2019-07-07 21:16:41.380732+00	2019-07-07 21:16:41.380934+00	\N	0
443	2019-07-07 23:31:29.950081+00	2019-07-07 23:31:29.950153+00	\N	0
444	2019-07-07 23:31:52.228392+00	2019-07-07 23:31:52.228428+00	\N	0
445	2019-07-08 00:48:20.438579+00	2019-07-08 00:48:20.438627+00	\N	0
446	2019-07-08 02:06:28.182378+00	2019-07-08 02:06:28.182524+00	\N	0
447	2019-07-08 05:21:23.388888+00	2019-07-08 05:21:23.38904+00	\N	0
448	2019-07-08 06:28:08.429784+00	2019-07-08 06:28:08.429899+00	\N	0
449	2019-07-08 06:41:57.098899+00	2019-07-08 06:41:57.099151+00	\N	0
450	2019-07-08 07:37:02.620136+00	2019-07-08 07:37:02.620224+00	\N	0
451	2019-07-08 08:13:16.719513+00	2019-07-08 08:13:16.719556+00	\N	0
452	2019-07-08 08:32:37.833511+00	2019-07-08 08:32:37.833566+00	\N	0
453	2019-07-08 09:18:41.803812+00	2019-07-08 09:18:41.803858+00	\N	0
454	2019-07-08 09:19:10.593855+00	2019-07-08 09:19:10.593906+00	\N	0
455	2019-07-08 09:19:45.678084+00	2019-07-08 09:19:45.678131+00	\N	0
456	2019-07-08 09:20:01.95274+00	2019-07-08 09:20:01.952786+00	\N	0
457	2019-07-08 09:20:19.908942+00	2019-07-08 09:20:19.908986+00	\N	0
458	2019-07-08 09:20:20.741074+00	2019-07-08 09:20:20.74112+00	\N	0
459	2019-07-08 09:20:53.452166+00	2019-07-08 09:20:53.452221+00	\N	0
460	2019-07-08 09:20:54.514422+00	2019-07-08 09:20:54.514457+00	\N	0
461	2019-07-08 09:21:24.535815+00	2019-07-08 09:21:24.535858+00	\N	0
462	2019-07-08 09:21:29.331237+00	2019-07-08 09:21:29.331275+00	\N	0
463	2019-07-08 09:21:58.249455+00	2019-07-08 09:21:58.249501+00	\N	0
464	2019-07-08 09:22:04.557411+00	2019-07-08 09:22:04.557452+00	\N	0
465	2019-07-08 09:22:27.074417+00	2019-07-08 09:22:27.074464+00	\N	0
466	2019-07-08 09:22:41.172721+00	2019-07-08 09:22:41.172767+00	\N	0
467	2019-07-08 09:22:59.589739+00	2019-07-08 09:22:59.589784+00	\N	0
468	2019-07-08 09:23:22.791651+00	2019-07-08 09:23:22.791719+00	\N	0
469	2019-07-08 09:23:31.703394+00	2019-07-08 09:23:31.703432+00	\N	0
470	2019-07-08 09:24:06.501566+00	2019-07-08 09:24:06.50161+00	\N	0
471	2019-07-08 09:24:37.955708+00	2019-07-08 09:24:37.955754+00	\N	0
472	2019-07-08 11:29:05.558244+00	2019-07-08 11:29:05.558293+00	\N	0
473	2019-07-08 11:29:07.014089+00	2019-07-08 11:29:07.014129+00	\N	0
474	2019-07-08 15:46:17.954465+00	2019-07-08 15:46:17.954518+00	\N	0
475	2019-07-08 16:50:52.282526+00	2019-07-08 16:50:52.282567+00	\N	0
476	2019-07-08 16:50:56.432997+00	2019-07-08 16:50:56.43304+00	\N	0
477	2019-07-08 19:39:02.380896+00	2019-07-08 19:39:02.380935+00	\N	0
478	2019-07-08 21:48:18.768188+00	2019-07-08 21:48:18.768229+00	\N	0
479	2019-07-09 00:39:02.374064+00	2019-07-09 00:39:02.374105+00	\N	0
480	2019-07-09 07:28:42.34481+00	2019-07-09 07:28:42.345013+00	\N	0
481	2019-07-09 08:59:35.83543+00	2019-07-09 08:59:35.835474+00	\N	0
482	2019-07-09 14:13:32.295194+00	2019-07-09 14:13:32.295344+00	\N	0
483	2019-07-09 19:25:26.011189+00	2019-07-09 19:25:26.011349+00	\N	0
484	2019-07-09 21:16:52.946186+00	2019-07-09 21:16:52.946225+00	\N	0
485	2019-07-09 23:51:48.346982+00	2019-07-09 23:51:48.347187+00	\N	0
486	2019-07-09 23:51:50.552462+00	2019-07-09 23:51:50.552506+00	\N	0
487	2019-07-10 05:43:26.340313+00	2019-07-10 05:43:26.340383+00	\N	0
488	2019-07-10 16:10:34.424301+00	2019-07-10 16:10:34.424354+00	\N	0
489	2019-07-10 18:14:55.305363+00	2019-07-10 18:14:55.305417+00	\N	0
490	2019-07-10 18:57:34.434859+00	2019-07-10 18:57:34.4349+00	\N	0
491	2019-07-10 18:57:37.917858+00	2019-07-10 18:57:37.917902+00	\N	0
492	2019-07-10 20:04:17.333997+00	2019-07-10 20:04:17.334048+00	\N	0
493	2019-07-10 22:29:52.925006+00	2019-07-10 22:29:52.925049+00	\N	0
494	2019-07-11 05:18:58.587606+00	2019-07-11 05:18:58.587661+00	\N	0
495	2019-07-11 05:47:21.28502+00	2019-07-11 05:47:21.285234+00	\N	0
496	2019-07-11 05:54:09.958623+00	2019-07-11 05:54:09.958685+00	\N	0
497	2019-07-11 06:02:16.689449+00	2019-07-11 06:02:16.689562+00	\N	0
498	2019-07-11 06:03:50.129596+00	2019-07-11 06:03:50.129643+00	\N	0
499	2019-07-11 06:04:05.388917+00	2019-07-11 06:04:05.389001+00	\N	0
500	2019-07-11 06:05:07.843894+00	2019-07-11 06:05:07.843944+00	\N	0
501	2019-07-11 06:10:13.812411+00	2019-07-11 06:10:13.812453+00	\N	0
502	2019-07-11 06:10:28.674493+00	2019-07-11 06:10:28.674531+00	\N	0
503	2019-07-11 06:13:24.092634+00	2019-07-11 06:13:24.092726+00	\N	0
504	2019-07-11 06:15:55.132503+00	2019-07-11 06:15:55.132555+00	\N	0
505	2019-07-11 06:19:14.23144+00	2019-07-11 06:19:14.231484+00	\N	0
506	2019-07-11 06:22:41.661375+00	2019-07-11 06:22:41.661443+00	\N	0
507	2019-07-11 06:23:28.56567+00	2019-07-11 06:23:28.565718+00	\N	0
508	2019-07-11 06:28:40.064053+00	2019-07-11 06:28:40.06413+00	\N	0
509	2019-07-11 06:34:53.174545+00	2019-07-11 06:34:53.174594+00	\N	0
510	2019-07-11 06:42:20.260976+00	2019-07-11 06:42:20.261014+00	\N	0
511	2019-07-11 06:42:40.194093+00	2019-07-11 06:42:40.194133+00	\N	0
512	2019-07-11 06:42:46.997499+00	2019-07-11 06:42:46.997559+00	\N	0
513	2019-07-11 06:42:50.684169+00	2019-07-11 06:42:50.684206+00	\N	0
514	2019-07-11 06:42:54.688125+00	2019-07-11 06:42:54.688165+00	\N	0
515	2019-07-11 06:42:56.750177+00	2019-07-11 06:42:56.750212+00	\N	0
516	2019-07-11 06:42:59.067559+00	2019-07-11 06:42:59.067596+00	\N	0
517	2019-07-11 06:43:01.846363+00	2019-07-11 06:43:01.846401+00	\N	0
518	2019-07-11 06:43:07.079537+00	2019-07-11 06:43:07.079584+00	\N	0
519	2019-07-11 06:43:08.386622+00	2019-07-11 06:43:08.386661+00	\N	0
520	2019-07-11 06:43:11.451412+00	2019-07-11 06:43:11.451455+00	\N	0
521	2019-07-11 06:43:14.354104+00	2019-07-11 06:43:14.354144+00	\N	0
522	2019-07-11 06:43:17.355546+00	2019-07-11 06:43:17.355586+00	\N	0
523	2019-07-11 06:43:20.240391+00	2019-07-11 06:43:20.240429+00	\N	0
524	2019-07-11 06:43:23.241625+00	2019-07-11 06:43:23.241666+00	\N	0
525	2019-07-11 06:43:26.157348+00	2019-07-11 06:43:26.157389+00	\N	0
526	2019-07-11 06:43:29.070343+00	2019-07-11 06:43:29.070385+00	\N	0
527	2019-07-11 06:43:33.026165+00	2019-07-11 06:43:33.026204+00	\N	0
528	2019-07-11 06:43:35.598636+00	2019-07-11 06:43:35.598674+00	\N	0
529	2019-07-11 06:43:41.151573+00	2019-07-11 06:43:41.151609+00	\N	0
530	2019-07-11 06:43:41.543224+00	2019-07-11 06:43:41.543265+00	\N	0
531	2019-07-11 06:43:41.850507+00	2019-07-11 06:43:41.850541+00	\N	0
532	2019-07-11 06:43:42.377196+00	2019-07-11 06:43:42.377234+00	\N	0
533	2019-07-11 06:43:42.744051+00	2019-07-11 06:43:42.74409+00	\N	0
534	2019-07-11 06:43:43.248964+00	2019-07-11 06:43:43.249001+00	\N	0
535	2019-07-11 06:43:43.459894+00	2019-07-11 06:43:43.459931+00	\N	0
536	2019-07-11 06:43:43.965962+00	2019-07-11 06:43:43.966003+00	\N	0
537	2019-07-11 06:43:44.263374+00	2019-07-11 06:43:44.263411+00	\N	0
538	2019-07-11 06:43:44.749525+00	2019-07-11 06:43:44.749562+00	\N	0
539	2019-07-11 06:43:45.052318+00	2019-07-11 06:43:45.052357+00	\N	0
540	2019-07-11 06:43:45.451625+00	2019-07-11 06:43:45.451662+00	\N	0
541	2019-07-11 06:43:45.952551+00	2019-07-11 06:43:45.952589+00	\N	0
542	2019-07-11 06:43:46.248024+00	2019-07-11 06:43:46.248062+00	\N	0
543	2019-07-11 06:43:46.66258+00	2019-07-11 06:43:46.662617+00	\N	0
544	2019-07-11 06:43:47.668234+00	2019-07-11 06:43:47.66827+00	\N	0
545	2019-07-11 06:43:47.856491+00	2019-07-11 06:43:47.856528+00	\N	0
546	2019-07-11 06:43:48.45998+00	2019-07-11 06:43:48.460017+00	\N	0
547	2019-07-11 06:44:48.523336+00	2019-07-11 06:44:48.523383+00	\N	0
548	2019-07-11 06:45:11.086756+00	2019-07-11 06:45:11.086793+00	\N	0
549	2019-07-11 06:45:21.625834+00	2019-07-11 06:45:21.625877+00	\N	0
550	2019-07-11 06:45:31.965209+00	2019-07-11 06:45:31.965247+00	\N	0
551	2019-07-11 06:45:42.173673+00	2019-07-11 06:45:42.173718+00	\N	0
552	2019-07-11 06:45:52.500643+00	2019-07-11 06:45:52.500746+00	\N	0
553	2019-07-11 06:46:01.125477+00	2019-07-11 06:46:01.125523+00	\N	0
554	2019-07-11 06:46:09.58566+00	2019-07-11 06:46:09.585702+00	\N	0
555	2019-07-11 06:46:17.751019+00	2019-07-11 06:46:17.751058+00	\N	0
556	2019-07-11 06:46:25.947481+00	2019-07-11 06:46:25.947521+00	\N	0
557	2019-07-11 06:46:34.117707+00	2019-07-11 06:46:34.117745+00	\N	0
558	2019-07-11 06:46:42.30477+00	2019-07-11 06:46:42.30481+00	\N	0
559	2019-07-11 06:46:50.48449+00	2019-07-11 06:46:50.484527+00	\N	0
560	2019-07-11 06:46:58.733632+00	2019-07-11 06:46:58.733673+00	\N	0
561	2019-07-11 06:47:06.105886+00	2019-07-11 06:47:06.105925+00	\N	0
562	2019-07-11 06:47:13.741134+00	2019-07-11 06:47:13.741174+00	\N	0
563	2019-07-11 06:47:21.345816+00	2019-07-11 06:47:21.345857+00	\N	0
564	2019-07-11 06:47:46.126711+00	2019-07-11 06:47:46.126757+00	\N	0
565	2019-07-11 06:47:47.767123+00	2019-07-11 06:47:47.76716+00	\N	0
566	2019-07-11 06:47:59.37783+00	2019-07-11 06:47:59.377872+00	\N	0
567	2019-07-11 06:48:01.705442+00	2019-07-11 06:48:01.705488+00	\N	0
568	2019-07-11 06:48:04.018066+00	2019-07-11 06:48:04.018105+00	\N	0
569	2019-07-11 06:48:06.344193+00	2019-07-11 06:48:06.344233+00	\N	0
570	2019-07-11 06:48:08.661412+00	2019-07-11 06:48:08.661452+00	\N	0
571	2019-07-11 06:48:10.999022+00	2019-07-11 06:48:10.999059+00	\N	0
572	2019-07-11 06:48:13.307251+00	2019-07-11 06:48:13.307289+00	\N	0
573	2019-07-11 06:48:15.649242+00	2019-07-11 06:48:15.649282+00	\N	0
574	2019-07-11 06:48:17.977738+00	2019-07-11 06:48:17.97778+00	\N	0
575	2019-07-11 06:48:20.306291+00	2019-07-11 06:48:20.30633+00	\N	0
576	2019-07-11 06:48:22.639275+00	2019-07-11 06:48:22.639316+00	\N	0
577	2019-07-11 06:48:24.989277+00	2019-07-11 06:48:24.989318+00	\N	0
578	2019-07-11 06:48:27.367443+00	2019-07-11 06:48:27.36748+00	\N	0
579	2019-07-11 06:48:29.713363+00	2019-07-11 06:48:29.713404+00	\N	0
580	2019-07-11 06:48:32.201926+00	2019-07-11 06:48:32.201966+00	\N	0
581	2019-07-11 06:58:03.001222+00	2019-07-11 06:58:03.001369+00	\N	0
582	2019-07-11 08:01:56.92399+00	2019-07-11 08:01:56.924047+00	\N	0
583	2019-07-11 08:02:31.622961+00	2019-07-11 08:02:31.623005+00	\N	0
584	2019-07-11 09:31:46.030619+00	2019-07-11 09:31:46.030694+00	\N	0
585	2019-07-11 11:02:24.020879+00	2019-07-11 11:02:24.020928+00	\N	0
586	2019-07-11 12:47:50.710481+00	2019-07-11 12:47:50.710523+00	\N	0
587	2019-07-11 14:16:44.045848+00	2019-07-11 14:16:44.045902+00	\N	0
588	2019-07-11 15:27:43.238705+00	2019-07-11 15:27:43.238749+00	\N	0
589	2019-07-11 15:46:12.422696+00	2019-07-11 15:46:12.422737+00	\N	0
590	2019-07-11 18:29:40.67843+00	2019-07-11 18:29:40.678473+00	\N	0
591	2019-07-11 20:12:46.584498+00	2019-07-11 20:12:46.584555+00	\N	0
592	2019-07-11 20:12:46.637083+00	2019-07-11 20:12:46.637128+00	\N	0
593	2019-07-11 21:10:14.922837+00	2019-07-11 21:10:14.92289+00	\N	0
594	2019-07-11 21:50:36.02787+00	2019-07-11 21:50:36.027917+00	\N	0
595	2019-07-11 21:50:36.194394+00	2019-07-11 21:50:36.19444+00	\N	0
596	2019-07-11 23:15:00.613953+00	2019-07-11 23:15:00.613997+00	\N	0
597	2019-07-12 00:09:32.607229+00	2019-07-12 00:09:32.607322+00	\N	0
598	2019-07-12 06:08:54.885961+00	2019-07-12 06:08:54.886187+00	\N	0
599	2019-07-12 06:10:05.303188+00	2019-07-12 06:10:05.303262+00	\N	0
600	2019-07-12 07:02:18.138354+00	2019-07-12 07:02:18.138435+00	\N	0
601	2019-07-12 09:37:27.436844+00	2019-07-12 09:37:27.437024+00	\N	0
602	2019-07-12 11:21:48.886217+00	2019-07-12 11:21:48.886295+00	\N	0
603	2019-07-12 11:51:30.325433+00	2019-07-12 11:51:30.325534+00	\N	0
604	2019-07-12 12:14:15.523122+00	2019-07-12 12:14:15.523192+00	\N	0
605	2019-07-12 12:31:42.904117+00	2019-07-12 12:31:42.904168+00	\N	0
606	2019-07-12 12:41:47.57615+00	2019-07-12 12:41:47.576199+00	\N	0
607	2019-07-12 13:12:02.444756+00	2019-07-12 13:12:02.444833+00	\N	0
608	2019-07-12 13:22:48.025403+00	2019-07-12 13:22:48.02545+00	\N	0
609	2019-07-12 14:43:35.939024+00	2019-07-12 14:43:35.939071+00	\N	0
610	2019-07-12 15:19:02.176046+00	2019-07-12 15:19:02.176118+00	\N	0
611	2019-07-13 05:31:33.159012+00	2019-07-13 05:31:33.159062+00	\N	0
612	2019-07-13 07:20:33.199175+00	2019-07-13 07:20:33.199337+00	\N	0
613	2019-07-13 08:37:03.700118+00	2019-07-13 08:37:03.700215+00	\N	0
614	2019-07-13 08:56:05.062531+00	2019-07-13 08:56:05.062758+00	\N	0
615	2019-07-13 14:05:39.600864+00	2019-07-13 14:05:39.60093+00	\N	0
616	2019-07-13 14:05:39.68148+00	2019-07-13 14:05:39.681629+00	\N	0
617	2019-07-13 14:05:40.611027+00	2019-07-13 14:05:40.611062+00	\N	0
618	2019-07-13 14:05:40.681289+00	2019-07-13 14:05:40.68133+00	\N	0
619	2019-07-13 14:05:54.350791+00	2019-07-13 14:05:54.350832+00	\N	0
620	2019-07-13 14:05:54.704576+00	2019-07-13 14:05:54.704613+00	\N	0
621	2019-07-13 14:06:02.094241+00	2019-07-13 14:06:02.094289+00	\N	0
622	2019-07-13 14:06:02.210038+00	2019-07-13 14:06:02.210075+00	\N	0
623	2019-07-13 14:06:03.755187+00	2019-07-13 14:06:03.755224+00	\N	0
624	2019-07-13 14:06:03.959988+00	2019-07-13 14:06:03.960025+00	\N	0
625	2019-07-13 14:06:05.330857+00	2019-07-13 14:06:05.330896+00	\N	0
626	2019-07-13 14:06:05.430168+00	2019-07-13 14:06:05.430203+00	\N	0
627	2019-07-13 14:06:06.978577+00	2019-07-13 14:06:06.978626+00	\N	0
628	2019-07-13 14:06:07.11199+00	2019-07-13 14:06:07.112031+00	\N	0
629	2019-07-13 14:06:09.298656+00	2019-07-13 14:06:09.298693+00	\N	0
630	2019-07-13 14:06:09.384481+00	2019-07-13 14:06:09.384525+00	\N	0
631	2019-07-13 14:06:15.598788+00	2019-07-13 14:06:15.598836+00	\N	0
632	2019-07-13 14:06:15.625837+00	2019-07-13 14:06:15.625889+00	\N	0
633	2019-07-13 14:06:19.141887+00	2019-07-13 14:06:19.141931+00	\N	0
634	2019-07-13 14:06:19.446526+00	2019-07-13 14:06:19.446563+00	\N	0
635	2019-07-13 14:06:23.073172+00	2019-07-13 14:06:23.073211+00	\N	0
636	2019-07-13 14:06:23.414482+00	2019-07-13 14:06:23.414518+00	\N	0
637	2019-07-13 14:06:28.729928+00	2019-07-13 14:06:28.730007+00	\N	0
638	2019-07-13 14:06:29.172907+00	2019-07-13 14:06:29.172942+00	\N	0
639	2019-07-13 14:06:30.358727+00	2019-07-13 14:06:30.358766+00	\N	0
640	2019-07-13 14:06:30.891983+00	2019-07-13 14:06:30.892022+00	\N	0
641	2019-07-13 14:06:32.920566+00	2019-07-13 14:06:32.920606+00	\N	0
642	2019-07-13 14:06:33.715377+00	2019-07-13 14:06:33.715417+00	\N	0
643	2019-07-13 14:06:34.309801+00	2019-07-13 14:06:34.309838+00	\N	0
644	2019-07-13 14:06:35.347557+00	2019-07-13 14:06:35.347599+00	\N	0
645	2019-07-13 14:06:37.193958+00	2019-07-13 14:06:37.193996+00	\N	0
646	2019-07-13 14:06:38.179001+00	2019-07-13 14:06:38.179041+00	\N	0
647	2019-07-13 14:06:39.727428+00	2019-07-13 14:06:39.727464+00	\N	0
648	2019-07-13 14:06:40.996637+00	2019-07-13 14:06:40.996747+00	\N	0
649	2019-07-13 14:06:42.4976+00	2019-07-13 14:06:42.49764+00	\N	0
650	2019-07-13 14:06:43.808445+00	2019-07-13 14:06:43.808482+00	\N	0
651	2019-07-13 14:06:43.84092+00	2019-07-13 14:06:43.840958+00	\N	0
652	2019-07-13 14:06:45.162264+00	2019-07-13 14:06:45.162298+00	\N	0
653	2019-07-13 14:06:45.213591+00	2019-07-13 14:06:45.213626+00	\N	0
654	2019-07-13 14:06:46.555097+00	2019-07-13 14:06:46.555137+00	\N	0
655	2019-07-13 14:06:47.952478+00	2019-07-13 14:06:47.952515+00	\N	0
656	2019-07-13 14:06:49.364319+00	2019-07-13 14:06:49.36436+00	\N	0
657	2019-07-13 14:06:49.393999+00	2019-07-13 14:06:49.394041+00	\N	0
658	2019-07-13 14:32:49.342434+00	2019-07-13 14:32:49.342504+00	\N	0
659	2019-07-13 14:32:52.901983+00	2019-07-13 14:32:52.902026+00	\N	0
660	2019-07-13 14:32:54.279581+00	2019-07-13 14:32:54.279649+00	\N	0
661	2019-07-13 14:32:56.479175+00	2019-07-13 14:32:56.479207+00	\N	0
662	2019-07-13 16:33:35.785708+00	2019-07-13 16:33:35.785756+00	\N	0
663	2019-07-13 16:42:49.522147+00	2019-07-13 16:42:49.522246+00	\N	0
664	2019-07-13 16:42:54.30927+00	2019-07-13 16:42:54.309309+00	\N	0
665	2019-07-13 17:35:29.197775+00	2019-07-13 17:35:29.19782+00	\N	0
666	2019-07-13 17:44:12.112724+00	2019-07-13 17:44:12.112766+00	\N	0
667	2019-07-13 17:44:16.580852+00	2019-07-13 17:44:16.580894+00	\N	0
668	2019-07-14 03:20:00.408903+00	2019-07-14 03:20:00.409043+00	\N	0
669	2019-07-14 03:30:51.796696+00	2019-07-14 03:30:51.796964+00	\N	0
670	2019-07-14 04:22:58.014743+00	2019-07-14 04:22:58.014862+00	\N	0
671	2019-07-14 04:28:46.740815+00	2019-07-14 04:28:46.740902+00	\N	0
672	2019-07-14 10:03:20.42298+00	2019-07-14 10:03:20.423047+00	\N	0
673	2019-07-14 10:46:21.719091+00	2019-07-14 10:46:21.719264+00	\N	0
674	2019-07-14 13:20:44.970883+00	2019-07-14 13:20:44.971004+00	\N	0
675	2019-07-14 16:00:43.39235+00	2019-07-14 16:00:43.392398+00	\N	0
676	2019-07-14 16:00:47.446513+00	2019-07-14 16:00:47.44655+00	\N	0
677	2019-07-14 18:23:37.518754+00	2019-07-14 18:23:37.518798+00	\N	0
678	2019-07-15 00:21:15.882776+00	2019-07-15 00:21:15.88282+00	\N	0
679	2019-07-15 00:21:18.911529+00	2019-07-15 00:21:18.91158+00	\N	0
680	2019-07-15 00:21:22.44677+00	2019-07-15 00:21:22.446808+00	\N	0
681	2019-07-15 00:21:30.735879+00	2019-07-15 00:21:30.735921+00	\N	0
682	2019-07-15 00:21:33.631076+00	2019-07-15 00:21:33.631112+00	\N	0
683	2019-07-15 00:21:36.606139+00	2019-07-15 00:21:36.606314+00	\N	0
684	2019-07-15 00:21:39.428053+00	2019-07-15 00:21:39.428096+00	\N	0
685	2019-07-15 00:21:42.207267+00	2019-07-15 00:21:42.207307+00	\N	0
686	2019-07-15 00:21:45.196724+00	2019-07-15 00:21:45.196768+00	\N	0
687	2019-07-15 00:21:50.706292+00	2019-07-15 00:21:50.706326+00	\N	0
688	2019-07-15 00:21:53.808712+00	2019-07-15 00:21:53.808752+00	\N	0
689	2019-07-15 06:37:36.602614+00	2019-07-15 06:37:36.602658+00	\N	0
690	2019-07-15 08:56:12.630523+00	2019-07-15 08:56:12.63058+00	\N	0
691	2019-07-15 09:23:06.959076+00	2019-07-15 09:23:06.959122+00	\N	0
692	2019-07-15 09:36:33.097209+00	2019-07-15 09:36:33.097272+00	\N	0
693	2019-07-15 10:49:11.875278+00	2019-07-15 10:49:11.875321+00	\N	0
694	2019-07-15 18:28:47.387485+00	2019-07-15 18:28:47.38772+00	\N	0
695	2019-07-15 18:28:51.857064+00	2019-07-15 18:28:51.857208+00	\N	0
696	2019-07-15 19:15:41.378315+00	2019-07-15 19:15:41.378359+00	\N	0
697	2019-07-15 19:15:52.629819+00	2019-07-15 19:15:52.629859+00	\N	0
698	2019-07-15 19:15:54.12731+00	2019-07-15 19:15:54.127353+00	\N	0
699	2019-07-15 19:15:55.127545+00	2019-07-15 19:15:55.127588+00	\N	0
700	2019-07-15 19:16:00.652363+00	2019-07-15 19:16:00.652406+00	\N	0
701	2019-07-15 19:16:05.285589+00	2019-07-15 19:16:05.285627+00	\N	0
702	2019-07-15 19:16:06.420008+00	2019-07-15 19:16:06.420046+00	\N	0
703	2019-07-15 19:16:07.563164+00	2019-07-15 19:16:07.563201+00	\N	0
704	2019-07-15 19:16:08.727707+00	2019-07-15 19:16:08.727743+00	\N	0
705	2019-07-15 19:16:10.461246+00	2019-07-15 19:16:10.461282+00	\N	0
706	2019-07-15 19:16:11.790998+00	2019-07-15 19:16:11.791034+00	\N	0
707	2019-07-15 19:16:12.913447+00	2019-07-15 19:16:12.91348+00	\N	0
708	2019-07-15 19:16:14.174195+00	2019-07-15 19:16:14.174231+00	\N	0
709	2019-07-15 19:16:15.263602+00	2019-07-15 19:16:15.26364+00	\N	0
710	2019-07-15 19:16:16.389588+00	2019-07-15 19:16:16.389623+00	\N	0
711	2019-07-15 19:16:17.503042+00	2019-07-15 19:16:17.503079+00	\N	0
712	2019-07-15 19:16:18.688381+00	2019-07-15 19:16:18.688416+00	\N	0
713	2019-07-15 19:16:19.763365+00	2019-07-15 19:16:19.763403+00	\N	0
714	2019-07-15 19:16:25.11576+00	2019-07-15 19:16:25.115796+00	\N	0
715	2019-07-15 19:16:26.084946+00	2019-07-15 19:16:26.084981+00	\N	0
716	2019-07-15 19:16:27.142069+00	2019-07-15 19:16:27.142108+00	\N	0
717	2019-07-15 19:16:28.437591+00	2019-07-15 19:16:28.437626+00	\N	0
718	2019-07-15 19:16:29.684657+00	2019-07-15 19:16:29.684746+00	\N	0
719	2019-07-15 19:16:30.764367+00	2019-07-15 19:16:30.764405+00	\N	0
720	2019-07-15 19:16:31.947384+00	2019-07-15 19:16:31.94742+00	\N	0
721	2019-07-15 19:16:33.089757+00	2019-07-15 19:16:33.089794+00	\N	0
722	2019-07-15 19:16:34.400384+00	2019-07-15 19:16:34.400418+00	\N	0
723	2019-07-15 19:16:35.648358+00	2019-07-15 19:16:35.64841+00	\N	0
724	2019-07-15 19:16:36.774737+00	2019-07-15 19:16:36.774773+00	\N	0
725	2019-07-15 19:16:37.647462+00	2019-07-15 19:16:37.647498+00	\N	0
726	2019-07-15 19:16:38.777401+00	2019-07-15 19:16:38.777436+00	\N	0
727	2019-07-15 19:16:40.095669+00	2019-07-15 19:16:40.095705+00	\N	0
728	2019-07-15 19:16:41.310731+00	2019-07-15 19:16:41.310767+00	\N	0
729	2019-07-15 19:16:42.504193+00	2019-07-15 19:16:42.504229+00	\N	0
730	2019-07-15 19:16:43.664792+00	2019-07-15 19:16:43.66483+00	\N	0
731	2019-07-15 19:16:45.253479+00	2019-07-15 19:16:45.253513+00	\N	0
732	2019-07-15 19:43:22.850095+00	2019-07-15 19:43:22.850158+00	\N	0
733	2019-07-15 19:43:31.866195+00	2019-07-15 19:43:31.866229+00	\N	0
734	2019-07-15 22:55:49.93946+00	2019-07-15 22:55:49.9395+00	\N	0
735	2019-07-16 02:12:37.280428+00	2019-07-16 02:12:37.280522+00	\N	0
736	2019-07-16 07:51:04.058725+00	2019-07-16 07:51:04.058768+00	\N	0
737	2019-07-16 20:08:51.91615+00	2019-07-16 20:08:51.916408+00	\N	0
738	2019-07-17 10:59:11.19697+00	2019-07-17 10:59:11.197116+00	\N	0
739	2019-07-17 10:59:12.673913+00	2019-07-17 10:59:12.673947+00	\N	0
740	2019-07-17 10:59:15.296086+00	2019-07-17 10:59:15.296224+00	\N	0
741	2019-07-17 10:59:16.554204+00	2019-07-17 10:59:16.554368+00	\N	0
742	2019-07-17 10:59:17.717652+00	2019-07-17 10:59:17.717687+00	\N	0
743	2019-07-17 17:52:50.261916+00	2019-07-17 17:52:50.262142+00	\N	0
744	2019-07-18 05:14:27.845158+00	2019-07-18 05:14:27.845331+00	\N	0
745	2019-07-18 05:15:11.848829+00	2019-07-18 05:15:11.849074+00	\N	0
746	2019-07-18 07:42:48.579894+00	2019-07-18 07:42:48.580007+00	\N	0
747	2019-07-18 09:23:08.966169+00	2019-07-18 09:23:08.96621+00	\N	0
748	2019-07-18 12:11:57.844505+00	2019-07-18 12:11:57.844774+00	\N	0
749	2019-07-18 14:23:52.537238+00	2019-07-18 14:23:52.53729+00	\N	0
750	2019-07-18 23:50:16.231748+00	2019-07-18 23:50:16.231809+00	\N	0
751	2019-07-19 02:38:23.435554+00	2019-07-19 02:38:23.435604+00	\N	0
752	2019-07-19 03:20:10.086919+00	2019-07-19 03:20:10.086956+00	\N	0
753	2019-07-19 03:59:03.285188+00	2019-07-19 03:59:03.285262+00	\N	0
754	2019-07-19 03:59:08.248986+00	2019-07-19 03:59:08.249022+00	\N	0
755	2019-07-19 03:59:11.516332+00	2019-07-19 03:59:11.516377+00	\N	0
756	2019-07-19 03:59:14.44532+00	2019-07-19 03:59:14.445356+00	\N	0
757	2019-07-19 03:59:16.440756+00	2019-07-19 03:59:16.440791+00	\N	0
758	2019-07-19 04:02:16.767641+00	2019-07-19 04:02:16.767825+00	\N	0
759	2019-07-19 04:04:52.330852+00	2019-07-19 04:04:52.330889+00	\N	0
760	2019-07-19 05:26:09.926274+00	2019-07-19 05:26:09.926316+00	\N	0
761	2019-07-19 05:26:13.919511+00	2019-07-19 05:26:13.919549+00	\N	0
762	2019-07-19 10:12:27.647606+00	2019-07-19 10:12:27.647807+00	\N	0
763	2019-07-19 17:38:01.343025+00	2019-07-19 17:38:01.343148+00	\N	0
764	2019-07-19 17:52:03.851068+00	2019-07-19 17:52:03.851118+00	\N	0
765	2019-07-19 20:30:54.351309+00	2019-07-19 20:30:54.351366+00	\N	0
766	2019-07-19 20:41:17.923665+00	2019-07-19 20:41:17.92382+00	\N	0
767	2019-07-20 01:38:32.908541+00	2019-07-20 01:38:32.908759+00	\N	0
768	2019-07-20 03:59:35.844568+00	2019-07-20 03:59:35.844608+00	\N	0
769	2019-07-20 05:00:23.925705+00	2019-07-20 05:00:23.925797+00	\N	0
770	2019-07-20 05:01:25.011142+00	2019-07-20 05:01:25.011192+00	\N	0
771	2019-07-20 05:02:38.111794+00	2019-07-20 05:02:38.111838+00	\N	0
772	2019-07-20 05:04:04.501906+00	2019-07-20 05:04:04.501956+00	\N	0
773	2019-07-20 05:05:32.830308+00	2019-07-20 05:05:32.830356+00	\N	0
774	2019-07-20 05:06:40.703816+00	2019-07-20 05:06:40.703861+00	\N	0
775	2019-07-20 05:07:09.70831+00	2019-07-20 05:07:09.708347+00	\N	0
776	2019-07-20 05:07:55.738492+00	2019-07-20 05:07:55.738537+00	\N	0
777	2019-07-20 05:08:13.122395+00	2019-07-20 05:08:13.122436+00	\N	0
778	2019-07-20 05:08:29.80995+00	2019-07-20 05:08:29.809999+00	\N	0
779	2019-07-20 08:13:49.683649+00	2019-07-20 08:13:49.683725+00	\N	0
780	2019-07-20 09:35:40.775063+00	2019-07-20 09:35:40.775119+00	\N	0
781	2019-07-20 14:22:50.257912+00	2019-07-20 14:22:50.257955+00	\N	0
782	2019-07-20 14:22:54.90901+00	2019-07-20 14:22:54.909056+00	\N	0
783	2019-07-20 15:10:20.69132+00	2019-07-20 15:10:20.691364+00	\N	0
784	2019-07-20 17:13:51.02392+00	2019-07-20 17:13:51.02397+00	\N	0
785	2019-07-20 17:13:55.561232+00	2019-07-20 17:13:55.561278+00	\N	0
786	2019-07-20 21:14:49.112849+00	2019-07-20 21:14:49.113125+00	\N	0
787	2019-07-21 09:23:09.858317+00	2019-07-21 09:23:09.858628+00	\N	0
788	2019-07-21 09:23:41.823654+00	2019-07-21 09:23:41.823791+00	\N	0
789	2019-07-21 11:44:29.46364+00	2019-07-21 11:44:29.463824+00	\N	0
790	2019-07-21 16:00:32.920323+00	2019-07-21 16:00:32.920374+00	\N	0
791	2019-07-21 18:13:01.512463+00	2019-07-21 18:13:01.512506+00	\N	0
792	2019-07-22 01:32:55.944546+00	2019-07-22 01:32:55.944749+00	\N	0
793	2019-07-22 02:58:41.199397+00	2019-07-22 02:58:41.19945+00	\N	0
794	2019-07-22 03:21:40.228575+00	2019-07-22 03:21:40.228618+00	\N	0
795	2019-07-22 04:47:23.427124+00	2019-07-22 04:47:23.427182+00	\N	0
796	2019-07-22 04:47:25.235205+00	2019-07-22 04:47:25.235256+00	\N	0
797	2019-07-22 09:48:24.354423+00	2019-07-22 09:48:24.354632+00	\N	0
798	2019-07-22 11:17:51.645544+00	2019-07-22 11:17:51.645626+00	\N	0
799	2019-07-22 17:57:03.764039+00	2019-07-22 17:57:03.764088+00	\N	0
800	2019-07-22 21:36:47.086213+00	2019-07-22 21:36:47.086262+00	\N	0
801	2019-07-23 01:54:37.886872+00	2019-07-23 01:54:37.886921+00	\N	0
802	2019-07-23 05:51:48.900365+00	2019-07-23 05:51:48.900411+00	\N	0
803	2019-07-23 05:51:49.829875+00	2019-07-23 05:51:49.829923+00	\N	0
804	2019-07-23 05:51:51.771183+00	2019-07-23 05:51:51.771224+00	\N	0
805	2019-07-23 05:51:52.682476+00	2019-07-23 05:51:52.682514+00	\N	0
806	2019-07-23 05:52:03.44126+00	2019-07-23 05:52:03.441303+00	\N	0
807	2019-07-23 05:52:06.426546+00	2019-07-23 05:52:06.426587+00	\N	0
808	2019-07-23 05:52:10.787699+00	2019-07-23 05:52:10.787741+00	\N	0
809	2019-07-23 05:52:12.420843+00	2019-07-23 05:52:12.420893+00	\N	0
810	2019-07-23 05:52:13.871598+00	2019-07-23 05:52:13.871637+00	\N	0
811	2019-07-23 05:52:14.109532+00	2019-07-23 05:52:14.10957+00	\N	0
812	2019-07-23 05:52:15.535591+00	2019-07-23 05:52:15.535632+00	\N	0
813	2019-07-23 05:52:15.733726+00	2019-07-23 05:52:15.733765+00	\N	0
814	2019-07-23 05:52:17.18785+00	2019-07-23 05:52:17.187893+00	\N	0
815	2019-07-23 05:52:18.154549+00	2019-07-23 05:52:18.154588+00	\N	0
816	2019-07-23 05:52:18.964033+00	2019-07-23 05:52:18.964075+00	\N	0
817	2019-07-23 05:52:21.114031+00	2019-07-23 05:52:21.114073+00	\N	0
818	2019-07-23 05:52:24.699098+00	2019-07-23 05:52:24.69914+00	\N	0
819	2019-07-23 05:52:27.315235+00	2019-07-23 05:52:27.315276+00	\N	0
820	2019-07-23 05:52:27.933089+00	2019-07-23 05:52:27.933127+00	\N	0
821	2019-07-23 05:52:31.297216+00	2019-07-23 05:52:31.297254+00	\N	0
822	2019-07-23 05:52:31.556234+00	2019-07-23 05:52:31.556275+00	\N	0
823	2019-07-23 05:52:34.965152+00	2019-07-23 05:52:34.965194+00	\N	0
824	2019-07-23 05:52:37.414506+00	2019-07-23 05:52:37.414547+00	\N	0
825	2019-07-23 05:52:38.759198+00	2019-07-23 05:52:38.759242+00	\N	0
826	2019-07-23 05:52:40.725145+00	2019-07-23 05:52:40.725186+00	\N	0
827	2019-07-23 05:52:41.524812+00	2019-07-23 05:52:41.524851+00	\N	0
828	2019-07-23 05:52:42.406166+00	2019-07-23 05:52:42.406207+00	\N	0
829	2019-07-23 05:52:42.898633+00	2019-07-23 05:52:42.898671+00	\N	0
830	2019-07-23 05:52:45.110417+00	2019-07-23 05:52:45.110455+00	\N	0
831	2019-07-23 05:52:45.678024+00	2019-07-23 05:52:45.678067+00	\N	0
832	2019-07-23 05:52:46.725412+00	2019-07-23 05:52:46.72545+00	\N	0
833	2019-07-23 05:52:48.481469+00	2019-07-23 05:52:48.481512+00	\N	0
834	2019-07-23 05:52:49.491062+00	2019-07-23 05:52:49.491103+00	\N	0
835	2019-07-23 05:52:51.275015+00	2019-07-23 05:52:51.275057+00	\N	0
836	2019-07-23 05:52:52.280341+00	2019-07-23 05:52:52.280379+00	\N	0
837	2019-07-23 05:52:52.9009+00	2019-07-23 05:52:52.900942+00	\N	0
838	2019-07-23 05:52:54.210979+00	2019-07-23 05:52:54.211018+00	\N	0
839	2019-07-23 05:52:55.151728+00	2019-07-23 05:52:55.151777+00	\N	0
840	2019-07-23 05:52:56.473414+00	2019-07-23 05:52:56.473451+00	\N	0
841	2019-07-23 05:52:56.895045+00	2019-07-23 05:52:56.895085+00	\N	0
842	2019-07-23 05:52:57.510013+00	2019-07-23 05:52:57.51005+00	\N	0
843	2019-07-23 05:52:58.254467+00	2019-07-23 05:52:58.254517+00	\N	0
844	2019-07-23 05:53:00.349164+00	2019-07-23 05:53:00.349205+00	\N	0
845	2019-07-23 05:53:01.685291+00	2019-07-23 05:53:01.685343+00	\N	0
846	2019-07-23 06:04:37.222741+00	2019-07-23 06:04:37.222785+00	\N	0
847	2019-07-23 06:19:05.247671+00	2019-07-23 06:19:05.247758+00	\N	0
\.


--
-- Name: cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.cart_cart_id_seq', 847, true);


--
-- Data for Name: cart_cartproduct; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.cart_cartproduct (id, quantity, "timestamp", cart_id, product_id) FROM stdin;
\.


--
-- Name: cart_cartproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.cart_cartproduct_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
13	2019-06-14 18:04:01.510954+00	7	Fashion Jewellery	1	[{"added": {}}]	14	4
14	2019-06-14 18:24:07.364047+00	5	thegemstonelounge@gmail.com	2	[{"changed": {"fields": ["is_active", "is_verified"]}}]	23	4
15	2019-06-14 18:38:57.712722+00	2	Delhi	1	[{"added": {}}]	8	4
16	2019-06-14 18:40:00.647955+00	3	Delhi	1	[{"added": {}}]	8	4
17	2019-06-14 18:40:08.133524+00	2	Delhi	1	[{"added": {}}]	7	4
18	2019-06-14 18:41:37.581644+00	2	thegemstonelounge@gmail.com-thegemstonelounge	1	[{"added": {}}]	24	4
19	2019-06-14 18:51:52.823753+00	18	earing-Gold	1	[{"added": {}}]	13	4
20	2019-06-14 18:54:22.363559+00	1	Gold Earing	1	[{"added": {}}]	18	4
21	2019-06-14 18:55:00.602097+00	1	Gold Earing	1	[{"added": {}}]	32	4
22	2019-06-14 18:58:53.261802+00	1	THE GEMS STONE	1	[{"added": {}}]	19	4
23	2019-06-14 22:47:49.55237+00	1	clarity1	1	[{"added": {}}]	12	4
24	2019-06-14 22:48:10.804405+00	1	color1	1	[{"added": {}}]	15	4
25	2019-06-14 22:48:30.418705+00	1	cut1	1	[{"added": {}}]	17	4
26	2019-06-14 22:48:45.925909+00	1	mat1	1	[{"added": {}}]	10	4
27	2019-06-14 23:02:48.661873+00	2	thegemstonelounge@gmail.com-thegemstonelounge	2	[{"changed": {"fields": ["image"]}}]	24	4
28	2019-06-15 17:07:24.360199+00	2	admin2@goldgali.com	3		23	4
29	2019-06-15 17:07:24.36441+00	6	admin@ashutosh.com	3		23	4
30	2019-06-15 17:07:24.36702+00	1	admin@goldgali.com	3		23	4
31	2019-06-15 17:07:24.369245+00	7	kesharvani99@gmail.com	3		23	4
32	2019-06-15 17:07:24.371398+00	10	test11@gmail.com	3		23	4
33	2019-06-15 17:07:24.373459+00	9	test12@gmail.com	3		23	4
34	2019-06-15 17:07:24.375453+00	11	test13@gmail.com	3		23	4
35	2019-06-15 17:07:24.377099+00	8	test1@gmail.com	3		23	4
36	2019-06-15 18:27:50.678902+00	2	thegemstonelounge@gmail.com-thegemstonelounge	3		24	4
37	2019-06-15 19:07:59.338053+00	12	kesharvani99@gmail.com	3		23	4
38	2019-06-17 07:20:23.384435+00	19	Necklace-Gold	1	[{"added": {}}]	13	4
39	2019-06-18 02:56:37.20876+00	1	Gold	1	[{"added": {}}]	16	4
40	2019-06-18 02:57:03.632648+00	2	Silver	1	[{"added": {}}]	16	4
41	2019-06-18 02:57:49.01919+00	4	admin@a.com	2	[{"changed": {"fields": ["user_type"]}}]	23	4
42	2019-06-18 03:39:58.49731+00	3	Platinum	1	[{"added": {}}]	16	4
43	2019-06-21 17:39:16.694468+00	3	thegemstonelounge@gmail.com-thegemstonelounge	1	[{"added": {}}]	24	4
44	2019-06-24 11:36:22.697773+00	4	BS.SARAFF@GMAIL.COM-The JEWELLERY BOUTIQUE	1	[{"added": {}}]	24	4
45	2019-06-25 07:43:26.744074+00	15	BS.SARAFF@GMAIL.COM	2	[{"changed": {"fields": ["is_verified"]}}]	23	4
46	2019-06-25 16:57:37.869258+00	1	Gold Earing	3		18	4
47	2019-07-03 15:30:09.639829+00	3	Hiranya Jewelart	2	[]	19	4
48	2019-07-03 15:30:22.920987+00	3	Hiranya Jewelart	2	[]	19	4
49	2019-07-03 15:31:01.181036+00	14	hiranyajewelart@gmail.com	2	[{"changed": {"fields": ["is_verified"]}}]	23	4
50	2019-07-03 15:31:29.937282+00	14	hiranyajewelart@gmail.com	2	[]	23	4
51	2019-07-03 15:32:55.920587+00	5	hiranyajewelart@gmail.com-Hiranya Jewelart	1	[{"added": {}}]	24	4
52	2019-07-03 16:09:34.253364+00	2	vvs	1	[{"added": {}}]	12	4
53	2019-07-03 16:09:50.421606+00	1	clarity1	3		12	4
54	2019-07-03 16:10:09.479303+00	3	VS 1	1	[{"added": {}}]	12	4
55	2019-07-03 16:10:33.845954+00	4	IF	1	[{"added": {}}]	12	4
56	2019-07-03 16:10:46.689545+00	5	VVS2	1	[{"added": {}}]	12	4
57	2019-07-03 16:10:56.870361+00	2	VVS 1	2	[{"changed": {"fields": ["name"]}}]	12	4
58	2019-07-03 16:11:12.885235+00	6	VS 2	1	[{"added": {}}]	12	4
59	2019-07-03 16:11:25.730265+00	7	SI1	1	[{"added": {}}]	12	4
60	2019-07-03 16:11:34.125708+00	8	SI2	1	[{"added": {}}]	12	4
61	2019-07-03 16:11:43.466421+00	9	I1	1	[{"added": {}}]	12	4
62	2019-07-03 16:11:52.589872+00	10	I2	1	[{"added": {}}]	12	4
63	2019-07-03 16:12:02.121406+00	11	I3	1	[{"added": {}}]	12	4
64	2019-07-03 16:13:01.073015+00	1	color1	3		15	4
65	2019-07-03 16:13:32.792944+00	2	D	1	[{"added": {}}]	15	4
66	2019-07-03 16:13:42.874639+00	3	E	1	[{"added": {}}]	15	4
67	2019-07-03 16:13:51.950645+00	4	F	1	[{"added": {}}]	15	4
68	2019-07-03 16:14:01.122011+00	5	G	1	[{"added": {}}]	15	4
69	2019-07-03 16:14:09.200374+00	6	H	1	[{"added": {}}]	15	4
70	2019-07-03 16:14:17.50421+00	7	I	1	[{"added": {}}]	15	4
71	2019-07-03 16:14:25.397015+00	8	J	1	[{"added": {}}]	15	4
72	2019-07-03 16:14:37.385487+00	9	K	1	[{"added": {}}]	15	4
73	2019-07-03 16:14:47.157111+00	10	L	1	[{"added": {}}]	15	4
74	2019-07-03 16:14:55.142842+00	11	M	1	[{"added": {}}]	15	4
75	2019-07-03 16:15:03.226703+00	12	N	1	[{"added": {}}]	15	4
76	2019-07-03 16:15:15.090603+00	13	D-F	1	[{"added": {}}]	15	4
77	2019-07-03 16:41:45.870376+00	2	Silver	2	[{"changed": {"fields": ["price"]}}]	16	4
78	2019-07-03 16:42:00.025647+00	1	Gold	2	[{"changed": {"fields": ["price"]}}]	16	4
79	2019-07-03 16:49:15.218683+00	2	Bangle DC06	1	[{"added": {}}]	32	4
80	2019-07-03 16:49:28.097807+00	3	Bridal Necklace 09	1	[{"added": {}}]	32	4
81	2019-07-03 16:49:40.824521+00	4	Bracelets	1	[{"added": {}}]	32	4
82	2019-07-03 16:49:50.443783+00	5	Bridal necklace 18	1	[{"added": {}}]	32	4
83	2019-07-03 16:50:55.758921+00	6	Diamond bangle 01	1	[{"added": {}}]	32	4
84	2019-07-03 16:51:15.221033+00	7	Bridal Set 04	1	[{"added": {}}]	32	4
85	2019-07-03 16:51:52.486428+00	1	Bangle DC 08	1	[{"added": {}}]	31	4
86	2019-07-03 16:52:02.551431+00	2	Bridal Necklace 16	1	[{"added": {}}]	31	4
87	2019-07-03 16:52:13.158798+00	3	Diamond bangle 01	1	[{"added": {}}]	31	4
88	2019-07-03 16:52:25.376907+00	4	Bridal Necklace 17	1	[{"added": {}}]	31	4
89	2019-07-03 16:52:36.560765+00	5	Bridal Necklace 02	1	[{"added": {}}]	31	4
90	2019-07-03 16:52:49.533313+00	6	Bangles DC 30	1	[{"added": {}}]	31	4
91	2019-07-03 16:57:29.442735+00	1	Bangle DC 09	1	[{"added": {}}]	28	4
92	2019-07-03 16:57:53.934174+00	2	Bridal Necklace 01	1	[{"added": {}}]	28	4
93	2019-07-03 16:58:06.459349+00	3	Bangles dc 33	1	[{"added": {}}]	28	4
94	2019-07-03 16:58:28.50363+00	4	Bangles dc 35	1	[{"added": {}}]	28	4
95	2019-07-03 16:58:45.335891+00	5	Bangles dc 039	1	[{"added": {}}]	28	4
96	2019-07-03 16:59:33.650061+00	1	Bangle	1	[{"added": {}}]	33	4
97	2019-07-03 16:59:44.751456+00	2	Bangle DC 09	1	[{"added": {}}]	33	4
98	2019-07-03 16:59:58.82939+00	3	Bangle DC 11	1	[{"added": {}}]	33	4
99	2019-07-03 17:00:10.607176+00	4	Bridal Necklace 13	1	[{"added": {}}]	33	4
100	2019-07-03 17:00:19.973764+00	5	Bridal necklace 18	1	[{"added": {}}]	33	4
101	2019-07-03 17:00:29.751009+00	6	Bangles dc 35	1	[{"added": {}}]	33	4
102	2019-07-03 17:14:43.899273+00	1	Bangles	1	[{"added": {}}]	27	4
103	2019-07-03 17:14:54.355008+00	2	Bangle DC06	1	[{"added": {}}]	27	4
104	2019-07-03 17:15:03.65578+00	3	Bridal Necklace 01	1	[{"added": {}}]	27	4
105	2019-07-03 17:15:12.380572+00	4	Bridal Necklace 16	1	[{"added": {}}]	27	4
106	2019-07-03 17:15:22.243066+00	5	Bangles dc 33	1	[{"added": {}}]	27	4
107	2019-07-03 17:17:47.399399+00	1	MS Mahalaxmi jewellers	1	[{"added": {}}]	29	4
108	2019-07-03 17:18:49.180948+00	2	Baldev ji and sons	1	[{"added": {}}]	29	4
109	2019-07-03 17:19:48.534664+00	3	Kumkum Jewellers	1	[{"added": {}}]	29	4
110	2019-07-03 17:20:31.026053+00	4	Yash Diamonds	1	[{"added": {}}]	29	4
111	2019-07-03 17:40:36.554073+00	4	Yash Diamonds	2	[{"changed": {"fields": ["image"]}}]	29	4
112	2019-07-03 17:41:01.655887+00	3	Kumkum Jewellers	2	[{"changed": {"fields": ["image"]}}]	29	4
113	2019-07-03 17:41:23.817364+00	2	Baldev ji and sons	2	[{"changed": {"fields": ["image"]}}]	29	4
114	2019-07-03 17:41:40.972616+00	1	MS Mahalaxmi jewellers	2	[{"changed": {"fields": ["image"]}}]	29	4
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 114, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	contenttypes	contenttype
5	sessions	session
6	main	country
7	main	city
8	main	state
9	main	area
10	product	material
11	product	productimage
12	product	claritytable
13	product	subcategory
14	product	category
15	product	colortable
16	product	pricetable
17	product	cuttable
18	product	product
19	user	companyprofile
20	user	appointment
21	user	usertoken
22	user	useraddress
23	user	user
24	user	store
25	cart	cart
26	cart	cartproduct
27	ui	bestcollection
28	ui	bestseller
29	ui	testimonial
30	ui	banner
31	ui	newarrival
32	ui	featured
33	ui	trending
34	order	order
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 34, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	main	0001_initial	2019-05-17 21:12:26.692006+00
2	contenttypes	0001_initial	2019-05-17 21:12:26.712317+00
3	contenttypes	0002_remove_content_type_name	2019-05-17 21:12:26.731891+00
4	auth	0001_initial	2019-05-17 21:12:26.799245+00
5	auth	0002_alter_permission_name_max_length	2019-05-17 21:12:26.8139+00
6	auth	0003_alter_user_email_max_length	2019-05-17 21:12:26.823919+00
7	auth	0004_alter_user_username_opts	2019-05-17 21:12:26.833723+00
8	auth	0005_alter_user_last_login_null	2019-05-17 21:12:26.844141+00
9	auth	0006_require_contenttypes_0002	2019-05-17 21:12:26.847924+00
10	auth	0007_alter_validators_add_error_messages	2019-05-17 21:12:26.85776+00
11	auth	0008_alter_user_username_max_length	2019-05-17 21:12:26.868447+00
12	auth	0009_alter_user_last_name_max_length	2019-05-17 21:12:26.878459+00
13	user	0001_initial	2019-05-17 21:12:27.131564+00
14	admin	0001_initial	2019-05-17 21:12:27.188791+00
15	admin	0002_logentry_remove_auto_add	2019-05-17 21:12:27.20933+00
16	admin	0003_logentry_add_action_flag_choices	2019-05-17 21:12:27.22948+00
17	product	0001_initial	2019-05-17 21:12:27.394532+00
18	cart	0001_initial	2019-05-17 21:12:27.422339+00
19	cart	0002_cartproduct_product	2019-05-17 21:12:27.441896+00
20	cart	0003_cart_user	2019-05-17 21:12:27.476842+00
21	product	0002_auto_20190417_1748	2019-05-17 21:12:27.593423+00
22	sessions	0001_initial	2019-05-17 21:12:27.615938+00
23	ui	0001_initial	2019-05-17 21:12:27.862631+00
24	user	0002_auto_20190419_1807	2019-05-17 21:12:28.013569+00
25	user	0003_auto_20190419_1816	2019-05-17 21:12:28.039005+00
26	user	0004_auto_20190419_1819	2019-05-17 21:12:28.064047+00
27	cart	0004_cart_shipping_cost	2019-05-26 10:21:53.975556+00
28	user	0005_useraddress_active	2019-05-26 10:21:54.024544+00
29	order	0001_initial	2019-05-26 10:21:54.076383+00
30	product	0003_auto_20190505_1932	2019-05-26 10:21:54.105174+00
31	user	0006_auto_20190521_2345	2019-05-26 10:21:54.180056+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
wc0y3tet6sq051t9rh9pn04slhhh6co2	NTg2YTA3OWJhOWVjYmExZTkwNDA0MTMzNWJmMmNiNmE3ZWRhOTVjNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXIuYmFja2VuZHMuVXNlcm5hbWVPckVtYWlsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDMyODhjMzFmOGE3MWVjYjM1NDFmNjNlZDk5NTNjYTY4M2ExN2Y2YSJ9	2019-06-09 11:31:10.443242+00
b3a6bemsk4zz5yrmstgv4dwt8m5x6u7i	MDJjNGU0NGI5ZjJlODk0YzRiMzJiOTM2ODIzN2UwZTUxMTU2OWNhOTp7ImNhcnRfaWQiOjF9	2019-06-09 21:02:48.330653+00
aokndfbu4o8g3gpsboi48w96162o1cx3	YzMwNjdmZTc1ZjRmYjM1MTdkZDFlZjEwNzQ4MWVjMDk2MzNhNGEzYzp7ImNhcnRfaWQiOjJ9	2019-06-09 21:24:47.497844+00
7y7yoxr4qkqs3ns7kpnwui7tzenuheji	NGYyZDBlOTAzMGFmZWY2ODFjYjcwYjNiOTgzOTlkNzhiMTM3NjM1ODp7ImNhcnRfaWQiOjN9	2019-06-10 03:34:04.427752+00
vk9t6q8d4ivv82dj7bgigoeyjmwe1ikz	OTE4MWYwNjhmOWQ4OWRiN2RkZTQyN2NkZjdhMmQ1ODU0MDU1ZDFkMjp7ImNhcnRfaWQiOjR9	2019-06-10 03:34:05.259088+00
ye7bazgnk88xrpze945lgs0o5kxcb11y	NmUzNWI3ZjZmN2ZhNDE1ODJjMTZlYjQxZGQ3NGI5YjIxMmRlMDk5Mjp7ImNhcnRfaWQiOjV9	2019-06-10 20:27:14.934126+00
72jo9svvsgkxppb5z8tyq3fdfzfcwig9	ODUxYTgzNjZlOGQ2NzMyNmIzNTVmMDYwMTBmYzg2MTk0YmZiNWUwNDp7ImNhcnRfaWQiOjZ9	2019-06-12 05:05:39.46784+00
8nuvxa3chvw41x16jeinx406oyias6ku	OGNmNWZkNjVmMzIyNzg2YjA4ZmQ0NmVhODE1M2QzZTExZTkxNjliNTp7ImNhcnRfaWQiOjd9	2019-06-12 07:01:14.911359+00
1alri39rddzkqpc2e0mjajapr7ro9o9g	MmM0NWNhMzhiZmU4MGZhM2U1NWY1YTUyZDM0NTY2ZTczZjg2ZjQzYzp7ImNhcnRfaWQiOjh9	2019-06-12 09:34:41.625801+00
cff59na4vyalh86oyxdlxw2c2vrxzveq	YTNmZGZmYTAyMmVmNDI1ZGQ2NDZjOTk1NWM2YzQ2ZDgzZmQ0NDM1Mjp7ImNhcnRfaWQiOjl9	2019-06-12 09:34:42.647824+00
uqh2g5rcf8k2rnbw6inb6budwu6jms1k	ODNhNTRmZTU0MWQ3NDZhYTdiNmQwNTFlMTRiYTEzNjkwYTM3NjkwYzp7ImNhcnRfaWQiOjEwfQ==	2019-06-12 17:09:31.858907+00
sa24x4m05vqziwxp041c5jtu51m0vpee	Y2NjNTM4MDAwNjE4MDFhNmE2YmZiZGQwNjg3MWYzY2FlNzFjZWQwMjp7ImNhcnRfaWQiOjExfQ==	2019-06-13 23:54:16.289477+00
078afxw810ewz3pgeuh1pmrbv1bl1r53	Y2YwNTgyMjZjYzllMzY2NWQxMzYxZjRiMTVmMDVmNWExYzZmZDcyOTp7ImNhcnRfaWQiOjEyfQ==	2019-06-13 23:54:17.257676+00
5d6nuln3feqsmzt6d65wqcdme9h1y83s	YWI0N2U2MDhiOWI0ZmJhNTkxZjM2MjcwYzIyNTU4YTRhMjZkNjVjZDp7ImNhcnRfaWQiOjEzfQ==	2019-06-13 23:54:24.169263+00
oqrh0dgarogs382ujuozi2x78rghha1e	NWRhNDY4MWY5N2JmNWI0ZDYzZTFlYmNhNzZhNDBmYTU1MTRjN2FmMjp7ImNhcnRfaWQiOjE0fQ==	2019-06-13 23:54:25.138626+00
cdp8d89gxhnbjtij3y4yruxnav7n2g90	ZGQwOTU2YWMzYWIxMGJiYTg4ZTMwODc5YmZiNmZlNmQ2ODhhODRiZjp7ImNhcnRfaWQiOjE1fQ==	2019-06-13 23:54:26.161509+00
m6lp4gydb5dg6kkp3nw8ht8zbpvh5s1u	MWI2NGY4MDM3NGVmNjBlNmY3YzgxNWVjMzlkNzRlMjgxMDkxNGZiODp7ImNhcnRfaWQiOjE2fQ==	2019-06-14 07:29:42.134726+00
ib1ttndo7d0rzicpqwjntp90rk3bvhvz	NzY4MDQzMDFjOTVhYWNmMWMyZDg2NDIwNDY1NmQ5ZGQyZDgzZmRjMDp7ImNhcnRfaWQiOjE3fQ==	2019-06-14 07:29:43.134321+00
e2pr1urzi57rnsw9i49cx1s644ilsq9n	Zjk1MDY3OWY5Y2QyNjk1MThhOWVjNjVlMzYwMDhhNGEwYmVhMTZhYTp7ImNhcnRfaWQiOjE4fQ==	2019-06-14 17:13:49.039903+00
gbpqyeku5em6ub2ic9d8vfyqdoh7kthd	ZDdiMGZiYWJlNjQ4MzU4Nzc1YzY3ZmQzMDMzOTc2NTViODQyYTAxYzp7ImNhcnRfaWQiOjE5fQ==	2019-06-14 17:13:50.259978+00
uq5srvtbl2empigy2x29xuz83dhghzaa	ZmRkNmRkYTkwZmZmMTFjODFjMDgzZjAwM2YxZGU5MTc2NjQ1NWM1Njp7ImNhcnRfaWQiOjIwfQ==	2019-06-14 17:13:51.522626+00
bur7gfbir9l5ne4alyitfo4m1qkh8xcz	NjAyN2FjNWRhMjExNmEwMGFiZDM0ZDQyYzQ1NDczMTg4YWU3MTU2NDp7ImNhcnRfaWQiOjIxfQ==	2019-06-14 17:13:52.788437+00
hh8dc2nyqmyq9dpbx0b06oigc65ff6g1	ZDZhNzJkMDVjNWQ3Y2VhZTI3OWFkN2RlZmEyMDk2ZmZkMGI2NzdhZDp7ImNhcnRfaWQiOjIyfQ==	2019-06-14 22:40:26.868414+00
7zojtqwf9j7j1httqfxugwi38gu2dajv	YmUwMGVkNTZhYWU4MTNiYTUzMDM2MGU2ZWI2N2NlY2I1ZDEyNDM4Njp7ImNhcnRfaWQiOjIzfQ==	2019-06-15 04:51:22.859545+00
590ypvvwb8sunscxe8xwsiewjs7ttwln	NDkxNmE1NzBmMjU1M2E0ZGNjNDEzZTYzNjk2NzdjYmE1ZDhiNDU5MTp7ImNhcnRfaWQiOjI0fQ==	2019-06-15 05:26:16.401937+00
ve18vsfzpnjvli1htcs2ihmc8df8lu07	NTFlZTNlMGU5OWM2Yzg3ZWUwOWUzODZiZTRmYjY3YzE2ZDYxZjgwNjp7ImNhcnRfaWQiOjI1fQ==	2019-06-15 09:00:36.408238+00
jhrdtu3wkcvkkhiit46643eho7h6tcb5	NTYwMmFjODA1NmMwODdiY2JhMzc5MDVlOGU0OTljMmQyMTJjNmZhZDp7ImNhcnRfaWQiOjI2fQ==	2019-06-15 21:27:16.875973+00
qx0jyx4odph781t206hj41hjj9dl0kob	OGIyODFhMjhlN2UyZGM5NDgyNzQwZDkyZmRmNTVkYzA1YjkwZTlhYzp7ImNhcnRfaWQiOjI3fQ==	2019-06-16 02:53:37.623596+00
esc33xp4kkpmotj6r0ptohqfyp2mx13l	MjU4OTU0M2MwOThjODk5NzlhMDYyZDBjODJjY2E5NzlmODYxN2E3Nzp7ImNhcnRfaWQiOjI4fQ==	2019-06-16 03:44:32.612645+00
61ys5iizlysevzrivv8obhqcjjnbwnt3	ODYzNzY3M2FjMjQ5ZmI1YjMzNTE1NTJjM2NlZmE0NGUxY2MyN2Y0MDp7ImNhcnRfaWQiOjI5fQ==	2019-06-16 11:40:18.899257+00
bcy2n1p4vpmi0jscgecqw04rxaph08tj	NmRjZmI3OGQ1NWVkNjQzNTY2ZDQxNDMyMzk1NGRlOTc3M2I2OTg1Yzp7ImNhcnRfaWQiOjMwfQ==	2019-06-16 11:40:19.368152+00
4c0iin246mwwp8aor8eufakcrxyvp6fn	ZmZhMjE1Zjg5MzQ2MDVmZGM4Y2IxNzdjMjExYTFjZTIzMmFiODZjYzp7ImNhcnRfaWQiOjMxfQ==	2019-06-16 11:40:20.35801+00
oyd98e11wfv4ekalvk61o6p603qiwt55	MWM4ZGFmODBmOTllNTc1ZjFjMDJiNzM3MjExMGJjMjgzODIxMjAzMjp7ImNhcnRfaWQiOjMyfQ==	2019-06-17 05:52:07.63258+00
qdi6zl39j0ro03ea8yjvkdu3r9jpu0tx	Mjg2OGM0YjA5OTU1N2NmMjI3OTI3MzIzMGVmNWJhMTE0YjE3ZjY2OTp7ImNhcnRfaWQiOjMzfQ==	2019-06-17 23:15:06.960511+00
gcqrv3o1upxr37osxtrmpfyezfa7ydyo	YTBjNWY0NjU1YzJkNjQ2MDE0NzA4ZGU4MzlkMDUzODZjYzI0YmYwMDp7ImNhcnRfaWQiOjM0fQ==	2019-06-18 14:40:50.390838+00
rse5iq31ot0qkkuftcwexv2km83am3i9	Njk1OTA4MTY1YTY0OGNkYTVlZTM3YzNkOGI1MDZmMDgxNDEyN2ZjNTp7ImNhcnRfaWQiOjM1fQ==	2019-06-19 09:05:56.392238+00
6inkrcklhu3o4n43godilqz5hy7llarz	ZDA0YjVjYWVkMTliMDhhZmI3MmM0Y2ZlYjc5NzI0ZWI4M2Y4MTVlZjp7ImNhcnRfaWQiOjM2fQ==	2019-06-19 18:09:49.898044+00
ok2d9fdwwlgy8i38vgig09aa44rh5j90	YWNmNjA4ZDY5MTliZGUxNDY5ODc0OWM1ZjZiYzY0OWYzMjhhZjlhZDp7ImNhcnRfaWQiOjM3fQ==	2019-06-20 11:26:25.451498+00
ijtc5ipfgpc18twu1a3ph8r04fb9mjms	MGM1YzhlOWUxMTcxODdhNjIyZmZiOGZlYzQ0NmZhYTcwYzQ2YjhiOTp7ImNhcnRfaWQiOjM4fQ==	2019-06-20 11:35:57.649682+00
vekp0qvonb3qbbn1i8eg620qi9ld84up	MGYxNmM5ZGU4MmRlYzJiMWQzMGMxYjVlZjhmNmQ2YTIwZGY0OTdiNjp7ImNhcnRfaWQiOjM5fQ==	2019-06-20 21:59:31.899415+00
6clybrgpepoq0dc2zmxt4i6s2r3d83hw	NWFkNDAzNjZmNWEzMmUwMzcwNDc4NGZiNWFkZTY3YWQ2NTQ4NTI5Yjp7ImNhcnRfaWQiOjQwfQ==	2019-06-20 21:59:37.42129+00
wh1zy393z2o7h6ddzt4yg0nsisioqscp	ZGNlNDY5ODI1ZmQ5ODI1NTY3ZDA3YjAwOWU5MDMwZWY3MzhjYmNiYzp7ImNhcnRfaWQiOjQxfQ==	2019-06-21 06:49:01.230024+00
4pegp1i2n83z7g5mb03jc2twlsl64qqz	ZTcxOTIzNzc1Yjg0MGMyMGY0MTQwNTM0YzNjMTU3NjY4MmI1M2UwMjp7ImNhcnRfaWQiOjQyfQ==	2019-06-21 13:47:14.001239+00
c5rzw60r8nh0qfcrn7tzmr88h6vmbew8	NTAwZjk1NjVkZjAzNDA2ODE0NTE2YjFjMzdhN2NmMzcxMWU4ZjQwNzp7ImNhcnRfaWQiOjQzfQ==	2019-06-21 13:47:14.880723+00
4dtkt2d9d62hifhwc2i5p7qi8snt7k3f	NTMwZTJjYjU5MDRmOGI4N2FmNzU5YjIwNDFmZDBkMWMwZmFlODA2Zjp7ImNhcnRfaWQiOjQ0fQ==	2019-06-21 13:47:21.970039+00
1el6moghxrnruoaaxyvhijh0i5ve0w5z	OTdjYmQ0MGU5MTYxZmIyMDQ2MGQ5ODhhNmZmYjEwZTljNDFmMWE2MTp7ImNhcnRfaWQiOjQ1fQ==	2019-06-21 13:47:22.909529+00
8mab0dnhuqwlkre6k2k1p6wsefq0fuga	NmQ3OGUyZDIwMjM3NDM5N2I5ZDY5MDY0NzU1NzFhODQ1NmVjNThjYjp7ImNhcnRfaWQiOjQ2fQ==	2019-06-21 13:47:23.891915+00
xe3i16abob7gctjp5xtwo8yhvzrvgvxt	NGU2NGI0OWNiOTNkYzA4ZDJiMmZmMjg1ZjEzN2Q5NmYxOGIzYWNjZTp7ImNhcnRfaWQiOjQ3fQ==	2019-06-21 16:24:16.556987+00
7ectrykaawlho3tyeafhzan55snd40gl	ZGZlNWVjZTgzYTcxNTQ1MDVlZGYzMzU3YmQ3ZWY2NjY5ZjM2ZWRiYTp7ImNhcnRfaWQiOjQ4fQ==	2019-06-22 01:37:38.912853+00
ud48zi2jo4eryvgy83rrvv5wh1ztqg36	NTUyMmVmMzVlZDNjMTRiMWQ4MjEyNTEwMGViNTIwNDRjMGE2YzM1Yjp7ImNhcnRfaWQiOjQ5fQ==	2019-06-22 02:50:40.86818+00
8fmmvny2no74yv4pzue7xd3d73xmypc9	NGQyMWQ5MDdhNDBmN2Q3YjZmY2IxNWI1MmU1NGVlOTU4Mjc3NTJjNjp7ImNhcnRfaWQiOjUwfQ==	2019-06-22 04:28:09.916071+00
3ux50gjk2h17dbwoxxy02n0o80ljf6uj	NDIwYTUzYTI0NjMwOGMwOTM3NDQwNTY1MWI2NzM0MTFmMTEyYzU2Yzp7ImNhcnRfaWQiOjUxfQ==	2019-06-23 03:38:57.913779+00
rd0gin2ruqfq37cx6pi6swr5u8k96nz4	MjAxZjc2MDNkYzllZDMwYzcxZmFlYzJhMzBiNTgwMDk3NWRmMTE4Nzp7ImNhcnRfaWQiOjUyfQ==	2019-06-23 04:48:33.387861+00
hdv0h5dq02rq0cs9yjh2o5ukb930l1yu	MmViMjJjNTcyNTQ1MzEyNmZiYTlhOTQyMzM3ZmIxNDBmMTdjZjhlMDp7ImNhcnRfaWQiOjUzfQ==	2019-06-23 15:40:04.452979+00
6lq1vurw4egjqm86m65ysz1xx7qsxppr	NzY0ZDcwOGEzMDE4M2RkMDQ0OTM5YWM5M2I1YTU1YjdlYjI2MDk4Mzp7ImNhcnRfaWQiOjU0fQ==	2019-06-24 01:26:32.596592+00
gfdeqfweyi3r5py1iwlbo7bgcxjf3eqy	ZWI1MDg5NjQyMTI0NDk0NzE3OThhNTQ3ODdhNTJjZjYwNWU0MzZiYTp7ImNhcnRfaWQiOjU1fQ==	2019-06-24 04:58:02.609287+00
q99k9orfukuo3c163k3cuswtya0mqcs5	MjdkYjhkY2M4NTQyNzdlZTdjZjA2NjRlZjYzYzY0M2RjMTUzMDZiNTp7ImNhcnRfaWQiOjU3fQ==	2019-06-24 15:17:07.359113+00
kzku7ur0ryxwxjla7iacvatc20o9b0fq	NDRiZGE0NWFhMDVhNTU2NDkwZjAwOWU0ZjI4YmE0NDRkNmEwZDkxOTp7ImNhcnRfaWQiOjU5fQ==	2019-06-24 16:51:06.448471+00
1qo9t8tygi8a1ak1ltp95s6bv4gvsmaf	Y2M5NDk4ZmVjZjEyZGRkMWNlNTlhMTQ2Y2JkYzM0NmUxNTEwZjRiMDp7ImNhcnRfaWQiOjYwfQ==	2019-06-24 21:39:06.078349+00
2d4941p1easmpmjzch31x4gor2q282wv	NzAxN2JiNzM1ODE4ZTVkZmM0ZDI3OTdlNGNlM2VmYzYyOTk0OGQ5ZTp7ImNhcnRfaWQiOjYxfQ==	2019-06-26 05:19:15.413753+00
g3gt3mhn6nnsomah9y91bkor2pccd7rq	OGJjMDdmMzhiMzExOTM5OGYxNjljYjE4ZjRhZmU1YTU4NTkxZDMxODp7ImNhcnRfaWQiOjYyfQ==	2019-06-26 09:06:54.900349+00
31evh4hpogahwkdfs6b48jw0putc7434	OTg3ODdkYzI4MWM3ODJkZDM1ZDEzZmU4MTQ5YTk3YjQ4ODBhMTRiOTp7ImNhcnRfaWQiOjY0fQ==	2019-06-27 06:32:41.466459+00
v46rug2851en0fnlaayqb6ad00nkotrn	MDk2OWVjZGU3YWFhYzExZmFjZGQ1MDE3NjcyYzZhYjRkYjQyMDIzZjp7ImNhcnRfaWQiOjY1fQ==	2019-06-27 11:07:10.146187+00
k5sqpcv5pc8ri3q0t9v0ci1arskybs2t	ZGJhNzM3NDY3YmE3NGYyZTkyNjM0YmNlOGRjNmFjODY2YTZiMmNhNzp7ImNhcnRfaWQiOjY2fQ==	2019-06-27 17:24:28.95847+00
4e0wp5mik2rv1plit0x9lz15flrlw8km	MTRjNmY4Y2I5ZjljY2IxM2Q3OGNjNmJmMjQxYTU5N2E1M2RhOTFhMDp7ImNhcnRfaWQiOjY3fQ==	2019-06-28 00:15:46.517767+00
3koygeavu9jvspwx53lqjvjpmupyfd10	NGY4ZjkwNTFhNjU3MGZkMzJiZWE1N2I5YTAwOTAwMDVhZDFkZDI4Mjp7ImNhcnRfaWQiOjczfQ==	2019-06-28 05:10:23.803966+00
hr9e874ykxkdyf7jtv570s56zt7ijcd3	NTljOTdiNGFhMDhkNGFkZjIwM2U1ZGNkNjE3YWZlNjJkNTMzMjM1YTp7ImNhcnRfaWQiOjc0fQ==	2019-06-28 05:13:16.364252+00
it466mwyi2lueflalf8dmiqtb199b3dc	MWFjNDI2ZTYzMTBiM2Y4ZTNjMzUxNzUwYmM5M2UzZDUyMzM0NmM0ZDp7ImNhcnRfaWQiOjc1fQ==	2019-06-28 05:13:17.756132+00
g16luhpxyjndkblxlm5jmqkiet7s2gvz	YjQ1OWE3OGQyNDM0Y2E5ODg2NjkwNWY1YWIzYThmOWYwN2JiNTg2Yzp7ImNhcnRfaWQiOjc2fQ==	2019-06-28 05:14:35.671841+00
oxt5funl1ajjozzb3agtdkiojrw47570	ZDA4ZmFmY2NiYzY5OTExOTc2NWY3YTAxN2Q4MDBmNTQ2NmNlMDJiMjp7ImNhcnRfaWQiOjc3fQ==	2019-06-28 06:32:48.272529+00
s2d32lsj513k8z3z12sjlxntu5kn4x96	NmU4YTIyNzg2YTlhMGZkYzk2ODRlNzdjMGNlOGRiMTk4ODMxOTMxYzp7ImNhcnRfaWQiOjc4fQ==	2019-06-28 08:26:00.714174+00
ojkg64k2m0l3w07jb2ildm7ptjqhoa00	ODBiOGM1MWVhYTY4YmU0MWUyYmM1OWNlZTRlMDc5YTUwMmU2NDc1Nzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiY2FydF9pZCI6MTI2LCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2VyLmJhY2tlbmRzLlVzZXJuYW1lT3JFbWFpbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjgzMWRkMTE3ZWQ4ZTA4MWM0NTg2N2FhZGZmY2M3YzkzMmUzOTVjIn0=	2019-06-29 18:27:15.913955+00
42obqcag4olsg6sbzgy8zf4lh1l1cvl8	MTJjMzFlYjc5NDAwMDNlMDNmMjFjODYzNTQ0MzU0MDc4Mjc2ZmUwZDp7ImNhcnRfaWQiOjgwfQ==	2019-06-28 10:42:22.053138+00
twq7h6zu8aby8x8hyevc5xbhbhu7tyeu	OWNkYjI5NTg0MzUxODhmZTZhNDM1ZmU1MjY0ODEwNmIzOGM5MGM4Njp7ImNhcnRfaWQiOjgxfQ==	2019-06-28 11:52:28.418234+00
nuv5lv6efx8vvyocyjkaki414j4s34w3	ZmEzNzEzMzAyZjM1ZjMxOWEwNzU5Y2RiNjA0MzcyZjU0YWYwMzljODp7ImNhcnRfaWQiOjgyfQ==	2019-06-28 14:24:00.996884+00
timm78is538i5psg1bujdihr35m3cfu5	NWY3MDU4NGZiNjdjZDEwMjM3Y2NjMDE4YzQ4N2RjZjI1ZjQyZTVlYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiNmY4MzFkZDExN2VkOGUwODFjNDU4NjdhYWRmZmNjN2M5MzJlMzk1YyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXIuYmFja2VuZHMuVXNlcm5hbWVPckVtYWlsQmFja2VuZCIsImNhcnRfaWQiOjg1fQ==	2019-06-28 17:43:58.864535+00
ycvhxb2udb9hhyxcpnlnr6cgvi1xlsse	YWM5NDE2MjU0OGIwNTU5MzE4NzdhN2I0MzQwZDE0OTczYzljNWUwZDp7ImNhcnRfaWQiOjEzMH0=	2019-06-29 19:43:42.531383+00
jnjvsddy2jemj88mvkex5knwkudrkw6f	MDU5MzA5YmM3MTcyNmYwNWI0MDYyOGI0MTU5MWJjMWNlN2NiNTczMDp7ImNhcnRfaWQiOjEzMX0=	2019-06-29 19:50:35.329941+00
m40vltk50ntqpb1d37cqjqnxngmgh2oj	ZDI1M2ViMDQ1Y2FmNzA0ODY5NzU1NTUzZWU5Y2NkNmI4MmEzZTEwNjp7ImNhcnRfaWQiOjEzMn0=	2019-06-29 19:51:27.862788+00
temj6nbbpbnwfwjodf6istmm3qrgrnoe	MGZiMDgyZGM4M2Q2OWZiZjM2ZGNjYWJlZjJjZDc0MGZjOTliNDFkMDp7ImNhcnRfaWQiOjEzM30=	2019-06-29 20:01:33.612638+00
7dmp6i9dow40epybrtyljf9d59pjf3d9	NzQwNWQzYTNlMjdjNzY2ZTYxYjc5N2Y3NmNiYmZhNmI2NTdlMmRjZjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiY2FydF9pZCI6OTIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXIuYmFja2VuZHMuVXNlcm5hbWVPckVtYWlsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZmODMxZGQxMTdlZDhlMDgxYzQ1ODY3YWFkZmZjYzdjOTMyZTM5NWMifQ==	2019-06-28 18:24:29.627462+00
xsc2z6o3529ripb6hr4m876cfkc3ly3z	OTViYjAwMjJjMTA2YTk3ZDFlZTlkZjExOTZmZmE2NGFkMTFhNjk1Njp7ImNhcnRfaWQiOjk3fQ==	2019-06-28 18:55:54.388209+00
r2eaqdn0hg01h224jazv0ppir6umnrgz	YjM4NmUwZWE2Yzk5YmU5ODc2ZjIzZjAxYjNkM2M3MWVkMTY0NmUwMDp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjU0ZGI0ODYyMGNhMzJkNDExMDFhOTE4OTk2ZDBiYWNkZjE3ODhlMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXIuYmFja2VuZHMuVXNlcm5hbWVPckVtYWlsQmFja2VuZCIsImNhcnRfaWQiOjk4fQ==	2019-06-28 18:59:27.433936+00
y86d1ygat4xmjhn1b930q85hpm14z6g5	NjZhYTQyMDcyOGU1Y2QwN2UxMTlhNDJkMGEzZjQ4MWIxYTViNzNkNDp7ImNhcnRfaWQiOjEwMH0=	2019-06-28 19:07:23.107688+00
6jnp829puypvowh1jjdy7dyfk67awjls	MWM5MjI4ZGE4ZWRjNGI5OTk3ZTI0ZjVjYmRlNjU2NmRiODYxMjAzOTp7ImNhcnRfaWQiOjEwMX0=	2019-06-28 22:26:25.120943+00
xrgc9wnm45hinp3jxo0mruzupj6iv4ut	NGFjMmEyNzYzNDU0MWM5ZDVkMzU4YzZiOTcxYzk4MWIwZGFhZmNkZjp7ImNhcnRfaWQiOjEwMn0=	2019-06-28 22:26:26.115293+00
iqp86ln9aetz6u5lzh6ttl8710yyxx5c	M2RiODRmMTA0MGExZjJjYjg5OTM3ZmZhYTQ1YTYzY2Y2OWZkY2VhYzp7ImNhcnRfaWQiOjEwM30=	2019-06-28 22:26:31.903788+00
9ndqy222li9uhj92424q8n61kh8ak2z6	Y2IyOWNmODk1Njg3OTFmNmE3OGE3M2Q3OWNiMzQwNWRjNjhkNzI0NDp7ImNhcnRfaWQiOjEwNH0=	2019-06-28 22:26:37.52065+00
rbhquaa4ep9gyilvjcgbqgro5jv2ewrp	MGM2MWI0ZmU2NzFlMjNmNDZmNTRiMGY4YWUzYWVhN2E4YTY3ZmUyOTp7ImNhcnRfaWQiOjEwNX0=	2019-06-28 22:26:38.432998+00
nfe6hjftzi39qul700yb8oh1vr8u5pq8	ZGU1MDg1NmQ0NzczZjc2N2FiNWQxMDY0OGYyZDhkNDZlZDBhZWU4NDp7ImNhcnRfaWQiOjEwNn0=	2019-06-28 22:26:39.37486+00
c5h8mwxuzuj8pju3kuil4csebsxawi2z	MmE1MWI3YzczNTg2MDg5OGI3MjZkMWYxZTc4OTJiNzQ3NzU5MzRhMjp7ImNhcnRfaWQiOjExMn0=	2019-06-28 22:56:50.160445+00
34ghyrq0s58hpmon994kec6yozhh0yd3	YjM3ZjBmMjU4NzMxNDNiNDU5ZWQ0OTJjZDkzYTg1Yjg5YzdiMGY0Zjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiY2FydF9pZCI6MTE1LCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2VyLmJhY2tlbmRzLlVzZXJuYW1lT3JFbWFpbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjgzMWRkMTE3ZWQ4ZTA4MWM0NTg2N2FhZGZmY2M3YzkzMmUzOTVjIn0=	2019-06-28 23:02:30.123914+00
yl7qbrcntp6tbsce18bh4elpla5lv6eb	NjliMWQyNGYyZTRlMzA1OWY0NWUwYTAzNzVlYWRlM2RkNDcwMzk4Yzp7ImNhcnRfaWQiOjExNn0=	2019-06-29 14:19:45.559991+00
cr3po9kz5jtlp2l87smtxe0wd08ddc8k	YTQ4MWM4NzllOWU0ZmU2YzZkOGIwM2Q0ODIxZGEwMWM1YTk1OWYxNjp7ImNhcnRfaWQiOjEzNH0=	2019-06-30 03:29:49.634844+00
x6pjf5lsg5b5kjf0il178w5wgg5als3w	Nzg3YzBjZDdkZjBiZDNkNzY0OGUzZmQwYTUxMGRiMDkxNGFhMjkyZTp7ImNhcnRfaWQiOjEzNX0=	2019-06-30 05:30:24.361411+00
z5n86cpllo7bb6g7q153o4gvqz9ljx8h	MDdmNDQ5ZmNjMDdmZmI5ZGJjNDE3NTUxMTg0MWJmYWE3MDEwNTgzZjp7ImNhcnRfaWQiOjEzN30=	2019-06-30 21:36:17.666159+00
r6t5nhi46wbb2gaq6rwv1ayxbpv8evjm	OTJhOGJhNzM2ZGVhMDc1YjE1NGEzNDAyNDcwNzA4ZDc0M2YzZmNlNjp7ImNhcnRfaWQiOjEzOH0=	2019-07-01 06:54:33.591706+00
n3wxeo4xqws6h3cr2lr1aww0epsrliqt	M2Q0MTlhN2I2MDdkMmFjZjI3MTk3NGRiMzU3ZWU5YWYzNjc3ZGIxYTp7ImNhcnRfaWQiOjE0MH0=	2019-07-01 07:25:00.520399+00
oku42yuk6clcqq42rinumjkgsftuoqdu	MmIzMTFhMjY5NWZlZDAxYjI5OWZmZTNhMDA1ZGMwMDdmYzkzYWYzNDp7ImNhcnRfaWQiOjE0MX0=	2019-07-01 07:25:04.809625+00
p06191aneaga98gwnxw2t5h9ky1dhjxk	NDNjYTczZjBmN2E1M2NiN2NiY2Q3MzNhNzMzNTFkZTc3YzU1ZTc2MTp7ImNhcnRfaWQiOjE0NX0=	2019-07-01 08:58:59.650306+00
6bqp3w2prtijxhlpvkrug7bgzd985tqu	ZGJlNzYyZDI0OTQ2YzJiM2I3YWI3YzJjODZiZmQ4MzFlYjE1ZTUyZjp7ImNhcnRfaWQiOjE0Nn0=	2019-07-01 18:50:03.535907+00
id5w1v8kz798jap6s4soyoybgp1wn2vh	ZTQ4YTIyZTliYjZlYzY2YWY4YmNmMWMzMzJkYjJjY2EwNTVkYzY4Njp7ImNhcnRfaWQiOjE0N30=	2019-07-01 18:51:08.156396+00
i2q738yritagchxe0uezfw10nzwfopjk	ODI2MmI4YWE2OTA4NGFhZTNhOTNkNzVjMWMwMTM0MGU5YzYxY2Q3MTp7ImNhcnRfaWQiOjE0OH0=	2019-07-01 18:51:40.134741+00
9qnq0q7hivwq37flc46hh1aaohmhd3oi	YTVmNmVhMGNkZTQ1OWZjYjI2YzUwNjc1MjJkNWRiYzI5MTU5OTcwNjp7ImNhcnRfaWQiOjE0OX0=	2019-07-01 18:51:56.639282+00
a1ghctmpqw0w7ub3mtisth4hr8gcjs08	MjgyM2JjZTAyZWRhNjc0NTZkMTQzYWM3OTk4NTkzZmMzMGE0NDQ0Mzp7ImNhcnRfaWQiOjE1MH0=	2019-07-01 18:52:14.923757+00
tx1xgvr15bt5f2u35frc65hhtd3eas7w	NDRjZjhlNzQyNDIxM2RmZDhhM2Q5NDE1YWMzZmI1NDU2MmQwOTc1MTp7ImNhcnRfaWQiOjE1MX0=	2019-07-01 19:39:03.316896+00
cwuwxht3akxgofmul5192293e5bpr7eu	ZTAwMjJhZjk1MmM4MWEyYjlkNjYwOWRkNjJhNzBiNWIwYzdkMDRkMTp7ImNhcnRfaWQiOjE1NCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlci5iYWNrZW5kcy5Vc2VybmFtZU9yRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjgzMWRkMTE3ZWQ4ZTA4MWM0NTg2N2FhZGZmY2M3YzkzMmUzOTVjIn0=	2019-07-02 02:56:04.416703+00
52mng7tqeyxo7gchzs9ov3acnxlm24n4	MzlhMGM3YWVlMDMwZDMxOWI4ZGZjMTdkODI5NGQ4OWY0ZDYwMjRmYjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlci5iYWNrZW5kcy5Vc2VybmFtZU9yRW1haWxCYWNrZW5kIiwiY2FydF9pZCI6MTU1LCJfYXV0aF91c2VyX2hhc2giOiI2ZjgzMWRkMTE3ZWQ4ZTA4MWM0NTg2N2FhZGZmY2M3YzkzMmUzOTVjIn0=	2019-07-02 03:31:42.121441+00
dl0bs2cgbtg9pzwceeachgqlcjaszw4a	OGFmZGFhMDQ2YjFmM2YwYjBmNzUzYzQwZWRjODQ1MWY3MGYzOGViYzp7ImNhcnRfaWQiOjE1Nn0=	2019-07-02 05:28:19.570184+00
x7fwbpudqrfl5m4lg2ta62eq7zaxlkrt	MGIwOGYxYTdlYTlmZGVhNTNmNTE2YzQyNzNkZDIyNmNlZTFhNmQwYzp7ImNhcnRfaWQiOjE1N30=	2019-07-02 07:27:15.765643+00
244fldqw4z57lmz7ny0hi183y84cgdyo	NTY4OTIyYjc4NzNmZjNiMjhjNzAwY2M1ZGQ0OTRmMzI1NjRhYzEwZjp7ImNhcnRfaWQiOjE1OH0=	2019-07-02 10:11:54.978844+00
qlo3msy2wwinnvkhj4xs4a7meehnpcrt	Y2Y3Y2I5MDFhYjc5ZmI5ZWE1MjE4ZTU3YmZlZWRiYjQxODEyNWYzYTp7ImNhcnRfaWQiOjE1OX0=	2019-07-02 16:52:02.409788+00
jg8wg4hocgdtsc7057aoswdwjyhlj02p	ZWVkZjg0YmRlMjIyZDIwOWU1ODJiZjhkNGVjMTE5OTA2YWNlYTcwMjp7ImNhcnRfaWQiOjE2MH0=	2019-07-02 17:32:07.122094+00
ajele8j5jcgw7di1cvaqirjfeahf3sdk	NDc1YzI4ZjE2MTYxNWFkZjdmOWRjNGM1MmQ4M2U3OWZlMTVlNTIxMDp7ImNhcnRfaWQiOjE2MX0=	2019-07-03 07:22:14.48235+00
4krarpkjbhp3w0pqiqaa4od0kgakbkt1	NmYzMTIyMGZjN2MyZDRkMGJiMWI1YjM4MWExMmVhYjg4ZDg1NGM1Yjp7ImNhcnRfaWQiOjE2Mn0=	2019-07-03 08:02:57.004993+00
6458ag4ms2gr8r1e6ggovxfvbqa5h902	NDlmYThmNDI2YTEyMzI5Yjg1MDgyMmUxODg0MzczMmUxM2YwMmQ2OTp7ImNhcnRfaWQiOjE2M30=	2019-07-03 12:32:17.623755+00
p2b9q95lty0ivbo0sor5smgnay1excby	M2YwMDVjYTNlYzQ3ZjU5NmMwYTM5ODRiNDg2NjI5ZDg3ZjI1YWNlYTp7ImNhcnRfaWQiOjE2NH0=	2019-07-03 12:37:58.620945+00
wmnfdp2bjvu3j1gvg7v9b7un34jjwxh1	YjFmODE3M2M2NWFjNDlhZDhiZjZiNDE4OWY1Yzc3ZDkxZmIzODg1Mjp7ImNhcnRfaWQiOjE2NX0=	2019-07-03 14:57:31.581089+00
cutb10jyizmk3qw96lzg9zl3nhyuwryo	NTVhZjUyZjkzYzc4ODIxZTFlZWI5NmEyOTQ1OGU0NTNiZmRiOWQwOTp7ImNhcnRfaWQiOjE2Nn0=	2019-07-03 19:45:39.899017+00
0e8o0v75fq2wmbu7009ila5c4dbp9q5l	ZTE2YjU4MzRjMzExNDk3NzRmNGZjZWU4ZTI4ZDU4ZGFlMGM3MGJlYzp7ImNhcnRfaWQiOjE2N30=	2019-07-03 21:40:07.869034+00
yawx5m7kuaijs51hwb61r6tddkymwqrb	NzA0ODQwYTE4OGM3NzAxM2Q0NDFkZWJlOGY2MTE5YWJlODI3NzMxZDp7ImNhcnRfaWQiOjE2OH0=	2019-07-03 21:54:21.330632+00
dk8gxra4uwxsyuw16jfq5jy369osbde4	ZDUzNzI4YjM2YzM4ZDViNDVhMDA1ZjNmZDljYjUxYTYwOTU2ODU1ZDp7ImNhcnRfaWQiOjE2OX0=	2019-07-04 05:42:01.36437+00
2d1wo49chihb4uemljmtso562w89k2j4	YjdiODc2NjNlMGRiYTU0ODI5MmZmZDMzMzc1YWZiN2YzY2ZmMDNjNjp7ImNhcnRfaWQiOjE3MH0=	2019-07-04 06:06:25.847997+00
g46vk6rshlgs3malcfv1esrr34xneykf	MjlhYmE1MmI4N2RhNDMwYWMyZTczYzliMjE1Mjc5NzQ3MzJkNDIzYzp7ImNhcnRfaWQiOjE3MX0=	2019-07-04 18:50:04.895303+00
kqza8840x8qiq4b2eq9c5a6q7z97ct0c	OGRjZmI3ZDM3ODZlZTE1NDQ1MTQ2NzJhY2M2YWI2YzBmYTQxNThkZjp7ImNhcnRfaWQiOjE3Mn0=	2019-07-04 21:45:26.35859+00
71fd7w29pn1h53jo065sp1pfbnc8lues	NmI4MTc1ZTlmNTI1NDUwOWQwOGI0ODBiNThkNTY1MGI5ZWNmMDdlYTp7ImNhcnRfaWQiOjE3M30=	2019-07-04 21:56:05.262697+00
yucje1uxg5q9oi8tprtkyqz5swksldmb	YTdhN2IzZmY0ZTA5MGQzMzk4MWVhMThhZjNhOGE5YzM4OGNjZmRiMTp7ImNhcnRfaWQiOjE3NH0=	2019-07-04 23:24:52.938634+00
tfofp7w66plsbgtawtg7k9yn6y4t7zgq	YTIyODMzYmFiM2Y0Nzk4ZTZkZDNlODE2OGYzYzI1YjgzOWNiZDBiYjp7ImNhcnRfaWQiOjE3NX0=	2019-07-05 07:44:47.042698+00
tjdaxexwlz0o1s5p8ee2an0er3u2j6nk	NTdlMjRkODFkNDgxOTJhOTA3MDcyYWU2MzQxMjFkODMxYTc1MjRmNDp7ImNhcnRfaWQiOjE3Nn0=	2019-07-05 08:48:31.171215+00
vnv48yf13enjc4292nryyrhk227yzdc0	YjNjNjljNTI2NGI5ODMzOGU2NjczMDVkZjgzZjkxYjZmMzE2NTRlNzp7ImNhcnRfaWQiOjE3N30=	2019-07-05 17:23:06.869567+00
4uwuthosz7v5m1ld9datbp1w2n2vu0is	NjFmMTRiODhmNDNlNGQ0OWNjN2I3Y2IxYmE3NmVjOTg0ZDNkMzkzYTp7ImNhcnRfaWQiOjE3OH0=	2019-07-05 17:23:11.37368+00
cm1aios3rwuo54535kx9wpya2adooadx	M2NiMWM3NTVmZjYyZjg2NGI3MTFhZDFhYTE4MDViNTU2MTMzYWFhZDp7ImNhcnRfaWQiOjE4MX0=	2019-07-06 06:14:08.2096+00
i8gz0el63deg7wz4zy26gf175lvadfmg	YWUzNjY1MGEyZTgwNzdmZGI1YmZmODg5Y2UyM2ExM2U0OTczNjFiYjp7ImNhcnRfaWQiOjE4Mn0=	2019-07-06 06:14:09.10785+00
kbn22edf9tmw1684wlt710uzmligfn9h	ODUyZDZhZTg0NjVjMmI4ZjMyZjhlYjg0MzU3YjNmYTM4ZDM2YmVhMTp7ImNhcnRfaWQiOjE4M30=	2019-07-06 06:14:19.050405+00
6hh1gouoj2rf38fwciwf72mldn2dzau4	MjE3ZGVkYmZiMDI0MGFiM2QzNjNkM2M4NDgzZmYxODZlMmJhYjYwMzp7ImNhcnRfaWQiOjE4NH0=	2019-07-06 06:14:24.680962+00
rf0icatkwtr3j2se7inb9z9jvb2vtf3n	NTFmYmY2ZTA5NmE2ZTYzZjY3MjY0NzYzNzBjOGE4ODA3OTgwMzBjOTp7ImNhcnRfaWQiOjE4NX0=	2019-07-06 06:14:25.570244+00
vhs6nzczlyz9kt84jqulcldf8f56fud6	OTA2ZWJjYWIzYzZhMzVhMmM3ZTk3MjZmYzgxOTQ4MWM2MjFlMzNiYTp7ImNhcnRfaWQiOjE4Nn0=	2019-07-06 06:14:26.491445+00
ykbl2nbwg9wply6lwdb5xkl2ic54pqrk	NzZlZDg5NmUyN2U1NjJlYzMzOTUyYjBiMTFlNzdlZTFjY2Y1NTJkMzp7ImNhcnRfaWQiOjE4N30=	2019-07-06 06:14:45.784639+00
iaxkmqwphwa4ktxqlkw1vplgpgmnx0uf	MjU4MWFkMDcyYzI4YWU4NWViY2Y0MGFhNDE1ZTI5MWMxODkyNThkMTp7ImNhcnRfaWQiOjE4OH0=	2019-07-06 06:14:46.507064+00
6kb0fzdkcpz06kvf1zevaa9h4v0czkyb	MzAyY2FkNzhjMDFlMTRiMmZjNTdjZWMyZjE2OTliNmQ4OWMwZWI5ODp7ImNhcnRfaWQiOjE4OX0=	2019-07-06 06:14:52.281314+00
vrs87or5pn9ojyraub27vi7gprtdtjqt	ODc5OTAxMGIwMmZkYWYzMWYyYWFiNDUzZTgxNWY0MzI2YTQ0ZmM5MDp7ImNhcnRfaWQiOjE5MH0=	2019-07-06 06:14:58.137612+00
sbvp1cub2a5yur2jiawhvvdax74gh4r4	NDk0ZDRhZWZiODNiZjY1YjJlNzM4ZGJlOGE5MTBkNzdlMDA5MmRjYzp7ImNhcnRfaWQiOjE5MX0=	2019-07-06 06:14:59.055893+00
7g73zg16xrh8sw9n65p2dy7b05an6i71	MzZlOWY3NmI3NjA5MzRkYzRhNjRhNzBiOTdjOWEwZjM4NGYxMjlhNTp7ImNhcnRfaWQiOjE5Mn0=	2019-07-06 06:14:59.962327+00
24hr25y0ko7bned8zjnsud0vvuxysytx	MjBkZTUxMzA5ZTE5ZWRjMDQzNThhYjc0N2I4NjNhNGUyOTdlMGU4NDp7ImNhcnRfaWQiOjE5M30=	2019-07-06 06:15:19.328308+00
2u7jyx1kyg4b3ydvwvoargh74j04o0mi	ZjBkZWQ4YjU3Nzg2MmRlMmFkZDA5MjBmNDFmYzIxMDk3Y2NkM2MzNTp7ImNhcnRfaWQiOjE5NH0=	2019-07-06 06:20:59.62095+00
bztngd146jpsepsx0e0wvbs5gonx9xz3	NjgzZmEwOTIwZDFjZjFjNTYwNmRhOGZjMzQ3ZTI0MGJiMGYzMzI2NTp7ImNhcnRfaWQiOjE5NX0=	2019-07-06 13:02:44.563525+00
ky5kqctkkiz0y8khvnufvmf0rg3ke17f	ZjM2NTk0OGVmYzcwMjY3ZmVjNzc5YWYzYTIyYzhkMDk1ZGI3ZTkyYjp7ImNhcnRfaWQiOjE5Nn0=	2019-07-06 18:06:10.932528+00
4uvexc5wio27crw1cdzoutnbl871zmsg	NGQ1OTE5MWQxZWRhYmY3MzQzNTVhYmM2YjkzMWM4ZDc2ZmMxY2UxOTp7ImNhcnRfaWQiOjE5N30=	2019-07-06 21:15:07.461872+00
ml2a9urjb3v6atm4ic0nsm9tgay47u3u	OTY3ZjVkZDcyNWY1YWFmNGUwOGYwMjMyNzc3ZTE0OWZjMTQ0ZTgwYTp7ImNhcnRfaWQiOjE5OH0=	2019-07-06 21:37:40.563671+00
vc9kftqr0s7w3c3by1m1qf9i9frr9tu6	Y2JmY2NiZDQ2OGEzNGViYzMyZTU3OGU0MmMxMDg2OWFmYTdjZDc1Yjp7ImNhcnRfaWQiOjE5OX0=	2019-07-07 03:37:41.949617+00
6kkw57c4py8ikgwwzwr8ck2g6qt9280b	YjcwOWRlNWFkYmQ5NDIxMDg0NmQxNGMzMzU2ZDkwZmNiMzFhZTllMjp7ImNhcnRfaWQiOjIwMH0=	2019-07-07 06:58:36.361108+00
z9mbu0ye2uyh9sa13m74c4unqyok0idt	NjQzMzRlYTQxMTk3NWJjYzY3ZDQ2NWRiNmVmM2I4NmQ4MDVmMzZjNzp7ImNhcnRfaWQiOjIwMX0=	2019-07-07 08:10:47.364137+00
w2a4mc2yuecmv2uv5zp8jc4tzsoqk3wz	Y2M4MjgwM2FlOWIyYmZjZmE4ZWIyODg0ZjY1OTVjNTJhYjMyY2NmZTp7ImNhcnRfaWQiOjIwMn0=	2019-07-07 18:50:07.536495+00
wtcb5ajj5vwtj1uposz47omk7d8ipuaj	N2U3NmU0MDI1MGM2MDY0NDhjYmYyMzI2ZjgzYzI4ZDA2NDM2YWJmMzp7ImNhcnRfaWQiOjIwM30=	2019-07-08 04:23:01.367257+00
mx27nv4nf5vqa6i02mvbjqva7yoiyhxq	NmY3ODQzNDYxYTM0MTliY2JkNWM3MzEwMjM2NmU2NTA4ZmNhYzdkODp7ImNhcnRfaWQiOjIwNH0=	2019-07-08 05:27:00.633045+00
f5kwgwbbxr6n3g4d0wkx1o3vqse46rya	MWMyZWNkNGMxMzg5YThjMGRiYzY5MmUyMjVlNmIwYzRjMGEyOGNjZjp7ImNhcnRfaWQiOjIwNX0=	2019-07-08 08:39:28.817454+00
q3v5vrn8dps8lcrfe8gthswe2ep2prv0	OWM0OTY3Y2VkNjE2NDFhZWFlOTM3YTBhN2UzNzdmOGUwZTZhMDdjMzp7ImNhcnRfaWQiOjIwNn0=	2019-07-08 10:13:25.956812+00
88o1fr5edvbl7ub20a5mgscf0hdmgu1t	ZjdiMjIwYjdlOWUzNjRmMWE4MmI2ZTZmMmNlMmM3YTEwZDdiMTg4ZTp7ImNhcnRfaWQiOjIwOH0=	2019-07-08 11:29:16.859112+00
gc12jyd8m2dbm3cywh7ksj0hdij7kj24	NTczMWYwN2JmY2M4ZmRlMzRkMjY1ZDllNWM1MTlkOWRiNDg4MGFmZTp7ImNhcnRfaWQiOjIwNywiX2F1dGhfdXNlcl9oYXNoIjoiMzUxNWZmNTc2YTRiYzVmNzIyZGFkZDk3Y2I3NzNjOTgwOGVkZjg4MCIsIl9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXIuYmFja2VuZHMuVXNlcm5hbWVPckVtYWlsQmFja2VuZCJ9	2019-07-08 11:32:39.203214+00
kcj39n7aea49n21a499o2jn20tiqjqfh	NGJjODg5MWUzOGQ1NzlmYTEzZDBkNWMyYmU1ODJiYmJiOTYzNjM2Nzp7ImNhcnRfaWQiOjIxMH0=	2019-07-09 05:15:03.418804+00
ixp3gzm8568obs5goeynr7dxzzbz6yb7	MjZjM2ZhYTNmZGIzMTZlMzBhYTBmMDU2YzY5OWIzMmNkMDQ4N2JlZTp7ImNhcnRfaWQiOjIxMX0=	2019-07-09 05:48:17.302116+00
2o7pknqaj3a04xcuv3rr8rkpay81hgh0	NGEzMzEwMjA4NzkzNzc0Y2EyZmUwZWE0ZDkyMWUzZjQ0ODI2ZTk3Yzp7ImNhcnRfaWQiOjIxMn0=	2019-07-09 06:07:13.891776+00
n1uf9c648hdmpoekih20l5b29u13ytq1	NzI0Y2YxMWY0NmE3NDViMzFiZGQ3MDJkZmZlNzFmNzIyYTU2ZmIwYzp7ImNhcnRfaWQiOjIxM30=	2019-07-09 06:59:00.486736+00
08x6tk7pbt1rm8mxvd7mw7hvcpizi3v4	ZDUxOTJkYTJjOTgxZjczNDMxMmY5MTc5OTA5MjNlZDlmOTk0Y2RhNzp7ImNhcnRfaWQiOjIxOH0=	2019-07-10 03:03:04.621357+00
n26jf5t37bbgzxhgso0brz0h48fduh00	M2FmNzEzYmY4OWU1OWJjYjIyZmRjMDg0NzQyMTg4YjMwMTM2MTNmMzp7ImNhcnRfaWQiOjIxOX0=	2019-07-10 03:35:27.359897+00
h343xoeyors2qkmca78y2jyvig4y7fti	ZDlhM2VkMmFiNWNiNWEzMGEzNDNjNjA3ODU1M2RkYjFhMjM3MWEyNDp7ImNhcnRfaWQiOjIyMH0=	2019-07-10 04:54:00.608934+00
dlc8hrrtpvt4c25hbewa1xj9022xnf8b	MTdiYWY2NWRlZmQ5ZjBkYzU0MzYwOWE2ZWRmOGU1M2U4NDkwNGE5ZDp7ImNhcnRfaWQiOjIyMX0=	2019-07-10 06:19:16.622398+00
wja0sm6p5m74ydeboyizap9nzyns4alm	MDM2ZmU2ZjQyZDBjZGQ4MDVkMDk3OTY2MTA3NTc1YWI1M2Y3ZmU5OTp7ImNhcnRfaWQiOjIyMn0=	2019-07-10 06:43:35.618122+00
wg5drc4rsws20cp910nl0odlxn0i81fp	MzljZDhlNTE4ZTk2MmI3MmQ1ZDQ1ZTViY2Q3ZTI5NDVmNTIxYzhmNTp7ImNhcnRfaWQiOjIyM30=	2019-07-10 12:00:17.870431+00
p1u0km4na85orgk511a584ukfqx68r3i	YmFiY2QwMDMwYTNkNWIwZmI0MmUyMDBkNzNiNzNjNzQ3MzE4NzdmZTp7ImNhcnRfaWQiOjIyNH0=	2019-07-10 12:01:08.140598+00
gp0np6g7oo0f6kmsvup5xekv6aol57tm	OGY4N2Q5ZThjODNhNjA1MTlmOTMxZGZhYjFkZTAyYTYyMzllNDkxMDp7ImNhcnRfaWQiOjIyNX0=	2019-07-10 23:42:17.384959+00
kd8453w4nlwsmsmzdrwhefou8yt5n9gd	MzhiMDFiN2RmOGVjYTM2NzdjNzJiNjdjMTlhMjU3MDRkMGQxYzAyOTp7ImNhcnRfaWQiOjIyNn0=	2019-07-11 06:03:18.955615+00
sbxgow76ru2b2nudffmy0h37bxcb2uy9	ZDc3NWRmYjlhYzAxMDIxZTAzMzgxMTEyNDE0Y2I4ZmJmNDdjNGVmOTp7ImNhcnRfaWQiOjIyN30=	2019-07-11 07:38:12.147667+00
9dy5x178aw67itkj22rwmgm014j9y28k	NTMzODMzNjdjMDA2M2Y0YzY5YjQ5OWFiZGM2YTZjNzFmOWRkYjFiODp7ImNhcnRfaWQiOjIyOH0=	2019-07-11 09:53:19.400283+00
a2yoywffrpgi701hzupjchvq3zj282ku	MmEyNmM1YmYyZjY4MTNkNTYxMDVmZmU3N2Y2YWY2MTkxZGY3ZTVhMDp7ImNhcnRfaWQiOjIyOX0=	2019-07-11 14:32:02.241651+00
041umowx4ekd4khiixh48cc4oksk6jq7	ZTg3ZDA5NzA5YzhhOGM1NjViNGZmNzJhZWZmYWQ5ZDgxZjgzMWFjNDp7ImNhcnRfaWQiOjIzMH0=	2019-07-11 16:28:51.788541+00
syej60cduq5fvdd5uaufdohuemzxkyfl	YjE5ZDdmNGM5OGM2ZDYxOTMzZGFjZDQ0NGFiZjY5Nzc3OTU1ODZhNjp7ImNhcnRfaWQiOjIzMX0=	2019-07-11 20:13:21.130999+00
hindndt50qvf1ew7p5zon7lnoff77k78	ZTdmZTMzNGEzYTYxZjM3MmU3OWEwMzUyMDM4MjY0ZmI0OGQ5NGE1NTp7ImNhcnRfaWQiOjIzMn0=	2019-07-12 01:18:42.805555+00
kx6oihef20kiljkbqw2jtt7de622lv8a	NzQ2MGI0Nzk4OTMzYTI2OThlNjIyMGQ1ZGEwNzA3OTg1OGEwY2MzNzp7ImNhcnRfaWQiOjIzM30=	2019-07-12 02:57:41.942963+00
cflv0voy6isk3j4yy5nx5oyvayicq1t3	NDMyZjhlYzRhMGRjZmI3MGM1YzdiN2ZiOGNlMjhhYjMzZWE0MjM1NDp7ImNhcnRfaWQiOjIzNH0=	2019-07-12 06:11:08.110596+00
1fxti2jyd022vyo15517uyerzdl785fl	Zjk0ODZjM2M3M2MxZWQ4NjUxYTkzZTA4NDg1NjQzYzNkNjFhNzQxMzp7ImNhcnRfaWQiOjIzNX0=	2019-07-12 07:48:31.342213+00
dvnxmmlpt45ler4u3cluwfdix02v0k3c	MTJjY2I3ZWE4ZTVlYjg2MDk2OTQ5ZTIzZjk2ODBiNzMyYTNmNGExZTp7ImNhcnRfaWQiOjIzNn0=	2019-07-12 08:07:19.631476+00
i91i2pinjo31l9vrq17gv8rwbmiwzve1	Y2Y1NGM3YjFkYjkzYTExOTJhZTg4MmUxNzhjNTNkN2M0MjA0NzA4NDp7ImNhcnRfaWQiOjIzN30=	2019-07-12 09:38:40.801282+00
97km6qtz4r5ltb59r72vknu9jbrhx7yr	MjMyMGNiNTUyZGZjOGNmMmM5MTgzM2JiYzg0MThhNGMyNmJlYzUzMTp7ImNhcnRfaWQiOjIzOH0=	2019-07-12 09:56:34.895591+00
rlgp3yjtyk7p165bbmzz1hh39ocd1xvc	ZTExMTdiNmFhNzczMDIxOTNjYjNiNjUzNzFiNzY3YjAxMjAzY2EwNTp7ImNhcnRfaWQiOjIzOX0=	2019-07-12 09:56:36.465806+00
9mn1frxz45a5iobcmb99cvflrkifsrv9	NmRhZDMzZjM3ZmQxZWNjZTZlODg4YzE5NDhhZTA3MTc3MzMxMzEzNDp7ImNhcnRfaWQiOjI0MH0=	2019-07-12 10:49:26.510788+00
bhvpdi07mjl9qztoe182ygpnw9vm2icb	NDAwODA0NDRkMWFhYmRkNWNkYzJkY2Y1NzA0YzUyYTk1NzdlYTBhYTp7ImNhcnRfaWQiOjI0MX0=	2019-07-12 11:28:20.692558+00
n9d846zo8v4xmjda24cikbvnnpqbb28n	MzNhMzZmYTkyN2Y5MmRjNzYzN2E1MTQ4MTc0MDU2ZDgyZTQ5YmUyMTp7ImNhcnRfaWQiOjI0M30=	2019-07-12 12:21:53.915854+00
33yztk10h2e57jqcxvj0z0zdbqv4bj8c	NzQ1ZmFhZjRiNTZhOTMxZWI1ZmM4ODNmYjhmMGJiMjI5ZGI5ZWI4Yzp7ImNhcnRfaWQiOjI0NH0=	2019-07-12 16:06:14.134995+00
6ojmn1khx6e9hoek6ro6309rg125u276	ZTNkYzU4NWQ1MWRmMDQ3Y2FhZDg0NTY1MTNkYTE5MDI0ZGEzNzVkOTp7ImNhcnRfaWQiOjI0NX0=	2019-07-12 18:14:18.424384+00
z1f7snd8dybr3c0ffiy89bxc341h48rd	Y2EyZTVhYzBhNDAyZWE4MzhiNmE3YTk2ZDBmMjc3MTE5NGQ1MzkyMDp7ImNhcnRfaWQiOjI0Nn0=	2019-07-13 03:14:44.201776+00
vgdd7j97nvb6eaboc10rzybc1g64ci3i	NjFjN2IwMWI0NDNlNGZlNDIwNDhkZjAyM2IzNGU1YjFjMzc1ODNmODp7ImNhcnRfaWQiOjI0N30=	2019-07-13 05:49:15.130126+00
005h38krlym39kbl7nrtr8p1ob3ffsdr	YzExMWEzNTZkZjQ3MzU3OGE4ZDUxNWM2ZDc0NGJjZWVhMzg2ZTJhYzp7ImNhcnRfaWQiOjI0OH0=	2019-07-13 05:50:19.240639+00
tmf1rtovj1nud873blfwrjedazifr6in	YmE5YzJhYzk2ZDQ1MTBmYmQwODc0M2FmMGE1YjY0MTc5MGUzMmJkMDp7ImNhcnRfaWQiOjI0OX0=	2019-07-13 05:51:22.46274+00
avmgesd2w762i5dhmjcfmb8om7d4i2ck	MWZkOWUwYmVmMWIwMDA5Yzg0ZWJhZTdiMmE2ZDllZmI2YWMxY2Q4NDp7ImNhcnRfaWQiOjI1MH0=	2019-07-13 05:55:07.612609+00
2rwqkt54bhf15xyh9hj6vfwotb471q72	ODE2ZjkzNjNkOGEwNjFjMDBlMGYwNTEyZGEzNDFjOGRiMWVjN2VjMDp7ImNhcnRfaWQiOjI1MX0=	2019-07-13 05:56:08.923626+00
bn1s13zlzp0mqmme8y6pf0yr49hzfvbv	NjkzMWNiY2NkYzIxNDRjYzBmZWE1YzlmYTJlOWU2ZTZlN2UwYmY4MDp7ImNhcnRfaWQiOjI1Mn0=	2019-07-13 06:03:36.074266+00
a2cjdadkt6y4gs6yymp5sqmg7diotsdv	ZmY4Y2Q2YzgzM2Y4YTk0OTRjNDM4NDRhODI5ODVmNjBkNTg5MWY4NTp7ImNhcnRfaWQiOjI1M30=	2019-07-13 06:04:36.382411+00
d2svcoishpenzpt978wfrs43vijj3x5v	MmQ1NjY4NDc0Y2VmYmNmODNkM2I5ZDQxNWIwYmY3NTgyNWFhNDJmYTp7ImNhcnRfaWQiOjI1NH0=	2019-07-13 06:05:48.549466+00
rcuyy8tgsf5dq5yo7t7c550fgcaxebh6	NWZjOWM0NDRkNWI2ZDlkMzA4Yjc4ZDUzYjliZTIyODhhMWI4NDZkODp7ImNhcnRfaWQiOjI1NX0=	2019-07-13 06:06:15.609707+00
gn5eg3i11nu1b4c7qofdrj8w1yqb0rk2	ZmY4NTg4NTIwNDU5NDFlOTA5YmQ1ZmIzYTczZmNmY2I5ZjQzMGJjMTp7ImNhcnRfaWQiOjI1Nn0=	2019-07-13 06:06:54.781485+00
izklscrak6vsenuk1vnpwsmabrop2wks	MjYwNmZiNTFmOTg5ZTE2YjE1NjliN2E4YjIwZDc0NGVhMjg4NDg5Yzp7ImNhcnRfaWQiOjI1N30=	2019-07-13 08:26:16.36475+00
oqh5b79bjj05ks52u2qzmeb6b9yf01an	NmFjY2RkYTAzN2Q1OGU0NDg0MWVmMTgxY2ZlYzlmYzcwNTAwMTdhNjp7ImNhcnRfaWQiOjI1OH0=	2019-07-13 08:37:01.558805+00
gz74e7ql1kxh7lq5obptwvwaf5srvyt3	NTI1NDVlOTg1ZDU3YjI3MTQyMDMzMzNmYzA5YzMzY2MyMjJiNzdhOTp7ImNhcnRfaWQiOjI1OX0=	2019-07-13 12:06:42.600286+00
ih7pikaf7du9zgo52wdph5vyrw0wvpn5	MWZkNmNiZWU3ZmI4ZDNmZDAxMzI1OWVkNTEzYTMyMDQ3NDEwMzQ3OTp7ImNhcnRfaWQiOjI2MH0=	2019-07-13 17:12:20.697004+00
93i01xpheqbmjrr1r5jplh5satvfsi2a	NGQ0YmRiNmNmNDY0MWQxYzU2Y2UxMDcyYzgyNWE0NWNkZmNjNTBjMjp7ImNhcnRfaWQiOjI2MX0=	2019-07-13 17:18:12.083839+00
gexbohrjz3sewjprjtplai8v03s8zfak	Y2Y0ZTYzODM1ODBlNzRlZDdkZjA0YTQ1MTEyYzAwZTczZTY4NWQwZDp7ImNhcnRfaWQiOjI2Mn0=	2019-07-13 21:19:00.377085+00
60ypaxtpkhcextopzglupim5iz6z8r4v	MDViMzUzZDdjMTU5OTZjMjQ0YTJhZTQwZTcwY2Y1ODNjY2RkM2MzZDp7ImNhcnRfaWQiOjI2M30=	2019-07-14 03:33:27.638863+00
3bp6yidso8ij91r2dupy6xyqp2thncjc	M2QyZjE1OGYzZDdhMGUyOWUyNjZjYTgxODBlMzBlMDMxYjgwMjBiMzp7ImNhcnRfaWQiOjI2NH0=	2019-07-14 05:38:01.878073+00
34bw02sfdxwlksn95cnl0qm29753z8kj	MjQ1ZTczODlmYTJlODBmMjNlNGQ3ODdiMDMyMzAzZWRmNjI0YzY0Njp7ImNhcnRfaWQiOjI2NX0=	2019-07-14 05:38:02.885925+00
24ioxzkv8ezdf0awr58u21gr8ebm0oni	ODkyODE4Mjg5YzUzMGZjOTBiNDhkMzEzOTlkZTU5MDA4OTI4NzljZTp7ImNhcnRfaWQiOjI2Nn0=	2019-07-14 05:38:10.682272+00
1yafaxcveqyemqd7s9d9pfgkfanctsbr	MjIwMWExZWEzYmQxYjY2MDE1ODgwMGI4YTFmMGM3MjI0NTM0MjNiZDp7ImNhcnRfaWQiOjI2N30=	2019-07-14 05:38:24.253725+00
5dar5ff5nxafygtu0zot1xfh8cftyve8	MDU2ZjdmYTY5YmU1ZjJlMDcyZmI2YzVhMmVlNGE4MTg5ZDc3YjM4Nzp7ImNhcnRfaWQiOjI2OH0=	2019-07-14 05:38:25.126831+00
srfmwlrhf01f0svsoeyfi6cajj1kyzbw	NWI2ZTExZjRhMDU0NGU1NzJjOGNiZmY1MDliMTc5NWQ0MzE2NzdjMzp7ImNhcnRfaWQiOjI2OX0=	2019-07-14 05:38:28.141441+00
v7la141n95n5ipa5y4kpqaktbl12lxst	MjhkZWZlZWNkY2Y1YjVjZjBmMTE2OWQxZWNlN2JjOThlOTdhNTAxOTp7ImNhcnRfaWQiOjI3MH0=	2019-07-14 05:38:31.633445+00
l0rgynuj4zzoyomvq7trva6bhi0gvmm3	ZGQyYjNhNjE5NzE4NjRmZTI0ZjI1OTEwYjlkMzZiM2IwNjI1NDk5MDp7ImNhcnRfaWQiOjI3MX0=	2019-07-14 05:38:32.424209+00
3vzbc5x5idd6kvcza4wnxafc78xq9kgl	MjNiMGZlOGM2NmExYTAzODcxNjVmN2E2MzhjYjIyN2NmYmFmMTBmNDp7ImNhcnRfaWQiOjI3Mn0=	2019-07-14 05:38:35.508457+00
xf077q5lkf3i73wcfe51qk33idsxj75d	ZDZmNjNlY2YxMWFmNmVlZTI0NjM5MDNiYTg0NGU5ZTM3MDYyNGRmMzp7ImNhcnRfaWQiOjI3M30=	2019-07-14 05:38:41.327324+00
n6d42lcue8y4id9oalrq8cuhfk530hhl	OGE1Zjg5YTRlMGJiMzVkMjkxN2FkMTg4ZWQxYmQ2NWQwY2Y2ZjI5Mjp7ImNhcnRfaWQiOjI3NH0=	2019-07-14 05:38:53.42238+00
yg764aunodcwj9hxf7gft186afgbyn5l	NzI3ZjM0NGQyNmQyZTdkYTg0ZDA4OTUxMDM0NzU3ZGI2MWU1OWVhMTp7ImNhcnRfaWQiOjI3NX0=	2019-07-14 05:38:54.676425+00
j84hzs092iizuag6uco97d1xt54zw5xt	ODcwNmU0ZGY4NDlhYTljYTRiYzNhZDJlMDQ2M2ZlMjJmOTQ2MGFiMjp7ImNhcnRfaWQiOjI3Nn0=	2019-07-14 05:38:56.428309+00
jy8gkh8zmf72fnoan9xb89ixrnnqmp6o	MzFlMzgxN2FiYmU1MTliMjIyNjA0ZDYzOTVhNDRjODFhNWMwZjAwZTp7ImNhcnRfaWQiOjI3N30=	2019-07-14 05:38:58.08064+00
f3cqln6of4racoyetaelb0msbt28fybc	ODc5ZWNjYThjNTUwZjdiZjk2NGIwN2U5ZjI0ODQ4ZWJjZjUzNDU0ZDp7ImNhcnRfaWQiOjI3OH0=	2019-07-14 05:38:58.096199+00
fp1kt1303x7eemdkuguuor2o6el48zrj	NDkxNWI2NmJiZTlhMDQ0YzA3OGIwYmZkNzU0M2YxYjk4YWRjNmFmMDp7ImNhcnRfaWQiOjI3OX0=	2019-07-14 05:38:59.697198+00
6esiofuyxe20nyzuu3jsugdme7rrrbmi	NTZhZWYzYjI1NDJlMzdiNDFkYTI2Y2E0YmU3OGYzMWQ5ZjJlNWJkMTp7ImNhcnRfaWQiOjI4MH0=	2019-07-14 05:39:01.021597+00
piz4h55q1cmbdsk1lej470nnbhlfdiq0	ZTYwMjdlZmUyZDhlYzk3YzQxOGI5ZTc3NTFkMWI0NmI2MWE1ZjczMjp7ImNhcnRfaWQiOjI4MX0=	2019-07-14 05:39:01.916856+00
y148r2rqpo3s32kejirwrjdi2w6clhnt	OWI0ZmM4NGQ4NGVhMWRlOWJlYzZmZTQ2Y2ExZTI1Zjk5OGIwOTNkMjp7ImNhcnRfaWQiOjI4Mn0=	2019-07-14 05:39:03.245899+00
irzo0wwmieuyz6r62hc51ccglrqq4ikx	OGQwYTE2MDAyNTQ2ODQzZjhjNDRkMjg4NDk3ZjAzMTZiZGJhMTRjYzp7ImNhcnRfaWQiOjI4M30=	2019-07-14 05:39:07.665335+00
pnz6mgeqaglb4v28moanw6ld86r36ly6	YWRjNmNlODk3OWYzMzcyMTkzOWY2YmYwYjZiNWVkZWEzODM5MGVmYjp7ImNhcnRfaWQiOjI4NH0=	2019-07-14 05:39:21.84251+00
67nreg5z9m1pssavei87kr4ddd9k97mv	NGMyZGEzZGY1YTRhNTkxYjk3ZWIxODI4MjdmZTcxMzJkNGZhYzk3Nzp7ImNhcnRfaWQiOjI4NX0=	2019-07-14 05:39:24.547201+00
miu1yt0vwugn8qx46ontt3idi8dqgwcu	OWMzOTMwYTAyYzI0ZGE3YTZmN2EwOWZmZDA2YmNlNTkxYmY0NmMyYzp7ImNhcnRfaWQiOjI4Nn0=	2019-07-14 05:39:26.137446+00
mrvwaqzy1bg1xkkiyulngoxgp82pfi8f	Mjk5ZWRlZDhlYWY1Yjg3NWM0MmY3MzM5OGU1MWVkNGVlNzZlNDZhMTp7ImNhcnRfaWQiOjI4N30=	2019-07-14 05:39:27.421024+00
f7bo4k1i8rd6qo04f4d34bvd03pxwoh8	NjlhNmU4ZTUxZjExM2E1N2ExOTA0NjkwZGNlMGJkZTNiNTRlNmI1Mzp7ImNhcnRfaWQiOjI4OH0=	2019-07-14 05:39:28.711837+00
juyqv6g5s5ot17o39fgc775nye6e1298	MDZjMzQ1YmVkYWI2Yjg4ZDdjNzZiYzk2NTk4ODE5NzNjNDI3ZmRlNjp7ImNhcnRfaWQiOjI4OX0=	2019-07-14 05:39:31.05782+00
cj4x02f6s2penvqca6wg2obe23eg7pz4	ZTE1YTE3YTdjMDFlMGU5NWM5Yjc1ZjI1N2IwOGQ1MTU3NDgyNDM4Mzp7ImNhcnRfaWQiOjI5MH0=	2019-07-14 07:58:10.09888+00
8tzbu70a3mzhvm8hw5ojshwzxgsbbxdu	Y2E2NGVkNjQ1NGI1ZTNjM2M2Yzc3YTVjNmQzOGM3ODRhNGY2NjU2NDp7ImNhcnRfaWQiOjI5MX0=	2019-07-14 09:05:54.690878+00
pzw6tvssfgdqh76jw2t0lwqfmhz9hqtp	ZjQzYzk2NTU1NmM0ZDdhZjdlOTllZjNmNWFiZTU4NmY3ZjRlZDYyNzp7ImNhcnRfaWQiOjI5Mn0=	2019-07-14 09:56:45.366151+00
cu45mbh6z2rkhqihtwpj87vtqulh9vm6	MGQ0YTRhYTJmZTcwZTdkOGEyMWM0MWE1MjAyOGUxNmFhMTkxMzg4Yjp7ImNhcnRfaWQiOjI5M30=	2019-07-14 10:50:21.216475+00
kamy7dc2wckiw7x6vq5tp22dqhifgn9j	ZDY1ZDFkZWI4ZTM0NzAxMDM3MzM3NGUzMzZjMmExYTgyOTk0N2JiOTp7ImNhcnRfaWQiOjI5NH0=	2019-07-14 18:42:11.118496+00
z748fxfdxtbz0henhdw04cotttqisuf9	YzEzNzEyYmFkMDExYzc5ZTI1MzU5ZDAwZmRhNjMzYzE4OTViZTMyMDp7ImNhcnRfaWQiOjI5NX0=	2019-07-14 23:07:36.609881+00
um0bxy0v059cz5yxkhw7nlrjdrens24v	MDJkMGM5MWU2Mzc2NGNhNmI5NmZhMGY3ODcxYjY3YjEwYWIxZTFhZjp7ImNhcnRfaWQiOjI5Nn0=	2019-07-15 06:33:22.702279+00
znmfrcqjhtno89a2i9e8trematrursul	ZDcyMGUwNTA1NTJlMzZlMjcyZTk3YWFhNTQwMDZhM2Q1MDgwZGRhMTp7ImNhcnRfaWQiOjI5N30=	2019-07-15 06:38:26.709892+00
r1b0dko3l3hrh873g5t9oqond6lla4fj	YzQxZTJlYjFjYzg3Nzc2YWE3NGZlZjUxNzllYWUzNTBlYTU2ZTVmMTp7ImNhcnRfaWQiOjI5OH0=	2019-07-15 10:45:55.061029+00
hsg7np57pig3pp1nsqeajiajtomt3fg9	MGU4MDBlMThmNmZlYzRmMzU3OTUxZGUyZjI2ZDNhMzk2OTQ5ZTdjZjp7ImNhcnRfaWQiOjI5OX0=	2019-07-15 12:26:19.829024+00
o64qb1wjt7ew60ynnozppedsh4hej7t3	MDM4Y2EzMmFlMTkxMzI0NDQ0ZjY4MjJiNGJmM2ZjNDBlZmQ1YzBhMTp7ImNhcnRfaWQiOjMwMH0=	2019-07-15 19:40:21.60912+00
ngr6xqjhyvelnxp7h8oqf6o7l2cwx92u	YWU1NzMyNThlODE4MzExNDlmNGJmMjYyNmIyNGUxNTVmZTRjZjBjNzp7ImNhcnRfaWQiOjMwMX0=	2019-07-16 05:41:36.126033+00
u1laj105jaemxojbz5cudxr18y6ey2w0	NGY2OWI1MzM1YjIxMzE4OTJkNzk3M2E5YzhkMmQyYmExOTkyMGY1NDp7ImNhcnRfaWQiOjMwMn0=	2019-07-16 06:39:43.364085+00
klp15bglnq5lz89zm7u30bxklo2z4z6w	ZjBhOGE4ZDJkZGY3MDA0ZmQyYTMxOGE0MTVjODU4NjZiNzFiZTczNTp7ImNhcnRfaWQiOjMwM30=	2019-07-16 10:31:47.869394+00
efl069xl55ibcg5fxbp1cwtl9eim4r75	ODhkNDhkMjdmOWMwZDQ4Mzk5OGUwZjI2ZmRlY2E1YjU1NzA1NzlmMTp7ImNhcnRfaWQiOjMwNH0=	2019-07-16 10:37:13.148885+00
73jiog14nddsamm6m60d6wbwrezg2x63	MTRiNGMxMGNmNzlkYmYwOGE1M2FmM2Q5MTljZWYxYTQ1OGZkNzI0YTp7ImNhcnRfaWQiOjMwNX0=	2019-07-16 21:15:55.676333+00
6oo66hot95a0rayp7jur2ln6u5a1j89w	N2NmZjQ0NzdmZDk2Yjk4NDdkZGEwN2Y1OWEzMDhhMWY1M2I0YWUzMDp7ImNhcnRfaWQiOjMwNn0=	2019-07-16 23:58:30.654254+00
vhv6ixfg1bffxruuws0j7bxhj3odg5s5	YWNlOTA5MjU2NDZkMjhkNjYwNDZiZjVmNjY2MjZiYzUyM2M4ZTdkNjp7ImNhcnRfaWQiOjMwN30=	2019-07-17 04:18:03.955082+00
eqq2lw07xo9jnsmb1vi57uz8bio5hxp7	OWZkOTI4ZTdjMDRhOTRjMmU0ZjBmZTdlMjY3ZmUzNDc3ZjBlMWU3Mjp7ImNhcnRfaWQiOjMwOH0=	2019-07-17 04:18:04.863788+00
lfvg20uy3tr31m6v32sfk322vm5lvghb	NzZkZmZkZmE0ZjZhMmUwNjRhNjRjYzc2ZTQ2NTc1NzFhOThmMTNjNzp7ImNhcnRfaWQiOjMwOX0=	2019-07-17 04:18:05.403967+00
9ckhhgqnutb2323s8dmfcaoh97e4fs8c	ODBjNjBmMWMxOTZjNDFiNDI0ZTEzZTFlMDcxNDFkYTkzM2QxNzBhZjp7ImNhcnRfaWQiOjMxMH0=	2019-07-17 04:18:06.259887+00
w8x5spjrvwio6loiy9axt2s0240su97p	ZWMzNDk3MWZkNGYyZGJmZmY4ZTJmNTYyMDE5OGEyZDYwMTNlYTI3Njp7ImNhcnRfaWQiOjMxMX0=	2019-07-17 04:18:07.128781+00
ypg0t0k8vmg62w8d25h7af0a27iqxz72	ZjQwM2YzN2M0Y2Q4NWI5YzY1NzI4NGM3ODI1NDRkMGNmZjQxYjAwYzp7ImNhcnRfaWQiOjMxMn0=	2019-07-17 07:27:11.925558+00
b3wt5zhnlk2mrd3xkvvpc9by9z1tk9nc	YmIxNWU0OTc1OTgzMWVlZmRlODhmMDYyODIwNGY3YjJmYjgwZmMwZDp7ImNhcnRfaWQiOjMxM30=	2019-07-17 14:39:31.367147+00
ge7eo7vgqoryulheq3um7y5wmi69gjls	NjViY2MyYzdhYWIwNGZjN2IwYWFmYjhjMzI0MDFhZjgxMmFhYWNjNTp7ImNhcnRfaWQiOjMxNH0=	2019-07-17 15:25:48.561504+00
12d2i4rhozr2jm1mjdgvkqf8jaycsk3e	Y2Q1NDE5YzUwYjBiOWE2YTJlMTU4OTEzZDg2YmU5OWM3MDFmZjhhZDp7ImNhcnRfaWQiOjMxNX0=	2019-07-17 15:25:54.092334+00
ikytatv55psosfzmk01qv0jek55dvj9f	MjAzZDhiYTk4NTE3NzExNWIzMGQ2MDFjYzk1NDBkM2UzNzIwNmM2MTp7ImNhcnRfaWQiOjMxOCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlci5iYWNrZW5kcy5Vc2VybmFtZU9yRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjgzMWRkMTE3ZWQ4ZTA4MWM0NTg2N2FhZGZmY2M3YzkzMmUzOTVjIn0=	2019-07-17 15:27:32.940996+00
lreu4cj7gihbidg49towwzxl9y5izkmy	YjlmYTUwMGIwZDA3NGFkMjIyZTA4MGE3ZWU0ZDVmYzVmZGFjY2E1Mjp7ImNhcnRfaWQiOjMxOSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlci5iYWNrZW5kcy5Vc2VybmFtZU9yRW1haWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE0IiwiX2F1dGhfdXNlcl9oYXNoIjoiM2MwZDk1NDU2M2E4OTdhNmI2ZDQ1NDNlNDI5MTEyMDY1ZWU1N2Y3MiJ9	2019-07-17 15:27:44.053127+00
0cfwacaewk93yilpx3hj75510nml6nqm	YjdjNzRmODg4YWI3ZGVkNjNjZDdlOTNkYzhhYzdmMzVjYjdkMGU2YTp7ImNhcnRfaWQiOjMyMH0=	2019-07-17 16:40:37.363923+00
m7k75h4lkv36tngexsdd37s6e4wujwft	ZWQ4OTY4MmM4MDQyZDNmOWQwYTVmN2RhNTU1MzVjNzJjMzI3MzU2ODp7ImNhcnRfaWQiOjMyMX0=	2019-07-17 17:12:10.392923+00
hdu3hi1nm8dq1ka8w1a2wlhklk78ldo4	MDhlYTkyYWQ3N2Q0NzA0MGE0MmMzMjdhYjhlNzQ0Yzg4Y2IxNjUwMDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlci5iYWNrZW5kcy5Vc2VybmFtZU9yRW1haWxCYWNrZW5kIiwiY2FydF9pZCI6MzIyLCJfYXV0aF91c2VyX2hhc2giOiI2ZjgzMWRkMTE3ZWQ4ZTA4MWM0NTg2N2FhZGZmY2M3YzkzMmUzOTVjIn0=	2019-07-17 17:24:13.852345+00
6cdvsal2pdcpv9bcz6u43l12g3fg0ut3	MzU5ZDBmM2YwNzA5MzE5MTc3NDlmOTA5NGRhNGM4YTk1NzYwNWRlYTp7ImNhcnRfaWQiOjMyM30=	2019-07-17 17:42:57.90207+00
3bl7i2eej589o6yucm79yrxn1ocub288	OTlkN2NhZjQyMGMzZWIyODQ2MTgxYzJhOGJjMmRjOTE5ZWM3NTAwMjp7ImNhcnRfaWQiOjMyNH0=	2019-07-17 17:48:16.160007+00
2pz2fwqbkvr7hbnjfwof8yj9my1d0vrv	MjQ3NGFhMTQ5MmFhYzRmYzAyYzcwYTY5YjBjZjI3MDkwZmQxYmY0MTp7ImNhcnRfaWQiOjMyNX0=	2019-07-17 19:18:48.679138+00
u8dzp8csc9f6ld96knuhrccfdgnbxzty	MWQ3NDhiNjM3OTU2NjA1MGViMTA0NzdhZDEyMjVjNjYwZDhiMjhmMDp7ImNhcnRfaWQiOjMyNn0=	2019-07-17 19:19:47.56325+00
6vjly8095zo3oqwimy3wabo188zamczt	ZGY3NjkwZmY3ZDM0MzAyNGRiNTU5MjU0N2I3M2Y5MjkwYzRhMWIyMDp7ImNhcnRfaWQiOjMyN30=	2019-07-17 19:26:28.805934+00
aqjtk5vqmpcltsdt3ld3nymy5neo84bg	Y2MwNmNlZGE1Mzg2YzI5NWI3YzRiZDczMmNlNmI0ODVlNDMyMGNiNjp7ImNhcnRfaWQiOjMyOH0=	2019-07-17 19:31:16.1907+00
a8eyvc7av26arx0zawzrtth8lyhp64iy	MDE5NGNmYjA0ZGRhMjVmOTk1ZTc1NDI3MDU3NjQwMWQzYjRhMTI0Yjp7ImNhcnRfaWQiOjMyOX0=	2019-07-17 19:56:55.154155+00
izmktrr9xhcwni6kfjya4wm527gw0773	NWZhNDBmMTNmOGE1ODkxYzdhYWUyYTllM2YzNzM3NzViZGZmNmIzMjp7ImNhcnRfaWQiOjMzMH0=	2019-07-17 20:29:19.189667+00
avvftc683w6n91gt0ybabrugxt9rebka	NmY3YzM3MDJlNjY1ZjRjYjc4ODQ3MzVhYzk1NWNkOWE1NTBiNjU4Mjp7ImNhcnRfaWQiOjMzMX0=	2019-07-18 00:38:26.288701+00
70s9l3big471bekwsoy9mhwuyy1b6xfb	OGQ0MTNhOTBhYzA4NmE0MWU5NjBkNDg2YjhkOGE4MjZiNmY4YTM1MDp7ImNhcnRfaWQiOjMzMn0=	2019-07-18 07:17:47.697914+00
1q3wb4v810uoqchzlx24s35d7x3rp610	NmYyOTZlMTc0MTk0YmIwYmZiY2Q1YjAzZTY0MWIzYTg4MjY1Y2NiMTp7ImNhcnRfaWQiOjMzM30=	2019-07-18 07:33:45.44399+00
zcqfb5sp5yp5hp61l3rpwzcggmtsz9tg	YjFmZjIxYjJiZGRhZjU1NWUzYWQwNDE1YjgxZWU2ZTQ4YmJkMzE4Zjp7ImNhcnRfaWQiOjMzNH0=	2019-07-18 09:43:44.154425+00
5t68wd0ky6yd5g9rasllvwugl5r00y5t	NTQyMDgxNjMyMTEyYzc5MDliMzBiOTBkMTFhMzdmMWJlNzZkYjQyMjp7ImNhcnRfaWQiOjMzNX0=	2019-07-18 13:53:46.655876+00
y0s0zr605rwlx1fgojvvjopwuvovmpjn	ZDYxYmNjNWViMzg0NTczN2FjMmNiODkyYzIxNWFhNDM2ZWY3YjA4ZDp7ImNhcnRfaWQiOjMzNn0=	2019-07-18 14:35:30.386161+00
z6tnipoywx2nkqrs49x647w3ib9tsezs	NTQ5NDM5ZjRhZmIyMzM1Mzg4ZTg5YjIxMjVlOTNhMTM4YThlYmQyZTp7ImNhcnRfaWQiOjMzN30=	2019-07-18 14:35:52.153489+00
zuetprrn9bq0pgb0zv5dm5082a7urz4q	ZDYwNmRiMzBlZTM3ZTJiMDY2MDhmNDk1M2ZkMzhlNTNhNjFlODE1ODp7ImNhcnRfaWQiOjMzOH0=	2019-07-18 14:45:09.646519+00
g08150drvp8nglp9bv19a28i37zrswc1	YzJmZDI1MWVhY2RiNDUxYmU3NTEyN2NkNjgzMjRjZTk4NTRiNDhmYjp7ImNhcnRfaWQiOjMzOX0=	2019-07-18 16:03:14.149213+00
r396zjt5idopo3q5uki7j70o17n6x34h	ZTkwMDcwNjExM2E0NzdlYWRkNjhmM2I0M2YxNWNhOWE0OWE0MzUwMTp7ImNhcnRfaWQiOjM0MH0=	2019-07-18 16:50:11.935907+00
wv583tt9diq8tcwp0f2pv5octekzwsvj	NDA5NTI2N2ZkYmMxNTQ3YzAxMDM1NmZlNGVhMDVjOTc4ZTYwYmYxMjp7ImNhcnRfaWQiOjM0MX0=	2019-07-18 16:53:53.299981+00
uygr2vprnxh0ju5d0rto6rakdukc3xsb	MzExMzIxNzBiMzgyYTlmMTE5N2U3NDdlMTJlNDZjOGMxZmM0NDYyYTp7ImNhcnRfaWQiOjM0Mn0=	2019-07-18 17:16:20.680718+00
vfqqdkpm2m2tw7r54k8qf8d142dxmodo	YWI2NGEwZDg2MGIzZGJlODMzODU3YjAyMDdiNTAwZjY0MDRhMDRhNDp7ImNhcnRfaWQiOjM0M30=	2019-07-18 17:27:50.331045+00
02t75n56bhj96m2po8vgdbdyujsq13fi	YzMyN2IyNWMzZDUyMTMyODgwZjNlZGMyOTAxYWQ2NDQ3MzJlMTUwMDp7ImNhcnRfaWQiOjM0NH0=	2019-07-18 17:44:07.404879+00
c5gzcn8ewbdd2uohdk2w2y67366tuj85	NGRiZjJhNGZhNzkwOTFjNTQxZGU1MGUxNTY4YTcyNmFiYzVmZTMzNDp7ImNhcnRfaWQiOjM0NX0=	2019-07-18 20:45:33.744993+00
cemfzj0kvj6gu4bmogvwns74id5pop2w	ZTI3OGJhY2NjMjY3YjcxMGM3Mjc2NDI1ZDAxODIyYTIzM2NiN2IxMzp7ImNhcnRfaWQiOjM0Nn0=	2019-07-18 20:54:02.396779+00
vmhaftgkoor9r6kmdscfm6u1d6sdl85g	OGJiNjkwN2ZmYWRkMDkzNjE4ZTZmOTgxNjhhM2U5MGNlYzBlNTMwMTp7ImNhcnRfaWQiOjM0N30=	2019-07-18 21:46:35.122712+00
7c3krcofbmq9llr43su0k01kommhpfbr	NDkxZTdjMjQ1YjkzMDIyNzg5MGUxNGM5YzM0YTVkNTU0NDZjNGQxNDp7ImNhcnRfaWQiOjM0OH0=	2019-07-18 22:36:13.656951+00
vu18r151s4183yzavs62bz88o6xdd9yk	MGEyMDYwODcyYWQwMTM2M2FhNjk4MDk4NmVkMmQxODNlYmE3MjMyYjp7ImNhcnRfaWQiOjM0OX0=	2019-07-18 23:12:18.608818+00
60noxz2j4ofu07ndcxs2frsj21znn7fj	MWY1OTMyNDZlMTQwZTMxYmNlMTI4NDMwMWJmMzFiMDI3NjkzMjM3Yjp7ImNhcnRfaWQiOjM1MH0=	2019-07-19 00:25:06.404353+00
5ea9gd699f2s0b2gdxg5ppa0wazib5nu	MWJmMGYyMTAwZTVhOTgzZGUxZDJiYzE4MGFhOTY5NjM1YWU1OTY4Njp7ImNhcnRfaWQiOjM1MX0=	2019-07-19 00:34:57.431539+00
mjwxjtykrqr4j5looklyb0l10crb8fcs	YmZkYzVkMWUyYjA0MmRlODQzNWRjZTllMmExYzgxMjEwYTM4NDgwMDp7ImNhcnRfaWQiOjM1Mn0=	2019-07-19 00:34:57.921313+00
puym9zfgsi6lqgo40smjf8fsxs2u9xmd	ZThhMDk2ZjdhMWQyZTBiMDNhYzViODBlYWU1YjI0NjRjNjFhYmJiNTp7ImNhcnRfaWQiOjM1M30=	2019-07-19 00:34:58.416447+00
y2mvjewr9nrzetfsnc4akux8v307djbh	OWM5Y2Q3NjFkMjI5MmYwNzAwNjU3N2UxODYyYmMzMDAxY2ViODI5NTp7ImNhcnRfaWQiOjM1NH0=	2019-07-19 00:34:58.909627+00
wi3e9375s1s4w05k4svj5xkdu7o9c0in	MWFiOWMyMDU3ODM3MDcyNzljYmE0MWE4N2RiYzhkNDNlMzYxM2RkNjp7ImNhcnRfaWQiOjM1NX0=	2019-07-19 00:34:59.404407+00
rxnc1rx836ye7r1vd113xsj3vgeiuo9f	NWRlMTgyNjNmZjliNDczYTU4Y2NjMWQxMmMzOTgwMjMwYjliZjljNDp7ImNhcnRfaWQiOjM1Nn0=	2019-07-19 00:35:00.115001+00
p77zwywsdrf2u8kketx52pompn5r1eoq	ZDQ4ZmU2NjA1YWRkYzNmZjk2ODBkMDY1YzdjZDdmNDgxZjkwMmNjNTp7ImNhcnRfaWQiOjM1N30=	2019-07-19 00:35:00.829629+00
qybf4rfrmx76s3s21s8xcqae3sbpads1	MzBlNTdjOTk5OWYyOGIzOGNjOWNjY2Q1ZTE1MzUyNGEwMTY0OWM0Mzp7ImNhcnRfaWQiOjM1OH0=	2019-07-19 00:35:01.517887+00
noc2vu7par637o97gz5h78brdccr8qc5	ZGIyNGI2MmNlZTM5NjhhY2VlODdiY2IxMzBiMjQ1NWYwOTI0NDhmZDp7ImNhcnRfaWQiOjM1OX0=	2019-07-19 00:35:02.39319+00
okumff3qu2xr9rb0th4y8x0owq9mrhv6	ZTA4MTNkMzlmMGE1ZjE2YjE4NWQ1NTlkMGNkYWNkNDU4ZGE4NThhNzp7ImNhcnRfaWQiOjM2MH0=	2019-07-19 00:35:02.886565+00
tf331plk5oqxb9tber3lh2r3qpj6a01f	MTA1YmYyOWQzYWM1MjU1YTM0MWVkODRiODFhOGVkM2JiODA4NGY5YTp7ImNhcnRfaWQiOjM2MX0=	2019-07-19 00:35:03.381233+00
fp8udtgvt6x4az1zjzinsxcijpvo7zsz	NTFkZmI2YWM4MjYzYzY1OGM0Y2MyYWYyZWY2MDQ1NDcyYzdmZTUzYjp7ImNhcnRfaWQiOjM2Mn0=	2019-07-19 00:35:03.871718+00
vw1qbgtiqzg4ozlkj4bj62gnhvdhg3r2	Y2YwOGFmNDQ4ZDQ5ZTcwMjk5NTNhZDJmMjM2NTM1MWYyMzBlYjIxMDp7ImNhcnRfaWQiOjM2M30=	2019-07-19 00:35:04.366213+00
cdkit8ssavvqj9fav8wvtmf70him0rj0	OTE5ZDFkZWJjMTgyZDFkMjAzMjQ3NDRmYzllNjMxOTYxYjhmOWEyZjp7ImNhcnRfaWQiOjM2NH0=	2019-07-19 00:35:04.858239+00
r0uctk282y3gngbwm0794gv274kukai0	NzhmNGJkMWYwYzg2NGNiMDhiZjYyMTMyMTU5NzMxOWE5OTRjODBmYjp7ImNhcnRfaWQiOjM2NX0=	2019-07-19 00:35:05.351901+00
kvtxpujutz7aypen1wa31bclm1e5asrl	NGU2NjBlOGM3MmFhMTM5MDRkYTRmYWYyZGVjYzdkYWY4Yjg1M2VmZDp7ImNhcnRfaWQiOjM2Nn0=	2019-07-19 01:43:34.965637+00
ka67ovnti4qnll7unxoo9t6onpfescl8	ZGQyNWUzZGUyMzU3NDY4ZDBjNGFhZDU1YzNlZjI0MWZjOGZiMGY1Yjp7ImNhcnRfaWQiOjM2N30=	2019-07-19 05:48:25.161627+00
7ki35o6gonpd2f1en14kt80su3ep0lij	MzRmNDVlOWM0YzlmYTk1YjU2ZTU4MDIyN2JmYjQ0Yjc4NTlkNzZlZTp7ImNhcnRfaWQiOjM2OH0=	2019-07-19 10:39:52.191228+00
noiqwr8xy8do0jvwtjpncnjlnzn6nylr	MjM2YTczZGM4MTAxNWNmZjU5ZWEzZTdiY2QxNWNmYWE3YjAzNjBiZTp7ImNhcnRfaWQiOjM2OX0=	2019-07-19 10:58:01.410854+00
z5xyq1w9cl6vlayjs0fo3p4qjnj8r4ih	YTFjYTkzZmY0YjcxYzNmMzBkYjE5MzZjMDFhMjUwOWEwNDE4NTM1ZTp7ImNhcnRfaWQiOjM3MH0=	2019-07-19 21:11:36.421309+00
q96t9pmgleznd4n297zyq3jbs3ewlnml	NGRjYWYyNjM4ODQxNmEyZTcwNDAxOWM0MWFhMGUwMDcyZDE4MjQ0Zjp7ImNhcnRfaWQiOjM3MX0=	2019-07-19 22:23:28.918395+00
92xlpt0h3a7o2i5e7rf68f4vawcwa9dh	Mzc4MzY0NTU2YjNlZGI4ZTAwOGE3YzIxYjk0ZWJjNDAyZDUyMGU4NDp7ImNhcnRfaWQiOjM3Mn0=	2019-07-20 09:42:51.774994+00
zewcwixefrxe3ypep331om43v6nbyacv	ZWQ0MzRmNWE0MzA0OWM3MGIyMWZlYTI5ZTdkZTAzMGY3NmJjNDUwNjp7ImNhcnRfaWQiOjM3M30=	2019-07-20 10:12:31.086868+00
vesiyqjorno9a2v6txwadafibvg72ago	MGYwNTZlOWY1ZDU5OTk5MjcwMzc2MWYzMTgzNWJmNzBhOWNjMGM4MTp7ImNhcnRfaWQiOjM3NH0=	2019-07-20 11:29:49.925508+00
29hpel8iox592h311br71vv4wfgv5b26	ZjNmOTVlNjQ0NjA5NDY5YWRmNGYyNGRmN2Q5YjZkZWZiOWQwYjhhMTp7ImNhcnRfaWQiOjM3NX0=	2019-07-20 11:29:50.922981+00
dqft6onfdxzft11e9afs03t1pydr6if1	NDcyMTBiNTJiNmM4YjQ5MTBlMzJkMjI2YjJiNzkwNDAyNDZmNzU5ZDp7ImNhcnRfaWQiOjM3Nn0=	2019-07-20 11:29:54.599282+00
187fd7ybeg2ozz0n9uqt50adsagrj2ek	NDEwMWExMTMzODJkNmU1ZjdhMmEzYjk3M2ExODI3MGM3YmFiNTIwNzp7ImNhcnRfaWQiOjM3N30=	2019-07-20 11:29:55.512821+00
l6xh4euxgfj21uaaj4zpsp7sz5d96kvq	MWIxMGVjYzJiZTVhMTgzMGZjNjJhNzAwNjg0MDYyYzA3MGVkMjlkMDp7ImNhcnRfaWQiOjM3OH0=	2019-07-20 11:30:04.445694+00
iqndd6ipn42wfyag6fzur6kwajz4zqy0	MjgwYTJkODQyYjc1Y2M0Yzg5ZGQ2MGFiZDU0MDU5NDM1MGI0ZjE3Mzp7ImNhcnRfaWQiOjM3OX0=	2019-07-20 11:30:08.664551+00
qjmo7acife96xz0dj495e88n7bsphssd	M2UwYzA2YzllNTllOTM4ZDQzMjQ1YWQ1ZTZlMWZjMjIzZGQ2NWRmMDp7ImNhcnRfaWQiOjM4MH0=	2019-07-20 11:30:11.284644+00
7qmmzdou69sk0gopxqz04p4fitbdo4ak	Y2IxMDUzN2Y0NGNlNmUxMzhkYzk3NGM0MGI0YTVkYjllNTUxNjVjYzp7ImNhcnRfaWQiOjM4MX0=	2019-07-20 11:30:12.926499+00
mjqbbbugfmdyd712mwnt8z3m1otnrdvv	ZGM2YTdiZWVlZmM2MzM5MzljOTk3OTQ0MGIzYmZjYTlkZTU0MTgzYjp7ImNhcnRfaWQiOjM4Mn0=	2019-07-20 11:30:14.596814+00
ab2qh0dqmnnjuvv2x90j2q6jgg5fsnbx	NzliYmZmOTJiOGZhOTFiMjhkYmM4YWQ3YmU5MDEyMzJjODQxNzY1ZTp7ImNhcnRfaWQiOjM4M30=	2019-07-20 11:30:15.733336+00
sak1gw60e43jgj2cnxcfnn4egmh85nz9	NjkyODVjNDk1ZTc0MjM2ODJiZDQ3NGU5NzljNmJmNjZjYjRhZmU5Njp7ImNhcnRfaWQiOjM4NH0=	2019-07-20 11:30:16.242941+00
7i76wf971t2vseghvbeykmvvb2g6wa2l	YzQwOTM1ODAwNWMzNjJhOTZmOWVjNjc3NjViMzY3MzBmMjE5ZjRkOTp7ImNhcnRfaWQiOjM4NX0=	2019-07-20 11:30:17.095054+00
bmg8hs7h9s1tpvn0sp5ynht19vfscef8	YTU1MDA2ZWQ0ZjM4M2IyOGIwMmE4MmZiYzM0YWZiMTlmODY4NTVhYTp7ImNhcnRfaWQiOjM4Nn0=	2019-07-20 11:30:18.846439+00
4et1o4zb4czpq70i6f2xcjm340ycs0dw	OTI4MTZjMzI1MTZkZWJiYjI5ZTI5NjA4NDM3YjdjZmE5Y2M4ZWJkOTp7ImNhcnRfaWQiOjM4N30=	2019-07-20 11:30:18.907467+00
207f2rieqtqi69to5zz7s06gof1q0t6c	YjQ3ZWU0OWJkYzZjYWQ0ZmJkZjJhYTJlMjBjMjYyYjllY2Q0MTY0NTp7ImNhcnRfaWQiOjM4OH0=	2019-07-20 11:30:20.532308+00
l66rkpio4xc1j3l3lawal7wlw1ax1mzi	N2Q5MDdiZDkwNzIzNGNhMzdjMzRlYjM3YjIyNmJlNzZiNjkyZDM2Mzp7ImNhcnRfaWQiOjM4OX0=	2019-07-20 11:30:22.894368+00
e7zp843uj53k6rn9v8r1robpavopyjck	OTUwZjBlZGEyMzBjZGVlYjU1ZjU5YWU1ZDNhYTk4ZTg2ODcwM2QzODp7ImNhcnRfaWQiOjM5MH0=	2019-07-20 11:30:25.014008+00
n8y8ukakivc0wln3pwcwzlkj8mymezxh	OWFmYzRiMzIwZDgxNmNjZjZkYzk2ZmM2NDY5MDg4YzEzYzZjMzc2Yzp7ImNhcnRfaWQiOjM5MX0=	2019-07-20 11:30:28.348017+00
r7aqfybr8b6nzta89if8l4o0qn78l3e2	MDNhNWFhN2RmMTAwZDc5NTM1NmQzOTc2ZjU2ODAzMTQxZTM0NjA0OTp7ImNhcnRfaWQiOjM5Mn0=	2019-07-20 11:30:29.043046+00
u8q5lpw42rc6gocq4ak36un51lxd6bbv	YTYxOTA2MGY4MTIyNDUwMDE1NDRkM2EwYjAwNDk1OThjMGJiMzBlNzp7ImNhcnRfaWQiOjM5M30=	2019-07-20 11:30:32.100986+00
e7rxil6wkffjp1z937um2eridzxb71u9	ZDJmZWZmZTNlOTY3MmU1NzY2NzFhOWEwNjZiODRmMDA1MGRhYjkwYzp7ImNhcnRfaWQiOjM5NH0=	2019-07-20 11:30:32.151248+00
rwl75i4anls85k54tmc2jgth7kvvxswn	ZWRmNTY3ZTc0NDg2MGFlZWJmOGI4YjM4N2JkOWQ3ZWMwMWM1OTZjNTp7ImNhcnRfaWQiOjM5NX0=	2019-07-20 11:30:35.956917+00
uif5u7s1kwetzeudawnhtrqws4jea9dv	YjZkYTRmZjFhYjY0M2FiM2FlNDYxM2I4NjUxMTg2MDZlZDI3YThmMjp7ImNhcnRfaWQiOjM5Nn0=	2019-07-20 11:30:37.681925+00
9ozeac70sm02mriuhu9dqzllnmwx2l67	Yzg4MTBlMTYwMjU3NzM0YzQwNjhiZTQyNGFlMjczMThkNDcyN2M0Yjp7ImNhcnRfaWQiOjM5N30=	2019-07-20 11:30:39.298136+00
6q0e15uqccudz414294owi35eyrxpptn	NzAyODc5YWY2N2UxNGQ1MWExMjc0NDMwYTIzMDdlNDAzZTAyMGJkMTp7ImNhcnRfaWQiOjM5OH0=	2019-07-20 11:30:41.417291+00
ta63plslyazjczzcy4mjkviyx9uld7zr	OTE4MDRiOTkyYWZjZDQyZGI2YzFlNmNmNjgzMWY4MzQzYzAzYTI1ODp7ImNhcnRfaWQiOjM5OX0=	2019-07-20 11:30:42.061978+00
ahrygiriajo5pwgtbs3lxay7j88naakn	MTg4MmRiYWYwMTgzZTk0Y2IxNzA3OTE0MDllNGVlYjYyZGQzOWVjMTp7ImNhcnRfaWQiOjQwMH0=	2019-07-20 11:30:43.093432+00
ywt45sn5rbuzu71o34pxf9o07clqsvhu	ZDNlMGFhYzU1NTBiNWEzYWMxZTY1MWNlNDhhM2M3MDRhZWViMDllMzp7ImNhcnRfaWQiOjQwMX0=	2019-07-20 11:30:43.856617+00
nvj3ubrydv2ze5z7jwx56sl6k72myg9m	YTc2OGJmODljYTRmZDBkY2U5N2M3ZDRjZjhmZDhlMWYwNWU3YTNjNTp7ImNhcnRfaWQiOjQwMn0=	2019-07-20 11:30:45.272301+00
x16vznm9wp4g8c711gunu5dm62fg0ned	YzEwZWEzYWI4NWRlNzc3OTQyZGEzYTc1N2M3ZmRmOWMwZWMzMTEyOTp7ImNhcnRfaWQiOjQwM30=	2019-07-20 11:30:46.584996+00
yftxn4y5y9721pcbxrfekfhwxa3ufyg1	MjBmYjJiNzk3MTcyODg2NmFmZDRkODc4YTVmYjIxZDBhZDExMThkMDp7ImNhcnRfaWQiOjQwNH0=	2019-07-20 11:30:46.689055+00
zpijcn8vs6l5ul1wkdkhkga5m9heevtx	N2FmOTQ1OGIxMjAzMmIyZGNjNGU3MjBiOTE4ZTRiN2UzZDkyMGRiMDp7ImNhcnRfaWQiOjQwNX0=	2019-07-20 11:30:49.309203+00
1105m6i092bc8xdj5eme6cwxoqcsmsz3	YjE5ZTA5MDQ3ZDljYjNmODdmYjUxZThhMzM4OWVjMDY4OGNlMWVhMzp7ImNhcnRfaWQiOjQwNn0=	2019-07-20 11:30:49.491172+00
cj6ib5kc60z5nclipqs7sgfben9o0xfx	NjhkNWJlYjI4MDNiMWNjMWRlNjY4ODZmNjBkYmM5ZjRjNjhlMzE1MTp7ImNhcnRfaWQiOjQwN30=	2019-07-20 11:30:51.810758+00
is3nt3w6ln30244j0d7kzs6q6e455b1k	YTg4OTY0MzhlZTJjZDE1YmI3MGJjY2UzMGZiMDhlNjJlNDg3NmIxYTp7ImNhcnRfaWQiOjQwOH0=	2019-07-20 11:30:52.305055+00
5n50japyo10o3wiywijkuu3uqpjxmbxj	MTRlNmM5ZDVhYmE4NmY3YWQ0ZDk5MWEwM2U2NmQ3NGRmMzQ3YjdhYzp7ImNhcnRfaWQiOjQwOX0=	2019-07-20 11:30:53.408161+00
jtd4yaxo1kvfmcoico3criw5vdygpbg6	MzdmNTdhZDYyYWJiZTM0YWVmMTM4OTRlZDE0OWQzYTQ1OTIxOGQwMzp7ImNhcnRfaWQiOjQxMH0=	2019-07-20 11:30:54.935897+00
0hv7bsyp5fgsmtgw823xwn8qyle8bcyx	YzU3ZDVkZTA0NzU3NGY4YTQ3ZWU2ZGY4YzFkYzU4NDUwNmRhOTQwMjp7ImNhcnRfaWQiOjQxMX0=	2019-07-20 11:30:55.136446+00
hqksi3rrrp9jy14k60coed6akwl226lf	ZjkwMzE1NTA3YTRhNDI2OTk3Y2NiYzY1MzJlNzUyM2Y0ZDMzMGVjMzp7ImNhcnRfaWQiOjQxMn0=	2019-07-20 11:30:56.092951+00
di2yttnsqsaqkx3kb4tbai1flfyqu7tq	N2Q3ODQzNDQ5MGFlMGFlNjgxZDM4NjE1NmVkOTVmMzY5MzMyOTM2ZDp7ImNhcnRfaWQiOjQxM30=	2019-07-20 11:30:57.400838+00
icwyoq9kdjg6wwmetzddoymwb52hccia	ZDc0OTg5YTAzOTJkMjAwOTE4MmQ5MzA4ODU2NDIyMjI0M2U3ODBjYzp7ImNhcnRfaWQiOjQxNH0=	2019-07-20 11:30:57.92261+00
0lpmu8ckqoxjhg73s82kk8qina8elghu	YTlmMjZkNGE4MjZjNDEyZmU5NTAzNjVjODkzNmI2OTlhMjU5NThjYjp7ImNhcnRfaWQiOjQxNX0=	2019-07-20 11:30:59.536047+00
e73bm88x54mi9hpw4hjuqnd3tcoeh4he	OTdiMWJjYjIxYjBmYjdmNzFiNjgyYmI5NzNhYTk4YWE0MDU1ZjEwZDp7ImNhcnRfaWQiOjQxNn0=	2019-07-20 11:31:00.113122+00
3gd7og7nk5z1h05yy5qqwf4n601g5jyl	ODlmNjcyOTMxNTM3Y2QxNDk4YjIxMmEwYzUzMTRjZjBiZWM5YzcxMDp7ImNhcnRfaWQiOjQxN30=	2019-07-20 11:31:01.431107+00
yi9jbkzoe6uhyaz2kjhk6c96qcvgk5a4	NWM1ZDExYmYzNTJmYzRiMjBmMzdhNDA1ZDAxNzE5M2U2N2RkOTgyMDp7ImNhcnRfaWQiOjQxOH0=	2019-07-20 11:31:03.594194+00
g7noy15dwmlzaoxivoblkqg3egeh21ho	MjJkMmQ5YzgwYWQzOWI2NjZiYTJiNjU2MzI4MjIwZDA0NmM5NGIxNjp7ImNhcnRfaWQiOjQxOX0=	2019-07-20 12:26:34.434671+00
j45sh05rwayg2burvdujs087o3q601ji	MDQ2MDEwZDBmNGIwMDMyOWE3NWIzMGUwODk5MGRhYmEzYmZlOTU1Njp7ImNhcnRfaWQiOjQyMH0=	2019-07-20 23:13:14.433201+00
wqjwcnhlt00yk20lpkwzaukjy1d7dhma	NDYyNDA0ODVlOTY3NWVhMmU5OGRjZTFlZDQyM2MxOWI2ZWQyYjFlMDp7ImNhcnRfaWQiOjQyMX0=	2019-07-21 04:40:43.422688+00
m2cck2e27c3s5ddnyru9ea6msd7zx1jo	Zjg1ZDg5YzAyNGU1MWE1NDBkMDRjMmVlZjQ3ODU1MzY0NmYyN2YzZTp7ImNhcnRfaWQiOjQyMn0=	2019-07-21 05:27:18.633792+00
omxza2i2np8oxlg9bari7ungvu0iyb4h	NmMzZWQ3YTk0NGVhNDE5MmMxNzVkZjFmYzkwZDQ0NmYyZTNiODEwYTp7ImNhcnRfaWQiOjQyM30=	2019-07-21 09:02:50.909812+00
1zb25bb3723gyarhiif758gjwvrjqo36	YTQ4YjAzMWEyY2RkZjFlODIzMDNhMjVhODNhZWQ2ZDhhMGI2ODhhZDp7ImNhcnRfaWQiOjQyNH0=	2019-07-21 11:24:19.186499+00
n0exa8rsyl3r7xav8w62fzzqlejefwty	ZmQ2MzQ0MDVlZjkxNDM3OWM2NDIzNjMxNDA3ZjA3NzMzMGY1ZDI1NDp7ImNhcnRfaWQiOjQyNX0=	2019-07-21 12:04:42.391943+00
95wylvlen9rswo2jag7vdx6t3p0gz690	OGVmM2UwNGIyNTljYjRmMGFiMWIzZDU5MDNmNGQ0MjQ3YmUwMDQ3Njp7ImNhcnRfaWQiOjQyNn0=	2019-07-21 12:05:16.843538+00
av76okhzj5i3ofciehq6jpicfuj6tdhl	N2NkOTAwODA0YzFmYTk3NzNiZjZhOGQ1YmI0ZDExZDBiYjBlNjVkNDp7ImNhcnRfaWQiOjQyN30=	2019-07-21 12:05:35.701031+00
bdipe92kycgu2xhts80yp125wi55z5lg	OGRhNDczOGJlYzgyOTExNTY0YWJjMDgxNTIzMTUzNTg0Njg2NWQ5Yjp7ImNhcnRfaWQiOjQyOH0=	2019-07-21 12:05:59.09488+00
ay9mv2zm0l2b4mrfgmc28s0keal5a4ua	MTVhZGRmM2YyNjQ3OGQxYWJjOWM1MmQ4NjNkMGRhNDIzODhlNTc4ZTp7ImNhcnRfaWQiOjQyOX0=	2019-07-21 12:06:26.079444+00
lcn4ifhp97xc0utrz3pcz8lf7g4cgqq3	YzU3ZGMzYmQ5Y2YyM2Y3MTIyMjNkMDE5YjM0N2Q0ZTAwNjcwZTc2ZTp7ImNhcnRfaWQiOjQzMH0=	2019-07-21 12:07:00.096146+00
yoszbehp1p5dl8wu4v8az50mcp8cgzff	NjY2ZGE2YzY2ZjA5MjRmMGEwZTNhOTZiZDZjYTM4ZjkzY2JjYmFkNTp7ImNhcnRfaWQiOjQzMX0=	2019-07-21 12:08:12.159145+00
io3gqa82qsi9noh2q8tu3ool2ninwomt	N2JjZWE0ZDExMjYzMmY4OWRhZTFmNDViYzk5OTk2ZTRhYTFkZmE0ZDp7ImNhcnRfaWQiOjQzMn0=	2019-07-21 12:24:48.139354+00
xxm2eyfnafjr72c2ighlddguplfsiltd	MzQ4ZmQwNDQwYzgyMTQwNzllNjZjYzc5ZmE0ODg2MmExZDFkYjI0Zjp7ImNhcnRfaWQiOjQzM30=	2019-07-21 12:25:43.092783+00
i8gq1xknsd2fzcxrmdjjgcn251zj0p65	OGJlMTc4ZDlhYTBmZGViNzViYTdjMzVjNWVlNjM3YzQ1ZDhlNDQ4NTp7ImNhcnRfaWQiOjQzNH0=	2019-07-21 12:25:50.917641+00
5snvj162kffpal8e770ila075wbbuaqa	NGI4MjliMmVhODNlYjc5NjE2YzBjMGM4ZDFiMjJmOGVlZGY4NDc2YTp7ImNhcnRfaWQiOjQzNX0=	2019-07-21 12:25:59.154996+00
bwfxrbqpst107ymfjmzvpfuopqxu1397	MGYxZjY1ZjNhNTEzNDNkNGIyZGY5ZTdkY2YwMDc2NmViMGRhYjIyMzp7ImNhcnRfaWQiOjQzNn0=	2019-07-21 12:26:13.755662+00
ggl95vrjekaf67uczn66ujkvdz405p2u	ZDc3YzdjMzU1MWExYWY5MTdhOWFmZTc4OGE1YjUyN2Y1ZWM4MjNlNTp7ImNhcnRfaWQiOjQzN30=	2019-07-21 12:26:29.938815+00
ak6ycbs34p0yv3y3j83x2sp6ap59rfm8	MzUwMjE4NDVhZDg4NjMwOWU0ZjE5MmFjNmE5NzRkNTBiNDJlNjBlMjp7ImNhcnRfaWQiOjQzOH0=	2019-07-21 12:27:04.832304+00
tyg6xr3lgn1a83c9k8rncg24prhz1ia0	YjQ5ZTA3OTY2MTc2ODM4M2JjYjZiMDI0NzQwOTg1YjE4ODljZTM3Nzp7ImNhcnRfaWQiOjQzOX0=	2019-07-21 12:27:44.04454+00
ehwrsqah4vey2kmxnorct5g22zez80jz	YzI5Zjk0ZjMzNDZhOTM4MjNkNTI5NjZlOTY0OTcwNmFlNDFiN2Q1MTp7ImNhcnRfaWQiOjQ0MH0=	2019-07-21 12:47:11.43711+00
rhiaogxn81vl3dixp3m3snpdzwsy2amh	YjAxODBiMzZjMjI4MTM2OTc3YjEwZjYwM2YzNGFjYzQyZjc3ZDU3NTp7ImNhcnRfaWQiOjQ0MX0=	2019-07-21 19:17:56.974996+00
13rldo6sll072yyuhz9uko0cpfavpa1g	ZjQ3ZjRlYTk5ZGFkNTkwMTMwYmQ0M2JlZjUwYTU2N2Q5OWI2Yjg3YTp7ImNhcnRfaWQiOjQ0Mn0=	2019-07-21 21:16:41.46009+00
4748dqdax22cianssf6pbe5r6mzpiwcp	Yzc0YzQwNTRkZDQwYWM5YmZiMjRhZDcwNGMxZjU5MDk4NjM5NDJmYjp7ImNhcnRfaWQiOjQ0M30=	2019-07-21 23:31:30.02059+00
pf1xk9r4a69wn6i9rc2rt9d77sanq1yx	OThkZjNmNDBhYjFkYWNjMzY2ZTkzMzg2NGE0YWVjNTk3ZWYxZGZhNDp7ImNhcnRfaWQiOjQ0NH0=	2019-07-21 23:31:52.388769+00
4681rahpapt8mo9gbgn65hfrnlvoyp1p	Y2Y4ODNlOGI2MDgzZGYxMGYwNjNiYjhhYWI5N2ZkZDE2ZGY1MDU0Nzp7ImNhcnRfaWQiOjQ0NX0=	2019-07-22 00:48:20.644368+00
iicp334ox9a2yi2s14zvfxoiphhto0vu	YTllNWExMzRhMmI4OGZkMTU1NGQyYjhlZjVkNGViY2VmNDg0NmY0OTp7ImNhcnRfaWQiOjQ0Nn0=	2019-07-22 02:06:28.389302+00
g8k3nouzpfa45p5gwjo0je5t8ridp2ag	YjI5Y2Q5OGI2OThmYTdjMDNmMmUwOTgxYjhlOWNiYjFiNjljZjk5ZDp7ImNhcnRfaWQiOjQ0N30=	2019-07-22 05:21:23.482943+00
9q511skf15mqyy4b8vuhvrpo0oabboyn	NWJhNjk3ZGQ5ZDU3MGQyMmE0Y2E4YWI4ODM2ZjIyMzc5MzRmNDRhMTp7ImNhcnRfaWQiOjQ0OH0=	2019-07-22 06:28:08.508197+00
guuwupndprkqb7cnqzlvokwdk06p8qz3	MTBiNDU3ZjZjZTQ4NWI3MjM3MjIyNGIxMGEwNWZhOWMyOGRhN2ViNTp7ImNhcnRfaWQiOjQ0OX0=	2019-07-22 06:41:57.179314+00
015t9q4eisl4unbm8x6zfcb4i5sr5q26	MjkyYmZjZjA0YTM4YzI2N2ExOTg5YjI0ODZmZjMyOGI0YTZlNTdkMTp7ImNhcnRfaWQiOjQ1MH0=	2019-07-22 07:37:02.693981+00
2q68goatbkq121a19z4cnkouqbquvweg	YjRkZjVhODc5NzRjOTIyOWMzOWZhODEyOTc4ZTU5ZjA5NTFjZjdlMjp7ImNhcnRfaWQiOjQ1MX0=	2019-07-22 08:13:16.890836+00
ysoy2n5lgwi7bnosi9mj1lg4o8yh6utc	M2RiMzQ5M2M1MWJiMjk1YTYzNGM4MGRmYTE5ZTNkNmFiNzIyNDI2MDp7ImNhcnRfaWQiOjQ1Mn0=	2019-07-22 08:32:37.902043+00
o421eannlyrkt1k2cidrwd5ga5725zlw	OWEzYTk0YTJjMzcwYWU3Yzc3NTE4MmNiNmU1Y2FlNmQ4YjBmOTQ0MDp7ImNhcnRfaWQiOjQ1M30=	2019-07-22 09:18:41.899064+00
44vf01gco1x9gy8j5h8f8vzvmnp53x7s	YjMwMTJjODIxZTc4MWEwZTUxNzY5NWE1NTlhOTJmNGJkM2YyZDk2OTp7ImNhcnRfaWQiOjQ1NH0=	2019-07-22 09:19:10.628243+00
1nfs08hbs00vdzmn2c9lxc0gml7xju00	ZDMzOTFlYTUzZTk5MWNmZTRiYzYwODY4MWJjYjA4ODhlNmYyM2Y4ZTp7ImNhcnRfaWQiOjQ1NX0=	2019-07-22 09:19:45.710863+00
dp9c3ozjnh60dk4asxxnc7zr4yhxperp	ODhiOWRhZTI1ZWQwZTZkZmIyNTNmMGQ5MjE2OWZjY2YzOTc3MDYwNzp7ImNhcnRfaWQiOjQ1Nn0=	2019-07-22 09:20:01.985463+00
hjp5mtemwfn1x95lcmsy6mhbozzty7os	NzNjZGQ4ZWVhNGMwOTEzYjlkYTE1YWY0MDUwZDk5YmMwYmIxNzYzYTp7ImNhcnRfaWQiOjQ1N30=	2019-07-22 09:20:19.940018+00
xflz5lbslcs6kmsdxu8oies70xlns9ew	ODBmZTU2NDdkZWIzMWZkZmRjNWI2OWI2OTMzMzg3Mjc5NDFmNTc0ZDp7ImNhcnRfaWQiOjQ1OH0=	2019-07-22 09:20:20.775627+00
wv7lsw8e8wh1gvihc1ooars1u2aigz1o	YWYzYTdiNjhmZGUyNDZmZTA4ODYwZWRmOTkxYzBiNGEzYjFjZDA4Nzp7ImNhcnRfaWQiOjQ1OX0=	2019-07-22 09:20:53.594319+00
cpru26hcn0vhuirf2pohbuuspwjbngxv	MDFhMDRkMWIxN2Q4ODU0ZDU2YzZhNTEwNTBiMGZjNjUwMmZkYjVhMjp7ImNhcnRfaWQiOjQ2MH0=	2019-07-22 09:20:54.544465+00
zj2s1cp9lmyxspqkwpkxc9r376d32n9z	NmRiMDM0ODkxZDgxMGNjZTk4MzgxODk3NGViZTk5N2VjMWVmY2FkNTp7ImNhcnRfaWQiOjQ2MX0=	2019-07-22 09:21:24.564752+00
wgmjbz5mimtq4ihwrp0sjhwd1ui50zj7	ZDhmNTlkM2JjNGFhODBjM2NmNDk5ZmM3ODZmNWRkYTdiNmY3MWY0Nzp7ImNhcnRfaWQiOjQ2Mn0=	2019-07-22 09:21:29.361263+00
ikt68qe14gdfo5k8bocwfn5mpy6bhd9o	ZGFmZTA3OTY0MDQ2YTk4NDZhMTg1NWY0MThhMGZiYjgzMmYwNmRiNzp7ImNhcnRfaWQiOjQ2M30=	2019-07-22 09:21:58.28073+00
fof1liz2ye0wh8ku2j21q8syed7886ud	NGU4OWYxNGFmOTM1ZjU3MmYyNzVkZjIxMzNiMDFhNjcxZTY3NzE5NTp7ImNhcnRfaWQiOjQ2NH0=	2019-07-22 09:22:04.58896+00
s2zzer6od7e9jp97oqcubq3v8yo8ksxz	OTVmODFkMzMwNWZmNGQ3MzE1MTFjNDIyMTM4N2QxMjBiZTIyMzExZDp7ImNhcnRfaWQiOjQ2NX0=	2019-07-22 09:22:27.107098+00
ntkpyqa4jf2ekhbqtfkjkqnveocaa15q	YTEzOWVhZTIzNTlmY2Y1NTFkMDBjYWRjMmFjMTkwOGQyNmE1MjVmZDp7ImNhcnRfaWQiOjQ2Nn0=	2019-07-22 09:22:41.203657+00
vssnvq3f7jaic32oa9kx7ygunudxfwc7	MGQwZWE1YTNkM2JmNTBkOTI0YzBkMTczZGJmNzE5N2ZmZWJmZmQ2YTp7ImNhcnRfaWQiOjQ2N30=	2019-07-22 09:22:59.621413+00
ts62kjy9yjjbwe208y30omi7h583e9o1	NWM3NzU5MDljNjAyNmJmZmRmZDJmZjljYzc4ZTdiYjhiNTE1MTIwYzp7ImNhcnRfaWQiOjQ2OH0=	2019-07-22 09:23:22.822995+00
5dw5qmycv87oxus9wj7upykjhpq80oqq	MTJjODI2ZTQ3Y2FkMDM2ZDI0ZjQyZmY5YTJmOTZjYmY3MmEwOTc5YTp7ImNhcnRfaWQiOjQ2OX0=	2019-07-22 09:23:31.733842+00
dqp3t26fyedyn9edksdevqnhls02x8rq	MTMxZWI1MTZkMTQyZWZjYjFhNjNiNmIzNjlmMDk1ZDFiNmVkZGQxMjp7ImNhcnRfaWQiOjQ3MH0=	2019-07-22 09:24:06.533862+00
0pew0rjbtwuil6gp342i0sftc6whpdpx	OGVlMTVjZTQxMmVlZWMxNjI0ODNjMzNkZWVhZmJkMDgwMmM1MjJjYjp7ImNhcnRfaWQiOjQ3MX0=	2019-07-22 09:24:37.986853+00
n8d7z2c5g1jh571hd8gk1xgzn6b3jpxa	YzQyOTUyMTMzNDZmMzk2MDkxMjVjMjFmNTVlMzIxOGI3M2FjM2UwZTp7ImNhcnRfaWQiOjQ3Mn0=	2019-07-22 11:29:05.639878+00
33c71sl2u9pujcaroj2odaq0ez1hzg5m	MGUyMWE1OWUzMmFhMDgwNWFmODVmYjFhMjZkY2NjZTE3YmM2YWI4MDp7ImNhcnRfaWQiOjQ3M30=	2019-07-22 11:29:07.083825+00
5pilhcbdsx00trr1khwv5vwp0mi12kt5	MDYzODU2ZTAyYjkwMDY4MWIzM2YwNjc3MTY1Mjc5MTk5ZTIzYzNjODp7ImNhcnRfaWQiOjQ3NH0=	2019-07-22 15:46:18.024049+00
bpcts7xsr9f8jbglbave5yoy53kph7ds	MzVjOGM1YzQzZWE3Y2JhNGY1MTlhMTZlYzlhNDBkNGQ2ZGM4MjM2OTp7ImNhcnRfaWQiOjQ3NX0=	2019-07-22 16:50:52.349095+00
vehd24bbr14qx6c0gpt1n6fkpasxb958	OGZhMTQ3ZWYzNWRlMjFmNDE3NjI3MmZjMTI2NDJkYWVhZTU5NzVmMTp7ImNhcnRfaWQiOjQ3Nn0=	2019-07-22 16:50:56.634396+00
jhp7oxjbfwrp00qyymvw6x8jcmygkecx	NDY1ZjA2Yjg5ODQ1N2EwZmVhYTQ4YWNkOTRjZDU0NTRjYTBmYjdhZjp7ImNhcnRfaWQiOjQ3N30=	2019-07-22 19:39:02.4463+00
bi9eyzgo3tr4aa03jp7j29kecvrhsueq	ZmMxYWI2NzRkM2Q0MzNlMjc3Yjc5NDk5ZGFlMzBjODlmOTA1NDU2Nzp7ImNhcnRfaWQiOjQ3OH0=	2019-07-22 21:48:18.882101+00
g5zgh2qakivrd728k7zmynxs6h5ud1re	NWU5ZTU2MmRlYjdlODE3MGU3OGM5MDZmYzlkNzkyNjkyY2FlOGVhODp7ImNhcnRfaWQiOjQ3OX0=	2019-07-23 00:39:02.725837+00
6abi6it74as2nbiprcnk35r4nxvb2gnq	OTQ0ZjI1ZmNkYTU5ZTcwZjg0NzU1NzU4NTMzZDM3ZjI1OTU5M2ZkZjp7ImNhcnRfaWQiOjQ4MH0=	2019-07-23 07:28:42.419962+00
ilfka264calo49y563gfb1coniinlljf	ZTMxNmYxMDVhNjA3NTgyODc1YTIwYmQyNzZkMWNiNWQwY2M2ZWNkNDp7ImNhcnRfaWQiOjQ4MX0=	2019-07-23 08:59:35.903003+00
dhozwbst2xnwzc2bly48fp0gmfinz025	ZTMzZWJmYzI1ZDZiMzY2YjVjYmM0NTIxMDY2ZDM3OTM1OGI2Y2JmMTp7ImNhcnRfaWQiOjQ4Mn0=	2019-07-23 14:13:32.414498+00
hpz27lkmkmhsk6khmd42b9xjuqgvu61y	NzA2OTE4ZDIxYmViYTQ5NmVkNGU5ODljMGQwN2IwZThmZWM5NWEwZjp7ImNhcnRfaWQiOjQ4M30=	2019-07-23 19:25:26.081453+00
ia6hpqjxnxf32c3g1eowo7kxz61ptxwi	YmUzYTVjYTA4NTA2Y2ZkNjQ0MWUyZWYwMDM0ZmIyMTEyZGJiMTI4MDp7ImNhcnRfaWQiOjQ4NH0=	2019-07-23 21:16:53.133709+00
0h18m66vec9sis4ouvnx13n9mmcg2v23	ZDViZDRhYmIyYTJmNmYzM2E4MWE0NmM3ZmZmNTdkOTgwYTQxODAwZTp7ImNhcnRfaWQiOjQ4NX0=	2019-07-23 23:51:48.423856+00
2m1zqql49ke0gnrplkjpgdjnnh0vryha	MzgwMzZkODI4NzM1ZjlmYWNmNTRiZTJhM2MzZTUwNGUzNjI5ZjE0NDp7ImNhcnRfaWQiOjQ4Nn0=	2019-07-23 23:51:50.649905+00
m1u26e4hn58gljgdcjlu9am9tjir0zq2	ZTVhOGU4MzkyM2RiNTBlZjNjZDcxNDIyNTRlMzIzMjZlMmY1NzM5Zjp7ImNhcnRfaWQiOjQ4N30=	2019-07-24 05:43:26.444469+00
wmg357rao91apaj8gk2xb2lg8fmoqx68	YTE4YTUwNDA5ZTdjYzJiNDU5ZmEzOTg2Y2I2MWJiYjFmZTliMGU2ZTp7ImNhcnRfaWQiOjQ4OH0=	2019-07-24 16:10:34.637903+00
1a4a26271isbhosd8kq4ubcw2bcziy67	YjhmMDAxYTYxM2U2OTNjMzEzNGYyZDIwMmYwZjBkMWJiODg1OGU0Nzp7ImNhcnRfaWQiOjQ4OX0=	2019-07-24 18:14:55.389644+00
86h7vil2evs0idncmf3dxiqhl2p1rgj9	YzllMzdmYjdmMTg1ZGU0NDZlYjc4YTVkOTVjM2ZhMTZlNDgzOTg4NDp7ImNhcnRfaWQiOjQ5MH0=	2019-07-24 18:57:34.502145+00
b3wr24ye2qhozkrit1o6pj8crn7xzclz	ODVjOGJiZjJlNTJkNDJiMTRiM2NiOGM5ZTdhODQ5MjkxMDhmNDhmOTp7ImNhcnRfaWQiOjQ5MX0=	2019-07-24 18:57:38.134223+00
ot5xo4ibjlphmdgq5xhs05lcguj3h2bs	YjRiZjdjNTI2ZWFlMWYzNDgzODBkMjNjYWUyYTNhODk3MTdmYjY0Njp7ImNhcnRfaWQiOjQ5Mn0=	2019-07-24 20:04:17.365082+00
uhsc834i9gbk3x8ts0u5th2j6u47fkg0	MzczYWZkYjdhN2FlOGVjNzBhZTkwZjI5NmI3M2I3MjE5M2ViNThlNjp7ImNhcnRfaWQiOjQ5M30=	2019-07-24 22:29:52.991401+00
oowpih0mz7438mk1qxfss3z6o2noxq41	NDdhYWU5ZDVhNzY5YjljM2IwNTg2YjgyY2EwNzBkZjU1YTI3ZmU2ZTp7ImNhcnRfaWQiOjQ5NH0=	2019-07-25 05:18:58.66026+00
bmnruj1q6nc0r47syh0p0ukvlev13073	OGEwOTc1MzY1Y2RiZTgzYTc0ZGMzZjdhMWJkY2E2ZDBkZGViZWE5ZTp7ImNhcnRfaWQiOjQ5NX0=	2019-07-25 05:47:21.413294+00
n0ok0jjxvgyz4mysk7bifi8cjbh7tvxl	MjVjMDQ4ZDEyMjI5MTJiZDk3OGFlYTFkMmVmZWEzN2NjMTFkN2EwNzp7ImNhcnRfaWQiOjQ5Nn0=	2019-07-25 05:54:09.991603+00
94j3d662lmsusbhl7p696ujyqka7wsy8	MjA4MzhkN2YxYTNlMzczNTk4NDk1NjNhMzcxZDZiOWQ0OWMxNDliMzp7ImNhcnRfaWQiOjQ5N30=	2019-07-25 06:02:16.870185+00
se8wdia7vmirtiihe5er7bo0378malpg	ODRkNzFjODQ5MWZiN2E2NWRlNzZlYWY5ZjgzNzA1MTlhYjQwYTY2Zjp7ImNhcnRfaWQiOjQ5OH0=	2019-07-25 06:03:50.158452+00
nft6s1k9b0wn5lw64l73esui5onjszyr	ZTExYWQ3MDM0MTVhMzg0ZDZkNDgyYmUwMDE4NjEzNDMyYWYxNjlhYzp7ImNhcnRfaWQiOjQ5OX0=	2019-07-25 06:04:05.420378+00
fjs7ad92xyf24klp8c9aaxewuwgow43v	MjA3MjllZjQwMTM4ODBkYzljNGY2NjZlNmRiMzRlYjFiZWE2ZTIxZjp7ImNhcnRfaWQiOjUwMH0=	2019-07-25 06:05:07.874417+00
7cnqqmki0tu8n7jlf4pwti51ukchvnwn	ZjU4MWYwNzA2ZjY3NmEzZGUxN2FkYWEzNjMwMWY4MjhiNzhkOTY4NTp7ImNhcnRfaWQiOjUwMX0=	2019-07-25 06:10:13.844003+00
2tvbuxc4nely5t8euhpa0381xxs6hjcq	ZDY4NDQ3ZjQ3ZDAxZGM0MjIyZjhiMDRmNDVhZDRlNDVlNzM1MWZmOTp7ImNhcnRfaWQiOjUwMn0=	2019-07-25 06:10:28.703002+00
vkcy0hlczuw3srb5do3noq4dqglve6c4	ZmY4NjdiNTdhMTY1NTVlYjcwM2M4ZGU5MmY4ZTcwMWI5N2YyMzc2ZTp7ImNhcnRfaWQiOjUwM30=	2019-07-25 06:13:24.122668+00
oyfmkpj5c76ivjc80q2eefbe8iq6cg9a	YzdkYWQ1MzgxNmE3Y2ZkMTc3MGU4YzQ4YmE2YTRmNDE4ZWViZTA3YTp7ImNhcnRfaWQiOjUwNH0=	2019-07-25 06:15:55.160255+00
p8829nmg0aqgyjinpr4km661f2b8h6tz	ZWUxYjJiMGFlN2RhNzkzYTVkMTBiNzE3MWFmMTJjMDk2Y2QxN2NiZjp7ImNhcnRfaWQiOjUwNX0=	2019-07-25 06:19:14.389236+00
899u73eagsy28dy474bltvg1xs64t2bs	MzE1ZjRhMDAzYWMyN2M3ZDhkODQ3NTJkNDFmM2FkMjE5YjUwYWViMzp7ImNhcnRfaWQiOjUwNn0=	2019-07-25 06:22:41.695327+00
f649oyz9nb6kwn5kv2qerexn16auxvm2	YTE4NmFhOTNkOWE3YzAwYjk5OWE3MDU4ZmNjNDNhY2ZhY2JmYzgzMzp7ImNhcnRfaWQiOjUwN30=	2019-07-25 06:23:28.596495+00
etgwrn0s5u8s3hosaw7ga2qka4p44sqp	YzcxZDlhYzVkMDg5ZGE2N2VlYWYzMzQwNDBlNmM2MzU1NWM1ZGRlZjp7ImNhcnRfaWQiOjUwOH0=	2019-07-25 06:28:40.198383+00
zibqpd0ya4ddxui9yi602o55m43g9l23	ZWU4ZTQ2MmY2M2IzZGE5OGEwZTYwZmZmYTdiM2IwZmY1OGM2OGI3NTp7ImNhcnRfaWQiOjUwOX0=	2019-07-25 06:34:53.203673+00
v0hsglqbl0v69vd8hotp71f945c64dg5	ZjNlZWIxMDk0NTdlMWVkOWZjNmQ3NDhjZWVmNWQ1OTkzYjI2MzA2Mzp7ImNhcnRfaWQiOjUxMH0=	2019-07-25 06:42:20.397593+00
4e2qguxo9a8dydu0zwhhx9cdvrow6zcn	YzMzYjZjMjIzYzkyMjNiN2FjYzI0N2ZmZGMyY2MyNjYxYzM5ZTc0Mzp7ImNhcnRfaWQiOjUxMX0=	2019-07-25 06:42:40.385785+00
lqh56qrt1bjnln2vvzzhts94g3dh5ept	Y2I5YWVhOGNiYmY5ZGE2ZGZiZjI3ZGJiM2VlMTEzZGFlNjNiZTlkMjp7ImNhcnRfaWQiOjUxMn0=	2019-07-25 06:42:47.030139+00
9coolg6tb8d914128uybgj56whpknwa8	NGM5YzAzM2QxMGU1ZmRmMDdhODQ1NjhiNmMzNzM0NGMyZDlkNGQxMzp7ImNhcnRfaWQiOjUxM30=	2019-07-25 06:42:50.735708+00
dvpo5j5rtf06v9napj67yn12418l9dol	NzE0ZWZjYjczZTljY2EzZmRhZjU2ODFmMDA0YWU2MjI4YWI1YWYzYzp7ImNhcnRfaWQiOjUxNH0=	2019-07-25 06:42:54.707496+00
db8a87fbpqy47yiea7ivr7fskpyvpxdi	MGE1ZTRiNTUwYzI2NDFiZjc4ZjFlNDRkZGI5M2JlMTRmM2Q5ZDhhZjp7ImNhcnRfaWQiOjUxNX0=	2019-07-25 06:42:56.776949+00
m5s0ooi0128dop1y56g6grllzdf0xlpu	ODI5OGNiNDM4NmY2MjViMjg4Nzk5ODA2ODcxMWE2ODExMTQ1MWJjODp7ImNhcnRfaWQiOjUxNn0=	2019-07-25 06:42:59.096648+00
3pfungdugogqjdycla89sgwz8433e32k	NWNjZTE0MzY4NmQ3MDM4OWYxODYzNDY4MjM0MDkyZGVlMDZhMzMzMDp7ImNhcnRfaWQiOjUxN30=	2019-07-25 06:43:01.877255+00
zaktlt55vw6xjxq77q3u94vk5on42xuy	ZTkzNThhMDY4OTNmMWMzZDcyM2Q2YTJiY2MyMmYwNGI1NjIyZGEyZTp7ImNhcnRfaWQiOjUxOH0=	2019-07-25 06:43:07.11131+00
eus0wpx7lndxrmbejdpcp5itnykzs0zd	ZmYzNjU0YzJjYTBhM2M4Yjg2MWQ1ZTYyZDEyZmQ5NDVmOWQwYzQ0Mjp7ImNhcnRfaWQiOjUxOX0=	2019-07-25 06:43:08.419453+00
56mfdanmcdekij2qb0ltysmzuudjxkcu	M2RiZGZmNGQ2ZWMzNWU4NmZhMjAwZmMxNWU2NjViOTZhNmQ0MjY2ZDp7ImNhcnRfaWQiOjUyMH0=	2019-07-25 06:43:11.482268+00
gdvaorg5nr732lsylii92ij95oaxpmti	OTRkZWEyNTE0ZjRlYWQzZjIzZTdkZTQxMDBjYTZiNzY1NmYxZDI4ODp7ImNhcnRfaWQiOjUyMX0=	2019-07-25 06:43:14.387663+00
04vynatzxseor56jqtwibs2p2rgjiiiq	MjM4MzczY2FkY2ZiZDU4ZDMxNmI3YzY2MTFkZGY3Y2JkNThiOTZkOTp7ImNhcnRfaWQiOjUyMn0=	2019-07-25 06:43:17.38689+00
haa6gmvw5dalaoidm3u2u69dsvrajvxz	NTc2YzI0OTIyNmVjNjg3OTUzMGQ1ODhlODA5NzI4YmM1YTVlOTIwYzp7ImNhcnRfaWQiOjUyM30=	2019-07-25 06:43:20.273755+00
m2it48rya8d3wtdnoz7kx5t2aocqr0ln	NzAxYTE4MDdmMThkYzZlODQwMDIwMDVkZWUzOTRiMzc4MDkwYjk3Njp7ImNhcnRfaWQiOjUyNH0=	2019-07-25 06:43:23.273145+00
0gmul4veq1tlkvh8rk0feidja09j8yts	OGQ0MmJmMTVhY2JjZmMxMzdmZmI2ZWFjNjE1YTdjMmU2Zjg1Y2ZjODp7ImNhcnRfaWQiOjUyNX0=	2019-07-25 06:43:26.188057+00
mlmmdgijkgfz1q3feu7t9wys73k5zvk3	M2I3ZTQwNzllNWIzNTMxYzM5M2ZhZTkyNGE1N2YzMDA1MzBlZmE0Mjp7ImNhcnRfaWQiOjUyNn0=	2019-07-25 06:43:29.103554+00
0rypv013cgadia24vbugrqskqw2fudtl	ZTU5YWZmYzQzNzY4NmJmMzliMDUzZTE4NDZlNmFhYjZjMDhhYmJjMjp7ImNhcnRfaWQiOjUyN30=	2019-07-25 06:43:33.056119+00
3lzruiukb6nlu2r6tp6685qi6wnyb3iq	YzY4MDcwMDAzZTllYzkxZmRlYmI5ZWNiYzgzN2Q1YmRhMTc4YjI5NDp7ImNhcnRfaWQiOjUyOH0=	2019-07-25 06:43:35.629519+00
jkx80gr6hfeq6t6v9w5u56rb9b2rbczp	YzNjMGE1YmQxNzZhZmRmZjg5ZGIyMzNkZTVlMGFlMjYyNmViMTc0MDp7ImNhcnRfaWQiOjUyOX0=	2019-07-25 06:43:41.181473+00
znuk2aub7riu7sbkh67he7l0bwjtwbmo	Yjk3OGRlZDYyOTM4NGNjMWIxODUwOTZjNWJjMjAxZDdiMDMxZGExMTp7ImNhcnRfaWQiOjUzMH0=	2019-07-25 06:43:41.572308+00
u8t3qijuqfrt05u0j8szn7b2d9sj675q	MzNmYTJmOWM5NGU3M2VhMzkzYzgyNGNjMzMwODRlYjgwYzEzNjFmYTp7ImNhcnRfaWQiOjUzMX0=	2019-07-25 06:43:41.879863+00
eiuu8hytrlyk7824l1j2lps727hzhn5h	ZDZjNDkzZDJmNjliYjJjODIzYzQ5OTZhYWMyNTEwZTJlYTRjYjFiYjp7ImNhcnRfaWQiOjUzMn0=	2019-07-25 06:43:42.413397+00
he152z55x2k0p96an6s4q06j230zyept	OGNkNDZiMDI3M2Y1OTM5NDIxODU5ZDRkNjg3MjM1NTYxZWI0NjlhYzp7ImNhcnRfaWQiOjUzM30=	2019-07-25 06:43:42.773327+00
rynihsxy0944rhtjwljd6tykp30br0fe	M2VhMDU1ODA3NzczNTY0ZWEwZDcwOGFiN2RmY2ZlNWQ1MTg4MDBkMDp7ImNhcnRfaWQiOjUzNH0=	2019-07-25 06:43:43.279652+00
zc0ptr7rq4glnvoe64rpi00q8uye56en	ZGMzNGJlNDk1MmRkMGMzMjdkNzFiMTJjZGJkNWFiNmU4MzYwNzMyODp7ImNhcnRfaWQiOjUzNX0=	2019-07-25 06:43:43.48962+00
6myn6c49kwrhcy8bivf7az63fshgqrcr	N2Y4NTRjZDQ4ZWFjMzE3MTIxM2M4YzQzYzcyMDMxZWM0YmEwZTQ5ODp7ImNhcnRfaWQiOjUzNn0=	2019-07-25 06:43:43.997077+00
hti0k2cay9eb1firhdd19x31nm3bnthx	NGQ2NjQ2ZDRhMmE2ZmI4MjA3MDU4NjQ0YzI0ZDcyYTE3NzA4ZThhMjp7ImNhcnRfaWQiOjUzN30=	2019-07-25 06:43:44.295339+00
wyuu5ul1bbltscc6d06y3t3p3eb4ysz1	NDcwMDQzZWMyZjJhMDQ2YmQ4ZTJlNjZjYTg2MTU1OWE1NDQ1YmFmZDp7ImNhcnRfaWQiOjUzOH0=	2019-07-25 06:43:44.779479+00
ya1fxey7pvnpob2z8r9rfj36ait03zw4	OGM2NmUyYWZiY2E2ZjQ4N2VhNWRjMGI3NTUyYjk2ZWI5OTFiM2JmNjp7ImNhcnRfaWQiOjUzOX0=	2019-07-25 06:43:45.08225+00
7twf93ciahhm3y21sebnahis9l4202qa	ODM3ZmJiNzFhNTNhNWZkOTA1MGI4ZTljYTUwNzE3MzRhOGI2MmFkNTp7ImNhcnRfaWQiOjU0MH0=	2019-07-25 06:43:45.480758+00
80boh4f1sckxn7xbnt7ilobkns4exa66	YWQzM2Y2M2ZhY2EzNzk2MmE4ODk1NmRiNmYwZTE0ODhhMjI0MzcxODp7ImNhcnRfaWQiOjU0MX0=	2019-07-25 06:43:45.981731+00
14ntl8839v0fdhc2w2fjkatg030xmu0q	NmI2OTgzYzI4ZjliMzEzMDBiNmZiYjYyYjExMzM3NDU0Yzc3MmQ2Nzp7ImNhcnRfaWQiOjU0Mn0=	2019-07-25 06:43:46.278039+00
0eaj3rw9pqvyc2vq98agfful9stbw6gw	ZTM1Mjg1NzYwMWY0YWE0MzQ4ZjFiODMyOTg3YTM2NTEzZThiM2YzYjp7ImNhcnRfaWQiOjU0M30=	2019-07-25 06:43:46.693426+00
31r9vagzb8r0y3y6zj2ow4c3spvcu660	ZTA0YTMxMGIzNmIwNDBkNGRhMWI0YmM4MDQzZmJiNGVjNDJiMzJjOTp7ImNhcnRfaWQiOjU0NH0=	2019-07-25 06:43:47.698488+00
pzs7x9b43j4gdrwqkcpixy8lze4eu8wd	NWIxMGNlMjQ3ZWVhOGJmM2Q5YjVmZmFmZjIwMjE0ODJkMDFjMTc2Yzp7ImNhcnRfaWQiOjU0NX0=	2019-07-25 06:43:47.891913+00
01x50d34mw249hrd96cejlqjavo95hmp	NDZlMDM4NTE2N2VlMjAxMGZmZGU2MmQ5M2EwY2Q3ZGIyYjNkODA0ODp7ImNhcnRfaWQiOjU0Nn0=	2019-07-25 06:43:48.676235+00
2q1lm9v3ykdkxd7r9o4izndeqeg8esad	MWE2NzhjYzg0NDRlMzU5ZmZhMzdlODBiMTdlMDMxNmI3ZTk3ZjdjYjp7ImNhcnRfaWQiOjU0N30=	2019-07-25 06:44:48.553118+00
o2oypqcti91b287wdnlveafm3fzo2u1d	MzJjM2UzZTE1ODJkYjYwNTMxZGNhYWI4NzA0NmYyMjA3ODc2MzgyNzp7ImNhcnRfaWQiOjU0OH0=	2019-07-25 06:45:11.106896+00
42o2icik7bxpsv5jhr5irbkmd20wclrt	ZTIzODE4Yzc5OTZmNTY4N2M0MDViNTliZGQyYzljNGZjZWRhODllODp7ImNhcnRfaWQiOjU0OX0=	2019-07-25 06:45:21.653442+00
yhacpwlevhvpg5suztqp358xg3rszw9b	MWVhNmUwNGQ4MGZjYmMyMzE4YmEwNDU2ZTlhM2VjZjRiOGM4MWRlMTp7ImNhcnRfaWQiOjU1MH0=	2019-07-25 06:45:31.993909+00
4oyid9dw67op2ehkmd9b97idr9t6z6rp	NDIwMTk4NTI3MDBhNDk1MjEzNWMzZDIyZTVhZWM4ZjdlZTcwNGM2NTp7ImNhcnRfaWQiOjU1MX0=	2019-07-25 06:45:42.205245+00
jqfvwged6yqyn3lp1eerwj2hqc38hrn1	NzA1NDcxMzg0MDI0MGZlNTE5ODYyY2M2N2NjYzJiMTQwMDZkMDI2OTp7ImNhcnRfaWQiOjU1Mn0=	2019-07-25 06:45:52.531104+00
6k71s086k4vd4nc5nea6fvw75y8fr33o	NGM0ZTBiMzQ4MGVlNDc5ZGUzZTViMzk2NTRiZDE5ZDAwMDVhYWY5ZTp7ImNhcnRfaWQiOjU1M30=	2019-07-25 06:46:01.155294+00
icm7g2xtfst1enx6d16dj6by6fuzrv2g	NTc3ODcxZWUwMmE5ZmUxODRjYWY3ZTcyNWZkODM5MjUxZTBlZTIyZjp7ImNhcnRfaWQiOjU1NH0=	2019-07-25 06:46:09.616995+00
zrux7l052xe7qe5qaoqueieugx4p721n	NTVmNzUyMWVkZGVlNDljMjQ3ZTFlZmM5MmI1NjI4Y2UxNDYyMjQxMjp7ImNhcnRfaWQiOjU1NX0=	2019-07-25 06:46:17.850161+00
d9s4syf2cmh8uln0jykjg414qy9mvc04	MjQ1YWUyNmViYThiOGVlZDgzMWQxODJmYjU2NWE1Mzc4MTMxYjc5MDp7ImNhcnRfaWQiOjU1Nn0=	2019-07-25 06:46:25.979388+00
slgl3fjgbxxzp1trg4d4z6x4j6xy6tto	MzU5ODljNzZmMmVjZDU3ZGFkOTNiMWIyMGIyNzRjMjhjNGY1YTliNzp7ImNhcnRfaWQiOjU1N30=	2019-07-25 06:46:34.153844+00
8iogmp64i5bo7oabgtax7ewn9odci2kh	NjQzOTY3MThmNDQ0ODFhOTA2MDc2ZjFjZTc0Y2U5YzZkZmUyMjhiNDp7ImNhcnRfaWQiOjU1OH0=	2019-07-25 06:46:42.344741+00
8aiy0kvzbfqfzoj4lsb6adp1281kao8o	YWFlNTBlODc0YjJmNDFhZDQyYjliMzA3MjlkYzNhOGMxMjY2YmEwMTp7ImNhcnRfaWQiOjU1OX0=	2019-07-25 06:46:50.514595+00
jihcn56wf1pqusbaoz604fvcbc0p30xi	OGNhYzllZWEyNDMwZTZhZTFhNjk2NWE2YTVkMjZhOWNlMDJkNzA4NDp7ImNhcnRfaWQiOjU2MH0=	2019-07-25 06:46:58.763948+00
vyhvkpcyx557ty4p0w0ae8cq31q7oepx	MDI0ZmFmMjM5YzVhYjc2YTg0ZWZjOTU0OTU1ZDMxNDU4ODA1OWYwMjp7ImNhcnRfaWQiOjU2MX0=	2019-07-25 06:47:06.135439+00
pg65xwdqmzp0q9btnmmlk15d5wpa9z2o	Njc5ZDg2NDcyNzI4ZGEyYzZhYTQxMTYzNzg4MjE0YzkzNDcxNjQ0Yjp7ImNhcnRfaWQiOjU2Mn0=	2019-07-25 06:47:13.769938+00
ib7yxxsibsb1rt4jhj895vkcgfy9l00r	YjZiMDEzZmQ0NTk1ZmM0NGMzY2E1MWM1YmVjNTNkZjQ2ZmMzZDAwZTp7ImNhcnRfaWQiOjU2M30=	2019-07-25 06:47:21.376047+00
r0e3xy0ucg5zygjl960ewk0ievkhmi18	Yzk5ODM2NzRiNTVkMTZjNjczNjQ4Y2E3OThkZDczOGFjN2YyYWJmYjp7ImNhcnRfaWQiOjU2NH0=	2019-07-25 06:47:46.157614+00
s6lve3ej22i8n4ypr8stgbmen4a37t8r	MWM2NTA5NGI2OTg0MzFjYzQzY2YzN2ViOWU1Yjg5ODVjZDA0NzEyNjp7ImNhcnRfaWQiOjU2NX0=	2019-07-25 06:47:47.842644+00
s8yqnh14oaypgzlwswduus9eorrk4412	OGNkMzgyNjViZTkzMWQ2OGQ5MTY0NDcyYTJmZjIwNzVjY2U5MzdiZDp7ImNhcnRfaWQiOjU2Nn0=	2019-07-25 06:47:59.40828+00
jhe4el2j7trkgzzw17pdo1bxuecooot9	ZjVmN2RmYjc3YmU3ZWI0MjA2NTFjYTIwNDlmNTZlNDFiZTY2NTJhNzp7ImNhcnRfaWQiOjU2N30=	2019-07-25 06:48:01.738171+00
0xwfg7e1fll0crl5i9smtuogups066pd	N2Q5YmYzODc4MGZkNDZlZmE3ZjAxNjNlMmM1Y2EwZTc0ZmQzMmM3OTp7ImNhcnRfaWQiOjU2OH0=	2019-07-25 06:48:04.049928+00
k4ekyyrizeyb8izel8udkm3reduawgpg	OGY3NzJjMmZjZDgwYmM5ZjNkMDQ4NTkyYmFkMDljZjkxMGQ2NDgyZDp7ImNhcnRfaWQiOjU2OX0=	2019-07-25 06:48:06.375096+00
0p6q8t1qptude53urq5xsb8gly0scwo7	ZjA4OTZhMjFmMGQwNDljNzAzZjdlOGNmYzVkNDJkYjQ2ZmRkNTRlNjp7ImNhcnRfaWQiOjU3MH0=	2019-07-25 06:48:08.691665+00
1ridwp8tjpnk61sopdmg6v6y14oupwdu	YmVmMWQyNjdiN2U5MzliYzFkNTY3OWJhZDAyZDM5NmM4N2RiN2Y3ZDp7ImNhcnRfaWQiOjU3MX0=	2019-07-25 06:48:11.029436+00
y7ejyyeq478vf2ga6clzfotb304dqeyx	MjUxZWVmZWQ1ZTE5NjMxODk3MjZmMTVjYzg1ODAwYmI3ZTJmMjc4Nzp7ImNhcnRfaWQiOjU3Mn0=	2019-07-25 06:48:13.337811+00
eorjavbcrr8ug0bsozdzkg1ziueaqxvl	ODI0ZGFmMjU0ODZkZjJkZjc2NDliNGZmMjQ0YzJjMDgxZDFkY2ZmZTp7ImNhcnRfaWQiOjU3M30=	2019-07-25 06:48:15.680934+00
ehqr0qwew7auumeuvf2mj2t23ypjlhyb	ZmViNTdmNTBlZGFiNTdmYmE2NjAzODU5N2RlZmE1MzRiMmY2YTUyZDp7ImNhcnRfaWQiOjU3NH0=	2019-07-25 06:48:18.009662+00
nvpirufhqlb6d5pxrtwh3jznoan6125c	OGQxY2FjY2VlNGJlOGRjN2RmY2RmOTg0N2RhYjM0MjU3YjYxZTY3Mzp7ImNhcnRfaWQiOjU3NX0=	2019-07-25 06:48:20.337821+00
bdqqoggl3zyxgv7uhzckqhd3bn7omnqg	YWEwMzViOGRlYWM4NzczZDkxZjA5MmIwOTcwY2Y4ODhlM2IxNzM2MDp7ImNhcnRfaWQiOjU3Nn0=	2019-07-25 06:48:22.671698+00
t9i3wf1ln5bupjs4nr1lhitvgessbqfr	Yjc5NjViMDEwNjNiYWVmZjU1NGRkODNhYTliMzJkMjdiYzg4YWZkNjp7ImNhcnRfaWQiOjU3N30=	2019-07-25 06:48:25.021411+00
34l8ct76ehb8tmsvqxogstviftae9xan	M2NmNTYxNGYwZjRmZTk5YjgwNDllYTgyNDA5MzhkZWExZmY0ZDhlMzp7ImNhcnRfaWQiOjU3OH0=	2019-07-25 06:48:27.398069+00
jsx5kcwcjuotz3slo649w4t77jg00rm2	ZDU5Y2RiNGY0MjEzNjhmM2FhY2FkNDFhY2IyNWY3NmFlYmI5ZjVmYzp7ImNhcnRfaWQiOjU3OX0=	2019-07-25 06:48:29.745109+00
mc3aip3qzgfux7bfxyryme5qnvdqz6es	ODFlNTRhMTE3OTY0YWNjMmU1ODdiNjNkNDhlNjU2ZWJjZmM4MGJkYTp7ImNhcnRfaWQiOjU4MH0=	2019-07-25 06:48:32.232382+00
c1mnr0lveeff38jpcwn9wir5zisk1thw	NzdiMmE3OWRkYjcxNDE2NTliMmZhMTA3ODRjYjk3OGJiYTBhYTI0Mzp7ImNhcnRfaWQiOjU4MX0=	2019-07-25 06:58:03.095758+00
2iedux2fy5tw62xohbq0281pqieh81af	MjA0MWFjOTY1MGY5NGI2ZWIwYWZjNWQyMzU2ZWU1ZTU1NmM1Mzk0Njp7ImNhcnRfaWQiOjU4Mn0=	2019-07-25 08:01:56.995226+00
cvx5u2iu1nukdyysulhcd5il0o2dphs7	Y2E3M2QwNTczNDYzOTQzZWY3YmYzZGQzODc1YmQ3MTRkOGNjMWIyZTp7ImNhcnRfaWQiOjU4M30=	2019-07-25 08:02:31.692257+00
qcxvtloezzdh0ov43l5xzqg5kcbyk59u	MDIzMzc5MzczMTkxOThiZGY4NTZiOGUzNzMwMzRiYzMwMjQwMTllNzp7ImNhcnRfaWQiOjU4NH0=	2019-07-25 09:31:46.157326+00
tjwp49xrk8w1am42q6ir017hn46bbbr4	OGE2MTBlYzkwY2M2MDgyNDJlN2RhZGVmYTNiOWVlMTI4ZTYyOTI1Nzp7ImNhcnRfaWQiOjU4NX0=	2019-07-25 11:02:24.041902+00
lcm1yg9hyokbhe1mcn0mnh8b8bmwptef	ZDM4YmMzMDJiOTU5MGY3YzdiZjZhZDEwMzEzZDAyYjAwMmUwNmMwNDp7ImNhcnRfaWQiOjU4Nn0=	2019-07-25 12:47:50.883743+00
yhyilg2wgzz4q18aw83w4odzoau5p3fe	Zjk1ZmE5ODEzZThmZGY2MTM2YmE5MjBhY2NiMDMzZjcxNjU1MmFmYTp7ImNhcnRfaWQiOjU4N30=	2019-07-25 14:16:44.135705+00
alcaaclplos9be0wlhw9b71pqm3kdj1f	YmYxNDVjNjVlZWVkNjM1NzRiNjNhZGViMmQ1YWE2NTY1NWY4YWNjZjp7ImNhcnRfaWQiOjU4OH0=	2019-07-25 15:27:43.390862+00
gjplzu2zkuc2ju6auj8suh8683rz876h	Y2Q4OGY2ZWZkZjQzNGQ4ZDNiOTk1MzI2NGFlZTBjMjkwNzdkZDZlMjp7ImNhcnRfaWQiOjU4OX0=	2019-07-25 15:46:12.489463+00
zf4yh0y0j7be41q2jpksq668cioyhxe6	NjJjNDEwYWViMzMzNDI0ZTI3ZWJkZmUyNGZiMGUxNzI1MWExMWZiNjp7ImNhcnRfaWQiOjU5MH0=	2019-07-25 18:29:40.884772+00
tdsshjhvhj3ry0rc4h77w1rt3vsw5vav	ODAyZWI2ZTJhNzFmMDlkYTI4NDY5OWZlOWJiZjFkMjA1Y2QzODQyMjp7ImNhcnRfaWQiOjU5MX0=	2019-07-25 20:12:46.620063+00
4imabgp7r5iv0atotwbqux0r2sljb3zz	ZmRkM2I0ODVkN2NmMzJhZTUwMTc5NjQ4NjA3ZGIzNWQwZTI5MWMxZTp7ImNhcnRfaWQiOjU5Mn0=	2019-07-25 20:12:46.668881+00
jwvbfqbksxwz1zizdd8p9lsdk3hy3x9a	MWViMTg4YWE5NzNiNDAxZTE5Y2JhNTNiN2M2ODU2Y2M1OTk0YTI2ZTp7ImNhcnRfaWQiOjU5M30=	2019-07-25 21:10:15.138069+00
5o6pew7z6o9kphxzlwf71mttbpobdzww	NjU0OTcwNzQ3N2FmMjAxNzRkYTkyODVmMmIxZWJhNjc0ODFmMWI4ZDp7ImNhcnRfaWQiOjU5NH0=	2019-07-25 21:50:36.059003+00
4zirndooq47l0ly5rejz1xdjuw8hxeyr	MWMzMDMwMGRlNjNiMjUyN2M4ODZmYWVjMDhkZWYwMzZmZjdmYTYzZjp7ImNhcnRfaWQiOjU5NX0=	2019-07-25 21:50:36.22526+00
pad1w3we2a79w0uye5t94fqmxkaxhe4n	MDJmYTdlYjIyOTRlNzhlMzE2MWMzODgzNjA4MTI1M2Y2MmVmZWRjZTp7ImNhcnRfaWQiOjU5Nn0=	2019-07-25 23:15:00.681511+00
zq0y25dz31pqt1ckbya9cw869eqyq3j6	Y2Q0YWJlZDU1YWFiMWQ0YWRlNzYwZGQ3MWY1OTM4OWY5ZmQwMTJlMzp7ImNhcnRfaWQiOjU5N30=	2019-07-26 00:09:32.675036+00
74e67x8mhn2vxyrbpp2tj510a0g1ro0a	Nzg2ZTI2YTFiMjQ5MDAxMjhiM2VlNWJjNWE4M2E3NjJiMWFhMGRmODp7ImNhcnRfaWQiOjU5OH0=	2019-07-26 06:08:54.969033+00
jrk94fvfyhxtkldowt6a8phk6jqrea7f	YTU3NmUyZjNkNWMwNjA1MWRiZGY2NzcwMGY2Yzc0YjBmMGEzNjAyMzp7ImNhcnRfaWQiOjU5OX0=	2019-07-26 06:10:05.388451+00
ja6wt97n9els28f0wqj6n7xgz7yb1074	YzBiYmZhMGY4ODFhMWE3ZDVkZGY0MjgwYTU3MTBkMzI4OWFmNjcwZDp7ImNhcnRfaWQiOjYwMH0=	2019-07-26 07:02:18.397136+00
ifepw225ybvoty08pfpysm54dqwp5u83	NDhlZTZiNDA2MWFjZWVkMjc0Y2Q5ZTUzZDA5MTEzYmYzYTg5ZjU2MTp7ImNhcnRfaWQiOjYwMX0=	2019-07-26 09:37:27.49677+00
kp1m05wjcf9wrwpchdmn87hws0k0jvq5	MDQ1NThiYmM5YjVhNjM1NTA1NWQ3YzQ4Y2JmZjFlNWU0ZDdkNTlmMDp7ImNhcnRfaWQiOjYwMn0=	2019-07-26 11:21:49.155134+00
ivhpt7ftxn8pd0j8rwe69l36j0fxoaww	ZTg3OTk1ODEyODgzZWM4MGM4ZmE1ZmM3YTljMDljMjcwOWU2YTc4YTp7ImNhcnRfaWQiOjYwM30=	2019-07-26 11:51:30.410535+00
sm3bzlfhfmfm8ps6db8vft1w8tzvm5q3	NTU0ZjJjM2M1YzZlMmM3MWI0ZDQ3NTlmMDA2YjFmMGE5Mzk2MzI5MDp7ImNhcnRfaWQiOjYwNH0=	2019-07-26 12:14:15.597709+00
q1ja1df45r8qpz572aiwpsjp1ixtly0v	OTdkOGMzYzVhNjcyNjk4YTEyOTUxYjliNDdkMjEwNjNjNTgwNjFkNDp7ImNhcnRfaWQiOjYwNX0=	2019-07-26 12:31:42.962084+00
mpp99u6k6oa5c3axaa7vwb60lekngq85	NTIxY2ViNGUyZTEzMGQ3ZDFiNDg3MzEwOWM3OWNhZjA1M2NjNWJlMjp7ImNhcnRfaWQiOjYwNn0=	2019-07-26 12:41:47.612445+00
4is00wqlnej4tqqdnyfek6fs5ayju6er	NjdjODVkODExYTlmZTIzOTFjZGY2ZjNkZmRiNTA1ZDcwNzJmMDQ4ZDp7ImNhcnRfaWQiOjYwN30=	2019-07-26 13:12:02.481428+00
nhhjb5ucfdsewgzl7xvnd6hhnh68cbsy	YjQ0NDYwMTNjNGNkOTMzNjhiYmMzYjVlZDJkZTU0YTY0N2FjYWM4MTp7ImNhcnRfaWQiOjYwOH0=	2019-07-26 13:22:48.05568+00
5gv1b9m5dcgn29l6xipjeuaoess2qtnc	NzYxOGUxNDJhNTNjY2NiMWRkNjc0YTI3YWNkYWM0NzA2OWIxZWY3OTp7ImNhcnRfaWQiOjYwOX0=	2019-07-26 14:43:35.971286+00
vetrbdn0q0hv6ki38b6goio4msyzvykr	MTc4OWIwN2FjY2NiZWM5MTg3NGI4NGQ2N2ViZDg1NDcyNGZmMDM2NDp7ImNhcnRfaWQiOjYxMH0=	2019-07-26 15:19:02.24579+00
dqh6bjx557aoxfe3xbr7y5h7hwnizhwq	NDdjODY0ODI3ZjNlZTg5YzgzOGM3OGMxZTYzZWE4MDBlYjk3OTZkMjp7ImNhcnRfaWQiOjYxMX0=	2019-07-27 05:31:33.386188+00
f2zwiwno4mgg251eildr45v8lwfvchez	ZmI3MDc0OTY1MjlmYmQxMzRiYWIxMWIzYTQ1NDBhOWQ3NTExNDUyODp7ImNhcnRfaWQiOjYxMn0=	2019-07-27 07:20:33.30398+00
k6ollstqygfgw0z9dgqn49nvpeaf95t9	NTgyYmYzNDI5YTg5Zjc2NWQxY2U0NmY5ODcxYTRiMDY0OThhZmEyNTp7ImNhcnRfaWQiOjYxM30=	2019-07-27 08:37:03.768144+00
3gg6n237o7f3uunnp4yk92eaz8mtq3e5	NDQ4OTExZGM5M2YxY2M4Yzc3OGNlYzIyNzVjZWUzOGU4MDRhNDMwZTp7ImNhcnRfaWQiOjYxNH0=	2019-07-27 08:56:05.141957+00
cpbxpnqtfj0k0r4w3d4maxev6zl2thnx	ODg1M2M1OTBmN2I2YjEzOTM0MWY0NjI2MDliYTI2ZDY5ODk5MWRjMDp7ImNhcnRfaWQiOjYxNX0=	2019-07-27 14:05:39.743629+00
ifn3yo4ar0o66dgruz12lv2p9erbpjz9	YTA3NmExMGJmODM4NWM5Njk1MzI5ZmE3YmEwNmE3ODMwNzJhNDY0NDp7ImNhcnRfaWQiOjYxNn0=	2019-07-27 14:05:39.789993+00
8k0gzac7jadw9a90lzvz2c39r3eb07ta	NWFhYWFjMjQxZGE5MzMxMmVjODdiYTI5NzlmMjFmMWMzZTkzYzI4Njp7ImNhcnRfaWQiOjYxN30=	2019-07-27 14:05:40.731276+00
iktgscbjc6y302qyebdvpx7bfs9edkep	ZmYxOWJjMWYwZWVhMGQ3NzVlM2E2OGVjYWI5YTg5M2UzMzExM2Y4OTp7ImNhcnRfaWQiOjYxOH0=	2019-07-27 14:05:40.784493+00
r7zy3mspv4kuhow873ppdvwuarphlu1y	NGEzODg5NjNhYjAwN2Y2MWJkMmFlMGM1OWViNjI1NjBlYjRjZDgyZDp7ImNhcnRfaWQiOjYxOX0=	2019-07-27 14:05:54.39626+00
po6ape715hut4t8smjvqhrsy28kxcsdi	NTEyZGUxZGJkODdjMDY2MWE1MzIxNmQ2YzE3ZjNlZTljM2MyZmIwNzp7ImNhcnRfaWQiOjYyMH0=	2019-07-27 14:05:54.735338+00
6p7kkreylnx7xn1nyz96hs2z42wu4bwv	ZWQ3MGRiMGE4Nzg4ZGZjZTI3NTgwZDczNzg2NWZlZGViYjQ1YzQ5ZDp7ImNhcnRfaWQiOjYyMX0=	2019-07-27 14:06:02.125327+00
qjsmipbio1ewhlhd9qa2qx34iua7a16a	NTM4YmEyZWJmZjJjZTQ3OGUxNWI0NjQ3YWYwMTk3ZjBjOTAzYjM1MTp7ImNhcnRfaWQiOjYyMn0=	2019-07-27 14:06:02.335388+00
8r3b0au39pq45mpge0q2ba9ov6u6cp4v	MGY1MjJiN2M4YjEzYjMzNDVlNWQ4NzQ2ODY4MDMwZjExODIzOGZmZDp7ImNhcnRfaWQiOjYyM30=	2019-07-27 14:06:03.782983+00
v8gpg1uia45l4hu69l5q4k94t439uzlt	YWQ3NDIxMGQxYWMyMzNmMzVmMTc3MGFlNzRmN2FlZDQ2MThjOGRjZDp7ImNhcnRfaWQiOjYyNH0=	2019-07-27 14:06:03.989885+00
rlajykjqodr2st6lzsjczbhrdl6a9ohf	OGU1NmY3YTc4YTJhODY3MTljMTZlYTdlMTAxNzU2NGZmMWQxYjMyMDp7ImNhcnRfaWQiOjYyNX0=	2019-07-27 14:06:05.361021+00
16awed59am6mdfd1cdnfl96oaqzhxjf0	N2I4MGI3ZDlhZDIyOWUzNDNhYzk3Mjk0ZDYwOGE0YWVhZjM1Y2Y5Njp7ImNhcnRfaWQiOjYyNn0=	2019-07-27 14:06:05.458416+00
ftn1ubeo96ik0wt4sgqpepu181uc5a2l	NzAxNmVjMjM1NmExMmI1YWJlYjAxNDE5OTYzNWUyNDU1MWRjODRlZTp7ImNhcnRfaWQiOjYyN30=	2019-07-27 14:06:07.007039+00
q4ay0pad14kjysvz25ovkmhb5x6lznmv	MDA4NWEzODU3ODdjOWFmMWFiNTNmZjA2OGQyYTc3NzczNjUzNGI3Yjp7ImNhcnRfaWQiOjYyOH0=	2019-07-27 14:06:07.142045+00
fu14nir1vmb4ywf5bnw43g5xgjt1dico	OTY1OTRhMzA1NTU3YmU5ZTQ3ODhlNWExZjk2NmNiNzBhNjc1M2IxMjp7ImNhcnRfaWQiOjYyOX0=	2019-07-27 14:06:09.326539+00
sah1tw37j7hkzwe488prjfgidskhvg3k	NjY4ZmM2NWRjYjdjNzc2YzAwZWZhMWQwYTY4OTVkNDYyOWM5NTQ2MTp7ImNhcnRfaWQiOjYzMH0=	2019-07-27 14:06:09.411814+00
z7j1v1bxifcmyi03pm891a5z6wff7nnu	ZDI2YTQzOGQ5MTUzYjJiZmVjZGY4ZTMxMDBmN2Q3Y2E1YTkwNGZjZjp7ImNhcnRfaWQiOjYzMX0=	2019-07-27 14:06:15.649524+00
ttuh0pi80hxk3wiye0zgadz6a4r0i5lq	ODgyMDQwODhmZTkwNTM3MmI5OTdhYTY1YzZjMThiNTZkNjNhZDFhOTp7ImNhcnRfaWQiOjYzMn0=	2019-07-27 14:06:15.66722+00
ka8900nip9so6gyzixdrps6o7241mgwm	ZjJkMTc0YTk0OTM1ZDBhMTI1ZDQxMmQ0YWM0OGVmZDdjODU4ZTAxMTp7ImNhcnRfaWQiOjYzM30=	2019-07-27 14:06:19.173215+00
9qji9g4ne7he67j47h2mz66v5m0ykofn	MTNlMDNjODAwYjA2MzcyNTQ1NzRmNTc1ODEwZDBiNWRkNThkYjY1ZTp7ImNhcnRfaWQiOjYzNH0=	2019-07-27 14:06:19.47436+00
g4l40mnzwztp0eenbqx0l21g6g5yvfxj	ODUwOGRmMGJkMzQyNzNkN2QzMGNlNTM4ZTI1ZGRkMGYzNjRhNDM1Yjp7ImNhcnRfaWQiOjYzNX0=	2019-07-27 14:06:23.101158+00
36arv42k83cjj5twbuby2zt3i41s09go	NmJiMDk4MTBiMTYyZjg4MGIyM2ExNTQxMzc3NTRiN2EzMjAzZTMwOTp7ImNhcnRfaWQiOjYzNn0=	2019-07-27 14:06:23.443226+00
h50e2ge0atei5oh5k4fzyeu1tlr62op6	NjM0ODVkZjFjYjk1M2MzNzM3ZWMwNDEwM2MxN2E0OGU2MTVkM2M3Yzp7ImNhcnRfaWQiOjYzN30=	2019-07-27 14:06:28.759231+00
cvf1ongrdpvxe3x7hcnjnldjzquc312a	OWRlZDJhZmFkMWYwNGRjNWIxYTk4ZTEzN2JlMzc4NDkyMTIyN2U4Yzp7ImNhcnRfaWQiOjYzOH0=	2019-07-27 14:06:29.201226+00
fuf44kt0wx3r2a8pobedrvnfh6a17cu9	OWI1MjAyYjUxMDAxYzYzNDAwN2IzMDYyMzZkNGJlYThjOGZjZTEyZDp7ImNhcnRfaWQiOjYzOX0=	2019-07-27 14:06:30.387884+00
jm7315bj7iwc8sva18immaxpkgi1djrb	NWNhNTRhYmJlYTg4OTdiM2ExNzQwZWM4NmZkMTczNDU5ZGI0ODdjOTp7ImNhcnRfaWQiOjY0MH0=	2019-07-27 14:06:30.92072+00
u9oubl4net21l98d073tkhjzycmgru4v	ZTJkNTRhMjhiMTg2OTA1ZTMxZmU0YTZjOGVlNmY3ODNjMDg2Y2NkZDp7ImNhcnRfaWQiOjY0MX0=	2019-07-27 14:06:32.949975+00
pgyjfe4umyebbhzwdjgc5e4avi2s22pn	NWJlZGY4MzJiYjk3YzE3YTZjNjU1ZmFhYTZjY2Q4YWVjMGQ1ZGY4Yjp7ImNhcnRfaWQiOjY0Mn0=	2019-07-27 14:06:33.744899+00
lqhlu9g1o8z73y41squ9biz2bjp03xus	MGU0MGQ3MjYyNzU1OTZhZTZmMGQwZmVjYTJmNGU3MTBjZDgyMjgxZDp7ImNhcnRfaWQiOjY0M30=	2019-07-27 14:06:34.340535+00
mkwiw78f3i2qb0tssy0g0zni01h0u762	MmI3ZGVmMWZmMWIzNzgzMzE3MTRhMzQ0NjBhMTMwZmNmZDQ4OWNhMTp7ImNhcnRfaWQiOjY0NH0=	2019-07-27 14:06:35.378621+00
s1fk0l883xhm8kjsjh0pm0yrz5ywk27m	NGI0OWEyYmU3YjIwZWRhYzgyMDFhZWNkMWExZTIzMGY5ZDBjNTM1YTp7ImNhcnRfaWQiOjY0NX0=	2019-07-27 14:06:37.223843+00
r1rtrj7glln4xo2ynvk2yc2sv1j9swos	MGIzNDgyYWQxOTVjMTEwYmUxZGQzNjA0MTA4ODY0ODYyMjVkZjgzMTp7ImNhcnRfaWQiOjY0Nn0=	2019-07-27 14:06:38.208243+00
zby5oxzt9gzsbwziy92hex2yx8kbxh6d	N2JkZWRhYzk1OTg3ZTliNWUyMDEwMjQwZjdhOWVkMmY2YzY4NGU2NTp7ImNhcnRfaWQiOjY0N30=	2019-07-27 14:06:39.756714+00
eh3ukihiiyfgky8mow32dli8zkjip38x	MzM1OWMxNTVmMDI4ZTI2OWZlNjA1Y2UxOTUyZmU0NzkzNmRlMzc4ZDp7ImNhcnRfaWQiOjY0OH0=	2019-07-27 14:06:41.026943+00
zzumfbw9b86eg9c72kgm6dtu0157rifk	MTBkYzUwMjNkNDM5ZGY2ZWRlYzQ1MDEzZThmYmI5ZDQwOWZiOWMwYTp7ImNhcnRfaWQiOjY0OX0=	2019-07-27 14:06:42.528447+00
mkcukuv62tr1z9y7bsa9nnutmnmteudr	NjExYThlYWQ4MzU2NjEwN2ZmYWEwYjZlNjM2ZGZkMjQ1MTk1MmJkZjp7ImNhcnRfaWQiOjY1MH0=	2019-07-27 14:06:43.867944+00
yjpfmspsod0t1r1lz2p1596rt0stry0e	OTQ5MTAxMzllZDA0NTE0MWYzMDBmMzgxMjE4OTc1MWQ4MGY5YmY4MTp7ImNhcnRfaWQiOjY1MX0=	2019-07-27 14:06:43.890094+00
xnopowmdmft5qi4bqhr7t5amlexc1epj	Yjk1OTJjNjdjMjA3YWI1ZDU4ZjgwNDEwNGUwZjRlMzFkOWQ0NjUwZjp7ImNhcnRfaWQiOjY1Mn0=	2019-07-27 14:06:45.191057+00
nfn8n8w00mbxl3kf1dx8i2qd49rxgpcs	OGIxZTY1NGU1NzFiMjgwMzAxMWY0ZDQyZDBhNGJmYWZhZDliZmI2ODp7ImNhcnRfaWQiOjY1M30=	2019-07-27 14:06:45.242157+00
a48a4nyjq0odcn53qa55utj6glsfbfr3	MzFmYTg5ZWIzZTQxNWJkMWEzYjBkNGE1MjhiMDRmMzJhYzJjMDkzZDp7ImNhcnRfaWQiOjY1NH0=	2019-07-27 14:06:46.583884+00
jh971ombfo8nf42vwy00umkutyzch5m0	MDk4YWEwMzBhYjQ4OWEwZWRjN2E4MjdkMTkzZDIyNWU0YzMyMjNmNzp7ImNhcnRfaWQiOjY1NX0=	2019-07-27 14:06:47.981555+00
ge9chxw1g70vd6lkbx08oxmbk8tqwaeo	NWNjMWZkMDM3OTM1ZWQ5YjM2ODVhZWNjMzRiMThkZDI1YzNmZjIxMzp7ImNhcnRfaWQiOjY1Nn0=	2019-07-27 14:06:49.610971+00
2i5y2uyb6cepza7bg2xqmess69oisi79	ZmM5YjM0NmViNDcyMTdiODhkYzRmM2ZkNjljNzI3YmYzZDQxZGJhZDp7ImNhcnRfaWQiOjY1N30=	2019-07-27 14:06:49.648824+00
f29tmi9zydyzmy61scqthpy9g03t3izd	NGJlMjQyNDNjMjhlMTkwNWEzODlkMmYyNjBjMjA1MGNhNTVmMDVkYjp7ImNhcnRfaWQiOjY1OH0=	2019-07-27 14:32:49.413306+00
8rce7f4zweod7lh208o22pj3ilkn0y1a	YmM4NWM4YmJlMjkyNDQ4ODEzNjE5ZjlmYmVhNWZmOTEyYmIyMzE3Yzp7ImNhcnRfaWQiOjY1OX0=	2019-07-27 14:32:53.231225+00
1ll6ibsnmierprdtmf0ec294x8pa6zcb	M2VkMzk0ZjQyNDRkY2ZkYTE0NDhmYWExNmVjNDFmZGI5MTNjYmE1Mjp7ImNhcnRfaWQiOjY2MH0=	2019-07-27 14:32:54.355631+00
3nygrqaga2i7kbz4gdj437b5dzuoxs3w	ZTk3ZTNhYzlkMDRjMWI4YTBhY2QzNzBjNmE1ODI4NDhmNzJkZWJlYTp7ImNhcnRfaWQiOjY2MX0=	2019-07-27 14:32:56.63262+00
8pacxq5jocqhmkr837bgliqnbnbcxbhd	YzRlNWZmNzFhYjg3NWI1N2Q5OWM3NmEwNjVmMDc5MjQ4MWQyNWZiOTp7ImNhcnRfaWQiOjY2Mn0=	2019-07-27 16:33:35.891377+00
2cpx2cv4r7v3ky8hydzvnmiggbba2rcg	NWU1OWIwNzMxZGZmZTg0OGNkMzY1ODg2MTFmY2Q5ZDY4MTkyM2ZhZDp7ImNhcnRfaWQiOjY2M30=	2019-07-27 16:42:49.636929+00
2l8ypsuqbbbvdeq2t4os5btpnycg0f4t	YWQxMWQ4NzNkM2VlYTlhZDE0OWFlZmQ0ZWNiMzNjMWY3ODAwNjc2Yzp7ImNhcnRfaWQiOjY2NH0=	2019-07-27 16:42:54.37684+00
w7lm30cqa1y3qysn8zxcxiwrcq49bw5d	OWQ3NWVjNWQwNDQxN2M4ZTk4MWE5ZmMyMDIyMDgzYjk5NTIxYjRkMTp7ImNhcnRfaWQiOjY2NX0=	2019-07-27 17:35:29.382846+00
sdw56w0pddnwyde4c4k5p8ghoxld9nv3	N2ExYWY3Y2FjNzZjMDRmNzc0ZmIwNzUyNWE2ZjUzZjU2NGNmNjU5Zjp7ImNhcnRfaWQiOjY2Nn0=	2019-07-27 17:44:12.179787+00
pdpuilbubuhkgoff209bz3v9njzdoxlv	ZGE0NjU0ZDQ1MmFlYTdjNzQzOGQ4ZjIxOWUxMmE4MTgyZjMxMDg4NTp7ImNhcnRfaWQiOjY2N30=	2019-07-27 17:44:16.648949+00
6uutlmnidt9xnaibi8z7dsad9o404m6y	YmFiYzBmYjBmMmNhMWFhZGFmMzJlZTI5ODI1OGE2YWU2OTdmMDY1MDp7ImNhcnRfaWQiOjY2OH0=	2019-07-28 03:20:00.483196+00
2921pk3odzdc6hpjnak1yzu89xm9bf54	ZTFjNjU1ZmQyOTdhYWRkZjE5MjRiNDYzNzZlYWMxNmU1NWViZjljMzp7ImNhcnRfaWQiOjY2OX0=	2019-07-28 03:30:51.880418+00
5cwpvbi45yfj39l74z2xznuxs20padac	MGExNDMwYzExOTMwODc1NzIwYjEzYmFiYzdjZTNlMDBhYTUyNzAxNDp7ImNhcnRfaWQiOjY3MH0=	2019-07-28 04:22:58.085344+00
5b5t9herj58rt90pvdbut3kaza0c5kzv	ODJlNzAyMmM5YzQ3YTFkZjYzNjhhMjM2YzliOWE1Mzk3MDUyYjdkNTp7ImNhcnRfaWQiOjY3MX0=	2019-07-28 04:28:46.813033+00
br2e619ddi5g4caj7ame5ci0m5jxr6kd	YmIzYmNiOWMzZDdlODU3ZjA2NTQyYjdkMWYzN2ExZDFlNDYwOTI3OTp7ImNhcnRfaWQiOjY3Mn0=	2019-07-28 10:03:20.645609+00
f3ar8rvzaodepkw8ce24ldx37py4ia1g	ZjJiYWE3ZGUwOTM3MDk0OTRiNGQzYTIzNjVlODNiM2Y1NmEzZWYzMjp7ImNhcnRfaWQiOjY3M30=	2019-07-28 10:46:21.76451+00
3qcqnb39u7pdtcyu5nmzp15vtlp89q8c	MmEwMTRlYmJkYjExNWY2OWNmMDE0MzU2YjM5NzkzYTg3ZGVhYmU3ODp7ImNhcnRfaWQiOjY3NH0=	2019-07-28 13:20:45.151255+00
j2dup9kawiidsawwal376og0b4lurf7d	ZGJhMzUxZjI0MjE4ZjE0ZDEzYTg1YjA0MWU0ZjkwYmM3ODFiNmFhODp7ImNhcnRfaWQiOjY3NX0=	2019-07-28 16:00:43.470295+00
3ye6fho65evjidpmeowm8qq9vnyrrvcj	YzAxNmM1ZDgzOTYyYTljNTlkYjExN2MwOWI1YzQ3YTBmMmM1OWMwOTp7ImNhcnRfaWQiOjY3Nn0=	2019-07-28 16:00:47.637898+00
uvfad1e3w4tn1a84vz2q1kza6t2cjuep	MGQ1MjBkMjcxOTUxYTg0OWYwMDhiNDlkYzVhZWY1YTU2NjNkYzQwOTp7ImNhcnRfaWQiOjY3N30=	2019-07-28 18:23:37.636881+00
vydi99ahafkuqqlhr9ehxzmh92xi17tp	ZmU0OTBiZmQyOGQzMTU4ZGI1ZmY3ODJlZDVkZDIyODk2ZTdmYmUyMDp7ImNhcnRfaWQiOjY3OH0=	2019-07-29 00:21:16.134102+00
7mc7qb4dnrov7omlgfln8wp8isbpvdp3	NGQyMjAzYTMzNGJhNTA5M2I0MWQ2ZDQ3ZTk3ZWJkMTBlNTUxNTEzMDp7ImNhcnRfaWQiOjY3OX0=	2019-07-29 00:21:18.940982+00
6fo304am6pzo07tqw13sjct06q5s8a4q	NGM2NTQ0Mjc1NWVhYzIzZTc2MmQxMmU2ZDlhMmJjMDc0YmQ2NWMyMjp7ImNhcnRfaWQiOjY4MH0=	2019-07-29 00:21:22.474172+00
8e39phia8bxftx3iw2ex57mlai44s3bw	ODYxMWM3NmNjYjQyYTlmZGEyNGJlNDkzNmE3NWIwYTA4NzNkMmFjNTp7ImNhcnRfaWQiOjY4MX0=	2019-07-29 00:21:30.764891+00
nw49c8ig5rzat7ucqkr56vo6ur10epco	NmFmZTUyMGE3NmQ5NzExY2VlMzE2MDFkMDRhOWE5ZjliOWE4MTViMDp7ImNhcnRfaWQiOjY4Mn0=	2019-07-29 00:21:33.659956+00
x59hqj5beir8ysvnl70pm65qsi7lgj3e	ZmM4MDA1OWE5YTk5YzM5ZDU2YmQ2ZjZiNjk4NTBmOTMzZDNlM2NiYjp7ImNhcnRfaWQiOjY4M30=	2019-07-29 00:21:36.64394+00
w1ux9qy0lbwfjo2qsfeeag8h9qnrm191	OTgyZTRjMTdiODJhNDJhYWJiNTUyNTc0OTY5OTc1M2RmYTc5OTk4YTp7ImNhcnRfaWQiOjY4NH0=	2019-07-29 00:21:39.447245+00
v18r7m3ybaf7nb0fq6xbwzsspyikq29n	Y2FlOWZlYmYyY2Y3Y2RlZWI4NzUyMjhkODVjZWM5YzYxNzU4ZDA2ODp7ImNhcnRfaWQiOjY4NX0=	2019-07-29 00:21:42.235868+00
qk8zkc9n864jkjymacwd45gdk0rovp8x	ZTliMGYwNDA4ZDdhOWEzNDgxMDU1MGFkYzEyNDlhNzA4ZTI0NTBjZjp7ImNhcnRfaWQiOjY4Nn0=	2019-07-29 00:21:45.226411+00
3hur5zwkavpe9sry8ynjuhw0cubynw5h	MWExMzYzNzUwNmRhYmEyM2NlODA0Mzc3OTE2OGExNDY5YWFlY2Y2Yzp7ImNhcnRfaWQiOjY4N30=	2019-07-29 00:21:50.733909+00
cic0lhw0b6dni7u2q18903xg7ov7z6gq	NzAzMzcyMjA5ZTUyZWU4NmE1ODI5YjQ4NmYxZDRmY2I1YWZlOTM1OTp7ImNhcnRfaWQiOjY4OH0=	2019-07-29 00:21:53.836118+00
3grcu2ukf7pf756xqxaxrnzsoq4uodml	NThlM2VlZmQxZTExNjBjZTc2MzM4YTBjNTExN2JjN2FkNjFiMGI4MDp7ImNhcnRfaWQiOjY4OX0=	2019-07-29 06:37:36.669059+00
oaegbpg2sblluhjzp627vwhr5gcjq80d	MmU5MmM4NTBlZTI5OTI0OWJkMWI4ODU2MWQ1ZWFiZDkwZDE2MWUxNDp7ImNhcnRfaWQiOjY5MH0=	2019-07-29 08:56:12.698122+00
97hmdjdn8cw569tex9wcq7zty5yd5yft	OTNmYjM1MjY3MzExMWJlNTcxMTA1MDIyM2M2NDdhOWVmOTE0M2M1NDp7ImNhcnRfaWQiOjY5MX0=	2019-07-29 09:23:07.136285+00
0iickg8ndcruu5fsvqnjdk46oskm7eqk	MzE4Y2UyM2Y3NmRjMmMyYzNlZGI5NDQ2MTcwMjY1ZmYwNmJjMjEyMDp7ImNhcnRfaWQiOjY5Mn0=	2019-07-29 09:36:33.16428+00
v3srg9xcy96l4t8siqa5a52otp0zzw8m	NGE4M2RmMDIxYTBjMzFmY2NlMDkyNWZmYjZiN2I1NmY3ZjM0NmFkYzp7ImNhcnRfaWQiOjY5M30=	2019-07-29 10:49:11.942761+00
iuxz1zdphe8j9kuum9najk3sfitb1mzs	NDc4NWFhYmE5ZjA0NGVhZDRkMzRkNWJhYzY1YjEzNjljNzRiYTVhZjp7ImNhcnRfaWQiOjY5NH0=	2019-07-29 18:28:47.463492+00
4qchf4rip25vt0tg77s1gxxoojoqecqs	ZTQ2OWJlMWIzNGZmZWM2MTI1MmM4NTBiOGQxZTk3Zjc0YTNlYzZhOTp7ImNhcnRfaWQiOjY5NX0=	2019-07-29 18:28:51.934712+00
omgne6iv2u48c6yipsb9cqv0najdh8ks	NGVhODhhN2ViMTkzMjA2YzdkYTgxMmMzOTczZTc2MDFlNDg1Mjg3Zjp7ImNhcnRfaWQiOjY5Nn0=	2019-07-29 19:15:41.636947+00
49bfowmbd3lxf9z81j64b95hyeu8ecv6	NzEwMGMyZmYyMjVhM2QxM2M0ZmVhMTNlZGI1NGM2M2YyMDlhODVhNTp7ImNhcnRfaWQiOjY5N30=	2019-07-29 19:15:52.658647+00
wkawwyn1q754hgylfgp9h4jaw6hkvb85	MWNkMTBiM2E4MDI4NzYzMWY1YjdkMTE4NWM0NWIwOGQxYTc1OGZmMTp7ImNhcnRfaWQiOjY5OH0=	2019-07-29 19:15:54.147617+00
0dk87qf30eaxwjnj471wx5teiw39wnel	NTBmMzQ5Y2RiMTgwODVlZGExOGI4MWJkMDM0YzlkZmI2NGQ1ZWIzZDp7ImNhcnRfaWQiOjY5OX0=	2019-07-29 19:15:55.15494+00
njs8emqjpq7lpm2s1cldyb7rwrtcdgbk	MDk4NjU3ZjEyOGI2NThkZTQ1OTNhMmQ5YzI2MDMwM2NiYmFkNmM5Nzp7ImNhcnRfaWQiOjcwMH0=	2019-07-29 19:16:00.84337+00
w4x9iocp434ibtdz42czmnvt52cdpjr0	ZjI4M2Y3NjkxZTgzZmUyYWYxMDNkYTMzN2NmMjAzZWMxMzg1MTVmMDp7ImNhcnRfaWQiOjcwMX0=	2019-07-29 19:16:05.315188+00
d4s9p2kbmbwebak6gn7003tv5gyjvb0a	NDI0YjEwZmM5ZjU0ODMzMDViYzdhODgzZWYzMjZmZmNjMTcxNjUwNTp7ImNhcnRfaWQiOjcwMn0=	2019-07-29 19:16:06.44946+00
egu39ym6ay91bxxb4k2e2co0a5vusfmc	OGE3MzE5MzVhNWI4NmRkYTNiMTEyYmZlMTkyODRiMGIwNmQwMjVmNjp7ImNhcnRfaWQiOjcwM30=	2019-07-29 19:16:07.592718+00
pruofmyfay5w1lhk68e8s1m87thwx9ce	NGZlYTBjNzdlNDgyZDQwN2QyNDUyNGRlZDc1OTNjNzYyZGFkYjM0NTp7ImNhcnRfaWQiOjcwNH0=	2019-07-29 19:16:08.756498+00
u1ia7ikmb4nrp5kh8kpy8l10c6w0q9c2	ODk3ZTFmMjlhZDI5M2NkZDY0MjRjOGZiMWQ4NTk1NmFlNmQxNDA3Zjp7ImNhcnRfaWQiOjcwNX0=	2019-07-29 19:16:10.494418+00
0ifrze6v7vizpotajvw006no4f64hn36	OTYyY2UxZTdmZmI0YjAxZmNhMzc0M2RhYjg4MjhhMGQ0ZDQyMGNkMTp7ImNhcnRfaWQiOjcwNn0=	2019-07-29 19:16:11.820959+00
imzcytvhan46ir1fl738uya08ebyn3ot	NDQzZjBhMjRhYmM4YTk1ZGZkY2RmMjRiYmVlNmM1YmUyNmJkODFkYzp7ImNhcnRfaWQiOjcwN30=	2019-07-29 19:16:12.941693+00
gi57aesqioeqwetwh1okstk133pebn8d	NmE4NjY5M2JiOTI3NzZlZjNlMmI4NzQxY2IxMmJmZGNmMzZjMjk3ODp7ImNhcnRfaWQiOjcwOH0=	2019-07-29 19:16:14.204389+00
1g25p3rixou6dzzu1944sci26j0vot9k	ZWJjMDQzYmM5OGVmZDY1ZDc1M2ZlZTI0YTM3MTYwNmUxMDhkNzcwYzp7ImNhcnRfaWQiOjcwOX0=	2019-07-29 19:16:15.293772+00
bg5fmo9551ecmpwknxs674sb30cfyil6	ODViYWVjMzRiZTJiYjQ5MDEyNzk4ZjI4ODU0OGYwNDU0NzNjY2JmNzp7ImNhcnRfaWQiOjcxMH0=	2019-07-29 19:16:16.41841+00
ecl2m571xzhzs1n0kr0vjurv3eghg9l7	MjM2NWFlN2JjMGFlMGM4ZDAyNDFmOGZlMTZlZmNiZTIzZDdiNTM5ZTp7ImNhcnRfaWQiOjcxMX0=	2019-07-29 19:16:17.534344+00
6df9jwpurnnvfar67nqd9adwnhlihrjo	MDAyY2EwMDM1ODA3YjJiOGYzODk4NTI4NTBhY2RlMjJhYWZjZTU4Zjp7ImNhcnRfaWQiOjcxMn0=	2019-07-29 19:16:18.716351+00
8jwz54jlakspcmas9xe5yajo61x7h81q	MDZjZGYyYWE1NDgxZjQxNWJkOWY2N2EzNjY5MTc3ZmE2MWI1YjhmMDp7ImNhcnRfaWQiOjcxM30=	2019-07-29 19:16:19.792476+00
a6t4zefqcngvuvj48zdb6idkotgvsb9f	MTIxZThjZWRiMzJhYjUyMGZiMGIwY2JmNzc1OTZhZWM0ZGY1ZmI5ZTp7ImNhcnRfaWQiOjcxNH0=	2019-07-29 19:16:25.145078+00
uz80fg8pc14mfcpnnc2i385gwluiha4u	NWY1NDE1NWY1YTc5ZWMzODBkZmZjM2JjOGJhNTQwNGQxOGJiOWQxNzp7ImNhcnRfaWQiOjcxNX0=	2019-07-29 19:16:26.1153+00
awc494bis1k953y52wgdcgm4guc9x9c5	M2U5YWMzOTA2MmY0YzE5NWUzN2VmNTQxYjA1OWI4MTc4YWQzZGFiNjp7ImNhcnRfaWQiOjcxNn0=	2019-07-29 19:16:27.171793+00
t4h32mruk5o9i2u4leb5tfdeoe5j061t	ZjI2ZWMzMDViZjk0ZjI4NGMxOWI3YWJhYjQ3OThhNTZkNDZjYTEwZjp7ImNhcnRfaWQiOjcxN30=	2019-07-29 19:16:28.467055+00
sxwifybjdgly7tew637tdxor2addf4ys	MDUyYmQyNzBjNjM0MGU2ZWM4ZDc0YzM0MzJkYTFjNTQxYzRmYzNkMzp7ImNhcnRfaWQiOjcxOH0=	2019-07-29 19:16:29.713848+00
yqff4okgkyfvfushrziso8rhvyzeijpm	NWUxYTY4NDA4YWMyMDNlMWYwZWVlMjhhNTE4ZjRiOTBhNzNhYWY5Mjp7ImNhcnRfaWQiOjcxOX0=	2019-07-29 19:16:30.794218+00
6245her4a8k4lhhk8041aa6gkjxczvud	NTgxMmQ4ODI1ODRjZTU1YmRkYWNkOTgwNzhiNTNhY2NkZTJhZmJjZjp7ImNhcnRfaWQiOjcyMH0=	2019-07-29 19:16:31.978816+00
cxvs1cl1eqn7ffvlgi1qxlouvwn43dao	M2VhN2NhNTBhZWQxMDQ3MmIxODhiYjAyNzk1YjcxMDIxM2RhMmNlOTp7ImNhcnRfaWQiOjcyMX0=	2019-07-29 19:16:33.118862+00
xrwssiypcua74i7cknrorqngp2bx757r	ZGQwNDhiN2VlOWQwZDA4MDVkZTkyYzYyZGUxODBkNmQ5MmM5Njk3Yzp7ImNhcnRfaWQiOjcyMn0=	2019-07-29 19:16:34.429283+00
qkni11wvie160jsi8m1n6jzg3qtbxmij	MDIyNDNiZTg5NmM2ZWRlYzA0YWQ1ZmNmNTVlZmJjZTlkMWNhYmZiYTp7ImNhcnRfaWQiOjcyM30=	2019-07-29 19:16:35.677542+00
vs5pq454pvpyvjg0u34dqjlw9tgi0dh0	NjlkZDcyM2I4NjViMjVmNTdlYjA3ZjhmY2M5MGEwZWRjYWViOWExYTp7ImNhcnRfaWQiOjcyNH0=	2019-07-29 19:16:36.803624+00
cxqd4s6v5x4mbsww8omdqrhzryy31e12	NGNlZTM4MTJlYzU2YTc1YWQxOGNjOTkyOTE0ZmQxOTQ3MjEzNjAzMDp7ImNhcnRfaWQiOjcyNX0=	2019-07-29 19:16:37.67725+00
lrpgtd3p28wej19li9f3lw3g9djchpx0	ZmQwNTQzNzYwODgzYmMyNWRhODQ1ZGRhZmJlZTA2MGNmMWQzYTE0MDp7ImNhcnRfaWQiOjcyNn0=	2019-07-29 19:16:38.938905+00
d6ghggdrj92amrqdtoi3rdanmm1xfw8f	MTNiMjViMmY0OWUzZTYzZjE3MjNmYTg2ZjcwMTZkOTM0N2Y0ZDgwNTp7ImNhcnRfaWQiOjcyN30=	2019-07-29 19:16:40.12419+00
igmgmnnxo5yk9qvkd76xxeglse67n019	YTY3YzU4NWRjZDc1MTVjOGVjMjEzNDAwZDA4ZGNhMWM3OWE0ZTZiNzp7ImNhcnRfaWQiOjcyOH0=	2019-07-29 19:16:41.339661+00
qmablgbflr6dc1b3st6r2ujr0ub1b9ev	MDIwZTEzOWMwOGE4ZTNhY2FiZWU4MjAyZGI0MWNjYWQ0MWFmNjBkZTp7ImNhcnRfaWQiOjcyOX0=	2019-07-29 19:16:42.534423+00
okw6vtjyt0ckhcm6kmgbqbyumtuwrcve	YzYwMzQ4MWFmM2MxNjg1ZDUwMjVmMjk2OGIwODQ0NjY5Y2FhMmIwOTp7ImNhcnRfaWQiOjczMH0=	2019-07-29 19:16:43.694412+00
e2l78tpi4uw9xrrpam8sank07hjzcqiz	YTY2YzI2MTAzNzYzMTE0NjEwMGIyNmQ1OGM2MzUwMWMzMTY0YmMwMTp7ImNhcnRfaWQiOjczMX0=	2019-07-29 19:16:45.372909+00
tp6613bcqrkiqmaq8bz9egofn3qt04i9	OGQ2NDBmMWNhM2U3ZTQwYjlkY2U2N2ZmZjJlZDViZTI2ODA2N2FkZTp7ImNhcnRfaWQiOjczMn0=	2019-07-29 19:43:22.878095+00
tp04ce0yop1cavd4w6si4wltt8vyi3qy	NDBlMGUwNzUxYzFiMWRmYjYwYjFiZDY1NGJiZTliZWM5OTIxODIyZDp7ImNhcnRfaWQiOjczM30=	2019-07-29 19:43:31.884713+00
kbcdmk65frl76c4s7bcnq40cxbd81khv	ZGIzMmVkNmY4MjFmM2I2MTIzOWUyNDI3NzA4ZmY4ZWIzZjBjZWZhYTp7ImNhcnRfaWQiOjczNH0=	2019-07-29 22:55:50.007655+00
l8dliv1c4g2fiqfp2x2qm2d9e506abth	YzhjYmUwNzY4MDkzZWY5NzhjOWQyNmM4ZTkwYjY1NTI1OTAwNTk1Nzp7ImNhcnRfaWQiOjczNX0=	2019-07-30 02:12:37.389955+00
glxnsvoxla7a5gq32iqnwbpwjxi4pfc8	MDUzMzI1MDM0NTc0NTFkOTVjZGU3MTNkNjNlNzdlZDk1NzIxOTIzMDp7ImNhcnRfaWQiOjczNn0=	2019-07-30 07:51:04.146137+00
ovl7bf33urw8712h2fmqvuz6v0c0yylu	MGM2YjYzOWY4OGE3YmVmNzI2OGVlZTEwYjk1YWUwOTMxMDNlNTVlOTp7ImNhcnRfaWQiOjczN30=	2019-07-30 20:08:52.007173+00
bodfl5pyodmff3faazpfy4zge16rxip2	MThkNTM4YzM4MmFiNmQxNTJjZDEwOTc4YjZjM2RhNDEwZjNkMTJlNDp7ImNhcnRfaWQiOjczOH0=	2019-07-31 10:59:11.407023+00
0a6kb16d5my6stytrnuawl1ha9idekm6	MjIyNzY5Yzg2OWFjODkwOTU1MmE2NjYzOGUyM2JhMDQ2YjQ2MDIzNjp7ImNhcnRfaWQiOjczOX0=	2019-07-31 10:59:12.700619+00
m1ay59oadjfd4l00rw8nzolrd2opphkv	MWY0YmI4YWIwNDFjMWU2ZDM5MzVkMmFmNzVlZDhhM2U0NWU4YTc0MTp7ImNhcnRfaWQiOjc0MH0=	2019-07-31 10:59:15.351058+00
3llvb72r5cr32d23fvxwexbiigbw0dcx	ZTlmMmQzN2FiY2JiM2YxNTBmNGRmN2QxMDdjM2Y5YmI2YzY3ODE0Yjp7ImNhcnRfaWQiOjc0MX0=	2019-07-31 10:59:16.581718+00
8rjzjntuhhta0a7yfzohlupvecs3f9rr	ZDA1ZTA1ODk5YTQ4Mjk0MGRjYWQ0NmM4NDA5NmRkNTU0ZmY3ZmI3Zjp7ImNhcnRfaWQiOjc0Mn0=	2019-07-31 10:59:17.766558+00
xfi3p7q9moishlnrww8bjcdotpuzc7mi	NDcwZWNhNzgxYmU5ODg3NzZmOWNhYzBjNjJhYzNmMzBjNzJkNjYxZDp7ImNhcnRfaWQiOjc0M30=	2019-07-31 17:52:50.412198+00
65frz4pf6rr8skytjrneksdhr7nqs7d9	N2RhNDE2YzBkN2YwYjlkZDRhMDVmN2Y2NmYxMzVkMGFkYzFlMGQ1ZDp7ImNhcnRfaWQiOjc0NH0=	2019-08-01 05:14:27.92163+00
ov73vdo4dnflpr8kow53mwvefzo6ohwh	NDQ3OGQwYmVmZjk1Y2MyNzA5MGRkMGM2ZjMxNjQ5ZGMxMjkxODQ0NDp7ImNhcnRfaWQiOjc0NX0=	2019-08-01 05:15:11.928504+00
fgqdkzutyp56jminea4g7odrwwtp1oz0	OWYwOWYzNTFkMTQzMTNlNGIwMDllNjdhMmMxOGRmM2U0MTdjOGRjMDp7ImNhcnRfaWQiOjc0Nn0=	2019-08-01 07:42:48.650053+00
v7gsexu4d9212pnnn7ezz4yn6i37b6lu	OTAyYzFiMmY3YTRjM2E1MDNiOWZhZjk1ZGI5NmYwZjg3ZTkzNmI5NTp7ImNhcnRfaWQiOjc0N30=	2019-08-01 09:23:09.034054+00
pdgxb4fy42cmyxq2sbxb8slolgyudtmf	ZDljN2IwMjlkYWVjOTVjZjk3ZGU3MTg0ZDI2ZjkwZTAzYTFmNDQzMDp7ImNhcnRfaWQiOjc0OH0=	2019-08-01 12:11:57.929993+00
y0ngd6t8gjhi82vo77oyvef7e9rufyei	YzE3OTFhYmNjZTI0YzEyZTIzNjAxZDM4NjlkNjg1N2YyOTljNjY1Mjp7ImNhcnRfaWQiOjc0OX0=	2019-08-01 14:23:52.638998+00
pc7mg1uvm8xzxofh1rj3g2fvz5duvu52	OThlYWU0NzMxM2FiZThkZjZjYWI2Y2ZhYTMyNGRmYTliYzljZTA1Mzp7ImNhcnRfaWQiOjc1MH0=	2019-08-01 23:50:16.299226+00
o7gdpzid5v6i2qkhiw1e7ppzjykfpxfq	ZWY4NGFkODJjMDYxZDZhMTUzZTU5MTBlZTVkMWE5Y2E3M2EzZDUxYzp7ImNhcnRfaWQiOjc1MX0=	2019-08-02 02:38:23.63629+00
grbchobuzm9mg7uj6djpun19st3pq2im	ZWUzMTM4NGJkZmM5MGE4ODk2MTMyNTczMGQxYzcwOTZhZjkyYzk1Mzp7ImNhcnRfaWQiOjc1Mn0=	2019-08-02 03:20:10.113474+00
zxliazuzed46qnwdrg68otrf77gaws8z	MmMxYzUyYzY5NDhhN2FmZTJhZDY0Mjc4MWFkM2Y1MzA1NjdjOGY4Njp7ImNhcnRfaWQiOjc1M30=	2019-08-02 03:59:03.346014+00
ulu3jpm8051h2debtg2owf7r00jf1o7i	M2ZhOTMxOWZlZDU2OTg1YjZlOWQ4NjYwYTgxZGI3MzY4OGIyZmM2Njp7ImNhcnRfaWQiOjc1NH0=	2019-08-02 03:59:08.279737+00
xzcxw3ijtfp7piq9f5w1wrl3xayqirmr	YTkxNmRkNjVmMmNiYmEyZmQ0ZWZhMmZkZmFkYzcwNTc3YzcwMTc2MTp7ImNhcnRfaWQiOjc1NX0=	2019-08-02 03:59:11.544937+00
eij5qwg3xyhe68btbonh2wxdc5mtrq1j	Y2UzNTAwYjE1M2NlMjcyZTYwYmNhYTkwOGNhN2U0NWU5MzBlMTkxNDp7ImNhcnRfaWQiOjc1Nn0=	2019-08-02 03:59:14.474989+00
tjmr9vz10i33mkmw00iohf12g6cowphj	NDlmNDAxOTIxYjEwNjZmOTAxNGFlY2ZiZjFkNGUxNzY0NDYyYzViMTp7ImNhcnRfaWQiOjc1N30=	2019-08-02 03:59:16.46911+00
nroojbg2hi25m9n4t1wwfgl8q54za1b4	ZGRlM2FjOWE2MTI5MGM4MjUyZjljMzhjYTE2ZjQzMWMyOWVhYzU2Njp7ImNhcnRfaWQiOjc1OH0=	2019-08-02 04:02:16.858927+00
46whxzx23oitgmh1pmjf2v0xkx9mg3ga	YjRiYjcxMWYzMzUwMTEzYWM0NTdmNWMyZDcyMDBmNmRmNzMzNGQ3Mzp7ImNhcnRfaWQiOjc1OX0=	2019-08-02 04:04:52.396942+00
6owy0gp7nw0d8smw0o551e238hwro0qc	ZGZkNTgxZWFjNjI5N2NkYWQxNzU3ZmI0ODYxNjE0MGM2MmYxOWZiNTp7ImNhcnRfaWQiOjc2MH0=	2019-08-02 05:26:10.132596+00
1nbwttnbfat3qfk0tg24v3pwbupqonlx	YmQ3NTcyNzM0NmNiMzA5NmFhNGYxM2M2ZmUxNzViMzBjZGU2ZDRhYzp7ImNhcnRfaWQiOjc2MX0=	2019-08-02 05:26:14.130989+00
f8fzg02r70hccobu3d3cpvfux8mvpm3v	OWU5ZjczNmQzNzMxMzgzODQwYTJmYmJkNzBiZGRkMTRlMGEzMTBmMTp7ImNhcnRfaWQiOjc2Mn0=	2019-08-02 10:12:27.906907+00
453p9c12j5hnb97s54uk105gan3ujkx6	ODJhNTQ2OTg0ZjkwNGE2MTUwOGZhNTI1NGFlZGYyMjRlOWNmZjIxYzp7ImNhcnRfaWQiOjc2M30=	2019-08-02 17:38:01.438702+00
mj0y9wranksyj6epjn809u8bcoe7pen2	NzgxYjVjYTM4NmE3OGEzODZkMmI0ZGNhMGIwMTJiMzZlNmRiZTRkODp7ImNhcnRfaWQiOjc2NH0=	2019-08-02 17:52:03.922537+00
00wkzi85kqkx16w5ehyqemjvsx749dxp	ZmMzOTFkZjJjZWVkMzc0MmVlNmVkYWIxMzZjMjU1YjllNWFjYmYzNjp7ImNhcnRfaWQiOjc2NX0=	2019-08-02 20:30:54.418854+00
ukveagxjg9my2bs3jn138r6az7tmr6rg	OGQyZmEzODNmYmI3ZDdiYzBkMzI3ZGFiYzUxNTcyZjlkNDBmZjExMTp7ImNhcnRfaWQiOjc2Nn0=	2019-08-02 20:41:18.160708+00
udzkhpvnhtaptt5t0fwa5plcwzy3iui5	MWI3ZWZhZDQyZTU0NDg2NTczZjBkZTQwNDI3N2YzYzE5MGNiZDRiZjp7ImNhcnRfaWQiOjc2N30=	2019-08-03 01:38:32.9818+00
2gf0hmzbtqhdg9zl5tspj1vog8vpayaf	ZTQ3MGU1ZDlmZTRmNjhhMjkyOTk3MDIyMjc5OWU4OGRlMWJiMzI0Yzp7ImNhcnRfaWQiOjc2OH0=	2019-08-03 03:59:35.911091+00
7qc4e5f1606h9agk4uv2vusuyzmyaia8	MWFmNWE1NTNmMTQ4MTQ3ODkyZjQ5MjU3YmQ4NzMzYWMxOGU0ZTg2Yzp7ImNhcnRfaWQiOjc2OX0=	2019-08-03 05:00:24.094102+00
xmepfvm8879bxrvjz0dq0obnq11ihiev	MjZkNTg0YmZkYTIzYzJiNzc0Y2ViYThkMTAzMDAyMWYwNDZhMTQwNDp7ImNhcnRfaWQiOjc3MH0=	2019-08-03 05:01:25.04266+00
b2cqgdy1n1qgfppceju2ba13rsptr7x2	MzBkMjcyOTZkOWNlYWJiYmUxNTM0ODBlZDExNjlkZTg0MDUwZjExNDp7ImNhcnRfaWQiOjc3MX0=	2019-08-03 05:02:38.14455+00
ph6iujef470v9dfqree5arotwt7z4fc2	ZmRmMTY0NjA2NjJmNmZiNTdmY2U2MThhMjY5NzJjZTRhMTdkN2U1Mjp7ImNhcnRfaWQiOjc3Mn0=	2019-08-03 05:04:04.536361+00
aanp0lzlpvx8ce8cmhgce5quff0aojry	YmQwMGZmMjg2YjAwMjEzNmQyMjllM2JjZjgxMzJkYzgzOTg0M2Y0ODp7ImNhcnRfaWQiOjc3M30=	2019-08-03 05:05:32.861813+00
a8xosz3qgpr6zdwki9c7sccxztbhufk5	NGM1NTQ5ODA0OTFhOGI3YjNlZjFmYWExYzZlNDU3ODkzOTg3NmMzNzp7ImNhcnRfaWQiOjc3NH0=	2019-08-03 05:06:40.737576+00
ik39qamy78hbl5kkqf3wqfn37y08rhba	Njk0ZWViYTE5YTYyNWE1ZTVkMDVkZmFkYjM2YTAyZjVjZDE0NjM1Yzp7ImNhcnRfaWQiOjc3NX0=	2019-08-03 05:07:09.739312+00
fi9hxp1gnyd19g82cycce611345dxe3q	YmRhNGY3YzgzZWNjNjZjOTY3ZDIzZTgwZmM4MzEwYWYyODVmY2Q5Mjp7ImNhcnRfaWQiOjc3Nn0=	2019-08-03 05:07:55.769225+00
aymvayl8aamw5o4725caxvi9ss6up4dh	NDA3MTNhYzI2NWU4ZThkZTg1OWMzNGJmODc3MjdlMmU4MjViYzE2NDp7ImNhcnRfaWQiOjc3N30=	2019-08-03 05:08:13.152888+00
lgf6o02xmxhes5vyjpl0zjxwjosqq9li	YmNhZjUzNmU5MjY2ZDRjN2EyNjYwMDFkNzQzZmE4MGRjYzJkOTMzNTp7ImNhcnRfaWQiOjc3OH0=	2019-08-03 05:08:29.843895+00
inw6xv6v2hkj77sl9wmcyzv1znd40ws7	ZDMyMmZhZmExNjdkYjc3YzA4MmIxYWI2YmJkMWMxNDJjNmNjNzE5NTp7ImNhcnRfaWQiOjc3OX0=	2019-08-03 08:13:49.754967+00
rzrn9zq2ilgja2oul47kfdorwbc7xufb	OTZlY2VjYWZiNjkzM2Q5NThhZGFjMTQzZTcxNTM2MDNmMDU1NDI0Mzp7ImNhcnRfaWQiOjc4MH0=	2019-08-03 09:35:40.843222+00
6ehxn7nw6tnoxf4r7w3aq8u6gj18ajx8	YzY1NTUwNDI4NjI1YzQ1OTIwODM0MGJhNjlmMjg4MDEwYmY2NzkxZTp7ImNhcnRfaWQiOjc4MX0=	2019-08-03 14:22:50.388559+00
2e28m2s98sco7r0kfwkrsr0oijnpkd6w	MTA4ZWU5ZmQ1MzNmMzI0ZjQ2MjNkMWU3ODgzOTQwOTdkMmU1MTYzNjp7ImNhcnRfaWQiOjc4Mn0=	2019-08-03 14:22:54.983174+00
ofr2xauvd3xysfz29l7dblxq047qfj68	NGExMjg4MzhiYWNlZmY3MGIxZDBlMGE0NTBmZTcyNTY5YTZhODMxYTp7ImNhcnRfaWQiOjc4M30=	2019-08-03 15:10:20.884525+00
uqsqfgealpoh4x3dlwurrep82wb1ao0e	YWYzOTk1YTliODgxYjkzMjY3YWViZjBkYjdkOTRlZjhhZGEyMjA2Nzp7ImNhcnRfaWQiOjc4NH0=	2019-08-03 17:13:51.140543+00
ydh7v32r9napgqtzmssc2yntfv19obnk	MTBkNTY0ZGYzM2M2OTFlOGViN2FhMTU0ZjQyMjJhOTFlZTQxY2I2Mjp7ImNhcnRfaWQiOjc4NX0=	2019-08-03 17:13:55.637124+00
7174lhya91mpirc57cv1r585zduzi05s	YThkMDRlOTM1YjgzZjRjZjI2ZjY0ZDgzZWZkOGZhOTc3ZWE2YzUyYTp7ImNhcnRfaWQiOjc4Nn0=	2019-08-03 21:14:49.218388+00
meltzp6pzf6ctzurlrvuybtfj5z1goaa	YTllNmY4MTJlYzVhOTkzNjZlNDI2MDcyM2M3M2JlMDA1YzFiZTYzMDp7ImNhcnRfaWQiOjc4N30=	2019-08-04 09:23:10.003417+00
sb92v4xnd4ilqd5ujqruun4s4we2eyo5	MWVhZGJmZDhjNGQ3MjFlNGMxMGMxOWRlYzg3ODFlMzFhNjllMjhiYjp7ImNhcnRfaWQiOjc4OH0=	2019-08-04 09:23:41.90931+00
y56e07c82mrlc9h2qs5t3qpovcismofp	MjkwMDFlMTE3ZmZmNWY5ZjFlODk0NzRiZDhjOGI5MmMyNDJlMWIxNDp7ImNhcnRfaWQiOjc4OX0=	2019-08-04 11:44:29.56109+00
vgiwck62b2ii26jktantesspws4andil	YmIzZGJlYzVjNmE5MzljMjk0OWVjNmQ2MmE1OWZiOWNlZjNhOWI1Yzp7ImNhcnRfaWQiOjc5MH0=	2019-08-04 16:00:33.157728+00
rk4kl32gju88ppvf2so6iphuraha1kkz	YzQ4Nzk4ZTM0YzllNjBhYjA3NzI4NDZiYmY3MWJhOGIyMzAxMDdiOTp7ImNhcnRfaWQiOjc5MX0=	2019-08-04 18:13:01.659603+00
jsf69qcszvuxtr0tm87gwmsskmm20myg	Njc4YTYzYWYwOGU2NmNhZTkxZGFkYzYyZDRiZmNjMzNhOTIzZjhhOTp7ImNhcnRfaWQiOjc5Mn0=	2019-08-05 01:32:56.153164+00
ri8wmsqrv170k4xyi7aqv6wr956c2dxf	N2YwMTVjMTQ3ZWIxMzQxNTQ2ZDUyNmE3NTgwNWYwNWYyYTRhNTk1ZTp7ImNhcnRfaWQiOjc5M30=	2019-08-05 02:58:41.387439+00
5v1vfxe3ia5faafda7821h52u12ik4ki	MmM5YjlkZTk2MWI5MzA0MTA2MDE1NmZiMmJhNjY3ZTRjYTM1MGFkZDp7ImNhcnRfaWQiOjc5NH0=	2019-08-05 03:21:40.388546+00
6e4j2vkg2nukzwu9uxly5h9dlieesmen	Y2JhYjFjZWFmMjhlYTI4M2YxODg5OWRmMTcwNmNmZGM1OWI1NmMzZDp7ImNhcnRfaWQiOjc5NX0=	2019-08-05 04:47:23.658268+00
duyaja6dfrbanw8hotvd9lnl775xy0rp	YTY4MGE3OTQ0ZGM3MDUyOTMyMTk2NDFmYzAxZmY4NGEzMWRjZjBiYzp7ImNhcnRfaWQiOjc5Nn0=	2019-08-05 04:47:25.419768+00
qp719jqw3ig6zf8acu7iuvarzkabx85l	OTUxYmVkYjA2ZWRkNzk3ZTRiNGNjZWRlZjNiYzJkYTQzYjFlZmFiZjp7ImNhcnRfaWQiOjc5N30=	2019-08-05 09:48:24.435544+00
hn7cpkcqdlx18ijpoqudnc47nxcf1brh	NzkzMzhiMTcwMDY0MDQwMDg1YTgzNDNlOGEwZDBmNWI5MjMzMTYxZjp7ImNhcnRfaWQiOjc5OH0=	2019-08-05 11:17:51.916456+00
8evnhh6kkvheglpodjca30d1pqb1skdx	Zjc2MTk5YWVjYjY1MjJjMjViZDU1NWNhNmVjZWUzY2RkMzVjMmUwMDp7ImNhcnRfaWQiOjc5OX0=	2019-08-05 17:57:03.92293+00
kyiiwo91nub7kmbsuh479up8x9dmqarw	NWVjMDhjOWJmNWU1ZjliZWExMzMzZjg4NWUwZGQ5M2NjZGM1ODJhZDp7ImNhcnRfaWQiOjgwMH0=	2019-08-05 21:36:47.175384+00
5xns1818v0uncigvbbkwf67gt7q813kt	ZTE4N2I1NDgyN2RkZWU3NmIwMzUxZWYzNmI5YzUxZGI4N2ZmNWY5ZTp7ImNhcnRfaWQiOjgwMX0=	2019-08-06 01:54:38.141144+00
57t4on9k90yqt9likx4yqu809qayp9u3	Y2NkYzNhYzBjMTY0YmY2ODFhYTMzNTdlMWVmYjRlNjNjYjJjNjdhNjp7ImNhcnRfaWQiOjgwMn0=	2019-08-06 05:51:48.973111+00
7zpiqfmc31zbmeuc1u1im3t4hpt54tvi	ZGFmYmQyMmJkNjA4MjA5YzkzZTYwNzMxNWQ5OWZhNTVkNDQxMzhkZTp7ImNhcnRfaWQiOjgwM30=	2019-08-06 05:51:50.063675+00
s1l37a19qr4lxrpn0lw13r7b6my4ivyc	ZWYxYTE4ZTRhM2JlYjZiMjJhMjEwOThjYjQwMjM5YWNlNDU3ZTVhMDp7ImNhcnRfaWQiOjgwNH0=	2019-08-06 05:51:51.839286+00
zhnkkiz5fldngqyo2wtzpn45h0xud6ti	MWY5M2EzNzhmOGYyMzk4MGUwNDExYWEyMWE1YTFkYmE0NzIzNmJhZTp7ImNhcnRfaWQiOjgwNX0=	2019-08-06 05:51:52.752023+00
epqv966d6g17jtzuh7oatlthtevwhusw	OTVlMzZjOTRkOGU3ZmRkZTJhMzI0MWVmNTIxZjE1NzEzMTRkMTcwOTp7ImNhcnRfaWQiOjgwNn0=	2019-08-06 05:52:03.505425+00
m02u8q6nem4yvbmc9n48qt21h008xpp1	NDIxODdhOTZiNGMyOGJkYzI0ZDlhNDZmODEyMWU2OTFlODJlMzMyZTp7ImNhcnRfaWQiOjgwN30=	2019-08-06 05:52:06.458662+00
h0v6c9o69i2tx31shogehsm109158aj3	NzE1MTE3YmVkMmU2MGNlZjFjMjk3ZGY4YzllNzdiMDg0M2U0M2QxZTp7ImNhcnRfaWQiOjgwOH0=	2019-08-06 05:52:10.819734+00
yp84g1blb6q28hu2hyldvjltegwrg44q	OGNiOWE2NzdlNmI5NWFiN2Q4YTJmNDM0ZjkxNDk0NjViMzJkODRmMTp7ImNhcnRfaWQiOjgwOX0=	2019-08-06 05:52:12.456303+00
9p416te3dl5g6zuyph60vzpce8txc2sb	YTg4OTJiOGY5NGFjYWY2ZmNmNDAzNWMyNGE4NmUxZjliOTExNmRiOTp7ImNhcnRfaWQiOjgxMH0=	2019-08-06 05:52:13.904419+00
80okgawzt8i9hi60qwexj411lyuvumf0	NzZkYWQ3ZWZiYWUzOGNkNWM1N2VlMDI3MmJiMTkzMGFjYjJhYTQ0OTp7ImNhcnRfaWQiOjgxMX0=	2019-08-06 05:52:14.139851+00
4w4trfmhi58gagl86nwczl1qvvj8hrm3	YTNmOGY5MTRlYjNjNDVhYjg3NWQwNWMzY2Y4YTY0ZDg0MTgwMWE2ODp7ImNhcnRfaWQiOjgxMn0=	2019-08-06 05:52:15.567005+00
wwd0ssmca9njyc9qsi23veuo5lr07zgf	NzZiNGEyNDQxNGI2NzQxN2ViZWFhMzgxOTdkZDRiYWU4ZDI1MzUxMDp7ImNhcnRfaWQiOjgxM30=	2019-08-06 05:52:15.764041+00
hggcin6rpxa7dgnvak3waqpy5w6sc348	MGYxN2Q3ZWVkMGEwNDM2OTVjNDA3ZGI2NzYxYjQyM2UyYmJmZGIwMjp7ImNhcnRfaWQiOjgxNH0=	2019-08-06 05:52:17.342488+00
8x7ukyu1dugb0n8b7r6khx4tqgcvyz27	YTEzNDk4YTk1ZGJjYzg1NmRhZmM3OWIxODJmNTUxZTBiNTE3NjhmNDp7ImNhcnRfaWQiOjgxNX0=	2019-08-06 05:52:18.434554+00
mouqq6yrgpwcj409x6ki3ykmg1b3vmaf	OTFjOTQzMGE0ZGZjMjFjMzczMGNiMzk5Y2M5NjY5NzMwN2RlNDVlZDp7ImNhcnRfaWQiOjgxNn0=	2019-08-06 05:52:18.997502+00
s1ubzkfauf8yru9y243j1qnhg7potjgi	MjAyNzczZTZiY2UwOWUzN2EyNzY3NWI1YTAyYWJhY2I1ZGEzOGUxMjp7ImNhcnRfaWQiOjgxN30=	2019-08-06 05:52:21.26704+00
zdr28xhy9f4x0hrjvyfpkrd8caa0bymg	Mjk4YWZjYmJkNzI2NDU0NTMxNDY3NzUxN2NhOTQ1ODc3OTBiYzRjZDp7ImNhcnRfaWQiOjgxOH0=	2019-08-06 05:52:24.720583+00
mf9okv8rm33u5jzsivpt3g50o2n2gd76	NjM5NWQxZjc5NzM4NjQwMTNmNzE1NzcyYzdjZTg2YWUwM2JlMGRmMzp7ImNhcnRfaWQiOjgxOX0=	2019-08-06 05:52:27.340153+00
o6k2k9eiuq5tve0p4q2zy3y4gy688hsv	ZjY5ODY2ZGMxZTE2ZjEzYzUyNjQ4ZDQ4MjI1NTQzMzA2NDQ4NWQ5MDp7ImNhcnRfaWQiOjgyMH0=	2019-08-06 05:52:27.980548+00
kqikxvytkenzveoe4bflwl7gk6btndmn	NmFlODBiZTEyZjg3YjUxOTliM2UzMzdjMWE0MGNmZTlkOTJkYzhlNzp7ImNhcnRfaWQiOjgyMX0=	2019-08-06 05:52:31.326219+00
jhn4wak1yoatbe70jp1uwmyb9g9v8ebs	YzhlZGJhYjQzYjJjMGI1MDVkMjQzNDM2YjQzMmM5ZDhjMjhhZmE3MDp7ImNhcnRfaWQiOjgyMn0=	2019-08-06 05:52:31.589371+00
rmwank01gxsh6suors72h5v6lrlzsbbg	YzY5Y2FlNmY5NzYzMjYyYjUwNWIwMjc4MzFkMDc3MGRmOTk2MzE2ZTp7ImNhcnRfaWQiOjgyM30=	2019-08-06 05:52:35.00105+00
xijmghvbl913k2y63a4mattdbqy5gh09	NDI0ZTdlM2Y3YjZkNDIzYmQ2MDMxZDE5YTYwMDE5MTBhYjM4OTQxNjp7ImNhcnRfaWQiOjgyNH0=	2019-08-06 05:52:37.449593+00
qgyucuigbn20ui0x3f5cduo254bf6l68	OWVhZTc2YjhhMjc4NDU4Nzk4NTkzZTNlNzcyYWRmZWQ1MDI2ODFhZTp7ImNhcnRfaWQiOjgyNX0=	2019-08-06 05:52:38.797006+00
p2i48s3tq0rark3kuybmlozd1lkk6c6j	NDhjOGQ5ZjEyNDdlNGUzN2ExMjUwNWFkNzlhM2UxMzdmMDU5Yzc1ZTp7ImNhcnRfaWQiOjgyNn0=	2019-08-06 05:52:40.756193+00
lvmarp2red9suoquxcuilataxecx0wrc	YzI4ZDFkYmNjOTE5MjM1YTBmYWFmMTUwNDZjMTEzMWRiOWE1MmYxZTp7ImNhcnRfaWQiOjgyN30=	2019-08-06 05:52:41.555235+00
f37lkf2qospfte2q0l3990xzrcjgmk74	MmNhMWI1MWVlNWNjZWQ4ODMwOGFjMWU5MTBkNTdlYzEzNmEyNjU3ODp7ImNhcnRfaWQiOjgyOH0=	2019-08-06 05:52:42.437635+00
s9l6fhaw224ij6zyuqinvk1c0behlxi8	M2ZmNDgyOTQ1ZjkyN2I0YzdmZjMxOTY4ODA2NTExZmE1ZjVkMmRkMTp7ImNhcnRfaWQiOjgyOX0=	2019-08-06 05:52:42.929429+00
cc5xnnmokag05w2zlp7zdaoh926qkntl	ZTc4MGJmMDBhY2FkNzAyY2E4MGEwZmJhNDUwYTRmYWM5NTYzNmNlMjp7ImNhcnRfaWQiOjgzMH0=	2019-08-06 05:52:45.143202+00
8g16rd8yt8z9v285azae3w3uog3x2uy5	NzVjN2RlYTM0OGViNDU3NDBjNzIzNTJhNDY1YmRkZTM5NzdmMTFjYjp7ImNhcnRfaWQiOjgzMX0=	2019-08-06 05:52:45.710315+00
riq92fh2p0c7w29tczi6seoqsw9hf8fh	NmExMDExMTBiMzBjNzY0MzM5Y2Y1ZjRlYTUxN2E0MmZmOWFlZjFhYTp7ImNhcnRfaWQiOjgzMn0=	2019-08-06 05:52:46.756616+00
xnuewvomq5zsb9kyahj3hccbknnm2ik1	NmIxZjE0MzhmMDdjZWJkM2Q4YmRlNDYzYjY3Njc5MWNjNTMyMjNmYTp7ImNhcnRfaWQiOjgzM30=	2019-08-06 05:52:48.515921+00
ugpiz4v9mu2be4rd9rakb5ps8hh4lmas	MTNlNGQzMjQwYjFhYzMwZjE2MWUzMmNhNjY2YzgzZGNjY2I3MjZkYjp7ImNhcnRfaWQiOjgzNH0=	2019-08-06 05:52:49.522229+00
cc1s8f1s9uxw2aqm3lxj0r7dgse6ipim	NzliNjM2MTQ3NDEzOTNlMTI5ZWYwYzk4Y2UwYTJhYzliZjM3MGMyNzp7ImNhcnRfaWQiOjgzNX0=	2019-08-06 05:52:51.306899+00
qco0vmxvvpghprb7fj29a4b2v4bqj2au	MTU0YmQxZjFkNjNiYzFjNWM5ZjE2MzQxNDY0NDAxYTgxMDBmYTNjZjp7ImNhcnRfaWQiOjgzNn0=	2019-08-06 05:52:52.365047+00
7f2rsohtkgky0ao2u6orllr2qrm19eaa	YWU2ZTIwYzBiNDM5NTMzMDJmNjA2Y2I1NWRmMDJmNjgzNjJmZDg5Zjp7ImNhcnRfaWQiOjgzN30=	2019-08-06 05:52:52.933721+00
m3pppey6zwwqfbvjugjwold95vv3ivrw	MGYyOTVmZDU2ZTFiZjNlNjcxMzJhOTdhZWI1MDFhYTJkNDczZjU4ODp7ImNhcnRfaWQiOjgzOH0=	2019-08-06 05:52:54.243197+00
7uim7xw0lioio4ybwxqnhdcvl7b8coh2	MmI5YmJhMzU3ZTJhZTIzZTZhZDAwNWFhNWY2ZWU2NWZkM2JkNjZkYzp7ImNhcnRfaWQiOjgzOX0=	2019-08-06 05:52:55.183168+00
olu93yy65hmdj4hz7jv2wdxlnhaeafg0	OWFhMzY5ZmZhZGZhYmUxNGIwMGI2MGM2NWU5OTUxODE1MjgyZmIyZjp7ImNhcnRfaWQiOjg0MH0=	2019-08-06 05:52:56.503917+00
i9jo78tpskqdp2ucyweojkaleu4nx924	NzAxNTE0ZDc1ZWU3OGY5NmQzNDZjZDVlNzQ5ZDJmNjIxNWIzZWI3NTp7ImNhcnRfaWQiOjg0MX0=	2019-08-06 05:52:56.925309+00
jq2ct35jglgjv7j4prow52vew990wpne	ZDZmZTRhMTEzMGUwMzQ1MzQxNWNhY2U2YjFiMGY5M2U2YTVlYzZlMzp7ImNhcnRfaWQiOjg0Mn0=	2019-08-06 05:52:57.54385+00
zopk6u07enxziw7wucmlln5i1orjg1xc	NTI1YjA0MTgxYzFhZjI5NjA0YTQ1Yzk5MzIxZGFkOGJjNTMwNGE4ZTp7ImNhcnRfaWQiOjg0M30=	2019-08-06 05:52:58.289657+00
yuw7acj1f9mf1xanjg91hhv9naqwyvrs	MjZmNjk0MGUyNTAxMmE2OWIxM2E5ZDc4OTY3OGNlMDZkY2YzZTU1Yzp7ImNhcnRfaWQiOjg0NH0=	2019-08-06 05:53:00.383603+00
2qfoj96xx9h77v98k3nkqi4rp5fxd40s	MjRjZTZmNWQ3MWJhZjRlOTVhYWQ2MjIwZjkwMGVkODljMzc5ZTllNTp7ImNhcnRfaWQiOjg0NX0=	2019-08-06 05:53:01.847476+00
lt9dhi882rm4sg7esvla9fpauzpolnvp	ZDMxMWRlNTc4ZjYzOWQyYmYwNmEzYzViYmE1NDZkZTIzNDEzYjJhNTp7ImNhcnRfaWQiOjg0Nn0=	2019-08-06 06:04:37.389642+00
zaho7bwkmqmk6fvvl78xn62qyv82o10x	ODNiZWZmMmQ2NzViMTcxZDViNWMwYTIzMzY2NmM3MDE3YjMzZjY0NTp7ImNhcnRfaWQiOjg0N30=	2019-08-06 06:19:05.395895+00
\.


--
-- Data for Name: main_area; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.main_area (id, name, pincode, latitude, longitude, city_id) FROM stdin;
\.


--
-- Name: main_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.main_area_id_seq', 1, false);


--
-- Data for Name: main_city; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.main_city (id, name, state_id) FROM stdin;
1	Noida	1
2	Delhi	3
\.


--
-- Name: main_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.main_city_id_seq', 2, true);


--
-- Data for Name: main_country; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.main_country (id, name) FROM stdin;
1	India
\.


--
-- Name: main_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.main_country_id_seq', 1, true);


--
-- Data for Name: main_state; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.main_state (id, name, country_id) FROM stdin;
1	Uttar Pradesh	1
2	Delhi	1
3	Delhi	1
\.


--
-- Name: main_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.main_state_id_seq', 3, true);


--
-- Data for Name: order_order; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.order_order (id, status, remark, date, quantity, discount, tax, total, product_id, user_id, user_address_id) FROM stdin;
\.


--
-- Name: order_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.order_order_id_seq', 1, false);


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_category (id, name, "timestamp") FROM stdin;
1	Gold	2019-04-19 14:22:00.283+00
2	Silver	2019-04-19 14:22:06.322+00
3	Platinum	2019-04-19 14:22:11.603+00
4	Diamond	2019-04-19 14:22:31.306+00
5	Gemstone	2019-04-19 14:22:36.746+00
6	Tools and Utility	2019-04-19 14:24:46.35+00
7	Fashion Jewellery	2019-06-14 18:04:01.50873+00
\.


--
-- Name: product_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_category_id_seq', 7, true);


--
-- Data for Name: product_claritytable; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_claritytable (id, name, description) FROM stdin;
3	VS 1	
4	IF	
5	VVS2	
2	VVS 1	
6	VS 2	
7	SI1	
8	SI2	
9	I1	
10	I2	
11	I3	
\.


--
-- Name: product_claritytable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_claritytable_id_seq', 11, true);


--
-- Data for Name: product_colortable; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_colortable (id, name, description) FROM stdin;
2	D	
3	E	
4	F	
5	G	
6	H	
7	I	
8	J	
9	K	
10	L	
11	M	
12	N	
13	D-F	
\.


--
-- Name: product_colortable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_colortable_id_seq', 13, true);


--
-- Data for Name: product_cuttable; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_cuttable (id, name, description) FROM stdin;
1	cut1	
\.


--
-- Name: product_cuttable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_cuttable_id_seq', 1, true);


--
-- Data for Name: product_material; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_material (id, name, description) FROM stdin;
1	mat1	
\.


--
-- Name: product_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_material_id_seq', 1, true);


--
-- Data for Name: product_pricetable; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_pricetable (id, name, price, unit_gm, updated_at) FROM stdin;
3	Platinum	300000.00	100	2019-06-18 03:39:58.494816+00
2	Silver	38000.00	1000	2019-06-18 02:57:03.631423+00
1	Gold	34250.00	10	2019-06-18 02:56:37.205574+00
\.


--
-- Name: product_pricetable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_pricetable_id_seq', 3, true);


--
-- Data for Name: product_product; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_product (id, name, product_code, metal, stone, diamond, tax, discount, additional_charges, specification, description, status, "MRP", image, "timestamp", updated, height, width, rating, category_id, sub_category_id, user_id) FROM stdin;
2	Bangles	\N	\N	\N	\N	3.00	5.00	0	{"specification": []}		f	7650	product/20190624171201296302.jpg	2019-06-24 11:42:01.337893+00	2019-06-24 11:42:01.337944+00	0.000	0.000	0.00	7	\N	15
3	Bracelets	\N	\N	\N	\N	3.00	7.00	0	{"specification": []}		f	5500	product/20190624171510347433.jpg	2019-06-24 11:45:10.349169+00	2019-06-24 11:45:10.349208+00	0.000	0.000	0.00	7	\N	15
4	Bangle	\N	\N	\N	\N	3.00	8.00	0	{"specification": []}		f	8500	product/20190625213619705334.jpg	2019-06-25 16:06:19.706884+00	2019-06-25 16:06:19.706925+00	0.000	0.000	0.00	7	\N	15
5	Bangle 05	\N	\N	\N	\N	3.00	4.00	0	{"specification": []}		f	6500	product/20190625213857572756.jpg	2019-06-25 16:08:57.574685+00	2019-06-25 16:08:57.574724+00	0.000	0.000	0.00	7	\N	15
6	Bangle DC06	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	5700	product/20190625214005202198.jpg	2019-06-25 16:10:05.204153+00	2019-06-25 16:10:05.204187+00	0.000	0.000	0.00	7	\N	15
7	Bangle DC 07	\N	\N	\N	\N	3.00	12.00	0	{"specification": []}		f	5800	product/20190625214102280304.jpg	2019-06-25 16:11:02.282283+00	2019-06-25 16:11:02.282319+00	0.000	0.000	0.00	6	\N	15
8	Bangle DC 08	\N	\N	\N	\N	3.00	15.00	0	{"specification": []}		f	8000	product/20190625214223561770.jpg	2019-06-25 16:12:23.562887+00	2019-06-25 16:12:23.56292+00	0.000	0.000	0.00	7	\N	15
9	Bangle DC 09	\N	\N	\N	\N	3.00	12.00	0	{"specification": []}		f	9000	product/20190625214301169792.jpg	2019-06-25 16:13:01.170655+00	2019-06-25 16:13:01.170691+00	0.000	0.000	0.00	7	\N	15
10	Bangle DC 10	\N	\N	\N	\N	3.00	6.00	0	{"specification": []}		f	5600	product/20190625214405369710.jpg	2019-06-25 16:14:05.370516+00	2019-06-25 16:14:05.370549+00	0.000	0.000	0.00	7	\N	15
11	Bangle DC 11	\N	\N	\N	\N	3.00	6.00	0	{"specification": []}		f	6800	product/20190625214457569280.jpg	2019-06-25 16:14:57.57009+00	2019-06-25 16:14:57.570126+00	0.000	0.000	0.00	7	\N	15
12	Bangle DC 12	\N	\N	\N	\N	3.00	10.00	0	{"specification": []}		f	3900	product/20190625214537254367.jpg	2019-06-25 16:15:37.255232+00	2019-06-25 16:15:37.255267+00	0.000	0.000	0.00	7	\N	15
13	Bridal Necklace 01	\N	\N	\N	\N	3.00	10.00	0	{"specification": []}		f	8000	product/20190625214852504187.jpg	2019-06-25 16:18:52.505113+00	2019-06-25 16:18:52.505145+00	0.000	0.000	0.00	7	\N	15
14	Bridal Necklace 02	\N	\N	\N	\N	3.00	8.00	0	{"specification": []}		f	8999	product/20190625215547646952.jpg	2019-06-25 16:25:47.64775+00	2019-06-25 16:25:47.647786+00	0.000	0.000	0.00	7	\N	15
15	Bridal Necklace 03	\N	\N	\N	\N	3.00	12.00	0	{"specification": []}		f	8000	product/20190625215725053372.jpg	2019-06-25 16:27:25.054187+00	2019-06-25 16:27:25.05422+00	0.000	0.000	0.00	7	\N	15
16	Bridal Set 04	\N	\N	\N	\N	3.00	8.00	0	{"specification": []}		f	9999	product/20190625215837932973.jpg	2019-06-25 16:28:37.933705+00	2019-06-25 16:28:37.933739+00	0.000	0.000	0.00	7	\N	15
17	Bridal Necklace 05	\N	\N	\N	\N	3.00	6.00	0	{"specification": []}		f	6800	product/20190625220013344386.jpg	2019-06-25 16:30:13.345215+00	2019-06-25 16:30:13.345251+00	0.000	0.000	0.00	7	\N	15
18	Bridal Necklace 09	\N	\N	\N	\N	3.00	6.00	0	{"specification": []}		f	7800	product/20190625220125974934.jpg	2019-06-25 16:31:25.975833+00	2019-06-25 16:31:25.975864+00	0.000	0.000	0.00	7	\N	15
19	Bridal Necklace 13	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	8999	product/20190625220235078376.jpg	2019-06-25 16:32:35.079147+00	2019-06-25 16:32:35.079185+00	0.000	0.000	0.00	7	\N	15
20	Bridal necklace 14	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	9000	product/20190625220349751956.jpg	2019-06-25 16:33:49.752848+00	2019-06-25 16:33:49.752885+00	0.000	0.000	0.00	7	\N	15
21	Bridal necklace 15	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	9000	product/20190625220433285743.jpg	2019-06-25 16:34:33.286463+00	2019-06-25 16:34:33.286498+00	0.000	0.000	0.00	7	\N	15
22	Bridal Necklace 16	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	9000	product/20190625220549461518.jpg	2019-06-25 16:35:49.462305+00	2019-06-25 16:35:49.462339+00	0.000	0.000	0.00	7	\N	15
23	Bridal Necklace 17	\N	\N	\N	\N	3.00	3.00	0	{"specification": []}		f	7000	product/20190625220724833694.jpg	2019-06-25 16:37:24.834289+00	2019-06-25 16:37:24.834319+00	0.000	0.000	0.00	7	\N	15
24	Bridal necklace 18	\N	\N	\N	\N	3.00	3.00	0	{"specification": []}		f	8999	product/20190625220845584100.jpg	2019-06-25 16:38:45.584778+00	2019-06-25 16:38:45.584813+00	0.000	0.000	0.00	7	\N	15
25	Bridal Necklace 20	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	8900	product/20190625220959924885.jpg	2019-06-25 16:39:59.925554+00	2019-06-25 16:39:59.925591+00	0.000	0.000	0.00	7	\N	15
26	Bangles DC 30	\N	\N	\N	\N	3.00	5.00	0	{"specification": []}		f	5600	product/20190625221115749652.jpg	2019-06-25 16:41:15.750442+00	2019-06-25 16:41:15.750475+00	0.000	0.000	0.00	7	\N	15
27	Bangles dc 31	\N	\N	\N	\N	3.00	10.00	0	{"specification": []}		f	4500	product/20190625221321005882.jpg	2019-06-25 16:43:21.007079+00	2019-06-25 16:43:21.007119+00	0.000	0.000	0.00	7	\N	15
28	Bangles dc 33	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	3800	product/20190625221421384892.jpg	2019-06-25 16:44:21.3857+00	2019-06-25 16:44:21.385734+00	0.000	0.000	0.00	7	\N	15
29	Bangle dc 33	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	4600	product/20190625221602034896.jpg	2019-06-25 16:46:02.035704+00	2019-06-25 16:46:02.035739+00	0.000	0.000	0.00	7	\N	15
30	Bangles dc 35	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	10000	product/20190625221757843248.jpg	2019-06-25 16:47:57.844051+00	2019-06-25 16:47:57.844084+00	0.000	0.000	0.00	7	\N	15
31	Bangles dc 039	\N	\N	\N	\N	3.00	0.00	0	{"specification": []}		f	5000	product/20190625222311929048.jpg	2019-06-25 16:53:11.92982+00	2019-06-25 16:53:11.929853+00	0.000	0.000	0.00	7	\N	15
32	Diamond bangle 01	\N	{"name": "Gold", "net_weight": "12.250", "metal_totol": "467141.865", "gross_weight": "12.450", "metal_labour": "90356.49", "metal_sub_totol": "466841.865", "labour_percentage": "18", "purity_percentage": "75", "additional_charges": "300"}	{"stone": []}	{"diamond": [{"name": "Round Brilliant cut", "polish": "Excellent", "symmetry": "Excellent", "cut_grade": "Excellent", "fluorescence": "Faint"}, {"number": "30"}]}	0.00	0.00	0	{"specification": []}		f	1	product/20190703214550810883.jpg	2019-07-03 16:15:50.81223+00	2019-07-03 16:15:50.812271+00	0.000	0.000	0.00	1	4	14
33	Diamond Bangles 02	\N	{"name": "Gold", "net_weight": "29.300", "gross_weight": "30.500", "labour_percentage": "15", "purity_percentage": "75", "additional_charges": "500"}	{"stone": [{"color": "J", "clarity": "SI1"}]}	{"diamond": [{"name": "Round Brilliant cut", "carat": "6.01", "color": "J", "polish": "Excellent", "clarity": "SI1", "symmetry": "Excellent", "cut_grade": "Excellent", "fluorescence": "Faint", "price_per_carat": "57000"}, {"number": "257"}]}	3.00	0.00	0	{"specification": []}		f	1	product/20190703220607114716.jpg	2019-07-03 16:36:07.115402+00	2019-07-03 16:36:07.115435+00	0.000	0.000	0.00	1	\N	14
\.


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_product_id_seq', 33, true);


--
-- Data for Name: product_product_store; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_product_store (id, product_id, store_id) FROM stdin;
2	2	4
3	3	4
4	4	4
5	5	4
6	6	4
7	7	4
8	8	4
9	9	4
10	10	4
11	11	4
12	12	4
13	13	4
14	14	4
15	15	4
16	16	4
17	17	4
18	18	4
19	19	4
20	20	4
21	21	4
22	22	4
23	23	4
24	24	4
25	25	4
26	26	4
27	27	4
28	28	4
29	29	4
30	30	4
31	31	4
32	32	5
33	33	5
\.


--
-- Name: product_product_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_product_store_id_seq', 33, true);


--
-- Data for Name: product_productimage; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_productimage (id, image, product_id) FROM stdin;
\.


--
-- Name: product_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_productimage_id_seq', 1, false);


--
-- Data for Name: product_subcategory; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.product_subcategory (id, name, "timestamp", category_id) FROM stdin;
1	Necklaces	2019-04-17 19:10:44.834+00	1
2	Chains	2019-04-17 19:11:06.088+00	1
3	Rings	2019-04-17 19:11:14.889+00	1
4	Bangles	2019-04-17 19:11:23.562+00	1
5	Necklaces	2019-04-17 19:11:43.529+00	2
6	Rings	2019-04-17 19:11:52.467+00	2
7	Bangles	2019-04-17 19:12:00.531+00	2
8	Payals	2019-04-17 19:12:16.868+00	2
9	Teeka	2019-04-17 19:12:23.451+00	2
10	Love Bands	2019-04-17 19:12:40.144+00	3
11	Pendants	2019-04-17 19:12:52.008+00	3
12	Ruby	2019-04-17 19:13:06.228+00	4
13	Coral	2019-04-17 19:13:17.826+00	4
14	Pearls	2019-04-17 19:13:27.951+00	4
15	Books	2019-04-17 19:13:49.951+00	6
16	Machines	2019-04-17 19:14:03.926+00	6
17	Scales	2019-04-17 19:14:12.947+00	6
18	earing	2019-06-14 18:51:52.822564+00	1
19	Necklace	2019-06-17 07:20:23.382+00	1
\.


--
-- Name: product_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.product_subcategory_id_seq', 19, true);


--
-- Data for Name: ui_banner; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.ui_banner (id, name, identity, description, image, "timestamp", updated) FROM stdin;
1	Banner 1 - Small	Banner1Small		banner/20190614104221014879.jpg	2019-06-14 05:12:21.015408+00	2019-04-13 04:12:45.958+00
2	Banner 2 - Small	Banner2Small		banner/20190614104242544437.jpg	2019-06-14 05:12:42.544854+00	2019-04-13 04:13:11.314+00
3	Banner 3 - Small	Banner3Small		banner/20190614104254444132.jpg	2019-06-14 05:12:54.444514+00	2019-04-13 04:14:59.27+00
4	Banner 4 - Small	Banner4Small		banner/20190614104303666227.jpg	2019-06-14 05:13:03.666899+00	2019-04-13 04:15:26.75+00
5	Banner 5 - Large	Banner5Large		banner/20190614104314814009.jpg	2019-06-14 05:13:14.814475+00	2019-04-13 04:16:18.257+00
\.


--
-- Name: ui_banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.ui_banner_id_seq', 5, true);


--
-- Data for Name: ui_bestcollection; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.ui_bestcollection (id, updated, product_id) FROM stdin;
1	2019-07-03 17:14:43.898222+00	2
2	2019-07-03 17:14:54.354232+00	6
3	2019-07-03 17:15:03.653977+00	13
4	2019-07-03 17:15:12.379776+00	22
5	2019-07-03 17:15:22.24232+00	28
\.


--
-- Name: ui_bestcollection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.ui_bestcollection_id_seq', 5, true);


--
-- Data for Name: ui_bestseller; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.ui_bestseller (id, updated, product_id) FROM stdin;
1	2019-07-03 16:57:29.440148+00	9
2	2019-07-03 16:57:53.933386+00	13
3	2019-07-03 16:58:06.457365+00	28
4	2019-07-03 16:58:28.502871+00	30
5	2019-07-03 16:58:45.335103+00	31
\.


--
-- Name: ui_bestseller_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.ui_bestseller_id_seq', 5, true);


--
-- Data for Name: ui_featured; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.ui_featured (id, updated, product_id) FROM stdin;
2	2019-07-03 16:49:15.217876+00	6
3	2019-07-03 16:49:28.095944+00	18
4	2019-07-03 16:49:40.823721+00	3
5	2019-07-03 16:49:50.442977+00	24
6	2019-07-03 16:50:55.758091+00	32
7	2019-07-03 16:51:15.220199+00	16
\.


--
-- Name: ui_featured_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.ui_featured_id_seq', 7, true);


--
-- Data for Name: ui_newarrival; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.ui_newarrival (id, updated, product_id) FROM stdin;
1	2019-07-03 16:51:52.485352+00	8
2	2019-07-03 16:52:02.550652+00	22
3	2019-07-03 16:52:13.158023+00	32
4	2019-07-03 16:52:25.37604+00	23
5	2019-07-03 16:52:36.55996+00	14
6	2019-07-03 16:52:49.532522+00	26
\.


--
-- Name: ui_newarrival_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.ui_newarrival_id_seq', 6, true);


--
-- Data for Name: ui_testimonial; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.ui_testimonial (id, name, text, description, image, "timestamp", updated) FROM stdin;
4	Yash Diamonds	It is really a wonderful platform to do quality business		banner/20190703231036551986.jpg	2019-07-03 17:40:36.552744+00	2019-07-03 17:20:31.025314+00
3	Kumkum Jewellers	This website has really opened new oppurtunities for me		banner/20190703231101652075.jpg	2019-07-03 17:41:01.654644+00	2019-07-03 17:19:48.533971+00
2	Baldev ji and sons	This site has really helped me to scaled my business.		banner/20190703231123815461.jpg	2019-07-03 17:41:23.81614+00	2019-07-03 17:18:49.17916+00
1	MS Mahalaxmi jewellers	This site is really an asset for B2B Business		banner/20190703231140970912.jpg	2019-07-03 17:41:40.971513+00	2019-07-03 17:17:47.398169+00
\.


--
-- Name: ui_testimonial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.ui_testimonial_id_seq', 4, true);


--
-- Data for Name: ui_trending; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.ui_trending (id, updated, product_id) FROM stdin;
1	2019-07-03 16:59:33.647928+00	4
2	2019-07-03 16:59:44.750712+00	9
3	2019-07-03 16:59:58.828564+00	11
4	2019-07-03 17:00:10.606415+00	19
5	2019-07-03 17:00:19.973003+00	24
6	2019-07-03 17:00:29.75024+00	30
\.


--
-- Name: ui_trending_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.ui_trending_id_seq', 6, true);


--
-- Data for Name: user_appointment; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.user_appointment (id, "time", status, "timestamp", app_to_id, user_id) FROM stdin;
\.


--
-- Name: user_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.user_appointment_id_seq', 1, false);


--
-- Data for Name: user_companyprofile; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.user_companyprofile (id, name, gst, pincode, area, address_1, address_2, landmark, description, city_id, country_id, state_id, user_id) FROM stdin;
1	THE GEMS STONE	11223	2113	SOME	SOME ADDRESS11		\N		2	1	2	5
2	The jewellery boutique	9878656789	110001	delhi	12 , old delhi		\N		2	1	2	15
3	Hiranya Jewelart	8767894542	110032	delhi	meerut		\N		2	1	1	14
\.


--
-- Name: user_companyprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.user_companyprofile_id_seq', 3, true);


--
-- Data for Name: user_store; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.user_store (id, image, name, pincode, area, address_1, address_2, description, city_id, country_id, state_id, user_id) FROM stdin;
3		thegemstonelounge	110001	karol bagh	main road karol bagh			2	1	2	5
4		The JEWELLERY BOUTIQUE	110001	karol bagh	main road karol bagh			2	1	2	15
5		Hiranya Jewelart	110001	delhi	main road karol bagh			2	1	2	14
\.


--
-- Name: user_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.user_store_id_seq', 5, true);


--
-- Data for Name: user_user; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.user_user (id, password, last_login, is_superuser, email, first_name, last_name, user_type, is_staff, mobile, dob, date_joined, is_active, avatar, is_verified) FROM stdin;
4	pbkdf2_sha256$120000$eBCFpRF6oFze$LdxeUF3ZiXf5FDE2sfrUQrV7RsztvofveZ+1W8a+JdI=	2019-07-03 17:24:12.93863+00	t	admin@a.com	\N	\N	seller	t	\N	\N	2019-05-26 10:22:52.614753+00	t		t
17	pbkdf2_sha256$120000$tRH86oeXraTK$GuPkN/cC4Kax5uw/ZmzQQ14l1FagtzicRLDX3RFdoNg=	\N	f	sujitsingh1001@GMAIL.COM	\N	\N	seller	f	\N	\N	2019-07-11 11:02:58.671124+00	f		f
15	pbkdf2_sha256$120000$xPI6w7gx8Wnm$L67TqL3tBnaYspAax9zrfvsukKG43AJSwLZAkEWDGog=	2019-06-24 11:32:40.438906+00	f	BS.SARAFF@GMAIL.COM	\N	\N	seller	f	\N	\N	2019-06-24 11:23:24.942381+00	t		t
13	pbkdf2_sha256$120000$6G3HS1PaAbLc$NO/0mhN2gLsDqGZQqJP4UFg+tBoTJ7wByeSOP4Du+OI=	\N	f	kesharvani99@gmail.com	\N	\N	seller	f	\N	\N	2019-06-15 19:09:22.94806+00	t		f
5	pbkdf2_sha256$120000$yVIyKG2v5wd6$NzfMp7k0QCnqCmZaEI3qZ8cHn8uOQickTVhsdGV0EEs=	2019-06-17 21:03:36.475978+00	f	thegemstonelounge@gmail.com	\N	\N	seller	f	\N	\N	2019-06-12 14:22:58.52346+00	t		t
16	pbkdf2_sha256$120000$ngRnJUWoNvNJ$lRjCEefTxkIZoOHnVso+XRji7pvA9CGmKNf0JyaNnRQ=	2019-06-28 12:21:53.190442+00	f	ps53968@gmail.com	\N	\N	seller	f	\N	\N	2019-06-28 12:21:05.935738+00	t		f
14	pbkdf2_sha256$120000$Y37KHiYo9j7u$st6R8Sgj4xjhTdmyALZ2Xc8sAfrNlTSJ7HTXI4mmVug=	2019-07-03 15:26:49.444214+00	f	hiranyajewelart@gmail.com	\N	\N	seller	f	\N	\N	2019-06-17 07:14:56.186645+00	t		t
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.user_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: user_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.user_user_id_seq', 17, true);


--
-- Data for Name: user_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.user_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: user_useraddress; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.user_useraddress (id, pincode, area, address_1, address_2, landmark, city_id, country_id, state_id, user_id, active) FROM stdin;
\.


--
-- Name: user_useraddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.user_useraddress_id_seq', 1, false);


--
-- Data for Name: user_usertoken; Type: TABLE DATA; Schema: public; Owner: goldgali_user
--

COPY public.user_usertoken (id, token, token_type, active, created_at, user_id, expire_date) FROM stdin;
1	93eaa168-8d1d-11e9-a235-42010aa00002	1	f	2019-06-12 14:22:58.671836+00	5	2019-06-13 14:22:58.67125+00
9	15c91040-8fa1-11e9-a235-42010aa00002	1	t	2019-06-15 19:09:22.952169+00	13	2019-06-16 19:09:22.951833+00
10	9c0dafd8-90cf-11e9-a235-42010aa00002	1	t	2019-06-17 07:14:56.22956+00	14	2019-06-18 07:14:56.229045+00
11	7b418858-9672-11e9-a235-42010aa00002	1	t	2019-06-24 11:23:24.9854+00	15	2019-06-25 11:23:24.984841+00
12	33e91090-999f-11e9-a235-42010aa00002	1	t	2019-06-28 12:21:06.128382+00	16	2019-06-29 12:21:06.127892+00
13	7160ed90-a3cb-11e9-a235-42010aa00002	1	f	2019-07-11 11:02:58.738684+00	17	2019-07-12 11:02:58.738225+00
\.


--
-- Name: user_usertoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goldgali_user
--

SELECT pg_catalog.setval('public.user_usertoken_id_seq', 13, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: cart_cart cart_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);


--
-- Name: cart_cartproduct cart_cartproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cartproduct_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: main_area main_area_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_area
    ADD CONSTRAINT main_area_pkey PRIMARY KEY (id);


--
-- Name: main_city main_city_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_city
    ADD CONSTRAINT main_city_pkey PRIMARY KEY (id);


--
-- Name: main_country main_country_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_country
    ADD CONSTRAINT main_country_pkey PRIMARY KEY (id);


--
-- Name: main_state main_state_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_state
    ADD CONSTRAINT main_state_pkey PRIMARY KEY (id);


--
-- Name: order_order order_order_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_pkey PRIMARY KEY (id);


--
-- Name: product_category product_category_name_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_name_key UNIQUE (name);


--
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (id);


--
-- Name: product_claritytable product_claritytable_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_claritytable
    ADD CONSTRAINT product_claritytable_pkey PRIMARY KEY (id);


--
-- Name: product_colortable product_colortable_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_colortable
    ADD CONSTRAINT product_colortable_pkey PRIMARY KEY (id);


--
-- Name: product_cuttable product_cuttable_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_cuttable
    ADD CONSTRAINT product_cuttable_pkey PRIMARY KEY (id);


--
-- Name: product_material product_material_name_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_material
    ADD CONSTRAINT product_material_name_key UNIQUE (name);


--
-- Name: product_material product_material_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_material
    ADD CONSTRAINT product_material_pkey PRIMARY KEY (id);


--
-- Name: product_pricetable product_pricetable_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_pricetable
    ADD CONSTRAINT product_pricetable_pkey PRIMARY KEY (id);


--
-- Name: product_product product_product_name_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_name_key UNIQUE (name);


--
-- Name: product_product product_product_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);


--
-- Name: product_product product_product_product_code_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_product_code_key UNIQUE (product_code);


--
-- Name: product_product_store product_product_store_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product_store
    ADD CONSTRAINT product_product_store_pkey PRIMARY KEY (id);


--
-- Name: product_product_store product_product_store_product_id_store_id_26ddc178_uniq; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product_store
    ADD CONSTRAINT product_product_store_product_id_store_id_26ddc178_uniq UNIQUE (product_id, store_id);


--
-- Name: product_productimage product_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_productimage
    ADD CONSTRAINT product_productimage_pkey PRIMARY KEY (id);


--
-- Name: product_subcategory product_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_subcategory
    ADD CONSTRAINT product_subcategory_pkey PRIMARY KEY (id);


--
-- Name: ui_banner ui_banner_identity_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_banner
    ADD CONSTRAINT ui_banner_identity_key UNIQUE (identity);


--
-- Name: ui_banner ui_banner_name_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_banner
    ADD CONSTRAINT ui_banner_name_key UNIQUE (name);


--
-- Name: ui_banner ui_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_banner
    ADD CONSTRAINT ui_banner_pkey PRIMARY KEY (id);


--
-- Name: ui_bestcollection ui_bestcollection_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_bestcollection
    ADD CONSTRAINT ui_bestcollection_pkey PRIMARY KEY (id);


--
-- Name: ui_bestseller ui_bestseller_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_bestseller
    ADD CONSTRAINT ui_bestseller_pkey PRIMARY KEY (id);


--
-- Name: ui_featured ui_featured_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_featured
    ADD CONSTRAINT ui_featured_pkey PRIMARY KEY (id);


--
-- Name: ui_newarrival ui_newarrival_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_newarrival
    ADD CONSTRAINT ui_newarrival_pkey PRIMARY KEY (id);


--
-- Name: ui_testimonial ui_testimonial_name_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_testimonial
    ADD CONSTRAINT ui_testimonial_name_key UNIQUE (name);


--
-- Name: ui_testimonial ui_testimonial_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_testimonial
    ADD CONSTRAINT ui_testimonial_pkey PRIMARY KEY (id);


--
-- Name: ui_trending ui_trending_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_trending
    ADD CONSTRAINT ui_trending_pkey PRIMARY KEY (id);


--
-- Name: user_appointment user_appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_appointment
    ADD CONSTRAINT user_appointment_pkey PRIMARY KEY (id);


--
-- Name: user_companyprofile user_companyprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_companyprofile
    ADD CONSTRAINT user_companyprofile_pkey PRIMARY KEY (id);


--
-- Name: user_store user_store_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_store
    ADD CONSTRAINT user_store_pkey PRIMARY KEY (id);


--
-- Name: user_user user_user_email_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_email_key UNIQUE (email);


--
-- Name: user_user_groups user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups user_user_groups_user_id_group_id_bb60391f_uniq; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq UNIQUE (user_id, group_id);


--
-- Name: user_user user_user_mobile_key; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_mobile_key UNIQUE (mobile);


--
-- Name: user_user user_user_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);


--
-- Name: user_useraddress user_useraddress_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_pkey PRIMARY KEY (id);


--
-- Name: user_usertoken user_usertoken_pkey; Type: CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_usertoken
    ADD CONSTRAINT user_usertoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: cart_cart_user_id_9b4220b9; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX cart_cart_user_id_9b4220b9 ON public.cart_cart USING btree (user_id);


--
-- Name: cart_cartproduct_cart_id_55d1af26; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX cart_cartproduct_cart_id_55d1af26 ON public.cart_cartproduct USING btree (cart_id);


--
-- Name: cart_cartproduct_product_id_7f6785a4; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX cart_cartproduct_product_id_7f6785a4 ON public.cart_cartproduct USING btree (product_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: main_area_city_id_891ceef4; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX main_area_city_id_891ceef4 ON public.main_area USING btree (city_id);


--
-- Name: main_city_state_id_f92848c7; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX main_city_state_id_f92848c7 ON public.main_city USING btree (state_id);


--
-- Name: main_state_country_id_83be6689; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX main_state_country_id_83be6689 ON public.main_state USING btree (country_id);


--
-- Name: order_order_product_id_fb1319ca; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX order_order_product_id_fb1319ca ON public.order_order USING btree (product_id);


--
-- Name: order_order_user_address_id_4e010541; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX order_order_user_address_id_4e010541 ON public.order_order USING btree (user_address_id);


--
-- Name: order_order_user_id_7cf9bc2b; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX order_order_user_id_7cf9bc2b ON public.order_order USING btree (user_id);


--
-- Name: product_category_name_905278b8_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_category_name_905278b8_like ON public.product_category USING btree (name varchar_pattern_ops);


--
-- Name: product_material_name_7d7b968e_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_material_name_7d7b968e_like ON public.product_material USING btree (name varchar_pattern_ops);


--
-- Name: product_product_category_id_0c725779; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_product_category_id_0c725779 ON public.product_product USING btree (category_id);


--
-- Name: product_product_name_04ac86ce_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_product_name_04ac86ce_like ON public.product_product USING btree (name varchar_pattern_ops);


--
-- Name: product_product_product_code_a51619e7_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_product_product_code_a51619e7_like ON public.product_product USING btree (product_code varchar_pattern_ops);


--
-- Name: product_product_store_product_id_f5e6f1c5; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_product_store_product_id_f5e6f1c5 ON public.product_product_store USING btree (product_id);


--
-- Name: product_product_store_store_id_6cf5984d; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_product_store_store_id_6cf5984d ON public.product_product_store USING btree (store_id);


--
-- Name: product_product_sub_category_id_378678a0; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_product_sub_category_id_378678a0 ON public.product_product USING btree (sub_category_id);


--
-- Name: product_product_user_id_0d8fb375; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_product_user_id_0d8fb375 ON public.product_product USING btree (user_id);


--
-- Name: product_productimage_product_id_544084bb; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_productimage_product_id_544084bb ON public.product_productimage USING btree (product_id);


--
-- Name: product_subcategory_category_id_74573633; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX product_subcategory_category_id_74573633 ON public.product_subcategory USING btree (category_id);


--
-- Name: ui_banner_identity_185a2988_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX ui_banner_identity_185a2988_like ON public.ui_banner USING btree (identity varchar_pattern_ops);


--
-- Name: ui_banner_name_dd665a43_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX ui_banner_name_dd665a43_like ON public.ui_banner USING btree (name varchar_pattern_ops);


--
-- Name: ui_bestcollection_product_id_53e46a5f; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX ui_bestcollection_product_id_53e46a5f ON public.ui_bestcollection USING btree (product_id);


--
-- Name: ui_bestseller_product_id_c17889ea; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX ui_bestseller_product_id_c17889ea ON public.ui_bestseller USING btree (product_id);


--
-- Name: ui_featured_product_id_a3f03bc5; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX ui_featured_product_id_a3f03bc5 ON public.ui_featured USING btree (product_id);


--
-- Name: ui_newarrival_product_id_8f6519ca; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX ui_newarrival_product_id_8f6519ca ON public.ui_newarrival USING btree (product_id);


--
-- Name: ui_testimonial_name_896dd56c_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX ui_testimonial_name_896dd56c_like ON public.ui_testimonial USING btree (name varchar_pattern_ops);


--
-- Name: ui_trending_product_id_a31bd971; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX ui_trending_product_id_a31bd971 ON public.ui_trending USING btree (product_id);


--
-- Name: user_appointment_app_to_id_ab3066ff; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_appointment_app_to_id_ab3066ff ON public.user_appointment USING btree (app_to_id);


--
-- Name: user_appointment_user_id_690209aa; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_appointment_user_id_690209aa ON public.user_appointment USING btree (user_id);


--
-- Name: user_companyprofile_city_id_9240f3b9; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_companyprofile_city_id_9240f3b9 ON public.user_companyprofile USING btree (city_id);


--
-- Name: user_companyprofile_country_id_ac54e1d0; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_companyprofile_country_id_ac54e1d0 ON public.user_companyprofile USING btree (country_id);


--
-- Name: user_companyprofile_state_id_a67e7b84; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_companyprofile_state_id_a67e7b84 ON public.user_companyprofile USING btree (state_id);


--
-- Name: user_companyprofile_user_id_fc5614ab; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_companyprofile_user_id_fc5614ab ON public.user_companyprofile USING btree (user_id);


--
-- Name: user_store_city_id_5a0660cb; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_store_city_id_5a0660cb ON public.user_store USING btree (city_id);


--
-- Name: user_store_country_id_a07781b1; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_store_country_id_a07781b1 ON public.user_store USING btree (country_id);


--
-- Name: user_store_state_id_3b6f1829; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_store_state_id_3b6f1829 ON public.user_store USING btree (state_id);


--
-- Name: user_store_user_id_30533ae0; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_store_user_id_30533ae0 ON public.user_store USING btree (user_id);


--
-- Name: user_user_email_1c6f3d1a_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_user_email_1c6f3d1a_like ON public.user_user USING btree (email varchar_pattern_ops);


--
-- Name: user_user_groups_group_id_c57f13c0; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_user_groups_group_id_c57f13c0 ON public.user_user_groups USING btree (group_id);


--
-- Name: user_user_groups_user_id_13f9a20d; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_user_groups_user_id_13f9a20d ON public.user_user_groups USING btree (user_id);


--
-- Name: user_user_mobile_336f64c9_like; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_user_mobile_336f64c9_like ON public.user_user USING btree (mobile varchar_pattern_ops);


--
-- Name: user_user_user_permissions_permission_id_ce49d4de; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_user_user_permissions_permission_id_ce49d4de ON public.user_user_user_permissions USING btree (permission_id);


--
-- Name: user_user_user_permissions_user_id_31782f58; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_user_user_permissions_user_id_31782f58 ON public.user_user_user_permissions USING btree (user_id);


--
-- Name: user_useraddress_city_id_85886481; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_useraddress_city_id_85886481 ON public.user_useraddress USING btree (city_id);


--
-- Name: user_useraddress_country_id_5deb5d20; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_useraddress_country_id_5deb5d20 ON public.user_useraddress USING btree (country_id);


--
-- Name: user_useraddress_state_id_17f8a4f3; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_useraddress_state_id_17f8a4f3 ON public.user_useraddress USING btree (state_id);


--
-- Name: user_useraddress_user_id_c23aded4; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_useraddress_user_id_c23aded4 ON public.user_useraddress USING btree (user_id);


--
-- Name: user_usertoken_user_id_d2388e24; Type: INDEX; Schema: public; Owner: goldgali_user
--

CREATE INDEX user_usertoken_user_id_d2388e24 ON public.user_usertoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cart cart_cart_user_id_9b4220b9_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_user_id_9b4220b9_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cartproduct cart_cartproduct_cart_id_55d1af26_fk_cart_cart_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cartproduct_cart_id_55d1af26_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cartproduct cart_cartproduct_product_id_7f6785a4_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.cart_cartproduct
    ADD CONSTRAINT cart_cartproduct_product_id_7f6785a4_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_area main_area_city_id_891ceef4_fk_main_city_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_area
    ADD CONSTRAINT main_area_city_id_891ceef4_fk_main_city_id FOREIGN KEY (city_id) REFERENCES public.main_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_city main_city_state_id_f92848c7_fk_main_state_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_city
    ADD CONSTRAINT main_city_state_id_f92848c7_fk_main_state_id FOREIGN KEY (state_id) REFERENCES public.main_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_state main_state_country_id_83be6689_fk_main_country_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.main_state
    ADD CONSTRAINT main_state_country_id_83be6689_fk_main_country_id FOREIGN KEY (country_id) REFERENCES public.main_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_order order_order_product_id_fb1319ca_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_product_id_fb1319ca_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_order order_order_user_address_id_4e010541_fk_user_useraddress_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_user_address_id_4e010541_fk_user_useraddress_id FOREIGN KEY (user_address_id) REFERENCES public.user_useraddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_order order_order_user_id_7cf9bc2b_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.order_order
    ADD CONSTRAINT order_order_user_id_7cf9bc2b_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_category_id_0c725779_fk_product_category_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_category_id_0c725779_fk_product_category_id FOREIGN KEY (category_id) REFERENCES public.product_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product_store product_product_store_product_id_f5e6f1c5_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product_store
    ADD CONSTRAINT product_product_store_product_id_f5e6f1c5_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product_store product_product_store_store_id_6cf5984d_fk_user_store_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product_store
    ADD CONSTRAINT product_product_store_store_id_6cf5984d_fk_user_store_id FOREIGN KEY (store_id) REFERENCES public.user_store(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_sub_category_id_378678a0_fk_product_s; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_sub_category_id_378678a0_fk_product_s FOREIGN KEY (sub_category_id) REFERENCES public.product_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_user_id_0d8fb375_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_user_id_0d8fb375_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_productimage product_productimage_product_id_544084bb_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_productimage
    ADD CONSTRAINT product_productimage_product_id_544084bb_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_subcategory product_subcategory_category_id_74573633_fk_product_category_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.product_subcategory
    ADD CONSTRAINT product_subcategory_category_id_74573633_fk_product_category_id FOREIGN KEY (category_id) REFERENCES public.product_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ui_bestcollection ui_bestcollection_product_id_53e46a5f_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_bestcollection
    ADD CONSTRAINT ui_bestcollection_product_id_53e46a5f_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ui_bestseller ui_bestseller_product_id_c17889ea_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_bestseller
    ADD CONSTRAINT ui_bestseller_product_id_c17889ea_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ui_featured ui_featured_product_id_a3f03bc5_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_featured
    ADD CONSTRAINT ui_featured_product_id_a3f03bc5_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ui_newarrival ui_newarrival_product_id_8f6519ca_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_newarrival
    ADD CONSTRAINT ui_newarrival_product_id_8f6519ca_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ui_trending ui_trending_product_id_a31bd971_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.ui_trending
    ADD CONSTRAINT ui_trending_product_id_a31bd971_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_appointment user_appointment_app_to_id_ab3066ff_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_appointment
    ADD CONSTRAINT user_appointment_app_to_id_ab3066ff_fk_user_user_id FOREIGN KEY (app_to_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_appointment user_appointment_user_id_690209aa_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_appointment
    ADD CONSTRAINT user_appointment_user_id_690209aa_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_companyprofile user_companyprofile_city_id_9240f3b9_fk_main_city_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_companyprofile
    ADD CONSTRAINT user_companyprofile_city_id_9240f3b9_fk_main_city_id FOREIGN KEY (city_id) REFERENCES public.main_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_companyprofile user_companyprofile_country_id_ac54e1d0_fk_main_country_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_companyprofile
    ADD CONSTRAINT user_companyprofile_country_id_ac54e1d0_fk_main_country_id FOREIGN KEY (country_id) REFERENCES public.main_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_companyprofile user_companyprofile_state_id_a67e7b84_fk_main_state_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_companyprofile
    ADD CONSTRAINT user_companyprofile_state_id_a67e7b84_fk_main_state_id FOREIGN KEY (state_id) REFERENCES public.main_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_companyprofile user_companyprofile_user_id_fc5614ab_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_companyprofile
    ADD CONSTRAINT user_companyprofile_user_id_fc5614ab_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_store user_store_city_id_5a0660cb_fk_main_city_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_store
    ADD CONSTRAINT user_store_city_id_5a0660cb_fk_main_city_id FOREIGN KEY (city_id) REFERENCES public.main_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_store user_store_country_id_a07781b1_fk_main_country_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_store
    ADD CONSTRAINT user_store_country_id_a07781b1_fk_main_country_id FOREIGN KEY (country_id) REFERENCES public.main_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_store user_store_state_id_3b6f1829_fk_main_state_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_store
    ADD CONSTRAINT user_store_state_id_3b6f1829_fk_main_state_id FOREIGN KEY (state_id) REFERENCES public.main_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_store user_store_user_id_30533ae0_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_store
    ADD CONSTRAINT user_store_user_id_30533ae0_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_group_id_c57f13c0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_user_id_13f9a20d_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permi_permission_id_ce49d4de_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_31782f58_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_useraddress user_useraddress_city_id_85886481_fk_main_city_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_city_id_85886481_fk_main_city_id FOREIGN KEY (city_id) REFERENCES public.main_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_useraddress user_useraddress_country_id_5deb5d20_fk_main_country_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_country_id_5deb5d20_fk_main_country_id FOREIGN KEY (country_id) REFERENCES public.main_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_useraddress user_useraddress_state_id_17f8a4f3_fk_main_state_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_state_id_17f8a4f3_fk_main_state_id FOREIGN KEY (state_id) REFERENCES public.main_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_useraddress user_useraddress_user_id_c23aded4_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_useraddress
    ADD CONSTRAINT user_useraddress_user_id_c23aded4_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_usertoken user_usertoken_user_id_d2388e24_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: goldgali_user
--

ALTER TABLE ONLY public.user_usertoken
    ADD CONSTRAINT user_usertoken_user_id_d2388e24_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

