toc.dat                                                                                             0000600 0004000 0002000 00000007072 14265463147 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           z            clinica    14.4    14.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ?           1262    32769    clinica    DATABASE     c   CREATE DATABASE clinica WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE clinica;
                admin    false         ?            1259    32797    Cita    TABLE     ?   CREATE TABLE public."Cita" (
    id uuid NOT NULL,
    fecha character varying(200),
    doctorid uuid NOT NULL,
    pacienteid uuid NOT NULL,
    horainicio character varying,
    horafin character varying
);
    DROP TABLE public."Cita";
       public         heap    admin    false         ?            1259    32770    Doctor    TABLE     |  CREATE TABLE public."Doctor" (
    id uuid NOT NULL,
    nombre character varying(200),
    correo character varying(200),
    telefono character varying(200),
    especialidad character varying(200),
    consultorio1 character varying(200),
    consultorio2 character varying(200),
    nro_cuenta_bcp character varying(200),
    nro_cuenta_banco_nacion character varying(200)
);
    DROP TABLE public."Doctor";
       public         heap    admin    false         ?            1259    32784    Paciente    TABLE     ?   CREATE TABLE public."Paciente" (
    id uuid NOT NULL,
    nombre character varying(200),
    dni integer,
    correo character varying(200),
    edad integer,
    telefono character varying(200)
);
    DROP TABLE public."Paciente";
       public         heap    admin    false         ?          0    32797    Cita 
   TABLE DATA           V   COPY public."Cita" (id, fecha, doctorid, pacienteid, horainicio, horafin) FROM stdin;
    public          admin    false    211       3318.dat ?          0    32770    Doctor 
   TABLE DATA           ?   COPY public."Doctor" (id, nombre, correo, telefono, especialidad, consultorio1, consultorio2, nro_cuenta_bcp, nro_cuenta_banco_nacion) FROM stdin;
    public          admin    false    209       3316.dat ?          0    32784    Paciente 
   TABLE DATA           M   COPY public."Paciente" (id, nombre, dni, correo, edad, telefono) FROM stdin;
    public          admin    false    210       3317.dat h           2606    32803    Cita CIta_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Cita"
    ADD CONSTRAINT "CIta_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Cita" DROP CONSTRAINT "CIta_pkey";
       public            admin    false    211         d           2606    32776    Doctor Doctor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Doctor"
    ADD CONSTRAINT "Doctor_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Doctor" DROP CONSTRAINT "Doctor_pkey";
       public            admin    false    209         f           2606    32790    Paciente Paciente_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Paciente"
    ADD CONSTRAINT "Paciente_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Paciente" DROP CONSTRAINT "Paciente_pkey";
       public            admin    false    210                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3318.dat                                                                                            0000600 0004000 0002000 00000000213 14265463147 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        64830719-698d-402d-8af2-6a55b908c3a8	10/05/2021	10afaf11-d08c-4f78-b21b-751b4c18def6	07bdb468-09f1-4862-8839-1b598b222c0b	10:00	12:00
\.


                                                                                                                                                                                                                                                                                                                                                                                     3316.dat                                                                                            0000600 0004000 0002000 00000000245 14265463147 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10afaf11-d08c-4f78-b21b-751b4c18def6	DR. Moore Sanchez	abc@gmail.com	990334336	traumatologo	Jr. Recavarren 1200	Av. Brasil cuadra 20	4546-46456-464	112-1321-13
\.


                                                                                                                                                                                                                                                                                                                                                           3317.dat                                                                                            0000600 0004000 0002000 00000000146 14265463147 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        07bdb468-09f1-4862-8839-1b598b222c0b	Bruno Rodriguez	951657231	brunoro@gmail.com	42	+51996654852
\.


                                                                                                                                                                                                                                                                                                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000007416 14265463147 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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

DROP DATABASE clinica;
--
-- Name: clinica; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE clinica WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE clinica OWNER TO admin;

\connect clinica

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
-- Name: Cita; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."Cita" (
    id uuid NOT NULL,
    fecha character varying(200),
    doctorid uuid NOT NULL,
    pacienteid uuid NOT NULL,
    horainicio character varying,
    horafin character varying
);


ALTER TABLE public."Cita" OWNER TO admin;

--
-- Name: Doctor; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."Doctor" (
    id uuid NOT NULL,
    nombre character varying(200),
    correo character varying(200),
    telefono character varying(200),
    especialidad character varying(200),
    consultorio1 character varying(200),
    consultorio2 character varying(200),
    nro_cuenta_bcp character varying(200),
    nro_cuenta_banco_nacion character varying(200)
);


ALTER TABLE public."Doctor" OWNER TO admin;

--
-- Name: Paciente; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."Paciente" (
    id uuid NOT NULL,
    nombre character varying(200),
    dni integer,
    correo character varying(200),
    edad integer,
    telefono character varying(200)
);


ALTER TABLE public."Paciente" OWNER TO admin;

--
-- Data for Name: Cita; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."Cita" (id, fecha, doctorid, pacienteid, horainicio, horafin) FROM stdin;
\.
COPY public."Cita" (id, fecha, doctorid, pacienteid, horainicio, horafin) FROM '$$PATH$$/3318.dat';

--
-- Data for Name: Doctor; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."Doctor" (id, nombre, correo, telefono, especialidad, consultorio1, consultorio2, nro_cuenta_bcp, nro_cuenta_banco_nacion) FROM stdin;
\.
COPY public."Doctor" (id, nombre, correo, telefono, especialidad, consultorio1, consultorio2, nro_cuenta_bcp, nro_cuenta_banco_nacion) FROM '$$PATH$$/3316.dat';

--
-- Data for Name: Paciente; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."Paciente" (id, nombre, dni, correo, edad, telefono) FROM stdin;
\.
COPY public."Paciente" (id, nombre, dni, correo, edad, telefono) FROM '$$PATH$$/3317.dat';

--
-- Name: Cita CIta_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."Cita"
    ADD CONSTRAINT "CIta_pkey" PRIMARY KEY (id);


--
-- Name: Doctor Doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."Doctor"
    ADD CONSTRAINT "Doctor_pkey" PRIMARY KEY (id);


--
-- Name: Paciente Paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."Paciente"
    ADD CONSTRAINT "Paciente_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  