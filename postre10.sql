PGDMP         (        
        y            HRMSproject    13.2    13.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16618    HRMSproject    DATABASE     j   CREATE DATABASE "HRMSproject" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "HRMSproject";
                postgres    false            �            1259    16619    Departments    TABLE     `   CREATE TABLE public."Departments" (
    id integer NOT NULL,
    name character varying(100)
);
 !   DROP TABLE public."Departments";
       public         heap    postgres    false            �            1259    16622 	   Employers    TABLE       CREATE TABLE public."Employers" (
    id integer NOT NULL,
    name character varying(100),
    "Website" character varying(100),
    "Website_Email" character varying(100),
    "Password" character varying(100),
    "Website_phone" character varying(50)
);
    DROP TABLE public."Employers";
       public         heap    postgres    false            �            1259    16625 
   JobSeekers    TABLE     �   CREATE TABLE public."JobSeekers" (
    id integer NOT NULL,
    name character varying(50),
    "lastName" character varying(75),
    birthdate date,
    "TCNO" character varying(100)
);
     DROP TABLE public."JobSeekers";
       public         heap    postgres    false            �            1259    16628    SystemPersonnel    TABLE     �   CREATE TABLE public."SystemPersonnel" (
    id integer NOT NULL,
    name character varying(50),
    "lastName" character varying(75),
    "Email" character varying(100),
    phone character varying(75)
);
 %   DROP TABLE public."SystemPersonnel";
       public         heap    postgres    false            �            1259    16631    Users    TABLE     �   CREATE TABLE public."Users" (
    id integer NOT NULL,
    "Email" character varying(100),
    "Password" character varying(100),
    "Email_verified" boolean
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16851    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    16846    job_positions    TABLE     i   CREATE TABLE public.job_positions (
    id integer NOT NULL,
    position_name character varying(255)
);
 !   DROP TABLE public.job_positions;
       public         heap    postgres    false            �          0    16619    Departments 
   TABLE DATA           1   COPY public."Departments" (id, name) FROM stdin;
    public          postgres    false    200   �       �          0    16622 	   Employers 
   TABLE DATA           h   COPY public."Employers" (id, name, "Website", "Website_Email", "Password", "Website_phone") FROM stdin;
    public          postgres    false    201          �          0    16625 
   JobSeekers 
   TABLE DATA           O   COPY public."JobSeekers" (id, name, "lastName", birthdate, "TCNO") FROM stdin;
    public          postgres    false    202   #       �          0    16628    SystemPersonnel 
   TABLE DATA           Q   COPY public."SystemPersonnel" (id, name, "lastName", "Email", phone) FROM stdin;
    public          postgres    false    203   @       �          0    16631    Users 
   TABLE DATA           L   COPY public."Users" (id, "Email", "Password", "Email_verified") FROM stdin;
    public          postgres    false    204   ]       �          0    16846    job_positions 
   TABLE DATA           :   COPY public.job_positions (id, position_name) FROM stdin;
    public          postgres    false    205   z       �           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          postgres    false    206            7           2606    16635    Departments Departments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public            postgres    false    200            9           2606    16643    Employers Employers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Employers"
    ADD CONSTRAINT "Employers_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Employers" DROP CONSTRAINT "Employers_pkey";
       public            postgres    false    201            ;           2606    16645    JobSeekers JobSeekers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."JobSeekers"
    ADD CONSTRAINT "JobSeekers_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."JobSeekers" DROP CONSTRAINT "JobSeekers_pkey";
       public            postgres    false    202            =           2606    16647 $   SystemPersonnel SystemPersonnel_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."SystemPersonnel"
    ADD CONSTRAINT "SystemPersonnel_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."SystemPersonnel" DROP CONSTRAINT "SystemPersonnel_pkey";
       public            postgres    false    203            ?           2606    16649    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    204            A           2606    16850     job_positions job_positions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT job_positions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.job_positions DROP CONSTRAINT job_positions_pkey;
       public            postgres    false    205            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     