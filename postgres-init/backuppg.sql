--
-- PostgreSQL database cluster dump
--

-- Started on 2024-03-28 18:04:44

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

-- DROP DATABASE IF EXISTS reportportal;




--
-- Drop roles
--

-- DROP ROLE IF EXISTS rpuser;


--
-- Roles
--

-- CREATE ROLE rpuser;
ALTER ROLE rpuser WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md555ac352f42a08a5c66323e0f1414fced';

--
-- User Configurations
--






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-28 18:04:44

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- TOC entry 2972 (class 1262 OID 1)
-- Name: template1; Type: DATABASE; Schema: -; Owner: rpuser
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO rpuser;

\connect template1

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
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 2972
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: rpuser
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- TOC entry 2975 (class 0 OID 0)
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: rpuser
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: rpuser
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO rpuser;

--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 2972
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: rpuser
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: rpuser
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-28 18:04:45

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-28 18:04:45

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

DROP DATABASE postgres;
--
-- TOC entry 2972 (class 1262 OID 13478)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: rpuser
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO rpuser;

\connect postgres

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
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 2972
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: rpuser
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: rpuser
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO rpuser;

--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: rpuser
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-28 18:04:45

--
-- PostgreSQL database dump complete
--

--
-- Database "reportportal" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-28 18:04:45

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
-- TOC entry 4089 (class 1262 OID 16384)
-- Name: reportportal; Type: DATABASE; Schema: -; Owner: rpuser
--

-- CREATE DATABASE reportportal WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE reportportal OWNER TO rpuser;

\connect reportportal

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
-- TOC entry 9 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: rpuser
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO rpuser;

--
-- TOC entry 11 (class 2615 OID 17827)
-- Name: quartz; Type: SCHEMA; Schema: -; Owner: rpuser
--

CREATE SCHEMA quartz;


ALTER SCHEMA quartz OWNER TO rpuser;

--
-- TOC entry 4 (class 3079 OID 16392)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4091 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 2 (class 3079 OID 16604)
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- TOC entry 3 (class 3079 OID 16567)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 902 (class 1247 OID 16730)
-- Name: access_token_type_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.access_token_type_enum AS ENUM (
    'OAUTH',
    'NTLM',
    'APIKEY',
    'BASIC'
);


ALTER TYPE public.access_token_type_enum OWNER TO rpuser;

--
-- TOC entry 899 (class 1247 OID 16720)
-- Name: auth_type_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.auth_type_enum AS ENUM (
    'OAUTH',
    'NTLM',
    'APIKEY',
    'BASIC'
);


ALTER TYPE public.auth_type_enum OWNER TO rpuser;

--
-- TOC entry 917 (class 1247 OID 16806)
-- Name: filter_condition_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.filter_condition_enum AS ENUM (
    'EQUALS',
    'NOT_EQUALS',
    'CONTAINS',
    'EXISTS',
    'IN',
    'HAS',
    'GREATER_THAN',
    'GREATER_THAN_OR_EQUALS',
    'LOWER_THAN',
    'LOWER_THAN_OR_EQUALS',
    'BETWEEN',
    'ANY'
);


ALTER TYPE public.filter_condition_enum OWNER TO rpuser;

--
-- TOC entry 911 (class 1247 OID 16784)
-- Name: integration_auth_flow_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.integration_auth_flow_enum AS ENUM (
    'OAUTH',
    'BASIC',
    'TOKEN',
    'FORM',
    'LDAP'
);


ALTER TYPE public.integration_auth_flow_enum OWNER TO rpuser;

--
-- TOC entry 914 (class 1247 OID 16796)
-- Name: integration_group_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.integration_group_enum AS ENUM (
    'BTS',
    'NOTIFICATION',
    'AUTH',
    'OTHER'
);


ALTER TYPE public.integration_group_enum OWNER TO rpuser;

--
-- TOC entry 908 (class 1247 OID 16772)
-- Name: issue_group_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.issue_group_enum AS ENUM (
    'PRODUCT_BUG',
    'AUTOMATION_BUG',
    'SYSTEM_ISSUE',
    'TO_INVESTIGATE',
    'NO_DEFECT'
);


ALTER TYPE public.issue_group_enum OWNER TO rpuser;

--
-- TOC entry 896 (class 1247 OID 16714)
-- Name: launch_mode_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.launch_mode_enum AS ENUM (
    'DEFAULT',
    'DEBUG'
);


ALTER TYPE public.launch_mode_enum OWNER TO rpuser;

--
-- TOC entry 1185 (class 1247 OID 18344)
-- Name: logical_operator_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.logical_operator_enum AS ENUM (
    'AND',
    'OR'
);


ALTER TYPE public.logical_operator_enum OWNER TO rpuser;

--
-- TOC entry 920 (class 1247 OID 16832)
-- Name: password_encoder_type; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.password_encoder_type AS ENUM (
    'PLAIN',
    'SHA',
    'LDAP_SHA',
    'MD4',
    'MD5'
);


ALTER TYPE public.password_encoder_type OWNER TO rpuser;

--
-- TOC entry 893 (class 1247 OID 16686)
-- Name: project_role_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.project_role_enum AS ENUM (
    'OPERATOR',
    'CUSTOMER',
    'MEMBER',
    'PROJECT_MANAGER'
);


ALTER TYPE public.project_role_enum OWNER TO rpuser;

--
-- TOC entry 923 (class 1247 OID 16844)
-- Name: sort_direction_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.sort_direction_enum AS ENUM (
    'ASC',
    'DESC'
);


ALTER TYPE public.sort_direction_enum OWNER TO rpuser;

--
-- TOC entry 1157 (class 1247 OID 18058)
-- Name: status_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.status_enum AS ENUM (
    'CANCELLED',
    'FAILED',
    'INTERRUPTED',
    'IN_PROGRESS',
    'PASSED',
    'RESETED',
    'SKIPPED',
    'STOPPED',
    'INFO',
    'WARN'
);


ALTER TYPE public.status_enum OWNER TO rpuser;

--
-- TOC entry 905 (class 1247 OID 16740)
-- Name: test_item_type_enum; Type: TYPE; Schema: public; Owner: rpuser
--

CREATE TYPE public.test_item_type_enum AS ENUM (
    'AFTER_CLASS',
    'AFTER_GROUPS',
    'AFTER_METHOD',
    'AFTER_SUITE',
    'AFTER_TEST',
    'BEFORE_CLASS',
    'BEFORE_GROUPS',
    'BEFORE_METHOD',
    'BEFORE_SUITE',
    'BEFORE_TEST',
    'SCENARIO',
    'STEP',
    'STORY',
    'SUITE',
    'TEST'
);


ALTER TYPE public.test_item_type_enum OWNER TO rpuser;

--
-- TOC entry 468 (class 1255 OID 18420)
-- Name: change_user_name_on_delete(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.change_user_name_on_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE owned_entity
    SET owner = 'deleted_user'
    WHERE owner = OLD.login;

    UPDATE integration
    SET creator = 'deleted_user'
    WHERE creator = OLD.login;

    UPDATE activity
    SET subject_name = 'deleted_user'
    WHERE subject_name = OLD.login;

    UPDATE activity
    SET object_name = 'deleted_user'
    WHERE object_name = OLD.login AND event_name IN ('assignUser', 'unassignUser', 'createUser', 'changeRole');

    UPDATE dashboard_widget
    SET widget_owner = 'deleted_user'
    WHERE widget_owner = OLD.login;

    RETURN NULL;
END;
$$;


ALTER FUNCTION public.change_user_name_on_delete() OWNER TO rpuser;

--
-- TOC entry 457 (class 1255 OID 17807)
-- Name: check_wired_tickets(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.check_wired_tickets() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE
    FROM ticket
    WHERE (SELECT count(issue_ticket.ticket_id) FROM issue_ticket WHERE issue_ticket.ticket_id = old.ticket_id) = 0
      AND ticket.id = old.ticket_id;
    RETURN NULL;
END;
$$;


ALTER FUNCTION public.check_wired_tickets() OWNER TO rpuser;

--
-- TOC entry 456 (class 1255 OID 17806)
-- Name: count_approximate_duration(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.count_approximate_duration() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    approximateduration DOUBLE PRECISION;
BEGIN
    approximateduration = (SELECT CAST(extract(EPOCH FROM avg(tmp.diff)) AS DOUBLE PRECISION)
                           FROM (SELECT (end_time - start_time) diff
                                 FROM launch
                                 WHERE name = new.name
                                   AND project_id = new.project_id
                                   AND mode = 'DEFAULT'
                                   AND status NOT IN ('INTERRUPTED', 'IN_PROGRESS', 'STOPPED')
                                 ORDER BY launch.start_time DESC
                                 LIMIT 5) tmp);
    new.approximate_duration = CASE
                                   WHEN approximateduration IS NULL
                                       THEN 0
                                   ELSE approximateduration END;
    RETURN new;
END;
$$;


ALTER FUNCTION public.count_approximate_duration() OWNER TO rpuser;

--
-- TOC entry 463 (class 1255 OID 17819)
-- Name: decrease_statistics(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.decrease_statistics() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    cur_launch_id         BIGINT;
    DECLARE
    cur_statistics_fields RECORD;
    DECLARE
    processed_test_item RECORD;
BEGIN

    SELECT item_id, launch_id, has_stats, retry_of, ('{' || replace(path::TEXT, '.', ',') || '}')::bigint[] AS arr_path INTO processed_test_item FROM test_item WHERE item_id = old.result_id FOR UPDATE;

    cur_launch_id := processed_test_item.launch_id;
    IF cur_launch_id IS NULL
    THEN
        RETURN old;
    END IF;

    IF NOT processed_test_item.has_stats OR processed_test_item.retry_of IS NOT NULL
    THEN
        RETURN old;
    END IF;

    FOR cur_statistics_fields IN (SELECT statistics_field_id, s_counter
                                  FROM statistics
                                  WHERE item_id = old.result_id
                                  ORDER BY statistics_field_id)
        LOOP
            UPDATE statistics
            SET s_counter = s_counter - cur_statistics_fields.s_counter
            WHERE statistics.statistics_field_id = cur_statistics_fields.statistics_field_id
              AND (launch_id = cur_launch_id
                OR
                   (item_id = ANY(processed_test_item.arr_path) AND item_id != old.result_id)
                );
        END LOOP;

    DELETE FROM statistics WHERE item_id = old.result_id;

    RETURN old;
END;
$$;


ALTER FUNCTION public.decrease_statistics() OWNER TO rpuser;

--
-- TOC entry 459 (class 1255 OID 17817)
-- Name: delete_defect_statistics(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.delete_defect_statistics() RETURNS trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    DECLARE
    cur_launch_id             BIGINT;
    DECLARE
    defect_field_old_id       BIGINT;
    DECLARE
    defect_field_old_total_id BIGINT;
    DECLARE
    processed_test_item RECORD;
BEGIN
    SELECT item_id, launch_id, has_stats, retry_of, ('{' || replace(path::TEXT, '.', ',') || '}')::bigint[] AS arr_path
    INTO processed_test_item FROM test_item WHERE item_id = old.issue_id FOR UPDATE;

    cur_launch_id := processed_test_item.launch_id;
    IF cur_launch_id IS NULL
    THEN
        RETURN old;
    END IF;

    IF NOT processed_test_item.has_stats OR processed_test_item.retry_of IS NOT NULL
    THEN
        RETURN old;
    END IF;

    defect_field_old_id := (SELECT sf_id
                            FROM statistics_field
                            WHERE statistics_field.name =
                                  (SELECT concat('statistics$defects$', lower(public.issue_group.issue_group :: VARCHAR), '$',
                                                 lower(public.issue_type.locator))
                                   FROM issue_type
                                            JOIN issue_group ON issue_type.issue_group_id = issue_group.issue_group_id
                                   WHERE issue_type.id = old.issue_type) LIMIT 1);

    defect_field_old_total_id := (SELECT sf_id
                                  FROM statistics_field
                                  WHERE statistics_field.name =
                                        (SELECT concat('statistics$defects$', lower(public.issue_group.issue_group :: VARCHAR), '$total')
                                         FROM issue_type
                                                  JOIN issue_group ON issue_type.issue_group_id = issue_group.issue_group_id
                                         WHERE issue_type.id = old.issue_type) LIMIT 1);

    /* decrease item defects statistics for concrete field */
    UPDATE statistics
    SET s_counter = s_counter - 1
    WHERE statistics_field_id = defect_field_old_id AND statistics.item_id = ANY(processed_test_item.arr_path);

    /* decrease item defects statistics for total field */
    UPDATE statistics
    SET s_counter = s_counter - 1
    WHERE statistics_field_id = defect_field_old_total_id AND item_id = ANY(processed_test_item.arr_path);

    /* decrease launch defects statistics for concrete field */
    UPDATE statistics
    SET s_counter = s_counter - 1
    WHERE statistics_field_id = defect_field_old_id AND launch_id = cur_launch_id;

    /* decrease launch defects statistics for total field */
    UPDATE statistics
    SET s_counter = s_counter - 1
    WHERE statistics_field_id = defect_field_old_total_id AND launch_id = cur_launch_id;
    RETURN old;
END;
$_$;


ALTER FUNCTION public.delete_defect_statistics() OWNER TO rpuser;

--
-- TOC entry 464 (class 1255 OID 18102)
-- Name: delete_item_statistics(bigint); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.delete_item_statistics(test_item_id bigint) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    cur_launch_id         BIGINT;
    cur_statistics_fields RECORD;
    DECLARE processed_test_item RECORD;
BEGIN

    IF test_item_id IS NULL
    THEN
        RETURN 1;
    END IF;

    cur_launch_id := (SELECT test_item.launch_id FROM test_item WHERE test_item.item_id = test_item_id);

    IF cur_launch_id IS NULL
    THEN
        RETURN 1;
    END IF;

    DELETE FROM issue WHERE issue_id = test_item_id;

    SELECT ('{' || replace(path::TEXT, '.', ',') || '}')::bigint[] AS arr_path INTO processed_test_item FROM test_item WHERE item_id = test_item_id;

    FOR cur_statistics_fields IN (SELECT statistics_field_id, s_counter
                                  FROM statistics
                                  WHERE item_id = test_item_id
                                  ORDER BY statistics_field_id)
        LOOP
            UPDATE statistics
            SET s_counter = s_counter - cur_statistics_fields.s_counter
            WHERE statistics.statistics_field_id = cur_statistics_fields.statistics_field_id
              AND (launch_id = cur_launch_id OR (item_id = ANY(processed_test_item.arr_path) AND item_id != test_item_id));
        END LOOP;

    DELETE FROM statistics WHERE item_id = test_item_id;

    RETURN 0;
END;
$$;


ALTER FUNCTION public.delete_item_statistics(test_item_id bigint) OWNER TO rpuser;

--
-- TOC entry 466 (class 1255 OID 18195)
-- Name: fill_attachment_creation_date(); Type: PROCEDURE; Schema: public; Owner: rpuser
--

CREATE PROCEDURE public.fill_attachment_creation_date()
    LANGUAGE plpgsql
    AS $$
DECLARE
    prj_id BIGINT;
BEGIN

    FOR prj_id IN (SELECT id FROM project ORDER BY id)
        LOOP
            UPDATE attachment AS to_update
            SET creation_date = source.log_time
            FROM (SELECT attachment.id, log.log_time
                  FROM attachment
                           JOIN log ON attachment.id = log.attachment_id
                  WHERE attachment.project_id = prj_id
                    AND attachment.creation_date IS NULL) source
            WHERE to_update.id = source.id
              AND to_update.project_id = prj_id;

            COMMIT;
        END LOOP;

    UPDATE attachment SET creation_date = now() WHERE attachment.creation_date IS NULL;
END;
$$;


ALTER PROCEDURE public.fill_attachment_creation_date() OWNER TO rpuser;

--
-- TOC entry 455 (class 1255 OID 17805)
-- Name: get_last_launch_number(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.get_last_launch_number() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO launch_number (project_id, launch_name, number)
    VALUES (new.project_id, new.name, 1)
    ON CONFLICT (project_id, launch_name) DO UPDATE SET number = launch_number.number + 1;
    new.number = (SELECT number FROM launch_number WHERE project_id = new.project_id AND launch_name = new.name);
    RETURN new;
END;
$$;


ALTER FUNCTION public.get_last_launch_number() OWNER TO rpuser;

--
-- TOC entry 460 (class 1255 OID 17804)
-- Name: handle_retries(bigint); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.handle_retries(itemid bigint) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    cur_id                 BIGINT;
    max_start_time         TIMESTAMP;
    max_start_time_item_id BIGINT;
    new_item_start_time    TIMESTAMP;
    new_item_launch_id     BIGINT;
    new_item_unique_id     VARCHAR;
    new_item_id            BIGINT;
    new_item_name          VARCHAR;
    new_item_parent_id     BIGINT;
    new_item_path_level    INTEGER;
    path_value             TEXT;
BEGIN

    IF itemid ISNULL
    THEN
        RETURN 1;
    END IF;

    SELECT item_id, name, start_time, launch_id, unique_id, nlevel(path)
    FROM test_item
    WHERE item_id = itemid
    INTO new_item_id, new_item_name, new_item_start_time, new_item_launch_id, new_item_unique_id, new_item_path_level;

    SELECT item_id, start_time
    FROM test_item
    WHERE launch_id = new_item_launch_id
      AND unique_id = new_item_unique_id
      AND name = new_item_name
      AND item_id != new_item_id
      AND nlevel(path) = new_item_path_level
    ORDER BY start_time DESC, item_id DESC
    LIMIT 1
    INTO max_start_time_item_id, max_start_time;

    IF
        max_start_time IS NULL
    THEN
        RETURN 0;
    END IF;

    IF
        max_start_time <= new_item_start_time
    THEN

        UPDATE test_item
        SET retry_of    = NULL,
            has_retries = TRUE,
            launch_id   = new_item_launch_id
        WHERE item_id = new_item_id;

        new_item_parent_id := (SELECT item_id FROM test_item WHERE item_id = (SELECT parent_id FROM test_item WHERE item_id = itemid));
        path_value := (SELECT path FROM test_item WHERE item_id = new_item_id) :: TEXT;

        FOR cur_id IN
            (SELECT item_id
             FROM test_item
             WHERE unique_id = new_item_unique_id
               AND name = new_item_name
               AND parent_id = new_item_parent_id
               AND item_id != new_item_id
             ORDER BY item_id)

            LOOP
                UPDATE test_item
                SET retry_of    = new_item_id,
                    launch_id   = NULL,
                    has_retries = FALSE,
                    path        = (path_value || '.' || item_id) :: LTREE
                WHERE test_item.item_id = cur_id;
            END LOOP;


        PERFORM retries_statistics(new_item_launch_id);
    ELSE

        path_value := (SELECT path FROM test_item WHERE item_id = max_start_time_item_id) :: TEXT;

        UPDATE test_item
        SET retry_of    = max_start_time_item_id,
            launch_id   = NULL,
            has_retries = FALSE,
            path        = (path_value || '.' || item_id) :: LTREE
        WHERE item_id = new_item_id;

        path_value :=
                (SELECT path
                 FROM test_item
                 WHERE item_id = (SELECT parent_id FROM test_item WHERE item_id = max_start_time_item_id)) :: TEXT;

        UPDATE test_item ti
        SET retry_of    = NULL,
            has_retries = TRUE,
            path        = (path_value || '.' || ti.item_id) :: LTREE,
            launch_id   = new_item_launch_id
        WHERE ti.item_id = max_start_time_item_id;
    END IF;
    RETURN 0;
END;
$$;


ALTER FUNCTION public.handle_retries(itemid bigint) OWNER TO rpuser;

--
-- TOC entry 465 (class 1255 OID 18103)
-- Name: handle_retry(bigint, bigint); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.handle_retry(retry_id bigint, retry_parent_id bigint) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    current_retry_id BIGINT;
    new_parent_path  LTREE;
BEGIN

    IF retry_id IS NULL OR retry_parent_id IS NULL
    THEN
        RETURN 1;
    END IF;

    current_retry_id := (SELECT retry_of FROM test_item WHERE item_id = retry_id FOR UPDATE);

    IF (current_retry_id IS NOT NULL)
    THEN
        retry_id := (SELECT item_id FROM test_item WHERE item_id = current_retry_id FOR UPDATE);
    END IF;

    PERFORM delete_item_statistics(retry_id);

    new_parent_path := (SELECT path FROM test_item WHERE item_id = retry_parent_id);

    UPDATE test_item
    SET retry_of    = retry_parent_id,
        launch_id   = NULL,
        has_retries = FALSE,
        path        = (new_parent_path :: TEXT || '.' || item_id) :: LTREE
    WHERE item_id IN (SELECT item_id
                      FROM test_item
                      WHERE retry_of = retry_id
                      ORDER BY item_id);

    UPDATE test_item
    SET retry_of    = retry_parent_id,
        launch_id   = NULL,
        has_retries = FALSE,
        path        = (new_parent_path :: TEXT || '.' || item_id) :: LTREE
    WHERE item_id = retry_id;

    UPDATE test_item
    SET has_retries = TRUE
    WHERE item_id = retry_parent_id;

    RETURN 0;
END;
$$;


ALTER FUNCTION public.handle_retry(retry_id bigint, retry_parent_id bigint) OWNER TO rpuser;

--
-- TOC entry 461 (class 1255 OID 17813)
-- Name: increment_defect_statistics(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.increment_defect_statistics() RETURNS trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    DECLARE
    defect_field          VARCHAR;
    DECLARE
    defect_field_id       BIGINT;
    DECLARE
    defect_field_total    VARCHAR;
    DECLARE
    defect_field_total_id BIGINT;
    DECLARE
    cur_launch_id         BIGINT;
    DECLARE
    processed_test_item RECORD;
    DECLARE
    defect_info RECORD;

BEGIN
    SELECT item_id, launch_id, has_stats, retry_of, ('{' || replace(path::TEXT, '.', ',') || '}')::bigint[] AS arr_path INTO processed_test_item FROM test_item WHERE item_id = new.issue_id FOR UPDATE;

    cur_launch_id := processed_test_item.launch_id;
    IF cur_launch_id IS NULL
    THEN
        RETURN new;
    END IF;

    IF NOT processed_test_item.has_stats OR processed_test_item.retry_of IS NOT NULL
    THEN
        RETURN new;
    END IF;

    IF exists(SELECT 1
              FROM test_item AS parent
                       JOIN test_item AS child ON parent.item_id = child.parent_id
              WHERE (parent.item_id = new.issue_id AND child.has_stats)
        )
    THEN
        RETURN new;
    END IF;

    SELECT concat('statistics$defects$', lower(public.issue_group.issue_group :: VARCHAR), '$', lower(public.issue_type.locator)) AS defect_field,
           concat('statistics$defects$', lower(public.issue_group.issue_group :: VARCHAR), '$total') AS defect_field_total
    INTO defect_info
    FROM issue
             JOIN issue_type ON issue.issue_type = issue_type.id
             JOIN issue_group ON issue_type.issue_group_id = issue_group.issue_group_id
    WHERE issue.issue_id = new.issue_id;
    defect_field := defect_info.defect_field;
    defect_field_total := defect_info.defect_field_total;

    defect_field_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = defect_field LIMIT 1);
    defect_field_total_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = defect_field_total LIMIT 1);

    IF defect_field_id IS NULL
    THEN
        INSERT INTO statistics_field (name) VALUES (defect_field) ON CONFLICT DO NOTHING;
        defect_field_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = defect_field LIMIT 1);
    END IF;

    IF defect_field_total IS NULL
    THEN
        INSERT INTO statistics_field (name) VALUES (defect_field_total) ON CONFLICT DO NOTHING;
        defect_field_total_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = defect_field_total LIMIT 1);
    END IF;


    INSERT INTO statistics (s_counter, statistics_field_id, item_id)
        (SELECT 1, defect_field_id, unnest(processed_test_item.arr_path) AS item_id ORDER BY item_id)
    ON CONFLICT (statistics_field_id,item_id)
        DO UPDATE SET s_counter = statistics.s_counter + 1;

    INSERT INTO statistics (s_counter, statistics_field_id, item_id)
        (SELECT 1, defect_field_total_id, unnest(processed_test_item.arr_path) AS item_id ORDER BY item_id)
    ON CONFLICT (statistics_field_id,
        item_id)
        DO UPDATE SET s_counter = statistics.s_counter + 1;

    /* increment launch defects statistics for concrete field */
    INSERT INTO statistics (s_counter, statistics_field_id, launch_id)
    VALUES (1, defect_field_id, cur_launch_id)
    ON CONFLICT (statistics_field_id,
        launch_id)
        DO UPDATE SET s_counter = statistics.s_counter + 1;
    /* increment launch defects statistics for total field */
    INSERT INTO statistics (s_counter, statistics_field_id, launch_id)
    VALUES (1, defect_field_total_id, cur_launch_id)
    ON CONFLICT (statistics_field_id,
        launch_id)
        DO UPDATE SET s_counter = statistics.s_counter + 1;
    RETURN new;
END;
$_$;


ALTER FUNCTION public.increment_defect_statistics() OWNER TO rpuser;

--
-- TOC entry 454 (class 1255 OID 17802)
-- Name: merge_launch(bigint); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.merge_launch(launchid bigint) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    target_item_cursor CURSOR  (id BIGINT, lvl INT) FOR
        SELECT DISTINCT ON (unique_id) unique_id, item_id, path AS path_value, has_children
        FROM test_item parent
        WHERE parent.launch_id = id
          AND nlevel(parent.path) = lvl
          AND has_stats
          AND (parent.type = 'SUITE' OR (SELECT EXISTS(SELECT 1 FROM test_item t WHERE t.parent_id = parent.item_id LIMIT 1)));
    DECLARE
    merging_item_cursor CURSOR (uniqueid VARCHAR, lvl INT, launchid BIGINT) FOR
        SELECT item_id, path AS path_value, has_retries
        FROM test_item
        WHERE test_item.unique_id = uniqueid
          AND has_stats
          AND nlevel(test_item.path) = lvl
          AND test_item.launch_id = launchid;
    DECLARE
    target_item_field    RECORD;
    DECLARE
    merging_item_field   RECORD;
    DECLARE
    max_level            BIGINT;
    DECLARE
    first_item_unique_id VARCHAR;
    DECLARE
    item_has_children    BOOLEAN;
    DECLARE
    parent_item_id       BIGINT;
    DECLARE
    parent_item_path     LTREE;
    DECLARE
    nested_step_path     LTREE;
    DECLARE
    previous_parent_path LTREE;
    DECLARE
    concatenated_descr   TEXT;
    DECLARE
    nested_step_nlevel   INTEGER;
BEGIN
    max_level := (SELECT MAX(nlevel(path))
                  FROM test_item
                  WHERE launch_id = launchid
                    AND has_stats);
    IF (max_level ISNULL)
    THEN
        RETURN 0;
    END IF;

    FOR i IN 1..max_level
        LOOP

            OPEN target_item_cursor(launchid, i);

            LOOP
                FETCH target_item_cursor INTO target_item_field;

                EXIT WHEN NOT found;

                first_item_unique_id := target_item_field.unique_id;
                parent_item_id := target_item_field.item_id;
                parent_item_path := target_item_field.path_value;
                item_has_children := target_item_field.has_children;

                EXIT WHEN first_item_unique_id ISNULL;

                IF item_has_children
                THEN
                    SELECT string_agg(description, chr(10))
                    INTO concatenated_descr
                    FROM test_item
                    WHERE test_item.unique_id = first_item_unique_id
                      AND has_stats
                      AND has_children
                      AND nlevel(test_item.path) = i
                      AND test_item.launch_id = launchid;

                    UPDATE test_item SET description = concatenated_descr WHERE test_item.item_id = parent_item_id;

                    UPDATE test_item
                    SET start_time = (SELECT min(start_time)
                                      FROM test_item
                                      WHERE test_item.unique_id = first_item_unique_id
                                        AND has_stats
                                        AND has_children
                                        AND nlevel(test_item.path) = i
                                        AND test_item.launch_id = launchid)
                    WHERE test_item.item_id = parent_item_id;

                    UPDATE test_item_results
                    SET end_time = (SELECT max(end_time)
                                    FROM test_item
                                             JOIN test_item_results result ON test_item.item_id = result.result_id
                                    WHERE test_item.unique_id = first_item_unique_id
                                      AND has_stats
                                      AND has_children
                                      AND nlevel(test_item.path) = i
                                      AND test_item.launch_id = launchid)
                    WHERE test_item_results.result_id = parent_item_id;

                    INSERT INTO statistics (statistics_field_id, item_id, launch_id, s_counter)
                    SELECT statistics_field_id, parent_item_id, NULL, sum(s_counter)
                    FROM statistics
                             JOIN test_item ti ON statistics.item_id = ti.item_id
                    WHERE ti.unique_id = first_item_unique_id
                      AND ti.launch_id = launchid
                      AND nlevel(ti.path) = i
                      AND ti.has_stats
                      AND ti.has_children
                    GROUP BY statistics_field_id
                    ON CONFLICT ON CONSTRAINT unique_stats_item DO UPDATE
                        SET s_counter = excluded.s_counter;

                    IF exists(SELECT 1
                              FROM test_item_results
                                       JOIN test_item t ON test_item_results.result_id = t.item_id
                              WHERE (test_item_results.status != 'PASSED' AND test_item_results.status != 'SKIPPED')
                                AND t.unique_id = first_item_unique_id
                                AND nlevel(t.path) = i
                                AND t.has_stats
                                AND t.has_children
                                AND t.launch_id = launchid)
                    THEN
                        UPDATE test_item_results SET status = 'FAILED' WHERE test_item_results.result_id = parent_item_id;
                    ELSEIF exists(SELECT 1
                                  FROM test_item_results
                                           JOIN test_item t ON test_item_results.result_id = t.item_id
                                  WHERE test_item_results.status != 'PASSED'
                                    AND t.unique_id = first_item_unique_id
                                    AND nlevel(t.path) = i
                                    AND t.has_stats
                                    AND t.has_children
                                    AND t.launch_id = launchid)
                    THEN
                        UPDATE test_item_results SET status = 'SKIPPED' WHERE test_item_results.result_id = parent_item_id;
                    ELSE
                        UPDATE test_item_results SET status = 'PASSED' WHERE test_item_results.result_id = parent_item_id;
                    END IF;
                END IF;


                OPEN merging_item_cursor(target_item_field.unique_id, i, launchid);

                LOOP

                    FETCH merging_item_cursor INTO merging_item_field;

                    EXIT WHEN NOT found;

                    IF (SELECT EXISTS(SELECT 1
                                      FROM test_item t
                                      WHERE (t.parent_id = merging_item_field.item_id
                                          OR (t.item_id = merging_item_field.item_id AND t.type = 'SUITE'))
                                        AND t.has_stats))
                    THEN
                        UPDATE test_item
                        SET parent_id = parent_item_id,
                            path      = text2ltree(concat(parent_item_path :: TEXT, '.', test_item.item_id :: TEXT))
                        WHERE test_item.parent_id = merging_item_field.item_id
                          AND nlevel(test_item.path) = i + 1
                          AND has_stats
                          AND test_item.retry_of IS NULL;

                        UPDATE test_item
                        SET parent_id = parent_item_id,
                            path      = text2ltree(
                                    concat(parent_item_path :: TEXT, '.', test_item.retry_of ::TEXT, '.', test_item.item_id :: TEXT))
                        WHERE test_item.parent_id = merging_item_field.item_id
                          AND test_item.retry_of IS NOT NULL;

                        IF parent_item_id != merging_item_field.item_id
                        THEN
                            UPDATE attachment
                            SET item_id = parent_item_id
                            WHERE attachment.item_id = merging_item_field.item_id;

                            UPDATE log
                            SET item_id = parent_item_id
                            WHERE log.item_id = merging_item_field.item_id;

                            DELETE
                            FROM test_item
                            WHERE test_item.item_id = merging_item_field.item_id
                              AND test_item.has_stats;
                        END IF;

                    ELSE
                        IF
                            merging_item_field.has_retries
                        THEN
                            UPDATE test_item
                            SET path = text2ltree(concat(merging_item_field.path_value :: TEXT, '.', test_item.item_id :: TEXT))
                            WHERE test_item.retry_of = merging_item_field.item_id;
                        END IF;

                        nested_step_path :=
                                (SELECT path FROM test_item WHERE parent_id = merging_item_field.item_id AND NOT has_stats LIMIT 1);
                        IF
                            nested_step_path IS NOT NULL
                        THEN

                            nested_step_nlevel = nlevel(nested_step_path) - 2;
                            IF nested_step_nlevel < 0
                            THEN
                                nested_step_nlevel = 0;
                            END IF;

                            previous_parent_path := text2ltree(
                                    concat(subpath(nested_step_path, 0, nested_step_nlevel) :: TEXT, '.', merging_item_field.item_id :: TEXT));

                            UPDATE test_item
                            SET path = text2ltree(concat(merging_item_field.path_value :: TEXT, '.',
                                                         subpath(path, nlevel(merging_item_field.path_value)) :: TEXT))
                            WHERE path <@ previous_parent_path
                              AND item_id != merging_item_field.item_id
                              AND NOT has_stats;
                        END IF;


                    END IF;


                END LOOP;

                CLOSE merging_item_cursor;

            END LOOP;

            CLOSE target_item_cursor;

        END LOOP;


    INSERT INTO statistics (statistics_field_id, launch_id, s_counter)
    SELECT statistics_field_id, launchid, sum(s_counter)
    FROM statistics
             JOIN test_item ti ON statistics.item_id = ti.item_id
    WHERE ti.launch_id = launchid
      AND ti.has_stats
      AND ti.parent_id IS NULL
    GROUP BY statistics_field_id
    ON CONFLICT ON CONSTRAINT unique_stats_launch DO UPDATE
        SET s_counter = excluded.s_counter;

    RETURN 0;
END;
$$;


ALTER FUNCTION public.merge_launch(launchid bigint) OWNER TO rpuser;

--
-- TOC entry 453 (class 1255 OID 17803)
-- Name: retries_statistics(bigint); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.retries_statistics(cur_launch_id bigint) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    cur_id                BIGINT;
    DECLARE
    cur_statistics_fields RECORD;
    DECLARE
    retry_parents         RECORD;
BEGIN

    IF
        cur_launch_id IS NULL
    THEN
        RETURN 1;
    END IF;

    FOR retry_parents IN (SELECT DISTINCT retries.retry_of AS retry_id
                          FROM test_item retries
                                   JOIN test_item item ON retries.retry_of = item.item_id
                          WHERE item.launch_id = cur_launch_id
                            AND retries.retry_of IS NOT NULL)
        LOOP
            FOR cur_statistics_fields IN (SELECT statistics_field_id, sum(s_counter) AS counter_sum
                                          FROM statistics
                                                   JOIN test_item ti ON statistics.item_id = ti.item_id
                                          WHERE ti.retry_of = retry_parents.retry_id
                                          GROUP BY statistics_field_id)
                LOOP
                    UPDATE statistics
                    SET s_counter = s_counter - cur_statistics_fields.counter_sum
                    WHERE statistics.statistics_field_id = cur_statistics_fields.statistics_field_id
                      AND launch_id = cur_launch_id;
                END LOOP;

            FOR cur_id IN
                (SELECT item_id
                 FROM test_item
                 WHERE path @> (SELECT path FROM test_item WHERE item_id = retry_parents.retry_id)
                   AND item_id != retry_parents.retry_id)

                LOOP
                    FOR cur_statistics_fields IN (SELECT statistics_field_id, sum(s_counter) AS counter_sum
                                                  FROM statistics
                                                           JOIN test_item ti ON statistics.item_id = ti.item_id
                                                  WHERE ti.retry_of = retry_parents.retry_id
                                                  GROUP BY statistics_field_id)
                        LOOP
                            UPDATE statistics
                            SET s_counter = s_counter - cur_statistics_fields.counter_sum
                            WHERE statistics.statistics_field_id = cur_statistics_fields.statistics_field_id
                              AND item_id = cur_id;
                        END LOOP;
                END LOOP;

            DELETE FROM issue WHERE issue_id IN (SELECT item_id FROM test_item WHERE retry_of = retry_parents.retry_id);
            DELETE FROM statistics WHERE item_id IN (SELECT item_id FROM test_item WHERE retry_of = retry_parents.retry_id);

        END LOOP;
    RETURN 0;
END;
$$;


ALTER FUNCTION public.retries_statistics(cur_launch_id bigint) OWNER TO rpuser;

--
-- TOC entry 462 (class 1255 OID 17815)
-- Name: update_defect_statistics(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.update_defect_statistics() RETURNS trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    defect_field              VARCHAR;
    DECLARE
    defect_field_total        VARCHAR;
    DECLARE
    defect_field_old_id       BIGINT;
    DECLARE
    defect_field_old_total_id BIGINT;
    DECLARE
    defect_field_id           BIGINT;
    DECLARE
    defect_field_total_id     BIGINT;
    DECLARE
    cur_launch_id             BIGINT;
    DECLARE
    processed_test_item RECORD;
BEGIN
    IF old.issue_type = new.issue_type
    THEN
        RETURN new;
    END IF;

    SELECT item_id, launch_id, has_stats, retry_of, ('{' || replace(path::TEXT, '.', ',') || '}')::bigint[] AS arr_path INTO processed_test_item FROM test_item WHERE item_id = new.issue_id FOR UPDATE;

    cur_launch_id := processed_test_item.launch_id;
    IF cur_launch_id IS NULL
    THEN
        RETURN new;
    END IF;

    IF NOT processed_test_item.has_stats OR processed_test_item.retry_of IS NOT NULL
    THEN
        RETURN new;
    END IF;

    IF exists(SELECT 1
              FROM test_item AS parent
                       JOIN test_item AS child ON parent.item_id = child.parent_id
              WHERE (parent.item_id = new.issue_id AND child.has_stats)
        )
    THEN
        RETURN new;
    END IF;

    defect_field := (SELECT concat('statistics$defects$', lower(public.issue_group.issue_group :: VARCHAR), '$',
                                   lower(public.issue_type.locator))
                     FROM issue_type JOIN issue_group ON issue_type.issue_group_id = issue_group.issue_group_id
                     WHERE issue_type.id = new.issue_type);

    defect_field_old_id := (SELECT sf_id FROM statistics_field
                            WHERE statistics_field.name =
                                  (SELECT concat('statistics$defects$', lower(public.issue_group.issue_group :: VARCHAR), '$',
                                                 lower(public.issue_type.locator))
                                   FROM issue_type JOIN issue_group ON issue_type.issue_group_id = issue_group.issue_group_id
                                   WHERE issue_type.id = old.issue_type) LIMIT 1);

    defect_field_total := (SELECT concat('statistics$defects$', lower(public.issue_group.issue_group :: VARCHAR), '$total')
                           FROM issue_type JOIN issue_group ON issue_type.issue_group_id = issue_group.issue_group_id
                           WHERE issue_type.id = new.issue_type);

    defect_field_old_total_id := (SELECT sf_id
                                  FROM statistics_field
                                  WHERE statistics_field.name =
                                        (SELECT concat('statistics$defects$', lower(public.issue_group.issue_group :: VARCHAR), '$total')
                                         FROM issue_type JOIN issue_group ON issue_type.issue_group_id = issue_group.issue_group_id
                                         WHERE issue_type.id = old.issue_type) LIMIT 1);

    defect_field_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = defect_field LIMIT 1);
    IF defect_field_id IS NULL
    THEN
        INSERT INTO statistics_field (name) VALUES (defect_field) ON CONFLICT DO NOTHING;
        defect_field_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = defect_field LIMIT 1);
    END IF;

    defect_field_total_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = defect_field_total LIMIT 1);
    IF defect_field_total_id IS NULL
    THEN
        INSERT INTO statistics_field (name) VALUES (defect_field_total) ON CONFLICT DO NOTHING;
        defect_field_total_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = defect_field_total LIMIT 1);
    END IF;

    /* decrease item defects statistics for concrete field */
    UPDATE statistics SET s_counter = s_counter - 1
    WHERE statistics_field_id = defect_field_old_id
      AND statistics.item_id = ANY(processed_test_item.arr_path);

    /* increment item defects statistics for concrete field */
    INSERT INTO statistics (s_counter, statistics_field_id, item_id)
    VALUES (1, defect_field_id, unnest(processed_test_item.arr_path))
    ON CONFLICT (statistics_field_id,item_id) DO UPDATE SET s_counter = statistics.s_counter + 1;

    /* decrease item defects statistics for total field */
    UPDATE statistics
    SET s_counter = s_counter - 1
    WHERE statistics_field_id = defect_field_old_total_id
      AND item_id = ANY(processed_test_item.arr_path);

    /* increment item defects statistics for total field */
    INSERT INTO statistics (s_counter, statistics_field_id, item_id)
    VALUES (1, defect_field_total_id, unnest(processed_test_item.arr_path))
    ON CONFLICT (statistics_field_id,item_id) DO UPDATE SET s_counter = statistics.s_counter + 1;

    /* decrease launch defects statistics for concrete field */
    UPDATE statistics SET s_counter = s_counter - 1
    WHERE statistics_field_id = defect_field_old_id AND launch_id = cur_launch_id;

    /* increment launch defects statistics for concrete field */
    INSERT INTO statistics (s_counter, statistics_field_id, launch_id)
    VALUES (1, defect_field_id, cur_launch_id)
    ON CONFLICT (statistics_field_id,launch_id) DO UPDATE SET s_counter = statistics.s_counter + 1;

    /* decrease launch defects statistics for total field */
    UPDATE statistics SET s_counter = s_counter - 1
    WHERE statistics_field_id = defect_field_old_total_id AND launch_id = cur_launch_id;

    /* increment launch defects statistics for total field */
    INSERT INTO statistics (s_counter, statistics_field_id, launch_id)
    VALUES (1, defect_field_total_id, cur_launch_id)
    ON CONFLICT (statistics_field_id,launch_id) DO UPDATE SET s_counter = statistics.s_counter + 1;
    RETURN new;
