PGDMP                         {         
   sport club    14.5    14.4 w               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    43774 
   sport club    DATABASE     i   CREATE DATABASE "sport club" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "sport club";
                postgres    false            �            1259    43800 	   abonement    TABLE       CREATE TABLE public.abonement (
    id_aboniment integer NOT NULL,
    klient_id integer NOT NULL,
    tarif_id integer NOT NULL,
    status integer NOT NULL,
    issue_date date NOT NULL,
    validity interval day NOT NULL,
    expiration_date date NOT NULL
);
    DROP TABLE public.abonement;
       public         heap    postgres    false            �            1259    43796    abonement_id_aboniment_seq    SEQUENCE     �   CREATE SEQUENCE public.abonement_id_aboniment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.abonement_id_aboniment_seq;
       public          postgres    false    219                       0    0    abonement_id_aboniment_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.abonement_id_aboniment_seq OWNED BY public.abonement.id_aboniment;
          public          postgres    false    215            �            1259    43797    abonement_klient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abonement_klient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.abonement_klient_id_seq;
       public          postgres    false    219                       0    0    abonement_klient_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.abonement_klient_id_seq OWNED BY public.abonement.klient_id;
          public          postgres    false    216            �            1259    43799    abonement_status_seq    SEQUENCE     �   CREATE SEQUENCE public.abonement_status_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.abonement_status_seq;
       public          postgres    false    219                       0    0    abonement_status_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.abonement_status_seq OWNED BY public.abonement.status;
          public          postgres    false    218            �            1259    43798    abonement_tarif_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abonement_tarif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.abonement_tarif_id_seq;
       public          postgres    false    219                       0    0    abonement_tarif_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.abonement_tarif_id_seq OWNED BY public.abonement.tarif_id;
          public          postgres    false    217            �            1259    43783    klient    TABLE       CREATE TABLE public.klient (
    id_klient integer NOT NULL,
    familiya character varying(30) NOT NULL,
    imya character varying(30) NOT NULL,
    otchestvo character varying(30) NOT NULL,
    dob date NOT NULL,
    telefon character varying(12) NOT NULL
);
    DROP TABLE public.klient;
       public         heap    postgres    false            �            1259    43782    klient_id_klient_seq    SEQUENCE     �   CREATE SEQUENCE public.klient_id_klient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.klient_id_klient_seq;
       public          postgres    false    212                       0    0    klient_id_klient_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.klient_id_klient_seq OWNED BY public.klient.id_klient;
          public          postgres    false    211            �            1259    43847    premises    TABLE     �   CREATE TABLE public.premises (
    id_premises integer NOT NULL,
    pnumber integer NOT NULL,
    type_premises integer NOT NULL,
    room_size character varying(50) NOT NULL
);
    DROP TABLE public.premises;
       public         heap    postgres    false            �            1259    43845    premises_id_premises_seq    SEQUENCE     �   CREATE SEQUENCE public.premises_id_premises_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.premises_id_premises_seq;
       public          postgres    false    228                       0    0    premises_id_premises_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.premises_id_premises_seq OWNED BY public.premises.id_premises;
          public          postgres    false    226            �            1259    43839    premises_type    TABLE     �   CREATE TABLE public.premises_type (
    id_premises_type integer NOT NULL,
    naimenovanie character varying(30) NOT NULL,
    purpose character varying(300) NOT NULL
);
 !   DROP TABLE public.premises_type;
       public         heap    postgres    false            �            1259    43838 "   premises_type_id_premises_type_seq    SEQUENCE     �   CREATE SEQUENCE public.premises_type_id_premises_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.premises_type_id_premises_type_seq;
       public          postgres    false    225                       0    0 "   premises_type_id_premises_type_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.premises_type_id_premises_type_seq OWNED BY public.premises_type.id_premises_type;
          public          postgres    false    224            �            1259    43846    premises_type_premises_seq    SEQUENCE     �   CREATE SEQUENCE public.premises_type_premises_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.premises_type_premises_seq;
       public          postgres    false    228                       0    0    premises_type_premises_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.premises_type_premises_seq OWNED BY public.premises.type_premises;
          public          postgres    false    227            �            1259    43790    status    TABLE     r   CREATE TABLE public.status (
    id_status integer NOT NULL,
    current_status character varying(30) NOT NULL
);
    DROP TABLE public.status;
       public         heap    postgres    false            �            1259    43789    status_id_status_seq    SEQUENCE     �   CREATE SEQUENCE public.status_id_status_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.status_id_status_seq;
       public          postgres    false    214                       0    0    status_id_status_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.status_id_status_seq OWNED BY public.status.id_status;
          public          postgres    false    213            �            1259    43776    tarif    TABLE       CREATE TABLE public.tarif (
    id_tarif integer NOT NULL,
    naimenovanie_tarif character varying(30) NOT NULL,
    visits interval NOT NULL,
    premises character varying(200),
    available_time character varying(50) NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.tarif;
       public         heap    postgres    false            �            1259    43775    tarif_id_tarif_seq    SEQUENCE     �   CREATE SEQUENCE public.tarif_id_tarif_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tarif_id_tarif_seq;
       public          postgres    false    210                        0    0    tarif_id_tarif_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tarif_id_tarif_seq OWNED BY public.tarif.id_tarif;
          public          postgres    false    209            �            1259    43863 	   timetable    TABLE       CREATE TABLE public.timetable (
    id_timetable integer NOT NULL,
    day_of_the_week character varying(30) NOT NULL,
    hours character varying(20) NOT NULL,
    type_workout integer NOT NULL,
    trainer integer NOT NULL,
    premises_id integer NOT NULL
);
    DROP TABLE public.timetable;
       public         heap    postgres    false            �            1259    43859    timetable_id_timetable_seq    SEQUENCE     �   CREATE SEQUENCE public.timetable_id_timetable_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.timetable_id_timetable_seq;
       public          postgres    false    233            !           0    0    timetable_id_timetable_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.timetable_id_timetable_seq OWNED BY public.timetable.id_timetable;
          public          postgres    false    229            �            1259    43862    timetable_premises_id_seq    SEQUENCE     �   CREATE SEQUENCE public.timetable_premises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.timetable_premises_id_seq;
       public          postgres    false    233            "           0    0    timetable_premises_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.timetable_premises_id_seq OWNED BY public.timetable.premises_id;
          public          postgres    false    232            �            1259    43861    timetable_trainer_seq    SEQUENCE     �   CREATE SEQUENCE public.timetable_trainer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.timetable_trainer_seq;
       public          postgres    false    233            #           0    0    timetable_trainer_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.timetable_trainer_seq OWNED BY public.timetable.trainer;
          public          postgres    false    231            �            1259    43860    timetable_type_workout_seq    SEQUENCE     �   CREATE SEQUENCE public.timetable_type_workout_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.timetable_type_workout_seq;
       public          postgres    false    233            $           0    0    timetable_type_workout_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.timetable_type_workout_seq OWNED BY public.timetable.type_workout;
          public          postgres    false    230            �            1259    43825    trainer    TABLE     �   CREATE TABLE public.trainer (
    id_trainer integer NOT NULL,
    familiya character varying(30) NOT NULL,
    imya character varying(30) NOT NULL,
    otchestvo character varying(30) NOT NULL,
    telephone character varying(12) NOT NULL
);
    DROP TABLE public.trainer;
       public         heap    postgres    false            �            1259    43824    trainer_id_trainer_seq    SEQUENCE     �   CREATE SEQUENCE public.trainer_id_trainer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.trainer_id_trainer_seq;
       public          postgres    false    221            %           0    0    trainer_id_trainer_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.trainer_id_trainer_seq OWNED BY public.trainer.id_trainer;
          public          postgres    false    220            �            1259    43832    type_workout    TABLE     �   CREATE TABLE public.type_workout (
    id_type_workout integer NOT NULL,
    type_workout character varying(30) NOT NULL,
    description character varying(300) NOT NULL
);
     DROP TABLE public.type_workout;
       public         heap    postgres    false            �            1259    43831     type_workout_id_type_workout_seq    SEQUENCE     �   CREATE SEQUENCE public.type_workout_id_type_workout_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.type_workout_id_type_workout_seq;
       public          postgres    false    223            &           0    0     type_workout_id_type_workout_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.type_workout_id_type_workout_seq OWNED BY public.type_workout.id_type_workout;
          public          postgres    false    222            �            1259    43890    workout    TABLE     �   CREATE TABLE public.workout (
    id_workout integer NOT NULL,
    individual_klients_id integer NOT NULL,
    timetable integer NOT NULL
);
    DROP TABLE public.workout;
       public         heap    postgres    false            �            1259    43887    workout_id_workout_seq    SEQUENCE     �   CREATE SEQUENCE public.workout_id_workout_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.workout_id_workout_seq;
       public          postgres    false    237            '           0    0    workout_id_workout_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.workout_id_workout_seq OWNED BY public.workout.id_workout;
          public          postgres    false    234            �            1259    43888 !   workout_individual_klients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workout_individual_klients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.workout_individual_klients_id_seq;
       public          postgres    false    237            (           0    0 !   workout_individual_klients_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.workout_individual_klients_id_seq OWNED BY public.workout.individual_klients_id;
          public          postgres    false    235            �            1259    43889    workout_timetable_seq    SEQUENCE     �   CREATE SEQUENCE public.workout_timetable_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.workout_timetable_seq;
       public          postgres    false    237            )           0    0    workout_timetable_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.workout_timetable_seq OWNED BY public.workout.timetable;
          public          postgres    false    236            <           2604    43803    abonement id_aboniment    DEFAULT     �   ALTER TABLE ONLY public.abonement ALTER COLUMN id_aboniment SET DEFAULT nextval('public.abonement_id_aboniment_seq'::regclass);
 E   ALTER TABLE public.abonement ALTER COLUMN id_aboniment DROP DEFAULT;
       public          postgres    false    215    219    219            =           2604    43804    abonement klient_id    DEFAULT     z   ALTER TABLE ONLY public.abonement ALTER COLUMN klient_id SET DEFAULT nextval('public.abonement_klient_id_seq'::regclass);
 B   ALTER TABLE public.abonement ALTER COLUMN klient_id DROP DEFAULT;
       public          postgres    false    216    219    219            >           2604    43805    abonement tarif_id    DEFAULT     x   ALTER TABLE ONLY public.abonement ALTER COLUMN tarif_id SET DEFAULT nextval('public.abonement_tarif_id_seq'::regclass);
 A   ALTER TABLE public.abonement ALTER COLUMN tarif_id DROP DEFAULT;
       public          postgres    false    219    217    219            ?           2604    43806    abonement status    DEFAULT     t   ALTER TABLE ONLY public.abonement ALTER COLUMN status SET DEFAULT nextval('public.abonement_status_seq'::regclass);
 ?   ALTER TABLE public.abonement ALTER COLUMN status DROP DEFAULT;
       public          postgres    false    218    219    219            :           2604    43786    klient id_klient    DEFAULT     t   ALTER TABLE ONLY public.klient ALTER COLUMN id_klient SET DEFAULT nextval('public.klient_id_klient_seq'::regclass);
 ?   ALTER TABLE public.klient ALTER COLUMN id_klient DROP DEFAULT;
       public          postgres    false    212    211    212            C           2604    43850    premises id_premises    DEFAULT     |   ALTER TABLE ONLY public.premises ALTER COLUMN id_premises SET DEFAULT nextval('public.premises_id_premises_seq'::regclass);
 C   ALTER TABLE public.premises ALTER COLUMN id_premises DROP DEFAULT;
       public          postgres    false    226    228    228            D           2604    43851    premises type_premises    DEFAULT     �   ALTER TABLE ONLY public.premises ALTER COLUMN type_premises SET DEFAULT nextval('public.premises_type_premises_seq'::regclass);
 E   ALTER TABLE public.premises ALTER COLUMN type_premises DROP DEFAULT;
       public          postgres    false    228    227    228            B           2604    43842    premises_type id_premises_type    DEFAULT     �   ALTER TABLE ONLY public.premises_type ALTER COLUMN id_premises_type SET DEFAULT nextval('public.premises_type_id_premises_type_seq'::regclass);
 M   ALTER TABLE public.premises_type ALTER COLUMN id_premises_type DROP DEFAULT;
       public          postgres    false    224    225    225            ;           2604    43793    status id_status    DEFAULT     t   ALTER TABLE ONLY public.status ALTER COLUMN id_status SET DEFAULT nextval('public.status_id_status_seq'::regclass);
 ?   ALTER TABLE public.status ALTER COLUMN id_status DROP DEFAULT;
       public          postgres    false    213    214    214            9           2604    43779    tarif id_tarif    DEFAULT     p   ALTER TABLE ONLY public.tarif ALTER COLUMN id_tarif SET DEFAULT nextval('public.tarif_id_tarif_seq'::regclass);
 =   ALTER TABLE public.tarif ALTER COLUMN id_tarif DROP DEFAULT;
       public          postgres    false    209    210    210            E           2604    43866    timetable id_timetable    DEFAULT     �   ALTER TABLE ONLY public.timetable ALTER COLUMN id_timetable SET DEFAULT nextval('public.timetable_id_timetable_seq'::regclass);
 E   ALTER TABLE public.timetable ALTER COLUMN id_timetable DROP DEFAULT;
       public          postgres    false    229    233    233            F           2604    43867    timetable type_workout    DEFAULT     �   ALTER TABLE ONLY public.timetable ALTER COLUMN type_workout SET DEFAULT nextval('public.timetable_type_workout_seq'::regclass);
 E   ALTER TABLE public.timetable ALTER COLUMN type_workout DROP DEFAULT;
       public          postgres    false    233    230    233            G           2604    43868    timetable trainer    DEFAULT     v   ALTER TABLE ONLY public.timetable ALTER COLUMN trainer SET DEFAULT nextval('public.timetable_trainer_seq'::regclass);
 @   ALTER TABLE public.timetable ALTER COLUMN trainer DROP DEFAULT;
       public          postgres    false    231    233    233            H           2604    43869    timetable premises_id    DEFAULT     ~   ALTER TABLE ONLY public.timetable ALTER COLUMN premises_id SET DEFAULT nextval('public.timetable_premises_id_seq'::regclass);
 D   ALTER TABLE public.timetable ALTER COLUMN premises_id DROP DEFAULT;
       public          postgres    false    233    232    233            @           2604    43828    trainer id_trainer    DEFAULT     x   ALTER TABLE ONLY public.trainer ALTER COLUMN id_trainer SET DEFAULT nextval('public.trainer_id_trainer_seq'::regclass);
 A   ALTER TABLE public.trainer ALTER COLUMN id_trainer DROP DEFAULT;
       public          postgres    false    220    221    221            A           2604    43835    type_workout id_type_workout    DEFAULT     �   ALTER TABLE ONLY public.type_workout ALTER COLUMN id_type_workout SET DEFAULT nextval('public.type_workout_id_type_workout_seq'::regclass);
 K   ALTER TABLE public.type_workout ALTER COLUMN id_type_workout DROP DEFAULT;
       public          postgres    false    222    223    223            I           2604    43893    workout id_workout    DEFAULT     x   ALTER TABLE ONLY public.workout ALTER COLUMN id_workout SET DEFAULT nextval('public.workout_id_workout_seq'::regclass);
 A   ALTER TABLE public.workout ALTER COLUMN id_workout DROP DEFAULT;
       public          postgres    false    237    234    237            J           2604    43894    workout individual_klients_id    DEFAULT     �   ALTER TABLE ONLY public.workout ALTER COLUMN individual_klients_id SET DEFAULT nextval('public.workout_individual_klients_id_seq'::regclass);
 L   ALTER TABLE public.workout ALTER COLUMN individual_klients_id DROP DEFAULT;
       public          postgres    false    235    237    237            K           2604    43895    workout timetable    DEFAULT     v   ALTER TABLE ONLY public.workout ALTER COLUMN timetable SET DEFAULT nextval('public.workout_timetable_seq'::regclass);
 @   ALTER TABLE public.workout ALTER COLUMN timetable DROP DEFAULT;
       public          postgres    false    237    236    237            �          0    43800 	   abonement 
   TABLE DATA           u   COPY public.abonement (id_aboniment, klient_id, tarif_id, status, issue_date, validity, expiration_date) FROM stdin;
    public          postgres    false    219   Ռ       �          0    43783    klient 
   TABLE DATA           T   COPY public.klient (id_klient, familiya, imya, otchestvo, dob, telefon) FROM stdin;
    public          postgres    false    212   Y�                 0    43847    premises 
   TABLE DATA           R   COPY public.premises (id_premises, pnumber, type_premises, room_size) FROM stdin;
    public          postgres    false    228   '�                 0    43839    premises_type 
   TABLE DATA           P   COPY public.premises_type (id_premises_type, naimenovanie, purpose) FROM stdin;
    public          postgres    false    225   ��       �          0    43790    status 
   TABLE DATA           ;   COPY public.status (id_status, current_status) FROM stdin;
    public          postgres    false    214   Q�       �          0    43776    tarif 
   TABLE DATA           f   COPY public.tarif (id_tarif, naimenovanie_tarif, visits, premises, available_time, price) FROM stdin;
    public          postgres    false    210   ��                 0    43863 	   timetable 
   TABLE DATA           m   COPY public.timetable (id_timetable, day_of_the_week, hours, type_workout, trainer, premises_id) FROM stdin;
    public          postgres    false    233   o�                  0    43825    trainer 
   TABLE DATA           S   COPY public.trainer (id_trainer, familiya, imya, otchestvo, telephone) FROM stdin;
    public          postgres    false    221   	�                 0    43832    type_workout 
   TABLE DATA           R   COPY public.type_workout (id_type_workout, type_workout, description) FROM stdin;
    public          postgres    false    223   �                 0    43890    workout 
   TABLE DATA           O   COPY public.workout (id_workout, individual_klients_id, timetable) FROM stdin;
    public          postgres    false    237   �       *           0    0    abonement_id_aboniment_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.abonement_id_aboniment_seq', 1, false);
          public          postgres    false    215            +           0    0    abonement_klient_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.abonement_klient_id_seq', 1, false);
          public          postgres    false    216            ,           0    0    abonement_status_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.abonement_status_seq', 1, false);
          public          postgres    false    218            -           0    0    abonement_tarif_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.abonement_tarif_id_seq', 1, false);
          public          postgres    false    217            .           0    0    klient_id_klient_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.klient_id_klient_seq', 1, false);
          public          postgres    false    211            /           0    0    premises_id_premises_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.premises_id_premises_seq', 1, false);
          public          postgres    false    226            0           0    0 "   premises_type_id_premises_type_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.premises_type_id_premises_type_seq', 1, false);
          public          postgres    false    224            1           0    0    premises_type_premises_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.premises_type_premises_seq', 1, false);
          public          postgres    false    227            2           0    0    status_id_status_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.status_id_status_seq', 1, false);
          public          postgres    false    213            3           0    0    tarif_id_tarif_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tarif_id_tarif_seq', 1, false);
          public          postgres    false    209            4           0    0    timetable_id_timetable_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.timetable_id_timetable_seq', 1, false);
          public          postgres    false    229            5           0    0    timetable_premises_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.timetable_premises_id_seq', 1, false);
          public          postgres    false    232            6           0    0    timetable_trainer_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.timetable_trainer_seq', 1, false);
          public          postgres    false    231            7           0    0    timetable_type_workout_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.timetable_type_workout_seq', 1, false);
          public          postgres    false    230            8           0    0    trainer_id_trainer_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.trainer_id_trainer_seq', 1, false);
          public          postgres    false    220            9           0    0     type_workout_id_type_workout_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.type_workout_id_type_workout_seq', 1, false);
          public          postgres    false    222            :           0    0    workout_id_workout_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.workout_id_workout_seq', 1, false);
          public          postgres    false    234            ;           0    0 !   workout_individual_klients_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.workout_individual_klients_id_seq', 1, false);
          public          postgres    false    235            <           0    0    workout_timetable_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.workout_timetable_seq', 1, false);
          public          postgres    false    236            S           2606    43808    abonement abonement_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.abonement
    ADD CONSTRAINT abonement_pkey PRIMARY KEY (id_aboniment);
 B   ALTER TABLE ONLY public.abonement DROP CONSTRAINT abonement_pkey;
       public            postgres    false    219            O           2606    43788    klient klient_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.klient
    ADD CONSTRAINT klient_pkey PRIMARY KEY (id_klient);
 <   ALTER TABLE ONLY public.klient DROP CONSTRAINT klient_pkey;
       public            postgres    false    212            [           2606    43853    premises premises_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.premises
    ADD CONSTRAINT premises_pkey PRIMARY KEY (id_premises);
 @   ALTER TABLE ONLY public.premises DROP CONSTRAINT premises_pkey;
       public            postgres    false    228            Y           2606    43844     premises_type premises_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.premises_type
    ADD CONSTRAINT premises_type_pkey PRIMARY KEY (id_premises_type);
 J   ALTER TABLE ONLY public.premises_type DROP CONSTRAINT premises_type_pkey;
       public            postgres    false    225            Q           2606    43795    status status_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id_status);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    214            M           2606    43781    tarif tarif_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tarif
    ADD CONSTRAINT tarif_pkey PRIMARY KEY (id_tarif);
 :   ALTER TABLE ONLY public.tarif DROP CONSTRAINT tarif_pkey;
       public            postgres    false    210            ]           2606    43871    timetable timetable_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (id_timetable);
 B   ALTER TABLE ONLY public.timetable DROP CONSTRAINT timetable_pkey;
       public            postgres    false    233            U           2606    43830    trainer trainer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.trainer
    ADD CONSTRAINT trainer_pkey PRIMARY KEY (id_trainer);
 >   ALTER TABLE ONLY public.trainer DROP CONSTRAINT trainer_pkey;
       public            postgres    false    221            W           2606    43837    type_workout type_workout_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.type_workout
    ADD CONSTRAINT type_workout_pkey PRIMARY KEY (id_type_workout);
 H   ALTER TABLE ONLY public.type_workout DROP CONSTRAINT type_workout_pkey;
       public            postgres    false    223            _           2606    43897    workout workout_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.workout
    ADD CONSTRAINT workout_pkey PRIMARY KEY (id_workout);
 >   ALTER TABLE ONLY public.workout DROP CONSTRAINT workout_pkey;
       public            postgres    false    237            `           2606    43809 "   abonement abonement_klient_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.abonement
    ADD CONSTRAINT abonement_klient_id_fkey FOREIGN KEY (klient_id) REFERENCES public.klient(id_klient);
 L   ALTER TABLE ONLY public.abonement DROP CONSTRAINT abonement_klient_id_fkey;
       public          postgres    false    212    3151    219            a           2606    43819    abonement abonement_status_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.abonement
    ADD CONSTRAINT abonement_status_fkey FOREIGN KEY (status) REFERENCES public.status(id_status);
 I   ALTER TABLE ONLY public.abonement DROP CONSTRAINT abonement_status_fkey;
       public          postgres    false    214    3153    219            b           2606    43814 !   abonement abonement_tarif_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.abonement
    ADD CONSTRAINT abonement_tarif_id_fkey FOREIGN KEY (tarif_id) REFERENCES public.tarif(id_tarif);
 K   ALTER TABLE ONLY public.abonement DROP CONSTRAINT abonement_tarif_id_fkey;
       public          postgres    false    219    3149    210            c           2606    43854 $   premises premises_type_premises_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premises
    ADD CONSTRAINT premises_type_premises_fkey FOREIGN KEY (type_premises) REFERENCES public.premises_type(id_premises_type);
 N   ALTER TABLE ONLY public.premises DROP CONSTRAINT premises_type_premises_fkey;
       public          postgres    false    3161    225    228            d           2606    43882 $   timetable timetable_premises_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_premises_id_fkey FOREIGN KEY (premises_id) REFERENCES public.premises(id_premises);
 N   ALTER TABLE ONLY public.timetable DROP CONSTRAINT timetable_premises_id_fkey;
       public          postgres    false    228    3163    233            e           2606    43877     timetable timetable_trainer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_trainer_fkey FOREIGN KEY (trainer) REFERENCES public.trainer(id_trainer);
 J   ALTER TABLE ONLY public.timetable DROP CONSTRAINT timetable_trainer_fkey;
       public          postgres    false    221    3157    233            f           2606    43872 %   timetable timetable_type_workout_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_type_workout_fkey FOREIGN KEY (type_workout) REFERENCES public.type_workout(id_type_workout);
 O   ALTER TABLE ONLY public.timetable DROP CONSTRAINT timetable_type_workout_fkey;
       public          postgres    false    223    233    3159            g           2606    43898 *   workout workout_individual_klients_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.workout
    ADD CONSTRAINT workout_individual_klients_id_fkey FOREIGN KEY (individual_klients_id) REFERENCES public.klient(id_klient);
 T   ALTER TABLE ONLY public.workout DROP CONSTRAINT workout_individual_klients_id_fkey;
       public          postgres    false    212    3151    237            h           2606    43903    workout workout_timetable_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.workout
    ADD CONSTRAINT workout_timetable_fkey FOREIGN KEY (timetable) REFERENCES public.timetable(id_timetable);
 H   ALTER TABLE ONLY public.workout DROP CONSTRAINT workout_timetable_fkey;
       public          postgres    false    237    233    3165            �   t   x����� ���.��
����<���Fŋ�=�����Ö�X1�p�2oO�Q�1b+Z�ȗ�ҡ<|�
�Z�r��*���;�RG_F.߷}��,W�,ʆO���3�i$�O#GH      �   �  x�m�knA���e�v�s��a� �K&<$D"@��+m�3�܈��lH�}if�suu��\��-[9�}#[#�d[Wu]7F�b�P����9Op��ap�2e��=S�ٲ������k�:�s}��v��e��%���
��S&��B�$���)�����\�S��ܹ^����Ff�)�lCk�30Ǯ��km��s�����ϒc*6j�\���]'u�9�&�{�{���4ó�c���]/d��[u����/�M�9R�( �9'��|ę��S=��M��P6Ky��{�H�K�C��-F~�}�5���ԡ�>�i�-Ԁ��F���8��ȥ��4�'�\!7KBp��e�G�#nK����<"N^hz(z;�#?E)�̸�Ewm
����jT�VQ;���廸!���P
,���j�ӳ���ھ^>���p+(G�})���W�ڿ����         z   x�mλ�@��x����<z��!�b@	�Gsqw�}������t�3�5Y�1¹�ށs�e'騻nz�u�([�n���l6�k�U��iL�|'�5X#v�8������̾��}*         �   x�u��	�@D�o��$��c1&D�H+���]������S0����0̛ݵc�=<z��M'�F��)&�;6�Zb�C�le�q����o��`�������v�)W�Y��e��u��0���B,�W�h{(Z�^�Qv��<���      �       x�3�tL.�,K�2���+K��L����� U�U      �   �   x���[n�@E�=��4��k�b 	�T�n%�	�@��w�u�F��ӢH�2�=��8�.Q�-��O	aaO\Y�Xͳ�c�u�����ynFmA�֧3�xݡԕEJ�K-�֕��ь(1�Y1��WR���髵y�s���(�����I��-�/�,�8uѽ>�=�q��Ř��s�� ���3�����4��C�ލ%3��"�r=������9w[է�         �   x�m�A
�PD��]���Z�g�0U�n
^�V�����F�_�h)���	�/>�༽���KBU�*�H�(����߲���=U"15�#�9���-��x����}b)��}�J_�e��{�V��7�h�z֪���T�          �   x�UP[N�0��)N֤w�0m*��$$����a(�fo�xS�����>ff��'d�(8b���g��f,�k���e:a��&��R��F���X���q���������3Ux���h���I�x�=���V�&@uo�Ά��z�]A&K�Z��@⌃Ŷރ�]g>z��Fx���r��=2}���!�ȫ�H����/��R-�_�t���e���\]��/[M�         	  x���MN1���)r�"=����$��7H�D�M��|#�����i&���?{�>�񃂭�HA:i�pD�A쑝�<$����T� ���(�f QZ>c@,�ر.Kgz&:
�j"-���������Aa���r�(8�#N�dK0��P_Y3=�{s��1�˶��Ÿ�!��c�gZ0��^IL6�%)�$�4�|\��K���Tw|+����6t�ÿ\:�㨄t!��Zz��4<��x��L��P���_
����{�ی��         8   x����0��l1At��%�� h&�� p%I�(RMSZ�y��áe/��G�i>     