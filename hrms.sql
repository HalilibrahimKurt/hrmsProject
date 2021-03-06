PGDMP     !                    y            hrms    13.3    13.3 X    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    16845    hrms    DATABASE     a   CREATE DATABASE hrms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE hrms;
                postgres    false            ?            1259    16878 
   candidates    TABLE       CREATE TABLE public.candidates (
    id integer NOT NULL,
    user_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    nationality_identity character varying(11) NOT NULL,
    birth_year integer NOT NULL
);
    DROP TABLE public.candidates;
       public         heap    postgres    false            ?            1259    16876    candidates_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.candidates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.candidates_id_seq;
       public          postgres    false    205            %           0    0    candidates_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.candidates_id_seq OWNED BY public.candidates.id;
          public          postgres    false    204            ?            1259    17350    employee_confirms    TABLE     ?   CREATE TABLE public.employee_confirms (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    is_confirmed boolean NOT NULL,
    confirm_date date NOT NULL
);
 %   DROP TABLE public.employee_confirms;
       public         heap    postgres    false            ?            1259    17363    employee_confirms_employers    TABLE     ?   CREATE TABLE public.employee_confirms_employers (
    id integer NOT NULL,
    employee_confirm_id integer NOT NULL,
    employer_id integer NOT NULL
);
 /   DROP TABLE public.employee_confirms_employers;
       public         heap    postgres    false            ?            1259    17361 "   employee_confirms_employers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.employee_confirms_employers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.employee_confirms_employers_id_seq;
       public          postgres    false    217            &           0    0 "   employee_confirms_employers_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.employee_confirms_employers_id_seq OWNED BY public.employee_confirms_employers.id;
          public          postgres    false    216            ?            1259    17348    employee_confirms_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.employee_confirms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_confirms_id_seq;
       public          postgres    false    215            '           0    0    employee_confirms_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_confirms_id_seq OWNED BY public.employee_confirms.id;
          public          postgres    false    214            ?            1259    16865 	   employees    TABLE     ?   CREATE TABLE public.employees (
    id integer NOT NULL,
    user_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            ?            1259    16863    employees_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    203            (           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    202            ?            1259    16893 	   employers    TABLE     ?   CREATE TABLE public.employers (
    id integer NOT NULL,
    user_id integer NOT NULL,
    company_name character varying(100) NOT NULL,
    website character varying(100) NOT NULL,
    phone_number character varying(12) NOT NULL
);
    DROP TABLE public.employers;
       public         heap    postgres    false            ?            1259    16891    employers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.employers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employers_id_seq;
       public          postgres    false    207            )           0    0    employers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employers_id_seq OWNED BY public.employers.id;
          public          postgres    false    206            ?            1259    17381 
   job_titles    TABLE     g   CREATE TABLE public.job_titles (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);
    DROP TABLE public.job_titles;
       public         heap    postgres    false            ?            1259    17379    job_titles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.job_titles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.job_titles_id_seq;
       public          postgres    false    219            *           0    0    job_titles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.job_titles_id_seq OWNED BY public.job_titles.id;
          public          postgres    false    218            ?            1259    16854    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    created_at date DEFAULT CURRENT_DATE NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16852    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    201            +           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    200            ?            1259    17283    verification_code_candidates    TABLE     ?   CREATE TABLE public.verification_code_candidates (
    id integer NOT NULL,
    candidates_id integer NOT NULL,
    verification_code_id integer NOT NULL
);
 0   DROP TABLE public.verification_code_candidates;
       public         heap    postgres    false            ?            1259    17281 #   verification_code_candidates_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.verification_code_candidates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.verification_code_candidates_id_seq;
       public          postgres    false    211            ,           0    0 #   verification_code_candidates_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.verification_code_candidates_id_seq OWNED BY public.verification_code_candidates.id;
          public          postgres    false    210            ?            1259    17316    verification_code_employers    TABLE     ?   CREATE TABLE public.verification_code_employers (
    id integer NOT NULL,
    employer_id integer NOT NULL,
    verification_code_id integer NOT NULL
);
 /   DROP TABLE public.verification_code_employers;
       public         heap    postgres    false            ?            1259    17314 "   verification_code_employers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.verification_code_employers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.verification_code_employers_id_seq;
       public          postgres    false    213            -           0    0 "   verification_code_employers_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.verification_code_employers_id_seq OWNED BY public.verification_code_employers.id;
          public          postgres    false    212            ?            1259    16906    verification_codes    TABLE     ?   CREATE TABLE public.verification_codes (
    id integer NOT NULL,
    code character varying(50) NOT NULL,
    is_verified boolean NOT NULL,
    verified_date date NOT NULL
);
 &   DROP TABLE public.verification_codes;
       public         heap    postgres    false            ?            1259    16904    verification_codes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.verification_codes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.verification_codes_id_seq;
       public          postgres    false    209            .           0    0    verification_codes_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.verification_codes_id_seq OWNED BY public.verification_codes.id;
          public          postgres    false    208            [           2604    16881    candidates id    DEFAULT     n   ALTER TABLE ONLY public.candidates ALTER COLUMN id SET DEFAULT nextval('public.candidates_id_seq'::regclass);
 <   ALTER TABLE public.candidates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            `           2604    17353    employee_confirms id    DEFAULT     |   ALTER TABLE ONLY public.employee_confirms ALTER COLUMN id SET DEFAULT nextval('public.employee_confirms_id_seq'::regclass);
 C   ALTER TABLE public.employee_confirms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            a           2604    17366    employee_confirms_employers id    DEFAULT     ?   ALTER TABLE ONLY public.employee_confirms_employers ALTER COLUMN id SET DEFAULT nextval('public.employee_confirms_employers_id_seq'::regclass);
 M   ALTER TABLE public.employee_confirms_employers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            Z           2604    16868    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            \           2604    16896    employers id    DEFAULT     l   ALTER TABLE ONLY public.employers ALTER COLUMN id SET DEFAULT nextval('public.employers_id_seq'::regclass);
 ;   ALTER TABLE public.employers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            b           2604    17384    job_titles id    DEFAULT     n   ALTER TABLE ONLY public.job_titles ALTER COLUMN id SET DEFAULT nextval('public.job_titles_id_seq'::regclass);
 <   ALTER TABLE public.job_titles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            X           2604    16857    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ^           2604    17286    verification_code_candidates id    DEFAULT     ?   ALTER TABLE ONLY public.verification_code_candidates ALTER COLUMN id SET DEFAULT nextval('public.verification_code_candidates_id_seq'::regclass);
 N   ALTER TABLE public.verification_code_candidates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            _           2604    17319    verification_code_employers id    DEFAULT     ?   ALTER TABLE ONLY public.verification_code_employers ALTER COLUMN id SET DEFAULT nextval('public.verification_code_employers_id_seq'::regclass);
 M   ALTER TABLE public.verification_code_employers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ]           2604    16909    verification_codes id    DEFAULT     ~   ALTER TABLE ONLY public.verification_codes ALTER COLUMN id SET DEFAULT nextval('public.verification_codes_id_seq'::regclass);
 D   ALTER TABLE public.verification_codes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                      0    16878 
   candidates 
   TABLE DATA           j   COPY public.candidates (id, user_id, first_name, last_name, nationality_identity, birth_year) FROM stdin;
    public          postgres    false    205   ?m                 0    17350    employee_confirms 
   TABLE DATA           X   COPY public.employee_confirms (id, employee_id, is_confirmed, confirm_date) FROM stdin;
    public          postgres    false    215   ?m                 0    17363    employee_confirms_employers 
   TABLE DATA           [   COPY public.employee_confirms_employers (id, employee_confirm_id, employer_id) FROM stdin;
    public          postgres    false    217   ?m                 0    16865 	   employees 
   TABLE DATA           G   COPY public.employees (id, user_id, first_name, last_name) FROM stdin;
    public          postgres    false    203   ?m                 0    16893 	   employers 
   TABLE DATA           U   COPY public.employers (id, user_id, company_name, website, phone_number) FROM stdin;
    public          postgres    false    207   ?m                 0    17381 
   job_titles 
   TABLE DATA           /   COPY public.job_titles (id, title) FROM stdin;
    public          postgres    false    219   n                 0    16854    users 
   TABLE DATA           @   COPY public.users (id, email, password, created_at) FROM stdin;
    public          postgres    false    201   1n                 0    17283    verification_code_candidates 
   TABLE DATA           _   COPY public.verification_code_candidates (id, candidates_id, verification_code_id) FROM stdin;
    public          postgres    false    211   Nn                 0    17316    verification_code_employers 
   TABLE DATA           \   COPY public.verification_code_employers (id, employer_id, verification_code_id) FROM stdin;
    public          postgres    false    213   kn                 0    16906    verification_codes 
   TABLE DATA           R   COPY public.verification_codes (id, code, is_verified, verified_date) FROM stdin;
    public          postgres    false    209   ?n       /           0    0    candidates_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.candidates_id_seq', 1, false);
          public          postgres    false    204            0           0    0 "   employee_confirms_employers_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.employee_confirms_employers_id_seq', 1, false);
          public          postgres    false    216            1           0    0    employee_confirms_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employee_confirms_id_seq', 1, false);
          public          postgres    false    214            2           0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 1, false);
          public          postgres    false    202            3           0    0    employers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employers_id_seq', 1, false);
          public          postgres    false    206            4           0    0    job_titles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.job_titles_id_seq', 1, false);
          public          postgres    false    218            5           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    200            6           0    0 #   verification_code_candidates_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.verification_code_candidates_id_seq', 1, false);
          public          postgres    false    210            7           0    0 "   verification_code_employers_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.verification_code_employers_id_seq', 1, false);
          public          postgres    false    212            8           0    0    verification_codes_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.verification_codes_id_seq', 1, false);
          public          postgres    false    208            j           2606    16883    candidates pk_candidates 
   CONSTRAINT     V   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT pk_candidates PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.candidates DROP CONSTRAINT pk_candidates;
       public            postgres    false    205            x           2606    17355 &   employee_confirms pk_employee_confirms 
   CONSTRAINT     d   ALTER TABLE ONLY public.employee_confirms
    ADD CONSTRAINT pk_employee_confirms PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.employee_confirms DROP CONSTRAINT pk_employee_confirms;
       public            postgres    false    215            z           2606    17368 :   employee_confirms_employers pk_employee_confirms_employers 
   CONSTRAINT     x   ALTER TABLE ONLY public.employee_confirms_employers
    ADD CONSTRAINT pk_employee_confirms_employers PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.employee_confirms_employers DROP CONSTRAINT pk_employee_confirms_employers;
       public            postgres    false    217            h           2606    16870    employees pk_employees 
   CONSTRAINT     T   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees;
       public            postgres    false    203            n           2606    16898    employers pk_employers 
   CONSTRAINT     T   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT pk_employers PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employers DROP CONSTRAINT pk_employers;
       public            postgres    false    207            |           2606    17386    job_titles pk_job_titles 
   CONSTRAINT     V   ALTER TABLE ONLY public.job_titles
    ADD CONSTRAINT pk_job_titles PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.job_titles DROP CONSTRAINT pk_job_titles;
       public            postgres    false    219            d           2606    16860    users pk_users 
   CONSTRAINT     L   ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_users PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT pk_users;
       public            postgres    false    201            t           2606    17288 <   verification_code_candidates pk_verification_code_candidates 
   CONSTRAINT     z   ALTER TABLE ONLY public.verification_code_candidates
    ADD CONSTRAINT pk_verification_code_candidates PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.verification_code_candidates DROP CONSTRAINT pk_verification_code_candidates;
       public            postgres    false    211            v           2606    17321 :   verification_code_employers pk_verification_code_employers 
   CONSTRAINT     x   ALTER TABLE ONLY public.verification_code_employers
    ADD CONSTRAINT pk_verification_code_employers PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.verification_code_employers DROP CONSTRAINT pk_verification_code_employers;
       public            postgres    false    213            p           2606    17254 (   verification_codes pk_verification_codes 
   CONSTRAINT     f   ALTER TABLE ONLY public.verification_codes
    ADD CONSTRAINT pk_verification_codes PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.verification_codes DROP CONSTRAINT pk_verification_codes;
       public            postgres    false    209            l           2606    16885 -   candidates uk_candidates_nationality_identity 
   CONSTRAINT     x   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT uk_candidates_nationality_identity UNIQUE (nationality_identity);
 W   ALTER TABLE ONLY public.candidates DROP CONSTRAINT uk_candidates_nationality_identity;
       public            postgres    false    205            ~           2606    17388    job_titles uk_job_titles_title 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_titles
    ADD CONSTRAINT uk_job_titles_title UNIQUE (title);
 H   ALTER TABLE ONLY public.job_titles DROP CONSTRAINT uk_job_titles_title;
       public            postgres    false    219            f           2606    16862    users uk_users_email 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_users_email UNIQUE (email);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_users_email;
       public            postgres    false    201            r           2606    17300 -   verification_codes uk_verification_codes_code 
   CONSTRAINT     h   ALTER TABLE ONLY public.verification_codes
    ADD CONSTRAINT uk_verification_codes_code UNIQUE (code);
 W   ALTER TABLE ONLY public.verification_codes DROP CONSTRAINT uk_verification_codes_code;
       public            postgres    false    209            ?           2606    16886    candidates fk_candidates_users    FK CONSTRAINT     ?   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT fk_candidates_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.candidates DROP CONSTRAINT fk_candidates_users;
       public          postgres    false    205    201    2916            ?           2606    17356 2   employee_confirms fk_employee_confirms_employee_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employee_confirms
    ADD CONSTRAINT fk_employee_confirms_employee_id FOREIGN KEY (employee_id) REFERENCES public.employees(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.employee_confirms DROP CONSTRAINT fk_employee_confirms_employee_id;
       public          postgres    false    215    203    2920            ?           2606    17369 N   employee_confirms_employers fk_employee_confirms_employers_employee_confirm_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employee_confirms_employers
    ADD CONSTRAINT fk_employee_confirms_employers_employee_confirm_id FOREIGN KEY (employee_confirm_id) REFERENCES public.employee_confirms(id);
 x   ALTER TABLE ONLY public.employee_confirms_employers DROP CONSTRAINT fk_employee_confirms_employers_employee_confirm_id;
       public          postgres    false    217    215    2936            ?           2606    17374 F   employee_confirms_employers fk_employee_confirms_employers_employer_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employee_confirms_employers
    ADD CONSTRAINT fk_employee_confirms_employers_employer_id FOREIGN KEY (employer_id) REFERENCES public.employers(id);
 p   ALTER TABLE ONLY public.employee_confirms_employers DROP CONSTRAINT fk_employee_confirms_employers_employer_id;
       public          postgres    false    2926    207    217                       2606    16871    employees fk_employees_users    FK CONSTRAINT     {   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_users FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_employees_users;
       public          postgres    false    2916    203    201            ?           2606    16899    employers fk_employers_users    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT fk_employers_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.employers DROP CONSTRAINT fk_employers_users;
       public          postgres    false    2916    207    201            ?           2606    17294 G   verification_code_candidates fk_verification_code_candidates_candidates    FK CONSTRAINT     ?   ALTER TABLE ONLY public.verification_code_candidates
    ADD CONSTRAINT fk_verification_code_candidates_candidates FOREIGN KEY (candidates_id) REFERENCES public.candidates(id);
 q   ALTER TABLE ONLY public.verification_code_candidates DROP CONSTRAINT fk_verification_code_candidates_candidates;
       public          postgres    false    205    2922    211            ?           2606    17289 O   verification_code_candidates fk_verification_code_candidates_verification_codes    FK CONSTRAINT     ?   ALTER TABLE ONLY public.verification_code_candidates
    ADD CONSTRAINT fk_verification_code_candidates_verification_codes FOREIGN KEY (verification_code_id) REFERENCES public.verification_codes(id);
 y   ALTER TABLE ONLY public.verification_code_candidates DROP CONSTRAINT fk_verification_code_candidates_verification_codes;
       public          postgres    false    211    209    2928            ?           2606    17327 D   verification_code_employers fk_verification_code_employers_employers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.verification_code_employers
    ADD CONSTRAINT fk_verification_code_employers_employers FOREIGN KEY (employer_id) REFERENCES public.employers(id);
 n   ALTER TABLE ONLY public.verification_code_employers DROP CONSTRAINT fk_verification_code_employers_employers;
       public          postgres    false    2926    207    213            ?           2606    17322 M   verification_code_employers fk_verification_code_employers_verification_codes    FK CONSTRAINT     ?   ALTER TABLE ONLY public.verification_code_employers
    ADD CONSTRAINT fk_verification_code_employers_verification_codes FOREIGN KEY (verification_code_id) REFERENCES public.verification_codes(id);
 w   ALTER TABLE ONLY public.verification_code_employers DROP CONSTRAINT fk_verification_code_employers_verification_codes;
       public          postgres    false    2928    213    209                  x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?     