END;
$_$;


ALTER FUNCTION public.update_defect_statistics() OWNER TO rpuser;

--
-- TOC entry 458 (class 1255 OID 17811)
-- Name: update_executions_statistics(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.update_executions_statistics() RETURNS trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    DECLARE
    executions_field          VARCHAR;
    DECLARE
    executions_field_id       BIGINT;
    DECLARE
    executions_field_old      VARCHAR;
    DECLARE
    executions_field_old_id   BIGINT;
    DECLARE
    executions_field_total    VARCHAR;
    DECLARE
    executions_field_total_id BIGINT;
    DECLARE
    cur_launch_id             BIGINT;
    DECLARE
    counter_decrease          INTEGER;
    DECLARE
    processed_test_item RECORD;
BEGIN
    SELECT item_id, launch_id, has_stats, retry_of, has_children, type::TEXT, ('{' || replace(path::TEXT, '.', ',') || '}')::bigint[] AS arr_path INTO processed_test_item FROM test_item WHERE item_id = new.result_id FOR UPDATE;

    cur_launch_id := processed_test_item.launch_id;
    IF cur_launch_id IS NULL
    THEN
        RETURN new;
    END IF;

    IF NOT processed_test_item.has_stats OR processed_test_item.retry_of IS NOT NULL
    THEN
        RETURN new;
    END IF;

    IF processed_test_item.has_children OR NOT processed_test_item.has_stats
           OR (processed_test_item.type != 'TEST'
               AND processed_test_item.type != 'SCENARIO'
               AND processed_test_item.type != 'STEP')
    THEN
        RETURN new;
    END IF;

    IF new.status = 'INTERRUPTED' :: STATUS_ENUM
    THEN
        executions_field := 'statistics$executions$failed';
    ELSE
        executions_field := concat('statistics$executions$', lower(new.status :: VARCHAR));
    END IF;
    executions_field_total := 'statistics$executions$total';

    executions_field_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = executions_field LIMIT 1);
    IF executions_field_id IS NULL
    THEN
        INSERT INTO statistics_field (name) VALUES (executions_field) ON CONFLICT DO NOTHING;
        executions_field_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = executions_field LIMIT 1);
    END IF;

    executions_field_total_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = executions_field_total LIMIT 1);
    IF executions_field_total_id IS NULL
    THEN
        INSERT INTO statistics_field (name) VALUES (executions_field_total) ON CONFLICT DO NOTHING;
        executions_field_total_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = executions_field_total LIMIT 1);
    END IF;

    IF old.status = 'IN_PROGRESS' :: STATUS_ENUM
    THEN
        INSERT INTO statistics (s_counter, statistics_field_id, item_id)
        VALUES (1, executions_field_id, unnest(processed_test_item.arr_path))
        ON CONFLICT (statistics_field_id,item_id) DO UPDATE SET s_counter = statistics.s_counter + 1;

        INSERT INTO statistics (s_counter, statistics_field_id, item_id)
        VALUES (1, executions_field_total_id, unnest(processed_test_item.arr_path))
        ON CONFLICT (statistics_field_id,item_id) DO UPDATE SET s_counter = statistics.s_counter + 1;

        /* increment launch executions statistics for concrete field */
        INSERT INTO statistics (s_counter, statistics_field_id, launch_id)
        VALUES (1, executions_field_id, cur_launch_id)
        ON CONFLICT (statistics_field_id,launch_id) DO UPDATE SET s_counter = statistics.s_counter + 1;

        /* increment launch executions statistics for total field */
        INSERT INTO statistics (s_counter, statistics_field_id, launch_id)
        VALUES (1, executions_field_total_id, cur_launch_id)
        ON CONFLICT (statistics_field_id,launch_id) DO UPDATE SET s_counter = statistics.s_counter + 1;
        RETURN new;
    END IF;

    IF old.status != 'IN_PROGRESS' :: STATUS_ENUM AND old.status != new.status
    THEN
        IF old.status = 'INTERRUPTED' :: STATUS_ENUM
        THEN
            executions_field_old := 'statistics$executions$failed';
        ELSE
            executions_field_old := concat('statistics$executions$', lower(old.status :: VARCHAR));
        END IF;
        executions_field_old_id = (SELECT sf_id FROM statistics_field WHERE statistics_field.name = executions_field_old LIMIT 1);

        SELECT s_counter INTO counter_decrease FROM statistics WHERE item_id = new.result_id
                                                                 AND statistics_field_id = executions_field_old_id;

        /* decrease item executions statistics for old field */
        UPDATE statistics SET s_counter = s_counter - counter_decrease
        WHERE statistics_field_id = executions_field_old_id AND item_id = ANY(processed_test_item.arr_path);

        /* increment item executions statistics for concrete field */
        INSERT INTO statistics (s_counter, statistics_field_id, item_id)
        VALUES (1, executions_field_id, unnest(processed_test_item.arr_path))
        ON CONFLICT (statistics_field_id,item_id) DO UPDATE SET s_counter = statistics.s_counter + 1;

        /* decrease item executions statistics for old field */
        UPDATE statistics SET s_counter = s_counter - counter_decrease WHERE statistics_field_id = executions_field_old_id
                                                                         AND launch_id = cur_launch_id;
        /* increment launch executions statistics for concrete field */
        INSERT INTO statistics (s_counter, statistics_field_id, launch_id) VALUES (1, executions_field_id, cur_launch_id)
        ON CONFLICT (statistics_field_id,launch_id) DO UPDATE SET s_counter = statistics.s_counter + 1;
        RETURN new;
    END IF;
    RETURN new;
END;
$_$;


ALTER FUNCTION public.update_executions_statistics() OWNER TO rpuser;

--
-- TOC entry 467 (class 1255 OID 18240)
-- Name: update_job_attributes_in_bounds(); Type: FUNCTION; Schema: public; Owner: rpuser
--

CREATE FUNCTION public.update_job_attributes_in_bounds() RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
prj_id                 BIGINT;

    launch_job_attr_id     BIGINT;
    log_job_attr_id        BIGINT;
    attachment_job_attr_id BIGINT;

    launch_job_value       BIGINT;
    log_job_value          BIGINT;
    attachment_job_value   BIGINT;
BEGIN
    launch_job_attr_id := (SELECT id
                           FROM attribute
                           WHERE attribute.name = 'job.keepLaunches');
    log_job_attr_id := (SELECT id
                        FROM attribute
                        WHERE attribute.name = 'job.keepLogs');
    attachment_job_attr_id := (SELECT id
                               FROM attribute
                               WHERE attribute.name = 'job.keepScreenshots');

FOR prj_id IN (SELECT id FROM project ORDER BY id)
        LOOP
            launch_job_value := (SELECT value::BIGINT FROM project_attribute WHERE attribute_id = launch_job_attr_id AND project_id = prj_id);
            log_job_value := (SELECT value::BIGINT FROM project_attribute WHERE attribute_id = log_job_attr_id AND project_id = prj_id);
            attachment_job_value := (SELECT value::BIGINT FROM project_attribute WHERE attribute_id = attachment_job_attr_id AND project_id = prj_id);

            IF launch_job_value != 0
            THEN
                IF log_job_value > launch_job_value OR log_job_value = 0
                THEN
                    log_job_value := launch_job_value;
UPDATE project_attribute
SET value = log_job_value
WHERE attribute_id = log_job_attr_id
  AND project_id = prj_id;
END IF;
END IF;

            IF log_job_value != 0
            THEN
                IF attachment_job_value > log_job_value OR attachment_job_value = 0
                THEN
                    attachment_job_value := log_job_value;
UPDATE project_attribute
SET value = attachment_job_value
WHERE attribute_id = attachment_job_attr_id
  AND project_id = prj_id;
END IF;
END IF;

END LOOP;

RETURN 0;
END;
$$;


ALTER FUNCTION public.update_job_attributes_in_bounds() OWNER TO rpuser;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 304 (class 1259 OID 18399)
-- Name: activity; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.activity (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    action character varying(24) NOT NULL,
    event_name character varying(32) NOT NULL,
    priority character varying(12) NOT NULL,
    object_id bigint,
    object_name character varying(128) NOT NULL,
    object_type character varying(24) NOT NULL,
    project_id bigint,
    details jsonb,
    subject_id bigint,
    subject_name character varying(128) NOT NULL,
    subject_type character varying(32) NOT NULL
);


ALTER TABLE public.activity OWNER TO rpuser;

--
-- TOC entry 303 (class 1259 OID 18397)
-- Name: activity_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.activity_id_seq OWNER TO rpuser;

--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 303
-- Name: activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.activity_id_seq OWNED BY public.activity.id;


--
-- TOC entry 302 (class 1259 OID 18372)
-- Name: api_keys; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.api_keys (
    id bigint NOT NULL,
    name character varying(255),
    hash character varying(255),
    created_at timestamp without time zone NOT NULL,
    user_id bigint,
    last_used_at date
);


ALTER TABLE public.api_keys OWNER TO rpuser;

--
-- TOC entry 301 (class 1259 OID 18370)
-- Name: api_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.api_keys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.api_keys_id_seq OWNER TO rpuser;

--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 301
-- Name: api_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.api_keys_id_seq OWNED BY public.api_keys.id;


--
-- TOC entry 263 (class 1259 OID 17511)
-- Name: attachment; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.attachment (
    id bigint NOT NULL,
    file_id text NOT NULL,
    thumbnail_id text,
    content_type text,
    project_id bigint,
    launch_id bigint,
    item_id bigint,
    file_size bigint DEFAULT 0 NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    file_name character varying(512)
);


ALTER TABLE public.attachment OWNER TO rpuser;

--
-- TOC entry 293 (class 1259 OID 18217)
-- Name: attachment_deletion; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.attachment_deletion (
    id bigint NOT NULL,
    file_id text NOT NULL,
    thumbnail_id text,
    creation_attachment_date timestamp without time zone,
    deletion_date timestamp without time zone
);


ALTER TABLE public.attachment_deletion OWNER TO rpuser;

--
-- TOC entry 262 (class 1259 OID 17509)
-- Name: attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attachment_id_seq OWNER TO rpuser;

--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 262
-- Name: attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.attachment_id_seq OWNED BY public.attachment.id;


--
-- TOC entry 229 (class 1259 OID 17048)
-- Name: attribute; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.attribute (
    id bigint NOT NULL,
    name character varying(256)
);


ALTER TABLE public.attribute OWNER TO rpuser;

--
-- TOC entry 228 (class 1259 OID 17046)
-- Name: attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attribute_id_seq OWNER TO rpuser;

--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 228
-- Name: attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.attribute_id_seq OWNED BY public.attribute.id;


--
-- TOC entry 295 (class 1259 OID 18263)
-- Name: clusters; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.clusters (
    id bigint NOT NULL,
    index_id bigint NOT NULL,
    project_id bigint NOT NULL,
    launch_id bigint NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.clusters OWNER TO rpuser;

--
-- TOC entry 294 (class 1259 OID 18261)
-- Name: clusters_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.clusters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clusters_id_seq OWNER TO rpuser;

--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 294
-- Name: clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.clusters_id_seq OWNED BY public.clusters.id;


--
-- TOC entry 296 (class 1259 OID 18277)
-- Name: clusters_test_item; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.clusters_test_item (
    cluster_id bigint NOT NULL,
    item_id bigint NOT NULL
);


ALTER TABLE public.clusters_test_item OWNER TO rpuser;

--
-- TOC entry 246 (class 1259 OID 17289)
-- Name: content_field; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.content_field (
    id bigint,
    field character varying NOT NULL
);


ALTER TABLE public.content_field OWNER TO rpuser;

--
-- TOC entry 244 (class 1259 OID 17262)
-- Name: dashboard; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.dashboard (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying,
    creation_date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.dashboard OWNER TO rpuser;

--
-- TOC entry 247 (class 1259 OID 17302)
-- Name: dashboard_widget; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.dashboard_widget (
    dashboard_id bigint NOT NULL,
    widget_id bigint NOT NULL,
    widget_name character varying NOT NULL,
    widget_owner character varying NOT NULL,
    widget_type character varying NOT NULL,
    widget_width integer NOT NULL,
    widget_height integer NOT NULL,
    widget_position_x integer NOT NULL,
    widget_position_y integer NOT NULL,
    is_created_on boolean DEFAULT false NOT NULL
);


ALTER TABLE public.dashboard_widget OWNER TO rpuser;

--
-- TOC entry 239 (class 1259 OID 17214)
-- Name: filter; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.filter (
    id bigint NOT NULL,
    name character varying NOT NULL,
    target character varying NOT NULL,
    description character varying
);


ALTER TABLE public.filter OWNER TO rpuser;

--
-- TOC entry 241 (class 1259 OID 17229)
-- Name: filter_condition; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.filter_condition (
    id bigint NOT NULL,
    filter_id bigint,
    condition public.filter_condition_enum NOT NULL,
    value character varying NOT NULL,
    search_criteria character varying NOT NULL,
    negative boolean NOT NULL
);


ALTER TABLE public.filter_condition OWNER TO rpuser;

--
-- TOC entry 240 (class 1259 OID 17227)
-- Name: filter_condition_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.filter_condition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.filter_condition_id_seq OWNER TO rpuser;

--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 240
-- Name: filter_condition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.filter_condition_id_seq OWNED BY public.filter_condition.id;


--
-- TOC entry 243 (class 1259 OID 17246)
-- Name: filter_sort; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.filter_sort (
    id bigint NOT NULL,
    filter_id bigint,
    field character varying NOT NULL,
    direction public.sort_direction_enum DEFAULT 'ASC'::public.sort_direction_enum NOT NULL
);


ALTER TABLE public.filter_sort OWNER TO rpuser;

--
-- TOC entry 242 (class 1259 OID 17244)
-- Name: filter_sort_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.filter_sort_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.filter_sort_id_seq OWNER TO rpuser;

--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 242
-- Name: filter_sort_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.filter_sort_id_seq OWNED BY public.filter_sort.id;


--
-- TOC entry 236 (class 1259 OID 17091)
-- Name: integration; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.integration (
    id integer NOT NULL,
    name character varying NOT NULL,
    project_id bigint,
    type integer,
    enabled boolean NOT NULL,
    params jsonb,
    creator character varying NOT NULL,
    creation_date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.integration OWNER TO rpuser;

--
-- TOC entry 235 (class 1259 OID 17089)
-- Name: integration_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.integration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.integration_id_seq OWNER TO rpuser;

--
-- TOC entry 4101 (class 0 OID 0)
-- Dependencies: 235
-- Name: integration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.integration_id_seq OWNED BY public.integration.id;


--
-- TOC entry 234 (class 1259 OID 17077)
-- Name: integration_type; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.integration_type (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    auth_flow public.integration_auth_flow_enum,
    creation_date timestamp without time zone DEFAULT now() NOT NULL,
    group_type public.integration_group_enum NOT NULL,
    enabled boolean NOT NULL,
    details jsonb
);


ALTER TABLE public.integration_type OWNER TO rpuser;

--
-- TOC entry 233 (class 1259 OID 17075)
-- Name: integration_type_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.integration_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.integration_type_id_seq OWNER TO rpuser;

--
-- TOC entry 4102 (class 0 OID 0)
-- Dependencies: 233
-- Name: integration_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.integration_type_id_seq OWNED BY public.integration_type.id;


--
-- TOC entry 277 (class 1259 OID 17682)
-- Name: issue; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.issue (
    issue_id bigint NOT NULL,
    issue_type bigint,
    issue_description text,
    auto_analyzed boolean DEFAULT false,
    ignore_analyzer boolean DEFAULT false
);


ALTER TABLE public.issue OWNER TO rpuser;

--
-- TOC entry 269 (class 1259 OID 17604)
-- Name: issue_group; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.issue_group (
    issue_group_id smallint NOT NULL,
    issue_group public.issue_group_enum NOT NULL
);


ALTER TABLE public.issue_group OWNER TO rpuser;

--
-- TOC entry 268 (class 1259 OID 17602)
-- Name: issue_group_issue_group_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.issue_group_issue_group_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.issue_group_issue_group_id_seq OWNER TO rpuser;

--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 268
-- Name: issue_group_issue_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.issue_group_issue_group_id_seq OWNED BY public.issue_group.issue_group_id;


--
-- TOC entry 280 (class 1259 OID 17716)
-- Name: issue_ticket; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.issue_ticket (
    issue_id bigint NOT NULL,
    ticket_id bigint NOT NULL
);


ALTER TABLE public.issue_ticket OWNER TO rpuser;

--
-- TOC entry 271 (class 1259 OID 17612)
-- Name: issue_type; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.issue_type (
    id bigint NOT NULL,
    issue_group_id smallint,
    locator character varying(64) NOT NULL,
    issue_name character varying(256) NOT NULL,
    abbreviation character varying(64) NOT NULL,
    hex_color character varying(7) NOT NULL
);


ALTER TABLE public.issue_type OWNER TO rpuser;

--
-- TOC entry 270 (class 1259 OID 17610)
-- Name: issue_type_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.issue_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.issue_type_id_seq OWNER TO rpuser;

--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 270
-- Name: issue_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.issue_type_id_seq OWNED BY public.issue_type.id;


--
-- TOC entry 276 (class 1259 OID 17667)
-- Name: issue_type_project; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.issue_type_project (
    project_id bigint NOT NULL,
    issue_type_id bigint NOT NULL
);


ALTER TABLE public.issue_type_project OWNER TO rpuser;

--
-- TOC entry 261 (class 1259 OID 17486)
-- Name: item_attribute; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.item_attribute (
    id bigint NOT NULL,
    key character varying,
    value character varying NOT NULL,
    item_id bigint,
    launch_id bigint,
    system boolean DEFAULT false,
    CONSTRAINT item_attribute_check CHECK ((((item_id IS NOT NULL) AND (launch_id IS NULL)) OR ((item_id IS NULL) AND (launch_id IS NOT NULL))))
);


ALTER TABLE public.item_attribute OWNER TO rpuser;

--
-- TOC entry 260 (class 1259 OID 17484)
-- Name: item_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.item_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.item_attribute_id_seq OWNER TO rpuser;

--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 260
-- Name: item_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.item_attribute_id_seq OWNED BY public.item_attribute.id;


--
-- TOC entry 250 (class 1259 OID 17341)
-- Name: launch; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.launch (
    id bigint NOT NULL,
    uuid character varying(36) NOT NULL,
    project_id bigint NOT NULL,
    user_id bigint,
    name character varying(256) NOT NULL,
    description text,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone,
    number integer NOT NULL,
    last_modified timestamp without time zone DEFAULT now() NOT NULL,
    mode public.launch_mode_enum NOT NULL,
    status public.status_enum NOT NULL,
    has_retries boolean DEFAULT false NOT NULL,
    rerun boolean DEFAULT false NOT NULL,
    approximate_duration double precision DEFAULT 0.0
);


ALTER TABLE public.launch OWNER TO rpuser;

--
-- TOC entry 226 (class 1259 OID 17022)
-- Name: launch_attribute_rules; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.launch_attribute_rules (
    id bigint NOT NULL,
    sender_case_id bigint NOT NULL,
    key character varying(512),
    value character varying(512) NOT NULL
);


ALTER TABLE public.launch_attribute_rules OWNER TO rpuser;

--
-- TOC entry 225 (class 1259 OID 17020)
-- Name: launch_attribute_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.launch_attribute_rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.launch_attribute_rules_id_seq OWNER TO rpuser;

--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 225
-- Name: launch_attribute_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.launch_attribute_rules_id_seq OWNED BY public.launch_attribute_rules.id;


--
-- TOC entry 249 (class 1259 OID 17339)
-- Name: launch_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.launch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.launch_id_seq OWNER TO rpuser;

--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 249
-- Name: launch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.launch_id_seq OWNED BY public.launch.id;


--
-- TOC entry 224 (class 1259 OID 17011)
-- Name: launch_names; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.launch_names (
    sender_case_id bigint,
    launch_name character varying(256)
);


ALTER TABLE public.launch_names OWNER TO rpuser;

--
-- TOC entry 252 (class 1259 OID 17373)
-- Name: launch_number; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.launch_number (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    launch_name character varying(256) NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.launch_number OWNER TO rpuser;

--
-- TOC entry 251 (class 1259 OID 17371)
-- Name: launch_number_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.launch_number_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.launch_number_id_seq OWNER TO rpuser;

--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 251
-- Name: launch_number_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.launch_number_id_seq OWNED BY public.launch_number.id;


--
-- TOC entry 265 (class 1259 OID 17525)
-- Name: log; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.log (
    id bigint NOT NULL,
    uuid character varying(36) NOT NULL,
    log_time timestamp without time zone NOT NULL,
    log_message text NOT NULL,
    item_id bigint,
    launch_id bigint,
    last_modified timestamp without time zone NOT NULL,
    log_level integer NOT NULL,
    attachment_id bigint,
    project_id bigint NOT NULL,
    cluster_id bigint,
    CONSTRAINT log_check CHECK ((((item_id IS NOT NULL) AND (launch_id IS NULL)) OR ((item_id IS NULL) AND (launch_id IS NOT NULL))))
);


ALTER TABLE public.log OWNER TO rpuser;

--
-- TOC entry 264 (class 1259 OID 17523)
-- Name: log_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.log_id_seq OWNER TO rpuser;

--
-- TOC entry 4109 (class 0 OID 0)
-- Dependencies: 264
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.log_id_seq OWNED BY public.log.id;


--
-- TOC entry 216 (class 1259 OID 16951)
-- Name: oauth_registration; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.oauth_registration (
    id character varying(64) NOT NULL,
    client_id character varying(128) NOT NULL,
    client_secret character varying(256),
    client_auth_method character varying(64) NOT NULL,
    auth_grant_type character varying(64),
    redirect_uri_template character varying(256),
    authorization_uri character varying(256),
    token_uri character varying(256),
    user_info_endpoint_uri character varying(256),
    user_info_endpoint_name_attr character varying(256),
    jwk_set_uri character varying(256),
    client_name character varying(128)
);


ALTER TABLE public.oauth_registration OWNER TO rpuser;

--
-- TOC entry 220 (class 1259 OID 16978)
-- Name: oauth_registration_restriction; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.oauth_registration_restriction (
    id integer NOT NULL,
    oauth_registration_fk character varying(128),
    type character varying(256) NOT NULL,
    value character varying(256) NOT NULL
);


ALTER TABLE public.oauth_registration_restriction OWNER TO rpuser;

--
-- TOC entry 219 (class 1259 OID 16976)
-- Name: oauth_registration_restriction_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.oauth_registration_restriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.oauth_registration_restriction_id_seq OWNER TO rpuser;

--
-- TOC entry 4110 (class 0 OID 0)
-- Dependencies: 219
-- Name: oauth_registration_restriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.oauth_registration_restriction_id_seq OWNED BY public.oauth_registration_restriction.id;


--
-- TOC entry 218 (class 1259 OID 16963)
-- Name: oauth_registration_scope; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.oauth_registration_scope (
    id integer NOT NULL,
    oauth_registration_fk character varying(128),
    scope character varying(256)
);


ALTER TABLE public.oauth_registration_scope OWNER TO rpuser;

--
-- TOC entry 217 (class 1259 OID 16961)
-- Name: oauth_registration_scope_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.oauth_registration_scope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.oauth_registration_scope_id_seq OWNER TO rpuser;

--
-- TOC entry 4111 (class 0 OID 0)
-- Dependencies: 217
-- Name: oauth_registration_scope_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.oauth_registration_scope_id_seq OWNED BY public.oauth_registration_scope.id;


--
-- TOC entry 298 (class 1259 OID 18295)
-- Name: onboarding; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.onboarding (
    id smallint NOT NULL,
    data text,
    page character varying(50) NOT NULL,
    available_from timestamp without time zone,
    available_to timestamp without time zone
);


ALTER TABLE public.onboarding OWNER TO rpuser;

--
-- TOC entry 297 (class 1259 OID 18293)
-- Name: onboarding_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.onboarding_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.onboarding_id_seq OWNER TO rpuser;

--
-- TOC entry 4112 (class 0 OID 0)
-- Dependencies: 297
-- Name: onboarding_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.onboarding_id_seq OWNED BY public.onboarding.id;


--
-- TOC entry 238 (class 1259 OID 17192)
-- Name: owned_entity; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.owned_entity (
    id bigint NOT NULL,
    owner character varying,
    project_id bigint NOT NULL
);


ALTER TABLE public.owned_entity OWNER TO rpuser;

--
-- TOC entry 259 (class 1259 OID 17472)
-- Name: parameter; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.parameter (
    item_id bigint,
    key character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.parameter OWNER TO rpuser;

--
-- TOC entry 257 (class 1259 OID 17439)
-- Name: pattern_template; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.pattern_template (
    id bigint NOT NULL,
    name character varying NOT NULL,
    value character varying NOT NULL,
    type character varying NOT NULL,
    enabled boolean NOT NULL,
    project_id bigint NOT NULL
);


ALTER TABLE public.pattern_template OWNER TO rpuser;

--
-- TOC entry 256 (class 1259 OID 17437)
-- Name: pattern_template_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.pattern_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pattern_template_id_seq OWNER TO rpuser;

--
-- TOC entry 4113 (class 0 OID 0)
-- Dependencies: 256
-- Name: pattern_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.pattern_template_id_seq OWNED BY public.pattern_template.id;


--
-- TOC entry 258 (class 1259 OID 17455)
-- Name: pattern_template_test_item; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.pattern_template_test_item (
    pattern_id bigint NOT NULL,
    item_id bigint NOT NULL
);


ALTER TABLE public.pattern_template_test_item OWNER TO rpuser;

--
-- TOC entry 210 (class 1259 OID 16864)
-- Name: project; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.project (
    id bigint NOT NULL,
    name character varying NOT NULL,
    project_type character varying NOT NULL,
    organization character varying,
    creation_date timestamp without time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    allocated_storage bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.project OWNER TO rpuser;

--
-- TOC entry 232 (class 1259 OID 17058)
-- Name: project_attribute; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.project_attribute (
    attribute_id bigint NOT NULL,
    value character varying(256) NOT NULL,
    project_id bigint NOT NULL
);


ALTER TABLE public.project_attribute OWNER TO rpuser;

--
-- TOC entry 230 (class 1259 OID 17054)
-- Name: project_attribute_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.project_attribute_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_attribute_attribute_id_seq OWNER TO rpuser;

--
-- TOC entry 4114 (class 0 OID 0)
-- Dependencies: 230
-- Name: project_attribute_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.project_attribute_attribute_id_seq OWNED BY public.project_attribute.attribute_id;


--
-- TOC entry 231 (class 1259 OID 17056)
-- Name: project_attribute_project_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.project_attribute_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_attribute_project_id_seq OWNER TO rpuser;

--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 231
-- Name: project_attribute_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.project_attribute_project_id_seq OWNED BY public.project_attribute.project_id;


--
-- TOC entry 209 (class 1259 OID 16862)
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_id_seq OWNER TO rpuser;

--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 209
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.project_id_seq OWNED BY public.project.id;


--
-- TOC entry 215 (class 1259 OID 16917)
-- Name: project_user; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.project_user (
    user_id bigint NOT NULL,
    project_id bigint NOT NULL,
    project_role public.project_role_enum NOT NULL
);


ALTER TABLE public.project_user OWNER TO rpuser;

--
-- TOC entry 227 (class 1259 OID 17037)
-- Name: recipients; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.recipients (
    sender_case_id bigint,
    recipient character varying(256)
);


ALTER TABLE public.recipients OWNER TO rpuser;

--
-- TOC entry 212 (class 1259 OID 16891)
-- Name: restore_password_bid; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.restore_password_bid (
    uuid character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT now(),
    email character varying NOT NULL
);


ALTER TABLE public.restore_password_bid OWNER TO rpuser;

--
-- TOC entry 206 (class 1259 OID 16385)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    dirty boolean NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO rpuser;

--
-- TOC entry 223 (class 1259 OID 16998)
-- Name: sender_case; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.sender_case (
    id bigint NOT NULL,
    send_case character varying(256) NOT NULL,
    project_id bigint NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    attributes_operator public.logical_operator_enum DEFAULT 'AND'::public.logical_operator_enum NOT NULL,
    rule_name character varying(55) NOT NULL
);


ALTER TABLE public.sender_case OWNER TO rpuser;

--
-- TOC entry 221 (class 1259 OID 16994)
-- Name: sender_case_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.sender_case_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sender_case_id_seq OWNER TO rpuser;

--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 221
-- Name: sender_case_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.sender_case_id_seq OWNED BY public.sender_case.id;


--
-- TOC entry 222 (class 1259 OID 16996)
-- Name: sender_case_project_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.sender_case_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sender_case_project_id_seq OWNER TO rpuser;

--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 222
-- Name: sender_case_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.sender_case_project_id_seq OWNED BY public.sender_case.project_id;


--
-- TOC entry 208 (class 1259 OID 16851)
-- Name: server_settings; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.server_settings (
    id smallint NOT NULL,
    key character varying NOT NULL,
    value character varying
);


ALTER TABLE public.server_settings OWNER TO rpuser;

--
-- TOC entry 207 (class 1259 OID 16849)
-- Name: server_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.server_settings_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.server_settings_id_seq OWNER TO rpuser;

--
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 207
-- Name: server_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.server_settings_id_seq OWNED BY public.server_settings.id;


--
-- TOC entry 237 (class 1259 OID 17190)
-- Name: shareable_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.shareable_entity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shareable_entity_id_seq OWNER TO rpuser;

--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 237
-- Name: shareable_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.shareable_entity_id_seq OWNED BY public.owned_entity.id;


--
-- TOC entry 292 (class 1259 OID 18208)
-- Name: shedlock; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.shedlock (
    name character varying(64) NOT NULL,
    lock_until timestamp without time zone NOT NULL,
    locked_at timestamp without time zone NOT NULL,
    locked_by character varying(255) NOT NULL
);


ALTER TABLE public.shedlock OWNER TO rpuser;

--
-- TOC entry 300 (class 1259 OID 18330)
-- Name: stale_materialized_view; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.stale_materialized_view (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    creation_date timestamp without time zone NOT NULL
);


ALTER TABLE public.stale_materialized_view OWNER TO rpuser;

--
-- TOC entry 299 (class 1259 OID 18328)
-- Name: stale_materialized_view_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.stale_materialized_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stale_materialized_view_id_seq OWNER TO rpuser;

--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 299
-- Name: stale_materialized_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.stale_materialized_view_id_seq OWNED BY public.stale_materialized_view.id;


--
-- TOC entry 275 (class 1259 OID 17638)
-- Name: statistics; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.statistics (
    s_id bigint NOT NULL,
    s_counter integer DEFAULT 0,
    launch_id bigint,
    item_id bigint,
    statistics_field_id bigint,
    CONSTRAINT statistics_check CHECK (((s_counter >= 0) AND (((item_id IS NOT NULL) AND (launch_id IS NULL)) OR ((launch_id IS NOT NULL) AND (item_id IS NULL)))))
);


ALTER TABLE public.statistics OWNER TO rpuser;

--
-- TOC entry 273 (class 1259 OID 17628)
-- Name: statistics_field; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.statistics_field (
    sf_id bigint NOT NULL,
    name character varying(256) NOT NULL
);


ALTER TABLE public.statistics_field OWNER TO rpuser;

--
-- TOC entry 272 (class 1259 OID 17626)
-- Name: statistics_field_sf_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.statistics_field_sf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.statistics_field_sf_id_seq OWNER TO rpuser;

--
-- TOC entry 4122 (class 0 OID 0)
-- Dependencies: 272
-- Name: statistics_field_sf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.statistics_field_sf_id_seq OWNED BY public.statistics_field.sf_id;


--
-- TOC entry 274 (class 1259 OID 17636)
-- Name: statistics_s_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.statistics_s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.statistics_s_id_seq OWNER TO rpuser;

--
-- TOC entry 4123 (class 0 OID 0)
-- Dependencies: 274
-- Name: statistics_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.statistics_s_id_seq OWNED BY public.statistics.s_id;


--
-- TOC entry 254 (class 1259 OID 17388)
-- Name: test_item; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.test_item (
    item_id bigint NOT NULL,
    uuid character varying(36) NOT NULL,
    name character varying(1024),
    code_ref character varying,
    type public.test_item_type_enum NOT NULL,
    start_time timestamp without time zone NOT NULL,
    description text,
    last_modified timestamp without time zone NOT NULL,
    path public.ltree,
    unique_id character varying(1024),
    test_case_id character varying(1024),
    has_children boolean DEFAULT false,
    has_retries boolean DEFAULT false,
    has_stats boolean DEFAULT true,
    parent_id bigint,
    retry_of bigint,
    launch_id bigint,
    test_case_hash integer NOT NULL
);


ALTER TABLE public.test_item OWNER TO rpuser;

--
-- TOC entry 253 (class 1259 OID 17386)
-- Name: test_item_item_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.test_item_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_item_item_id_seq OWNER TO rpuser;

--
-- TOC entry 4124 (class 0 OID 0)
-- Dependencies: 253
-- Name: test_item_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.test_item_item_id_seq OWNED BY public.test_item.item_id;


--
-- TOC entry 255 (class 1259 OID 17425)
-- Name: test_item_results; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.test_item_results (
    result_id bigint NOT NULL,
    status public.status_enum NOT NULL,
    end_time timestamp without time zone,
    duration double precision
);


ALTER TABLE public.test_item_results OWNER TO rpuser;

--
-- TOC entry 279 (class 1259 OID 17705)
-- Name: ticket; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.ticket (
    id bigint NOT NULL,
    ticket_id character varying(256) NOT NULL,
    submitter character varying NOT NULL,
    submit_date timestamp without time zone DEFAULT now() NOT NULL,
    bts_url character varying(1024) NOT NULL,
    bts_project character varying(1024) NOT NULL,
    url character varying(1024) NOT NULL,
    plugin_name character varying(128)
);


ALTER TABLE public.ticket OWNER TO rpuser;

--
-- TOC entry 278 (class 1259 OID 17703)
-- Name: ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ticket_id_seq OWNER TO rpuser;

--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 278
-- Name: ticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.ticket_id_seq OWNED BY public.ticket.id;


--
-- TOC entry 211 (class 1259 OID 16876)
-- Name: user_creation_bid; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.user_creation_bid (
    uuid character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT now(),
    email character varying NOT NULL,
    role character varying NOT NULL,
    inviting_user_id bigint,
    project_name character varying NOT NULL,
    metadata jsonb
);


ALTER TABLE public.user_creation_bid OWNER TO rpuser;

--
-- TOC entry 267 (class 1259 OID 17579)
-- Name: user_preference; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.user_preference (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    user_id bigint NOT NULL,
    filter_id bigint NOT NULL
);


ALTER TABLE public.user_preference OWNER TO rpuser;

--
-- TOC entry 266 (class 1259 OID 17577)
-- Name: user_preference_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.user_preference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_preference_id_seq OWNER TO rpuser;

--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 266
-- Name: user_preference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.user_preference_id_seq OWNED BY public.user_preference.id;


--
-- TOC entry 214 (class 1259 OID 16904)
-- Name: users; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    login character varying NOT NULL,
    password character varying,
    email character varying NOT NULL,
    attachment character varying,
    attachment_thumbnail character varying,
    role character varying NOT NULL,
    type character varying NOT NULL,
    expired boolean NOT NULL,
    full_name character varying,
    metadata jsonb
);


ALTER TABLE public.users OWNER TO rpuser;

--
-- TOC entry 213 (class 1259 OID 16902)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: rpuser
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO rpuser;

--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 213
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rpuser
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 245 (class 1259 OID 17276)
-- Name: widget; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.widget (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying,
    widget_type character varying NOT NULL,
    items_count smallint,
    widget_options jsonb
);


ALTER TABLE public.widget OWNER TO rpuser;

--
-- TOC entry 248 (class 1259 OID 17324)
-- Name: widget_filter; Type: TABLE; Schema: public; Owner: rpuser
--

CREATE TABLE public.widget_filter (
    widget_id bigint NOT NULL,
    filter_id bigint NOT NULL
);


ALTER TABLE public.widget_filter OWNER TO rpuser;

--
-- TOC entry 286 (class 1259 OID 17888)
-- Name: scheduler_blob_triggers; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_blob_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
);


ALTER TABLE quartz.scheduler_blob_triggers OWNER TO rpuser;

--
-- TOC entry 287 (class 1259 OID 17901)
-- Name: scheduler_calendars; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_calendars (
    sched_name character varying(120) NOT NULL,
    calendar_name character varying(200) NOT NULL,
    calendar bytea NOT NULL
);


ALTER TABLE quartz.scheduler_calendars OWNER TO rpuser;

--
-- TOC entry 284 (class 1259 OID 17862)
-- Name: scheduler_cron_triggers; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_cron_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120) NOT NULL,
    time_zone_id character varying(80)
);


ALTER TABLE quartz.scheduler_cron_triggers OWNER TO rpuser;

--
-- TOC entry 289 (class 1259 OID 17914)
-- Name: scheduler_fired_triggers; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_fired_triggers (
    sched_name character varying(120) NOT NULL,
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    instance_name character varying(200) NOT NULL,
    fired_time bigint NOT NULL,
    sched_time bigint NOT NULL,
    priority integer NOT NULL,
    state character varying(16) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_nonconcurrent boolean,
    requests_recovery boolean
);


ALTER TABLE quartz.scheduler_fired_triggers OWNER TO rpuser;

--
-- TOC entry 281 (class 1259 OID 17828)
-- Name: scheduler_job_details; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_job_details (
    sched_name character varying(120) NOT NULL,
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250) NOT NULL,
    is_durable boolean NOT NULL,
    is_nonconcurrent boolean NOT NULL,
    is_update_data boolean NOT NULL,
    requests_recovery boolean NOT NULL,
    job_data bytea
);


ALTER TABLE quartz.scheduler_job_details OWNER TO rpuser;

--
-- TOC entry 291 (class 1259 OID 17927)
-- Name: scheduler_locks; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_locks (
    sched_name character varying(120) NOT NULL,
    lock_name character varying(40) NOT NULL
);


ALTER TABLE quartz.scheduler_locks OWNER TO rpuser;

--
-- TOC entry 288 (class 1259 OID 17909)
-- Name: scheduler_paused_trigger_grps; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_paused_trigger_grps (
    sched_name character varying(120) NOT NULL,
    trigger_group character varying(200) NOT NULL
);


ALTER TABLE quartz.scheduler_paused_trigger_grps OWNER TO rpuser;

--
-- TOC entry 290 (class 1259 OID 17922)
-- Name: scheduler_scheduler_state; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_scheduler_state (
    sched_name character varying(120) NOT NULL,
    instance_name character varying(200) NOT NULL,
    last_checkin_time bigint NOT NULL,
    checkin_interval bigint NOT NULL
);


ALTER TABLE quartz.scheduler_scheduler_state OWNER TO rpuser;

--
-- TOC entry 283 (class 1259 OID 17849)
-- Name: scheduler_simple_triggers; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_simple_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count bigint NOT NULL,
    repeat_interval bigint NOT NULL,
    times_triggered bigint NOT NULL
);


