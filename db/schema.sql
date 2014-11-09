SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;


---CREATE PROCEDURAL LANGUAGE plpgsql;

ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;
SET default_tablespace = '';

CREATE TABLE users (
    id bigint NOT NULL UNIQUE,
    login_name character varying UNIQUE NOT NULL,
    name character varying NOT NULL,
    weight integer NOT NULL,
    height integer NOT NULL,
    age integer NOT NULL,
    gender character varying NOT NULL
);
---ALTER TABLE public.users OWNER TO postgres;

CREATE TABLE workouts(
    id bigint NOT NULL UNIQUE,
    user_id bigint NOT NULL,
    workout character varying NOT NULL,
    date timestamp with time zone NOT NULL,
    improve boolean,
    notes character varying NOT NULL
);
---ALTER TABLE public.workouts OWNER TO postgres;

CREATE TABLE sets(
    id bigint NOT NULL UNIQUE,
    workout_id bigint NOT NULL,
    set_no integer NOT NULL,
    weight integer NOT NULL,
    count integer NOT NULL,
    notes character varying NOT NULL
);
---ALTER TABLE public.sets OWNER TO postgres;

GRANT ALL ON SCHEMA public TO postgres;
