failed to get console mode for stdout: The handle is invalid.
PGDMP                         |            reportportal    12.17    12.17    ÷           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ≈           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            °           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ∙           1262    16384    reportportal    DATABASE     |   CREATE DATABASE reportportal WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE reportportal;
                rpuser    false                        2615    17827    quartz    SCHEMA        CREATE SCHEMA quartz;
    DROP SCHEMA quartz;
                rpuser    false                        3079    16392    ltree 	   EXTENSION     9   CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;
    DROP EXTENSION ltree;
                   false            ·           0    0    EXTENSION ltree    COMMENT     Q   COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';
                        false    4                        3079    16604    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                   false            √           0    0    EXTENSION pg_trgm    COMMENT     e   COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
                        false    2                        3079    16567    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            ⁿ           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    3            å           1247    16730    access_token_type_enum    TYPE     j   CREATE TYPE public.access_token_type_enum AS ENUM (
    'OAUTH',
    'NTLM',
    'APIKEY',
    'BASIC'
);
 )   DROP TYPE public.access_token_type_enum;
       public          rpuser    false            â           1247    16720    auth_type_enum    TYPE     b   CREATE TYPE public.auth_type_enum AS ENUM (
    'OAUTH',
    'NTLM',
    'APIKEY',
    'BASIC'
);
 !   DROP TYPE public.auth_type_enum;
       public          rpuser    false            ò           1247    16806    filter_condition_enum    TYPE       CREATE TYPE public.filter_condition_enum AS ENUM (
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
 (   DROP TYPE public.filter_condition_enum;
       public          rpuser    false            Å           1247    16784    integration_auth_flow_enum    TYPE     y   CREATE TYPE public.integration_auth_flow_enum AS ENUM (
    'OAUTH',
    'BASIC',
    'TOKEN',
    'FORM',
    'LDAP'
);
 -   DROP TYPE public.integration_auth_flow_enum;
       public          rpuser    false            Æ           1247    16796    integration_group_enum    TYPE     n   CREATE TYPE public.integration_group_enum AS ENUM (
    'BTS',
    'NOTIFICATION',
    'AUTH',
    'OTHER'
);
 )   DROP TYPE public.integration_group_enum;
       public          rpuser    false            î           1247    16772    issue_group_enum    TYPE     ö   CREATE TYPE public.issue_group_enum AS ENUM (
    'PRODUCT_BUG',
    'AUTOMATION_BUG',
    'SYSTEM_ISSUE',
    'TO_INVESTIGATE',
    'NO_DEFECT'
);
 #   DROP TYPE public.issue_group_enum;
       public          rpuser    false            Ç           1247    16714    launch_mode_enum    TYPE     L   CREATE TYPE public.launch_mode_enum AS ENUM (
    'DEFAULT',
    'DEBUG'
);
 #   DROP TYPE public.launch_mode_enum;
       public          rpuser    false            í           1247    18344    logical_operator_enum    TYPE     J   CREATE TYPE public.logical_operator_enum AS ENUM (
    'AND',
    'OR'
);
 (   DROP TYPE public.logical_operator_enum;
       public          rpuser    false            ÿ           1247    16832    password_encoder_type    TYPE     s   CREATE TYPE public.password_encoder_type AS ENUM (
    'PLAIN',
    'SHA',
    'LDAP_SHA',
    'MD4',
    'MD5'
);
 (   DROP TYPE public.password_encoder_type;
       public          rpuser    false            }           1247    16686    project_role_enum    TYPE     v   CREATE TYPE public.project_role_enum AS ENUM (
    'OPERATOR',
    'CUSTOMER',
    'MEMBER',
    'PROJECT_MANAGER'
);
 $   DROP TYPE public.project_role_enum;
       public          rpuser    false            ¢           1247    16844    sort_direction_enum    TYPE     J   CREATE TYPE public.sort_direction_enum AS ENUM (
    'ASC',
    'DESC'
);
 &   DROP TYPE public.sort_direction_enum;
       public          rpuser    false            à           1247    18058    status_enum    TYPE     ├   CREATE TYPE public.status_enum AS ENUM (
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
    DROP TYPE public.status_enum;
       public          rpuser    false            ë           1247    16740    test_item_type_enum    TYPE     :  CREATE TYPE public.test_item_type_enum AS ENUM (
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
 &   DROP TYPE public.test_item_type_enum;
       public          rpuser    false            ╘           1255    18420    change_user_name_on_delete()    FUNCTION     á  CREATE FUNCTION public.change_user_name_on_delete() RETURNS trigger
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
 3   DROP FUNCTION public.change_user_name_on_delete();
       public          rpuser    false            ╔           1255    17807    check_wired_tickets()    FUNCTION     0  CREATE FUNCTION public.check_wired_tickets() RETURNS trigger
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
 ,   DROP FUNCTION public.check_wired_tickets();
       public          rpuser    false            ╚           1255    17806    count_approximate_duration()    FUNCTION     ▌  CREATE FUNCTION public.count_approximate_duration() RETURNS trigger
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
 3   DROP FUNCTION public.count_approximate_duration();
       public          rpuser    false            ╧           1255    17819    decrease_statistics()    FUNCTION     Ä  CREATE FUNCTION public.decrease_statistics() RETURNS trigger
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
 ,   DROP FUNCTION public.decrease_statistics();
       public          rpuser    false            ╦           1255    17817    delete_defect_statistics()    FUNCTION       CREATE FUNCTION public.delete_defect_statistics() RETURNS trigger
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
 1   DROP FUNCTION public.delete_defect_statistics();
       public          rpuser    false            ╨           1255    18102    delete_item_statistics(bigint)    FUNCTION     U  CREATE FUNCTION public.delete_item_statistics(test_item_id bigint) RETURNS integer
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
 B   DROP FUNCTION public.delete_item_statistics(test_item_id bigint);
       public          rpuser    false            ╥           1255    18195    fill_attachment_creation_date() 	   PROCEDURE       CREATE PROCEDURE public.fill_attachment_creation_date()
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
 7   DROP PROCEDURE public.fill_attachment_creation_date();
       public          rpuser    false            ╟           1255    17805    get_last_launch_number()    FUNCTION     ┤  CREATE FUNCTION public.get_last_launch_number() RETURNS trigger
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
 /   DROP FUNCTION public.get_last_launch_number();
       public          rpuser    false            ╠           1255    17804    handle_retries(bigint)    FUNCTION     î  CREATE FUNCTION public.handle_retries(itemid bigint) RETURNS integer
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
 4   DROP FUNCTION public.handle_retries(itemid bigint);
       public          rpuser    false            ╤           1255    18103    handle_retry(bigint, bigint)    FUNCTION     P  CREATE FUNCTION public.handle_retry(retry_id bigint, retry_parent_id bigint) RETURNS integer
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
 L   DROP FUNCTION public.handle_retry(retry_id bigint, retry_parent_id bigint);
       public          rpuser    false            ═           1255    17813    increment_defect_statistics()    FUNCTION     Å  CREATE FUNCTION public.increment_defect_statistics() RETURNS trigger
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
 4   DROP FUNCTION public.increment_defect_statistics();
       public          rpuser    false            ╞           1255    17802    merge_launch(bigint)    FUNCTION     8*  CREATE FUNCTION public.merge_launch(launchid bigint) RETURNS integer
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
 4   DROP FUNCTION public.merge_launch(launchid bigint);
       public          rpuser    false            ┼           1255    17803    retries_statistics(bigint)    FUNCTION       CREATE FUNCTION public.retries_statistics(cur_launch_id bigint) RETURNS integer
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
 ?   DROP FUNCTION public.retries_statistics(cur_launch_id bigint);
       public          rpuser    false            ╬           1255    17815    update_defect_statistics()    FUNCTION     ε  CREATE FUNCTION public.update_defect_statistics() RETURNS trigger
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
 1   DROP FUNCTION public.update_defect_statistics();
       public          rpuser    false            ╩           1255    17811    update_executions_statistics()    FUNCTION     ┬  CREATE FUNCTION public.update_executions_statistics() RETURNS trigger
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
 5   DROP FUNCTION public.update_executions_statistics();
       public          rpuser    false            ╙           1255    18240 !   update_job_attributes_in_bounds()    FUNCTION     ⌠  CREATE FUNCTION public.update_job_attributes_in_bounds() RETURNS integer
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
 8   DROP FUNCTION public.update_job_attributes_in_bounds();
       public          rpuser    false            0           1259    18399    activity    TABLE       CREATE TABLE public.activity (
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
    DROP TABLE public.activity;
       public         heap    rpuser    false            /           1259    18397    activity_id_seq    SEQUENCE     x   CREATE SEQUENCE public.activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.activity_id_seq;
       public          rpuser    false    304            ²           0    0    activity_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.activity_id_seq OWNED BY public.activity.id;
          public          rpuser    false    303            .           1259    18372    api_keys    TABLE     █   CREATE TABLE public.api_keys (
    id bigint NOT NULL,
    name character varying(255),
    hash character varying(255),
    created_at timestamp without time zone NOT NULL,
    user_id bigint,
    last_used_at date
);
    DROP TABLE public.api_keys;
       public         heap    rpuser    false            -           1259    18370    api_keys_id_seq    SEQUENCE     x   CREATE SEQUENCE public.api_keys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.api_keys_id_seq;
       public          rpuser    false    302            ■           0    0    api_keys_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.api_keys_id_seq OWNED BY public.api_keys.id;
          public          rpuser    false    301                       1259    17511 
   attachment    TABLE     L  CREATE TABLE public.attachment (
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
    DROP TABLE public.attachment;
       public         heap    rpuser    false            %           1259    18217    attachment_deletion    TABLE     ▀   CREATE TABLE public.attachment_deletion (
    id bigint NOT NULL,
    file_id text NOT NULL,
    thumbnail_id text,
    creation_attachment_date timestamp without time zone,
    deletion_date timestamp without time zone
);
 '   DROP TABLE public.attachment_deletion;
       public         heap    rpuser    false                       1259    17509    attachment_id_seq    SEQUENCE     z   CREATE SEQUENCE public.attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.attachment_id_seq;
       public          rpuser    false    263                        0    0    attachment_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.attachment_id_seq OWNED BY public.attachment.id;
          public          rpuser    false    262            σ            1259    17048 	   attribute    TABLE     [   CREATE TABLE public.attribute (
    id bigint NOT NULL,
    name character varying(256)
);
    DROP TABLE public.attribute;
       public         heap    rpuser    false            Σ            1259    17046    attribute_id_seq    SEQUENCE     y   CREATE SEQUENCE public.attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.attribute_id_seq;
       public          rpuser    false    229                        0    0    attribute_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.attribute_id_seq OWNED BY public.attribute.id;
          public          rpuser    false    228            '           1259    18263    clusters    TABLE     ▒   CREATE TABLE public.clusters (
    id bigint NOT NULL,
    index_id bigint NOT NULL,
    project_id bigint NOT NULL,
    launch_id bigint NOT NULL,
    message text NOT NULL
);
    DROP TABLE public.clusters;
       public         heap    rpuser    false            &           1259    18261    clusters_id_seq    SEQUENCE     x   CREATE SEQUENCE public.clusters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clusters_id_seq;
       public          rpuser    false    295                       0    0    clusters_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clusters_id_seq OWNED BY public.clusters.id;
          public          rpuser    false    294            (           1259    18277    clusters_test_item    TABLE     h   CREATE TABLE public.clusters_test_item (
    cluster_id bigint NOT NULL,
    item_id bigint NOT NULL
);
 &   DROP TABLE public.clusters_test_item;
       public         heap    rpuser    false            ÷            1259    17289 
   content_field    TABLE     [   CREATE TABLE public.content_field (
    id bigint,
    field character varying NOT NULL
);
 !   DROP TABLE public.content_field;
       public         heap    rpuser    false            ⌠            1259    17262 	   dashboard    TABLE     ╚   CREATE TABLE public.dashboard (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying,
    creation_date timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.dashboard;
       public         heap    rpuser    false            ≈            1259    17302    dashboard_widget    TABLE     ╕  CREATE TABLE public.dashboard_widget (
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
 $   DROP TABLE public.dashboard_widget;
       public         heap    rpuser    false            ∩            1259    17214    filter    TABLE     ª   CREATE TABLE public.filter (
    id bigint NOT NULL,
    name character varying NOT NULL,
    target character varying NOT NULL,
    description character varying
);
    DROP TABLE public.filter;
       public         heap    rpuser    false            ±            1259    17229    filter_condition    TABLE       CREATE TABLE public.filter_condition (
    id bigint NOT NULL,
    filter_id bigint,
    condition public.filter_condition_enum NOT NULL,
    value character varying NOT NULL,
    search_criteria character varying NOT NULL,
    negative boolean NOT NULL
);
 $   DROP TABLE public.filter_condition;
       public         heap    rpuser    false    917            ≡            1259    17227    filter_condition_id_seq    SEQUENCE     Ç   CREATE SEQUENCE public.filter_condition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.filter_condition_id_seq;
       public          rpuser    false    241                       0    0    filter_condition_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.filter_condition_id_seq OWNED BY public.filter_condition.id;
          public          rpuser    false    240            ≤            1259    17246    filter_sort    TABLE     ╒   CREATE TABLE public.filter_sort (
    id bigint NOT NULL,
    filter_id bigint,
    field character varying NOT NULL,
    direction public.sort_direction_enum DEFAULT 'ASC'::public.sort_direction_enum NOT NULL
);
    DROP TABLE public.filter_sort;
       public         heap    rpuser    false    923    923            ≥            1259    17244    filter_sort_id_seq    SEQUENCE     {   CREATE SEQUENCE public.filter_sort_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.filter_sort_id_seq;
       public          rpuser    false    243                       0    0    filter_sort_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.filter_sort_id_seq OWNED BY public.filter_sort.id;
          public          rpuser    false    242            ∞            1259    17091    integration    TABLE     )  CREATE TABLE public.integration (
    id integer NOT NULL,
    name character varying NOT NULL,
    project_id bigint,
    type integer,
    enabled boolean NOT NULL,
    params jsonb,
    creator character varying NOT NULL,
    creation_date timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.integration;
       public         heap    rpuser    false            δ            1259    17089    integration_id_seq    SEQUENCE     è   CREATE SEQUENCE public.integration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.integration_id_seq;
       public          rpuser    false    236                       0    0    integration_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.integration_id_seq OWNED BY public.integration.id;
          public          rpuser    false    235            Ω            1259    17077    integration_type    TABLE     K  CREATE TABLE public.integration_type (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    auth_flow public.integration_auth_flow_enum,
    creation_date timestamp without time zone DEFAULT now() NOT NULL,
    group_type public.integration_group_enum NOT NULL,
    enabled boolean NOT NULL,
    details jsonb
);
 $   DROP TABLE public.integration_type;
       public         heap    rpuser    false    914    911            Θ            1259    17075    integration_type_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.integration_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.integration_type_id_seq;
       public          rpuser    false    234                       0    0    integration_type_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.integration_type_id_seq OWNED BY public.integration_type.id;
          public          rpuser    false    233                       1259    17682    issue    TABLE     ├   CREATE TABLE public.issue (
    issue_id bigint NOT NULL,
    issue_type bigint,
    issue_description text,
    auto_analyzed boolean DEFAULT false,
    ignore_analyzer boolean DEFAULT false
);
    DROP TABLE public.issue;
       public         heap    rpuser    false            
           1259    17604    issue_group    TABLE     |   CREATE TABLE public.issue_group (
    issue_group_id smallint NOT NULL,
    issue_group public.issue_group_enum NOT NULL
);
    DROP TABLE public.issue_group;
       public         heap    rpuser    false    908                       1259    17602    issue_group_issue_group_id_seq    SEQUENCE     ù   CREATE SEQUENCE public.issue_group_issue_group_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.issue_group_issue_group_id_seq;
       public          rpuser    false    269                       0    0    issue_group_issue_group_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.issue_group_issue_group_id_seq OWNED BY public.issue_group.issue_group_id;
          public          rpuser    false    268                       1259    17716    issue_ticket    TABLE     b   CREATE TABLE public.issue_ticket (
    issue_id bigint NOT NULL,
    ticket_id bigint NOT NULL
);
     DROP TABLE public.issue_ticket;
       public         heap    rpuser    false                       1259    17612 
   issue_type    TABLE       CREATE TABLE public.issue_type (
    id bigint NOT NULL,
    issue_group_id smallint,
    locator character varying(64) NOT NULL,
    issue_name character varying(256) NOT NULL,
    abbreviation character varying(64) NOT NULL,
    hex_color character varying(7) NOT NULL
);
    DROP TABLE public.issue_type;
       public         heap    rpuser    false                       1259    17610    issue_type_id_seq    SEQUENCE     z   CREATE SEQUENCE public.issue_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.issue_type_id_seq;
       public          rpuser    false    271                       0    0    issue_type_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.issue_type_id_seq OWNED BY public.issue_type.id;
          public          rpuser    false    270                       1259    17667    issue_type_project    TABLE     n   CREATE TABLE public.issue_type_project (
    project_id bigint NOT NULL,
    issue_type_id bigint NOT NULL
);
 &   DROP TABLE public.issue_type_project;
       public         heap    rpuser    false                       1259    17486    item_attribute    TABLE     ^  CREATE TABLE public.item_attribute (
    id bigint NOT NULL,
    key character varying,
    value character varying NOT NULL,
    item_id bigint,
    launch_id bigint,
    system boolean DEFAULT false,
    CONSTRAINT item_attribute_check CHECK ((((item_id IS NOT NULL) AND (launch_id IS NULL)) OR ((item_id IS NULL) AND (launch_id IS NOT NULL))))
);
 "   DROP TABLE public.item_attribute;
       public         heap    rpuser    false                       1259    17484    item_attribute_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.item_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.item_attribute_id_seq;
       public          rpuser    false    261                       0    0    item_attribute_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.item_attribute_id_seq OWNED BY public.item_attribute.id;
          public          rpuser    false    260            ·            1259    17341    launch    TABLE     z  CREATE TABLE public.launch (
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
    DROP TABLE public.launch;
       public         heap    rpuser    false    896    1157            Γ            1259    17022    launch_attribute_rules    TABLE     ╢   CREATE TABLE public.launch_attribute_rules (
    id bigint NOT NULL,
    sender_case_id bigint NOT NULL,
    key character varying(512),
    value character varying(512) NOT NULL
);
 *   DROP TABLE public.launch_attribute_rules;
       public         heap    rpuser    false            ß            1259    17020    launch_attribute_rules_id_seq    SEQUENCE     å   CREATE SEQUENCE public.launch_attribute_rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.launch_attribute_rules_id_seq;
       public          rpuser    false    226            	           0    0    launch_attribute_rules_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.launch_attribute_rules_id_seq OWNED BY public.launch_attribute_rules.id;
          public          rpuser    false    225            ∙            1259    17339 
   launch_id_seq    SEQUENCE     v   CREATE SEQUENCE public.launch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.launch_id_seq;
       public          rpuser    false    250            
           0    0 
   launch_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.launch_id_seq OWNED BY public.launch.id;
          public          rpuser    false    249            α            1259    17011    launch_names    TABLE     h   CREATE TABLE public.launch_names (
    sender_case_id bigint,
    launch_name character varying(256)
);
     DROP TABLE public.launch_names;
       public         heap    rpuser    false            ⁿ            1259    17373 
   launch_number    TABLE     ¼   CREATE TABLE public.launch_number (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    launch_name character varying(256) NOT NULL,
    number integer NOT NULL
);
 !   DROP TABLE public.launch_number;
       public         heap    rpuser    false            √            1259    17371    launch_number_id_seq    SEQUENCE     }   CREATE SEQUENCE public.launch_number_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.launch_number_id_seq;
       public          rpuser    false    252                       0    0    launch_number_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.launch_number_id_seq OWNED BY public.launch_number.id;
          public          rpuser    false    251            	           1259    17525    log    TABLE     	  CREATE TABLE public.log (
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
    DROP TABLE public.log;
       public         heap    rpuser    false                       1259    17523 
   log_id_seq    SEQUENCE     s   CREATE SEQUENCE public.log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.log_id_seq;
       public          rpuser    false    265                       0    0 
   log_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.log_id_seq OWNED BY public.log.id;
          public          rpuser    false    264            ╪            1259    16951    oauth_registration    TABLE     O  CREATE TABLE public.oauth_registration (
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
 &   DROP TABLE public.oauth_registration;
       public         heap    rpuser    false            ▄            1259    16978    oauth_registration_restriction    TABLE     ╫   CREATE TABLE public.oauth_registration_restriction (
    id integer NOT NULL,
    oauth_registration_fk character varying(128),
    type character varying(256) NOT NULL,
    value character varying(256) NOT NULL
);
 2   DROP TABLE public.oauth_registration_restriction;
       public         heap    rpuser    false            █            1259    16976 %   oauth_registration_restriction_id_seq    SEQUENCE     ¥   CREATE SEQUENCE public.oauth_registration_restriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.oauth_registration_restriction_id_seq;
       public          rpuser    false    220            
           0    0 %   oauth_registration_restriction_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.oauth_registration_restriction_id_seq OWNED BY public.oauth_registration_restriction.id;
          public          rpuser    false    219            ┌            1259    16963    oauth_registration_scope    TABLE     ₧   CREATE TABLE public.oauth_registration_scope (
    id integer NOT NULL,
    oauth_registration_fk character varying(128),
    scope character varying(256)
);
 ,   DROP TABLE public.oauth_registration_scope;
       public         heap    rpuser    false            ┘            1259    16961    oauth_registration_scope_id_seq    SEQUENCE     ù   CREATE SEQUENCE public.oauth_registration_scope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.oauth_registration_scope_id_seq;
       public          rpuser    false    218                       0    0    oauth_registration_scope_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.oauth_registration_scope_id_seq OWNED BY public.oauth_registration_scope.id;
          public          rpuser    false    217            *           1259    18295 
   onboarding    TABLE     ╙   CREATE TABLE public.onboarding (
    id smallint NOT NULL,
    data text,
    page character varying(50) NOT NULL,
    available_from timestamp without time zone,
    available_to timestamp without time zone
);
    DROP TABLE public.onboarding;
       public         heap    rpuser    false            )           1259    18293    onboarding_id_seq    SEQUENCE     è   CREATE SEQUENCE public.onboarding_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.onboarding_id_seq;
       public          rpuser    false    298                       0    0    onboarding_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.onboarding_id_seq OWNED BY public.onboarding.id;
          public          rpuser    false    297            ε            1259    17192    owned_entity    TABLE     z   CREATE TABLE public.owned_entity (
    id bigint NOT NULL,
    owner character varying,
    project_id bigint NOT NULL
);
     DROP TABLE public.owned_entity;
       public         heap    rpuser    false                       1259    17472 	   parameter    TABLE     Ç   CREATE TABLE public.parameter (
    item_id bigint,
    key character varying NOT NULL,
    value character varying NOT NULL
);
    DROP TABLE public.parameter;
       public         heap    rpuser    false                       1259    17439    pattern_template    TABLE     ∩   CREATE TABLE public.pattern_template (
    id bigint NOT NULL,
    name character varying NOT NULL,
    value character varying NOT NULL,
    type character varying NOT NULL,
    enabled boolean NOT NULL,
    project_id bigint NOT NULL
);
 $   DROP TABLE public.pattern_template;
       public         heap    rpuser    false                        1259    17437    pattern_template_id_seq    SEQUENCE     Ç   CREATE SEQUENCE public.pattern_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pattern_template_id_seq;
       public          rpuser    false    257                       0    0    pattern_template_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pattern_template_id_seq OWNED BY public.pattern_template.id;
          public          rpuser    false    256                       1259    17455    pattern_template_test_item    TABLE     p   CREATE TABLE public.pattern_template_test_item (
    pattern_id bigint NOT NULL,
    item_id bigint NOT NULL
);
 .   DROP TABLE public.pattern_template_test_item;
       public         heap    rpuser    false            ╥            1259    16864    project    TABLE     9  CREATE TABLE public.project (
    id bigint NOT NULL,
    name character varying NOT NULL,
    project_type character varying NOT NULL,
    organization character varying,
    creation_date timestamp without time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    allocated_storage bigint DEFAULT 0 NOT NULL
);
    DROP TABLE public.project;
       public         heap    rpuser    false            Φ            1259    17058    project_attribute    TABLE     ù   CREATE TABLE public.project_attribute (
    attribute_id bigint NOT NULL,
    value character varying(256) NOT NULL,
    project_id bigint NOT NULL
);
 %   DROP TABLE public.project_attribute;
       public         heap    rpuser    false            µ            1259    17054 "   project_attribute_attribute_id_seq    SEQUENCE     ï   CREATE SEQUENCE public.project_attribute_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.project_attribute_attribute_id_seq;
       public          rpuser    false    232                       0    0 "   project_attribute_attribute_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.project_attribute_attribute_id_seq OWNED BY public.project_attribute.attribute_id;
          public          rpuser    false    230            τ            1259    17056     project_attribute_project_id_seq    SEQUENCE     ë   CREATE SEQUENCE public.project_attribute_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.project_attribute_project_id_seq;
       public          rpuser    false    232                       0    0     project_attribute_project_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.project_attribute_project_id_seq OWNED BY public.project_attribute.project_id;
          public          rpuser    false    231            ╤            1259    16862    project_id_seq    SEQUENCE     w   CREATE SEQUENCE public.project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.project_id_seq;
       public          rpuser    false    210                       0    0    project_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.project_id_seq OWNED BY public.project.id;
          public          rpuser    false    209            ╫            1259    16917    project_user    TABLE     û   CREATE TABLE public.project_user (
    user_id bigint NOT NULL,
    project_id bigint NOT NULL,
    project_role public.project_role_enum NOT NULL
);
     DROP TABLE public.project_user;
       public         heap    rpuser    false    893            π            1259    17037 
   recipients    TABLE     d   CREATE TABLE public.recipients (
    sender_case_id bigint,
    recipient character varying(256)
);
    DROP TABLE public.recipients;
       public         heap    rpuser    false            ╘            1259    16891    restore_password_bid    TABLE     ╡   CREATE TABLE public.restore_password_bid (
    uuid character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT now(),
    email character varying NOT NULL
);
 (   DROP TABLE public.restore_password_bid;
       public         heap    rpuser    false            ╬            1259    16385    schema_migrations    TABLE     c   CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    dirty boolean NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    rpuser    false            ▀            1259    16998    sender_case    TABLE     O  CREATE TABLE public.sender_case (
    id bigint NOT NULL,
    send_case character varying(256) NOT NULL,
    project_id bigint NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    attributes_operator public.logical_operator_enum DEFAULT 'AND'::public.logical_operator_enum NOT NULL,
    rule_name character varying(55) NOT NULL
);
    DROP TABLE public.sender_case;
       public         heap    rpuser    false    1185    1185            ▌            1259    16994    sender_case_id_seq    SEQUENCE     {   CREATE SEQUENCE public.sender_case_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sender_case_id_seq;
       public          rpuser    false    223                       0    0    sender_case_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sender_case_id_seq OWNED BY public.sender_case.id;
          public          rpuser    false    221            ▐            1259    16996    sender_case_project_id_seq    SEQUENCE     â   CREATE SEQUENCE public.sender_case_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.sender_case_project_id_seq;
       public          rpuser    false    223                       0    0    sender_case_project_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.sender_case_project_id_seq OWNED BY public.sender_case.project_id;
          public          rpuser    false    222            ╨            1259    16851    server_settings    TABLE     â   CREATE TABLE public.server_settings (
    id smallint NOT NULL,
    key character varying NOT NULL,
    value character varying
);
 #   DROP TABLE public.server_settings;
       public         heap    rpuser    false            ╧            1259    16849    server_settings_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.server_settings_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.server_settings_id_seq;
       public          rpuser    false    208                       0    0    server_settings_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.server_settings_id_seq OWNED BY public.server_settings.id;
          public          rpuser    false    207            φ            1259    17190    shareable_entity_id_seq    SEQUENCE     Ç   CREATE SEQUENCE public.shareable_entity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.shareable_entity_id_seq;
       public          rpuser    false    238                       0    0    shareable_entity_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.shareable_entity_id_seq OWNED BY public.owned_entity.id;
          public          rpuser    false    237            $           1259    18208    shedlock    TABLE     Γ   CREATE TABLE public.shedlock (
    name character varying(64) NOT NULL,
    lock_until timestamp without time zone NOT NULL,
    locked_at timestamp without time zone NOT NULL,
    locked_by character varying(255) NOT NULL
);
    DROP TABLE public.shedlock;
       public         heap    rpuser    false            ,           1259    18330    stale_materialized_view    TABLE     ¬   CREATE TABLE public.stale_materialized_view (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    creation_date timestamp without time zone NOT NULL
);
 +   DROP TABLE public.stale_materialized_view;
       public         heap    rpuser    false            +           1259    18328    stale_materialized_view_id_seq    SEQUENCE     ç   CREATE SEQUENCE public.stale_materialized_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.stale_materialized_view_id_seq;
       public          rpuser    false    300                       0    0    stale_materialized_view_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.stale_materialized_view_id_seq OWNED BY public.stale_materialized_view.id;
          public          rpuser    false    299                       1259    17638 
   statistics    TABLE     M  CREATE TABLE public.statistics (
    s_id bigint NOT NULL,
    s_counter integer DEFAULT 0,
    launch_id bigint,
    item_id bigint,
    statistics_field_id bigint,
    CONSTRAINT statistics_check CHECK (((s_counter >= 0) AND (((item_id IS NOT NULL) AND (launch_id IS NULL)) OR ((launch_id IS NOT NULL) AND (item_id IS NULL)))))
);
    DROP TABLE public.statistics;
       public         heap    rpuser    false                       1259    17628    statistics_field    TABLE     n   CREATE TABLE public.statistics_field (
    sf_id bigint NOT NULL,
    name character varying(256) NOT NULL
);
 $   DROP TABLE public.statistics_field;
       public         heap    rpuser    false                       1259    17626    statistics_field_sf_id_seq    SEQUENCE     â   CREATE SEQUENCE public.statistics_field_sf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.statistics_field_sf_id_seq;
       public          rpuser    false    273                       0    0    statistics_field_sf_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.statistics_field_sf_id_seq OWNED BY public.statistics_field.sf_id;
          public          rpuser    false    272                       1259    17636    statistics_s_id_seq    SEQUENCE     |   CREATE SEQUENCE public.statistics_s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.statistics_s_id_seq;
       public          rpuser    false    275                       0    0    statistics_s_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.statistics_s_id_seq OWNED BY public.statistics.s_id;
          public          rpuser    false    274            ■            1259    17388 	   test_item    TABLE     £  CREATE TABLE public.test_item (
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
    DROP TABLE public.test_item;
       public         heap    rpuser    false    905    4    4    4            ²            1259    17386    test_item_item_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.test_item_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.test_item_item_id_seq;
       public          rpuser    false    254                       0    0    test_item_item_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.test_item_item_id_seq OWNED BY public.test_item.item_id;
          public          rpuser    false    253                         1259    17425    test_item_results    TABLE     ║   CREATE TABLE public.test_item_results (
    result_id bigint NOT NULL,
    status public.status_enum NOT NULL,
    end_time timestamp without time zone,
    duration double precision
);
 %   DROP TABLE public.test_item_results;
       public         heap    rpuser    false    1157                       1259    17705    ticket    TABLE     å  CREATE TABLE public.ticket (
    id bigint NOT NULL,
    ticket_id character varying(256) NOT NULL,
    submitter character varying NOT NULL,
    submit_date timestamp without time zone DEFAULT now() NOT NULL,
    bts_url character varying(1024) NOT NULL,
    bts_project character varying(1024) NOT NULL,
    url character varying(1024) NOT NULL,
    plugin_name character varying(128)
);
    DROP TABLE public.ticket;
       public         heap    rpuser    false                       1259    17703 
   ticket_id_seq    SEQUENCE     v   CREATE SEQUENCE public.ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ticket_id_seq;
       public          rpuser    false    279                       0    0 
   ticket_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ticket_id_seq OWNED BY public.ticket.id;
          public          rpuser    false    278            ╙            1259    16876    user_creation_bid    TABLE     5  CREATE TABLE public.user_creation_bid (
    uuid character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT now(),
    email character varying NOT NULL,
    role character varying NOT NULL,
    inviting_user_id bigint,
    project_name character varying NOT NULL,
    metadata jsonb
);
 %   DROP TABLE public.user_creation_bid;
       public         heap    rpuser    false                       1259    17579    user_preference    TABLE     £   CREATE TABLE public.user_preference (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    user_id bigint NOT NULL,
    filter_id bigint NOT NULL
);
 #   DROP TABLE public.user_preference;
       public         heap    rpuser    false            
           1259    17577    user_preference_id_seq    SEQUENCE        CREATE SEQUENCE public.user_preference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.user_preference_id_seq;
       public          rpuser    false    267                       0    0    user_preference_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.user_preference_id_seq OWNED BY public.user_preference.id;
          public          rpuser    false    266            ╓            1259    16904    users    TABLE     ì  CREATE TABLE public.users (
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
    DROP TABLE public.users;
       public         heap    rpuser    false            ╒            1259    16902    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          rpuser    false    214                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          rpuser    false    213            ⌡            1259    17276    widget    TABLE     ▀   CREATE TABLE public.widget (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying,
    widget_type character varying NOT NULL,
    items_count smallint,
    widget_options jsonb
);
    DROP TABLE public.widget;
       public         heap    rpuser    false            °            1259    17324 
   widget_filter    TABLE     d   CREATE TABLE public.widget_filter (
    widget_id bigint NOT NULL,
    filter_id bigint NOT NULL
);
 !   DROP TABLE public.widget_filter;
       public         heap    rpuser    false                       1259    17888    scheduler_blob_triggers    TABLE     ┌   CREATE TABLE quartz.scheduler_blob_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
);
 +   DROP TABLE quartz.scheduler_blob_triggers;
       quartz         heap    rpuser    false    11                       1259    17901    scheduler_calendars    TABLE     ¼   CREATE TABLE quartz.scheduler_calendars (
    sched_name character varying(120) NOT NULL,
    calendar_name character varying(200) NOT NULL,
    calendar bytea NOT NULL
);
 '   DROP TABLE quartz.scheduler_calendars;
       quartz         heap    rpuser    false    11                       1259    17862    scheduler_cron_triggers    TABLE     "  CREATE TABLE quartz.scheduler_cron_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120) NOT NULL,
    time_zone_id character varying(80)
);
 +   DROP TABLE quartz.scheduler_cron_triggers;
       quartz         heap    rpuser    false    11            !           1259    17914    scheduler_fired_triggers    TABLE     7  CREATE TABLE quartz.scheduler_fired_triggers (
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
 ,   DROP TABLE quartz.scheduler_fired_triggers;
       quartz         heap    rpuser    false    11                       1259    17828    scheduler_job_details    TABLE     └  CREATE TABLE quartz.scheduler_job_details (
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
 )   DROP TABLE quartz.scheduler_job_details;
       quartz         heap    rpuser    false    11            #           1259    17927    scheduler_locks    TABLE     å   CREATE TABLE quartz.scheduler_locks (
    sched_name character varying(120) NOT NULL,
    lock_name character varying(40) NOT NULL
);
 #   DROP TABLE quartz.scheduler_locks;
       quartz         heap    rpuser    false    11                        1259    17909    scheduler_paused_trigger_grps    TABLE     Ö   CREATE TABLE quartz.scheduler_paused_trigger_grps (
    sched_name character varying(120) NOT NULL,
    trigger_group character varying(200) NOT NULL
);
 1   DROP TABLE quartz.scheduler_paused_trigger_grps;
       quartz         heap    rpuser    false    11            "           1259    17922    scheduler_scheduler_state    TABLE     Γ   CREATE TABLE quartz.scheduler_scheduler_state (
    sched_name character varying(120) NOT NULL,
    instance_name character varying(200) NOT NULL,
    last_checkin_time bigint NOT NULL,
    checkin_interval bigint NOT NULL
);
 -   DROP TABLE quartz.scheduler_scheduler_state;
       quartz         heap    rpuser    false    11                       1259    17849    scheduler_simple_triggers    TABLE     3  CREATE TABLE quartz.scheduler_simple_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count bigint NOT NULL,
    repeat_interval bigint NOT NULL,
    times_triggered bigint NOT NULL
);
 -   DROP TABLE quartz.scheduler_simple_triggers;
       quartz         heap    rpuser    false    11                       1259    17875    scheduler_simprop_triggers    TABLE       CREATE TABLE quartz.scheduler_simprop_triggers (
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
 .   DROP TABLE quartz.scheduler_simprop_triggers;
       quartz         heap    rpuser    false    11                       1259    17836    scheduler_triggers    TABLE     é  CREATE TABLE quartz.scheduler_triggers (
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
 &   DROP TABLE quartz.scheduler_triggers;
       quartz         heap    rpuser    false    11            ▄
           2604    18402    activity id    DEFAULT     j   ALTER TABLE ONLY public.activity ALTER COLUMN id SET DEFAULT nextval('public.activity_id_seq'::regclass);
 :   ALTER TABLE public.activity ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    304    303    304            █
           2604    18375    api_keys id    DEFAULT     j   ALTER TABLE ONLY public.api_keys ALTER COLUMN id SET DEFAULT nextval('public.api_keys_id_seq'::regclass);
 :   ALTER TABLE public.api_keys ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    302    301    302            ╔
           2604    17514 
   attachment id    DEFAULT     n   ALTER TABLE ONLY public.attachment ALTER COLUMN id SET DEFAULT nextval('public.attachment_id_seq'::regclass);
 <   ALTER TABLE public.attachment ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    263    262    263            «
           2604    17051    attribute id    DEFAULT     l   ALTER TABLE ONLY public.attribute ALTER COLUMN id SET DEFAULT nextval('public.attribute_id_seq'::regclass);
 ;   ALTER TABLE public.attribute ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    228    229    229            ╪
           2604    18266    clusters id    DEFAULT     j   ALTER TABLE ONLY public.clusters ALTER COLUMN id SET DEFAULT nextval('public.clusters_id_seq'::regclass);
 :   ALTER TABLE public.clusters ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    295    294    295            ╢
           2604    17232    filter_condition id    DEFAULT     z   ALTER TABLE ONLY public.filter_condition ALTER COLUMN id SET DEFAULT nextval('public.filter_condition_id_seq'::regclass);
 B   ALTER TABLE public.filter_condition ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    241    240    241            ╖
           2604    17249    filter_sort id    DEFAULT     p   ALTER TABLE ONLY public.filter_sort ALTER COLUMN id SET DEFAULT nextval('public.filter_sort_id_seq'::regclass);
 =   ALTER TABLE public.filter_sort ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    243    242    243            │
           2604    17094    integration id    DEFAULT     p   ALTER TABLE ONLY public.integration ALTER COLUMN id SET DEFAULT nextval('public.integration_id_seq'::regclass);
 =   ALTER TABLE public.integration ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    236    235    236            ▒
           2604    17080    integration_type id    DEFAULT     z   ALTER TABLE ONLY public.integration_type ALTER COLUMN id SET DEFAULT nextval('public.integration_type_id_seq'::regclass);
 B   ALTER TABLE public.integration_type ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    234    233    234            ╬
           2604    17607    issue_group issue_group_id    DEFAULT     ê   ALTER TABLE ONLY public.issue_group ALTER COLUMN issue_group_id SET DEFAULT nextval('public.issue_group_issue_group_id_seq'::regclass);
 I   ALTER TABLE public.issue_group ALTER COLUMN issue_group_id DROP DEFAULT;
       public          rpuser    false    269    268    269            ╧
           2604    17615 
   issue_type id    DEFAULT     n   ALTER TABLE ONLY public.issue_type ALTER COLUMN id SET DEFAULT nextval('public.issue_type_id_seq'::regclass);
 <   ALTER TABLE public.issue_type ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    270    271    271            ╞
           2604    17489    item_attribute id    DEFAULT     v   ALTER TABLE ONLY public.item_attribute ALTER COLUMN id SET DEFAULT nextval('public.item_attribute_id_seq'::regclass);
 @   ALTER TABLE public.item_attribute ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    261    260    261            ╗
           2604    17344 	   launch id    DEFAULT     f   ALTER TABLE ONLY public.launch ALTER COLUMN id SET DEFAULT nextval('public.launch_id_seq'::regclass);
 8   ALTER TABLE public.launch ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    250    249    250            ¡
           2604    17025    launch_attribute_rules id    DEFAULT     å   ALTER TABLE ONLY public.launch_attribute_rules ALTER COLUMN id SET DEFAULT nextval('public.launch_attribute_rules_id_seq'::regclass);
 H   ALTER TABLE public.launch_attribute_rules ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    225    226    226            └
           2604    17376    launch_number id    DEFAULT     t   ALTER TABLE ONLY public.launch_number ALTER COLUMN id SET DEFAULT nextval('public.launch_number_id_seq'::regclass);
 ?   ALTER TABLE public.launch_number ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    251    252    252            ╦
           2604    17528    log id    DEFAULT     `   ALTER TABLE ONLY public.log ALTER COLUMN id SET DEFAULT nextval('public.log_id_seq'::regclass);
 5   ALTER TABLE public.log ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    264    265    265            ¿
           2604    16981 !   oauth_registration_restriction id    DEFAULT     û   ALTER TABLE ONLY public.oauth_registration_restriction ALTER COLUMN id SET DEFAULT nextval('public.oauth_registration_restriction_id_seq'::regclass);
 P   ALTER TABLE public.oauth_registration_restriction ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    220    219    220            º
           2604    16966    oauth_registration_scope id    DEFAULT     è   ALTER TABLE ONLY public.oauth_registration_scope ALTER COLUMN id SET DEFAULT nextval('public.oauth_registration_scope_id_seq'::regclass);
 J   ALTER TABLE public.oauth_registration_scope ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    217    218    218            ┘
           2604    18298 
   onboarding id    DEFAULT     n   ALTER TABLE ONLY public.onboarding ALTER COLUMN id SET DEFAULT nextval('public.onboarding_id_seq'::regclass);
 <   ALTER TABLE public.onboarding ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    298    297    298            ╡
           2604    17195    owned_entity id    DEFAULT     v   ALTER TABLE ONLY public.owned_entity ALTER COLUMN id SET DEFAULT nextval('public.shareable_entity_id_seq'::regclass);
 >   ALTER TABLE public.owned_entity ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    238    237    238            ┼
           2604    17442    pattern_template id    DEFAULT     z   ALTER TABLE ONLY public.pattern_template ALTER COLUMN id SET DEFAULT nextval('public.pattern_template_id_seq'::regclass);
 B   ALTER TABLE public.pattern_template ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    257    256    257            í
           2604    16867 
   project id    DEFAULT     h   ALTER TABLE ONLY public.project ALTER COLUMN id SET DEFAULT nextval('public.project_id_seq'::regclass);
 9   ALTER TABLE public.project ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    210    209    210            »
           2604    17061    project_attribute attribute_id    DEFAULT     É   ALTER TABLE ONLY public.project_attribute ALTER COLUMN attribute_id SET DEFAULT nextval('public.project_attribute_attribute_id_seq'::regclass);
 M   ALTER TABLE public.project_attribute ALTER COLUMN attribute_id DROP DEFAULT;
       public          rpuser    false    230    232    232            ░
           2604    17062    project_attribute project_id    DEFAULT     î   ALTER TABLE ONLY public.project_attribute ALTER COLUMN project_id SET DEFAULT nextval('public.project_attribute_project_id_seq'::regclass);
 K   ALTER TABLE public.project_attribute ALTER COLUMN project_id DROP DEFAULT;
       public          rpuser    false    232    231    232            ⌐
           2604    17001    sender_case id    DEFAULT     p   ALTER TABLE ONLY public.sender_case ALTER COLUMN id SET DEFAULT nextval('public.sender_case_id_seq'::regclass);
 =   ALTER TABLE public.sender_case ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    221    223    223            ¬
           2604    17002    sender_case project_id    DEFAULT     Ç   ALTER TABLE ONLY public.sender_case ALTER COLUMN project_id SET DEFAULT nextval('public.sender_case_project_id_seq'::regclass);
 E   ALTER TABLE public.sender_case ALTER COLUMN project_id DROP DEFAULT;
       public          rpuser    false    222    223    223            á
           2604    16854    server_settings id    DEFAULT     x   ALTER TABLE ONLY public.server_settings ALTER COLUMN id SET DEFAULT nextval('public.server_settings_id_seq'::regclass);
 A   ALTER TABLE public.server_settings ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    207    208    208            ┌
           2604    18333    stale_materialized_view id    DEFAULT     ê   ALTER TABLE ONLY public.stale_materialized_view ALTER COLUMN id SET DEFAULT nextval('public.stale_materialized_view_id_seq'::regclass);
 I   ALTER TABLE public.stale_materialized_view ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    299    300    300            ╤
           2604    17641    statistics s_id    DEFAULT     r   ALTER TABLE ONLY public.statistics ALTER COLUMN s_id SET DEFAULT nextval('public.statistics_s_id_seq'::regclass);
 >   ALTER TABLE public.statistics ALTER COLUMN s_id DROP DEFAULT;
       public          rpuser    false    275    274    275            ╨
           2604    17631    statistics_field sf_id    DEFAULT     Ç   ALTER TABLE ONLY public.statistics_field ALTER COLUMN sf_id SET DEFAULT nextval('public.statistics_field_sf_id_seq'::regclass);
 E   ALTER TABLE public.statistics_field ALTER COLUMN sf_id DROP DEFAULT;
       public          rpuser    false    273    272    273            ┴
           2604    17391    test_item item_id    DEFAULT     v   ALTER TABLE ONLY public.test_item ALTER COLUMN item_id SET DEFAULT nextval('public.test_item_item_id_seq'::regclass);
 @   ALTER TABLE public.test_item ALTER COLUMN item_id DROP DEFAULT;
       public          rpuser    false    254    253    254            ╓
           2604    17708 	   ticket id    DEFAULT     f   ALTER TABLE ONLY public.ticket ALTER COLUMN id SET DEFAULT nextval('public.ticket_id_seq'::regclass);
 8   ALTER TABLE public.ticket ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    278    279    279            ═
           2604    17582    user_preference id    DEFAULT     x   ALTER TABLE ONLY public.user_preference ALTER COLUMN id SET DEFAULT nextval('public.user_preference_id_seq'::regclass);
 A   ALTER TABLE public.user_preference ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    266    267    267            ª
           2604    16907    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          rpuser    false    213    214    214            ≤          0    18399    activity 
   TABLE DATA           ▓   COPY public.activity (id, created_at, action, event_name, priority, object_id, object_name, object_type, project_id, details, subject_id, subject_name, subject_type) FROM stdin;
    public          rpuser    false    304            ±          0    18372    api_keys 
   TABLE DATA           U   COPY public.api_keys (id, name, hash, created_at, user_id, last_used_at) FROM stdin;
    public          rpuser    false    302            ╩          0    17511 
   attachment 
   TABLE DATA           Æ   COPY public.attachment (id, file_id, thumbnail_id, content_type, project_id, launch_id, item_id, file_size, creation_date, file_name) FROM stdin;
    public          rpuser    false    263            Φ          0    18217    attachment_deletion 
   TABLE DATA           q   COPY public.attachment_deletion (id, file_id, thumbnail_id, creation_attachment_date, deletion_date) FROM stdin;
    public          rpuser    false    293            ¿          0    17048 	   attribute 
   TABLE DATA           -   COPY public.attribute (id, name) FROM stdin;
    public          rpuser    false    229            Ω          0    18263    clusters 
   TABLE DATA           P   COPY public.clusters (id, index_id, project_id, launch_id, message) FROM stdin;
    public          rpuser    false    295            δ          0    18277    clusters_test_item 
   TABLE DATA           A   COPY public.clusters_test_item (cluster_id, item_id) FROM stdin;
    public          rpuser    false    296            ╣          0    17289 
   content_field 
   TABLE DATA           2   COPY public.content_field (id, field) FROM stdin;
    public          rpuser    false    246            ╖          0    17262 	   dashboard 
   TABLE DATA           I   COPY public.dashboard (id, name, description, creation_date) FROM stdin;
    public          rpuser    false    244            ║          0    17302    dashboard_widget 
   TABLE DATA           ╜   COPY public.dashboard_widget (dashboard_id, widget_id, widget_name, widget_owner, widget_type, widget_width, widget_height, widget_position_x, widget_position_y, is_created_on) FROM stdin;
    public          rpuser    false    247            ▓          0    17214    filter 
   TABLE DATA           ?   COPY public.filter (id, name, target, description) FROM stdin;
    public          rpuser    false    239            ┤          0    17229    filter_condition 
   TABLE DATA           f   COPY public.filter_condition (id, filter_id, condition, value, search_criteria, negative) FROM stdin;
    public          rpuser    false    241            ╢          0    17246    filter_sort 
   TABLE DATA           F   COPY public.filter_sort (id, filter_id, field, direction) FROM stdin;
    public          rpuser    false    243            »          0    17091    integration 
   TABLE DATA           j   COPY public.integration (id, name, project_id, type, enabled, params, creator, creation_date) FROM stdin;
    public          rpuser    false    236            ¡          0    17077    integration_type 
   TABLE DATA           l   COPY public.integration_type (id, name, auth_flow, creation_date, group_type, enabled, details) FROM stdin;
    public          rpuser    false    234            ╪          0    17682    issue 
   TABLE DATA           h   COPY public.issue (issue_id, issue_type, issue_description, auto_analyzed, ignore_analyzer) FROM stdin;
    public          rpuser    false    277            ╨          0    17604    issue_group 
   TABLE DATA           B   COPY public.issue_group (issue_group_id, issue_group) FROM stdin;
    public          rpuser    false    269            █          0    17716    issue_ticket 
   TABLE DATA           ;   COPY public.issue_ticket (issue_id, ticket_id) FROM stdin;
    public          rpuser    false    280            ╥          0    17612 
   issue_type 
   TABLE DATA           f   COPY public.issue_type (id, issue_group_id, locator, issue_name, abbreviation, hex_color) FROM stdin;
    public          rpuser    false    271            ╫          0    17667    issue_type_project 
   TABLE DATA           G   COPY public.issue_type_project (project_id, issue_type_id) FROM stdin;
    public          rpuser    false    276            ╚          0    17486    item_attribute 
   TABLE DATA           T   COPY public.item_attribute (id, key, value, item_id, launch_id, system) FROM stdin;
    public          rpuser    false    261            ╜          0    17341    launch 
   TABLE DATA           ╖   COPY public.launch (id, uuid, project_id, user_id, name, description, start_time, end_time, number, last_modified, mode, status, has_retries, rerun, approximate_duration) FROM stdin;
    public          rpuser    false    250            Ñ          0    17022    launch_attribute_rules 
   TABLE DATA           P   COPY public.launch_attribute_rules (id, sender_case_id, key, value) FROM stdin;
    public          rpuser    false    226            ú          0    17011    launch_names 
   TABLE DATA           C   COPY public.launch_names (sender_case_id, launch_name) FROM stdin;
    public          rpuser    false    224            ┐          0    17373 
   launch_number 
   TABLE DATA           L   COPY public.launch_number (id, project_id, launch_name, number) FROM stdin;
    public          rpuser    false    252            ╠          0    17525    log 
   TABLE DATA           ô   COPY public.log (id, uuid, log_time, log_message, item_id, launch_id, last_modified, log_level, attachment_id, project_id, cluster_id) FROM stdin;
    public          rpuser    false    265            ¢          0    16951    oauth_registration 
   TABLE DATA           ⌠   COPY public.oauth_registration (id, client_id, client_secret, client_auth_method, auth_grant_type, redirect_uri_template, authorization_uri, token_uri, user_info_endpoint_uri, user_info_endpoint_name_attr, jwk_set_uri, client_name) FROM stdin;
    public          rpuser    false    216            ƒ          0    16978    oauth_registration_restriction 
   TABLE DATA           `   COPY public.oauth_registration_restriction (id, oauth_registration_fk, type, value) FROM stdin;
    public          rpuser    false    220            ¥          0    16963    oauth_registration_scope 
   TABLE DATA           T   COPY public.oauth_registration_scope (id, oauth_registration_fk, scope) FROM stdin;
    public          rpuser    false    218            φ          0    18295 
   onboarding 
   TABLE DATA           R   COPY public.onboarding (id, data, page, available_from, available_to) FROM stdin;
    public          rpuser    false    298            ▒          0    17192    owned_entity 
   TABLE DATA           =   COPY public.owned_entity (id, owner, project_id) FROM stdin;
    public          rpuser    false    238            ╞          0    17472 	   parameter 
   TABLE DATA           8   COPY public.parameter (item_id, key, value) FROM stdin;
    public          rpuser    false    259            ─          0    17439    pattern_template 
   TABLE DATA           V   COPY public.pattern_template (id, name, value, type, enabled, project_id) FROM stdin;
    public          rpuser    false    257            ┼          0    17455    pattern_template_test_item 
   TABLE DATA           I   COPY public.pattern_template_test_item (pattern_id, item_id) FROM stdin;
    public          rpuser    false    258            ò          0    16864    project 
   TABLE DATA           s   COPY public.project (id, name, project_type, organization, creation_date, metadata, allocated_storage) FROM stdin;
    public          rpuser    false    210            ½          0    17058    project_attribute 
   TABLE DATA           L   COPY public.project_attribute (attribute_id, value, project_id) FROM stdin;
    public          rpuser    false    232            Ü          0    16917    project_user 
   TABLE DATA           I   COPY public.project_user (user_id, project_id, project_role) FROM stdin;
    public          rpuser    false    215            ª          0    17037 
   recipients 
   TABLE DATA           ?   COPY public.recipients (sender_case_id, recipient) FROM stdin;
    public          rpuser    false    227            ù          0    16891    restore_password_bid 
   TABLE DATA           J   COPY public.restore_password_bid (uuid, last_modified, email) FROM stdin;
    public          rpuser    false    212            æ          0    16385    schema_migrations 
   TABLE DATA           ;   COPY public.schema_migrations (version, dirty) FROM stdin;
    public          rpuser    false    206            ó          0    16998    sender_case 
   TABLE DATA           i   COPY public.sender_case (id, send_case, project_id, enabled, attributes_operator, rule_name) FROM stdin;
    public          rpuser    false    223            ô          0    16851    server_settings 
   TABLE DATA           9   COPY public.server_settings (id, key, value) FROM stdin;
    public          rpuser    false    208            τ          0    18208    shedlock 
   TABLE DATA           J   COPY public.shedlock (name, lock_until, locked_at, locked_by) FROM stdin;
    public          rpuser    false    292            ∩          0    18330    stale_materialized_view 
   TABLE DATA           J   COPY public.stale_materialized_view (id, name, creation_date) FROM stdin;
    public          rpuser    false    300            ╓          0    17638 
   statistics 
   TABLE DATA           ^   COPY public.statistics (s_id, s_counter, launch_id, item_id, statistics_field_id) FROM stdin;
    public          rpuser    false    275            ╘          0    17628    statistics_field 
   TABLE DATA           7   COPY public.statistics_field (sf_id, name) FROM stdin;
    public          rpuser    false    273            ┴          0    17388 	   test_item 
   TABLE DATA           σ   COPY public.test_item (item_id, uuid, name, code_ref, type, start_time, description, last_modified, path, unique_id, test_case_id, has_children, has_retries, has_stats, parent_id, retry_of, launch_id, test_case_hash) FROM stdin;
    public          rpuser    false    254            ┬          0    17425    test_item_results 
   TABLE DATA           R   COPY public.test_item_results (result_id, status, end_time, duration) FROM stdin;
    public          rpuser    false    255            ┌          0    17705    ticket 
   TABLE DATA           o   COPY public.ticket (id, ticket_id, submitter, submit_date, bts_url, bts_project, url, plugin_name) FROM stdin;
    public          rpuser    false    279            û          0    16876    user_creation_bid 
   TABLE DATA           w   COPY public.user_creation_bid (uuid, last_modified, email, role, inviting_user_id, project_name, metadata) FROM stdin;
    public          rpuser    false    211            ╬          0    17579    user_preference 
   TABLE DATA           M   COPY public.user_preference (id, project_id, user_id, filter_id) FROM stdin;
    public          rpuser    false    267            Ö          0    16904    users 
   TABLE DATA           ç   COPY public.users (id, login, password, email, attachment, attachment_thumbnail, role, type, expired, full_name, metadata) FROM stdin;
    public          rpuser    false    214            ╕          0    17276    widget 
   TABLE DATA           a   COPY public.widget (id, name, description, widget_type, items_count, widget_options) FROM stdin;
    public          rpuser    false    245            ╗          0    17324 
   widget_filter 
   TABLE DATA           =   COPY public.widget_filter (widget_id, filter_id) FROM stdin;
    public          rpuser    false    248            ß          0    17888    scheduler_blob_triggers 
   TABLE DATA           e   COPY quartz.scheduler_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
    quartz          rpuser    false    286            Γ          0    17901    scheduler_calendars 
   TABLE DATA           R   COPY quartz.scheduler_calendars (sched_name, calendar_name, calendar) FROM stdin;
    quartz          rpuser    false    287            ▀          0    17862    scheduler_cron_triggers 
   TABLE DATA           y   COPY quartz.scheduler_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
    quartz          rpuser    false    284            Σ          0    17914    scheduler_fired_triggers 
   TABLE DATA           ╫   COPY quartz.scheduler_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_nonconcurrent, requests_recovery) FROM stdin;
    quartz          rpuser    false    289            ▄          0    17828    scheduler_job_details 
   TABLE DATA           ╕   COPY quartz.scheduler_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
    quartz          rpuser    false    281            µ          0    17927    scheduler_locks 
   TABLE DATA           @   COPY quartz.scheduler_locks (sched_name, lock_name) FROM stdin;
    quartz          rpuser    false    291            π          0    17909    scheduler_paused_trigger_grps 
   TABLE DATA           R   COPY quartz.scheduler_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
    quartz          rpuser    false    288            σ          0    17922    scheduler_scheduler_state 
   TABLE DATA           s   COPY quartz.scheduler_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
    quartz          rpuser    false    290            ▐          0    17849    scheduler_simple_triggers 
   TABLE DATA           î   COPY quartz.scheduler_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
    quartz          rpuser    false    283            α          0    17875    scheduler_simprop_triggers 
   TABLE DATA           σ   COPY quartz.scheduler_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
    quartz          rpuser    false    285            ▌          0    17836    scheduler_triggers 
   TABLE DATA           ⁿ   COPY quartz.scheduler_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
    quartz          rpuser    false    282                       0    0    activity_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.activity_id_seq', 62, true);
          public          rpuser    false    303                        0    0    api_keys_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.api_keys_id_seq', 4, true);
          public          rpuser    false    301            !           0    0    attachment_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.attachment_id_seq', 3, true);
          public          rpuser    false    262            "           0    0    attribute_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.attribute_id_seq', 14, true);
          public          rpuser    false    228            #           0    0    clusters_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clusters_id_seq', 2, true);
          public          rpuser    false    294            $           0    0    filter_condition_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.filter_condition_id_seq', 1, false);
          public          rpuser    false    240            %           0    0    filter_sort_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.filter_sort_id_seq', 1, false);
          public          rpuser    false    242            &           0    0    integration_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.integration_id_seq', 1, false);
          public          rpuser    false    235            '           0    0    integration_type_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.integration_type_id_seq', 4, true);
          public          rpuser    false    233            (           0    0    issue_group_issue_group_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.issue_group_issue_group_id_seq', 6, false);
          public          rpuser    false    268            )           0    0    issue_type_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.issue_type_id_seq', 6, false);
          public          rpuser    false    270            *           0    0    item_attribute_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.item_attribute_id_seq', 23, true);
          public          rpuser    false    260            +           0    0    launch_attribute_rules_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.launch_attribute_rules_id_seq', 1, false);
          public          rpuser    false    225            ,           0    0 
   launch_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.launch_id_seq', 3, true);
          public          rpuser    false    249            -           0    0    launch_number_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.launch_number_id_seq', 3, true);
          public          rpuser    false    251            .           0    0 
   log_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.log_id_seq', 7, true);
          public          rpuser    false    264            /           0    0 %   oauth_registration_restriction_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.oauth_registration_restriction_id_seq', 1, false);
          public          rpuser    false    219            0           0    0    oauth_registration_scope_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.oauth_registration_scope_id_seq', 1, false);
          public          rpuser    false    217            1           0    0    onboarding_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.onboarding_id_seq', 1, false);
          public          rpuser    false    297            2           0    0    pattern_template_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pattern_template_id_seq', 1, false);
          public          rpuser    false    256            3           0    0 "   project_attribute_attribute_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.project_attribute_attribute_id_seq', 1, false);
          public          rpuser    false    230            4           0    0     project_attribute_project_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.project_attribute_project_id_seq', 1, false);
          public          rpuser    false    231            5           0    0    project_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.project_id_seq', 44, true);
          public          rpuser    false    209            6           0    0    sender_case_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sender_case_id_seq', 1, false);
          public          rpuser    false    221            7           0    0    sender_case_project_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.sender_case_project_id_seq', 1, false);
          public          rpuser    false    222            8           0    0    server_settings_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.server_settings_id_seq', 3, true);
          public          rpuser    false    207            9           0    0    shareable_entity_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.shareable_entity_id_seq', 1, false);
          public          rpuser    false    237            :           0    0    stale_materialized_view_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.stale_materialized_view_id_seq', 1, false);
          public          rpuser    false    299            ;           0    0    statistics_field_sf_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.statistics_field_sf_id_seq', 15, false);
          public          rpuser    false    272            <           0    0    statistics_s_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.statistics_s_id_seq', 42, true);
          public          rpuser    false    274            =           0    0    test_item_item_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.test_item_item_id_seq', 7, true);
          public          rpuser    false    253            >           0    0 
   ticket_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ticket_id_seq', 1, false);
          public          rpuser    false    278            ?           0    0    user_preference_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.user_preference_id_seq', 1, false);
          public          rpuser    false    266            @           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          rpuser    false    213            ╠           2606    18407    activity activity_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.activity DROP CONSTRAINT activity_pk;
       public            rpuser    false    304            ┼           2606    18380    api_keys api_keys_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.api_keys DROP CONSTRAINT api_keys_pkey;
       public            rpuser    false    302            ▒           2606    18224 ,   attachment_deletion attachment_deletion_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.attachment_deletion
    ADD CONSTRAINT attachment_deletion_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.attachment_deletion DROP CONSTRAINT attachment_deletion_pkey;
       public            rpuser    false    293            X           2606    17519    attachment attachment_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.attachment
    ADD CONSTRAINT attachment_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.attachment DROP CONSTRAINT attachment_pk;
       public            rpuser    false    263                       2606    17053    attribute attribute_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.attribute
    ADD CONSTRAINT attribute_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.attribute DROP CONSTRAINT attribute_pk;
       public            rpuser    false    229            ╝           2606    18281 #   clusters_test_item cluster_item_unq 
   CONSTRAINT     m   ALTER TABLE ONLY public.clusters_test_item
    ADD CONSTRAINT cluster_item_unq UNIQUE (cluster_id, item_id);
 M   ALTER TABLE ONLY public.clusters_test_item DROP CONSTRAINT cluster_item_unq;
       public            rpuser    false    296    296            ╢           2606    18271    clusters clusters_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT clusters_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clusters DROP CONSTRAINT clusters_pk;
       public            rpuser    false    295            $           2606    17270    dashboard dashboard_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dashboard
    ADD CONSTRAINT dashboard_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dashboard DROP CONSTRAINT dashboard_pkey;
       public            rpuser    false    244            *           2606    17311 $   dashboard_widget dashboard_widget_pk 
   CONSTRAINT     w   ALTER TABLE ONLY public.dashboard_widget
    ADD CONSTRAINT dashboard_widget_pk PRIMARY KEY (dashboard_id, widget_id);
 N   ALTER TABLE ONLY public.dashboard_widget DROP CONSTRAINT dashboard_widget_pk;
       public            rpuser    false    247    247                       2606    17237 $   filter_condition filter_condition_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.filter_condition
    ADD CONSTRAINT filter_condition_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filter_condition DROP CONSTRAINT filter_condition_pk;
       public            rpuser    false    241                       2606    17221    filter filter_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.filter DROP CONSTRAINT filter_pkey;
       public            rpuser    false    239            "           2606    17255    filter_sort filter_sort_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.filter_sort
    ADD CONSTRAINT filter_sort_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filter_sort DROP CONSTRAINT filter_sort_pk;
       public            rpuser    false    243            ╕           2606    18273    clusters index_id_launch_id_unq 
   CONSTRAINT     i   ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT index_id_launch_id_unq UNIQUE (index_id, launch_id);
 I   ALTER TABLE ONLY public.clusters DROP CONSTRAINT index_id_launch_id_unq;
       public            rpuser    false    295    295                       2606    17100    integration integration_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.integration
    ADD CONSTRAINT integration_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.integration DROP CONSTRAINT integration_pk;
       public            rpuser    false    236                       2606    17088 *   integration_type integration_type_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.integration_type
    ADD CONSTRAINT integration_type_name_key UNIQUE (name);
 T   ALTER TABLE ONLY public.integration_type DROP CONSTRAINT integration_type_name_key;
       public            rpuser    false    234                       2606    17086 $   integration_type integration_type_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.integration_type
    ADD CONSTRAINT integration_type_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.integration_type DROP CONSTRAINT integration_type_pk;
       public            rpuser    false    234            g           2606    17609    issue_group issue_group_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.issue_group
    ADD CONSTRAINT issue_group_pk PRIMARY KEY (issue_group_id);
 D   ALTER TABLE ONLY public.issue_group DROP CONSTRAINT issue_group_pk;
       public            rpuser    false    269            }           2606    17691    issue issue_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_pk PRIMARY KEY (issue_id);
 8   ALTER TABLE ONLY public.issue DROP CONSTRAINT issue_pk;
       public            rpuser    false    277            â           2606    17720    issue_ticket issue_ticket_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.issue_ticket
    ADD CONSTRAINT issue_ticket_pk PRIMARY KEY (issue_id, ticket_id);
 F   ALTER TABLE ONLY public.issue_ticket DROP CONSTRAINT issue_ticket_pk;
       public            rpuser    false    280    280            j           2606    17619 !   issue_type issue_type_locator_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.issue_type
    ADD CONSTRAINT issue_type_locator_key UNIQUE (locator);
 K   ALTER TABLE ONLY public.issue_type DROP CONSTRAINT issue_type_locator_key;
       public            rpuser    false    271            l           2606    17617    issue_type issue_type_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.issue_type
    ADD CONSTRAINT issue_type_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.issue_type DROP CONSTRAINT issue_type_pk;
       public            rpuser    false    271            z           2606    17671 (   issue_type_project issue_type_project_pk 
   CONSTRAINT     }   ALTER TABLE ONLY public.issue_type_project
    ADD CONSTRAINT issue_type_project_pk PRIMARY KEY (project_id, issue_type_id);
 R   ALTER TABLE ONLY public.issue_type_project DROP CONSTRAINT issue_type_project_pk;
       public            rpuser    false    276    276            S           2606    17496     item_attribute item_attribute_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.item_attribute
    ADD CONSTRAINT item_attribute_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.item_attribute DROP CONSTRAINT item_attribute_pk;
       public            rpuser    false    261                       2606    17030 0   launch_attribute_rules launch_attribute_rules_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.launch_attribute_rules
    ADD CONSTRAINT launch_attribute_rules_pk PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.launch_attribute_rules DROP CONSTRAINT launch_attribute_rules_pk;
       public            rpuser    false    226            8           2606    17378    launch_number launch_number_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.launch_number
    ADD CONSTRAINT launch_number_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.launch_number DROP CONSTRAINT launch_number_pk;
       public            rpuser    false    252            0           2606    17353    launch launch_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.launch
    ADD CONSTRAINT launch_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.launch DROP CONSTRAINT launch_pk;
       public            rpuser    false    250            4           2606    17355    launch launch_uuid_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.launch
    ADD CONSTRAINT launch_uuid_key UNIQUE (uuid);
 @   ALTER TABLE ONLY public.launch DROP CONSTRAINT launch_uuid_key;
       public            rpuser    false    250            ^           2606    17534 
   log log_pk 
   CONSTRAINT     H   ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pk PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.log DROP CONSTRAINT log_pk;
       public            rpuser    false    265            ÷
           2606    16960 3   oauth_registration oauth_registration_client_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.oauth_registration
    ADD CONSTRAINT oauth_registration_client_id_key UNIQUE (client_id);
 ]   ALTER TABLE ONLY public.oauth_registration DROP CONSTRAINT oauth_registration_client_id_key;
       public            rpuser    false    216            °
           2606    16958 *   oauth_registration oauth_registration_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.oauth_registration
    ADD CONSTRAINT oauth_registration_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.oauth_registration DROP CONSTRAINT oauth_registration_pkey;
       public            rpuser    false    216            ■
           2606    16986 @   oauth_registration_restriction oauth_registration_restriction_pk 
   CONSTRAINT     ~   ALTER TABLE ONLY public.oauth_registration_restriction
    ADD CONSTRAINT oauth_registration_restriction_pk PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.oauth_registration_restriction DROP CONSTRAINT oauth_registration_restriction_pk;
       public            rpuser    false    220                        2606    16988 D   oauth_registration_restriction oauth_registration_restriction_unique 
   CONSTRAINT     ¥   ALTER TABLE ONLY public.oauth_registration_restriction
    ADD CONSTRAINT oauth_registration_restriction_unique UNIQUE (type, value, oauth_registration_fk);
 n   ALTER TABLE ONLY public.oauth_registration_restriction DROP CONSTRAINT oauth_registration_restriction_unique;
       public            rpuser    false    220    220    220            ·
           2606    16968 4   oauth_registration_scope oauth_registration_scope_pk 
   CONSTRAINT     r   ALTER TABLE ONLY public.oauth_registration_scope
    ADD CONSTRAINT oauth_registration_scope_pk PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.oauth_registration_scope DROP CONSTRAINT oauth_registration_scope_pk;
       public            rpuser    false    218            ⁿ
           2606    16970 8   oauth_registration_scope oauth_registration_scope_unique 
   CONSTRAINT     ï   ALTER TABLE ONLY public.oauth_registration_scope
    ADD CONSTRAINT oauth_registration_scope_unique UNIQUE (scope, oauth_registration_fk);
 b   ALTER TABLE ONLY public.oauth_registration_scope DROP CONSTRAINT oauth_registration_scope_unique;
       public            rpuser    false    218    218            ╛           2606    18303    onboarding onboarding_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.onboarding
    ADD CONSTRAINT onboarding_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.onboarding DROP CONSTRAINT onboarding_pk;
       public            rpuser    false    298            N           2606    17459 +   pattern_template_test_item pattern_item_unq 
   CONSTRAINT     z   ALTER TABLE ONLY public.pattern_template_test_item
    ADD CONSTRAINT pattern_item_unq PRIMARY KEY (pattern_id, item_id);
 U   ALTER TABLE ONLY public.pattern_template_test_item DROP CONSTRAINT pattern_item_unq;
       public            rpuser    false    258    258            I           2606    17447 $   pattern_template pattern_template_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.pattern_template
    ADD CONSTRAINT pattern_template_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.pattern_template DROP CONSTRAINT pattern_template_pk;
       public            rpuser    false    257            Σ
           2606    16875    project project_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.project DROP CONSTRAINT project_name_key;
       public            rpuser    false    210            µ
           2606    16873    project project_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.project DROP CONSTRAINT project_pk;
       public            rpuser    false    210            Ω
           2606    16901 3   restore_password_bid restore_password_bid_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.restore_password_bid
    ADD CONSTRAINT restore_password_bid_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.restore_password_bid DROP CONSTRAINT restore_password_bid_email_key;
       public            rpuser    false    212            ∞
           2606    16899 ,   restore_password_bid restore_password_bid_pk 
   CONSTRAINT     l   ALTER TABLE ONLY public.restore_password_bid
    ADD CONSTRAINT restore_password_bid_pk PRIMARY KEY (uuid);
 V   ALTER TABLE ONLY public.restore_password_bid DROP CONSTRAINT restore_password_bid_pk;
       public            rpuser    false    212            ▐
           2606    16389 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            rpuser    false    206                       2606    17004    sender_case sender_case_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.sender_case
    ADD CONSTRAINT sender_case_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sender_case DROP CONSTRAINT sender_case_pk;
       public            rpuser    false    223            α
           2606    16859 "   server_settings server_settings_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.server_settings
    ADD CONSTRAINT server_settings_id PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.server_settings DROP CONSTRAINT server_settings_id;
       public            rpuser    false    208            Γ
           2606    16861 '   server_settings server_settings_key_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.server_settings
    ADD CONSTRAINT server_settings_key_key UNIQUE (key);
 Q   ALTER TABLE ONLY public.server_settings DROP CONSTRAINT server_settings_key_key;
       public            rpuser    false    208                       2606    17201    owned_entity shareable_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public.owned_entity
    ADD CONSTRAINT shareable_pk PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.owned_entity DROP CONSTRAINT shareable_pk;
       public            rpuser    false    238            »           2606    18212    shedlock shedlock_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.shedlock
    ADD CONSTRAINT shedlock_pkey PRIMARY KEY (name);
 @   ALTER TABLE ONLY public.shedlock DROP CONSTRAINT shedlock_pkey;
       public            rpuser    false    292            └           2606    18337 8   stale_materialized_view stale_materialized_view_name_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.stale_materialized_view
    ADD CONSTRAINT stale_materialized_view_name_key UNIQUE (name);
 b   ALTER TABLE ONLY public.stale_materialized_view DROP CONSTRAINT stale_materialized_view_name_key;
       public            rpuser    false    300            ┬           2606    18335 4   stale_materialized_view stale_materialized_view_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.stale_materialized_view
    ADD CONSTRAINT stale_materialized_view_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.stale_materialized_view DROP CONSTRAINT stale_materialized_view_pkey;
       public            rpuser    false    300            n           2606    17635 *   statistics_field statistics_field_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.statistics_field
    ADD CONSTRAINT statistics_field_name_key UNIQUE (name);
 T   ALTER TABLE ONLY public.statistics_field DROP CONSTRAINT statistics_field_name_key;
       public            rpuser    false    273            p           2606    17633 $   statistics_field statistics_field_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public.statistics_field
    ADD CONSTRAINT statistics_field_pk PRIMARY KEY (sf_id);
 N   ALTER TABLE ONLY public.statistics_field DROP CONSTRAINT statistics_field_pk;
       public            rpuser    false    273            s           2606    17645    statistics statistics_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_pk PRIMARY KEY (s_id);
 B   ALTER TABLE ONLY public.statistics DROP CONSTRAINT statistics_pk;
       public            rpuser    false    275            ?           2606    17399    test_item test_item_pk 
   CONSTRAINT     Y   ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_pk PRIMARY KEY (item_id);
 @   ALTER TABLE ONLY public.test_item DROP CONSTRAINT test_item_pk;
       public            rpuser    false    254            G           2606    17429 &   test_item_results test_item_results_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.test_item_results
    ADD CONSTRAINT test_item_results_pk PRIMARY KEY (result_id);
 P   ALTER TABLE ONLY public.test_item_results DROP CONSTRAINT test_item_results_pk;
       public            rpuser    false    255            B           2606    17401    test_item test_item_uuid_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_uuid_key UNIQUE (uuid);
 F   ALTER TABLE ONLY public.test_item DROP CONSTRAINT test_item_uuid_key;
       public            rpuser    false    254            Ç           2606    17714    ticket ticket_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_pk;
       public            rpuser    false    279            
           2606    17064 .   project_attribute unique_attribute_per_project 
   CONSTRAINT     é   ALTER TABLE ONLY public.project_attribute
    ADD CONSTRAINT unique_attribute_per_project PRIMARY KEY (attribute_id, project_id);
 X   ALTER TABLE ONLY public.project_attribute DROP CONSTRAINT unique_attribute_per_project;
       public            rpuser    false    232    232            v           2606    17647    statistics unique_stats_item 
   CONSTRAINT     o   ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT unique_stats_item UNIQUE (statistics_field_id, item_id);
 F   ALTER TABLE ONLY public.statistics DROP CONSTRAINT unique_stats_item;
       public            rpuser    false    275    275            x           2606    17649    statistics unique_stats_launch 
   CONSTRAINT     s   ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT unique_stats_launch UNIQUE (statistics_field_id, launch_id);
 H   ALTER TABLE ONLY public.statistics DROP CONSTRAINT unique_stats_launch;
       public            rpuser    false    275    275            6           2606    17357    launch unq_name_number 
   CONSTRAINT     e   ALTER TABLE ONLY public.launch
    ADD CONSTRAINT unq_name_number UNIQUE (name, number, project_id);
 @   ALTER TABLE ONLY public.launch DROP CONSTRAINT unq_name_number;
       public            rpuser    false    250    250    250            K           2606    17449 #   pattern_template unq_name_projectid 
   CONSTRAINT     j   ALTER TABLE ONLY public.pattern_template
    ADD CONSTRAINT unq_name_projectid UNIQUE (name, project_id);
 M   ALTER TABLE ONLY public.pattern_template DROP CONSTRAINT unq_name_projectid;
       public            rpuser    false    257    257            :           2606    17380    launch_number unq_project_name 
   CONSTRAINT     l   ALTER TABLE ONLY public.launch_number
    ADD CONSTRAINT unq_project_name UNIQUE (project_id, launch_name);
 H   ALTER TABLE ONLY public.launch_number DROP CONSTRAINT unq_project_name;
       public            rpuser    false    252    252            Φ
           2606    16884 &   user_creation_bid user_creation_bid_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_creation_bid
    ADD CONSTRAINT user_creation_bid_pk PRIMARY KEY (uuid);
 P   ALTER TABLE ONLY public.user_creation_bid DROP CONSTRAINT user_creation_bid_pk;
       public            rpuser    false    211            c           2606    17584 "   user_preference user_preference_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.user_preference DROP CONSTRAINT user_preference_pk;
       public            rpuser    false    267            e           2606    17586 "   user_preference user_preference_uq 
   CONSTRAINT     w   ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_uq UNIQUE (project_id, user_id, filter_id);
 L   ALTER TABLE ONLY public.user_preference DROP CONSTRAINT user_preference_uq;
       public            rpuser    false    267    267    267            ╚           2606    18382    api_keys users_api_keys_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT users_api_keys_unique UNIQUE (name, user_id);
 H   ALTER TABLE ONLY public.api_keys DROP CONSTRAINT users_api_keys_unique;
       public            rpuser    false    302    302            ε
           2606    16916    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            rpuser    false    214            ≡
           2606    16914    users users_login_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_login_key;
       public            rpuser    false    214            ≥
           2606    16912    users users_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pk;
       public            rpuser    false    214            ⌠
           2606    16921    project_user users_project_pk 
   CONSTRAINT     l   ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT users_project_pk PRIMARY KEY (user_id, project_id);
 G   ALTER TABLE ONLY public.project_user DROP CONSTRAINT users_project_pk;
       public            rpuser    false    215    215            .           2606    17328    widget_filter widget_filter_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.widget_filter
    ADD CONSTRAINT widget_filter_pk PRIMARY KEY (widget_id, filter_id);
 H   ALTER TABLE ONLY public.widget_filter DROP CONSTRAINT widget_filter_pk;
       public            rpuser    false    248    248            ,           2606    17313 (   dashboard_widget widget_on_dashboard_unq 
   CONSTRAINT     å   ALTER TABLE ONLY public.dashboard_widget
    ADD CONSTRAINT widget_on_dashboard_unq UNIQUE (dashboard_id, widget_name, widget_owner);
 R   ALTER TABLE ONLY public.dashboard_widget DROP CONSTRAINT widget_on_dashboard_unq;
       public            rpuser    false    247    247    247            &           2606    17283    widget widget_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.widget
    ADD CONSTRAINT widget_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.widget DROP CONSTRAINT widget_pkey;
       public            rpuser    false    245            ¥           2606    17895 4   scheduler_blob_triggers scheduler_blob_triggers_pkey 
   CONSTRAINT     ù   ALTER TABLE ONLY quartz.scheduler_blob_triggers
    ADD CONSTRAINT scheduler_blob_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 ^   ALTER TABLE ONLY quartz.scheduler_blob_triggers DROP CONSTRAINT scheduler_blob_triggers_pkey;
       quartz            rpuser    false    286    286    286            ƒ           2606    17908 ,   scheduler_calendars scheduler_calendars_pkey 
   CONSTRAINT     ü   ALTER TABLE ONLY quartz.scheduler_calendars
    ADD CONSTRAINT scheduler_calendars_pkey PRIMARY KEY (sched_name, calendar_name);
 V   ALTER TABLE ONLY quartz.scheduler_calendars DROP CONSTRAINT scheduler_calendars_pkey;
       quartz            rpuser    false    287    287            Ö           2606    17869 4   scheduler_cron_triggers scheduler_cron_triggers_pkey 
   CONSTRAINT     ù   ALTER TABLE ONLY quartz.scheduler_cron_triggers
    ADD CONSTRAINT scheduler_cron_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 ^   ALTER TABLE ONLY quartz.scheduler_cron_triggers DROP CONSTRAINT scheduler_cron_triggers_pkey;
       quartz            rpuser    false    284    284    284            ⌐           2606    17921 6   scheduler_fired_triggers scheduler_fired_triggers_pkey 
   CONSTRAINT     å   ALTER TABLE ONLY quartz.scheduler_fired_triggers
    ADD CONSTRAINT scheduler_fired_triggers_pkey PRIMARY KEY (sched_name, entry_id);
 `   ALTER TABLE ONLY quartz.scheduler_fired_triggers DROP CONSTRAINT scheduler_fired_triggers_pkey;
       quartz            rpuser    false    289    289            ç           2606    17835 0   scheduler_job_details scheduler_job_details_pkey 
   CONSTRAINT     ï   ALTER TABLE ONLY quartz.scheduler_job_details
    ADD CONSTRAINT scheduler_job_details_pkey PRIMARY KEY (sched_name, job_name, job_group);
 Z   ALTER TABLE ONLY quartz.scheduler_job_details DROP CONSTRAINT scheduler_job_details_pkey;
       quartz            rpuser    false    281    281    281            ¡           2606    17931 $   scheduler_locks scheduler_locks_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY quartz.scheduler_locks
    ADD CONSTRAINT scheduler_locks_pkey PRIMARY KEY (sched_name, lock_name);
 N   ALTER TABLE ONLY quartz.scheduler_locks DROP CONSTRAINT scheduler_locks_pkey;
       quartz            rpuser    false    291    291            í           2606    17913 @   scheduler_paused_trigger_grps scheduler_paused_trigger_grps_pkey 
   CONSTRAINT     ò   ALTER TABLE ONLY quartz.scheduler_paused_trigger_grps
    ADD CONSTRAINT scheduler_paused_trigger_grps_pkey PRIMARY KEY (sched_name, trigger_group);
 j   ALTER TABLE ONLY quartz.scheduler_paused_trigger_grps DROP CONSTRAINT scheduler_paused_trigger_grps_pkey;
       quartz            rpuser    false    288    288            ½           2606    17926 8   scheduler_scheduler_state scheduler_scheduler_state_pkey 
   CONSTRAINT     ì   ALTER TABLE ONLY quartz.scheduler_scheduler_state
    ADD CONSTRAINT scheduler_scheduler_state_pkey PRIMARY KEY (sched_name, instance_name);
 b   ALTER TABLE ONLY quartz.scheduler_scheduler_state DROP CONSTRAINT scheduler_scheduler_state_pkey;
       quartz            rpuser    false    290    290            ù           2606    17856 8   scheduler_simple_triggers scheduler_simple_triggers_pkey 
   CONSTRAINT     ¢   ALTER TABLE ONLY quartz.scheduler_simple_triggers
    ADD CONSTRAINT scheduler_simple_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 b   ALTER TABLE ONLY quartz.scheduler_simple_triggers DROP CONSTRAINT scheduler_simple_triggers_pkey;
       quartz            rpuser    false    283    283    283            ¢           2606    17882 :   scheduler_simprop_triggers scheduler_simprop_triggers_pkey 
   CONSTRAINT     ¥   ALTER TABLE ONLY quartz.scheduler_simprop_triggers
    ADD CONSTRAINT scheduler_simprop_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 d   ALTER TABLE ONLY quartz.scheduler_simprop_triggers DROP CONSTRAINT scheduler_simprop_triggers_pkey;
       quartz            rpuser    false    285    285    285            ò           2606    17843 *   scheduler_triggers scheduler_triggers_pkey 
   CONSTRAINT     ì   ALTER TABLE ONLY quartz.scheduler_triggers
    ADD CONSTRAINT scheduler_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 T   ALTER TABLE ONLY quartz.scheduler_triggers DROP CONSTRAINT scheduler_triggers_pkey;
       quartz            rpuser    false    282    282    282            ╔           1259    18414    activity_created_at_idx    INDEX     R   CREATE INDEX activity_created_at_idx ON public.activity USING btree (created_at);
 +   DROP INDEX public.activity_created_at_idx;
       public            rpuser    false    304            ╩           1259    18415    activity_object_idx    INDEX     M   CREATE INDEX activity_object_idx ON public.activity USING btree (object_id);
 '   DROP INDEX public.activity_object_idx;
       public            rpuser    false    304            ═           1259    18413    activity_project_idx    INDEX     O   CREATE INDEX activity_project_idx ON public.activity USING btree (project_id);
 (   DROP INDEX public.activity_project_idx;
       public            rpuser    false    304            T           1259    17522    att_item_idx    INDEX     F   CREATE INDEX att_item_idx ON public.attachment USING btree (item_id);
     DROP INDEX public.att_item_idx;
       public            rpuser    false    263            U           1259    17521    att_launch_idx    INDEX     J   CREATE INDEX att_launch_idx ON public.attachment USING btree (launch_id);
 "   DROP INDEX public.att_launch_idx;
       public            rpuser    false    263            V           1259    17520    att_project_idx    INDEX     L   CREATE INDEX att_project_idx ON public.attachment USING btree (project_id);
 #   DROP INDEX public.att_project_idx;
       public            rpuser    false    263            Y           1259    18234 '   attachment_project_id_creation_time_idx    INDEX     s   CREATE INDEX attachment_project_id_creation_time_idx ON public.attachment USING btree (project_id, creation_date);
 ;   DROP INDEX public.attachment_project_id_creation_time_idx;
       public            rpuser    false    263    263            ▓           1259    18274    cluster_index_id_idx    INDEX     M   CREATE INDEX cluster_index_id_idx ON public.clusters USING btree (index_id);
 (   DROP INDEX public.cluster_index_id_idx;
       public            rpuser    false    295            ╣           1259    18282    cluster_item_cluster_idx    INDEX     ]   CREATE INDEX cluster_item_cluster_idx ON public.clusters_test_item USING btree (cluster_id);
 ,   DROP INDEX public.cluster_item_cluster_idx;
       public            rpuser    false    296            ║           1259    18283    cluster_item_item_idx    INDEX     W   CREATE INDEX cluster_item_item_idx ON public.clusters_test_item USING btree (item_id);
 )   DROP INDEX public.cluster_item_item_idx;
       public            rpuser    false    296            │           1259    18276    cluster_launch_idx    INDEX     L   CREATE INDEX cluster_launch_idx ON public.clusters USING btree (launch_id);
 &   DROP INDEX public.cluster_launch_idx;
       public            rpuser    false    295            ┤           1259    18275    cluster_project_idx    INDEX     N   CREATE INDEX cluster_project_idx ON public.clusters USING btree (project_id);
 '   DROP INDEX public.cluster_project_idx;
       public            rpuser    false    295            '           1259    17301    content_field_idx    INDEX     L   CREATE INDEX content_field_idx ON public.content_field USING btree (field);
 %   DROP INDEX public.content_field_idx;
       public            rpuser    false    246            (           1259    17300    content_field_widget_idx    INDEX     P   CREATE INDEX content_field_widget_idx ON public.content_field USING btree (id);
 ,   DROP INDEX public.content_field_widget_idx;
       public            rpuser    false    246                       1259    17243    filter_cond_filter_idx    INDEX     X   CREATE INDEX filter_cond_filter_idx ON public.filter_condition USING btree (filter_id);
 *   DROP INDEX public.filter_cond_filter_idx;
       public            rpuser    false    241                        1259    17261    filter_sort_filter_idx    INDEX     S   CREATE INDEX filter_sort_filter_idx ON public.filter_sort USING btree (filter_id);
 *   DROP INDEX public.filter_sort_filter_idx;
       public            rpuser    false    243            ╞           1259    18388    hash_api_keys_idx    INDEX     F   CREATE INDEX hash_api_keys_idx ON public.api_keys USING btree (hash);
 %   DROP INDEX public.hash_api_keys_idx;
       public            rpuser    false    302                       1259    17111    integr_project_idx    INDEX     P   CREATE INDEX integr_project_idx ON public.integration USING btree (project_id);
 &   DROP INDEX public.integr_project_idx;
       public            rpuser    false    236            {           1259    17702    issue_it_idx    INDEX     D   CREATE INDEX issue_it_idx ON public.issue USING btree (issue_type);
     DROP INDEX public.issue_it_idx;
       public            rpuser    false    277            h           1259    17625    issue_type_group_idx    INDEX     U   CREATE INDEX issue_type_group_idx ON public.issue_type USING btree (issue_group_id);
 (   DROP INDEX public.issue_type_group_idx;
       public            rpuser    false    271            P           1259    17508    item_attr_launch_idx    INDEX     T   CREATE INDEX item_attr_launch_idx ON public.item_attribute USING btree (launch_id);
 (   DROP INDEX public.item_attr_launch_idx;
       public            rpuser    false    261            Q           1259    17507    item_attr_ti_idx    INDEX     N   CREATE INDEX item_attr_ti_idx ON public.item_attribute USING btree (item_id);
 $   DROP INDEX public.item_attr_ti_idx;
       public            rpuser    false    261            ;           1259    18044    item_test_case_id_launch_id_idx    INDEX     h   CREATE INDEX item_test_case_id_launch_id_idx ON public.test_item USING btree (test_case_id, launch_id);
 3   DROP INDEX public.item_test_case_id_launch_id_idx;
       public            rpuser    false    254    254                       1259    17036    l_attr_rl_send_case_idx    INDEX     d   CREATE INDEX l_attr_rl_send_case_idx ON public.launch_attribute_rules USING btree (sender_case_id);
 +   DROP INDEX public.l_attr_rl_send_case_idx;
       public            rpuser    false    226            1           1259    18235    launch_project_start_time_idx    INDEX     b   CREATE INDEX launch_project_start_time_idx ON public.launch USING btree (project_id, start_time);
 1   DROP INDEX public.launch_project_start_time_idx;
       public            rpuser    false    250    250            2           1259    17369    launch_user_idx    INDEX     E   CREATE INDEX launch_user_idx ON public.launch USING btree (user_id);
 #   DROP INDEX public.launch_user_idx;
       public            rpuser    false    250                       1259    17019    ln_send_case_idx    INDEX     S   CREATE INDEX ln_send_case_idx ON public.launch_names USING btree (sender_case_id);
 $   DROP INDEX public.ln_send_case_idx;
       public            rpuser    false    224            Z           1259    17965    log_attach_id_idx    INDEX     J   CREATE INDEX log_attach_id_idx ON public.log USING btree (attachment_id);
 %   DROP INDEX public.log_attach_id_idx;
       public            rpuser    false    265            [           1259    18284    log_cluster_idx    INDEX     E   CREATE INDEX log_cluster_idx ON public.log USING btree (cluster_id);
 #   DROP INDEX public.log_cluster_idx;
       public            rpuser    false    265            \           1259    17966    log_launch_id_idx    INDEX     F   CREATE INDEX log_launch_id_idx ON public.log USING btree (launch_id);
 %   DROP INDEX public.log_launch_id_idx;
       public            rpuser    false    265            _           1259    18233    log_project_id_log_time_idx    INDEX     [   CREATE INDEX log_project_id_log_time_idx ON public.log USING btree (project_id, log_time);
 /   DROP INDEX public.log_project_id_log_time_idx;
       public            rpuser    false    265    265            `           1259    18145    log_project_idx    INDEX     E   CREATE INDEX log_project_idx ON public.log USING btree (project_id);
 #   DROP INDEX public.log_project_idx;
       public            rpuser    false    265            a           1259    17552 
   log_ti_idx    INDEX     =   CREATE INDEX log_ti_idx ON public.log USING btree (item_id);
    DROP INDEX public.log_ti_idx;
       public            rpuser    false    265            O           1259    17483    parameter_ti_idx    INDEX     I   CREATE INDEX parameter_ti_idx ON public.parameter USING btree (item_id);
 $   DROP INDEX public.parameter_ti_idx;
       public            rpuser    false    259            <           1259    17435 
   path_gist_idx    INDEX     B   CREATE INDEX path_gist_idx ON public.test_item USING gist (path);
 !   DROP INDEX public.path_gist_idx;
       public            rpuser    false    254    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4            L           1259    17471    pattern_item_item_id_idx    INDEX     b   CREATE INDEX pattern_item_item_id_idx ON public.pattern_template_test_item USING btree (item_id);
 ,   DROP INDEX public.pattern_item_item_id_idx;
       public            rpuser    false    258            	           1259    17045    rcpnt_send_case_idx    INDEX     T   CREATE INDEX rcpnt_send_case_idx ON public.recipients USING btree (sender_case_id);
 '   DROP INDEX public.rcpnt_send_case_idx;
       public            rpuser    false    227                       1259    17010    sender_case_project_idx    INDEX     U   CREATE INDEX sender_case_project_idx ON public.sender_case USING btree (project_id);
 +   DROP INDEX public.sender_case_project_idx;
       public            rpuser    false    223                       1259    17212    shared_entity_ownerx    INDEX     N   CREATE INDEX shared_entity_ownerx ON public.owned_entity USING btree (owner);
 (   DROP INDEX public.shared_entity_ownerx;
       public            rpuser    false    238                       1259    17213    shared_entity_project_idx    INDEX     X   CREATE INDEX shared_entity_project_idx ON public.owned_entity USING btree (project_id);
 -   DROP INDEX public.shared_entity_project_idx;
       public            rpuser    false    238            ├           1259    18338    stale_mv_creation_date_idx    INDEX     g   CREATE INDEX stale_mv_creation_date_idx ON public.stale_materialized_view USING btree (creation_date);
 .   DROP INDEX public.stale_mv_creation_date_idx;
       public            rpuser    false    300            q           1259    17666    statistics_launch_idx    INDEX     Q   CREATE INDEX statistics_launch_idx ON public.statistics USING btree (launch_id);
 )   DROP INDEX public.statistics_launch_idx;
       public            rpuser    false    275            t           1259    17665    statistics_ti_idx    INDEX     K   CREATE INDEX statistics_ti_idx ON public.statistics USING btree (item_id);
 %   DROP INDEX public.statistics_ti_idx;
       public            rpuser    false    275            =           1259    17994    test_case_hash_launch_id_idx    INDEX     g   CREATE INDEX test_case_hash_launch_id_idx ON public.test_item USING btree (test_case_hash, launch_id);
 0   DROP INDEX public.test_case_hash_launch_id_idx;
       public            rpuser    false    254    254            @           1259    17964 !   test_item_unique_id_launch_id_idx    INDEX     g   CREATE INDEX test_item_unique_id_launch_id_idx ON public.test_item USING btree (unique_id, launch_id);
 5   DROP INDEX public.test_item_unique_id_launch_id_idx;
       public            rpuser    false    254    254            C           1259    17418 
   ti_launch_idx    INDEX     H   CREATE INDEX ti_launch_idx ON public.test_item USING btree (launch_id);
 !   DROP INDEX public.ti_launch_idx;
       public            rpuser    false    254            D           1259    17417 
   ti_parent_idx    INDEX     H   CREATE INDEX ti_parent_idx ON public.test_item USING btree (parent_id);
 !   DROP INDEX public.ti_parent_idx;
       public            rpuser    false    254            E           1259    17419    ti_retry_of_idx    INDEX     I   CREATE INDEX ti_retry_of_idx ON public.test_item USING btree (retry_of);
 #   DROP INDEX public.ti_retry_of_idx;
       public            rpuser    false    254            ~           1259    18028 
   ticket_id_idx    INDEX     E   CREATE INDEX ticket_id_idx ON public.ticket USING btree (ticket_id);
 !   DROP INDEX public.ticket_id_idx;
       public            rpuser    false    279            ü           1259    17715    ticket_submitter_idx    INDEX     L   CREATE INDEX ticket_submitter_idx ON public.ticket USING btree (submitter);
 (   DROP INDEX public.ticket_submitter_idx;
       public            rpuser    false    279                       1259    17112    unique_global_integration_name    INDEX     ~   CREATE UNIQUE INDEX unique_global_integration_name ON public.integration USING btree (name, type) WHERE (project_id IS NULL);
 2   DROP INDEX public.unique_global_integration_name;
       public            rpuser    false    236    236    236                       1259    17113    unique_project_integration_name    INDEX     Å   CREATE UNIQUE INDEX unique_project_integration_name ON public.integration USING btree (name, type, project_id) WHERE (project_id IS NOT NULL);
 3   DROP INDEX public.unique_project_integration_name;
       public            rpuser    false    236    236    236    236                       1259    18439    unique_rule_name_per_project    INDEX     l   CREATE UNIQUE INDEX unique_rule_name_per_project ON public.sender_case USING btree (rule_name, project_id);
 0   DROP INDEX public.unique_rule_name_per_project;
       public            rpuser    false    223    223            ó           1259    17947 #   idx_scheduler_ft_inst_job_req_rcvry    INDEX     É   CREATE INDEX idx_scheduler_ft_inst_job_req_rcvry ON quartz.scheduler_fired_triggers USING btree (sched_name, instance_name, requests_recovery);
 7   DROP INDEX quartz.idx_scheduler_ft_inst_job_req_rcvry;
       quartz            rpuser    false    289    289    289            ú           1259    17948    idx_scheduler_ft_j_g    INDEX     t   CREATE INDEX idx_scheduler_ft_j_g ON quartz.scheduler_fired_triggers USING btree (sched_name, job_name, job_group);
 (   DROP INDEX quartz.idx_scheduler_ft_j_g;
       quartz            rpuser    false    289    289    289            ñ           1259    17949    idx_scheduler_ft_jg    INDEX     i   CREATE INDEX idx_scheduler_ft_jg ON quartz.scheduler_fired_triggers USING btree (sched_name, job_group);
 '   DROP INDEX quartz.idx_scheduler_ft_jg;
       quartz            rpuser    false    289    289            Ñ           1259    17950    idx_scheduler_ft_t_g    INDEX     |   CREATE INDEX idx_scheduler_ft_t_g ON quartz.scheduler_fired_triggers USING btree (sched_name, trigger_name, trigger_group);
 (   DROP INDEX quartz.idx_scheduler_ft_t_g;
       quartz            rpuser    false    289    289    289            ª           1259    17951    idx_scheduler_ft_tg    INDEX     m   CREATE INDEX idx_scheduler_ft_tg ON quartz.scheduler_fired_triggers USING btree (sched_name, trigger_group);
 '   DROP INDEX quartz.idx_scheduler_ft_tg;
       quartz            rpuser    false    289    289            º           1259    17946    idx_scheduler_ft_trig_inst_name    INDEX     y   CREATE INDEX idx_scheduler_ft_trig_inst_name ON quartz.scheduler_fired_triggers USING btree (sched_name, instance_name);
 3   DROP INDEX quartz.idx_scheduler_ft_trig_inst_name;
       quartz            rpuser    false    289    289            ä           1259    17933    idx_scheduler_j_grp    INDEX     f   CREATE INDEX idx_scheduler_j_grp ON quartz.scheduler_job_details USING btree (sched_name, job_group);
 '   DROP INDEX quartz.idx_scheduler_j_grp;
       quartz            rpuser    false    281    281            à           1259    17932    idx_scheduler_j_req_recovery    INDEX     w   CREATE INDEX idx_scheduler_j_req_recovery ON quartz.scheduler_job_details USING btree (sched_name, requests_recovery);
 0   DROP INDEX quartz.idx_scheduler_j_req_recovery;
       quartz            rpuser    false    281    281            ê           1259    17936    idx_scheduler_t_c    INDEX     e   CREATE INDEX idx_scheduler_t_c ON quartz.scheduler_triggers USING btree (sched_name, calendar_name);
 %   DROP INDEX quartz.idx_scheduler_t_c;
       quartz            rpuser    false    282    282            ë           1259    17937    idx_scheduler_t_g    INDEX     e   CREATE INDEX idx_scheduler_t_g ON quartz.scheduler_triggers USING btree (sched_name, trigger_group);
 %   DROP INDEX quartz.idx_scheduler_t_g;
       quartz            rpuser    false    282    282            è           1259    17934    idx_scheduler_t_j    INDEX     k   CREATE INDEX idx_scheduler_t_j ON quartz.scheduler_triggers USING btree (sched_name, job_name, job_group);
 %   DROP INDEX quartz.idx_scheduler_t_j;
       quartz            rpuser    false    282    282    282            ï           1259    17935    idx_scheduler_t_jg    INDEX     b   CREATE INDEX idx_scheduler_t_jg ON quartz.scheduler_triggers USING btree (sched_name, job_group);
 &   DROP INDEX quartz.idx_scheduler_t_jg;
       quartz            rpuser    false    282    282            î           1259    17940    idx_scheduler_t_n_g_state    INDEX     |   CREATE INDEX idx_scheduler_t_n_g_state ON quartz.scheduler_triggers USING btree (sched_name, trigger_group, trigger_state);
 -   DROP INDEX quartz.idx_scheduler_t_n_g_state;
       quartz            rpuser    false    282    282    282            ì           1259    17939    idx_scheduler_t_n_state    INDEX     ê   CREATE INDEX idx_scheduler_t_n_state ON quartz.scheduler_triggers USING btree (sched_name, trigger_name, trigger_group, trigger_state);
 +   DROP INDEX quartz.idx_scheduler_t_n_state;
       quartz            rpuser    false    282    282    282    282            Ä           1259    17941    idx_scheduler_t_next_fire_time    INDEX     s   CREATE INDEX idx_scheduler_t_next_fire_time ON quartz.scheduler_triggers USING btree (sched_name, next_fire_time);
 2   DROP INDEX quartz.idx_scheduler_t_next_fire_time;
       quartz            rpuser    false    282    282            Å           1259    17943    idx_scheduler_t_nft_misfire    INDEX        CREATE INDEX idx_scheduler_t_nft_misfire ON quartz.scheduler_triggers USING btree (sched_name, misfire_instr, next_fire_time);
 /   DROP INDEX quartz.idx_scheduler_t_nft_misfire;
       quartz            rpuser    false    282    282    282            É           1259    17942    idx_scheduler_t_nft_st    INDEX     z   CREATE INDEX idx_scheduler_t_nft_st ON quartz.scheduler_triggers USING btree (sched_name, trigger_state, next_fire_time);
 *   DROP INDEX quartz.idx_scheduler_t_nft_st;
       quartz            rpuser    false    282    282    282            æ           1259    17944    idx_scheduler_t_nft_st_misfire    INDEX     æ   CREATE INDEX idx_scheduler_t_nft_st_misfire ON quartz.scheduler_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_state);
 2   DROP INDEX quartz.idx_scheduler_t_nft_st_misfire;
       quartz            rpuser    false    282    282    282    282            Æ           1259    17945 "   idx_scheduler_t_nft_st_misfire_grp    INDEX     ñ   CREATE INDEX idx_scheduler_t_nft_st_misfire_grp ON quartz.scheduler_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_group, trigger_state);
 6   DROP INDEX quartz.idx_scheduler_t_nft_st_misfire_grp;
       quartz            rpuser    false    282    282    282    282    282            ô           1259    17938    idx_scheduler_t_state    INDEX     i   CREATE INDEX idx_scheduler_t_state ON quartz.scheduler_triggers USING btree (sched_name, trigger_state);
 )   DROP INDEX quartz.idx_scheduler_t_state;
       quartz            rpuser    false    282    282                       2620    17814    issue after_issue_insert    TRIGGER     â   CREATE TRIGGER after_issue_insert AFTER INSERT ON public.issue FOR EACH ROW EXECUTE FUNCTION public.increment_defect_statistics();
 1   DROP TRIGGER after_issue_insert ON public.issue;
       public          rpuser    false    277    461                       2620    17816    issue after_issue_update    TRIGGER     Ç   CREATE TRIGGER after_issue_update AFTER UPDATE ON public.issue FOR EACH ROW EXECUTE FUNCTION public.update_defect_statistics();
 1   DROP TRIGGER after_issue_update ON public.issue;
       public          rpuser    false    277    462            
           2620    17812 +   test_item_results after_test_results_update    TRIGGER     ù   CREATE TRIGGER after_test_results_update AFTER UPDATE ON public.test_item_results FOR EACH ROW EXECUTE FUNCTION public.update_executions_statistics();
 D   DROP TRIGGER after_test_results_update ON public.test_item_results;
       public          rpuser    false    255    458                       2620    17808     issue_ticket after_ticket_delete    TRIGGER     â   CREATE TRIGGER after_ticket_delete AFTER DELETE ON public.issue_ticket FOR EACH ROW EXECUTE FUNCTION public.check_wired_tickets();
 9   DROP TRIGGER after_ticket_delete ON public.issue_ticket;
       public          rpuser    false    457    280                       2620    17810 #   launch approximate_duration_trigger    TRIGGER     Ä   CREATE TRIGGER approximate_duration_trigger BEFORE INSERT ON public.launch FOR EACH ROW EXECUTE FUNCTION public.count_approximate_duration();
 <   DROP TRIGGER approximate_duration_trigger ON public.launch;
       public          rpuser    false    456    250                       2620    17818    issue before_issue_delete    TRIGGER     é   CREATE TRIGGER before_issue_delete BEFORE DELETE ON public.issue FOR EACH ROW EXECUTE FUNCTION public.delete_defect_statistics();
 2   DROP TRIGGER before_issue_delete ON public.issue;
       public          rpuser    false    459    277                       2620    17820 $   test_item_results before_item_delete    TRIGGER     ê   CREATE TRIGGER before_item_delete BEFORE DELETE ON public.test_item_results FOR EACH ROW EXECUTE FUNCTION public.decrease_statistics();
 =   DROP TRIGGER before_item_delete ON public.test_item_results;
       public          rpuser    false    255    463                       2620    17809 !   launch last_launch_number_trigger    TRIGGER     ê   CREATE TRIGGER last_launch_number_trigger BEFORE INSERT ON public.launch FOR EACH ROW EXECUTE FUNCTION public.get_last_launch_number();
 :   DROP TRIGGER last_launch_number_trigger ON public.launch;
       public          rpuser    false    250    455            
           2620    18421 &   users update_owner_name_on_user_delete    TRIGGER     É   CREATE TRIGGER update_owner_name_on_user_delete AFTER DELETE ON public.users FOR EACH ROW EXECUTE FUNCTION public.change_user_name_on_delete();
 ?   DROP TRIGGER update_owner_name_on_user_delete ON public.users;
       public          rpuser    false    214    468            	           2606    18408 !   activity activity_project_id_fkey 
   FK CONSTRAINT     ù   ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.activity DROP CONSTRAINT activity_project_id_fkey;
       public          rpuser    false    210    304    3558                       2606    18383    api_keys api_keys_user_id_fkey 
   FK CONSTRAINT     Å   ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.api_keys DROP CONSTRAINT api_keys_user_id_fkey;
       public          rpuser    false    302    214    3570            ß           2606    17295 #   content_field content_field_id_fkey 
   FK CONSTRAINT     É   ALTER TABLE ONLY public.content_field
    ADD CONSTRAINT content_field_id_fkey FOREIGN KEY (id) REFERENCES public.widget(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.content_field DROP CONSTRAINT content_field_id_fkey;
       public          rpuser    false    3622    245    246            ▀           2606    17271    dashboard dashboard_id_fk 
   FK CONSTRAINT     î   ALTER TABLE ONLY public.dashboard
    ADD CONSTRAINT dashboard_id_fk FOREIGN KEY (id) REFERENCES public.owned_entity(id) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.dashboard DROP CONSTRAINT dashboard_id_fk;
       public          rpuser    false    238    3608    244            Γ           2606    17314 3   dashboard_widget dashboard_widget_dashboard_id_fkey 
   FK CONSTRAINT     ¡   ALTER TABLE ONLY public.dashboard_widget
    ADD CONSTRAINT dashboard_widget_dashboard_id_fkey FOREIGN KEY (dashboard_id) REFERENCES public.dashboard(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.dashboard_widget DROP CONSTRAINT dashboard_widget_dashboard_id_fkey;
       public          rpuser    false    3620    247    244            π           2606    17319 0   dashboard_widget dashboard_widget_widget_id_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.dashboard_widget
    ADD CONSTRAINT dashboard_widget_widget_id_fkey FOREIGN KEY (widget_id) REFERENCES public.widget(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.dashboard_widget DROP CONSTRAINT dashboard_widget_widget_id_fkey;
       public          rpuser    false    245    247    3622            ▌           2606    17238 0   filter_condition filter_condition_filter_id_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.filter_condition
    ADD CONSTRAINT filter_condition_filter_id_fkey FOREIGN KEY (filter_id) REFERENCES public.filter(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.filter_condition DROP CONSTRAINT filter_condition_filter_id_fkey;
       public          rpuser    false    239    241    3612            ▄           2606    17222    filter filter_id_fk 
   FK CONSTRAINT     å   ALTER TABLE ONLY public.filter
    ADD CONSTRAINT filter_id_fk FOREIGN KEY (id) REFERENCES public.owned_entity(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.filter DROP CONSTRAINT filter_id_fk;
       public          rpuser    false    239    238    3608            ▐           2606    17256 &   filter_sort filter_sort_filter_id_fkey 
   FK CONSTRAINT     Ü   ALTER TABLE ONLY public.filter_sort
    ADD CONSTRAINT filter_sort_filter_id_fkey FOREIGN KEY (filter_id) REFERENCES public.filter(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.filter_sort DROP CONSTRAINT filter_sort_filter_id_fkey;
       public          rpuser    false    239    3612    243            ┘           2606    17101 '   integration integration_project_id_fkey 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.integration
    ADD CONSTRAINT integration_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.integration DROP CONSTRAINT integration_project_id_fkey;
       public          rpuser    false    210    236    3558            ┌           2606    17106 !   integration integration_type_fkey 
   FK CONSTRAINT     Ü   ALTER TABLE ONLY public.integration
    ADD CONSTRAINT integration_type_fkey FOREIGN KEY (type) REFERENCES public.integration_type(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.integration DROP CONSTRAINT integration_type_fkey;
       public          rpuser    false    234    3601    236                        2606    17692    issue issue_issue_id_fkey 
   FK CONSTRAINT     ₧   ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.test_item_results(result_id) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.issue DROP CONSTRAINT issue_issue_id_fkey;
       public          rpuser    false    277    255    3655                        2606    17697    issue issue_issue_type_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_issue_type_fkey FOREIGN KEY (issue_type) REFERENCES public.issue_type(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.issue DROP CONSTRAINT issue_issue_type_fkey;
       public          rpuser    false    271    277    3692                       2606    17721 '   issue_ticket issue_ticket_issue_id_fkey 
   FK CONSTRAINT     ƒ   ALTER TABLE ONLY public.issue_ticket
    ADD CONSTRAINT issue_ticket_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES public.issue(issue_id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.issue_ticket DROP CONSTRAINT issue_ticket_issue_id_fkey;
       public          rpuser    false    277    280    3709                       2606    17726 (   issue_ticket issue_ticket_ticket_id_fkey 
   FK CONSTRAINT     è   ALTER TABLE ONLY public.issue_ticket
    ADD CONSTRAINT issue_ticket_ticket_id_fkey FOREIGN KEY (ticket_id) REFERENCES public.ticket(id);
 R   ALTER TABLE ONLY public.issue_ticket DROP CONSTRAINT issue_ticket_ticket_id_fkey;
       public          rpuser    false    279    3712    280            ∙           2606    17620 )   issue_type issue_type_issue_group_id_fkey 
   FK CONSTRAINT     │   ALTER TABLE ONLY public.issue_type
    ADD CONSTRAINT issue_type_issue_group_id_fkey FOREIGN KEY (issue_group_id) REFERENCES public.issue_group(issue_group_id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.issue_type DROP CONSTRAINT issue_type_issue_group_id_fkey;
       public          rpuser    false    3687    269    271            ■           2606    17677 8   issue_type_project issue_type_project_issue_type_id_fkey 
   FK CONSTRAINT     ┤   ALTER TABLE ONLY public.issue_type_project
    ADD CONSTRAINT issue_type_project_issue_type_id_fkey FOREIGN KEY (issue_type_id) REFERENCES public.issue_type(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.issue_type_project DROP CONSTRAINT issue_type_project_issue_type_id_fkey;
       public          rpuser    false    3692    276    271            ²           2606    17672 5   issue_type_project issue_type_project_project_id_fkey 
   FK CONSTRAINT     ½   ALTER TABLE ONLY public.issue_type_project
    ADD CONSTRAINT issue_type_project_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.issue_type_project DROP CONSTRAINT issue_type_project_project_id_fkey;
       public          rpuser    false    3558    276    210            ±           2606    17497 *   item_attribute item_attribute_item_id_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.item_attribute
    ADD CONSTRAINT item_attribute_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.item_attribute DROP CONSTRAINT item_attribute_item_id_fkey;
       public          rpuser    false    3647    254    261            ≥           2606    17502 ,   item_attribute item_attribute_launch_id_fkey 
   FK CONSTRAINT     á   ALTER TABLE ONLY public.item_attribute
    ADD CONSTRAINT item_attribute_launch_id_fkey FOREIGN KEY (launch_id) REFERENCES public.launch(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.item_attribute DROP CONSTRAINT item_attribute_launch_id_fkey;
       public          rpuser    false    261    250    3632            ╒           2606    17031 A   launch_attribute_rules launch_attribute_rules_sender_case_id_fkey 
   FK CONSTRAINT     ┐   ALTER TABLE ONLY public.launch_attribute_rules
    ADD CONSTRAINT launch_attribute_rules_sender_case_id_fkey FOREIGN KEY (sender_case_id) REFERENCES public.sender_case(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.launch_attribute_rules DROP CONSTRAINT launch_attribute_rules_sender_case_id_fkey;
       public          rpuser    false    223    3586    226            ╘           2606    17014 -   launch_names launch_names_sender_case_id_fkey 
   FK CONSTRAINT     ½   ALTER TABLE ONLY public.launch_names
    ADD CONSTRAINT launch_names_sender_case_id_fkey FOREIGN KEY (sender_case_id) REFERENCES public.sender_case(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.launch_names DROP CONSTRAINT launch_names_sender_case_id_fkey;
       public          rpuser    false    224    223    3586            Φ           2606    17381 +   launch_number launch_number_project_id_fkey 
   FK CONSTRAINT     í   ALTER TABLE ONLY public.launch_number
    ADD CONSTRAINT launch_number_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.launch_number DROP CONSTRAINT launch_number_project_id_fkey;
       public          rpuser    false    210    3558    252            µ           2606    17358    launch launch_project_id_fkey 
   FK CONSTRAINT     ô   ALTER TABLE ONLY public.launch
    ADD CONSTRAINT launch_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.launch DROP CONSTRAINT launch_project_id_fkey;
       public          rpuser    false    250    3558    210            τ           2606    17363    launch launch_user_id_fkey 
   FK CONSTRAINT     î   ALTER TABLE ONLY public.launch
    ADD CONSTRAINT launch_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.launch DROP CONSTRAINT launch_user_id_fkey;
       public          rpuser    false    250    3570    214            ⌡           2606    17547    log log_attachment_id_fkey 
   FK CONSTRAINT     ù   ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_attachment_id_fkey FOREIGN KEY (attachment_id) REFERENCES public.attachment(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.log DROP CONSTRAINT log_attachment_id_fkey;
       public          rpuser    false    265    263    3672            ≤           2606    17537    log log_item_id_fkey 
   FK CONSTRAINT     Ä   ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.log DROP CONSTRAINT log_item_id_fkey;
       public          rpuser    false    254    265    3647            ⌠           2606    17542    log log_launch_id_fkey 
   FK CONSTRAINT     è   ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_launch_id_fkey FOREIGN KEY (launch_id) REFERENCES public.launch(id) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.log DROP CONSTRAINT log_launch_id_fkey;
       public          rpuser    false    250    265    3632            ╥           2606    16989 X   oauth_registration_restriction oauth_registration_restriction_oauth_registration_fk_fkey 
   FK CONSTRAINT     Σ   ALTER TABLE ONLY public.oauth_registration_restriction
    ADD CONSTRAINT oauth_registration_restriction_oauth_registration_fk_fkey FOREIGN KEY (oauth_registration_fk) REFERENCES public.oauth_registration(id) ON DELETE CASCADE;
 é   ALTER TABLE ONLY public.oauth_registration_restriction DROP CONSTRAINT oauth_registration_restriction_oauth_registration_fk_fkey;
       public          rpuser    false    216    3576    220            ╤           2606    16971 L   oauth_registration_scope oauth_registration_scope_oauth_registration_fk_fkey 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.oauth_registration_scope
    ADD CONSTRAINT oauth_registration_scope_oauth_registration_fk_fkey FOREIGN KEY (oauth_registration_fk) REFERENCES public.oauth_registration(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.oauth_registration_scope DROP CONSTRAINT oauth_registration_scope_oauth_registration_fk_fkey;
       public          rpuser    false    3576    216    218            ≡           2606    17478     parameter parameter_item_id_fkey 
   FK CONSTRAINT     Ü   ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT parameter_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.parameter DROP CONSTRAINT parameter_item_id_fkey;
       public          rpuser    false    254    3647    259            φ           2606    17450 1   pattern_template pattern_template_project_id_fkey 
   FK CONSTRAINT     º   ALTER TABLE ONLY public.pattern_template
    ADD CONSTRAINT pattern_template_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.pattern_template DROP CONSTRAINT pattern_template_project_id_fkey;
       public          rpuser    false    210    257    3558            ∩           2606    17465 B   pattern_template_test_item pattern_template_test_item_item_id_fkey 
   FK CONSTRAINT     ╝   ALTER TABLE ONLY public.pattern_template_test_item
    ADD CONSTRAINT pattern_template_test_item_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.pattern_template_test_item DROP CONSTRAINT pattern_template_test_item_item_id_fkey;
       public          rpuser    false    3647    258    254            ε           2606    17460 E   pattern_template_test_item pattern_template_test_item_pattern_id_fkey 
   FK CONSTRAINT     ─   ALTER TABLE ONLY public.pattern_template_test_item
    ADD CONSTRAINT pattern_template_test_item_pattern_id_fkey FOREIGN KEY (pattern_id) REFERENCES public.pattern_template(id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY public.pattern_template_test_item DROP CONSTRAINT pattern_template_test_item_pattern_id_fkey;
       public          rpuser    false    258    3657    257            ╫           2606    17065 5   project_attribute project_attribute_attribute_id_fkey 
   FK CONSTRAINT     »   ALTER TABLE ONLY public.project_attribute
    ADD CONSTRAINT project_attribute_attribute_id_fkey FOREIGN KEY (attribute_id) REFERENCES public.attribute(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.project_attribute DROP CONSTRAINT project_attribute_attribute_id_fkey;
       public          rpuser    false    232    3595    229            ╪           2606    17070 3   project_attribute project_attribute_project_id_fkey 
   FK CONSTRAINT     ⌐   ALTER TABLE ONLY public.project_attribute
    ADD CONSTRAINT project_attribute_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.project_attribute DROP CONSTRAINT project_attribute_project_id_fkey;
       public          rpuser    false    210    3558    232            ╨           2606    16927 )   project_user project_user_project_id_fkey 
   FK CONSTRAINT     ƒ   ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.project_user DROP CONSTRAINT project_user_project_id_fkey;
       public          rpuser    false    215    210    3558            ╧           2606    16922 &   project_user project_user_user_id_fkey 
   FK CONSTRAINT     ù   ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.project_user DROP CONSTRAINT project_user_user_id_fkey;
       public          rpuser    false    214    3570    215            ╓           2606    17040 )   recipients recipients_sender_case_id_fkey 
   FK CONSTRAINT     º   ALTER TABLE ONLY public.recipients
    ADD CONSTRAINT recipients_sender_case_id_fkey FOREIGN KEY (sender_case_id) REFERENCES public.sender_case(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.recipients DROP CONSTRAINT recipients_sender_case_id_fkey;
       public          rpuser    false    3586    223    227            ╙           2606    17005 '   sender_case sender_case_project_id_fkey 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.sender_case
    ADD CONSTRAINT sender_case_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.sender_case DROP CONSTRAINT sender_case_project_id_fkey;
       public          rpuser    false    3558    223    210            █           2606    17207 -   owned_entity shareable_entity_project_id_fkey 
   FK CONSTRAINT     ú   ALTER TABLE ONLY public.owned_entity
    ADD CONSTRAINT shareable_entity_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.owned_entity DROP CONSTRAINT shareable_entity_project_id_fkey;
       public          rpuser    false    3558    238    210            √           2606    17655 "   statistics statistics_item_id_fkey 
   FK CONSTRAINT     £   ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.statistics DROP CONSTRAINT statistics_item_id_fkey;
       public          rpuser    false    254    275    3647            ·           2606    17650 $   statistics statistics_launch_id_fkey 
   FK CONSTRAINT     ÿ   ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_launch_id_fkey FOREIGN KEY (launch_id) REFERENCES public.launch(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.statistics DROP CONSTRAINT statistics_launch_id_fkey;
       public          rpuser    false    275    3632    250            ⁿ           2606    17660 .   statistics statistics_statistics_field_id_fkey 
   FK CONSTRAINT     ╣   ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_statistics_field_id_fkey FOREIGN KEY (statistics_field_id) REFERENCES public.statistics_field(sf_id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.statistics DROP CONSTRAINT statistics_statistics_field_id_fkey;
       public          rpuser    false    273    275    3696            δ           2606    17412 "   test_item test_item_launch_id_fkey 
   FK CONSTRAINT     û   ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_launch_id_fkey FOREIGN KEY (launch_id) REFERENCES public.launch(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.test_item DROP CONSTRAINT test_item_launch_id_fkey;
       public          rpuser    false    3632    250    254            Θ           2606    17402 "   test_item test_item_parent_id_fkey 
   FK CONSTRAINT     ₧   ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.test_item DROP CONSTRAINT test_item_parent_id_fkey;
       public          rpuser    false    254    254    3647            ∞           2606    17430 2   test_item_results test_item_results_result_id_fkey 
   FK CONSTRAINT     «   ALTER TABLE ONLY public.test_item_results
    ADD CONSTRAINT test_item_results_result_id_fkey FOREIGN KEY (result_id) REFERENCES public.test_item(item_id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.test_item_results DROP CONSTRAINT test_item_results_result_id_fkey;
       public          rpuser    false    3647    255    254            Ω           2606    17407 !   test_item test_item_retry_of_fkey 
   FK CONSTRAINT     £   ALTER TABLE ONLY public.test_item
    ADD CONSTRAINT test_item_retry_of_fkey FOREIGN KEY (retry_of) REFERENCES public.test_item(item_id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.test_item DROP CONSTRAINT test_item_retry_of_fkey;
       public          rpuser    false    3647    254    254            ╬           2606    18426 9   user_creation_bid user_creation_bid_inviting_user_id_fkey 
   FK CONSTRAINT     │   ALTER TABLE ONLY public.user_creation_bid
    ADD CONSTRAINT user_creation_bid_inviting_user_id_fkey FOREIGN KEY (inviting_user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.user_creation_bid DROP CONSTRAINT user_creation_bid_inviting_user_id_fkey;
       public          rpuser    false    214    211    3570            °           2606    17597 .   user_preference user_preference_filter_id_fkey 
   FK CONSTRAINT     ó   ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_filter_id_fkey FOREIGN KEY (filter_id) REFERENCES public.filter(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.user_preference DROP CONSTRAINT user_preference_filter_id_fkey;
       public          rpuser    false    267    239    3612            ÷           2606    17587 /   user_preference user_preference_project_id_fkey 
   FK CONSTRAINT     Ñ   ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.user_preference DROP CONSTRAINT user_preference_project_id_fkey;
       public          rpuser    false    3558    210    267            ≈           2606    17592 ,   user_preference user_preference_user_id_fkey 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.user_preference DROP CONSTRAINT user_preference_user_id_fkey;
       public          rpuser    false    214    267    3570            σ           2606    17334 *   widget_filter widget_filter_filter_id_fkey 
   FK CONSTRAINT     ₧   ALTER TABLE ONLY public.widget_filter
    ADD CONSTRAINT widget_filter_filter_id_fkey FOREIGN KEY (filter_id) REFERENCES public.filter(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.widget_filter DROP CONSTRAINT widget_filter_filter_id_fkey;
       public          rpuser    false    3612    239    248            Σ           2606    17329 *   widget_filter widget_filter_widget_id_fkey 
   FK CONSTRAINT     ₧   ALTER TABLE ONLY public.widget_filter
    ADD CONSTRAINT widget_filter_widget_id_fkey FOREIGN KEY (widget_id) REFERENCES public.widget(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.widget_filter DROP CONSTRAINT widget_filter_widget_id_fkey;
       public          rpuser    false    3622    245    248            α           2606    17284    widget widget_id_fk 
   FK CONSTRAINT     å   ALTER TABLE ONLY public.widget
    ADD CONSTRAINT widget_id_fk FOREIGN KEY (id) REFERENCES public.owned_entity(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.widget DROP CONSTRAINT widget_id_fk;
       public          rpuser    false    3608    245    238                       2606    17896 W   scheduler_blob_triggers scheduler_blob_triggers_sched_name_trigger_name_trigger_gr_fkey 
   FK CONSTRAINT       ALTER TABLE ONLY quartz.scheduler_blob_triggers
    ADD CONSTRAINT scheduler_blob_triggers_sched_name_trigger_name_trigger_gr_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES quartz.scheduler_triggers(sched_name, trigger_name, trigger_group);
 ü   ALTER TABLE ONLY quartz.scheduler_blob_triggers DROP CONSTRAINT scheduler_blob_triggers_sched_name_trigger_name_trigger_gr_fkey;
       quartz          rpuser    false    282    282    286    286    286    3733    282                       2606    17870 W   scheduler_cron_triggers scheduler_cron_triggers_sched_name_trigger_name_trigger_gr_fkey 
   FK CONSTRAINT       ALTER TABLE ONLY quartz.scheduler_cron_triggers
    ADD CONSTRAINT scheduler_cron_triggers_sched_name_trigger_name_trigger_gr_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES quartz.scheduler_triggers(sched_name, trigger_name, trigger_group);
 ü   ALTER TABLE ONLY quartz.scheduler_cron_triggers DROP CONSTRAINT scheduler_cron_triggers_sched_name_trigger_name_trigger_gr_fkey;
       quartz          rpuser    false    284    282    282    284    282    3733    284                       2606    17857 Y   scheduler_simple_triggers scheduler_simple_triggers_sched_name_trigger_name_trigger__fkey 
   FK CONSTRAINT     
  ALTER TABLE ONLY quartz.scheduler_simple_triggers
    ADD CONSTRAINT scheduler_simple_triggers_sched_name_trigger_name_trigger__fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES quartz.scheduler_triggers(sched_name, trigger_name, trigger_group);
 â   ALTER TABLE ONLY quartz.scheduler_simple_triggers DROP CONSTRAINT scheduler_simple_triggers_sched_name_trigger_name_trigger__fkey;
       quartz          rpuser    false    282    282    282    3733    283    283    283                       2606    17883 Z   scheduler_simprop_triggers scheduler_simprop_triggers_sched_name_trigger_name_trigger_fkey 
   FK CONSTRAINT       ALTER TABLE ONLY quartz.scheduler_simprop_triggers
    ADD CONSTRAINT scheduler_simprop_triggers_sched_name_trigger_name_trigger_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES quartz.scheduler_triggers(sched_name, trigger_name, trigger_group);
 ä   ALTER TABLE ONLY quartz.scheduler_simprop_triggers DROP CONSTRAINT scheduler_simprop_triggers_sched_name_trigger_name_trigger_fkey;
       quartz          rpuser    false    3733    285    285    285    282    282    282                       2606    17844 H   scheduler_triggers scheduler_triggers_sched_name_job_name_job_group_fkey 
   FK CONSTRAINT     ∞   ALTER TABLE ONLY quartz.scheduler_triggers
    ADD CONSTRAINT scheduler_triggers_sched_name_job_name_job_group_fkey FOREIGN KEY (sched_name, job_name, job_group) REFERENCES quartz.scheduler_job_details(sched_name, job_name, job_group);
 r   ALTER TABLE ONLY quartz.scheduler_triggers DROP CONSTRAINT scheduler_triggers_sched_name_job_name_job_group_fkey;
       quartz          rpuser    false    282    281    281    281    3719    282    282            ≤   ▐  x£¥û▌oÜP╞»ÅàΘ«K╬'τ└¥▒¼▓8k│ïu1┤╥╩V┴pM│∞▀;'kΣ =4╤ÿß≈╝╧├QL∙%fù╘∞ßcßPI▒Σh┤\å╫3E·ÿ¡èDúIx=A.*÷:═╫E≥ödΘa╖>ⁿ╜╢Z─1·u▒Mï2╫/■≡δ╖▀êáΓ░Ot╝┘Ñ┘±ªü-Tó╕BπE0èt»ô╕L∞¿╖3*3¿─τ╘aÿ0╬╤U0
Ç║üçù╔\τ▀ô√ñäQ8MCeRöh╛╕∙î#K₧█└&Rb÷Åyä÷$╩ót├Æ⌐7êΓHñ}ë╩$
σ╩àöτô¼êƒâ½p⌡ü╓²K╣═│5ⁿ y╜?]»°pâ▀½≤)|Ä▒¬¢»*╛╬∩≥╝▓└├╢x
τé╣n7▐C╧╔▌Fº?¥µδ°Pµ╗╕LA╬âÄw╔s«╝J±lñS
WÄ⌠x╖(íε½z+¼<═i¥╧|╞,=èI[Æ░≤°gf½┴s╓åÆ⌡┬Aπ,pFN₧p╩≤X[b5Γ¼l┼ì¿¬¬c▓{¡íÜÜ¡]ΣYⁿ⌠:M│^╨┤H÷╣.τ≡à[G≤∙B!
ofnñ≈	v(µ«αmòs⌠╝ü¡ε╨▄ê»
%i█H
Æ¥Yî╪¬H₧"▌²Ñ»└å▐╥~╜5╥δ$Cf_q┤ßòk$≈5─┤█6EqûÉ=)î,:┴n[]M4p╣═H₧¬4»╠*±àæ; a▐A╦j/cy╠b╗ûG╞¼ÄnΓúS	o<J5(Γ²■¡Q*▐uÿ4∙
⌐{Ö1+ç├j/ú╤"BEδr▓√-Ü▐|üºDÉì├ºπ?├MG½┘x╥u╗
D▌┤'âWOÄ₧πh£[7ε	w<a4π╪9Ä⌡┬╒¡8Γ:D╣ª±1£à╦	zH│┤╪╢⌡│«ε]└QµP╩8n╟▒≈Γn¥┴`≡+}│/      ±     x£e╨;n[1àßÜw┌Ç/µ┴ß╠▄ÄCr╩¼└Méü└lüw⌐3∞·■Cσ·q{y┐ê┌DPDâ╫╒╘B└┬z╧N^[<gè╦`"N┤J,kaªÄU¿>?Q;!h├▐┤:Rß≥ⁿcπ≥v∙u╣òëc╣f┤!!aìçÿâ▓µΦφεQC╞σæô¼╦D╧Φ¼8┐B~Çε,R┴è<áZ▐»oτ╫?àf]9çwƒ*⌐Dm╬É^╙·ÉUQÖ-f╔Θ░╨R║â╪╖$?╪veíjÑ=$, ~ƒ/ºƒ╫≤Θ∩╦GÖ┘∩iü╤Lí╧⌠╘▒¥╤y╕*ì√ad
▒Åòú╞éê !∙ΩΘA▓c&+⌡╙╕=∩█╢²)ßa─      ╩   O  x£Ñ╤═N├0 αs·╝└F~╓?nÑ╒Pπ¿[╢¬╤.0Mδ┌u V╤6OÅ╣
üα└┴;▓⌡┘aD┌µ]╓╤1╡_VÉ4∞┴f║U▒ε òâîΘLΘ╧è╝/φc[ΩSàiΣ╕á¢ôYQfÆ▄═tÄ²QWΩ╞U╪≈9[ΩΩä│|∩L{║ÿò█?╖;▓rlƒ√█╫≤üêÉ02#
▌Çp╩g*&▄╗a⌠Nê;µM⌐ö·Σ▓{█∩╧ùΩÑs°W╜ìò╚x9dà⌐òF}2╠æU*√LKZ¿ñ╜G═éA6&Y╓á#ü·4╘Ö╞⌡*┘ML)nj╦zSImZò╬╒Γ/9√A∩O]▀ú┴∞Z/■⌐╕¼V&òî╓sü╖gPö■âæU╨.╘╫e!GH╫Φ}éD.╛δ╣ÿR\ïèk²vΩ8╬ß¡ì      Φ   
   x£ï╤πΓΓ ┼ ⌐      ¿   φ   x£mÉKS├0ä╧╤Å╔α╢⌠╪C/Lσ╚EIöX┼ûè≡δ	 µq≥h┐⌡┌ZS┤¡YàÉÅΘJ█{÷ïôⁿHt▄aû╬Räσ,Θa⌡=ε╗@$╤jèpQíá{}úP{û╜╒∞·Sgßr&Æ}Kßfÿrv,S⌠zf,=╜░îwYd:└£,nr╥[L╙ge≤⌐n[G=≤█°╟▒ÿX≡F{│¼D▄abòX╙╫¡UE┘╒CPµ╝╚p«íqñX.jè"aΦ∞G_═╧6LQG~╩┤
A├ⁿΩ·╚δ3]ƒ
î≡P└;¡`ó      Ω   ╙   x£ì╬=oâ0àß~┼█aqâ¬J²┌╗t╦Γ8å\╔╣7┬ù■}i╖n╧≥╝╟╗║s╬g¡i¡⌐δ┬ε[╝OôL=O·╔J	A°DJ┬<Ñx┬Bzå₧#IIΓS⌠Y╕╟e}Af╓?╞*╔(│╛╠¬┬σ7╩╫Σ╫Máà╟0s°í┐φ╝r└½░╞¢VÅ₧à╫ï╠∙	wΦ√√▓)£┘Y╖0«i┌║δ┌┐ƒπφân■&╞±7#╛(╙1E°Aπäⁿ┐αí*╦≥┼ªa8      δ      x£3Σ4σ2Γ4τè╤πΓΓ (₧      ╣   
   x£ï╤πΓΓ ┼ ⌐      ╖   
   x£ï╤πΓΓ ┼ ⌐      ║   
   x£ï╤πΓΓ ┼ ⌐      ▓   
   x£ï╤πΓΓ ┼ ⌐      ┤   
   x£ï╤πΓΓ ┼ ⌐      ╢   
   x£ï╤πΓΓ ┼ ⌐      »   
   x£ï╤πΓΓ ┼ ⌐      ¡   ║   x£ì═=â0α∙≥+è╗╞DÑΩ&²áéhívs	5┤íQâë]è ╜q)ZΦp▄q<∩┘2┼6;⌡iΦ·üKú
RÑ!±b?Ä╔▓s} Më`¡φ ß4δΣwN=Γ'$	>8▐1±├┐╧ùU¥∩≤MVτUisOºσ╞ª┤ô«∞<\ªÄ≈å1⌠àΦ∩vδ▄îQ:┼xΣj═RLzb└k¼Σt╜╞╗σ⌡ëÅ>:≤î!⌠=kJⁿ      ╪      x£3ß4Σî±πLπLπ2E0═╠=... ç╨╚      ╨   Q   x£╟K
Ç0└ur┴▀j%ï6b^AΦ²o!8╗	╓╡▌Γ╨#Axó░Üá╓·╧t^V"π▀B═zæ]2x%R╗║ç≡;0≤SF\      █   
   x£ï╤πΓΓ ┼ ⌐      ╥   û   x£╬╜
â0Fß∙═U▄KLⁿδ¿╕╕êác╛êâª4_
╜√¬√τ─ê┴¢R1'¢πK₧╖ud┬╨ R¬╨╧Ihhî╙e╩└nysç¼┬è▓Bdφ¼U!▐╖Θ>n	3▀á;┴b┤╒V$Hp,h¥¼╔╥╠hkDyVÿ│æ"à┐?·ƒg┌eπ} ⌠τàí|óL╝Bê?╥X-,      ╫   l   x£%╩┴1C╤│)&│Ç<▒{I uD9°ìæö+#W∙╡ƒⁿvö│rV╬╩Y9δ»ô hpq╚τar&≤Σ≥╗dù╔¥¼CÅ3│ß=╩A░í└ô▄÷ Hhp+NQêë(ΣΓ≈ëê?mî       ╚     x£¥æAO├ å╧_ ╦É(moz5qç═─╦â-3╠ªmÇvj÷π,¥i∞L╢ù∩{^xƒÇ≡í┐`Pu»a│äm┬ái+²╕å%aö░╙┬'VOk≤¡ü╠h.8r9.ö╡╤ìç{½╗╓·pT}w.vjP«┤ª≤çöα∩ò)¿≈┐í8[∞▄b»▀*kmMst╠┼g'¡3h╝ÿªj≈εu∙|°öbä≤⌐#;╥┼£#;▓H/I╞-^mc∞═Σ╧╨┼╝h─╙⌐)╝£Sσü╬.⌐╞m~╡jî7¿å ú╒P¥ß╝j─╪Äöu∩╝╢ñV╬»·0Có└B
~■~╞ Aσ╧φ7$IÆ▄~Γ      ╜   ≥   x£Ñ╬╧j┬@╟±≤Σ)≥fv÷▀x4E[╘▐Y7Zh¿±²δí⌠╥⌠$s¢∩∩≡1Éòèhtù╚h=[L▒╘╬s)┴-D┴┬▒\º·#▌åⁿφ╫8LXå«N╖iⁿL╙√8╘╙}pC╞"	_3-D
N;0316∞├j▌._╖G╪∞╬/√τº²·pÇ■~T1t╔¬ä(Φì┤Ö	úÅe╙'π┤∩Σad≥≈╧╛!u└│àúÿ_w╗▄l╫½▓ ▌#ç₧▒╧Ω╨2≈xëÖP╘τ$T⌠Γ∞├Σhg╚F÷µï1∞⌡⌠⌐⌐¬Ω╝≈ü_      Ñ   
   x£ï╤πΓΓ ┼ ⌐      ú   
   x£ï╤πΓΓ ┼ ⌐      ┐       x£3Σ4╢ΣI-.Q╚I,═K╬α4µè╤πΓΓ Nò┘      ╠   ╦  x£═W▀ô¢6~µ■
ô@I┌Θ⌠Ω╗4¥Irù√1}a╞#É8cΣ 8╟ }W╛│<φ4╜Ky≡$φ≈i≈╙j7tH─ådΦà1Å1±≥σ╝!DU┴1Äî0±PΣaµå(ìó4ñ>O"τ╝mu¢║Qu╖MW╒níYuòn▄RT╡ÆεªΩn╖Pn⌐δZo¬µ╬mò0║I▌╒÷┤(t▀tùΓN∙╡╛½Ü┴₧_Ö│╩¼k▒à⌡òq▌╣┬-√ª░å│╞àG└'│m
wª¢N}ΘⁿƒEú¢φJ≈µ≈╒,═▓[úZôe¡╬╖8╦.u╓V≈*╦╬öYvz¥eòK√⌐²π"╦:e║,3kUÿçùwû╬u':ÿΓ2)ªi≥┌!N÷a╥I╠#;┴cτD	ⁿ₧`'í<íT)ÅJÆx$èæ'Æä{îä\%*öΣê{¥ch╠GäG1ç!ïÄ`─æÆ┼╩C4*l,æ╟i.="pöS▓Æï	{▒OΓ8t-÷)G£&#╤¿╥8d2^íP	Ñ≡r╩Å±)óHp<aÅ√î≥¥r╬»µ.nµ╫╖ùùW7τg≤╙█¢╖≤≈gτ⌐;½+╒t«╘ΩAª_»uü∩AOá╢BB[╖║╙à«AWƒ{êê&▀║}φOVÉªÆ¬u√⌡]+ñ╒▀√φ⌡╟wn1XT╙[╤H│Kσ_[3Míⁿ∙ZK╒▌Φüδ┐QUúÑÜ»┤∞kïV[≤╣╬▓║╩│lG47┬┴äGdÉë╙É╝₧á7É╣ÿ╜ Ñ'\αb╛'Rùπ
δ⌐╓¿τ%⌡f╧bª8┌#bß█ùí± e#d┼î╛!▒i½N╜·!°╬;╧┐âêC"z"p¡¡╫┐7
'y╛Q├`┴9O1 Qα│▀ÅΦjUüΩ¼æT▌Cjüëa4Esoó╘+Q5)ß	«ºëB╩┘óoûπ¼
«╕╢u`:╕;W&Ç_)≥ZÑQHεN ⌐╚╔7»╞a▌¢┼▀█└ⁿ└7│K_7╫├4ki┌└<F═╜ZAåN├=¥hoΓÖH:¬ü4╒┐ê╪CB H╟m▒╦Å/┴éf╜=UƒS⌡a╚Æ ÖΦä
ß╟^╡█∩!≡Pz⌡P=┬9Z⌡?f-.à╥δ`╙╧R∩)¼fU,u▀²n½ê█1╧2╖═<εEsSKs┌╚+⌡Θ┴CµkæÅâNÿσ|╨⌐IûεφΣ░~U_T╤wΩt°°¬ä┌9
é`û├╛éa[┴nW┴╕⌐`oO┴~ â_7▓╥┴α╘ ∩½ZfQ¡å╗ô├Ä╚1╓oZ▒R▌.▀4╢b╜åΓΘ9Y(»▄a
»ÅÇú┌Ao¢«J╣#£╨Φδè;v╞éf╞ë=BiΘ%1ì=┴ñ╠i!
L╘╖qΣ#ä'₧ä│ú	╫ìEp4óENîgÆτ^¼"hƒbXÿ`!=ôÿë2/äÿjƒl╔═■π÷	ñ√[▀up\ 
╘ò║½αX╡╗âù&⌠O╟{╞1?îfx┬£¿,ísëí0äÄåc/GJz2N0┤6î─ey$ÿdτ^⌡X┘╢`h1▌|≡æ█i7Wε}e*╕├\QUùÜΣ¿µ└9╟╡╟Q╠Φüs≡Iµƒ££ⁿ7T<J      ¢   
   x£ï╤πΓΓ ┼ ⌐      ƒ   
   x£ï╤πΓΓ ┼ ⌐      ¥   
   x£ï╤πΓΓ ┼ ⌐      φ   ñ  x£¥ÆQO█0╟ƒ█OaσÖ─M
Z╒TMl░Uâ5}<ÿ⌠ÆZu}┘∙B╞▀}v2DT!Q±)╥┘┐√∙ùÄ~=E5ß╜ü}4Å«£k└ëV≤VhδX┘D
T"φ├tmw■Σû╣vs)	j$ƒ2ëF╣┴┬╔ε¬1è5┌╪1╘N^╫¼≈╩▄╝▓.mZEÉ7u⌠|2⌠╕─V0èm⌐½å@08}/m½≤#=V±F▒è╡ìçd└┼%⌐=┤H;_f¿¿╙ò&├D╨â÷ü,¼2ÅüÄMúC─L╪x¿█"å7╚84≡√n▒╡}╖╖├xæ▒Ω║▄t]z│oÜö╚╜╨▒┘╘ª⌐ⁿ£ΣéìrN+=Γ╜a¼ù╣╠≤Ñ(└Oú╘Epraè╟÷~c?║-XτK╧╜▓kRPΩ]ûLÆ?2?}>ßÜ≤█P∙
≥Iè/┌xFR¼╗≥╟MåΘf╙$
⌠╝ç_≈∞├∙¼¼░╚ó╘v#▒!±√┐σ ÉΦ∙n⌠⌡Γ╟┼j▒eô∞4₧Lπ∞Ld╙yz6?Mô┘d6K?╜ûfçÑ±m2Å σ▐Nx      ▒   
   x£ï╤πΓΓ ┼ ⌐      ╞   =   x£3πL*╩//N-ΓL╬(╩╧M╒342Ä7ê7364è7╡╘+╧╠KJsÖº╠ö8eµ─)ï╤πΓΓ (╛2      ─   
   x£ï╤πΓΓ ┼ ⌐      ┼   
   x£ï╤πΓΓ ┼ ⌐      ò   W  x£╡ÆOkâ0 ┼╧±S∩
∙º╞▄vΦí0┌╥
v)H:πû¡ë║2J┐√┤V(-¼╥1$$ß╜_▐USjº╥▄I╗¿lí╢`9]=-µÅ`=S>┴lBHÖ$üΣ	,ë└▐╧u¡RU+_┬╜»╥╘╘ªHLæ┘v╧≈Ç=ÄAU:S╝%ò▐Ω┬4yR:√í_k0¢?OWùN!$X*╣@æ╗#∞QÉΩL5█·▀(Yvzô:≤Ñ¥▒ëjj¢½εfÆ9òδ¥uƒ┐π▓	v─Ñ4î1⌡8σw²▐*┤ô«ní≈:L2Äp╚Fp/Or≡ö&┤∞
ao¢J╗╙δóKû█
äπáoÇëA┴┘ì%@█ü╪P!º`ù╢╔vPúóαÆ`Dbrg/C¢│┼Y£_}╞╤@ü─ó!╜¿≈àâ∩9╗╚vT:L ┬├┐}öú▀╔y₧≈_╖=      ½   φ  x£à╘┴n█0α│⌠.+,Æ│╔█é.@[]{CvJ╤"mü=■$O⌠O∩PÜ╨┐─°│qJ:$╩S√*Y╒ï÷Y▓Ñ▀º╦δ╣^{Urûp)kZÉñö╛φ╖w╟├ε√╛¡¡â║â╤╟Φôt=┐<_▀┌▀Θ≥σⁿτ⌠⌠r9▀ⁿz~j?X¡╜IG┌yU2ÑiÜ╞aNQù╠⌐╨`π£ú.YB.!/#ê#αS▓╧-Ü┐δ╡ª╖δ√╝⌐W5│%│ 3₧┌{╣}╝┐▀Ä╗├╫π├▌■°ú╛áo⌐«k·Tµ}~╫Z≤≥ mA±[3ú6{F½ª■éjëº¼å╛σƒ╥Ωé{8]7Φ┌ΘΦΘ
║:]]│g┤jr║F║é«ü«á+Φ╢A╖N╖@╖H7╨═ΘΦû=úUô╙-╥
tt▌║╙δ·Lo√£^k╨█éΓ╖ff+l÷îVM¥^K╨δàíoí╖║αN/⌠╥ΘßäIët£*±#'a*╒┌3Z59=₧n┴êô0ïñÇÄ+┤AºNº@ºH╟hƒª¿P÷îVMNÅ├H0ô%╠N!╨1aä7Φ▄ΘΦΘ:;¥¥│g┤jr:G:â╬ü╬á3Φ▓AùNù@ùH╨┼ΘΦÆ=úUô╙%╥t	t]≥╧¢£≤_t öπ      Ü   Y   x£3Σ4Σ≥≈ruë≈u⌠stw
Γ2Γ4┬3Σ46╟&hüM╨ïáëåá163ì9M0]dé═LNLwÜbsÆ)ºë1åá6'M0c⌠╕╕╕ X╓Hq      ª   
   x£ï╤πΓΓ ┼ ⌐      ù   
   x£ï╤πΓΓ ┼ ⌐      æ      x£│0ΣLπè╤πΓΓ 
ï      ó   
   x£ï╤πΓΓ ┼ ⌐      ô   Ä   x£5╦;├  ╨εä¥≡╗Kcl)*╩ ┤jo▀.¥ƒÿ)π%├╤M²│.₧Äz7k<┼Γ▀Ü,║·t╫=▌,@╘╪╢∞ínc▄r┬░⌐/ö╒╫J
∞■δ<d╣ç|╠y╛½06
╠A(í b╦ñGπ=U-q_*k╠╩@@ü}åöà░ñXï╖º│╓~╒25ü      τ   R   x£KN╠I.═I,Iu╠╔╔O╥)┴%∙EëΘ⌐£FF&║╞║Ff
åFV@ñg``n``èC╩└╪└é╙ 9╤╨╥╚╚2-┼"ò+FÅïï [δ7      ∩   
   x£ï╤πΓΓ ┼ ⌐      ╓   à   x£=Å╔─0C╧V1≤"└KÜÿ
╥!N╨M Θc│▒] fì{u<┌╡'B{óº▐Sfå41+X≡ñ0áW53!8^╒<ù┬¼åÇu`Oxj▀Å■╬═]ƒr79┘9╙±∩vh╚+¼N└GU≥bê?àé═*gf	äδα
|5      ╘   ¼   x£ì╬Mé0åß╡=kC εb╥φ@ü6╬╘ΦφA├ó╗f╛'o*w─└û╪jJ≡ë:░u%∞æ-¼ê╨ê|aª¢⌡╛▀ïà╜█⌠≤a>¼P3%╪╡08Uåz·╟qâä2MÑ8┼ñ┐;4╧éτ5µ?╡Kî╤ï[eëN9Ö«B▓CP╩dºl≈└■X Ü┘:V≤φ£ƒ▀`±_ufh]≈Bê7Ωî┬┼      ┴     x£═û█n▄6å»╡Oí╦÷éZ₧ïó@kEÇ"	Ü°¬*∞!9▓╒¼%C╥╞±█g┤k⌐Oqj╗ΘεjO"9├>■ñ,Bp¿08µLÉLδ(XDÅ╠6FJΘUp┴┐≈'mWN}ë⌐?;├!a	ττδ6┴╘÷]1ß8-╟sLπr■║m²OΦµG¼■ù_Θ■ε≡╒√âBr⌐WL┌R≡òR+ε*╧CQ┐╛πû»dp▐¢B░Ö·ò≈╓r)l╥2wÉ▓╕¼¡Oè?5┼⌐hΦóTΦ%
aéåk├ó0l#g╛1└tjÇEƒ╙┬╞VÇT║@ëe:┼⌠í▀L%îσ╔åÆ(7#73úû{W
¢R¢9┴F╕O?_q!╨/Gô┘Ω2:┼}▓«q▐ *φ▓î╥[╧}xå,┐öPB{i¼p╬/TæîìÉÆe!	╟╡bá%g9Z+Ps▐8Qⁿü'-ìßuçδ▄╛>└ ·à┤║P;!╤LRV	*f├ìv╬Ç╘
┤yzÆ_Ω¿
AEñ╤ì÷[»¼ÑïI₧ ΣæK½ZJ Z┬╪¼ï±┤▀¼s	9ùτCƒ7iÜc%¿`]~1Jù .ε╗≈o∩A[▌_≥
B╗▓Wµ╨HÅAúÜ¿ñ
╤7)	k╕F'┐╫Σ■LºCåòÉΩêY%Σæ	╒E█σ■bⁿï╩<Z∞╓äá1^h▒╨O(╜k,ñ7
íaÉìfI:ò▌╚Ç╫àε·⌐\o▌φó¥N╦╢√δûR0c7╡░ƒhÄ╦╟║ºÜ┤╛Dq||î├╨uw0¼╩hºCΩ╕.S▀σvU6╨«1∩LºX6²z▌ôb'σÇ0÷▌¬<╗ⁿ%Ñ~╙Moß½m>█±¬v▄o╟≤5\R v▄fe│Θ╥<p▌ò⌠Ç╣@ù]*≈·n┬OS⌡t}wy╓o╞ƒ╦÷Vu=ú0╓⌡╨╟KY╫o:▄Hú║▐╟±├╘ƒ╫⌡╞< 5╝zS╫│ÿu╜v≈πª▓+iVß╟║ú╣▀ûE╪è{∩ä-dÑw$7D/OAb╬┘yìéHV!â╧\9╚±?½Σú╨ò╗▌ÆIn╔ùñ▓ja
.¢á2Z:edN^=┘ûìP╞#D2¬ktçk3ä▓├ï;ìΦ¢²s∙└╪≈πI÷ R|Æ-ⁿ║Öª╛√_zC╧ò┤ Ω*½ΘÇ¿
UÖ+@úÑº╥αbòâQ┬┌∙ Ieσ≤ε≤éσ{ôj╖mÆ¥*.¥Ñ├φ┬J{∩¥ÖQj╢S╨,&╠G+D╘╪k&wú░╧Jπ?G╜¢CÆ¢÷∙█Γ'è?a╛Z▓q╙1b∙▒█╕ªÉ═£à┐EZ▌OæTòPév6ó╚φ(▓@gjß¡├╪Ç0	ô╠)9u╦µ₧G÷oπG{Mc#⌠ó«ï┼goJ·      ┬   t   x£}═K
â@E╤q╒*▓ï·w╖│@Tä`éNà∞1≤(╝╤σ└ÿù╧{}Mδ░m░/╟0 4ç±>?ç(½wl¥µM╕7δ%¿6âJ\
⌡è╡°1q╟8gà╝%4Jq,ºLìÿé<╨.U68«Ñ▄	┐∙!08      ┌   
   x£ï╤πΓΓ ┼ ⌐      û   
   x£ï╤πΓΓ ┼ ⌐      ╬   
   x£ï╤πΓΓ ┼ ⌐      Ö   q  x£òÆ╦Äó@à╫°╞⌠r"*┼¼╘FETT2ëßR\┤╕U┌╥ΘwóMgf1{⌡º■¬s≥}I▒ö}¢ L╜░÷╙y┘«°Q(ó«kk╞óΘ%J8iGW%╝e)qΣ^ÜvD^╙Ö│l⌐`╫%0╢#4≡╥j$m7¡÷;╣╔ΓbM═x┐3o°╡≥ª!πlgd┐Eà▓5ÉOG╥⌐═jlP▓║ΩPí|
├├£zo┼█₧ìφ╓╧µ{┘>á4êÆΩ╪∙╤l┘█n├┐ª	«╞·û┴Ω«┼v Θ,	Z
å*Hs█ïúñ6╛äΦM)Äm╔%║Ö;╞:╓H_╙Äδ²£╢`ñ¼τπ!╗≥{3═~│@╧Ñ)î Φ∙º┤╦ÖWk7¡)ô9⌡KÑåΓBVσ╒┌«╡∩J2<├t╗< ÇßäJàú▓╙ΣPì*]█Φå'B√B)π)]. 
ΘrÇvΘ½╣┤6╞°╒£åzêù8ó7Ω2τ╖╧¬┴úΩ.Q╤■°h>MR<XÇ>_┴≈j°<u╥/vM:µ¡púπ½4;⌐"'M"▓ÿq%─üττmbd#.╛Ñ≥(⌠«Ü▄ggl═~o··²²╙Σ╟2|º"∩SEûGIp( éIDΓ├╜Γ╙ 5â╔P%3)òú`,'╩^&dB╦ßε╬°═$▀*"┐┐	;±┤α═╒ìâ║±ëGñYG₧≈Φ≤á├U]ΩΩEΘ_≡t@µé
▓3┴N)nµS!M82╗«LRz.»;╚b}╙]=±s t┴g┌╛╫₧²6[Φxytü╣¼=ï,░╨║≥»vú╤°
ⁿä      ╕   
   x£ï╤πΓΓ ┼ ⌐      ╗   
   x£ï╤πΓΓ ┼ ⌐      ß   
   x£ï╤πΓΓ ┼ ⌐      Γ   
   x£ï╤πΓΓ ┼ ⌐      ▀   
   x£ï╤πΓΓ ┼ ⌐      Σ   
   x£ï╤πΓΓ ┼ ⌐      ▄   è  x£φR╦n▄0<{?╞á^ñ}∞ª	É"╚)╣φEÆ)t█─^╕É╧╧╚º{hPΣ	ó$èÄ£⌡4═K]±⌐9Äï╬≤╦i╣ï/c■⌐~Li»ql╛_▀|{╝{h≈M₧₧[=┼τvëφ|æ▄■ÜR{╗∞τΘ╖Ä0═╥öu»1δ@DA£X"╕êe▒*F▒Γ%Z⌡æ[∩ß┴≥vΩKó╬iùJ∞σD╚'Æ«ΓX■7ÄΣ≈£┼Y
>ï¢▓°─Azα≈kd∩Ö3°╫J¥ÑN╗∞J╩!╢[+Öaó2f*₧a╘Ç▌oî╧¼╠≡Vq0N┘jDuaéh+[9Pα┐9w╟kåx£ï╧qc6╢lul9c║^U││÷µ=≥¥°t≡9ε╬HåÿMvåÖC«▓≡½
αï└B█·W▀πÑ╟ ç┬└ALf_δ║R	n├É@Φφ╝
ügw┘YM~B^┐₧Ä│W│╞σ8ì√π≡Θε╝·τ½=┐┌≤φyhw╗▌@U¡      µ   0   x£+J-╚/*ß─╬É Oww╫áxGgg╫α`«"d╣α╟WÿLî qΓ      π   
   x£ï╤πΓΓ ┼ ⌐      σ   M   x£┼╤
Ç @╤g≈1ßªn╓╖⌠2ºB$╥ ô]8▄┘╞3▀ƒ▐N╟uH╚åíkV<│∞¼i¥ñyΩ╪═í ╞#9╠~τ è÷      ▐   a   x£+J-╚/*ß─╬╠╝Æ╘óó╥éƒ─╥╝Σî╘ΓÉó╠⌠⌠╘"NW7╟PƒN]CNc3α4Σ*B╓Ü£ôÜÿτZQÉYöÜΓ\öÜXÆÖƒτöÖé╧#«=... ▒¥)í      α   
   x£ï╤πΓΓ ┼ ⌐      ▌   á   x£+J-╚/*ß─╬╠╝Æ╘óó╥éƒ─╥╝Σî╘ΓÉó╠⌠⌠╘"NW7╟PƒL^∙IN⌐ëyp1~£åµåå&ªfFª&FFP₧æäg└εΦΓΘτ╬∞Θαπè!
╘o┬S┴Uä∞«Σá«ÖE⌐)╬E⌐ë%Ö∙yNÖ)╬├ÑÄÇ+═Q£aÄ├ò&û0i╕+c⌠╕╕╕ -1^     