ALTER TABLE quartz.scheduler_simple_triggers OWNER TO rpuser;

--
-- TOC entry 285 (class 1259 OID 17875)
-- Name: scheduler_simprop_triggers; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_simprop_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 integer,
    int_prop_2 integer,
    long_prop_1 bigint,
    long_prop_2 bigint,
    dec_prop_1 numeric(13,4),
    dec_prop_2 numeric(13,4),
    bool_prop_1 boolean,
    bool_prop_2 boolean
);


ALTER TABLE quartz.scheduler_simprop_triggers OWNER TO rpuser;

--
-- TOC entry 282 (class 1259 OID 17836)
-- Name: scheduler_triggers; Type: TABLE; Schema: quartz; Owner: rpuser
--

CREATE TABLE quartz.scheduler_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    next_fire_time bigint,
    prev_fire_time bigint,
    priority integer,
    trigger_state character varying(16) NOT NULL,
    trigger_type character varying(8) NOT NULL,
    start_time bigint NOT NULL,
    end_time bigint,
    calendar_name character varying(200),
    misfire_instr smallint,
    job_data bytea
);


ALTER TABLE quartz.scheduler_triggers OWNER TO rpuser;

--
-- TOC entry 3545 (class 2604 OID 18402)
-- Name: activity id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.activity ALTER COLUMN id SET DEFAULT nextval('public.activity_id_seq'::regclass);


--
-- TOC entry 3544 (class 2604 OID 18375)
-- Name: api_keys id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.api_keys ALTER COLUMN id SET DEFAULT nextval('public.api_keys_id_seq'::regclass);


--
-- TOC entry 3528 (class 2604 OID 17514)
-- Name: attachment id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.attachment ALTER COLUMN id SET DEFAULT nextval('public.attachment_id_seq'::regclass);


--
-- TOC entry 3502 (class 2604 OID 17051)
-- Name: attribute id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.attribute ALTER COLUMN id SET DEFAULT nextval('public.attribute_id_seq'::regclass);


--
-- TOC entry 3541 (class 2604 OID 18266)
-- Name: clusters id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.clusters ALTER COLUMN id SET DEFAULT nextval('public.clusters_id_seq'::regclass);


--
-- TOC entry 3510 (class 2604 OID 17232)
-- Name: filter_condition id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.filter_condition ALTER COLUMN id SET DEFAULT nextval('public.filter_condition_id_seq'::regclass);


--
-- TOC entry 3511 (class 2604 OID 17249)
-- Name: filter_sort id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.filter_sort ALTER COLUMN id SET DEFAULT nextval('public.filter_sort_id_seq'::regclass);


--
-- TOC entry 3507 (class 2604 OID 17094)
-- Name: integration id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.integration ALTER COLUMN id SET DEFAULT nextval('public.integration_id_seq'::regclass);


--
-- TOC entry 3505 (class 2604 OID 17080)
-- Name: integration_type id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.integration_type ALTER COLUMN id SET DEFAULT nextval('public.integration_type_id_seq'::regclass);


--
-- TOC entry 3532 (class 2604 OID 17607)
-- Name: issue_group issue_group_id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_group ALTER COLUMN issue_group_id SET DEFAULT nextval('public.issue_group_issue_group_id_seq'::regclass);


--
-- TOC entry 3533 (class 2604 OID 17615)
-- Name: issue_type id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_type ALTER COLUMN id SET DEFAULT nextval('public.issue_type_id_seq'::regclass);


--
-- TOC entry 3526 (class 2604 OID 17489)
-- Name: item_attribute id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.item_attribute ALTER COLUMN id SET DEFAULT nextval('public.item_attribute_id_seq'::regclass);


--
-- TOC entry 3515 (class 2604 OID 17344)
-- Name: launch id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch ALTER COLUMN id SET DEFAULT nextval('public.launch_id_seq'::regclass);


--
-- TOC entry 3501 (class 2604 OID 17025)
-- Name: launch_attribute_rules id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch_attribute_rules ALTER COLUMN id SET DEFAULT nextval('public.launch_attribute_rules_id_seq'::regclass);


--
-- TOC entry 3520 (class 2604 OID 17376)
-- Name: launch_number id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch_number ALTER COLUMN id SET DEFAULT nextval('public.launch_number_id_seq'::regclass);


--
-- TOC entry 3530 (class 2604 OID 17528)
-- Name: log id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.log ALTER COLUMN id SET DEFAULT nextval('public.log_id_seq'::regclass);


--
-- TOC entry 3496 (class 2604 OID 16981)
-- Name: oauth_registration_restriction id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration_restriction ALTER COLUMN id SET DEFAULT nextval('public.oauth_registration_restriction_id_seq'::regclass);


--
-- TOC entry 3495 (class 2604 OID 16966)
-- Name: oauth_registration_scope id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration_scope ALTER COLUMN id SET DEFAULT nextval('public.oauth_registration_scope_id_seq'::regclass);


--
-- TOC entry 3542 (class 2604 OID 18298)
-- Name: onboarding id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.onboarding ALTER COLUMN id SET DEFAULT nextval('public.onboarding_id_seq'::regclass);


--
-- TOC entry 3509 (class 2604 OID 17195)
-- Name: owned_entity id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.owned_entity ALTER COLUMN id SET DEFAULT nextval('public.shareable_entity_id_seq'::regclass);


--
-- TOC entry 3525 (class 2604 OID 17442)
-- Name: pattern_template id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.pattern_template ALTER COLUMN id SET DEFAULT nextval('public.pattern_template_id_seq'::regclass);


--
-- TOC entry 3489 (class 2604 OID 16867)
-- Name: project id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project ALTER COLUMN id SET DEFAULT nextval('public.project_id_seq'::regclass);


--
-- TOC entry 3503 (class 2604 OID 17061)
-- Name: project_attribute attribute_id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project_attribute ALTER COLUMN attribute_id SET DEFAULT nextval('public.project_attribute_attribute_id_seq'::regclass);


--
-- TOC entry 3504 (class 2604 OID 17062)
-- Name: project_attribute project_id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project_attribute ALTER COLUMN project_id SET DEFAULT nextval('public.project_attribute_project_id_seq'::regclass);


--
-- TOC entry 3497 (class 2604 OID 17001)
-- Name: sender_case id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.sender_case ALTER COLUMN id SET DEFAULT nextval('public.sender_case_id_seq'::regclass);


--
-- TOC entry 3498 (class 2604 OID 17002)
-- Name: sender_case project_id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.sender_case ALTER COLUMN project_id SET DEFAULT nextval('public.sender_case_project_id_seq'::regclass);


--
-- TOC entry 3488 (class 2604 OID 16854)
-- Name: server_settings id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.server_settings ALTER COLUMN id SET DEFAULT nextval('public.server_settings_id_seq'::regclass);


--
-- TOC entry 3543 (class 2604 OID 18333)
-- Name: stale_materialized_view id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.stale_materialized_view ALTER COLUMN id SET DEFAULT nextval('public.stale_materialized_view_id_seq'::regclass);


--
-- TOC entry 3535 (class 2604 OID 17641)
-- Name: statistics s_id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics ALTER COLUMN s_id SET DEFAULT nextval('public.statistics_s_id_seq'::regclass);


--
-- TOC entry 3534 (class 2604 OID 17631)
-- Name: statistics_field sf_id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics_field ALTER COLUMN sf_id SET DEFAULT nextval('public.statistics_field_sf_id_seq'::regclass);


--
-- TOC entry 3521 (class 2604 OID 17391)
-- Name: test_item item_id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.test_item ALTER COLUMN item_id SET DEFAULT nextval('public.test_item_item_id_seq'::regclass);


--
-- TOC entry 3539 (class 2604 OID 17708)
-- Name: ticket id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.ticket ALTER COLUMN id SET DEFAULT nextval('public.ticket_id_seq'::regclass);


--
-- TOC entry 3531 (class 2604 OID 17582)
-- Name: user_preference id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.user_preference ALTER COLUMN id SET DEFAULT nextval('public.user_preference_id_seq'::regclass);


--
-- TOC entry 3494 (class 2604 OID 16907)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4083 (class 0 OID 18399)
-- Dependencies: 304
-- Data for Name: activity; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (54, '2024-03-26 10:15:05.272074', 'ASSIGN', 'assignUser', 'HIGH', 6, 'spring_selenium_user', 'USER', 40, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (55, '2024-03-26 10:15:05.271848', 'CREATE', 'createUser', 'HIGH', 6, 'spring_selenium_user', 'USER', NULL, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (35, '2024-03-26 10:11:42.301344', 'DELETE', 'deleteProject', 'CRITICAL', 3, 'test', 'PROJECT', NULL, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (36, '2024-03-26 10:11:45.017703', 'DELETE', 'deleteProject', 'CRITICAL', 4, 'test12', 'PROJECT', NULL, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (37, '2024-03-26 10:11:47.830738', 'DELETE', 'deleteProject', 'CRITICAL', 5, 'test22', 'PROJECT', NULL, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (38, '2024-03-26 10:11:58.124577', 'CREATE', 'createProject', 'MEDIUM', 37, 'python_pytest_project', 'PROJECT', 37, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (39, '2024-03-26 10:12:12.400858', 'CREATE', 'createProject', 'MEDIUM', 38, 'python_robot_project', 'PROJECT', 38, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (40, '2024-03-26 10:12:37.845366', 'CREATE', 'createProject', 'MEDIUM', 39, 'webdriverio_automation_framework', 'PROJECT', 39, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (41, '2024-03-26 10:12:48.7946', 'CREATE', 'createProject', 'MEDIUM', 40, 'spring_selenium_project', 'PROJECT', 40, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (42, '2024-03-26 10:13:34.079201', 'ASSIGN', 'assignUser', 'HIGH', 3, 'python_pytest', 'USER', 37, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (43, '2024-03-26 10:13:34.079573', 'ASSIGN', 'assignUser', 'HIGH', 3, 'python_pytest', 'USER', 41, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (44, '2024-03-26 10:13:34.078993', 'CREATE', 'createUser', 'HIGH', 3, 'python_pytest', 'USER', NULL, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (45, '2024-03-26 10:13:34.079378', 'CREATE', 'createProject', 'MEDIUM', 41, 'python_pytest_personal', 'PROJECT', 41, '{"history": []}', NULL, 'ReportPortal', 'APPLICATION') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (46, '2024-03-26 10:14:10.204654', 'CREATE', 'createUser', 'HIGH', 4, 'wdio_user', 'USER', NULL, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (47, '2024-03-26 10:14:10.20472', 'ASSIGN', 'assignUser', 'HIGH', 4, 'wdio_user', 'USER', 39, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (48, '2024-03-26 10:14:10.204981', 'CREATE', 'createProject', 'MEDIUM', 42, 'wdio_user_personal', 'PROJECT', 42, '{"history": []}', NULL, 'ReportPortal', 'APPLICATION') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (49, '2024-03-26 10:14:10.205132', 'ASSIGN', 'assignUser', 'HIGH', 4, 'wdio_user', 'USER', 42, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (50, '2024-03-26 10:14:38.15776', 'CREATE', 'createUser', 'HIGH', 5, 'python_robot', 'USER', NULL, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (51, '2024-03-26 10:14:38.158056', 'ASSIGN', 'assignUser', 'HIGH', 5, 'python_robot', 'USER', 43, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (52, '2024-03-26 10:14:38.15796', 'ASSIGN', 'assignUser', 'HIGH', 5, 'python_robot', 'USER', 38, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (53, '2024-03-26 10:14:38.157996', 'CREATE', 'createProject', 'MEDIUM', 43, 'python_robot_personal', 'PROJECT', 43, '{"history": []}', NULL, 'ReportPortal', 'APPLICATION') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (56, '2024-03-26 10:15:05.272145', 'CREATE', 'createProject', 'MEDIUM', 44, 'spring_selenium_user_personal', 'PROJECT', 44, '{"history": []}', NULL, 'ReportPortal', 'APPLICATION') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (57, '2024-03-26 10:15:05.272225', 'ASSIGN', 'assignUser', 'HIGH', 6, 'spring_selenium_user', 'USER', 44, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (58, '2024-03-26 10:33:08.216076', 'START', 'startLaunch', 'LOW', 1, 'Test launch #1', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (59, '2024-03-26 10:33:08.23795', 'START', 'startLaunch', 'LOW', 2, 'Test launch #2', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (60, '2024-03-26 10:33:08.25366', 'START', 'startLaunch', 'LOW', 3, 'Test launch #3', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (61, '2024-03-26 10:33:16.186744', 'FINISH', 'finishLaunch', 'LOW', 1, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (62, '2024-03-26 10:33:23.223404', 'FINISH', 'finishLaunch', 'LOW', 3, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (63, '2024-03-26 12:58:16.552644', 'START', 'startLaunch', 'LOW', 4, 'Test launch #4', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (64, '2024-03-26 12:58:16.711456', 'START', 'startLaunch', 'LOW', 5, 'Test launch #5', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (65, '2024-03-26 12:58:16.795667', 'START', 'startLaunch', 'LOW', 6, 'Test launch #6', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (66, '2024-03-26 12:58:25.983108', 'FINISH', 'finishLaunch', 'LOW', 6, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (67, '2024-03-26 12:58:29.112765', 'FINISH', 'finishLaunch', 'LOW', 4, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (68, '2024-03-26 12:58:33.253636', 'FINISH', 'finishLaunch', 'LOW', 5, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (69, '2024-03-26 12:59:14.831408', 'START', 'startLaunch', 'LOW', 8, 'Test launch #8', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (70, '2024-03-26 12:59:29.295898', 'FINISH', 'finishLaunch', 'LOW', 8, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (71, '2024-03-26 13:00:52.989415', 'START', 'startLaunch', 'LOW', 10, 'Test launch #10', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (72, '2024-03-26 13:01:06.068545', 'FINISH', 'finishLaunch', 'LOW', 10, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (73, '2024-03-27 21:31:00.089367', 'START', 'startLaunch', 'LOW', 12, 'Test launch #12', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (74, '2024-03-27 21:31:32.540439', 'START', 'startLaunch', 'LOW', 13, 'Test launch #13', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (75, '2024-03-27 21:33:59.69816', 'START', 'startLaunch', 'LOW', 14, 'Test launch #14', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (76, '2024-03-27 21:37:06.900679', 'START', 'startLaunch', 'LOW', 15, 'Test launch #15', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (77, '2024-03-27 21:41:20.317971', 'START', 'startLaunch', 'LOW', 16, 'Test launch #16', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (78, '2024-03-27 21:41:26.342916', 'FINISH', 'finishLaunch', 'LOW', 16, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (79, '2024-03-27 21:43:35.405242', 'START', 'startLaunch', 'LOW', 17, 'Test launch #17', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (80, '2024-03-27 21:47:23.079377', 'FINISH', 'finishLaunch', 'LOW', 17, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (81, '2024-03-27 21:48:11.286411', 'START', 'startLaunch', 'LOW', 19, 'Test launch #19', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (82, '2024-03-27 21:48:18.54542', 'FINISH', 'finishLaunch', 'LOW', 19, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (83, '2024-03-27 21:49:35.308362', 'START', 'startLaunch', 'LOW', 21, 'Test launch #21', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (84, '2024-03-27 21:49:42.627588', 'FINISH', 'finishLaunch', 'LOW', 21, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (85, '2024-03-27 21:50:03.48175', 'START', 'startLaunch', 'LOW', 23, 'Test launch #23', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (86, '2024-03-27 21:50:11.099145', 'FINISH', 'finishLaunch', 'LOW', 23, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (87, '2024-03-27 21:50:40.521592', 'START', 'startLaunch', 'LOW', 25, 'Test launch #25', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (88, '2024-03-27 21:50:40.586999', 'FINISH', 'finishLaunch', 'LOW', 25, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (89, '2024-03-27 21:52:44.856449', 'START', 'startLaunch', 'LOW', 27, 'Test launch #27', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (90, '2024-03-27 21:52:44.918293', 'FINISH', 'finishLaunch', 'LOW', 27, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (91, '2024-03-27 21:56:46.172272', 'START', 'startLaunch', 'LOW', 29, 'Test launch #29', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (92, '2024-03-27 21:56:47.029423', 'FINISH', 'finishLaunch', 'LOW', 29, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (93, '2024-03-27 21:58:34.608768', 'START', 'startLaunch', 'LOW', 31, 'Test launch #31', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (94, '2024-03-27 21:58:36.328265', 'FINISH', 'finishLaunch', 'LOW', 31, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (95, '2024-03-27 21:59:06.579822', 'START', 'startLaunch', 'LOW', 33, 'Test launch #33', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (96, '2024-03-27 22:03:57.565232', 'START', 'startLaunch', 'LOW', 34, 'Test launch #34', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (97, '2024-03-27 22:03:59.298998', 'FINISH', 'finishLaunch', 'LOW', 34, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (98, '2024-03-27 22:06:47.948839', 'START', 'startLaunch', 'LOW', 35, 'Test launch #35', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (99, '2024-03-27 22:06:49.663036', 'FINISH', 'finishLaunch', 'LOW', 35, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (100, '2024-03-27 22:07:19.317381', 'START', 'startLaunch', 'LOW', 37, 'Test launch #37', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (101, '2024-03-27 22:07:47.7768', 'START', 'startLaunch', 'LOW', 38, 'Test launch #38', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (102, '2024-03-27 22:07:49.595701', 'FINISH', 'finishLaunch', 'LOW', 38, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (103, '2024-03-27 22:08:58.248637', 'START', 'startLaunch', 'LOW', 39, 'Test launch #39', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (104, '2024-03-27 22:08:59.963633', 'FINISH', 'finishLaunch', 'LOW', 39, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (105, '2024-03-27 22:09:35.928055', 'START', 'startLaunch', 'LOW', 41, 'Test launch #41', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (106, '2024-03-27 22:11:05.976526', 'START', 'startLaunch', 'LOW', 42, 'Test launch #42', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (107, '2024-03-27 22:11:07.855684', 'FINISH', 'finishLaunch', 'LOW', 42, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (108, '2024-03-27 22:11:48.21115', 'START', 'startLaunch', 'LOW', 43, 'Test launch #43', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (109, '2024-03-27 22:11:50.018089', 'FINISH', 'finishLaunch', 'LOW', 43, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (110, '2024-03-27 22:12:15.715128', 'START', 'startLaunch', 'LOW', 45, 'Test launch #45', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (111, '2024-03-27 22:12:17.466278', 'FINISH', 'finishLaunch', 'LOW', 45, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (112, '2024-03-27 22:13:36.590258', 'START', 'startLaunch', 'LOW', 47, 'Test launch #47', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (113, '2024-03-27 22:13:38.339158', 'FINISH', 'finishLaunch', 'LOW', 47, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (114, '2024-03-27 22:14:44.132206', 'START', 'startLaunch', 'LOW', 49, 'Test launch #49', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (115, '2024-03-27 22:14:45.929451', 'FINISH', 'finishLaunch', 'LOW', 49, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (116, '2024-03-27 22:17:43.1229', 'START', 'startLaunch', 'LOW', 51, 'Test launch #51', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (117, '2024-03-27 22:17:44.877942', 'FINISH', 'finishLaunch', 'LOW', 51, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (118, '2024-03-27 22:18:18.323817', 'START', 'startLaunch', 'LOW', 53, 'Test launch #53', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (119, '2024-03-27 22:18:20.040526', 'FINISH', 'finishLaunch', 'LOW', 53, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (120, '2024-03-27 22:18:41.035109', 'START', 'startLaunch', 'LOW', 55, 'Test launch #55', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (121, '2024-03-27 22:18:42.797661', 'FINISH', 'finishLaunch', 'LOW', 55, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (122, '2024-03-27 22:21:22.296563', 'START', 'startLaunch', 'LOW', 57, 'Test launch #57', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (123, '2024-03-27 22:21:24.01984', 'FINISH', 'finishLaunch', 'LOW', 57, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (124, '2024-03-27 22:21:42.070892', 'START', 'startLaunch', 'LOW', 59, 'Test launch #59', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (125, '2024-03-27 22:21:44.507433', 'FINISH', 'finishLaunch', 'LOW', 59, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (126, '2024-03-27 22:22:23.432167', 'START', 'startLaunch', 'LOW', 61, 'Test launch #61', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (127, '2024-03-27 22:22:25.139914', 'FINISH', 'finishLaunch', 'LOW', 61, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (128, '2024-03-27 22:23:09.634387', 'START', 'startLaunch', 'LOW', 63, 'Test launch #63', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (129, '2024-03-27 22:23:11.499419', 'FINISH', 'finishLaunch', 'LOW', 63, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (130, '2024-03-27 22:23:40.2518', 'START', 'startLaunch', 'LOW', 65, 'Test launch #65', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (131, '2024-03-27 22:23:42.100624', 'FINISH', 'finishLaunch', 'LOW', 65, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (132, '2024-03-27 22:25:49.307799', 'START', 'startLaunch', 'LOW', 67, 'Test launch #67', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (133, '2024-03-27 22:25:51.098578', 'FINISH', 'finishLaunch', 'LOW', 67, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (134, '2024-03-27 22:26:22.077962', 'START', 'startLaunch', 'LOW', 69, 'Test launch #69', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (135, '2024-03-27 22:26:23.855645', 'FINISH', 'finishLaunch', 'LOW', 69, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (136, '2024-03-27 22:28:20.319397', 'START', 'startLaunch', 'LOW', 71, 'Test launch #71', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (137, '2024-03-27 22:28:22.109932', 'FINISH', 'finishLaunch', 'LOW', 71, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (138, '2024-03-27 22:28:36.785476', 'START', 'startLaunch', 'LOW', 73, 'Test launch #73', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (139, '2024-03-27 22:28:38.341282', 'FINISH', 'finishLaunch', 'LOW', 73, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (140, '2024-03-27 22:28:54.667567', 'START', 'startLaunch', 'LOW', 75, 'Test launch #75', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (141, '2024-03-27 22:28:56.288729', 'FINISH', 'finishLaunch', 'LOW', 75, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (142, '2024-03-27 22:29:03.372344', 'FINISH', 'finishLaunch', 'LOW', 2, 'Test launch', 'LAUNCH', 39, '{"history": []}', NULL, 'ReportPortal', 'APPLICATION') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (143, '2024-03-27 22:29:43.38218', 'START', 'startLaunch', 'LOW', 77, 'Test launch #77', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (144, '2024-03-27 22:29:43.500348', 'START', 'startLaunch', 'LOW', 78, 'Test launch #78', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (145, '2024-03-27 22:29:43.666055', 'START', 'startLaunch', 'LOW', 79, 'Test launch #79', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (146, '2024-03-27 22:29:44.2696', 'FINISH', 'finishLaunch', 'LOW', 77, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (147, '2024-03-27 22:29:45.65326', 'FINISH', 'finishLaunch', 'LOW', 78, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (148, '2024-03-27 22:29:51.888769', 'FINISH', 'finishLaunch', 'LOW', 79, 'Test launch', 'LAUNCH', 39, '{"history": []}', 4, 'wdio_user', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (149, '2024-03-27 22:31:32.780449', 'START', 'startLaunch', 'LOW', 81, 'Test launch #81', 'LAUNCH', 39, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (150, '2024-03-27 22:31:32.797595', 'START', 'startLaunch', 'LOW', 82, 'Test launch #82', 'LAUNCH', 39, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (151, '2024-03-27 22:31:33.051541', 'START', 'startLaunch', 'LOW', 83, 'Test launch #83', 'LAUNCH', 39, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (152, '2024-03-27 22:31:34.451557', 'FINISH', 'finishLaunch', 'LOW', 82, 'Test launch', 'LAUNCH', 39, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (153, '2024-03-27 22:31:34.711543', 'FINISH', 'finishLaunch', 'LOW', 81, 'Test launch', 'LAUNCH', 39, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;
INSERT INTO public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) VALUES (154, '2024-03-27 22:31:41.355718', 'FINISH', 'finishLaunch', 'LOW', 83, 'Test launch', 'LAUNCH', 39, '{"history": []}', 1, 'superadmin', 'USER') ON CONFLICT DO NOTHING;


--
-- TOC entry 4081 (class 0 OID 18372)
-- Dependencies: 302
-- Data for Name: api_keys; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.api_keys (id, name, hash, created_at, user_id, last_used_at) VALUES (2, 'pytest', '0B46551557630944B4878B508B8AAFA2946AC3DDF595C3223F184235EE1FF7CE', '2024-03-26 10:18:30.674912', 3, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.api_keys (id, name, hash, created_at, user_id, last_used_at) VALUES (3, 'robot', 'D1CE97FB6C5B5B863C5890737FCA6155822618B31E9A113F28A5C5119FBA371D', '2024-03-26 10:19:07.355408', 5, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.api_keys (id, name, hash, created_at, user_id, last_used_at) VALUES (4, 'spring', '2D4EFDC953A9D75F740578DDB5F53ED8AC5E417338BDA05FD90E18F0F5A9058E', '2024-03-26 10:19:38.735248', 6, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.api_keys (id, name, hash, created_at, user_id, last_used_at) VALUES (1, 'wdio api key', 'DF631F1FB6B1B6870ADF9DB2AFB6CA3193C9772C1FF28611ACEFC4BE0BBB2525', '2024-03-26 10:17:25.165328', 4, '2024-03-27') ON CONFLICT DO NOTHING;
INSERT INTO public.api_keys (id, name, hash, created_at, user_id, last_used_at) VALUES (5, 'test', '55714AF76DEBB0E893ABDC65BE15DE3DA43ABBA576949D74F344554F73167A49', '2024-03-27 22:30:39.606293', 1, '2024-03-27') ON CONFLICT DO NOTHING;


--
-- TOC entry 4042 (class 0 OID 17511)
-- Dependencies: 263
-- Data for Name: attachment; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (1, 'MzkvMjAyNC0zL2RhNDkzNzgzLTYyOWUtNGMxMC04OTc2LWQwYzJmYTI1OWZkMy85NTg5NTVlZS01ZDQ5LTQzNzAtYTk5OC04MjAyMThlOWUxZDQtZmlsZS5wbmc', NULL, 'image/png', 39, 1, 4, 80958, '2024-03-26 10:33:16.033007', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (2, 'MzkvMjAyNC0zLzAxODMxN2YxLWZjOTUtNDExZi1iOGMwLTM5NmNhMzBlOWI1NC9kZDRjNTA3ZS0wNTNjLTRjNzAtODViZC00YTIzYjVhMTZmOGEtZmlsZS5wbmc', NULL, 'image/png', 39, 3, 5, 69921, '2024-03-26 10:33:17.576084', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (3, 'MzkvMjAyNC0zLzAxODMxN2YxLWZjOTUtNDExZi1iOGMwLTM5NmNhMzBlOWI1NC82MjIzMDFhMC1hMzQ3LTQ1NWYtOTc1Ny1hNmRkYjVjYWMyNGUtZmlsZS5wbmc', NULL, 'image/png', 39, 3, 7, 76023, '2024-03-26 10:33:23.092103', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (4, 'MzkvMjAyNC0zLzY2NGMzZTg3LWYxZjQtNDgzOC05MDFjLTQxYjYwZDZlMzllOS84YWMzNDM1MS0wNjAxLTQxNjEtYmI5NC05ZmQ5MDA2NjAyMDgtZmlsZS5wbmc', NULL, 'image/png', 39, 7, 9, 71881, '2024-03-26 12:58:23.529909', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (6, 'MzkvMjAyNC0zLzY2NGMzZTg3LWYxZjQtNDgzOC05MDFjLTQxYjYwZDZlMzllOS8zYjRkOTg0Zi0zZmNkLTRkMDEtODg3Zi1mNmE5MzEyNDJhODItZmlsZS5wbmc', NULL, 'image/png', 39, 7, 14, 76023, '2024-03-26 12:58:28.993997', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (7, 'MzkvMjAyNC0zL2ZlNzU1MWI2LTBjYmUtNGZhOS1iOTM2LTRiNGNkNjZhOTc4ZC8yY2E1YTYzOC05ZmRhLTRkNTQtYTFiNy00ODM1OWZmZjRkOTktZmlsZS5wbmc', NULL, 'image/png', 39, 7, 11, 103773, '2024-03-26 12:58:33.146613', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (5, 'MzkvMjAyNC0zLzcxMzRiMTEyLTdhNzUtNGUxZi1iNzFiLTcwN2U1N2JhODVjYS83MjQ5OGY4My03ODg3LTQ5NjYtODYzNC05ZGY3ODc4ODEzMjctZmlsZS5wbmc', NULL, 'image/png', 39, 7, 13, 81594, '2024-03-26 12:58:25.862297', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (8, 'MzkvMjAyNC0zL2VkNWNhMjgzLTNkMDktNDNmYi1hMzBiLWIzY2U1NWE3MWZiMi8wZThjZDYwMC0zNWUzLTRhNzMtODc0NC1kMmQzZjcxNmZmM2QtZmlsZS5wbmc', NULL, 'image/png', 39, 9, 16, 110211, '2024-03-26 12:59:29.18764', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (9, 'MzkvMjAyNC0zL2MxNjA5ZDJkLWVjYmYtNDkwNy1iMWRkLTAwZjllYWM2ZGE1Mi8yNTI2MTE0ZC0wMDZkLTQ4NDktYjM3Zi0yODhkNzRlMTQwNTAtZmlsZS5wbmc', NULL, 'image/png', 39, 11, 18, 98038, '2024-03-26 13:01:05.959355', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (10, 'MzkvMjAyNC0zLzdjOWIzMmExLTJjMjQtNDRiYS1hZDA5LWE0ZWM0NmY3M2Q3ZS83Njg2YmYyMC02MTU1LTQ3MTMtYjFhNy01NDYxZGMyOTU0ZmYtZmlsZS5wbmc', NULL, 'image/png', 39, 16, 28, 66082, '2024-03-27 21:41:26.218818', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (11, 'MzkvMjAyNC0zL2ZhMDljODY1LTUzZTEtNDRhZC1iMzJjLTcxNGE2MWJkZmU0Ni80ZDk3MTkxNy04ZTg5LTQ1MTAtYTY5Ni1kNmU2MTNkMzQzNzktZmlsZS5wbmc', NULL, 'image/png', 39, 20, 32, 63758, '2024-03-27 21:48:18.42636', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (12, 'MzkvMjAyNC0zL2Y4NDY2MDdkLWRkYmYtNDY4Ni1iYTViLTc0ZmUwYmQ0YjJkZC83OWVkMzNlNy1hODQ1LTQ0NGYtOTg5ZC1lMmFjZDkwOTVjOGYtZmlsZS5wbmc', NULL, 'image/png', 39, 22, 34, 63924, '2024-03-27 21:49:42.514621', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (13, 'MzkvMjAyNC0zL2M3OGFkOGU3LTg3NmItNGJiNC04NTM0LTYwZTAwMThkZGMyYS9kNWI1YmJmNS1kMGI5LTRhMTYtOGY4OS1hNDk4MDI1NGJmM2MtZmlsZS5wbmc', NULL, 'image/png', 39, 32, 40, 69996, '2024-03-27 21:58:35.915422', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (14, 'MzkvMjAyNC0zL2I5MTUzNjA5LTZlYWEtNGE4MC05OTViLWIzYTIxZDVmMjc3Ni8wNGY4M2M2My1lOGNlLTQzNmMtYjM4Yy00YTJiMGUwNzQ0YTUtZmlsZS5wbmc', NULL, 'image/png', 39, 34, 45, 70932, '2024-03-27 22:03:58.875647', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (15, 'MzkvMjAyNC0zLzA2YzY5NjE0LTczY2UtNDFjYS04ODAzLWEyODAxNmY2M2IwZi9iZmNkMDBhMS03M2ZkLTRhZDEtOWFlNi1mYjk0OWFiYmYxNjAtZmlsZS5wbmc', NULL, 'image/png', 39, 36, 48, 71317, '2024-03-27 22:06:49.234825', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (16, 'MzkvMjAyNC0zL2IwZDZlYzhjLTQyNmQtNGRmOC04ZDE1LTYxNDhmNDBmODJlNS8zY2E0MTc0Zi1mZjY5LTQyYTQtODIyMi03ZWQxZDQ2ZGU2YWMtZmlsZS5wbmc', NULL, 'image/png', 39, 38, 53, 70557, '2024-03-27 22:07:49.156474', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (17, 'MzkvMjAyNC0zLzI4MzZlMTA2LWVjYjYtNDEyOC04MzQ2LTJiYTk4MmU0NzZlZC9jYjQzNjQzMy0yNWFlLTQyOWMtOTU5Mi0yZGMwZDRlZDdkN2MtZmlsZS5wbmc', NULL, 'image/png', 39, 40, 56, 71351, '2024-03-27 22:08:59.583587', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (18, 'MzkvMjAyNC0zLzFhZjYyMzk4LWZiY2EtNGI3Ny05OGRkLTE3ZDZlY2RiN2YzNS9lYWJmNDgxZS1mYmYwLTQ1NzItYWJkNy03OTc4MjA4MTM0ODgtZmlsZS5wbmc', NULL, 'image/png', 39, 42, 61, 70120, '2024-03-27 22:11:07.430766', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (19, 'MzkvMjAyNC0zL2Y5ZjMzYzgyLTAyNjgtNGQ0Zi1hMjIzLTkxNjRkMTY2NWM3Mi8zNGJhOGEyZS0xMTRlLTQ1ZGMtYmQxZi0wNjZlYTQzMGQ3MzctZmlsZS5wbmc', NULL, 'image/png', 39, 44, 64, 68949, '2024-03-27 22:11:49.601776', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (20, 'MzkvMjAyNC0zL2Y1NWE5YWNiLTQxMDctNDYyNC05YjQwLTcwNjI1OGMzMTg1My9iZmEzYjExYi0xZmFiLTQxYjQtYjA2NS04ZTI4NjA0NDZmMDItZmlsZS5wbmc', NULL, 'image/png', 39, 46, 67, 69385, '2024-03-27 22:12:17.041529', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (21, 'MzkvMjAyNC0zL2NiMjJkODVlLTVkYjUtNGZmMy1iNTQzLTAwMzZhNGVmOGRkNy9iMGJkMWUxZS0yNGU5LTRjMjctYWQ0ZC1jZTlhZTliNjQ3NDQtZmlsZS5wbmc', NULL, 'image/png', 39, 48, 70, 70761, '2024-03-27 22:13:37.891757', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (22, 'MzkvMjAyNC0zLzQ0OTY2N2JmLWFlODctNDEwOS1iN2NjLTQwNGEyODc3Y2YwZC9jOTkyMWFmZS1iYTgwLTQ5OGEtYjdlYi0yOTVhYmYzZTg5MjctZmlsZS5wbmc', NULL, 'image/png', 39, 50, 73, 69818, '2024-03-27 22:14:45.515576', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (23, 'MzkvMjAyNC0zLzZhMzlhMjdlLTFmNzctNDAzZC05ZTdiLWJmOWQ5MzI3YWZhZC9kMTUwMDE1Zi01NWRhLTQ3MjEtODIzYi03Njg0MmE4MDBiMDktZmlsZS5wbmc', NULL, 'image/png', 39, 52, 76, 69703, '2024-03-27 22:17:44.48671', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (24, 'MzkvMjAyNC0zLzFlMGM0NTc0LTNlZjQtNGQxZi1hNTMyLTc2M2JlMGRhNGYxNy9lYTk4ZTIwZS0yZGU3LTQ0NzAtOWRjNy0wNDM0ZWY4NTg4MDgtZmlsZS5wbmc', NULL, 'image/png', 39, 54, 79, 69949, '2024-03-27 22:18:19.640682', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (25, 'MzkvMjAyNC0zLzA3NDE4NGZjLTIyNzQtNDBiZC05ZjBlLTBhNWRhMTEzM2U1Ny8zYjRlZjliNC1lOGQzLTQ0OWUtYjBmYS00NWI1OWQ2MTg4ZTctZmlsZS5wbmc', NULL, 'image/png', 39, 56, 82, 71342, '2024-03-27 22:18:42.397852', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (26, 'MzkvMjAyNC0zLzQ1MjhiYzM5LTRhOGItNDllYy1iYTc0LTBlNGU3ZGQ5NGI5MC8wMTlmNjFjMS00ZDc2LTRmOWUtYWZhNy1hOTEwODFkNzUyMTYtZmlsZS5wbmc', NULL, 'image/png', 39, 58, 85, 69964, '2024-03-27 22:21:23.647712', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (27, 'MzkvMjAyNC0zLzU1MGU5YzVhLTk0MmItNDZiYS1hNGI1LWZmY2UxYjljNTk0OS9kMzA0YzJhMy02NTgwLTRjYmMtODgwOS05OGIzYThhZGNiOTgtZmlsZS5wbmc', NULL, 'image/png', 39, 60, 88, 70449, '2024-03-27 22:21:44.108237', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (28, 'MzkvMjAyNC0zLzcxODZjYWMxLTVhZGYtNDVkOC1iYzFmLWZmZjc5MGVkYmYzMi8wODkzMmU1OS0yZDhhLTRkZWYtYmY5Yi04ZGZhNjdmMGM3ZDctZmlsZS5wbmc', NULL, 'image/png', 39, 62, 91, 69889, '2024-03-27 22:22:24.695809', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (29, 'MzkvMjAyNC0zL2NiZjgzNDNiLTM3OTAtNDRkMi05NzY4LWMwMWRhODgzMDkwZi82MGM3ZDRhNy04ODRmLTQ5Y2UtYTQxNC1hMTAyMGZmYTUyZTktZmlsZS5wbmc', NULL, 'image/png', 39, 64, 94, 68989, '2024-03-27 22:23:11.085764', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (30, 'MzkvMjAyNC0zL2FhYzJjNmMwLTQxNTctNDRlOC1hZWFiLTU5MjJlOGNkMWIzOS9iNzYwN2MxYy1iOGIwLTRmODctOTk3NS0zMjgyOWQ5OGNjNWEtZmlsZS5wbmc', NULL, 'image/png', 39, 66, 97, 69933, '2024-03-27 22:23:41.705032', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (31, 'MzkvMjAyNC0zLzg0ZTM4M2YxLTA1N2ItNDMxYy1iNzEyLTQ0NTA2NTQ0M2IyZS84YjU4NjUyNC02ZDlhLTRjMmYtODlkOC05ZjVjZGE4MmNhYzctZmlsZS5wbmc', NULL, 'image/png', 39, 68, 100, 72130, '2024-03-27 22:25:50.694397', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (32, 'MzkvMjAyNC0zL2RlNTlmYzM2LTIwMTYtNDQ4OS1iMTUzLWJmN2FlNDZjNTkyMi81ZTVjZTJlNi1hYTdjLTRiYzMtYmUyNy00YjAxMmU1ZTI0NGYtZmlsZS5wbmc', NULL, 'image/png', 39, 70, 103, 70001, '2024-03-27 22:26:23.449627', 'screenshot') ON CONFLICT DO NOTHING;
INSERT INTO public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) VALUES (33, 'MzkvMjAyNC0zL2QyZDQ3MjNkLTUyNTYtNGYzZi04MjhmLTEzMGJjZjNmM2NkOS9iMGYzOTU0OC0xOGE1LTQwMTgtODQ0NC0yMWU0YzJmMGQ5MDktZmlsZS5wbmc', NULL, 'image/png', 39, 72, 106, 71625, '2024-03-27 22:28:21.721476', 'screenshot') ON CONFLICT DO NOTHING;


--
-- TOC entry 4072 (class 0 OID 18217)
-- Dependencies: 293
-- Data for Name: attachment_deletion; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4008 (class 0 OID 17048)
-- Dependencies: 229
-- Data for Name: attribute; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.attribute (id, name) VALUES (1, 'job.interruptJobTime') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (2, 'job.keepLaunches') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (3, 'job.keepLogs') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (4, 'job.keepScreenshots') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (7, 'analyzer.minShouldMatch') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (8, 'analyzer.numberOfLogLines') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (9, 'analyzer.indexingRunning') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (10, 'analyzer.isAutoPatternAnalyzerEnabled') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (11, 'analyzer.isAutoAnalyzerEnabled') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (12, 'analyzer.autoAnalyzerMode') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (13, 'notifications.enabled') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (14, 'email.from') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (16, 'analyzer.allMessagesShouldMatch') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (17, 'analyzer.searchLogsMinShouldMatch') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (18, 'analyzer.uniqueError.enabled') ON CONFLICT DO NOTHING;
INSERT INTO public.attribute (id, name) VALUES (19, 'analyzer.uniqueError.removeNumbers') ON CONFLICT DO NOTHING;


--
-- TOC entry 4074 (class 0 OID 18263)
-- Dependencies: 295
-- Data for Name: clusters; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (1, 6057711733143100, 39, 3, 'Error: waitUntil condition failed with the following reason: myAccountPage.logoutButton.isDisplayed is not a function
 at async Context.<anonymous> ( ::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (2, 71637981722405540, 39, 3, 'Error: expected login button to be visible after s
 at async Context.<anonymous> ( ::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (3, 91137213430146910, 39, 6, 'Error: waitUntil condition failed with the following reason: myAccountPage.loginError.isDisplayed is not a function 
     at processTimers (node:internal/timers::)
    at async Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testLoginNegative.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (4, 37399408957261680, 39, 4, 'Error: waitUntil condition failed with the following reason: myAccountPage.logoutButton.isDisplayed is not a function 
     at processTimers (node:internal/timers::)
    at async Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (5, 71637981722405540, 39, 4, 'Error: expected login button to be visible after s
 at async Context.<anonymous> ( ::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (6, 93405399043948730, 39, 5, 'Error: expected order received message to be displayed after s 
     at async CheckoutPage.waitForOrderReceivedMessage (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\pageobjects\checkout.page.js::)
    at async Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testeeCheckoutGuestUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (8, 7499944963008130, 39, 16, 'Error: [mexpect([m[mreceived[m[m).[mtoEqual[m([m[mexpected[m[m) // deep equality[m
Expected: [m"Golden_Rohan.yahoo.com"[m
Received: [mundefined[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testeeCheckoutGuestUser.js::)
    at runMicrotasks (<anonymous>)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (9, 45392219786283160, 39, 17, 'Error: Timeout of ms exceeded. The execution in the test "ee checkout as guest user should add product to cart and checkout as guest user" took too long. Try to reduce the run time or increase your timeout for test specs ( ( ) 
     at createTimeoutError (C:\Users\roby\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\errors.js::)
    at Test.Runnable._timeoutError (C:\Users\roby\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\runnable.js::)
    at Timeout.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\runnable.js::)
    at listOnTimeout (node:internal/timers::)
    at processTimers (node:internal/timers::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (12, 47835084941573060, 39, 31, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Kaitlyn_Stiedemann"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (13, 39350816090934550, 39, 34, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Micaela.Cruickshank"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (15, 85511969485459660, 39, 38, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Mac.Reinger"[m
Received object: [m{Symbol(async_id_symbol): , Symbol(trigger_async_id_symbol): }[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (16, 88493763638411910, 39, 39, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Anissa_Hartmann"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (17, 41110830979434820, 39, 42, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Herminio.Terry"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (18, 19787608874852800, 39, 43, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Rickie"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (21, 94796779418641650, 39, 49, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Gabriel"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (22, 43130711507713160, 39, 51, 'TypeError: myAccountPage.getContentText(.).toContain is not a function
 at Context.<anonymous> ( ::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (23, 43130711507713160, 39, 53, 'TypeError: myAccountPage.getContentText(.).toContain is not a function
 at Context.<anonymous> ( ::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (24, 53616522859207080, 39, 55, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Tracy.Stroman"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (25, 66127295187821580, 39, 57, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Crystal"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (26, 52112075252263830, 39, 59, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Oswaldo_Gislason"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (28, 53037743354675980, 39, 63, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Bethel"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (29, 98540293668913790, 39, 65, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Providenci"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (30, 74538329571929280, 39, 67, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Micah_Armstrong"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (27, 71044729797637850, 39, 61, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Yasmeen"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;
INSERT INTO public.clusters (id, index_id, project_id, launch_id, message) VALUES (31, 53103576839999950, 39, 69, 'Error: [mexpect([m[mreceived[m[m).[mtoContain[m([m[mexpected[m[m) // indexOf[m
Expected value: [m"Hello Chet.Powlowski"[m
Received object: [m{}[m 
     at Context.<anonymous> (C:\Users\roby\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js::)') ON CONFLICT DO NOTHING;


--
-- TOC entry 4075 (class 0 OID 18277)
-- Dependencies: 296
-- Data for Name: clusters_test_item; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (1, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (2, 7) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (3, 13) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (4, 9) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (5, 14) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (6, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (8, 28) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (9, 30) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (12, 40) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (13, 45) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (15, 53) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (16, 56) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (17, 61) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (18, 64) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (21, 73) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (22, 76) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (23, 79) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (24, 82) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (25, 85) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (26, 88) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (27, 91) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (28, 94) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (29, 97) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (30, 100) ON CONFLICT DO NOTHING;
INSERT INTO public.clusters_test_item (cluster_id, item_id) VALUES (31, 103) ON CONFLICT DO NOTHING;


--
-- TOC entry 4025 (class 0 OID 17289)
-- Dependencies: 246
-- Data for Name: content_field; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4023 (class 0 OID 17262)
-- Dependencies: 244
-- Data for Name: dashboard; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4026 (class 0 OID 17302)
-- Dependencies: 247
-- Data for Name: dashboard_widget; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4018 (class 0 OID 17214)
-- Dependencies: 239
-- Data for Name: filter; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4020 (class 0 OID 17229)
-- Dependencies: 241
-- Data for Name: filter_condition; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4022 (class 0 OID 17246)
-- Dependencies: 243
-- Data for Name: filter_sort; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4015 (class 0 OID 17091)
-- Dependencies: 236
-- Data for Name: integration; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4013 (class 0 OID 17077)
-- Dependencies: 234
-- Data for Name: integration_type; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.integration_type (id, name, auth_flow, creation_date, group_type, enabled, details) VALUES (1, 'ldap', 'LDAP', '2024-03-25 23:15:41.808817', 'AUTH', true, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.integration_type (id, name, auth_flow, creation_date, group_type, enabled, details) VALUES (3, 'ad', NULL, '2024-03-25 23:15:41.808817', 'AUTH', true, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.integration_type (id, name, auth_flow, creation_date, group_type, enabled, details) VALUES (4, 'saml', NULL, '2024-03-25 23:15:42.109193', 'AUTH', true, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.integration_type (id, name, auth_flow, creation_date, group_type, enabled, details) VALUES (2, 'email', NULL, '2024-03-25 23:15:41.808817', 'NOTIFICATION', true, '{"details": {"documentationLink": "https://reportportal.io/docs/plugins/EmailServer"}}') ON CONFLICT DO NOTHING;


--
-- TOC entry 4056 (class 0 OID 17682)
-- Dependencies: 277
-- Data for Name: issue; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (4, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (5, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (7, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (9, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (13, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (14, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (11, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (16, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (18, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (24, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (28, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (30, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (32, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (34, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (40, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (45, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (48, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (53, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (56, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (61, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (64, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (67, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (70, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (73, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (76, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (79, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (82, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (85, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (88, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (91, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (94, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (97, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (100, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (103, 1, NULL, false, false) ON CONFLICT DO NOTHING;
INSERT INTO public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) VALUES (106, 1, NULL, false, false) ON CONFLICT DO NOTHING;


--
-- TOC entry 4048 (class 0 OID 17604)
-- Dependencies: 269
-- Data for Name: issue_group; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.issue_group (issue_group_id, issue_group) VALUES (1, 'TO_INVESTIGATE') ON CONFLICT DO NOTHING;
INSERT INTO public.issue_group (issue_group_id, issue_group) VALUES (2, 'AUTOMATION_BUG') ON CONFLICT DO NOTHING;
INSERT INTO public.issue_group (issue_group_id, issue_group) VALUES (3, 'PRODUCT_BUG') ON CONFLICT DO NOTHING;
INSERT INTO public.issue_group (issue_group_id, issue_group) VALUES (4, 'NO_DEFECT') ON CONFLICT DO NOTHING;
INSERT INTO public.issue_group (issue_group_id, issue_group) VALUES (5, 'SYSTEM_ISSUE') ON CONFLICT DO NOTHING;


--
-- TOC entry 4059 (class 0 OID 17716)
-- Dependencies: 280
-- Data for Name: issue_ticket; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4050 (class 0 OID 17612)
-- Dependencies: 271
-- Data for Name: issue_type; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.issue_type (id, issue_group_id, locator, issue_name, abbreviation, hex_color) VALUES (1, 1, 'ti001', 'To Investigate', 'TI', '#00829b') ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type (id, issue_group_id, locator, issue_name, abbreviation, hex_color) VALUES (2, 2, 'ab001', 'Automation Bug', 'AB', '#ffc208') ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type (id, issue_group_id, locator, issue_name, abbreviation, hex_color) VALUES (3, 3, 'pb001', 'Product Bug', 'PB', '#d32f2f') ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type (id, issue_group_id, locator, issue_name, abbreviation, hex_color) VALUES (4, 4, 'nd001', 'No Defect', 'ND', '#76839b') ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type (id, issue_group_id, locator, issue_name, abbreviation, hex_color) VALUES (5, 5, 'si001', 'System Issue', 'SI', '#3e7be6') ON CONFLICT DO NOTHING;


--
-- TOC entry 4055 (class 0 OID 17667)
-- Dependencies: 276
-- Data for Name: issue_type_project; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (1, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (1, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (1, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (1, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (1, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (2, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (2, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (2, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (2, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (2, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (37, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (37, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (37, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (37, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (37, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (38, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (38, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (38, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (38, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (38, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (39, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (39, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (39, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (39, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (39, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (40, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (40, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (40, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (40, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (40, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (41, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (41, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (41, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (41, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (41, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (42, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (42, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (42, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (42, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (42, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (43, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (43, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (43, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (43, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (43, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (44, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (44, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (44, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (44, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.issue_type_project (project_id, issue_type_id) VALUES (44, 5) ON CONFLICT DO NOTHING;


--
-- TOC entry 4040 (class 0 OID 17486)
-- Dependencies: 261
-- Data for Name: item_attribute; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (1, 'key', 'value', NULL, 1, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (2, 'nodeJS', 'v16.20.2', NULL, 1, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (3, 'RAMSize', '34170843136', NULL, 1, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (4, 'client', '@reportportal/client-javascript|5.1.2', NULL, 1, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (5, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 1, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (6, NULL, 'value', NULL, 1, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (7, 'os', 'Windows_NT|x64', NULL, 1, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (8, 'key', 'value', NULL, 2, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (9, 'nodeJS', 'v16.20.2', NULL, 2, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (10, 'RAMSize', '34170843136', NULL, 2, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (11, 'client', '@reportportal/client-javascript|5.1.2', NULL, 2, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (12, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 2, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (13, NULL, 'value', NULL, 2, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (14, 'os', 'Windows_NT|x64', NULL, 2, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (15, 'key', 'value', NULL, 3, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (16, 'nodeJS', 'v16.20.2', NULL, 3, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (17, 'RAMSize', '34170843136', NULL, 3, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (18, 'client', '@reportportal/client-javascript|5.1.2', NULL, 3, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (19, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 3, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (20, NULL, 'value', NULL, 3, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (21, 'os', 'Windows_NT|x64', NULL, 3, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (22, 'rp.cluster.lastRun', '1711449196434', NULL, 1, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (23, 'rp.cluster.lastRun', '1711449203612', NULL, 3, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (137, 'nodeJS', 'v16.20.2', NULL, 24, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (292, 'nodeJS', 'v16.20.2', NULL, 52, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (308, NULL, 'value', NULL, 54, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (309, 'key', 'value', NULL, 54, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (348, 'key', 'value', NULL, 62, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (349, NULL, 'value', NULL, 62, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (392, 'nodeJS', 'v16.20.2', NULL, 72, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (47, NULL, 'value', NULL, 7, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (48, 'key', 'value', NULL, 7, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (46, 'rp.cluster.lastRun', '1711457909389', NULL, 7, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (39, 'nodeJS', 'v16.20.2', NULL, 7, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (40, 'RAMSize', '34170843136', NULL, 7, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (41, 'client', '@reportportal/client-javascript|5.1.2', NULL, 7, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (42, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 7, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (44, 'os', 'Windows_NT|x64', NULL, 7, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (45, 'rp.cluster.lastRun', '1711457906290', NULL, 7, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (57, 'key', 'value', NULL, 9, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (58, NULL, 'value', NULL, 9, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (51, 'nodeJS', 'v16.20.2', NULL, 9, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (52, 'RAMSize', '34170843136', NULL, 9, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (53, 'client', '@reportportal/client-javascript|5.1.2', NULL, 9, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (54, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 9, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (56, 'os', 'Windows_NT|x64', NULL, 9, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (67, 'key', 'value', NULL, 11, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (68, NULL, 'value', NULL, 11, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (61, 'nodeJS', 'v16.20.2', NULL, 11, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (62, 'RAMSize', '34170843136', NULL, 11, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (63, 'client', '@reportportal/client-javascript|5.1.2', NULL, 11, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (64, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 11, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (66, 'os', 'Windows_NT|x64', NULL, 11, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (70, 'key', 'value', NULL, 12, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (71, 'nodeJS', 'v16.20.2', NULL, 12, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (72, 'RAMSize', '34170843136', NULL, 12, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (73, 'client', '@reportportal/client-javascript|5.1.2', NULL, 12, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (74, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 12, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (75, NULL, 'value', NULL, 12, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (76, 'os', 'Windows_NT|x64', NULL, 12, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (77, 'key', 'value', NULL, 13, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (78, 'nodeJS', 'v16.20.2', NULL, 13, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (79, 'RAMSize', '34170843136', NULL, 13, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (80, 'client', '@reportportal/client-javascript|5.1.2', NULL, 13, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (81, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 13, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (82, NULL, 'value', NULL, 13, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (83, 'os', 'Windows_NT|x64', NULL, 13, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (84, 'key', 'value', NULL, 14, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (85, 'nodeJS', 'v16.20.2', NULL, 14, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (86, 'RAMSize', '34170843136', NULL, 14, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (87, 'client', '@reportportal/client-javascript|5.1.2', NULL, 14, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (88, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 14, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (89, NULL, 'value', NULL, 14, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (90, 'os', 'Windows_NT|x64', NULL, 14, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (91, 'key', 'value', NULL, 15, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (92, 'nodeJS', 'v16.20.2', NULL, 15, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (93, 'RAMSize', '34170843136', NULL, 15, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (94, 'client', '@reportportal/client-javascript|5.1.2', NULL, 15, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (95, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 15, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (96, NULL, 'value', NULL, 15, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (97, 'os', 'Windows_NT|x64', NULL, 15, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (98, 'key', 'value', NULL, 16, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (99, 'nodeJS', 'v16.20.2', NULL, 16, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (100, 'RAMSize', '34170843136', NULL, 16, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (101, 'client', '@reportportal/client-javascript|5.1.2', NULL, 16, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (102, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 16, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (103, NULL, 'value', NULL, 16, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (104, 'os', 'Windows_NT|x64', NULL, 16, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (105, 'rp.cluster.lastRun', '1711575686703', NULL, 16, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (114, NULL, 'value', NULL, 18, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (115, 'key', 'value', NULL, 18, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (107, 'nodeJS', 'v16.20.2', NULL, 18, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (108, 'RAMSize', '34170843136', NULL, 18, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (109, 'client', '@reportportal/client-javascript|5.1.2', NULL, 18, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (110, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 18, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (112, 'os', 'Windows_NT|x64', NULL, 18, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (117, 'nodeJS', 'v16.20.2', NULL, 20, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (118, 'RAMSize', '34170843136', NULL, 20, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (144, NULL, 'value', NULL, 24, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (145, 'key', 'value', NULL, 24, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (138, 'RAMSize', '34170843136', NULL, 24, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (139, 'client', '@reportportal/client-javascript|5.1.2', NULL, 24, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (123, NULL, 'value', NULL, 20, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (124, 'key', 'value', NULL, 20, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (119, 'client', '@reportportal/client-javascript|5.1.2', NULL, 20, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (120, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 20, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (122, 'os', 'Windows_NT|x64', NULL, 20, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (140, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 24, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (142, 'os', 'Windows_NT|x64', NULL, 24, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (143, 'rp.cluster.lastRun', '1711576211110', NULL, 24, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (299, 'key', 'value', NULL, 52, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (300, NULL, 'value', NULL, 52, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (293, 'RAMSize', '34170843136', NULL, 52, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (294, 'client', '@reportportal/client-javascript|5.1.2', NULL, 52, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (295, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 52, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (133, 'key', 'value', NULL, 22, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (134, NULL, 'value', NULL, 22, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (127, 'nodeJS', 'v16.20.2', NULL, 22, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (128, 'RAMSize', '34170843136', NULL, 22, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (129, 'client', '@reportportal/client-javascript|5.1.2', NULL, 22, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (130, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 22, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (132, 'os', 'Windows_NT|x64', NULL, 22, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (297, 'os', 'Windows_NT|x64', NULL, 52, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (154, 'key', 'value', NULL, 26, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (155, NULL, 'value', NULL, 26, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (147, 'nodeJS', 'v16.20.2', NULL, 26, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (148, 'RAMSize', '34170843136', NULL, 26, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (149, 'client', '@reportportal/client-javascript|5.1.2', NULL, 26, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (150, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 26, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (152, 'os', 'Windows_NT|x64', NULL, 26, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (153, 'rp.cluster.lastRun', '1711576240601', NULL, 26, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (164, NULL, 'value', NULL, 28, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (165, 'key', 'value', NULL, 28, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (157, 'nodeJS', 'v16.20.2', NULL, 28, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (158, 'RAMSize', '34170843136', NULL, 28, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (159, 'client', '@reportportal/client-javascript|5.1.2', NULL, 28, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (160, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 28, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (162, 'os', 'Windows_NT|x64', NULL, 28, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (163, 'rp.cluster.lastRun', '1711576364931', NULL, 28, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (174, 'key', 'value', NULL, 30, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (175, NULL, 'value', NULL, 30, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (167, 'nodeJS', 'v16.20.2', NULL, 30, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (168, 'RAMSize', '34170843136', NULL, 30, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (169, 'client', '@reportportal/client-javascript|5.1.2', NULL, 30, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (170, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 30, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (172, 'os', 'Windows_NT|x64', NULL, 30, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (173, 'rp.cluster.lastRun', '1711576607041', NULL, 30, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (184, NULL, 'value', NULL, 32, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (185, 'key', 'value', NULL, 32, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (177, 'nodeJS', 'v16.20.2', NULL, 32, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (178, 'RAMSize', '34170843136', NULL, 32, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (179, 'client', '@reportportal/client-javascript|5.1.2', NULL, 32, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (180, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 32, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (182, 'os', 'Windows_NT|x64', NULL, 32, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (183, 'rp.cluster.lastRun', '1711576716496', NULL, 32, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (186, 'key', 'value', NULL, 33, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (187, 'nodeJS', 'v16.20.2', NULL, 33, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (188, 'RAMSize', '34170843136', NULL, 33, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (189, 'client', '@reportportal/client-javascript|5.1.2', NULL, 33, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (190, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 33, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (191, NULL, 'value', NULL, 33, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (192, 'os', 'Windows_NT|x64', NULL, 33, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (193, 'key', 'value', NULL, 34, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (194, 'nodeJS', 'v16.20.2', NULL, 34, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (195, 'RAMSize', '34170843136', NULL, 34, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (196, 'client', '@reportportal/client-javascript|5.1.2', NULL, 34, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (197, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 34, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (198, NULL, 'value', NULL, 34, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (199, 'os', 'Windows_NT|x64', NULL, 34, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (200, 'rp.cluster.lastRun', '1711577039503', NULL, 34, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (208, NULL, 'value', NULL, 36, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (209, 'key', 'value', NULL, 36, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (202, 'nodeJS', 'v16.20.2', NULL, 36, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (203, 'RAMSize', '34170843136', NULL, 36, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (204, 'client', '@reportportal/client-javascript|5.1.2', NULL, 36, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (205, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 36, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (207, 'os', 'Windows_NT|x64', NULL, 36, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (211, 'key', 'value', NULL, 37, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (212, 'nodeJS', 'v16.20.2', NULL, 37, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (213, 'RAMSize', '34170843136', NULL, 37, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (214, 'client', '@reportportal/client-javascript|5.1.2', NULL, 37, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (215, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 37, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (216, NULL, 'value', NULL, 37, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (217, 'os', 'Windows_NT|x64', NULL, 37, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (218, 'key', 'value', NULL, 38, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (219, 'nodeJS', 'v16.20.2', NULL, 38, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (220, 'RAMSize', '34170843136', NULL, 38, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (221, 'client', '@reportportal/client-javascript|5.1.2', NULL, 38, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (222, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 38, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (223, NULL, 'value', NULL, 38, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (224, 'os', 'Windows_NT|x64', NULL, 38, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (225, 'rp.cluster.lastRun', '1711577269790', NULL, 38, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (234, 'key', 'value', NULL, 40, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (235, NULL, 'value', NULL, 40, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (227, 'nodeJS', 'v16.20.2', NULL, 40, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (228, 'RAMSize', '34170843136', NULL, 40, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (232, 'os', 'Windows_NT|x64', NULL, 40, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (258, 'key', 'value', NULL, 44, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (259, NULL, 'value', NULL, 44, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (229, 'client', '@reportportal/client-javascript|5.1.2', NULL, 40, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (230, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 40, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (236, 'key', 'value', NULL, 41, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (237, 'nodeJS', 'v16.20.2', NULL, 41, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (238, 'RAMSize', '34170843136', NULL, 41, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (239, 'client', '@reportportal/client-javascript|5.1.2', NULL, 41, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (240, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 41, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (241, NULL, 'value', NULL, 41, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (242, 'os', 'Windows_NT|x64', NULL, 41, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (243, 'key', 'value', NULL, 42, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (244, 'nodeJS', 'v16.20.2', NULL, 42, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (245, 'RAMSize', '34170843136', NULL, 42, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (246, 'client', '@reportportal/client-javascript|5.1.2', NULL, 42, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (247, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 42, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (248, NULL, 'value', NULL, 42, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (249, 'os', 'Windows_NT|x64', NULL, 42, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (250, 'rp.cluster.lastRun', '1711577468035', NULL, 42, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (298, 'rp.cluster.lastRun', '1711577865039', NULL, 52, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (252, 'nodeJS', 'v16.20.2', NULL, 44, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (253, 'RAMSize', '34170843136', NULL, 44, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (254, 'client', '@reportportal/client-javascript|5.1.2', NULL, 44, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (255, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 44, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (257, 'os', 'Windows_NT|x64', NULL, 44, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (352, 'nodeJS', 'v16.20.2', NULL, 64, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (353, 'RAMSize', '34170843136', NULL, 64, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (354, 'client', '@reportportal/client-javascript|5.1.2', NULL, 64, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (355, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 64, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (357, 'os', 'Windows_NT|x64', NULL, 64, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (389, 'key', 'value', NULL, 70, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (390, NULL, 'value', NULL, 70, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (398, 'key', 'value', NULL, 72, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (399, NULL, 'value', NULL, 72, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (393, 'RAMSize', '34170843136', NULL, 72, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (394, 'client', '@reportportal/client-javascript|5.1.2', NULL, 72, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (395, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 72, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (397, 'os', 'Windows_NT|x64', NULL, 72, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (471, 'rp.cluster.lastRun', '1711578701364', NULL, 84, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (470, 'rp.cluster.lastRun', '1711578694719', NULL, 84, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (456, 'nodeJS', 'v16.20.2', NULL, 84, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (419, NULL, 'value', NULL, 76, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (420, 'key', 'value', NULL, 76, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (412, 'nodeJS', 'v16.20.2', NULL, 76, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (413, 'RAMSize', '34170843136', NULL, 76, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (414, 'client', '@reportportal/client-javascript|5.1.2', NULL, 76, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (415, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 76, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (417, 'os', 'Windows_NT|x64', NULL, 76, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (418, 'rp.cluster.lastRun', '1711578536299', NULL, 76, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (457, 'RAMSize', '34170843136', NULL, 84, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (458, 'client', '@reportportal/client-javascript|5.1.2', NULL, 84, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (459, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 84, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (461, 'os', 'Windows_NT|x64', NULL, 84, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (469, 'rp.cluster.lastRun', '1711578694462', NULL, 84, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (446, 'key', 'value', NULL, 80, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (447, NULL, 'value', NULL, 80, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (445, 'rp.cluster.lastRun', '1711578591898', NULL, 80, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (444, 'rp.cluster.lastRun', '1711578585666', NULL, 80, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (423, 'nodeJS', 'v16.20.2', NULL, 80, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (424, 'RAMSize', '34170843136', NULL, 80, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (425, 'client', '@reportportal/client-javascript|5.1.2', NULL, 80, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (426, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 80, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (428, 'os', 'Windows_NT|x64', NULL, 80, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (443, 'rp.cluster.lastRun', '1711578584285', NULL, 80, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (268, NULL, 'value', NULL, 46, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (269, 'key', 'value', NULL, 46, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (262, 'nodeJS', 'v16.20.2', NULL, 46, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (263, 'RAMSize', '34170843136', NULL, 46, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (264, 'client', '@reportportal/client-javascript|5.1.2', NULL, 46, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (265, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 46, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (267, 'os', 'Windows_NT|x64', NULL, 46, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (302, 'nodeJS', 'v16.20.2', NULL, 54, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (303, 'RAMSize', '34170843136', NULL, 54, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (278, 'key', 'value', NULL, 48, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (279, NULL, 'value', NULL, 48, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (272, 'nodeJS', 'v16.20.2', NULL, 48, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (273, 'RAMSize', '34170843136', NULL, 48, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (274, 'client', '@reportportal/client-javascript|5.1.2', NULL, 48, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (275, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 48, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (277, 'os', 'Windows_NT|x64', NULL, 48, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (304, 'client', '@reportportal/client-javascript|5.1.2', NULL, 54, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (305, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 54, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (307, 'os', 'Windows_NT|x64', NULL, 54, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (472, 'key', 'value', NULL, 84, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (473, NULL, 'value', NULL, 84, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (289, 'key', 'value', NULL, 50, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (290, NULL, 'value', NULL, 50, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (282, 'nodeJS', 'v16.20.2', NULL, 50, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (283, 'RAMSize', '34170843136', NULL, 50, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (284, 'client', '@reportportal/client-javascript|5.1.2', NULL, 50, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (285, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 50, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (287, 'os', 'Windows_NT|x64', NULL, 50, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (318, 'key', 'value', NULL, 56, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (319, NULL, 'value', NULL, 56, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (312, 'nodeJS', 'v16.20.2', NULL, 56, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (313, 'RAMSize', '34170843136', NULL, 56, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (314, 'client', '@reportportal/client-javascript|5.1.2', NULL, 56, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (315, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 56, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (317, 'os', 'Windows_NT|x64', NULL, 56, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (328, NULL, 'value', NULL, 58, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (329, 'key', 'value', NULL, 58, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (322, 'nodeJS', 'v16.20.2', NULL, 58, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (323, 'RAMSize', '34170843136', NULL, 58, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (324, 'client', '@reportportal/client-javascript|5.1.2', NULL, 58, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (325, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 58, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (327, 'os', 'Windows_NT|x64', NULL, 58, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (338, NULL, 'value', NULL, 60, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (339, 'key', 'value', NULL, 60, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (332, 'nodeJS', 'v16.20.2', NULL, 60, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (333, 'RAMSize', '34170843136', NULL, 60, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (334, 'client', '@reportportal/client-javascript|5.1.2', NULL, 60, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (335, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 60, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (337, 'os', 'Windows_NT|x64', NULL, 60, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (342, 'nodeJS', 'v16.20.2', NULL, 62, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (343, 'RAMSize', '34170843136', NULL, 62, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (344, 'client', '@reportportal/client-javascript|5.1.2', NULL, 62, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (345, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 62, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (347, 'os', 'Windows_NT|x64', NULL, 62, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (358, NULL, 'value', NULL, 64, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (359, 'key', 'value', NULL, 64, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (368, 'key', 'value', NULL, 66, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (369, NULL, 'value', NULL, 66, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (362, 'nodeJS', 'v16.20.2', NULL, 66, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (363, 'RAMSize', '34170843136', NULL, 66, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (364, 'client', '@reportportal/client-javascript|5.1.2', NULL, 66, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (365, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 66, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (367, 'os', 'Windows_NT|x64', NULL, 66, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (378, NULL, 'value', NULL, 68, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (379, 'key', 'value', NULL, 68, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (372, 'nodeJS', 'v16.20.2', NULL, 68, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (373, 'RAMSize', '34170843136', NULL, 68, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (374, 'client', '@reportportal/client-javascript|5.1.2', NULL, 68, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (375, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 68, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (377, 'os', 'Windows_NT|x64', NULL, 68, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (382, 'nodeJS', 'v16.20.2', NULL, 70, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (383, 'RAMSize', '34170843136', NULL, 70, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (384, 'client', '@reportportal/client-javascript|5.1.2', NULL, 70, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (385, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 70, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (387, 'os', 'Windows_NT|x64', NULL, 70, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (409, 'key', 'value', NULL, 74, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (410, NULL, 'value', NULL, 74, false) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (402, 'nodeJS', 'v16.20.2', NULL, 74, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (403, 'RAMSize', '34170843136', NULL, 74, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (404, 'client', '@reportportal/client-javascript|5.1.2', NULL, 74, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (405, 'agent', '@reportportal/agent-js-webdriverio|5.1.0', NULL, 74, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (407, 'os', 'Windows_NT|x64', NULL, 74, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (408, 'rp.cluster.lastRun', '1711578518352', NULL, 74, true) ON CONFLICT DO NOTHING;
INSERT INTO public.item_attribute (id, key, value, item_id, launch_id, system) VALUES (421, 'rp.cluster.lastRun', '1711578543387', NULL, 2, true) ON CONFLICT DO NOTHING;


--
-- TOC entry 4029 (class 0 OID 17341)
-- Dependencies: 250
-- Data for Name: launch; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (1, 'da493783-629e-4c10-8976-d0c2fa259fd3', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-26 10:33:07.773', '2024-03-26 10:33:16.095', 1, '2024-03-26 10:33:16.1832', 'DEFAULT', 'FAILED', false, false, 0) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (3, '018317f1-fc95-411f-b8c0-396ca30e9b54', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-26 10:33:07.843', '2024-03-26 10:33:23.168', 3, '2024-03-26 10:33:23.221692', 'DEFAULT', 'FAILED', false, false, 0) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (24, '865fcd74-7bd8-4f9a-b4ce-684edcce9e3d', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:50:03.431', '2024-03-27 21:50:11.22', 24, '2024-03-27 21:50:11.275304', 'DEFAULT', 'PASSED', false, false, 51.2794) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (7, 'b67e778a-7fa1-4e34-9489-0b7ec1ecfc32', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-26 12:58:16.421', '2024-03-26 12:58:33.343', 7, '2024-03-26 12:58:33.468005', 'DEFAULT', 'FAILED', false, false, 12.4134) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (9, 'a320bf6c-e38c-4082-9007-40837d2ac374', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-26 12:59:14.77', '2024-03-26 12:59:29.382', 9, '2024-03-26 12:59:29.440987', 'DEFAULT', 'FAILED', false, false, 13.76275) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (36, 'bad07675-fe8f-40fd-873d-90d50d9cea9c', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:06:47.896', '2024-03-27 22:06:49.756', 36, '2024-03-27 22:06:49.813912', 'DEFAULT', 'FAILED', false, false, 1.324) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (11, '98a99db5-1fa2-4af8-831d-dd9ad002a0b4', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-26 13:00:52.931', '2024-03-26 13:01:06.159', 11, '2024-03-26 13:01:06.225008', 'DEFAULT', 'FAILED', false, false, 13.6546) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (12, '1065defb-f88a-40b9-bdf3-cd01458cd421', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:30:59.73', NULL, 12, '2024-03-27 21:31:00.040327', 'DEFAULT', 'IN_PROGRESS', false, false, 13.6818) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (13, '3915ab39-f630-4457-9892-ea9cc5290d7e', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:31:32.479', NULL, 13, '2024-03-27 21:31:32.532275', 'DEFAULT', 'IN_PROGRESS', false, false, 13.6818) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (14, 'df181e71-8a34-40a6-b4f1-10a90dbf04e4', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:33:59.638', NULL, 14, '2024-03-27 21:33:59.689192', 'DEFAULT', 'IN_PROGRESS', false, false, 13.6818) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (15, 'f65f56f7-5747-4446-af46-2b345450441c', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:37:06.823', NULL, 15, '2024-03-27 21:37:06.890122', 'DEFAULT', 'IN_PROGRESS', false, false, 13.6818) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (16, '7c9b32a1-2c24-44ba-ad09-a4ec46f73d7e', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:41:20.258', '2024-03-27 21:41:26.275', 16, '2024-03-27 21:41:26.339486', 'DEFAULT', 'FAILED', false, false, 13.6818) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (18, '80484b8d-f29d-4f0b-b774-81d643943acf', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:43:35.348', '2024-03-27 21:47:23.227', 18, '2024-03-27 21:47:23.308779', 'DEFAULT', 'FAILED', false, false, 55.693) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (26, 'd41f9a8b-aef0-435b-b369-9e4e63dcc099', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:50:40.468', '2024-03-27 21:50:40.678', 26, '2024-03-27 21:50:40.728601', 'DEFAULT', 'PASSED', false, false, 50.1164) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (20, '1dd424cc-d160-4171-a05d-408270149a7f', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:48:11.227', '2024-03-27 21:48:18.638', 20, '2024-03-27 21:48:18.700251', 'DEFAULT', 'FAILED', false, false, 53.8016) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (22, 'c8b4fc70-030d-48d4-9648-0443758c02ed', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:49:35.254', '2024-03-27 21:49:42.718', 22, '2024-03-27 21:49:42.776862', 'DEFAULT', 'FAILED', false, false, 52.3724) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (37, '33e67b19-a249-47d9-915d-8bcf74f6a705', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:07:19.263', NULL, 37, '2024-03-27 22:07:19.309683', 'DEFAULT', 'IN_PROGRESS', false, false, 1.351) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (28, '5114b884-3694-4029-ace5-6259afdb5e1e', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:52:44.798', '2024-03-27 21:52:45.012', 28, '2024-03-27 21:52:45.058926', 'DEFAULT', 'PASSED', false, false, 4.5828) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (30, 'e0d79bba-1ebb-4893-a77c-9f8e54b1abd3', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:56:46.117', '2024-03-27 21:56:47.151', 30, '2024-03-27 21:56:47.200904', 'DEFAULT', 'PASSED', false, false, 3.3096) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (38, 'b0d6ec8c-426d-4df8-8d15-6148f40f82e5', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:07:47.723', '2024-03-27 22:07:49.552', 38, '2024-03-27 22:07:49.594637', 'DEFAULT', 'FAILED', false, false, 1.351) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (32, 'cb001a22-1596-479d-bd53-b911171d712a', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:58:34.554', '2024-03-27 21:58:36.458', 32, '2024-03-27 21:58:36.516923', 'DEFAULT', 'FAILED', false, false, 2.1958) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (33, '739182e8-426d-4fb4-a0d5-851fa333bcb0', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 21:59:06.519', NULL, 33, '2024-03-27 21:59:06.570579', 'DEFAULT', 'IN_PROGRESS', false, false, 2.2302) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (34, 'b9153609-6eaa-4a80-995b-b3a21d5f2776', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:03:57.505', '2024-03-27 22:03:59.248', 34, '2024-03-27 22:03:59.29754', 'DEFAULT', 'FAILED', false, false, 2.2302) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (50, '5faa6916-e3c3-4d61-bbb4-0ed1efdbbaab', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:14:44.082', '2024-03-27 22:14:46.059', 50, '2024-03-27 22:14:46.110997', 'DEFAULT', 'FAILED', false, false, 1.8982) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (40, '4c25c625-f063-418a-b3c9-9fac6d21ed20', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:08:58.196', '2024-03-27 22:09:00.093', 40, '2024-03-27 22:09:00.143754', 'DEFAULT', 'FAILED', false, false, 1.8124) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (41, '9fddb30c-0ba9-40ae-907f-83d380e26ee5', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:09:35.876', NULL, 41, '2024-03-27 22:09:35.921873', 'DEFAULT', 'IN_PROGRESS', false, false, 1.8466) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (42, '1af62398-fbca-4b77-98dd-17d6ecdb7f35', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:11:05.925', '2024-03-27 22:11:07.785', 42, '2024-03-27 22:11:07.854741', 'DEFAULT', 'FAILED', false, false, 1.8466) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (46, '2b0d6d56-0f5b-4eef-9d5a-88567c981764', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:12:15.663', '2024-03-27 22:12:17.586', 46, '2024-03-27 22:12:17.642305', 'DEFAULT', 'FAILED', false, false, 1.8664) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (44, '56361558-988f-499f-a7da-c80ed0fc7daf', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:11:48.159', '2024-03-27 22:11:50.142', 44, '2024-03-27 22:11:50.198847', 'DEFAULT', 'FAILED', false, false, 1.8518) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (48, '067ec351-a412-4733-9364-73fa7668e877', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:13:36.537', '2024-03-27 22:13:38.454', 48, '2024-03-27 22:13:38.507712', 'DEFAULT', 'FAILED', false, false, 1.8844) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (54, 'f4d3bfea-6fd1-4fb8-801f-1006afd02612', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:18:18.274', '2024-03-27 22:18:20.158', 54, '2024-03-27 22:18:20.214578', 'DEFAULT', 'FAILED', false, false, 1.8954) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (52, 'af09f502-89db-41f0-8a7a-9378b8e9beb3', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:17:43.071', '2024-03-27 22:17:45.007', 52, '2024-03-27 22:17:45.058939', 'DEFAULT', 'FAILED', false, false, 1.9134) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (58, '2b1fc3ec-74c7-4305-b663-f40f0e332fd2', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:21:22.245', '2024-03-27 22:21:24.145', 58, '2024-03-27 22:21:24.192689', 'DEFAULT', 'FAILED', false, false, 1.8928) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (56, '8b5901d3-c8fa-477e-b916-d020a8ee7115', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:18:40.983', '2024-03-27 22:18:42.916', 56, '2024-03-27 22:18:42.963556', 'DEFAULT', 'FAILED', false, false, 1.8972) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (60, '150485ed-1b88-4f24-9641-1c81fae1a251', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:21:42.022', '2024-03-27 22:21:44.63', 60, '2024-03-27 22:21:44.687964', 'DEFAULT', 'FAILED', false, false, 2.0198) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (62, 'fd5c5695-1965-4a2d-bdf3-30f2a7a9fd4d', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:22:23.379', '2024-03-27 22:22:25.269', 62, '2024-03-27 22:22:25.318581', 'DEFAULT', 'FAILED', false, false, 2.0092) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (64, '388d8c0b-e7e5-4c43-b760-daeb0a38921a', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:23:09.585', '2024-03-27 22:23:11.62', 64, '2024-03-27 22:23:11.674574', 'DEFAULT', 'FAILED', false, false, 2.0406) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (66, '56afa379-bd24-4496-9d56-048162781e28', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:23:40.2', '2024-03-27 22:23:42.223', 66, '2024-03-27 22:23:42.277543', 'DEFAULT', 'FAILED', false, false, 2.0588) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (68, '5f62c4ad-90b4-4405-b966-c3e9551aed58', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:25:49.258', '2024-03-27 22:25:51.226', 68, '2024-03-27 22:25:51.273125', 'DEFAULT', 'FAILED', false, false, 2.0712) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (2, 'c90e39a3-5b81-4614-a8e7-9d61ee7479e6', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-26 10:33:07.975', '2024-03-27 22:29:03.368897', 2, '2024-03-27 22:29:03.370046', 'DEFAULT', 'INTERRUPTED', false, false, 0) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (70, '3b3042f0-b6b4-4979-bd1e-9630d4f23dfe', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:26:22.026', '2024-03-27 22:26:23.987', 70, '2024-03-27 22:26:24.039319', 'DEFAULT', 'FAILED', false, false, 1.9404) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (72, 'bc4d0ef5-2bb3-401d-9433-e388c610a270', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:28:20.263', '2024-03-27 22:28:22.238', 72, '2024-03-27 22:28:22.284446', 'DEFAULT', 'FAILED', false, false, 1.9588) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (74, '39d633d4-464d-4e33-8ca8-5ad978eec39c', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:28:36.733', '2024-03-27 22:28:38.436', 74, '2024-03-27 22:28:38.484909', 'DEFAULT', 'PASSED', false, false, 1.8992) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (76, '9727ca91-943a-43f2-9de8-e4f8c5ca79f1', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:28:54.61', '2024-03-27 22:28:56.408', 76, '2024-03-27 22:28:56.456258', 'DEFAULT', 'PASSED', false, false, 1.8488) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (80, '93e05d2e-f83a-4685-8ca3-f59b48602d2d', 39, 4, 'Test launch', 'Front-end automation tests', '2024-03-27 22:29:43.328', '2024-03-27 22:29:52.023', 80, '2024-03-27 22:29:52.084489', 'DEFAULT', 'PASSED', false, false, 2.96) ON CONFLICT DO NOTHING;
INSERT INTO public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) VALUES (84, '0addedd6-3fbb-40e8-8871-5f480c7852ed', 39, 1, 'Test launch', 'Front-end automation tests', '2024-03-27 22:31:32.724', '2024-03-27 22:31:41.494', 84, '2024-03-27 22:31:41.551299', 'DEFAULT', 'PASSED', false, false, 4.4844) ON CONFLICT DO NOTHING;


--
-- TOC entry 4005 (class 0 OID 17022)
-- Dependencies: 226
-- Data for Name: launch_attribute_rules; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4003 (class 0 OID 17011)
-- Dependencies: 224
-- Data for Name: launch_names; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4031 (class 0 OID 17373)
-- Dependencies: 252
-- Data for Name: launch_number; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.launch_number (id, project_id, launch_name, number) VALUES (1, 39, 'Test launch', 84) ON CONFLICT DO NOTHING;


--
-- TOC entry 4044 (class 0 OID 17525)
-- Dependencies: 265
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (1, '438c60d1-1a06-4c74-bf0b-a06005ec8227', '2024-03-26 10:33:15.893', 'Error: waitUntil condition failed with the following reason: myAccountPage.loginError.isDisplayed is not a function
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testLoginNegative.js:25:9)', 4, NULL, '2024-03-26 10:33:15.978367', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (2, '958955ee-5d49-4370-a998-820218e9e1d4', '2024-03-26 10:33:15.89', '', 4, NULL, '2024-03-26 10:33:16.048378', 20000, 1, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (68, '5e5ce2e6-aa7c-4bc3-be27-4b012e5e244f', '2024-03-27 22:26:23.373', '', 103, NULL, '2024-03-27 22:26:23.452396', 20000, 32, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (4, 'dd4c507e-053c-4c70-85bd-4a23b5a16f8a', '2024-03-26 10:33:17.494', '', 5, NULL, '2024-03-26 10:33:17.580859', 20000, 2, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (5, '15716dba-ce0f-4afa-b569-68f0e6103a82', '2024-03-26 10:33:18.658', 'Error: ER_NOT_SUPPORTED_AUTH_MODE: Client does not support authentication protocol requested by server; consider upgrading MySQL client
    at Handshake.Sequence._packetToError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\sequences\Sequence.js:47:14)
    at Handshake.ErrorPacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\sequences\Handshake.js:123:18)
    at Protocol._parsePacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:291:23)
    at Parser._parsePacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Parser.js:433:10)
    at Parser.write (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Parser.js:43:10)
    at Protocol.write (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:38:16)
    at Socket.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:88:28)
    at Socket.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:526:10)
    at Socket.emit (node:events:513:28)
    at Socket.emit (node:domain:489:12)
    at addChunk (node:internal/streams/readable:315:12)
    at readableAddChunk (node:internal/streams/readable:289:9)
    at Socket.Readable.push (node:internal/streams/readable:228:10)
    at TCP.onStreamRead (node:internal/stream_base_commons:190:23)
    --------------------
    at Protocol._enqueue (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:144:48)
    at Protocol.handshake (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:51:23)
    at Connection.connect (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:116:18)
    at DatabaseQuery.connect (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\utils\database.query.js:15:25)
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:66:29)
    at processTicksAndRejections (node:internal/process/task_queues:96:5)
    at async Context.executeAsync (file:///C:/Users/roby2/OneDrive/Desktop/webdriverIO/node_modules/@wdio/utils/build/shim.js:286:24)
    at async Context.testFrameworkFnWrapper (file:///C:/Users/roby2/OneDrive/Desktop/webdriverIO/node_modules/@wdio/utils/build/test-framework/testFnWrapper.js:51:18)', 6, NULL, '2024-03-26 10:33:18.702953', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (67, '4a240e71-953e-4469-9e78-c49543a74e1c', '2024-03-27 22:26:23.376', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Chet.Powlowski"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)', 103, NULL, '2024-03-27 22:26:23.44544', 40000, NULL, 39, 31) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (7, '622301a0-a347-455f-9757-a6ddb5cac24e', '2024-03-26 10:33:23.002', '', 7, NULL, '2024-03-26 10:33:23.096286', 20000, 3, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (3, '72e86d8b-7e36-4724-92ad-57476afbcaa7', '2024-03-26 10:33:17.496', 'Error: waitUntil condition failed with the following reason: myAccountPage.logoutButton.isDisplayed is not a function
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:26:9)', 5, NULL, '2024-03-26 10:33:17.568283', 40000, NULL, 39, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (6, '3ff3b57c-0011-4c82-b0ed-d79285b647ff', '2024-03-26 10:33:23.004', 'Error: expected login button to be visible after 5s
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:43:9)', 7, NULL, '2024-03-26 10:33:23.080765', 40000, NULL, 39, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (9, '8ac34351-0601-4161-bb94-9fd900660208', '2024-03-26 12:58:23.434', '', 9, NULL, '2024-03-26 12:58:23.537719', 20000, 4, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (11, '72498f83-7887-4966-8634-9df787881327', '2024-03-26 12:58:25.781', '', 13, NULL, '2024-03-26 12:58:25.86622', 20000, 5, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (10, '3f8fe3f6-0869-4bc7-a39b-f0786f7472b0', '2024-03-26 12:58:25.785', 'Error: waitUntil condition failed with the following reason: myAccountPage.loginError.isDisplayed is not a function
    at processTimers (node:internal/timers:499:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testLoginNegative.js:25:9)', 13, NULL, '2024-03-26 12:58:25.853437', 40000, NULL, 39, 3) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (13, '3b4d984f-3fcd-4d01-887f-f6a931242a82', '2024-03-26 12:58:28.915', '', 14, NULL, '2024-03-26 12:58:28.998587', 20000, 6, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (8, 'bcfc9ef8-fc76-4ff0-9685-5884d0b2aa19', '2024-03-26 12:58:23.437', 'Error: waitUntil condition failed with the following reason: myAccountPage.logoutButton.isDisplayed is not a function
    at processTimers (node:internal/timers:499:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:26:9)', 9, NULL, '2024-03-26 12:58:23.518203', 40000, NULL, 39, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (12, '2aadd0ab-fbf5-4cf3-ac75-4f7b19c010b7', '2024-03-26 12:58:28.918', 'Error: expected login button to be visible after 5s
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:43:9)', 14, NULL, '2024-03-26 12:58:28.985842', 40000, NULL, 39, 5) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (15, '2ca5a638-9fda-4d54-a1b7-48359fff4d99', '2024-03-26 12:58:33.065', '', 11, NULL, '2024-03-26 12:58:33.150387', 20000, 7, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (14, '76ed1a44-7a0a-4a21-8ef7-95dc52f31dc9', '2024-03-26 12:58:33.068', 'Error: expected order received message to be displayed after 10s
    at async CheckoutPage.waitForOrderReceivedMessage (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\pageobjects\checkout.page.js:102:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:62:9)', 11, NULL, '2024-03-26 12:58:33.139174', 40000, NULL, 39, 6) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (16, 'acc9350b-ff84-4a73-9cf1-00ca8bfb5167', '2024-03-26 12:59:29.104', 'Error: expected order received message to be displayed after 10s
    at async CheckoutPage.waitForOrderReceivedMessage (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\pageobjects\checkout.page.js:102:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:62:9)', 16, NULL, '2024-03-26 12:59:29.178239', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (17, '0e8cd600-35e3-4a73-8744-d2d3f716ff3d', '2024-03-26 12:59:29.1', '', 16, NULL, '2024-03-26 12:59:29.192089', 20000, 8, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (18, '8c2b7c5a-787d-4d36-8ca1-311288155d90', '2024-03-26 13:01:05.882', 'Error: expected order received message to be displayed after 10s
    at async CheckoutPage.waitForOrderReceivedMessage (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\pageobjects\checkout.page.js:102:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:62:9)', 18, NULL, '2024-03-26 13:01:05.950658', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (19, '2526114d-006d-4849-b37f-288d74e14050', '2024-03-26 13:01:05.879', '', 18, NULL, '2024-03-26 13:01:05.96502', 20000, 9, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (20, '2152dda3-0a41-40c0-8948-916140f993d1', '2024-03-27 21:34:07.393', 'Error: ER_NOT_SUPPORTED_AUTH_MODE: Client does not support authentication protocol requested by server; consider upgrading MySQL client
    at Handshake.Sequence._packetToError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\sequences\Sequence.js:47:14)
    at Handshake.ErrorPacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\sequences\Handshake.js:123:18)
    at Protocol._parsePacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:291:23)
    at Parser._parsePacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Parser.js:433:10)
    at Parser.write (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Parser.js:43:10)
    at Protocol.write (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:38:16)
    at Socket.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:88:28)
    at Socket.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:526:10)
    at Socket.emit (node:events:513:28)
    at Socket.emit (node:domain:489:12)
    at addChunk (node:internal/streams/readable:315:12)
    at readableAddChunk (node:internal/streams/readable:289:9)
    at Socket.Readable.push (node:internal/streams/readable:228:10)
    at TCP.onStreamRead (node:internal/stream_base_commons:190:23)
    --------------------
    at Protocol._enqueue (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:144:48)
    at Protocol.handshake (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:51:23)
    at Connection.connect (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:116:18)
    at DatabaseQuery.connect (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\utils\database.query.js:15:25)
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:66:29)
    at processTicksAndRejections (node:internal/process/task_queues:96:5)
    at async Context.executeAsync (file:///C:/Users/roby2/OneDrive/Desktop/webdriverIO/node_modules/@wdio/utils/build/shim.js:286:24)
    at async Context.testFrameworkFnWrapper (file:///C:/Users/roby2/OneDrive/Desktop/webdriverIO/node_modules/@wdio/utils/build/test-framework/testFnWrapper.js:51:18)', 24, NULL, '2024-03-27 21:34:07.445533', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (69, '0aab327a-e788-4a60-a97b-6c6698d7ae78', '2024-03-27 22:28:21.644', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Jose_Franecki82"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:31:55)', 106, NULL, '2024-03-27 22:28:21.717572', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (22, '7686bf20-6155-4713-b1a7-5461dc2954ff', '2024-03-27 21:41:26.092', '', 28, NULL, '2024-03-27 21:41:26.232252', 20000, 10, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (21, '8b39baeb-358a-4b1b-992f-9646e0f08929', '2024-03-27 21:41:26.095', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) // deep equality[22m

Expected: [32m"Golden_Rohan21@yahoo.com"[39m
Received: [31mundefined[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:72:30)
    at runMicrotasks (<anonymous>)', 28, NULL, '2024-03-27 21:41:26.164772', 40000, NULL, 39, 8) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (70, 'b0f39548-18a5-4018-8444-21e4c2f0d909', '2024-03-27 22:28:21.641', '', 106, NULL, '2024-03-27 22:28:21.724503', 20000, 33, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (23, '1c130e8b-b707-4470-bf6f-b442bd821478', '2024-03-27 21:47:22.889', 'Error: Timeout of 60000ms exceeded. The execution in the test "e2e checkout as guest user should add product to cart and checkout as guest user" took too long. Try to reduce the run time or increase your timeout for test specs (https://webdriver.io/docs/timeouts). (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js)
    at createTimeoutError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\errors.js:498:15)
    at Test.Runnable._timeoutError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\runnable.js:431:10)
    at Timeout.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\runnable.js:246:24)
    at listOnTimeout (node:internal/timers:559:17)
    at processTimers (node:internal/timers:502:7)', 30, NULL, '2024-03-27 21:47:22.93129', 40000, NULL, 39, 9) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (24, 'fc46f611-7e66-429f-9574-e921b930e13a', '2024-03-27 21:48:18.348', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) // deep equality[22m

Expected: [32m"Hobart.Ratke@gmail.com"[39m
Received: [31mundefined[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:74:30)
    at runMicrotasks (<anonymous>)', 32, NULL, '2024-03-27 21:48:18.417538', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (25, '4d971917-8e89-4510-a696-d6e613d34379', '2024-03-27 21:48:18.345', '', 32, NULL, '2024-03-27 21:48:18.431815', 20000, 11, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (26, '9f9ea5bc-0e06-4aae-8e1c-3338ef427f9c', '2024-03-27 21:49:42.441', 'ReferenceError: result is not defined
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:69:21)
    at runMicrotasks (<anonymous>)', 34, NULL, '2024-03-27 21:49:42.508801', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (27, '79ed33e7-a845-444f-989d-e2acd9095c8f', '2024-03-27 21:49:42.438', '', 34, NULL, '2024-03-27 21:49:42.518289', 20000, 12, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (29, 'd5b5bbf5-d0b9-4a16-8f89-a4980254bf3c', '2024-03-27 21:58:35.838', '', 40, NULL, '2024-03-27 21:58:35.918219', 20000, 13, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (28, '2dc722d1-80d7-48de-8390-0121efeced89', '2024-03-27 21:58:35.84', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Kaitlyn_Stiedemann"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 40, NULL, '2024-03-27 21:58:35.908689', 40000, NULL, 39, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (30, '8f7c141e-fd51-4005-8174-870d402cfb52', '2024-03-27 22:00:50.833', 'Error: Timeout of 60000ms exceeded. The execution in the test "Register to ecommerce application should register a new user" took too long. Try to reduce the run time or increase your timeout for test specs (https://webdriver.io/docs/timeouts). (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js)
    at createTimeoutError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\errors.js:498:15)
    at Test.Runnable._timeoutError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\runnable.js:431:10)
    at Timeout.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\runnable.js:246:24)
    at listOnTimeout (node:internal/timers:559:17)
    at processTimers (node:internal/timers:502:7)', 43, NULL, '2024-03-27 22:00:52.874333', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (32, '04f83c63-e8ce-436c-b38c-4a2b0e0744a5', '2024-03-27 22:03:58.794', '', 45, NULL, '2024-03-27 22:03:58.879651', 20000, 14, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (31, '70a9091c-3743-444d-93ad-339ad4a30874', '2024-03-27 22:03:58.797', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Micaela.Cruickshank"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 45, NULL, '2024-03-27 22:03:58.867685', 40000, NULL, 39, 13) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (33, 'd599fc7e-1416-4f98-ad19-e888d918b89e', '2024-03-27 22:06:49.156', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Clarabelle.Koelpin"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 48, NULL, '2024-03-27 22:06:49.228345', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (34, 'bfcd00a1-73fd-4ad1-9ae6-fb949abbf160', '2024-03-27 22:06:49.154', '', 48, NULL, '2024-03-27 22:06:49.238855', 20000, 15, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (36, '3ca4174f-ff69-42a4-8222-7ed1d46de6ac', '2024-03-27 22:07:49.077', '', 53, NULL, '2024-03-27 22:07:49.159487', 20000, 16, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (35, '1f6b4e02-9f01-45f1-8b84-4fe7c42cbeb8', '2024-03-27 22:07:49.08', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Mac.Reinger"[39m
Received object: [31m{Symbol(async_id_symbol): 65695, Symbol(trigger_async_id_symbol): 65415}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 53, NULL, '2024-03-27 22:07:49.151272', 40000, NULL, 39, 15) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (37, 'cb436433-25ae-429c-9592-2dc0d4ed7d7c', '2024-03-27 22:08:59.506', '', 56, NULL, '2024-03-27 22:08:59.587184', 20000, 17, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (38, '4862e102-393c-452c-87d8-88142ea0e04c', '2024-03-27 22:08:59.509', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Anissa_Hartmann56"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:30:48)', 56, NULL, '2024-03-27 22:08:59.610514', 40000, NULL, 39, 16) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (40, 'eabf481e-fbf0-4572-abd7-797820813488', '2024-03-27 22:11:07.355', '', 61, NULL, '2024-03-27 22:11:07.433431', 20000, 18, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (39, 'd1feea66-957b-419e-a275-c58da109f764', '2024-03-27 22:11:07.358', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Herminio.Terry"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 61, NULL, '2024-03-27 22:11:07.426163', 40000, NULL, 39, 17) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (41, '34ba8a2e-114e-45dc-bd1f-066ea430d737', '2024-03-27 22:11:49.524', '', 64, NULL, '2024-03-27 22:11:49.606552', 20000, 19, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (42, 'e8c007dc-b75b-4f96-85e3-9c004ac8861e', '2024-03-27 22:11:49.526', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Rickie26"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 64, NULL, '2024-03-27 22:11:49.626933', 40000, NULL, 39, 18) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (43, 'd1191dae-7c40-4823-b82c-11e009b47557', '2024-03-27 22:12:16.966', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Hailie30"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 67, NULL, '2024-03-27 22:12:17.036559', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (44, 'bfa3b11b-1fab-41b4-b065-8e2860446f02', '2024-03-27 22:12:16.963', '', 67, NULL, '2024-03-27 22:12:17.044655', 20000, 20, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (48, 'c9921afe-ba80-498a-b7eb-295abf3e8927', '2024-03-27 22:14:45.44', '', 73, NULL, '2024-03-27 22:14:45.518474', 20000, 22, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (47, '09904f17-5384-401e-8a27-c0818533be67', '2024-03-27 22:14:45.443', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Gabriel56"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 73, NULL, '2024-03-27 22:14:45.51116', 40000, NULL, 39, 21) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (45, '51cdce33-e351-458d-8847-c0e0645add5f', '2024-03-27 22:13:37.815', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Dolores_Kuhic"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)', 70, NULL, '2024-03-27 22:13:37.886173', 40000, NULL, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (46, 'b0bd1e1e-24e9-4c27-ad4d-ce9ae9b64744', '2024-03-27 22:13:37.812', '', 70, NULL, '2024-03-27 22:13:37.894742', 20000, 21, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (50, 'd150015f-55da-4721-823b-76842a800b09', '2024-03-27 22:17:44.412', '', 76, NULL, '2024-03-27 22:17:44.489456', 20000, 23, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (49, 'd0baf040-0242-47af-a871-a58d7fd187ef', '2024-03-27 22:17:44.414', 'TypeError: myAccountPage.getContentText(...).toContain is not a function
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:46)', 76, NULL, '2024-03-27 22:17:44.482441', 40000, NULL, 39, 22) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (52, 'ea98e20e-2de7-4470-9dc7-0434ef858808', '2024-03-27 22:18:19.565', '', 79, NULL, '2024-03-27 22:18:19.643071', 20000, 24, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (51, '379a685b-0820-4a0d-9926-18da551b330a', '2024-03-27 22:18:19.567', 'TypeError: myAccountPage.getContentText(...).toContain is not a function
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:54)', 79, NULL, '2024-03-27 22:18:19.637218', 40000, NULL, 39, 23) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (54, '3b4ef9b4-e8d3-449e-b0fa-45b59d6188e7', '2024-03-27 22:18:42.322', '', 82, NULL, '2024-03-27 22:18:42.400327', 20000, 25, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (53, '043aa879-a25b-4f81-98d1-944374ad86eb', '2024-03-27 22:18:42.324', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Tracy.Stroman74"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)', 82, NULL, '2024-03-27 22:18:42.393904', 40000, NULL, 39, 24) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (55, '019f61c1-4d76-4f9e-afa7-a91081d75216', '2024-03-27 22:21:23.575', '', 85, NULL, '2024-03-27 22:21:23.651816', 20000, 26, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (56, 'f29de2bf-f7e2-4b92-b459-5e2c555891be', '2024-03-27 22:21:23.577', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Crystal56"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)', 85, NULL, '2024-03-27 22:21:23.673996', 40000, NULL, 39, 25) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (58, 'd304c2a3-6580-4cbc-8809-98b3a8adcb98', '2024-03-27 22:21:44.033', '', 88, NULL, '2024-03-27 22:21:44.109482', 20000, 27, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (57, 'b34981c2-8f30-4b21-9e84-19fe6109cfea', '2024-03-27 22:21:44.036', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Oswaldo_Gislason"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)', 88, NULL, '2024-03-27 22:21:44.103658', 40000, NULL, 39, 26) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (60, '08932e59-2d8a-4def-bf9b-8dfa67f0c7d7', '2024-03-27 22:22:24.623', '', 91, NULL, '2024-03-27 22:22:24.698445', 20000, 28, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (59, 'ab6f7115-4cf1-48d3-8336-59606bb0f20d', '2024-03-27 22:22:24.625', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Yasmeen64"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)', 91, NULL, '2024-03-27 22:22:24.691882', 40000, NULL, 39, 27) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (62, '60c7d4a7-884f-49ce-a414-a1020ffa52e9', '2024-03-27 22:23:11.011', '', 94, NULL, '2024-03-27 22:23:11.088368', 20000, 29, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (61, 'd5661425-b18e-4aea-830a-3b20cd469d2c', '2024-03-27 22:23:11.014', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Bethel24"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)', 94, NULL, '2024-03-27 22:23:11.081329', 40000, NULL, 39, 28) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (64, 'b7607c1c-b8b0-4f87-9975-32829d98cc5a', '2024-03-27 22:23:41.628', '', 97, NULL, '2024-03-27 22:23:41.707522', 20000, 30, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (63, 'ee43d4ef-be1e-487e-9012-2e8b9c8fbf5d', '2024-03-27 22:23:41.631', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Providenci16"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)', 97, NULL, '2024-03-27 22:23:41.701593', 40000, NULL, 39, 29) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (66, '8b586524-6d9a-4c2f-89d8-9f5cda82cac7', '2024-03-27 22:25:50.618', '', 100, NULL, '2024-03-27 22:25:50.697573', 20000, 31, 39, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) VALUES (65, 'cd9427e4-8d02-42cc-b1f9-7b8c9210651c', '2024-03-27 22:25:50.621', 'Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Micah_Armstrong99"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)', 100, NULL, '2024-03-27 22:25:50.689941', 40000, NULL, 39, 30) ON CONFLICT DO NOTHING;


--
-- TOC entry 3995 (class 0 OID 16951)
-- Dependencies: 216
-- Data for Name: oauth_registration; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 3999 (class 0 OID 16978)
-- Dependencies: 220
-- Data for Name: oauth_registration_restriction; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 3997 (class 0 OID 16963)
-- Dependencies: 218
-- Data for Name: oauth_registration_scope; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4077 (class 0 OID 18295)
-- Dependencies: 298
-- Data for Name: onboarding; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.onboarding (id, data, page, available_from, available_to) VALUES (1, '[{"problem":"Issues with instance performance","link":"https://reportportal.io/docs/installation-steps/OptimalPerformanceHardwareSetup"},{"problem":"How to configure test reporting?","link":"https://reportportal.io/docs/log-data-in-reportportal/test-framework-integration/"},{"problem":"Issues with service Analyzer","link":"https://reportportal.io/docs/issues-troubleshooting/ResolveAnalyzerKnownIssues"},{"problem":"How to integrate ReportPortal with Jira Server?","link":"https://reportportal.io/docs/plugins/AtlassianJiraServer"},{"problem":"How to configure TLS/SSL certificate setup?","link":"https://reportportal.io/docs/installation-steps/SetupTSLSSLInTraefik2.0.x"},{"problem":"Questions regarding File storage options","link":"https://reportportal.io/docs/installation-steps/ReportPortal23.1FileStorageOptions/"},{"problem":"Can not find your question?","link":""}]', 'GENERAL', '2024-03-25 23:15:41.808817', '2024-03-28 23:15:41.808817') ON CONFLICT DO NOTHING;


--
-- TOC entry 4017 (class 0 OID 17192)
-- Dependencies: 238
-- Data for Name: owned_entity; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4038 (class 0 OID 17472)
-- Dependencies: 259
-- Data for Name: parameter; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.parameter (item_id, key, value) VALUES (6, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (9, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (13, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (14, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (20, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (22, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (24, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (26, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (28, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (30, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (32, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (34, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (36, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (38, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (40, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (41, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (11, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (43, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (45, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (46, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (48, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (51, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (53, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (54, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (56, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (57, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (59, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (61, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (62, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (64, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (65, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (67, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (68, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (70, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (73, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (74, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (76, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (77, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (79, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (80, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (82, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (83, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (85, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (86, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (88, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (89, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (91, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (92, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (97, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (98, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (100, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (101, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (16, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (49, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (71, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (94, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (95, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (18, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (103, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (104, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (106, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (107, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (109, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (110, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (112, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (115, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (119, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (123, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (124, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (113, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (117, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (120, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (126, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (127, 'browser', 'chrome.123_0_6312_86.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (4, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (5, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;
INSERT INTO public.parameter (item_id, key, value) VALUES (7, 'browser', 'chrome.123_0_6312_59.windows') ON CONFLICT DO NOTHING;


--
-- TOC entry 4036 (class 0 OID 17439)
-- Dependencies: 257
-- Data for Name: pattern_template; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4037 (class 0 OID 17455)
-- Dependencies: 258
-- Data for Name: pattern_template_test_item; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 3989 (class 0 OID 16864)
-- Dependencies: 210
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (1, 'superadmin_personal', 'PERSONAL', NULL, '2024-03-25 23:15:41.808817', '{"metadata": {"additional_info": ""}}', 0) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (2, 'default_personal', 'PERSONAL', NULL, '2024-03-25 23:15:41.808817', '{"metadata": {"additional_info": ""}}', 0) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (37, 'python_pytest_project', 'INTERNAL', NULL, '2024-03-26 10:11:58.095', NULL, 0) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (40, 'spring_selenium_project', 'INTERNAL', NULL, '2024-03-26 10:12:48.786', NULL, 0) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (38, 'python_robot_project', 'INTERNAL', NULL, '2024-03-26 10:12:12.386', NULL, 0) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (42, 'wdio_user_personal', 'PERSONAL', NULL, '2024-03-26 10:14:10.191', '{"metadata": {"additional_info": "Personal project of WebdriverIO user"}}', 0) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (39, 'webdriverio_automation_framework', 'INTERNAL', NULL, '2024-03-26 10:12:37.836', NULL, 768422) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (44, 'spring_selenium_user_personal', 'PERSONAL', NULL, '2024-03-26 10:15:05.262', '{"metadata": {"additional_info": "Personal project of spring selenium user"}}', 0) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (41, 'python_pytest_personal', 'PERSONAL', NULL, '2024-03-26 10:13:34.063', '{"metadata": {"additional_info": "Personal project of python pytest user"}}', 0) ON CONFLICT DO NOTHING;
INSERT INTO public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) VALUES (43, 'python_robot_personal', 'PERSONAL', NULL, '2024-03-26 10:14:38.146', '{"metadata": {"additional_info": "Personal project of python robot user"}}', 0) ON CONFLICT DO NOTHING;


--
-- TOC entry 4011 (class 0 OID 17058)
-- Dependencies: 232
-- Data for Name: project_attribute; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '80', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '80', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '2', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '2', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'false', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'false', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'LAUNCH_NAME', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'LAUNCH_NAME', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (14, 'reportportal@example.com', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (14, 'reportportal@example.com', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '1209600', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '1209600', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'CURRENT_AND_THE_SAME_NAME', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '-1', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '7776000', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '95', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'true', 37) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'CURRENT_AND_THE_SAME_NAME', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '-1', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '7776000', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '95', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'true', 38) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'CURRENT_AND_THE_SAME_NAME', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '-1', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '7776000', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '95', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'true', 39) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'CURRENT_AND_THE_SAME_NAME', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '-1', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '7776000', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '95', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'true', 40) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'CURRENT_AND_THE_SAME_NAME', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '-1', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '7776000', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '95', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'true', 41) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'CURRENT_AND_THE_SAME_NAME', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '-1', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '7776000', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '95', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'true', 42) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'CURRENT_AND_THE_SAME_NAME', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '-1', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '7776000', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '95', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'true', 43) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (19, 'true', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (12, 'CURRENT_AND_THE_SAME_NAME', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (8, '-1', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (16, 'false', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (3, '7776000', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (18, 'true', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (17, '95', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (10, 'false', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (7, '95', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (2, '7776000', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (1, '86400', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (4, '1209600', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (9, 'false', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (13, 'false', 44) ON CONFLICT DO NOTHING;
INSERT INTO public.project_attribute (attribute_id, value, project_id) VALUES (11, 'true', 44) ON CONFLICT DO NOTHING;


--
-- TOC entry 3994 (class 0 OID 16917)
-- Dependencies: 215
-- Data for Name: project_user; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (1, 1, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (2, 2, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (1, 37, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (1, 38, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (1, 39, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (1, 40, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (3, 37, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (3, 41, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (4, 39, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (4, 42, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (5, 38, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (5, 43, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (6, 40, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;
INSERT INTO public.project_user (user_id, project_id, project_role) VALUES (6, 44, 'PROJECT_MANAGER') ON CONFLICT DO NOTHING;


--
-- TOC entry 4006 (class 0 OID 17037)
-- Dependencies: 227
-- Data for Name: recipients; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 3991 (class 0 OID 16891)
-- Dependencies: 212
-- Data for Name: restore_password_bid; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 3985 (class 0 OID 16385)
-- Dependencies: 206
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.schema_migrations (version, dirty) VALUES (81, false) ON CONFLICT DO NOTHING;


--
-- TOC entry 4002 (class 0 OID 16998)
-- Dependencies: 223
-- Data for Name: sender_case; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 3987 (class 0 OID 16851)
-- Dependencies: 208
-- Data for Name: server_settings; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.server_settings (id, key, value) VALUES (1, 'server.analytics.all', 'true') ON CONFLICT DO NOTHING;
INSERT INTO public.server_settings (id, key, value) VALUES (2, 'server.details.instance', '11f42f6d-801b-4c26-8725-f09a8f0bbad1') ON CONFLICT DO NOTHING;
INSERT INTO public.server_settings (id, key, value) VALUES (3, 'secret.key', '\xbec2df5cc5ea72e122d8af4dc37bf963109bcf68fc1a1a5c08178ea297695ce0') ON CONFLICT DO NOTHING;


--
-- TOC entry 4071 (class 0 OID 18208)
-- Dependencies: 292
-- Data for Name: shedlock; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.shedlock (name, lock_until, locked_at, locked_by) VALUES ('calculateAllocatedStorage', '2024-03-26 16:10:00.005257', '2024-03-26 16:10:00.001751', '0ca19229fd8e') ON CONFLICT DO NOTHING;


--
-- TOC entry 4079 (class 0 OID 18330)
-- Dependencies: 300
-- Data for Name: stale_materialized_view; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4054 (class 0 OID 17638)
-- Dependencies: 275
-- Data for Name: statistics; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (1, 1, NULL, 2, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (2, 1, NULL, 4, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (3, 1, NULL, 2, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (4, 1, NULL, 4, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (5, 1, 1, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (6, 1, 1, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (7, 1, NULL, 2, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (8, 1, NULL, 4, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (10, 1, NULL, 2, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (11, 1, NULL, 4, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (13, 1, 1, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (14, 1, 1, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (16, 1, NULL, 5, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (18, 1, NULL, 5, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (22, 1, NULL, 5, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (25, 1, NULL, 5, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (15, 2, NULL, 3, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (30, 1, NULL, 7, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (17, 2, NULL, 3, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (32, 1, NULL, 7, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (19, 2, 3, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (20, 2, 3, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (21, 2, NULL, 3, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (36, 1, NULL, 7, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (24, 2, NULL, 3, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (39, 1, NULL, 7, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (27, 2, 3, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (28, 2, 3, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (44, 1, NULL, 9, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (46, 1, NULL, 9, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (50, 1, NULL, 9, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (53, 1, NULL, 9, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (57, 1, NULL, 12, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (58, 1, NULL, 13, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (59, 1, NULL, 12, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (60, 1, NULL, 13, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (63, 1, NULL, 12, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (64, 1, NULL, 13, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (66, 1, NULL, 12, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (67, 1, NULL, 13, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (43, 2, NULL, 8, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (72, 1, NULL, 14, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (45, 2, NULL, 8, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (74, 1, NULL, 14, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (153, 1, NULL, 27, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (154, 1, NULL, 28, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (49, 2, NULL, 8, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (78, 1, NULL, 14, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (52, 2, NULL, 8, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (81, 1, NULL, 14, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (155, 1, NULL, 27, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (156, 1, NULL, 28, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (85, 1, NULL, 10, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (86, 1, NULL, 11, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (87, 1, NULL, 10, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (88, 1, NULL, 11, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (91, 1, NULL, 10, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (92, 1, NULL, 11, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (94, 1, NULL, 10, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (95, 1, NULL, 11, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (99, 4, 7, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (100, 4, 7, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (101, 4, 7, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (102, 4, 7, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (103, 1, NULL, 15, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (104, 1, NULL, 16, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (105, 1, NULL, 15, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (106, 1, NULL, 16, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (109, 1, NULL, 15, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (110, 1, NULL, 16, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (112, 1, NULL, 15, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (113, 1, NULL, 16, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (117, 1, 9, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (118, 1, 9, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (119, 1, 9, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (120, 1, 9, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (121, 1, NULL, 17, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (122, 1, NULL, 18, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (123, 1, NULL, 17, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (124, 1, NULL, 18, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (127, 1, NULL, 17, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (128, 1, NULL, 18, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (130, 1, NULL, 17, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (131, 1, NULL, 18, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (135, 1, 11, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (136, 1, 11, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (137, 1, 11, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (138, 1, 11, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (139, 1, NULL, 23, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (140, 1, NULL, 24, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (141, 1, NULL, 23, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (142, 1, NULL, 24, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (143, 1, 14, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (144, 1, 14, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (145, 1, NULL, 23, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (146, 1, NULL, 24, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (148, 1, NULL, 23, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (149, 1, NULL, 24, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (151, 1, 14, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (152, 1, 14, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (157, 1, 16, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (158, 1, 16, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (159, 1, NULL, 27, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (160, 1, NULL, 28, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (162, 1, NULL, 27, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (163, 1, NULL, 28, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (165, 1, 16, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (166, 1, 16, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (167, 1, NULL, 29, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (168, 1, NULL, 30, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (169, 1, NULL, 29, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (170, 1, NULL, 30, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (173, 1, NULL, 29, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (174, 1, NULL, 30, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (176, 1, NULL, 29, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (177, 1, NULL, 30, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (181, 1, 18, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (182, 1, 18, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (183, 1, 18, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (184, 1, 18, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (185, 1, NULL, 31, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (186, 1, NULL, 32, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (187, 1, NULL, 31, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (188, 1, NULL, 32, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (191, 1, NULL, 31, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (192, 1, NULL, 32, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (194, 1, NULL, 31, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (195, 1, NULL, 32, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (199, 1, 20, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (200, 1, 20, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (201, 1, 20, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (202, 1, 20, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (203, 1, NULL, 33, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (204, 1, NULL, 34, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (205, 1, NULL, 33, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (206, 1, NULL, 34, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (209, 1, NULL, 33, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (210, 1, NULL, 34, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (212, 1, NULL, 33, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (213, 1, NULL, 34, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (217, 1, 22, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (218, 1, 22, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (219, 1, 22, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (220, 1, 22, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (221, 1, NULL, 35, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (222, 1, NULL, 36, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (224, 1, NULL, 35, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (225, 1, NULL, 36, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (229, 1, 24, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (230, 1, 24, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (231, 1, NULL, 37, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (232, 1, NULL, 38, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (234, 1, NULL, 37, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (235, 1, NULL, 38, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (239, 1, 30, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (240, 1, 30, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (241, 1, NULL, 39, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (242, 1, NULL, 40, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (243, 1, NULL, 39, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (244, 1, NULL, 40, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (247, 1, NULL, 39, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (248, 1, NULL, 40, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (251, 1, NULL, 40, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (255, 1, NULL, 39, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (256, 1, NULL, 41, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (250, 2, NULL, 39, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (259, 1, NULL, 41, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (353, 1, NULL, 55, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (263, 1, 32, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (264, 1, 32, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (265, 1, 32, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (266, 2, 32, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (267, 1, 32, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (268, 1, NULL, 44, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (269, 1, NULL, 45, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (270, 1, NULL, 44, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (271, 1, NULL, 45, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (272, 1, 34, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (273, 1, 34, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (274, 1, NULL, 44, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (275, 1, NULL, 45, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (278, 1, NULL, 45, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (280, 1, 34, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (282, 1, NULL, 44, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (283, 1, NULL, 46, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (277, 2, NULL, 44, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (286, 1, NULL, 46, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (288, 1, 34, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (281, 2, 34, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (290, 1, NULL, 47, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (291, 1, NULL, 48, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (292, 1, NULL, 47, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (293, 1, NULL, 48, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (296, 1, NULL, 47, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (297, 1, NULL, 48, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (300, 1, NULL, 48, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (304, 1, NULL, 47, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (305, 1, NULL, 49, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (299, 2, NULL, 47, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (308, 1, NULL, 49, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (354, 1, NULL, 57, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (312, 1, 36, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (313, 1, 36, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (314, 2, 36, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (315, 1, 36, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (316, 1, 36, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (317, 1, NULL, 52, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (318, 1, NULL, 53, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (319, 1, NULL, 52, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (320, 1, NULL, 53, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (321, 1, 38, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (322, 1, 38, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (323, 1, NULL, 52, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (324, 1, NULL, 53, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (327, 1, NULL, 53, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (329, 1, 38, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (331, 1, NULL, 52, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (332, 1, NULL, 54, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (326, 2, NULL, 52, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (335, 1, NULL, 54, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (337, 1, 38, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (330, 2, 38, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (339, 1, NULL, 55, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (340, 1, NULL, 56, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (341, 1, NULL, 55, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (342, 1, NULL, 56, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (345, 1, NULL, 55, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (346, 1, NULL, 56, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (349, 1, NULL, 56, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (348, 2, NULL, 55, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (357, 1, NULL, 57, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (380, 1, NULL, 60, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (361, 2, 40, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (362, 1, 40, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (363, 1, 40, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (364, 1, 40, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (365, 1, 40, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (366, 1, NULL, 60, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (367, 1, NULL, 61, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (368, 1, NULL, 60, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (369, 1, NULL, 61, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (370, 1, 42, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (371, 1, 42, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (372, 1, NULL, 60, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (373, 1, NULL, 61, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (376, 1, NULL, 61, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (378, 1, 42, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (381, 1, NULL, 62, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (375, 2, NULL, 60, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (384, 1, NULL, 62, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (386, 1, 42, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (379, 2, 42, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (388, 1, NULL, 63, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (389, 1, NULL, 64, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (390, 1, NULL, 63, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (391, 1, NULL, 64, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (394, 1, NULL, 63, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (395, 1, NULL, 64, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (398, 1, NULL, 64, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (402, 1, NULL, 63, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (403, 1, NULL, 65, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (397, 2, NULL, 63, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (406, 1, NULL, 65, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (550, 1, NULL, 81, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (410, 2, 44, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (411, 1, 44, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (412, 1, 44, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (413, 1, 44, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (414, 1, 44, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (415, 1, NULL, 66, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (416, 1, NULL, 67, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (417, 1, NULL, 66, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (418, 1, NULL, 67, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (421, 1, NULL, 66, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (422, 1, NULL, 67, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (425, 1, NULL, 67, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (429, 1, NULL, 66, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (430, 1, NULL, 68, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (424, 2, NULL, 66, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (433, 1, NULL, 68, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (551, 1, NULL, 82, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (437, 1, 46, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (438, 1, 46, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (439, 1, 46, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (440, 2, 46, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (441, 1, 46, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (442, 1, NULL, 69, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (443, 1, NULL, 70, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (444, 1, NULL, 69, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (445, 1, NULL, 70, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (448, 1, NULL, 69, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (449, 1, NULL, 70, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (452, 1, NULL, 70, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (456, 1, NULL, 69, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (457, 1, NULL, 71, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (451, 2, NULL, 69, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (460, 1, NULL, 71, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (552, 1, NULL, 81, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (464, 1, 48, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (465, 1, 48, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (466, 1, 48, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (467, 2, 48, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (468, 1, 48, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (469, 1, NULL, 72, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (470, 1, NULL, 73, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (471, 1, NULL, 72, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (472, 1, NULL, 73, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (475, 1, NULL, 72, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (476, 1, NULL, 73, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (479, 1, NULL, 73, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (483, 1, NULL, 72, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (484, 1, NULL, 74, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (478, 2, NULL, 72, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (487, 1, NULL, 74, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (553, 1, NULL, 82, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (491, 1, 50, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (492, 1, 50, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (493, 1, 50, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (494, 1, 50, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (495, 2, 50, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (496, 1, NULL, 75, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (497, 1, NULL, 76, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (498, 1, NULL, 75, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (499, 1, NULL, 76, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (502, 1, NULL, 75, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (503, 1, NULL, 76, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (506, 1, NULL, 76, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (510, 1, NULL, 75, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (511, 1, NULL, 77, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (505, 2, NULL, 75, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (514, 1, NULL, 77, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (518, 1, 52, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (519, 1, 52, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (520, 2, 52, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (521, 1, 52, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (522, 1, 52, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (523, 1, NULL, 78, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (524, 1, NULL, 79, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (525, 1, NULL, 78, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (526, 1, NULL, 79, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (529, 1, NULL, 78, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (530, 1, NULL, 79, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (533, 1, NULL, 79, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (537, 1, NULL, 78, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (538, 1, NULL, 80, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (532, 2, NULL, 78, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (541, 1, NULL, 80, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (591, 1, NULL, 84, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (545, 1, 54, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (546, 2, 54, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (547, 1, 54, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (548, 1, 54, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (549, 1, 54, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (556, 1, NULL, 81, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (557, 1, NULL, 82, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (560, 1, NULL, 82, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (564, 1, NULL, 81, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (565, 1, NULL, 83, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (559, 2, NULL, 81, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (568, 1, NULL, 83, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (592, 1, NULL, 86, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (572, 2, 56, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (573, 1, 56, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (574, 1, 56, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (575, 1, 56, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (576, 1, 56, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (577, 1, NULL, 84, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (578, 1, NULL, 85, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (579, 1, NULL, 84, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (580, 1, NULL, 85, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (583, 1, NULL, 84, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (584, 1, NULL, 85, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (587, 1, NULL, 85, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (586, 2, NULL, 84, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (595, 1, NULL, 86, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (604, 1, NULL, 87, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (599, 1, 58, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (600, 1, 58, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (601, 2, 58, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (602, 1, 58, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (603, 1, 58, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (605, 1, NULL, 88, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (606, 1, NULL, 87, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (607, 1, NULL, 88, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (610, 1, NULL, 87, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (611, 1, NULL, 88, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (614, 1, NULL, 88, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (618, 1, NULL, 87, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (619, 1, NULL, 89, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (613, 2, NULL, 87, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (622, 1, NULL, 89, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (626, 2, 60, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (627, 1, 60, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (628, 1, 60, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (629, 1, 60, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (630, 1, 60, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (631, 1, NULL, 90, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (632, 1, NULL, 91, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (633, 1, NULL, 90, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (634, 1, NULL, 91, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (637, 1, NULL, 90, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (638, 1, NULL, 91, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (641, 1, NULL, 91, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (645, 1, NULL, 90, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (646, 1, NULL, 92, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (640, 2, NULL, 90, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (649, 1, NULL, 92, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (766, 1, NULL, 105, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (653, 1, 62, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (654, 1, 62, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (655, 1, 62, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (656, 2, 62, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (657, 1, 62, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (658, 1, NULL, 93, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (659, 1, NULL, 94, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (660, 1, NULL, 93, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (661, 1, NULL, 94, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (664, 1, NULL, 93, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (665, 1, NULL, 94, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (668, 1, NULL, 94, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (672, 1, NULL, 93, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (673, 1, NULL, 95, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (667, 2, NULL, 93, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (676, 1, NULL, 95, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (767, 1, NULL, 106, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (680, 1, 64, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (681, 1, 64, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (682, 1, 64, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (683, 2, 64, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (684, 1, 64, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (685, 1, NULL, 96, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (686, 1, NULL, 97, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (687, 1, NULL, 96, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (688, 1, NULL, 97, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (691, 1, NULL, 96, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (692, 1, NULL, 97, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (695, 1, NULL, 97, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (699, 1, NULL, 96, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (700, 1, NULL, 98, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (694, 2, NULL, 96, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (703, 1, NULL, 98, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (768, 1, NULL, 105, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (707, 1, 66, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (708, 1, 66, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (709, 1, 66, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (710, 1, 66, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (711, 2, 66, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (712, 1, NULL, 99, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (713, 1, NULL, 100, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (714, 1, NULL, 99, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (715, 1, NULL, 100, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (718, 1, NULL, 99, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (719, 1, NULL, 100, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (722, 1, NULL, 100, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (726, 1, NULL, 99, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (727, 1, NULL, 101, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (721, 2, NULL, 99, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (730, 1, NULL, 101, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (769, 1, NULL, 106, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (734, 1, 68, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (735, 1, 68, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (736, 2, 68, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (737, 1, 68, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (738, 1, 68, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (739, 1, NULL, 102, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (740, 1, NULL, 103, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (741, 1, NULL, 102, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (742, 1, NULL, 103, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (745, 1, NULL, 102, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (746, 1, NULL, 103, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (749, 1, NULL, 103, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (753, 1, NULL, 102, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (754, 1, NULL, 104, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (748, 2, NULL, 102, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (757, 1, NULL, 104, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (793, 2, NULL, 108, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (761, 1, 70, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (762, 2, 70, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (763, 1, 70, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (764, 1, 70, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (765, 1, 70, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (772, 1, NULL, 105, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (773, 1, NULL, 106, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (776, 1, NULL, 106, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (780, 1, NULL, 105, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (781, 1, NULL, 107, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (775, 2, NULL, 105, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (784, 1, NULL, 107, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (802, 1, NULL, 110, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (788, 2, 72, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (789, 1, 72, NULL, 11) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (790, 1, 72, NULL, 12) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (791, 1, 72, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (792, 1, 72, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (794, 1, NULL, 109, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (797, 1, NULL, 109, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (796, 2, NULL, 108, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (805, 1, NULL, 110, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (811, 2, NULL, 111, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (820, 1, NULL, 113, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (809, 2, 74, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (810, 2, 74, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (812, 1, NULL, 112, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (815, 1, NULL, 112, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (814, 2, NULL, 111, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (823, 1, NULL, 113, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (837, 1, NULL, 114, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (838, 1, NULL, 115, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (827, 2, 76, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (828, 2, 76, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (829, 1, NULL, 1, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (830, 1, NULL, 6, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (832, 1, NULL, 1, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (833, 1, NULL, 6, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (835, 1, 2, NULL, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (836, 1, 2, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (840, 1, NULL, 114, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (841, 1, NULL, 115, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (846, 1, NULL, 117, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (849, 1, NULL, 117, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (845, 2, NULL, 116, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (854, 1, NULL, 120, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (848, 2, NULL, 116, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (857, 1, NULL, 120, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (861, 1, NULL, 118, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (862, 1, NULL, 119, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (864, 1, NULL, 118, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (865, 1, NULL, 119, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (869, 4, 80, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (870, 4, 80, NULL, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (872, 1, NULL, 124, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (875, 1, NULL, 124, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (871, 2, NULL, 122, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (880, 1, NULL, 127, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (874, 2, NULL, 122, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (883, 1, NULL, 127, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (887, 1, NULL, 121, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (888, 1, NULL, 123, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (890, 1, NULL, 121, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (891, 1, NULL, 123, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (895, 1, NULL, 125, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (896, 1, NULL, 126, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (898, 1, NULL, 125, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (899, 1, NULL, 126, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (903, 4, 84, NULL, 2) ON CONFLICT DO NOTHING;
INSERT INTO public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) VALUES (904, 4, 84, NULL, 1) ON CONFLICT DO NOTHING;


--
-- TOC entry 4052 (class 0 OID 17628)
-- Dependencies: 273
-- Data for Name: statistics_field; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.statistics_field (sf_id, name) VALUES (1, 'statistics$executions$total') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (2, 'statistics$executions$passed') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (3, 'statistics$executions$skipped') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (4, 'statistics$executions$failed') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (5, 'statistics$defects$automation_bug$total') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (6, 'statistics$defects$automation_bug$ab001') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (7, 'statistics$defects$product_bug$total') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (8, 'statistics$defects$product_bug$pb001') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (9, 'statistics$defects$system_issue$total') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (10, 'statistics$defects$system_issue$si001') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (11, 'statistics$defects$to_investigate$total') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (12, 'statistics$defects$to_investigate$ti001') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (13, 'statistics$defects$no_defect$total') ON CONFLICT DO NOTHING;
INSERT INTO public.statistics_field (sf_id, name) VALUES (14, 'statistics$defects$no_defect$nd001') ON CONFLICT DO NOTHING;


--
-- TOC entry 4033 (class 0 OID 17388)
-- Dependencies: 254
-- Data for Name: test_item; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (122, '81f85398-3839-4f67-a5b5-02336262e735', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:31:32.783', '
@launch ''Test launch #82''', '2024-03-27 22:31:41.543395', '122', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 84, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (2, '997e3e97-7592-44b1-be8e-6f5222839795', 'Login to ecommerce application', 'test/specs/testLoginNegative.js/Login to ecommerce application', 'SUITE', '2024-03-26 10:33:07.809', NULL, '2024-03-26 10:33:08.297885', '2', 'auto:88660216c40ad07acd198e7a7d468c30', 'test/specs/testLoginNegative.js/Login to ecommerce application', true, false, true, NULL, NULL, 1, 1598950450) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (1, '5e96f2c0-8f5a-4cfa-b8c7-416bba61a234', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-26 10:33:08.012', NULL, '2024-03-26 10:33:08.297917', '1', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 2, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (3, 'c56bacc6-9ca7-4043-a420-db661e400f71', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-26 10:33:07.882', NULL, '2024-03-26 10:33:08.297964', '3', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 3, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (6, '98366836-25a8-410b-9692-22aa6c4156d4', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-26 10:33:08.013', NULL, '2024-03-26 10:33:08.298097', '1.6', 'auto:8f28e93953fb3239b8fcc16508151572', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_59.windows]', false, false, true, 1, NULL, 2, -1882558141) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (4, '0ce287f6-aef6-4a9f-ad54-c273d77f6dae', 'should not login with invalid credentials', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials', 'STEP', '2024-03-26 10:33:07.81', '```error
Error: waitUntil condition failed with the following reason: myAccountPage.loginError.isDisplayed is not a function
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testLoginNegative.js:25:9)
```', '2024-03-26 10:33:16.088716', '2.4', 'auto:f2390c92eddd784e18fc39da8d037adb', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials[chrome.123_0_6312_59.windows]', false, false, true, 2, NULL, 1, -2063662363) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (5, '02f93de6-bed0-40b8-a2f1-d51358eab6c4', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-26 10:33:07.882', '```error
Error: waitUntil condition failed with the following reason: myAccountPage.logoutButton.isDisplayed is not a function
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:26:9)
```', '2024-03-26 10:33:17.643973', '3.5', 'auto:fb6b6b34a7ff230a531665222b6c06d4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_59.windows]', false, false, true, 3, NULL, 3, -1830276795) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (7, '34888f4d-5336-4aa4-bce1-8b611b48a5a6', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-26 10:33:17.554', '```error
Error: expected login button to be visible after 5s
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:43:9)
```', '2024-03-26 10:33:23.131581', '3.7', 'auto:6ae961867ebfa111aec1e90ec2dcc73b', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_59.windows]', false, false, true, 3, NULL, 3, -1484808514) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (22, 'e0394b04-164e-418a-a66c-7d3a40ddccce', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:31:32.516', NULL, '2024-03-27 21:31:32.65344', '21.22', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 21, NULL, 13, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (23, '571a154b-e504-4c44-a2c2-b4934dafd8b6', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:33:59.674', NULL, '2024-03-27 21:33:59.80085', '23', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 14, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (8, '091f6898-f90a-4d0e-9199-96dcc350ffeb', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-26 12:58:16.46', '
@launch ''Test launch #4''', '2024-03-26 12:58:33.426715', '8', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 7, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (9, 'bd769a4c-f3b7-454e-ad83-ad18ff997ca4', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-26 12:58:16.461', '```error
Error: waitUntil condition failed with the following reason: myAccountPage.logoutButton.isDisplayed is not a function
    at processTimers (node:internal/timers:499:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:26:9)
```', '2024-03-26 12:58:33.426891', '8.9', 'auto:fb6b6b34a7ff230a531665222b6c06d4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_59.windows]', false, false, true, 8, NULL, 7, -1830276795) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (24, '9ffb064c-9f2f-4826-9731-a0c0e8fe901a', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:33:59.675', '```error
Error: ER_NOT_SUPPORTED_AUTH_MODE: Client does not support authentication protocol requested by server; consider upgrading MySQL client
    at Handshake.Sequence._packetToError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\sequences\Sequence.js:47:14)
    at Handshake.ErrorPacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\sequences\Handshake.js:123:18)
    at Protocol._parsePacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:291:23)
    at Parser._parsePacket (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Parser.js:433:10)
    at Parser.write (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Parser.js:43:10)
    at Protocol.write (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:38:16)
    at Socket.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:88:28)
    at Socket.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:526:10)
    at Socket.emit (node:events:513:28)
    at Socket.emit (node:domain:489:12)
    at addChunk (node:internal/streams/readable:315:12)
    at readableAddChunk (node:internal/streams/readable:289:9)
    at Socket.Readable.push (node:internal/streams/readable:228:10)
    at TCP.onStreamRead (node:internal/stream_base_commons:190:23)
    --------------------
    at Protocol._enqueue (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:144:48)
    at Protocol.handshake (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\protocol\Protocol.js:51:23)
    at Connection.connect (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mysql\lib\Connection.js:116:18)
    at DatabaseQuery.connect (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\utils\database.query.js:15:25)
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\sp', '2024-03-27 21:34:07.523355', '23.24', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 23, NULL, 14, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (14, '7ea25e3e-58ce-45f7-97e9-8bdaf97eb877', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-26 12:58:23.496', '```error
Error: expected login button to be visible after 5s
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:43:9)
```', '2024-03-26 12:58:33.426976', '8.14', 'auto:6ae961867ebfa111aec1e90ec2dcc73b', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_59.windows]', false, false, true, 8, NULL, 7, -1484808514) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (10, '98d62b29-aae1-4026-8086-fc8971a77a99', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-26 12:58:16.684', '
@launch ''Test launch #5''', '2024-03-26 12:58:33.437798', '10', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 7, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (11, 'db7a9db1-33a5-473f-aafc-a654c2468ab1', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-26 12:58:16.685', '```error
Error: expected order received message to be displayed after 10s
    at async CheckoutPage.waitForOrderReceivedMessage (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\pageobjects\checkout.page.js:102:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:62:9)
```', '2024-03-26 12:58:33.437991', '10.11', 'auto:8f28e93953fb3239b8fcc16508151572', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_59.windows]', false, false, true, 10, NULL, 7, -1882558141) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (12, 'af286668-c85a-4000-855c-cd997bca5468', 'Login to ecommerce application', 'test/specs/testLoginNegative.js/Login to ecommerce application', 'SUITE', '2024-03-26 12:58:16.764', '
@launch ''Test launch #6''', '2024-03-26 12:58:33.468195', '12', 'auto:88660216c40ad07acd198e7a7d468c30', 'test/specs/testLoginNegative.js/Login to ecommerce application', true, false, true, NULL, NULL, 7, 1598950450) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (13, '66cc4ec9-6e6d-4526-bf4c-aa0e0b5caab7', 'should not login with invalid credentials', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials', 'STEP', '2024-03-26 12:58:16.764', '```error
Error: waitUntil condition failed with the following reason: myAccountPage.loginError.isDisplayed is not a function
    at processTimers (node:internal/timers:499:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testLoginNegative.js:25:9)
```', '2024-03-26 12:58:33.468264', '12.13', 'auto:f2390c92eddd784e18fc39da8d037adb', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials[chrome.123_0_6312_59.windows]', false, false, true, 12, NULL, 7, -2063662363) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (90, '859992d3-f91c-44dd-a060-896cd1ae4328', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:22:23.415', '
@launch ''Test launch #61''', '2024-03-27 22:22:25.318663', '90', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 62, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (37, '66376d16-d10f-4b52-95bf-6b8a1437ee53', 'Login to ecommerce application', 'test/specs/testLoginNegative.js/Login to ecommerce application', 'SUITE', '2024-03-27 21:56:46.152', '
@launch ''Test launch #29''', '2024-03-27 21:56:47.201003', '37', 'auto:88660216c40ad07acd198e7a7d468c30', 'test/specs/testLoginNegative.js/Login to ecommerce application', true, false, true, NULL, NULL, 30, 1598950450) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (66, '79e192ca-c338-4754-a305-15fccfed4957', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:12:15.7', '
@launch ''Test launch #45''', '2024-03-27 22:12:17.642444', '66', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 46, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (18, 'caa620f6-7bbb-4e77-8270-3f72bb2848e4', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-26 13:00:52.966', '```error
Error: expected order received message to be displayed after 10s
    at async CheckoutPage.waitForOrderReceivedMessage (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\pageobjects\checkout.page.js:102:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:62:9)
```', '2024-03-26 13:01:06.225153', '17.18', 'auto:8f28e93953fb3239b8fcc16508151572', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_59.windows]', false, false, true, 17, NULL, 11, -1882558141) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (15, '8c52c80d-f80a-4e64-a342-615c8e63dea5', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-26 12:59:14.804', '
@launch ''Test launch #8''', '2024-03-26 12:59:29.441466', '15', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 9, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (16, '709e3ffe-0f1d-4bc7-96b3-eeb01308bdc9', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-26 12:59:14.805', '```error
Error: expected order received message to be displayed after 10s
    at async CheckoutPage.waitForOrderReceivedMessage (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\pageobjects\checkout.page.js:102:9)
    at async Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:62:9)
```', '2024-03-26 12:59:29.441564', '15.16', 'auto:8f28e93953fb3239b8fcc16508151572', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_59.windows]', false, false, true, 15, NULL, 9, -1882558141) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (17, '2eb567e3-fe98-4d57-84c1-4758fd330305', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-26 13:00:52.965', '
@launch ''Test launch #10''', '2024-03-26 13:01:06.225217', '17', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 11, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (19, '6d214999-2843-4fb1-9ea0-539ed973c0dc', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:30:59.769', NULL, '2024-03-27 21:31:00.16056', '19', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 12, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (20, 'dc172530-775a-4c49-b18b-9f3d4590ab6d', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:30:59.769', NULL, '2024-03-27 21:31:00.160765', '19.20', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 19, NULL, 12, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (21, '231dd13f-511b-47d4-b68f-80a16f0875d1', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:31:32.515', NULL, '2024-03-27 21:31:32.653292', '21', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 13, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (25, 'e1e8a98a-1377-40b1-ba63-aa5b718d616e', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:37:06.861', NULL, '2024-03-27 21:37:07.009496', '25', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 15, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (26, '75319657-b9f1-4c7a-b918-4a4497cbd718', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:37:06.861', NULL, '2024-03-27 21:37:07.00966', '25.26', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 25, NULL, 15, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (38, '1c29aa73-a1fc-4cb4-b8f7-0608c5b27efe', 'should not login with invalid credentials', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials', 'STEP', '2024-03-27 21:56:46.153', NULL, '2024-03-27 21:56:47.201044', '37.38', 'auto:8ed8c984df7bcba6cb69730ba31f5d58', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials[chrome.123_0_6312_86.windows]', false, false, true, 37, NULL, 30, 1724958667) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (27, '0474635d-8300-48af-b91f-8593f0cdeab5', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:41:20.293', NULL, '2024-03-27 21:41:20.429922', '27', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 16, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (28, 'c85973d2-e230-4197-af44-6fd14f13d901', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:41:20.294', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) // deep equality[22m

Expected: [32m"Golden_Rohan21@yahoo.com"[39m
Received: [31mundefined[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:72:30)
    at runMicrotasks (<anonymous>)
```', '2024-03-27 21:41:26.246351', '27.28', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 27, NULL, 16, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (68, 'bc29c323-4268-4286-88aa-53ab187b6f92', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:12:17.027', NULL, '2024-03-27 22:12:17.642518', '66.68', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 66, NULL, 46, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (84, 'fdf14121-559e-4149-b826-d57c490fb2cc', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:21:22.281', '
@launch ''Test launch #57''', '2024-03-27 22:21:24.192787', '84', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 58, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (29, '48c2e1b6-ad01-4d6b-bf03-aa071ef96a11', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:43:35.387', '
@launch ''Test launch #17''', '2024-03-27 21:47:23.308912', '29', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 18, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (30, 'ad5c7bf1-3063-4caa-bb36-3ef2a87ab5ba', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:43:35.387', '```error
Error: Timeout of 60000ms exceeded. The execution in the test "e2e checkout as guest user should add product to cart and checkout as guest user" took too long. Try to reduce the run time or increase your timeout for test specs (https://webdriver.io/docs/timeouts). (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js)
    at createTimeoutError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\errors.js:498:15)
    at Test.Runnable._timeoutError (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\runnable.js:431:10)
    at Timeout.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\node_modules\mocha\lib\runnable.js:246:24)
    at listOnTimeout (node:internal/timers:559:17)
    at processTimers (node:internal/timers:502:7)
```', '2024-03-27 21:47:23.308975', '29.30', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 29, NULL, 18, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (31, '4bcca7ba-8028-4237-8d47-32772893ad14', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:48:11.262', '
@launch ''Test launch #19''', '2024-03-27 21:48:18.700364', '31', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 20, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (32, '054c0127-6ccc-48d4-90b6-43a283680f85', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:48:11.263', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) // deep equality[22m

Expected: [32m"Hobart.Ratke@gmail.com"[39m
Received: [31mundefined[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:74:30)
    at runMicrotasks (<anonymous>)
```', '2024-03-27 21:48:18.700403', '31.32', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 31, NULL, 20, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (33, 'bdc7027a-ede9-41d7-8ae5-f9f1345470d2', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:49:35.289', '
@launch ''Test launch #21''', '2024-03-27 21:49:42.776995', '33', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 22, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (34, '9e48c813-47ff-4cbc-b0ec-a2cf990013cb', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:49:35.289', '```error
ReferenceError: result is not defined
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\teste2eCheckoutGuestUser.js:69:21)
    at runMicrotasks (<anonymous>)
```', '2024-03-27 21:49:42.777034', '33.34', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 33, NULL, 22, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (35, '0ee85a66-75fd-4888-a7b0-15d693f006ee', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 21:50:03.465', '
@launch ''Test launch #23''', '2024-03-27 21:50:11.275406', '35', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 24, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (36, 'd0ebb474-fdb8-4f72-93c1-0ae52dd36553', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 21:50:03.466', NULL, '2024-03-27 21:50:11.275446', '35.36', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 35, NULL, 24, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (121, '9be4c7b3-bb53-4551-8fc4-d3f230242e8a', 'Login to ecommerce application', 'test/specs/testLoginNegative.js/Login to ecommerce application', 'SUITE', '2024-03-27 22:31:32.764', '
@launch ''Test launch #81''', '2024-03-27 22:31:41.540218', '121', 'auto:88660216c40ad07acd198e7a7d468c30', 'test/specs/testLoginNegative.js/Login to ecommerce application', true, false, true, NULL, NULL, 84, 1598950450) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (71, 'c71d69a9-4d82-4900-807a-d5f619f300da', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:13:37.877', NULL, '2024-03-27 22:13:38.507838', '69.71', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 69, NULL, 48, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (39, 'f06dc0a5-f966-4c5d-9ec1-567337a56535', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 21:58:34.59', '
@launch ''Test launch #31''', '2024-03-27 21:58:36.517035', '39', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 32, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (41, 'b650bcad-73bd-45d3-83d4-54de5549aea6', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 21:58:35.898', NULL, '2024-03-27 21:58:36.517077', '39.41', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 39, NULL, 32, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (40, 'dbbda715-28e0-4edb-a366-0eacf0596f3f', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 21:58:34.59', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Kaitlyn_Stiedemann"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 21:58:36.517103', '39.40', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 39, NULL, 32, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (42, '0a178791-02ca-422d-b111-647f3b0307dd', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 21:59:06.556', NULL, '2024-03-27 21:59:06.685783', '42', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 33, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (43, '908215cb-4586-44d9-ae1a-e0cb661299c1', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 21:59:06.557', NULL, '2024-03-27 21:59:06.685891', '42.43', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 42, NULL, 33, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (44, 'fd9d5325-8ec0-4e09-9487-153051d8e624', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:03:57.541', NULL, '2024-03-27 22:03:57.66544', '44', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 34, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (46, 'a02b0811-f19d-42fd-8d70-2de614b48630', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:03:58.857', NULL, '2024-03-27 22:03:58.903461', '44.46', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 44, NULL, 34, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (45, '4d4df038-70ef-4e80-a6af-f5646b0c2539', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:03:57.542', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Micaela.Cruickshank"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 22:03:58.937519', '44.45', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 44, NULL, 34, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (47, 'd9f2639d-bf39-4c7f-ac99-06b1c5005b01', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:06:47.932', '
@launch ''Test launch #35''', '2024-03-27 22:06:49.814041', '47', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 36, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (49, 'b6bdbc6e-166f-4ee4-89b1-9f6162b5a1a4', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:06:49.216', NULL, '2024-03-27 22:06:49.814101', '47.49', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 47, NULL, 36, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (48, '3dbad3d7-e17e-4de7-8727-b9cea5ed9ae9', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:06:47.933', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Clarabelle.Koelpin"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 22:06:49.814127', '47.48', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 47, NULL, 36, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (50, 'af0974d0-c536-42bb-968c-b9796e712981', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:07:19.299', NULL, '2024-03-27 22:07:19.422143', '50', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 37, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (51, '153a7476-c01d-4415-99c0-8f8163a8cd90', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:07:19.3', NULL, '2024-03-27 22:07:19.422299', '50.51', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 50, NULL, 37, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (52, 'ac26c934-3f00-4182-b819-302d746b4ad9', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:07:47.76', NULL, '2024-03-27 22:07:47.880764', '52', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 38, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (67, '6dd2e1e5-ad8d-4412-a86e-eb4033db6197', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:12:15.701', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Hailie30"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 22:12:17.642563', '66.67', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 66, NULL, 46, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (54, '4c1c2e7a-9062-40ff-9f76-6bdc33ae3b7c', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:07:49.143', NULL, '2024-03-27 22:07:49.192148', '52.54', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 52, NULL, 38, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (53, '6952c0b0-e381-43ba-8aae-9f023c478bdd', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:07:47.76', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Mac.Reinger"[39m
Received object: [31m{Symbol(async_id_symbol): 65695, Symbol(trigger_async_id_symbol): 65415}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 22:07:49.222894', '52.53', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 52, NULL, 38, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (92, '696ec05e-d008-4991-b3bc-d44f97ea88ab', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:22:24.684', NULL, '2024-03-27 22:22:25.318726', '90.92', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 90, NULL, 62, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (55, '0c834e80-d80c-44df-be7b-a30ecbeb9981', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:08:58.231', '
@launch ''Test launch #39''', '2024-03-27 22:09:00.143841', '55', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 40, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (57, '838e2fc7-e0f4-4385-a2e3-463c2ed9c104', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:08:59.542', NULL, '2024-03-27 22:09:00.143875', '55.57', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 55, NULL, 40, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (56, 'eb654789-4839-4352-829a-491b8e4aad0b', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:08:58.232', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Anissa_Hartmann56"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:30:48)
```', '2024-03-27 22:09:00.143897', '55.56', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 55, NULL, 40, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (58, '7f679b84-887b-4074-bd86-c9bee4128094', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:09:35.912', NULL, '2024-03-27 22:09:36.03046', '58', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 41, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (59, '374bee66-321b-4932-8ce5-22fac767722d', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:09:35.913', NULL, '2024-03-27 22:09:36.030528', '58.59', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 58, NULL, 41, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (60, '19a2e2de-2176-4ce5-a65d-9e8539f3d5c1', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:11:05.961', NULL, '2024-03-27 22:11:06.074095', '60', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 42, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (62, '6432fe87-fab3-4589-88c1-72a704f467a3', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:11:07.419', NULL, '2024-03-27 22:11:07.461701', '60.62', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 60, NULL, 42, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (61, '35b468a6-d3e4-4645-aa8a-92675fb88687', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:11:05.962', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Herminio.Terry"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 22:11:07.494065', '60.61', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 60, NULL, 42, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (63, '8b7a72c7-b52e-43c3-8c57-3ef3e34914a9', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:11:48.196', '
@launch ''Test launch #43''', '2024-03-27 22:11:50.198986', '63', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 44, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (65, '6c06d1a3-c37e-4af8-8e0b-ddb234ac6dc6', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:11:49.559', NULL, '2024-03-27 22:11:50.199091', '63.65', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 63, NULL, 44, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (64, 'ff3b8008-0c79-46d3-83ab-74e9217d8666', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:11:48.196', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Rickie26"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 22:11:50.199141', '63.64', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 63, NULL, 44, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (72, '60329da8-6495-43b9-adc3-54ad80a69710', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:14:44.118', '
@launch ''Test launch #49''', '2024-03-27 22:14:46.111099', '72', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 50, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (69, 'b3d4f52f-0765-4935-b5cc-02f97e51e445', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:13:36.575', '
@launch ''Test launch #47''', '2024-03-27 22:13:38.507882', '69', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 48, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (70, '61d873a5-7aab-4e55-8b6f-dc701132e4f2', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:13:36.575', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Dolores_Kuhic"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 22:13:38.5079', '69.70', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 69, NULL, 48, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (124, 'ac86a2a2-c2dd-447a-9aa7-faea65aaf098', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:31:32.783', NULL, '2024-03-27 22:31:41.543436', '122.124', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 122, NULL, 84, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (73, '3645855f-9a5f-43db-860f-ab5ded435015', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:14:44.118', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Gabriel56"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:48)
```', '2024-03-27 22:14:46.111135', '72.73', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 72, NULL, 50, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (74, 'f7c99e8c-f17c-4f72-9335-abc19eeaa787', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:14:45.501', NULL, '2024-03-27 22:14:46.11115', '72.74', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 72, NULL, 50, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (75, 'a7a3cdef-df87-4efe-975d-20f1eb0ad7ba', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:17:43.107', '
@launch ''Test launch #51''', '2024-03-27 22:17:45.059025', '75', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 52, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (76, 'eaa6da46-c553-4373-8c38-559f6f055857', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:17:43.107', '```error
TypeError: myAccountPage.getContentText(...).toContain is not a function
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:46)
```', '2024-03-27 22:17:45.059063', '75.76', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 75, NULL, 52, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (77, 'cbea54c5-3f2d-4464-b811-498a9fa07e4a', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:17:44.475', NULL, '2024-03-27 22:17:45.059079', '75.77', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 75, NULL, 52, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (79, 'e2a87a16-f4ac-4609-84c4-2d7dd2a222bb', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:18:18.311', '```error
TypeError: myAccountPage.getContentText(...).toContain is not a function
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:54)
```', '2024-03-27 22:18:20.214814', '78.79', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 78, NULL, 54, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (78, 'cbd66d7f-d0a1-4203-aae2-1559662cc788', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:18:18.31', '
@launch ''Test launch #53''', '2024-03-27 22:18:20.214927', '78', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 54, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (80, 'bc6c15cf-b783-4cd9-a707-6f347f376ba0', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:18:19.628', NULL, '2024-03-27 22:18:20.214975', '78.80', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 78, NULL, 54, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (81, 'f980c5d4-b640-4cb4-8abb-b2d1bf15ddbf', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:18:41.022', '
@launch ''Test launch #55''', '2024-03-27 22:18:42.963751', '81', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 56, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (91, 'a68e0ece-4711-4fcd-9f5c-3c33423743c0', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:22:23.416', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Yasmeen64"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)
```', '2024-03-27 22:22:25.318745', '90.91', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 90, NULL, 62, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (83, 'cf78fd58-9aec-4d07-8d90-3228215bd4d1', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:18:42.385', NULL, '2024-03-27 22:18:42.963829', '81.83', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 81, NULL, 56, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (82, '91af1912-2cea-4e04-aa06-36f11b847a19', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:18:41.022', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Tracy.Stroman74"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)
```', '2024-03-27 22:18:42.963871', '81.82', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 81, NULL, 56, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (93, '59ec9822-b409-493c-b3c7-172667b750cf', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:23:09.622', '
@launch ''Test launch #63''', '2024-03-27 22:23:11.674701', '93', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 64, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (94, 'c7074e44-2da7-47b8-b920-454fe249c664', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:23:09.622', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Bethel24"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)
```', '2024-03-27 22:23:11.674772', '93.94', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 93, NULL, 64, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (95, 'cc2d9bad-c33b-4ee1-9160-05bff51e5b35', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:23:11.073', NULL, '2024-03-27 22:23:11.674808', '93.95', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 93, NULL, 64, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (101, '2de17f17-770b-4b4f-af3c-1f76f606bc2e', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:25:50.682', NULL, '2024-03-27 22:25:51.273209', '99.101', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 99, NULL, 68, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (99, '08f16879-2f57-4901-9f91-6977d6c237bb', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:25:49.293', '
@launch ''Test launch #67''', '2024-03-27 22:25:51.273244', '99', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 68, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (100, 'f6ddc5f3-6674-4426-8083-6720d6614819', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:25:49.294', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Micah_Armstrong99"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)
```', '2024-03-27 22:25:51.273255', '99.100', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 99, NULL, 68, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (102, '97c5ee6c-ac56-4f25-9756-37c353a8b53c', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:26:22.063', '
@launch ''Test launch #69''', '2024-03-27 22:26:24.039404', '102', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 70, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (103, '499605e6-05da-42ca-aad0-40d3bee02fea', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:26:22.063', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Chet.Powlowski"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)
```', '2024-03-27 22:26:24.039449', '102.103', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 102, NULL, 70, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (104, '055ded90-c873-4715-9490-ec12878b0b2c', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:26:23.438', NULL, '2024-03-27 22:26:24.039461', '102.104', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 102, NULL, 70, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (125, '17a8a8e1-eeba-44ed-bb89-9dfe5a82425e', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 22:31:33.04', '
@launch ''Test launch #83''', '2024-03-27 22:31:41.551374', '125', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 84, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (87, 'c9ada384-430e-4df2-9000-86ef797cede1', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:21:42.058', '
@launch ''Test launch #59''', '2024-03-27 22:21:44.68805', '87', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 60, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (85, 'd2f2966a-65aa-4c15-8589-a5204b7d410d', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:21:22.282', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Crystal56"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)
```', '2024-03-27 22:21:24.192826', '84.85', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 84, NULL, 58, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (86, '551a149e-878c-4fe9-b559-125b398003a2', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:21:23.607', NULL, '2024-03-27 22:21:24.192841', '84.86', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 84, NULL, 58, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (96, '2d6bf96d-36a9-440e-be6c-e6f14d65e685', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:23:40.237', '
@launch ''Test launch #65''', '2024-03-27 22:23:42.277722', '96', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 66, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (97, 'd585d6eb-095d-4257-aacd-17e8c7370c81', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:23:40.237', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Providenci16"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)
```', '2024-03-27 22:23:42.27783', '96.97', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 96, NULL, 66, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (98, 'e456e671-dc36-490c-92c4-996ac89393c2', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:23:41.692', NULL, '2024-03-27 22:23:42.277884', '96.98', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 96, NULL, 66, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (88, '35283815-0c2b-489b-89e5-ab9160aca043', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:21:42.058', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Oswaldo_Gislason"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:29:55)
```', '2024-03-27 22:21:44.688087', '87.88', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 87, NULL, 60, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (89, '950c28ff-226f-46ea-b394-6d3c781acbfe', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:21:44.096', NULL, '2024-03-27 22:21:44.688098', '87.89', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 87, NULL, 60, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (105, '398f5016-ac6b-4618-bece-49d94f36904a', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:28:20.299', '
@launch ''Test launch #71''', '2024-03-27 22:28:22.284507', '105', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 72, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (106, '824db5bb-b365-46d0-8b2d-5981c07ffa17', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:28:20.299', '```error
Error: [2mexpect([22m[31mreceived[39m[2m).[22mtoContain[2m([22m[32mexpected[39m[2m) // indexOf[22m

Expected value:  [32m"Hello Jose_Franecki82"[39m
Received object: [31m{}[39m
    at Context.<anonymous> (C:\Users\roby2\OneDrive\Desktop\webdriverIO\test\specs\testRegisterUser.js:31:55)
```', '2024-03-27 22:28:22.284537', '105.106', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 105, NULL, 72, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (107, '2b08ba28-e0d2-4fcb-bb88-ebce84cb9097', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:28:21.71', NULL, '2024-03-27 22:28:22.284545', '105.107', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 105, NULL, 72, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (108, '14224f26-431f-409a-b232-957eb09ccdf5', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:28:36.769', '
@launch ''Test launch #73''', '2024-03-27 22:28:38.484969', '108', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 74, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (109, '7e5a92d8-67a3-4495-bf2d-a37b87dc6c42', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:28:36.769', NULL, '2024-03-27 22:28:38.484993', '108.109', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 108, NULL, 74, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (110, '72b8b9de-6420-4be1-8db2-2d467e669c4d', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:28:37.922', NULL, '2024-03-27 22:28:38.485002', '108.110', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 108, NULL, 74, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (123, '8656b76b-15a0-4b42-a396-783a8213a3b9', 'should not login with invalid credentials', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials', 'STEP', '2024-03-27 22:31:32.764', NULL, '2024-03-27 22:31:41.540266', '121.123', 'auto:8ed8c984df7bcba6cb69730ba31f5d58', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials[chrome.123_0_6312_86.windows]', false, false, true, 121, NULL, 84, 1724958667) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (127, 'a47ad92d-8134-49fc-980c-8311798547c9', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:31:33.988', NULL, '2024-03-27 22:31:41.543445', '122.127', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 122, NULL, 84, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (126, 'c2048042-db30-4aaa-9a73-44e8e183d53a', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 22:31:33.041', NULL, '2024-03-27 22:31:41.5514', '125.126', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 125, NULL, 84, 1906062889) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (111, 'a928bd37-7373-42db-8dd4-f0774a4ebc77', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:28:54.647', '
@launch ''Test launch #75''', '2024-03-27 22:28:56.456333', '111', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 76, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (112, 'c2250eca-f902-4eb0-bec1-bd1677d2ccc8', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:28:54.648', NULL, '2024-03-27 22:28:56.456376', '111.112', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 111, NULL, 76, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (113, 'fc7c19c9-e3f1-428a-8d67-e9faf6d7a079', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:28:55.86', NULL, '2024-03-27 22:28:56.456392', '111.113', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 111, NULL, 76, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (114, '873a8199-0472-4c2a-afcf-552f67625472', 'Login to ecommerce application', 'test/specs/testLoginNegative.js/Login to ecommerce application', 'SUITE', '2024-03-27 22:29:43.365', '
@launch ''Test launch #77''', '2024-03-27 22:29:52.07045', '114', 'auto:88660216c40ad07acd198e7a7d468c30', 'test/specs/testLoginNegative.js/Login to ecommerce application', true, false, true, NULL, NULL, 80, 1598950450) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (115, '8d118499-4649-453f-8932-c0b28755cd5d', 'should not login with invalid credentials', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials', 'STEP', '2024-03-27 22:29:43.366', NULL, '2024-03-27 22:29:52.070503', '114.115', 'auto:8ed8c984df7bcba6cb69730ba31f5d58', 'test/specs/testLoginNegative.js/Login to ecommerce application/should not login with invalid credentials[chrome.123_0_6312_86.windows]', false, false, true, 114, NULL, 80, 1724958667) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (116, '9274b1fb-fba0-4cb8-9fa0-de60fa8010e5', 'Register to ecommerce application', 'test/specs/testRegisterUser.js/Register to ecommerce application', 'SUITE', '2024-03-27 22:29:43.485', '
@launch ''Test launch #78''', '2024-03-27 22:29:52.075726', '116', 'auto:e591a7a5c36152a3bd5054775a243a45', 'test/specs/testRegisterUser.js/Register to ecommerce application', true, false, true, NULL, NULL, 80, 1917775548) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (117, '53858c9c-1212-4973-a2f1-8ae8bff83279', 'should register a new user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user', 'STEP', '2024-03-27 22:29:43.486', NULL, '2024-03-27 22:29:52.075776', '116.117', 'auto:c74a68889a20436433f80421babeb0a4', 'test/specs/testRegisterUser.js/Register to ecommerce application/should register a new user[chrome.123_0_6312_86.windows]', false, false, true, 116, NULL, 80, 1958344235) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (120, 'a7a5e054-f02e-4c94-9d25-dcdf718f3f6b', 'should logout a user', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user', 'STEP', '2024-03-27 22:29:45.227', NULL, '2024-03-27 22:29:52.075786', '116.120', 'auto:eb4454b371f96ee133042fe0d2c8c249', 'test/specs/testRegisterUser.js/Register to ecommerce application/should logout a user[chrome.123_0_6312_86.windows]', false, false, true, 116, NULL, 80, -1991154780) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (118, 'b3451ee1-7f4e-49d1-bca9-85f4388f3f1c', 'e2e checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', 'SUITE', '2024-03-27 22:29:43.654', '
@launch ''Test launch #79''', '2024-03-27 22:29:52.084572', '118', 'auto:a2b7308f9d497f785ae347d2b2868089', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user', true, false, true, NULL, NULL, 80, 1482561778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) VALUES (119, '1866ae0c-9c11-4b1c-b607-e956a7975918', 'should add product to cart and checkout as guest user', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user', 'STEP', '2024-03-27 22:29:43.654', NULL, '2024-03-27 22:29:52.084599', '118.119', 'auto:0653d7736736acd7f26f4006f49ea9aa', 'test/specs/teste2eCheckoutGuestUser.js/e2e checkout as guest user/should add product to cart and checkout as guest user[chrome.123_0_6312_86.windows]', false, false, true, 118, NULL, 80, 1906062889) ON CONFLICT DO NOTHING;


--
-- TOC entry 4034 (class 0 OID 17425)
-- Dependencies: 255
-- Data for Name: test_item_results; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (4, 'FAILED', '2024-03-26 10:33:15.893', 8.083) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (2, 'FAILED', '2024-03-26 10:33:15.953', 8.144) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (5, 'FAILED', '2024-03-26 10:33:17.496', 9.614) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (7, 'FAILED', '2024-03-26 10:33:23.004', 5.45) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (3, 'FAILED', '2024-03-26 10:33:23.069', 15.187) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (9, 'FAILED', '2024-03-26 12:58:23.437', 6.976) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (13, 'FAILED', '2024-03-26 12:58:25.785', 9.021) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (12, 'FAILED', '2024-03-26 12:58:25.844', 9.08) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (14, 'FAILED', '2024-03-26 12:58:28.918', 5.422) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (8, 'FAILED', '2024-03-26 12:58:28.977', 12.517) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (11, 'FAILED', '2024-03-26 12:58:33.068', 16.383) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (10, 'FAILED', '2024-03-26 12:58:33.127', 16.443) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (16, 'FAILED', '2024-03-26 12:59:29.104', 14.299) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (15, 'FAILED', '2024-03-26 12:59:29.164', 14.36) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (18, 'FAILED', '2024-03-26 13:01:05.882', 12.916) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (17, 'FAILED', '2024-03-26 13:01:05.939', 12.974) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (19, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (20, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (21, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (22, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (23, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (24, 'FAILED', '2024-03-27 21:34:07.393', 7.718) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (25, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (26, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (28, 'FAILED', '2024-03-27 21:41:26.095', 5.801) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (27, 'FAILED', '2024-03-27 21:41:26.153', 5.86) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (30, 'FAILED', '2024-03-27 21:47:22.889', 227.502) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (29, 'FAILED', '2024-03-27 21:47:22.92', 227.533) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (32, 'FAILED', '2024-03-27 21:48:18.348', 7.085) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (31, 'FAILED', '2024-03-27 21:48:18.406', 7.144) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (34, 'FAILED', '2024-03-27 21:49:42.441', 7.152) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (33, 'FAILED', '2024-03-27 21:49:42.499', 7.21) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (36, 'PASSED', '2024-03-27 21:50:10.981', 7.515) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (35, 'PASSED', '2024-03-27 21:50:11.01', 7.545) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (38, 'PASSED', '2024-03-27 21:56:46.91', 0.757) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (37, 'PASSED', '2024-03-27 21:56:46.911', 0.759) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (40, 'FAILED', '2024-03-27 21:58:35.84', 1.25) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (41, 'PASSED', '2024-03-27 21:58:36.21', 0.312) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (39, 'FAILED', '2024-03-27 21:58:36.24', 1.65) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (42, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (43, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (45, 'FAILED', '2024-03-27 22:03:58.797', 1.255) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (46, 'PASSED', '2024-03-27 22:03:59.171', 0.314) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (44, 'FAILED', '2024-03-27 22:03:59.2', 1.659) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (48, 'FAILED', '2024-03-27 22:06:49.156', 1.223) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (49, 'PASSED', '2024-03-27 22:06:49.538', 0.322) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (47, 'FAILED', '2024-03-27 22:06:49.539', 1.607) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (50, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (51, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (53, 'FAILED', '2024-03-27 22:07:49.081', 1.321) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (54, 'PASSED', '2024-03-27 22:07:49.466', 0.323) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (52, 'FAILED', '2024-03-27 22:07:49.5', 1.74) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (56, 'FAILED', '2024-03-27 22:08:59.509', 1.277) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (57, 'PASSED', '2024-03-27 22:08:59.847', 0.305) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (55, 'FAILED', '2024-03-27 22:08:59.877', 1.646) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (58, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (59, 'IN_PROGRESS', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (61, 'FAILED', '2024-03-27 22:11:07.358', 1.396) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (62, 'PASSED', '2024-03-27 22:11:07.71', 0.291) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (60, 'FAILED', '2024-03-27 22:11:07.739', 1.778) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (64, 'FAILED', '2024-03-27 22:11:49.526', 1.33) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (65, 'PASSED', '2024-03-27 22:11:49.896', 0.337) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (63, 'FAILED', '2024-03-27 22:11:49.926', 1.73) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (67, 'FAILED', '2024-03-27 22:12:16.966', 1.265) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (68, 'PASSED', '2024-03-27 22:12:17.351', 0.324) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (66, 'FAILED', '2024-03-27 22:12:17.352', 1.652) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (70, 'FAILED', '2024-03-27 22:13:37.815', 1.24) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (71, 'PASSED', '2024-03-27 22:13:38.218', 0.341) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (69, 'FAILED', '2024-03-27 22:13:38.249', 1.674) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (73, 'FAILED', '2024-03-27 22:14:45.443', 1.325) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (74, 'PASSED', '2024-03-27 22:14:45.816', 0.315) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (72, 'FAILED', '2024-03-27 22:14:45.845', 1.727) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (76, 'FAILED', '2024-03-27 22:17:44.414', 1.307) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (77, 'PASSED', '2024-03-27 22:17:44.764', 0.289) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (75, 'FAILED', '2024-03-27 22:17:44.793', 1.686) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (79, 'FAILED', '2024-03-27 22:18:19.568', 1.257) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (80, 'PASSED', '2024-03-27 22:18:19.923', 0.295) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (78, 'FAILED', '2024-03-27 22:18:19.952', 1.642) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (82, 'FAILED', '2024-03-27 22:18:42.324', 1.302) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (83, 'PASSED', '2024-03-27 22:18:42.681', 0.296) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (81, 'FAILED', '2024-03-27 22:18:42.682', 1.66) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (85, 'FAILED', '2024-03-27 22:21:23.578', 1.296) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (86, 'PASSED', '2024-03-27 22:21:23.904', 0.297) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (84, 'FAILED', '2024-03-27 22:21:23.934', 1.653) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (88, 'FAILED', '2024-03-27 22:21:44.036', 1.978) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (89, 'PASSED', '2024-03-27 22:21:44.395', 0.299) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (87, 'FAILED', '2024-03-27 22:21:44.425', 2.367) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (91, 'FAILED', '2024-03-27 22:22:24.626', 1.21) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (92, 'PASSED', '2024-03-27 22:22:25.023', 0.339) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (90, 'FAILED', '2024-03-27 22:22:25.053', 1.638) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (94, 'FAILED', '2024-03-27 22:23:11.014', 1.392) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (95, 'PASSED', '2024-03-27 22:23:11.381', 0.308) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (93, 'FAILED', '2024-03-27 22:23:11.411', 1.789) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (97, 'FAILED', '2024-03-27 22:23:41.632', 1.395) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (98, 'PASSED', '2024-03-27 22:23:41.989', 0.297) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (96, 'FAILED', '2024-03-27 22:23:42.019', 1.782) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (100, 'FAILED', '2024-03-27 22:25:50.621', 1.327) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (101, 'PASSED', '2024-03-27 22:25:50.985', 0.303) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (99, 'FAILED', '2024-03-27 22:25:51.015', 1.722) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (103, 'FAILED', '2024-03-27 22:26:23.376', 1.313) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (104, 'PASSED', '2024-03-27 22:26:23.738', 0.3) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (102, 'FAILED', '2024-03-27 22:26:23.768', 1.705) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (106, 'FAILED', '2024-03-27 22:28:21.644', 1.345) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (107, 'PASSED', '2024-03-27 22:28:21.997', 0.287) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (105, 'FAILED', '2024-03-27 22:28:22.026', 1.727) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (109, 'PASSED', '2024-03-27 22:28:37.921', 1.152) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (110, 'PASSED', '2024-03-27 22:28:38.229', 0.307) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (108, 'PASSED', '2024-03-27 22:28:38.23', 1.461) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (112, 'PASSED', '2024-03-27 22:28:55.859', 1.211) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (113, 'PASSED', '2024-03-27 22:28:56.171', 0.311) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (111, 'PASSED', '2024-03-27 22:28:56.172', 1.525) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (1, 'INTERRUPTED', '2024-03-27 22:29:03.334153', 129355.322153) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (6, 'INTERRUPTED', '2024-03-27 22:29:03.334153', 129355.321153) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (115, 'PASSED', '2024-03-27 22:29:44.155', 0.789) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (114, 'PASSED', '2024-03-27 22:29:44.156', 0.791) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (117, 'PASSED', '2024-03-27 22:29:45.225', 1.739) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (120, 'PASSED', '2024-03-27 22:29:45.538', 0.311) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (116, 'PASSED', '2024-03-27 22:29:45.539', 2.054) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (119, 'PASSED', '2024-03-27 22:29:51.777', 8.123) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (118, 'PASSED', '2024-03-27 22:29:51.806', 8.152) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (124, 'PASSED', '2024-03-27 22:31:33.987', 1.204) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (127, 'PASSED', '2024-03-27 22:31:34.332', 0.344) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (122, 'PASSED', '2024-03-27 22:31:34.333', 1.55) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (123, 'PASSED', '2024-03-27 22:31:34.597', 1.833) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (121, 'PASSED', '2024-03-27 22:31:34.598', 1.834) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (126, 'PASSED', '2024-03-27 22:31:41.239', 8.198) ON CONFLICT DO NOTHING;
INSERT INTO public.test_item_results (result_id, status, end_time, duration) VALUES (125, 'PASSED', '2024-03-27 22:31:41.269', 8.229) ON CONFLICT DO NOTHING;


--
-- TOC entry 4058 (class 0 OID 17705)
-- Dependencies: 279
-- Data for Name: ticket; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 3990 (class 0 OID 16876)
-- Dependencies: 211
-- Data for Name: user_creation_bid; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4046 (class 0 OID 17579)
-- Dependencies: 267
-- Data for Name: user_preference; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 3993 (class 0 OID 16904)
-- Dependencies: 214
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: rpuser
--

INSERT INTO public.users (id, login, password, email, attachment, attachment_thumbnail, role, type, expired, full_name, metadata) VALUES (2, 'default', '$2a$10$WS7BhDl4caORMzBQz7y9zeF.iwLr87OipoubI5oo0D7OQ1qIZN8Jm', 'defaultemail@domain.com', 'dXNlcnMvZGVmYXVsdA', 'dXNlcnMvdGh1bWJuYWlsLWRlZmF1bHQ', 'USER', 'INTERNAL', false, 'tester', '{"metadata": {"last_login": 0, "attachmentContentType": "image/png"}}') ON CONFLICT DO NOTHING;
INSERT INTO public.users (id, login, password, email, attachment, attachment_thumbnail, role, type, expired, full_name, metadata) VALUES (3, 'python_pytest', '$2a$10$QRdDROllYsLzmG/zM8/8lu438/c/wVPZURECVGhQhtPti/UNPnDKy', 'python@pytest.com', NULL, NULL, 'ADMINISTRATOR', 'INTERNAL', false, 'python pytest user', '{"metadata": {"last_login": 1711448298867}}') ON CONFLICT DO NOTHING;
INSERT INTO public.users (id, login, password, email, attachment, attachment_thumbnail, role, type, expired, full_name, metadata) VALUES (5, 'python_robot', '$2a$10$OHjrg/L3BjCHJkNilukOHuIDp3zetgdfr.uRpB3myoIBhdwOI62J2', 'python@robot.com', NULL, NULL, 'ADMINISTRATOR', 'INTERNAL', false, 'python robot user', '{"metadata": {"last_login": 1711448332170}}') ON CONFLICT DO NOTHING;
INSERT INTO public.users (id, login, password, email, attachment, attachment_thumbnail, role, type, expired, full_name, metadata) VALUES (6, 'spring_selenium_user', '$2a$10$oVgFANuJHoDLj9RPFLYIuuF/IhXj8qtxd9HfZsif6YB9XDkM7Vsl6', 'spring@selenium.com', NULL, NULL, 'ADMINISTRATOR', 'INTERNAL', false, 'spring selenium user', '{"metadata": {"last_login": 1711448367803}}') ON CONFLICT DO NOTHING;
INSERT INTO public.users (id, login, password, email, attachment, attachment_thumbnail, role, type, expired, full_name, metadata) VALUES (4, 'wdio_user', '$2a$10$/guK9a8pqutbzDUKG9on3uJwSVuzdc7QblZ2fVdDgQNk7Kfkvtq/a', 'wdio@test.com', NULL, NULL, 'ADMINISTRATOR', 'INTERNAL', false, 'WebdriverIO user', '{"metadata": {"last_login": 1711449208594}}') ON CONFLICT DO NOTHING;
INSERT INTO public.users (id, login, password, email, attachment, attachment_thumbnail, role, type, expired, full_name, metadata) VALUES (1, 'superadmin', '$2a$10$vhlxLsj.HcuQVrbRTmOu6OOjTYK/ZeiLTKEA2Sf5JOaxZ98/KHGem', 'superadminemail@domain.com', 'dXNlcnMvc3VwZXJhZG1pbg', NULL, 'ADMINISTRATOR', 'INTERNAL', false, 'tester', '{"metadata": {"last_login": 1711578622321}}') ON CONFLICT DO NOTHING;


--
-- TOC entry 4024 (class 0 OID 17276)
-- Dependencies: 245
-- Data for Name: widget; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4027 (class 0 OID 17324)
-- Dependencies: 248
-- Data for Name: widget_filter; Type: TABLE DATA; Schema: public; Owner: rpuser
--



--
-- TOC entry 4065 (class 0 OID 17888)
-- Dependencies: 286
-- Data for Name: scheduler_blob_triggers; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--



--
-- TOC entry 4066 (class 0 OID 17901)
-- Dependencies: 287
-- Data for Name: scheduler_calendars; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--



--
-- TOC entry 4063 (class 0 OID 17862)
-- Dependencies: 284
-- Data for Name: scheduler_cron_triggers; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--



--
-- TOC entry 4068 (class 0 OID 17914)
-- Dependencies: 289
-- Data for Name: scheduler_fired_triggers; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--



--
-- TOC entry 4060 (class 0 OID 17828)
-- Dependencies: 281
-- Data for Name: scheduler_job_details; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--

INSERT INTO quartz.scheduler_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_nonconcurrent, is_update_data, requests_recovery, job_data) VALUES ('reportportal', 'interruptLaunchesJobBean', 'DEFAULT', NULL, 'com.epam.ta.reportportal.job.InterruptBrokenLaunchesJob', true, false, false, false, '\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800') ON CONFLICT DO NOTHING;
INSERT INTO quartz.scheduler_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_nonconcurrent, is_update_data, requests_recovery, job_data) VALUES ('reportportal', 'cleanExpiredCreationBidsJobBean', 'DEFAULT', NULL, 'com.epam.ta.reportportal.job.CleanExpiredCreationBidsJob', true, false, false, false, '\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800') ON CONFLICT DO NOTHING;


--
-- TOC entry 4070 (class 0 OID 17927)
-- Dependencies: 291
-- Data for Name: scheduler_locks; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--

INSERT INTO quartz.scheduler_locks (sched_name, lock_name) VALUES ('reportportal', 'TRIGGER_ACCESS') ON CONFLICT DO NOTHING;
INSERT INTO quartz.scheduler_locks (sched_name, lock_name) VALUES ('reportportal', 'STATE_ACCESS') ON CONFLICT DO NOTHING;


--
-- TOC entry 4067 (class 0 OID 17909)
-- Dependencies: 288
-- Data for Name: scheduler_paused_trigger_grps; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--



--
-- TOC entry 4069 (class 0 OID 17922)
-- Dependencies: 290
-- Data for Name: scheduler_scheduler_state; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--

INSERT INTO quartz.scheduler_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) VALUES ('reportportal', 'api:acfb29bf142e4e67ffc3689354dc527c', 1711641742731, 180000) ON CONFLICT DO NOTHING;


--
-- TOC entry 4062 (class 0 OID 17849)
-- Dependencies: 283
-- Data for Name: scheduler_simple_triggers; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--

INSERT INTO quartz.scheduler_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) VALUES ('reportportal', 'interruptLaunchesTrigger', 'DEFAULT', -1, 3600000, 0) ON CONFLICT DO NOTHING;
INSERT INTO quartz.scheduler_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) VALUES ('reportportal', 'cleanExpiredCreationBidsTrigger', 'DEFAULT', -1, 3600000, 1) ON CONFLICT DO NOTHING;


--
-- TOC entry 4064 (class 0 OID 17875)
-- Dependencies: 285
-- Data for Name: scheduler_simprop_triggers; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--



--
-- TOC entry 4061 (class 0 OID 17836)
-- Dependencies: 282
-- Data for Name: scheduler_triggers; Type: TABLE DATA; Schema: quartz; Owner: rpuser
--

INSERT INTO quartz.scheduler_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) VALUES ('reportportal', 'interruptLaunchesTrigger', 'DEFAULT', 'interruptLaunchesJobBean', 'DEFAULT', NULL, 1711644978863, -1, 0, 'WAITING', 'SIMPLE', 1711644978863, 0, NULL, 4, '\x') ON CONFLICT DO NOTHING;
INSERT INTO quartz.scheduler_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) VALUES ('reportportal', 'cleanExpiredCreationBidsTrigger', 'DEFAULT', 'cleanExpiredCreationBidsJobBean', 'DEFAULT', NULL, 1711644978868, 1711641378868, 0, 'WAITING', 'SIMPLE', 1711641378868, 0, NULL, 4, '\x') ON CONFLICT DO NOTHING;


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 303
-- Name: activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.activity_id_seq', 154, true);


--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 301
-- Name: api_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.api_keys_id_seq', 5, true);


--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 262
-- Name: attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.attachment_id_seq', 33, true);


--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 228
-- Name: attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.attribute_id_seq', 14, true);


--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 294
-- Name: clusters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.clusters_id_seq', 32, true);


--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 240
-- Name: filter_condition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.filter_condition_id_seq', 1, false);


--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 242
-- Name: filter_sort_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.filter_sort_id_seq', 1, false);


--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 235
-- Name: integration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.integration_id_seq', 1, false);


--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 233
-- Name: integration_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.integration_type_id_seq', 4, true);


--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 268
-- Name: issue_group_issue_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.issue_group_issue_group_id_seq', 6, false);


--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 270
-- Name: issue_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.issue_type_id_seq', 6, false);


--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 260
-- Name: item_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.item_attribute_id_seq', 473, true);


--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 225
-- Name: launch_attribute_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.launch_attribute_rules_id_seq', 1, false);


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 249
-- Name: launch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.launch_id_seq', 84, true);


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 251
-- Name: launch_number_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.launch_number_id_seq', 84, true);


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 264
-- Name: log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.log_id_seq', 70, true);


--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 219
-- Name: oauth_registration_restriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.oauth_registration_restriction_id_seq', 1, false);


--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 217
-- Name: oauth_registration_scope_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.oauth_registration_scope_id_seq', 1, false);


--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 297
-- Name: onboarding_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.onboarding_id_seq', 1, false);


--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 256
-- Name: pattern_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.pattern_template_id_seq', 1, false);


--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 230
-- Name: project_attribute_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.project_attribute_attribute_id_seq', 1, false);


--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 231
-- Name: project_attribute_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.project_attribute_project_id_seq', 1, false);


--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 209
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.project_id_seq', 44, true);


--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 221
-- Name: sender_case_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.sender_case_id_seq', 1, false);


--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 222
-- Name: sender_case_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.sender_case_project_id_seq', 1, false);


--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 207
-- Name: server_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.server_settings_id_seq', 3, true);


--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 237
-- Name: shareable_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.shareable_entity_id_seq', 1, false);


--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 299
-- Name: stale_materialized_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.stale_materialized_view_id_seq', 1, false);


--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 272
-- Name: statistics_field_sf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.statistics_field_sf_id_seq', 15, false);


--
-- TOC entry 4157 (class 0 OID 0)
-- Dependencies: 274
-- Name: statistics_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.statistics_s_id_seq', 904, true);


--
-- TOC entry 4158 (class 0 OID 0)
-- Dependencies: 253
-- Name: test_item_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.test_item_item_id_seq', 127, true);


--
-- TOC entry 4159 (class 0 OID 0)
-- Dependencies: 278
-- Name: ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.ticket_id_seq', 1, false);


--
-- TOC entry 4160 (class 0 OID 0)
-- Dependencies: 266
-- Name: user_preference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.user_preference_id_seq', 1, false);


--
-- TOC entry 4161 (class 0 OID 0)
-- Dependencies: 213
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rpuser
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- TOC entry 3788 (class 2606 OID 18407)
-- Name: activity activity_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_pk PRIMARY KEY (id);


--
-- TOC entry 3781 (class 2606 OID 18380)
-- Name: api_keys api_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_pkey PRIMARY KEY (id);


--
-- TOC entry 3761 (class 2606 OID 18224)
-- Name: attachment_deletion attachment_deletion_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.attachment_deletion
    ADD CONSTRAINT attachment_deletion_pkey PRIMARY KEY (id);


--
-- TOC entry 3672 (class 2606 OID 17519)
-- Name: attachment attachment_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.attachment
    ADD CONSTRAINT attachment_pk PRIMARY KEY (id);


--
-- TOC entry 3595 (class 2606 OID 17053)
-- Name: attribute attribute_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.attribute
    ADD CONSTRAINT attribute_pk PRIMARY KEY (id);


--
-- TOC entry 3772 (class 2606 OID 18281)
-- Name: clusters_test_item cluster_item_unq; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.clusters_test_item
    ADD CONSTRAINT cluster_item_unq UNIQUE (cluster_id, item_id);


--
-- TOC entry 3766 (class 2606 OID 18271)
-- Name: clusters clusters_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT clusters_pk PRIMARY KEY (id);


--
-- TOC entry 3620 (class 2606 OID 17270)
-- Name: dashboard dashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.dashboard
    ADD CONSTRAINT dashboard_pkey PRIMARY KEY (id);


--
-- TOC entry 3626 (class 2606 OID 17311)
-- Name: dashboard_widget dashboard_widget_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.dashboard_widget
    ADD CONSTRAINT dashboard_widget_pk PRIMARY KEY (dashboard_id, widget_id);


--
-- TOC entry 3615 (class 2606 OID 17237)
-- Name: filter_condition filter_condition_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.filter_condition
    ADD CONSTRAINT filter_condition_pk PRIMARY KEY (id);


--
-- TOC entry 3612 (class 2606 OID 17221)
-- Name: filter filter_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);


--
-- TOC entry 3618 (class 2606 OID 17255)
-- Name: filter_sort filter_sort_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.filter_sort
    ADD CONSTRAINT filter_sort_pk PRIMARY KEY (id);


--
-- TOC entry 3768 (class 2606 OID 18273)
-- Name: clusters index_id_launch_id_unq; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT index_id_launch_id_unq UNIQUE (index_id, launch_id);


--
-- TOC entry 3604 (class 2606 OID 17100)
-- Name: integration integration_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.integration
    ADD CONSTRAINT integration_pk PRIMARY KEY (id);


--
-- TOC entry 3599 (class 2606 OID 17088)
-- Name: integration_type integration_type_name_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.integration_type
    ADD CONSTRAINT integration_type_name_key UNIQUE (name);


--
-- TOC entry 3601 (class 2606 OID 17086)
-- Name: integration_type integration_type_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.integration_type
    ADD CONSTRAINT integration_type_pk PRIMARY KEY (id);


--
-- TOC entry 3687 (class 2606 OID 17609)
-- Name: issue_group issue_group_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_group
    ADD CONSTRAINT issue_group_pk PRIMARY KEY (issue_group_id);


--
-- TOC entry 3709 (class 2606 OID 17691)
-- Name: issue issue_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_pk PRIMARY KEY (issue_id);


--
-- TOC entry 3715 (class 2606 OID 17720)
-- Name: issue_ticket issue_ticket_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_ticket
    ADD CONSTRAINT issue_ticket_pk PRIMARY KEY (issue_id, ticket_id);


--
-- TOC entry 3690 (class 2606 OID 17619)
-- Name: issue_type issue_type_locator_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_type
    ADD CONSTRAINT issue_type_locator_key UNIQUE (locator);


--
-- TOC entry 3692 (class 2606 OID 17617)
-- Name: issue_type issue_type_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_type
    ADD CONSTRAINT issue_type_pk PRIMARY KEY (id);


--
-- TOC entry 3706 (class 2606 OID 17671)
-- Name: issue_type_project issue_type_project_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_type_project
    ADD CONSTRAINT issue_type_project_pk PRIMARY KEY (project_id, issue_type_id);


--
-- TOC entry 3667 (class 2606 OID 17496)
-- Name: item_attribute item_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.item_attribute
    ADD CONSTRAINT item_attribute_pk PRIMARY KEY (id);


--
-- TOC entry 3592 (class 2606 OID 17030)
-- Name: launch_attribute_rules launch_attribute_rules_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch_attribute_rules
    ADD CONSTRAINT launch_attribute_rules_pk PRIMARY KEY (id);


--
-- TOC entry 3640 (class 2606 OID 17378)
-- Name: launch_number launch_number_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch_number
    ADD CONSTRAINT launch_number_pk PRIMARY KEY (id);


--
-- TOC entry 3632 (class 2606 OID 17353)
-- Name: launch launch_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch
    ADD CONSTRAINT launch_pk PRIMARY KEY (id);


--
-- TOC entry 3636 (class 2606 OID 17355)
-- Name: launch launch_uuid_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch
    ADD CONSTRAINT launch_uuid_key UNIQUE (uuid);


--
-- TOC entry 3678 (class 2606 OID 17534)
-- Name: log log_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pk PRIMARY KEY (id);


--
-- TOC entry 3574 (class 2606 OID 16960)
-- Name: oauth_registration oauth_registration_client_id_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration
    ADD CONSTRAINT oauth_registration_client_id_key UNIQUE (client_id);


--
-- TOC entry 3576 (class 2606 OID 16958)
-- Name: oauth_registration oauth_registration_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration
    ADD CONSTRAINT oauth_registration_pkey PRIMARY KEY (id);


--
-- TOC entry 3582 (class 2606 OID 16986)
-- Name: oauth_registration_restriction oauth_registration_restriction_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration_restriction
    ADD CONSTRAINT oauth_registration_restriction_pk PRIMARY KEY (id);


--
-- TOC entry 3584 (class 2606 OID 16988)
-- Name: oauth_registration_restriction oauth_registration_restriction_unique; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration_restriction
    ADD CONSTRAINT oauth_registration_restriction_unique UNIQUE (type, value, oauth_registration_fk);


--
-- TOC entry 3578 (class 2606 OID 16968)
-- Name: oauth_registration_scope oauth_registration_scope_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration_scope
    ADD CONSTRAINT oauth_registration_scope_pk PRIMARY KEY (id);


--
-- TOC entry 3580 (class 2606 OID 16970)
-- Name: oauth_registration_scope oauth_registration_scope_unique; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration_scope
    ADD CONSTRAINT oauth_registration_scope_unique UNIQUE (scope, oauth_registration_fk);


--
-- TOC entry 3774 (class 2606 OID 18303)
-- Name: onboarding onboarding_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.onboarding
    ADD CONSTRAINT onboarding_pk PRIMARY KEY (id);


--
-- TOC entry 3662 (class 2606 OID 17459)
-- Name: pattern_template_test_item pattern_item_unq; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.pattern_template_test_item
    ADD CONSTRAINT pattern_item_unq PRIMARY KEY (pattern_id, item_id);


--
-- TOC entry 3657 (class 2606 OID 17447)
-- Name: pattern_template pattern_template_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.pattern_template
    ADD CONSTRAINT pattern_template_pk PRIMARY KEY (id);


--
-- TOC entry 3556 (class 2606 OID 16875)
-- Name: project project_name_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_name_key UNIQUE (name);


--
-- TOC entry 3558 (class 2606 OID 16873)
-- Name: project project_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pk PRIMARY KEY (id);


--
-- TOC entry 3562 (class 2606 OID 16901)
-- Name: restore_password_bid restore_password_bid_email_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.restore_password_bid
    ADD CONSTRAINT restore_password_bid_email_key UNIQUE (email);


--
-- TOC entry 3564 (class 2606 OID 16899)
-- Name: restore_password_bid restore_password_bid_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.restore_password_bid
    ADD CONSTRAINT restore_password_bid_pk PRIMARY KEY (uuid);


--
-- TOC entry 3550 (class 2606 OID 16389)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 3586 (class 2606 OID 17004)
-- Name: sender_case sender_case_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.sender_case
    ADD CONSTRAINT sender_case_pk PRIMARY KEY (id);


--
-- TOC entry 3552 (class 2606 OID 16859)
-- Name: server_settings server_settings_id; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.server_settings
    ADD CONSTRAINT server_settings_id PRIMARY KEY (id);


--
-- TOC entry 3554 (class 2606 OID 16861)
-- Name: server_settings server_settings_key_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.server_settings
    ADD CONSTRAINT server_settings_key_key UNIQUE (key);


--
-- TOC entry 3608 (class 2606 OID 17201)
-- Name: owned_entity shareable_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.owned_entity
    ADD CONSTRAINT shareable_pk PRIMARY KEY (id);


--
-- TOC entry 3759 (class 2606 OID 18212)
-- Name: shedlock shedlock_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.shedlock
    ADD CONSTRAINT shedlock_pkey PRIMARY KEY (name);


--
-- TOC entry 3776 (class 2606 OID 18337)
-- Name: stale_materialized_view stale_materialized_view_name_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.stale_materialized_view
    ADD CONSTRAINT stale_materialized_view_name_key UNIQUE (name);


--
-- TOC entry 3778 (class 2606 OID 18335)
-- Name: stale_materialized_view stale_materialized_view_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.stale_materialized_view
    ADD CONSTRAINT stale_materialized_view_pkey PRIMARY KEY (id);


--
-- TOC entry 3694 (class 2606 OID 17635)
-- Name: statistics_field statistics_field_name_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics_field
    ADD CONSTRAINT statistics_field_name_key UNIQUE (name);


--
-- TOC entry 3696 (class 2606 OID 17633)
-- Name: statistics_field statistics_field_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics_field
    ADD CONSTRAINT statistics_field_pk PRIMARY KEY (sf_id);


--
-- TOC entry 3699 (class 2606 OID 17645)
-- Name: statistics statistics_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_pk PRIMARY KEY (s_id);


--
-- TOC entry 3647 (class 2606 OID 17399)
-- Name: test_item test_item_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_pk PRIMARY KEY (item_id);


--
-- TOC entry 3655 (class 2606 OID 17429)
-- Name: test_item_results test_item_results_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.test_item_results
    ADD CONSTRAINT test_item_results_pk PRIMARY KEY (result_id);


--
-- TOC entry 3650 (class 2606 OID 17401)
-- Name: test_item test_item_uuid_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_uuid_key UNIQUE (uuid);


--
-- TOC entry 3712 (class 2606 OID 17714)
-- Name: ticket ticket_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pk PRIMARY KEY (id);


--
-- TOC entry 3597 (class 2606 OID 17064)
-- Name: project_attribute unique_attribute_per_project; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project_attribute
    ADD CONSTRAINT unique_attribute_per_project PRIMARY KEY (attribute_id, project_id);


--
-- TOC entry 3702 (class 2606 OID 17647)
-- Name: statistics unique_stats_item; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT unique_stats_item UNIQUE (statistics_field_id, item_id);


--
-- TOC entry 3704 (class 2606 OID 17649)
-- Name: statistics unique_stats_launch; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT unique_stats_launch UNIQUE (statistics_field_id, launch_id);


--
-- TOC entry 3638 (class 2606 OID 17357)
-- Name: launch unq_name_number; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch
    ADD CONSTRAINT unq_name_number UNIQUE (name, number, project_id);


--
-- TOC entry 3659 (class 2606 OID 17449)
-- Name: pattern_template unq_name_projectid; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.pattern_template
    ADD CONSTRAINT unq_name_projectid UNIQUE (name, project_id);


--
-- TOC entry 3642 (class 2606 OID 17380)
-- Name: launch_number unq_project_name; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch_number
    ADD CONSTRAINT unq_project_name UNIQUE (project_id, launch_name);


--
-- TOC entry 3560 (class 2606 OID 16884)
-- Name: user_creation_bid user_creation_bid_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.user_creation_bid
    ADD CONSTRAINT user_creation_bid_pk PRIMARY KEY (uuid);


--
-- TOC entry 3683 (class 2606 OID 17584)
-- Name: user_preference user_preference_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_pk PRIMARY KEY (id);


--
-- TOC entry 3685 (class 2606 OID 17586)
-- Name: user_preference user_preference_uq; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_uq UNIQUE (project_id, user_id, filter_id);


--
-- TOC entry 3784 (class 2606 OID 18382)
-- Name: api_keys users_api_keys_unique; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT users_api_keys_unique UNIQUE (name, user_id);


--
-- TOC entry 3566 (class 2606 OID 16916)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3568 (class 2606 OID 16914)
-- Name: users users_login_key; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);


--
-- TOC entry 3570 (class 2606 OID 16912)
-- Name: users users_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


--
-- TOC entry 3572 (class 2606 OID 16921)
-- Name: project_user users_project_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT users_project_pk PRIMARY KEY (user_id, project_id);


--
-- TOC entry 3630 (class 2606 OID 17328)
-- Name: widget_filter widget_filter_pk; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.widget_filter
    ADD CONSTRAINT widget_filter_pk PRIMARY KEY (widget_id, filter_id);


--
-- TOC entry 3628 (class 2606 OID 17313)
-- Name: dashboard_widget widget_on_dashboard_unq; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.dashboard_widget
    ADD CONSTRAINT widget_on_dashboard_unq UNIQUE (dashboard_id, widget_name, widget_owner);


--
-- TOC entry 3622 (class 2606 OID 17283)
-- Name: widget widget_pkey; Type: CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.widget
    ADD CONSTRAINT widget_pkey PRIMARY KEY (id);


--
-- TOC entry 3741 (class 2606 OID 17895)
-- Name: scheduler_blob_triggers scheduler_blob_triggers_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_blob_triggers
    ADD CONSTRAINT scheduler_blob_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);


--
-- TOC entry 3743 (class 2606 OID 17908)
-- Name: scheduler_calendars scheduler_calendars_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_calendars
    ADD CONSTRAINT scheduler_calendars_pkey PRIMARY KEY (sched_name, calendar_name);


--
-- TOC entry 3737 (class 2606 OID 17869)
-- Name: scheduler_cron_triggers scheduler_cron_triggers_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_cron_triggers
    ADD CONSTRAINT scheduler_cron_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);


--
-- TOC entry 3753 (class 2606 OID 17921)
-- Name: scheduler_fired_triggers scheduler_fired_triggers_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_fired_triggers
    ADD CONSTRAINT scheduler_fired_triggers_pkey PRIMARY KEY (sched_name, entry_id);


--
-- TOC entry 3719 (class 2606 OID 17835)
-- Name: scheduler_job_details scheduler_job_details_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_job_details
    ADD CONSTRAINT scheduler_job_details_pkey PRIMARY KEY (sched_name, job_name, job_group);


--
-- TOC entry 3757 (class 2606 OID 17931)
-- Name: scheduler_locks scheduler_locks_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_locks
    ADD CONSTRAINT scheduler_locks_pkey PRIMARY KEY (sched_name, lock_name);


--
-- TOC entry 3745 (class 2606 OID 17913)
-- Name: scheduler_paused_trigger_grps scheduler_paused_trigger_grps_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_paused_trigger_grps
    ADD CONSTRAINT scheduler_paused_trigger_grps_pkey PRIMARY KEY (sched_name, trigger_group);


--
-- TOC entry 3755 (class 2606 OID 17926)
-- Name: scheduler_scheduler_state scheduler_scheduler_state_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_scheduler_state
    ADD CONSTRAINT scheduler_scheduler_state_pkey PRIMARY KEY (sched_name, instance_name);


--
-- TOC entry 3735 (class 2606 OID 17856)
-- Name: scheduler_simple_triggers scheduler_simple_triggers_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_simple_triggers
    ADD CONSTRAINT scheduler_simple_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);


--
-- TOC entry 3739 (class 2606 OID 17882)
-- Name: scheduler_simprop_triggers scheduler_simprop_triggers_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_simprop_triggers
    ADD CONSTRAINT scheduler_simprop_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);


--
-- TOC entry 3733 (class 2606 OID 17843)
-- Name: scheduler_triggers scheduler_triggers_pkey; Type: CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_triggers
    ADD CONSTRAINT scheduler_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);


--
-- TOC entry 3785 (class 1259 OID 18414)
-- Name: activity_created_at_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX activity_created_at_idx ON public.activity USING btree (created_at);


--
-- TOC entry 3786 (class 1259 OID 18415)
-- Name: activity_object_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX activity_object_idx ON public.activity USING btree (object_id);


--
-- TOC entry 3789 (class 1259 OID 18413)
-- Name: activity_project_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX activity_project_idx ON public.activity USING btree (project_id);


--
-- TOC entry 3668 (class 1259 OID 17522)
-- Name: att_item_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX att_item_idx ON public.attachment USING btree (item_id);


--
-- TOC entry 3669 (class 1259 OID 17521)
-- Name: att_launch_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX att_launch_idx ON public.attachment USING btree (launch_id);


--
-- TOC entry 3670 (class 1259 OID 17520)
-- Name: att_project_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX att_project_idx ON public.attachment USING btree (project_id);


--
-- TOC entry 3673 (class 1259 OID 18234)
-- Name: attachment_project_id_creation_time_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX attachment_project_id_creation_time_idx ON public.attachment USING btree (project_id, creation_date);


--
-- TOC entry 3762 (class 1259 OID 18274)
-- Name: cluster_index_id_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX cluster_index_id_idx ON public.clusters USING btree (index_id);


--
-- TOC entry 3769 (class 1259 OID 18282)
-- Name: cluster_item_cluster_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX cluster_item_cluster_idx ON public.clusters_test_item USING btree (cluster_id);


--
-- TOC entry 3770 (class 1259 OID 18283)
-- Name: cluster_item_item_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX cluster_item_item_idx ON public.clusters_test_item USING btree (item_id);


--
-- TOC entry 3763 (class 1259 OID 18276)
-- Name: cluster_launch_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX cluster_launch_idx ON public.clusters USING btree (launch_id);


--
-- TOC entry 3764 (class 1259 OID 18275)
-- Name: cluster_project_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX cluster_project_idx ON public.clusters USING btree (project_id);


--
-- TOC entry 3623 (class 1259 OID 17301)
-- Name: content_field_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX content_field_idx ON public.content_field USING btree (field);


--
-- TOC entry 3624 (class 1259 OID 17300)
-- Name: content_field_widget_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX content_field_widget_idx ON public.content_field USING btree (id);


--
-- TOC entry 3613 (class 1259 OID 17243)
-- Name: filter_cond_filter_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX filter_cond_filter_idx ON public.filter_condition USING btree (filter_id);


--
-- TOC entry 3616 (class 1259 OID 17261)
-- Name: filter_sort_filter_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX filter_sort_filter_idx ON public.filter_sort USING btree (filter_id);


--
-- TOC entry 3782 (class 1259 OID 18388)
-- Name: hash_api_keys_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX hash_api_keys_idx ON public.api_keys USING btree (hash);


--
-- TOC entry 3602 (class 1259 OID 17111)
-- Name: integr_project_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX integr_project_idx ON public.integration USING btree (project_id);


--
-- TOC entry 3707 (class 1259 OID 17702)
-- Name: issue_it_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX issue_it_idx ON public.issue USING btree (issue_type);


--
-- TOC entry 3688 (class 1259 OID 17625)
-- Name: issue_type_group_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX issue_type_group_idx ON public.issue_type USING btree (issue_group_id);


--
-- TOC entry 3664 (class 1259 OID 17508)
-- Name: item_attr_launch_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX item_attr_launch_idx ON public.item_attribute USING btree (launch_id);


--
-- TOC entry 3665 (class 1259 OID 17507)
-- Name: item_attr_ti_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX item_attr_ti_idx ON public.item_attribute USING btree (item_id);


--
-- TOC entry 3643 (class 1259 OID 18044)
-- Name: item_test_case_id_launch_id_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX item_test_case_id_launch_id_idx ON public.test_item USING btree (test_case_id, launch_id);


--
-- TOC entry 3590 (class 1259 OID 17036)
-- Name: l_attr_rl_send_case_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX l_attr_rl_send_case_idx ON public.launch_attribute_rules USING btree (sender_case_id);


--
-- TOC entry 3633 (class 1259 OID 18235)
-- Name: launch_project_start_time_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX launch_project_start_time_idx ON public.launch USING btree (project_id, start_time);


--
-- TOC entry 3634 (class 1259 OID 17369)
-- Name: launch_user_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX launch_user_idx ON public.launch USING btree (user_id);


--
-- TOC entry 3589 (class 1259 OID 17019)
-- Name: ln_send_case_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX ln_send_case_idx ON public.launch_names USING btree (sender_case_id);


--
-- TOC entry 3674 (class 1259 OID 17965)
-- Name: log_attach_id_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX log_attach_id_idx ON public.log USING btree (attachment_id);


--
-- TOC entry 3675 (class 1259 OID 18284)
-- Name: log_cluster_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX log_cluster_idx ON public.log USING btree (cluster_id);


--
-- TOC entry 3676 (class 1259 OID 17966)
-- Name: log_launch_id_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX log_launch_id_idx ON public.log USING btree (launch_id);


--
-- TOC entry 3679 (class 1259 OID 18233)
-- Name: log_project_id_log_time_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX log_project_id_log_time_idx ON public.log USING btree (project_id, log_time);


--
-- TOC entry 3680 (class 1259 OID 18145)
-- Name: log_project_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX log_project_idx ON public.log USING btree (project_id);


--
-- TOC entry 3681 (class 1259 OID 17552)
-- Name: log_ti_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX log_ti_idx ON public.log USING btree (item_id);


--
-- TOC entry 3663 (class 1259 OID 17483)
-- Name: parameter_ti_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX parameter_ti_idx ON public.parameter USING btree (item_id);


--
-- TOC entry 3644 (class 1259 OID 17435)
-- Name: path_gist_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX path_gist_idx ON public.test_item USING gist (path);


--
-- TOC entry 3660 (class 1259 OID 17471)
-- Name: pattern_item_item_id_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX pattern_item_item_id_idx ON public.pattern_template_test_item USING btree (item_id);


--
-- TOC entry 3593 (class 1259 OID 17045)
-- Name: rcpnt_send_case_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX rcpnt_send_case_idx ON public.recipients USING btree (sender_case_id);


--
-- TOC entry 3587 (class 1259 OID 17010)
-- Name: sender_case_project_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX sender_case_project_idx ON public.sender_case USING btree (project_id);


--
-- TOC entry 3609 (class 1259 OID 17212)
-- Name: shared_entity_ownerx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX shared_entity_ownerx ON public.owned_entity USING btree (owner);


--
-- TOC entry 3610 (class 1259 OID 17213)
-- Name: shared_entity_project_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX shared_entity_project_idx ON public.owned_entity USING btree (project_id);


--
-- TOC entry 3779 (class 1259 OID 18338)
-- Name: stale_mv_creation_date_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX stale_mv_creation_date_idx ON public.stale_materialized_view USING btree (creation_date);


--
-- TOC entry 3697 (class 1259 OID 17666)
-- Name: statistics_launch_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX statistics_launch_idx ON public.statistics USING btree (launch_id);


--
-- TOC entry 3700 (class 1259 OID 17665)
-- Name: statistics_ti_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX statistics_ti_idx ON public.statistics USING btree (item_id);


--
-- TOC entry 3645 (class 1259 OID 17994)
-- Name: test_case_hash_launch_id_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX test_case_hash_launch_id_idx ON public.test_item USING btree (test_case_hash, launch_id);


--
-- TOC entry 3648 (class 1259 OID 17964)
-- Name: test_item_unique_id_launch_id_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX test_item_unique_id_launch_id_idx ON public.test_item USING btree (unique_id, launch_id);


--
-- TOC entry 3651 (class 1259 OID 17418)
-- Name: ti_launch_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX ti_launch_idx ON public.test_item USING btree (launch_id);


--
-- TOC entry 3652 (class 1259 OID 17417)
-- Name: ti_parent_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX ti_parent_idx ON public.test_item USING btree (parent_id);


--
-- TOC entry 3653 (class 1259 OID 17419)
-- Name: ti_retry_of_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX ti_retry_of_idx ON public.test_item USING btree (retry_of);


--
-- TOC entry 3710 (class 1259 OID 18028)
-- Name: ticket_id_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX ticket_id_idx ON public.ticket USING btree (ticket_id);


--
-- TOC entry 3713 (class 1259 OID 17715)
-- Name: ticket_submitter_idx; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE INDEX ticket_submitter_idx ON public.ticket USING btree (submitter);


--
-- TOC entry 3605 (class 1259 OID 17112)
-- Name: unique_global_integration_name; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE UNIQUE INDEX unique_global_integration_name ON public.integration USING btree (name, type) WHERE (project_id IS NULL);


--
-- TOC entry 3606 (class 1259 OID 17113)
-- Name: unique_project_integration_name; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE UNIQUE INDEX unique_project_integration_name ON public.integration USING btree (name, type, project_id) WHERE (project_id IS NOT NULL);


--
-- TOC entry 3588 (class 1259 OID 18439)
-- Name: unique_rule_name_per_project; Type: INDEX; Schema: public; Owner: rpuser
--

CREATE UNIQUE INDEX unique_rule_name_per_project ON public.sender_case USING btree (rule_name, project_id);


--
-- TOC entry 3746 (class 1259 OID 17947)
-- Name: idx_scheduler_ft_inst_job_req_rcvry; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_ft_inst_job_req_rcvry ON quartz.scheduler_fired_triggers USING btree (sched_name, instance_name, requests_recovery);


--
-- TOC entry 3747 (class 1259 OID 17948)
-- Name: idx_scheduler_ft_j_g; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_ft_j_g ON quartz.scheduler_fired_triggers USING btree (sched_name, job_name, job_group);


--
-- TOC entry 3748 (class 1259 OID 17949)
-- Name: idx_scheduler_ft_jg; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_ft_jg ON quartz.scheduler_fired_triggers USING btree (sched_name, job_group);


--
-- TOC entry 3749 (class 1259 OID 17950)
-- Name: idx_scheduler_ft_t_g; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_ft_t_g ON quartz.scheduler_fired_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- TOC entry 3750 (class 1259 OID 17951)
-- Name: idx_scheduler_ft_tg; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_ft_tg ON quartz.scheduler_fired_triggers USING btree (sched_name, trigger_group);


--
-- TOC entry 3751 (class 1259 OID 17946)
-- Name: idx_scheduler_ft_trig_inst_name; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_ft_trig_inst_name ON quartz.scheduler_fired_triggers USING btree (sched_name, instance_name);


--
-- TOC entry 3716 (class 1259 OID 17933)
-- Name: idx_scheduler_j_grp; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_j_grp ON quartz.scheduler_job_details USING btree (sched_name, job_group);


--
-- TOC entry 3717 (class 1259 OID 17932)
-- Name: idx_scheduler_j_req_recovery; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_j_req_recovery ON quartz.scheduler_job_details USING btree (sched_name, requests_recovery);


--
-- TOC entry 3720 (class 1259 OID 17936)
-- Name: idx_scheduler_t_c; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_c ON quartz.scheduler_triggers USING btree (sched_name, calendar_name);


--
-- TOC entry 3721 (class 1259 OID 17937)
-- Name: idx_scheduler_t_g; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_g ON quartz.scheduler_triggers USING btree (sched_name, trigger_group);


--
-- TOC entry 3722 (class 1259 OID 17934)
-- Name: idx_scheduler_t_j; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_j ON quartz.scheduler_triggers USING btree (sched_name, job_name, job_group);


--
-- TOC entry 3723 (class 1259 OID 17935)
-- Name: idx_scheduler_t_jg; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_jg ON quartz.scheduler_triggers USING btree (sched_name, job_group);


--
-- TOC entry 3724 (class 1259 OID 17940)
-- Name: idx_scheduler_t_n_g_state; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_n_g_state ON quartz.scheduler_triggers USING btree (sched_name, trigger_group, trigger_state);


--
-- TOC entry 3725 (class 1259 OID 17939)
-- Name: idx_scheduler_t_n_state; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_n_state ON quartz.scheduler_triggers USING btree (sched_name, trigger_name, trigger_group, trigger_state);


--
-- TOC entry 3726 (class 1259 OID 17941)
-- Name: idx_scheduler_t_next_fire_time; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_next_fire_time ON quartz.scheduler_triggers USING btree (sched_name, next_fire_time);


--
-- TOC entry 3727 (class 1259 OID 17943)
-- Name: idx_scheduler_t_nft_misfire; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_nft_misfire ON quartz.scheduler_triggers USING btree (sched_name, misfire_instr, next_fire_time);


--
-- TOC entry 3728 (class 1259 OID 17942)
-- Name: idx_scheduler_t_nft_st; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_nft_st ON quartz.scheduler_triggers USING btree (sched_name, trigger_state, next_fire_time);


--
-- TOC entry 3729 (class 1259 OID 17944)
-- Name: idx_scheduler_t_nft_st_misfire; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_nft_st_misfire ON quartz.scheduler_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_state);


--
-- TOC entry 3730 (class 1259 OID 17945)
-- Name: idx_scheduler_t_nft_st_misfire_grp; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_nft_st_misfire_grp ON quartz.scheduler_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_group, trigger_state);


--
-- TOC entry 3731 (class 1259 OID 17938)
-- Name: idx_scheduler_t_state; Type: INDEX; Schema: quartz; Owner: rpuser
--

CREATE INDEX idx_scheduler_t_state ON quartz.scheduler_triggers USING btree (sched_name, trigger_state);


--
-- TOC entry 3855 (class 2620 OID 17814)
-- Name: issue after_issue_insert; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER after_issue_insert AFTER INSERT ON public.issue FOR EACH ROW EXECUTE FUNCTION public.increment_defect_statistics();


--
-- TOC entry 3856 (class 2620 OID 17816)
-- Name: issue after_issue_update; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER after_issue_update AFTER UPDATE ON public.issue FOR EACH ROW EXECUTE FUNCTION public.update_defect_statistics();


--
-- TOC entry 3853 (class 2620 OID 17812)
-- Name: test_item_results after_test_results_update; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER after_test_results_update AFTER UPDATE ON public.test_item_results FOR EACH ROW EXECUTE FUNCTION public.update_executions_statistics();


--
-- TOC entry 3858 (class 2620 OID 17808)
-- Name: issue_ticket after_ticket_delete; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER after_ticket_delete AFTER DELETE ON public.issue_ticket FOR EACH ROW EXECUTE FUNCTION public.check_wired_tickets();


--
-- TOC entry 3851 (class 2620 OID 17810)
-- Name: launch approximate_duration_trigger; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER approximate_duration_trigger BEFORE INSERT ON public.launch FOR EACH ROW EXECUTE FUNCTION public.count_approximate_duration();


--
-- TOC entry 3857 (class 2620 OID 17818)
-- Name: issue before_issue_delete; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER before_issue_delete BEFORE DELETE ON public.issue FOR EACH ROW EXECUTE FUNCTION public.delete_defect_statistics();


--
-- TOC entry 3854 (class 2620 OID 17820)
-- Name: test_item_results before_item_delete; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER before_item_delete BEFORE DELETE ON public.test_item_results FOR EACH ROW EXECUTE FUNCTION public.decrease_statistics();


--
-- TOC entry 3852 (class 2620 OID 17809)
-- Name: launch last_launch_number_trigger; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER last_launch_number_trigger BEFORE INSERT ON public.launch FOR EACH ROW EXECUTE FUNCTION public.get_last_launch_number();


--
-- TOC entry 3850 (class 2620 OID 18421)
-- Name: users update_owner_name_on_user_delete; Type: TRIGGER; Schema: public; Owner: rpuser
--

CREATE TRIGGER update_owner_name_on_user_delete AFTER DELETE ON public.users FOR EACH ROW EXECUTE FUNCTION public.change_user_name_on_delete();


--
-- TOC entry 3849 (class 2606 OID 18408)
-- Name: activity activity_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3848 (class 2606 OID 18383)
-- Name: api_keys api_keys_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 3809 (class 2606 OID 17295)
-- Name: content_field content_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.content_field
    ADD CONSTRAINT content_field_id_fkey FOREIGN KEY (id) REFERENCES public.widget(id) ON DELETE CASCADE;


--
-- TOC entry 3807 (class 2606 OID 17271)
-- Name: dashboard dashboard_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.dashboard
    ADD CONSTRAINT dashboard_id_fk FOREIGN KEY (id) REFERENCES public.owned_entity(id) ON DELETE CASCADE;


--
-- TOC entry 3810 (class 2606 OID 17314)
-- Name: dashboard_widget dashboard_widget_dashboard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.dashboard_widget
    ADD CONSTRAINT dashboard_widget_dashboard_id_fkey FOREIGN KEY (dashboard_id) REFERENCES public.dashboard(id) ON DELETE CASCADE;


--
-- TOC entry 3811 (class 2606 OID 17319)
-- Name: dashboard_widget dashboard_widget_widget_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.dashboard_widget
    ADD CONSTRAINT dashboard_widget_widget_id_fkey FOREIGN KEY (widget_id) REFERENCES public.widget(id) ON DELETE CASCADE;


--
-- TOC entry 3805 (class 2606 OID 17238)
-- Name: filter_condition filter_condition_filter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.filter_condition
    ADD CONSTRAINT filter_condition_filter_id_fkey FOREIGN KEY (filter_id) REFERENCES public.filter(id) ON DELETE CASCADE;


--
-- TOC entry 3804 (class 2606 OID 17222)
-- Name: filter filter_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.filter
    ADD CONSTRAINT filter_id_fk FOREIGN KEY (id) REFERENCES public.owned_entity(id) ON DELETE CASCADE;


--
-- TOC entry 3806 (class 2606 OID 17256)
-- Name: filter_sort filter_sort_filter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.filter_sort
    ADD CONSTRAINT filter_sort_filter_id_fkey FOREIGN KEY (filter_id) REFERENCES public.filter(id) ON DELETE CASCADE;


--
-- TOC entry 3801 (class 2606 OID 17101)
-- Name: integration integration_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.integration
    ADD CONSTRAINT integration_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3802 (class 2606 OID 17106)
-- Name: integration integration_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.integration
    ADD CONSTRAINT integration_type_fkey FOREIGN KEY (type) REFERENCES public.integration_type(id) ON DELETE CASCADE;


--
-- TOC entry 3839 (class 2606 OID 17692)
-- Name: issue issue_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.test_item_results(result_id) ON DELETE CASCADE;


--
-- TOC entry 3840 (class 2606 OID 17697)
-- Name: issue issue_issue_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_issue_type_fkey FOREIGN KEY (issue_type) REFERENCES public.issue_type(id) ON DELETE CASCADE;


--
-- TOC entry 3841 (class 2606 OID 17721)
-- Name: issue_ticket issue_ticket_issue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_ticket
    ADD CONSTRAINT issue_ticket_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issue(issue_id) ON DELETE CASCADE;


--
-- TOC entry 3842 (class 2606 OID 17726)
-- Name: issue_ticket issue_ticket_ticket_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_ticket
    ADD CONSTRAINT issue_ticket_ticket_id_fkey FOREIGN KEY (ticket_id) REFERENCES public.ticket(id);


--
-- TOC entry 3833 (class 2606 OID 17620)
-- Name: issue_type issue_type_issue_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_type
    ADD CONSTRAINT issue_type_issue_group_id_fkey FOREIGN KEY (issue_group_id) REFERENCES public.issue_group(issue_group_id) ON DELETE CASCADE;


--
-- TOC entry 3837 (class 2606 OID 17677)
-- Name: issue_type_project issue_type_project_issue_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_type_project
    ADD CONSTRAINT issue_type_project_issue_type_id_fkey FOREIGN KEY (issue_type_id) REFERENCES public.issue_type(id) ON DELETE CASCADE;


--
-- TOC entry 3838 (class 2606 OID 17672)
-- Name: issue_type_project issue_type_project_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.issue_type_project
    ADD CONSTRAINT issue_type_project_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3825 (class 2606 OID 17497)
-- Name: item_attribute item_attribute_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.item_attribute
    ADD CONSTRAINT item_attribute_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;


--
-- TOC entry 3826 (class 2606 OID 17502)
-- Name: item_attribute item_attribute_launch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.item_attribute
    ADD CONSTRAINT item_attribute_launch_id_fkey FOREIGN KEY (launch_id) REFERENCES public.launch(id) ON DELETE CASCADE;


--
-- TOC entry 3797 (class 2606 OID 17031)
-- Name: launch_attribute_rules launch_attribute_rules_sender_case_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch_attribute_rules
    ADD CONSTRAINT launch_attribute_rules_sender_case_id_fkey FOREIGN KEY (sender_case_id) REFERENCES public.sender_case(id) ON DELETE CASCADE;


--
-- TOC entry 3796 (class 2606 OID 17014)
-- Name: launch_names launch_names_sender_case_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch_names
    ADD CONSTRAINT launch_names_sender_case_id_fkey FOREIGN KEY (sender_case_id) REFERENCES public.sender_case(id) ON DELETE CASCADE;


--
-- TOC entry 3816 (class 2606 OID 17381)
-- Name: launch_number launch_number_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch_number
    ADD CONSTRAINT launch_number_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3814 (class 2606 OID 17358)
-- Name: launch launch_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch
    ADD CONSTRAINT launch_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3815 (class 2606 OID 17363)
-- Name: launch launch_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.launch
    ADD CONSTRAINT launch_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- TOC entry 3827 (class 2606 OID 17547)
-- Name: log log_attachment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_attachment_id_fkey FOREIGN KEY (attachment_id) REFERENCES public.attachment(id) ON DELETE SET NULL;


--
-- TOC entry 3828 (class 2606 OID 17537)
-- Name: log log_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;


--
-- TOC entry 3829 (class 2606 OID 17542)
-- Name: log log_launch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_launch_id_fkey FOREIGN KEY (launch_id) REFERENCES public.launch(id) ON DELETE CASCADE;


--
-- TOC entry 3794 (class 2606 OID 16989)
-- Name: oauth_registration_restriction oauth_registration_restriction_oauth_registration_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration_restriction
    ADD CONSTRAINT oauth_registration_restriction_oauth_registration_fk_fkey FOREIGN KEY (oauth_registration_fk) REFERENCES public.oauth_registration(id) ON DELETE CASCADE;


--
-- TOC entry 3793 (class 2606 OID 16971)
-- Name: oauth_registration_scope oauth_registration_scope_oauth_registration_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.oauth_registration_scope
    ADD CONSTRAINT oauth_registration_scope_oauth_registration_fk_fkey FOREIGN KEY (oauth_registration_fk) REFERENCES public.oauth_registration(id) ON DELETE CASCADE;


--
-- TOC entry 3824 (class 2606 OID 17478)
-- Name: parameter parameter_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT parameter_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;


--
-- TOC entry 3821 (class 2606 OID 17450)
-- Name: pattern_template pattern_template_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.pattern_template
    ADD CONSTRAINT pattern_template_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3822 (class 2606 OID 17465)
-- Name: pattern_template_test_item pattern_template_test_item_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.pattern_template_test_item
    ADD CONSTRAINT pattern_template_test_item_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;


--
-- TOC entry 3823 (class 2606 OID 17460)
-- Name: pattern_template_test_item pattern_template_test_item_pattern_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.pattern_template_test_item
    ADD CONSTRAINT pattern_template_test_item_pattern_id_fkey FOREIGN KEY (pattern_id) REFERENCES public.pattern_template(id) ON DELETE CASCADE;


--
-- TOC entry 3799 (class 2606 OID 17065)
-- Name: project_attribute project_attribute_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project_attribute
    ADD CONSTRAINT project_attribute_attribute_id_fkey FOREIGN KEY (attribute_id) REFERENCES public.attribute(id) ON DELETE CASCADE;


--
-- TOC entry 3800 (class 2606 OID 17070)
-- Name: project_attribute project_attribute_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project_attribute
    ADD CONSTRAINT project_attribute_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3791 (class 2606 OID 16927)
-- Name: project_user project_user_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3792 (class 2606 OID 16922)
-- Name: project_user project_user_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 3798 (class 2606 OID 17040)
-- Name: recipients recipients_sender_case_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.recipients
    ADD CONSTRAINT recipients_sender_case_id_fkey FOREIGN KEY (sender_case_id) REFERENCES public.sender_case(id) ON DELETE CASCADE;


--
-- TOC entry 3795 (class 2606 OID 17005)
-- Name: sender_case sender_case_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.sender_case
    ADD CONSTRAINT sender_case_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3803 (class 2606 OID 17207)
-- Name: owned_entity shareable_entity_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.owned_entity
    ADD CONSTRAINT shareable_entity_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3834 (class 2606 OID 17655)
-- Name: statistics statistics_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;


--
-- TOC entry 3835 (class 2606 OID 17650)
-- Name: statistics statistics_launch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_launch_id_fkey FOREIGN KEY (launch_id) REFERENCES public.launch(id) ON DELETE CASCADE;


--
-- TOC entry 3836 (class 2606 OID 17660)
-- Name: statistics statistics_statistics_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_statistics_field_id_fkey FOREIGN KEY (statistics_field_id) REFERENCES public.statistics_field(sf_id) ON DELETE CASCADE;


--
-- TOC entry 3817 (class 2606 OID 17412)
-- Name: test_item test_item_launch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_launch_id_fkey FOREIGN KEY (launch_id) REFERENCES public.launch(id) ON DELETE CASCADE;


--
-- TOC entry 3818 (class 2606 OID 17402)
-- Name: test_item test_item_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;


--
-- TOC entry 3820 (class 2606 OID 17430)
-- Name: test_item_results test_item_results_result_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.test_item_results
    ADD CONSTRAINT test_item_results_result_id_fkey FOREIGN KEY (result_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;


--
-- TOC entry 3819 (class 2606 OID 17407)
-- Name: test_item test_item_retry_of_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_retry_of_fkey FOREIGN KEY (retry_of) REFERENCES public.test_item(item_id) ON DELETE CASCADE;


--
-- TOC entry 3790 (class 2606 OID 18426)
-- Name: user_creation_bid user_creation_bid_inviting_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.user_creation_bid
    ADD CONSTRAINT user_creation_bid_inviting_user_id_fkey FOREIGN KEY (inviting_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 3830 (class 2606 OID 17597)
-- Name: user_preference user_preference_filter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_filter_id_fkey FOREIGN KEY (filter_id) REFERENCES public.filter(id) ON DELETE CASCADE;


--
-- TOC entry 3831 (class 2606 OID 17587)
-- Name: user_preference user_preference_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;


--
-- TOC entry 3832 (class 2606 OID 17592)
-- Name: user_preference user_preference_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 3812 (class 2606 OID 17334)
-- Name: widget_filter widget_filter_filter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.widget_filter
    ADD CONSTRAINT widget_filter_filter_id_fkey FOREIGN KEY (filter_id) REFERENCES public.filter(id) ON DELETE CASCADE;


--
-- TOC entry 3813 (class 2606 OID 17329)
-- Name: widget_filter widget_filter_widget_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.widget_filter
    ADD CONSTRAINT widget_filter_widget_id_fkey FOREIGN KEY (widget_id) REFERENCES public.widget(id) ON DELETE CASCADE;


--
-- TOC entry 3808 (class 2606 OID 17284)
-- Name: widget widget_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: rpuser
--

ALTER TABLE ONLY public.widget
    ADD CONSTRAINT widget_id_fk FOREIGN KEY (id) REFERENCES public.owned_entity(id) ON DELETE CASCADE;


--
-- TOC entry 3847 (class 2606 OID 17896)
-- Name: scheduler_blob_triggers scheduler_blob_triggers_sched_name_trigger_name_trigger_gr_fkey; Type: FK CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_blob_triggers
    ADD CONSTRAINT scheduler_blob_triggers_sched_name_trigger_name_trigger_gr_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES quartz.scheduler_triggers(sched_name, trigger_name, trigger_group);


--
-- TOC entry 3845 (class 2606 OID 17870)
-- Name: scheduler_cron_triggers scheduler_cron_triggers_sched_name_trigger_name_trigger_gr_fkey; Type: FK CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_cron_triggers
    ADD CONSTRAINT scheduler_cron_triggers_sched_name_trigger_name_trigger_gr_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES quartz.scheduler_triggers(sched_name, trigger_name, trigger_group);


--
-- TOC entry 3844 (class 2606 OID 17857)
-- Name: scheduler_simple_triggers scheduler_simple_triggers_sched_name_trigger_name_trigger__fkey; Type: FK CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_simple_triggers
    ADD CONSTRAINT scheduler_simple_triggers_sched_name_trigger_name_trigger__fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES quartz.scheduler_triggers(sched_name, trigger_name, trigger_group);


--
-- TOC entry 3846 (class 2606 OID 17883)
-- Name: scheduler_simprop_triggers scheduler_simprop_triggers_sched_name_trigger_name_trigger_fkey; Type: FK CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_simprop_triggers
    ADD CONSTRAINT scheduler_simprop_triggers_sched_name_trigger_name_trigger_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES quartz.scheduler_triggers(sched_name, trigger_name, trigger_group);


--
-- TOC entry 3843 (class 2606 OID 17844)
-- Name: scheduler_triggers scheduler_triggers_sched_name_job_name_job_group_fkey; Type: FK CONSTRAINT; Schema: quartz; Owner: rpuser
--

ALTER TABLE ONLY quartz.scheduler_triggers
    ADD CONSTRAINT scheduler_triggers_sched_name_job_name_job_group_fkey FOREIGN KEY (sched_name, job_name, job_group) REFERENCES quartz.scheduler_job_details(sched_name, job_name, job_group);


--
-- TOC entry 4090 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: rpuser
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-28 18:04:45

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-03-28 18:04:45

--
-- PostgreSQL database cluster dump complete
--

