PGDMP  :    ;                }           Examen    17.3    17.3 l    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    25369    Examen    DATABASE     n   CREATE DATABASE "Examen" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-MX';
    DROP DATABASE "Examen";
                     postgres    false            �            1259    25430    aulas    TABLE     �   CREATE TABLE public.aulas (
    idaula integer NOT NULL,
    nombreaula character varying(100),
    capacidad integer,
    ubicacion character varying(100)
);
    DROP TABLE public.aulas;
       public         heap r       postgres    false            �            1259    25429    aulas_idaula_seq    SEQUENCE     �   CREATE SEQUENCE public.aulas_idaula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.aulas_idaula_seq;
       public               postgres    false    228            �           0    0    aulas_idaula_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.aulas_idaula_seq OWNED BY public.aulas.idaula;
          public               postgres    false    227            �            1259    25387    cursos    TABLE     �   CREATE TABLE public.cursos (
    idcurso integer NOT NULL,
    nombrecurso character varying(100),
    descripcion text,
    creditos integer,
    semestre character varying(20),
    iddepartamento integer
);
    DROP TABLE public.cursos;
       public         heap r       postgres    false            �            1259    25386    cursos_idcurso_seq    SEQUENCE     �   CREATE SEQUENCE public.cursos_idcurso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cursos_idcurso_seq;
       public               postgres    false    222            �           0    0    cursos_idcurso_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cursos_idcurso_seq OWNED BY public.cursos.idcurso;
          public               postgres    false    221            �            1259    25460    cursosprofesores    TABLE     �   CREATE TABLE public.cursosprofesores (
    idcursoprofesor integer NOT NULL,
    idcurso integer NOT NULL,
    idprofesor integer NOT NULL
);
 $   DROP TABLE public.cursosprofesores;
       public         heap r       postgres    false            �            1259    25458    cursosprofesores_idcurso_seq    SEQUENCE     �   CREATE SEQUENCE public.cursosprofesores_idcurso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cursosprofesores_idcurso_seq;
       public               postgres    false    236            �           0    0    cursosprofesores_idcurso_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cursosprofesores_idcurso_seq OWNED BY public.cursosprofesores.idcurso;
          public               postgres    false    234            �            1259    25457 $   cursosprofesores_idcursoprofesor_seq    SEQUENCE     �   CREATE SEQUENCE public.cursosprofesores_idcursoprofesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.cursosprofesores_idcursoprofesor_seq;
       public               postgres    false    236            �           0    0 $   cursosprofesores_idcursoprofesor_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.cursosprofesores_idcursoprofesor_seq OWNED BY public.cursosprofesores.idcursoprofesor;
          public               postgres    false    233            �            1259    25459    cursosprofesores_idprofesor_seq    SEQUENCE     �   CREATE SEQUENCE public.cursosprofesores_idprofesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cursosprofesores_idprofesor_seq;
       public               postgres    false    236            �           0    0    cursosprofesores_idprofesor_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.cursosprofesores_idprofesor_seq OWNED BY public.cursosprofesores.idprofesor;
          public               postgres    false    235            �            1259    25380    departamentos    TABLE     �   CREATE TABLE public.departamentos (
    iddepartamento integer NOT NULL,
    nombredepartamento character varying(100),
    edificio character varying(100)
);
 !   DROP TABLE public.departamentos;
       public         heap r       postgres    false            �            1259    25379     departamentos_iddepartamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamentos_iddepartamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.departamentos_iddepartamento_seq;
       public               postgres    false    220            �           0    0     departamentos_iddepartamento_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.departamentos_iddepartamento_seq OWNED BY public.departamentos.iddepartamento;
          public               postgres    false    219            �            1259    25371    estudiantes    TABLE       CREATE TABLE public.estudiantes (
    idestudiante integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    fechanacimiento date,
    direccion character varying(200),
    ciudad character varying(100),
    email character varying(100)
);
    DROP TABLE public.estudiantes;
       public         heap r       postgres    false            �            1259    25370    estudiantes_idestudiante_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiantes_idestudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.estudiantes_idestudiante_seq;
       public               postgres    false    218            �           0    0    estudiantes_idestudiante_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.estudiantes_idestudiante_seq OWNED BY public.estudiantes.idestudiante;
          public               postgres    false    217            �            1259    25439    horarios    TABLE     �   CREATE TABLE public.horarios (
    idhorario integer NOT NULL,
    idcurso integer NOT NULL,
    idaula integer NOT NULL,
    fechainicio date,
    fechafin date,
    horainicio time without time zone,
    horafin time without time zone
);
    DROP TABLE public.horarios;
       public         heap r       postgres    false            �            1259    25438    horarios_idaula_seq    SEQUENCE     �   CREATE SEQUENCE public.horarios_idaula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.horarios_idaula_seq;
       public               postgres    false    232            �           0    0    horarios_idaula_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.horarios_idaula_seq OWNED BY public.horarios.idaula;
          public               postgres    false    231            �            1259    25437    horarios_idcurso_seq    SEQUENCE     �   CREATE SEQUENCE public.horarios_idcurso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.horarios_idcurso_seq;
       public               postgres    false    232            �           0    0    horarios_idcurso_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.horarios_idcurso_seq OWNED BY public.horarios.idcurso;
          public               postgres    false    230            �            1259    25436    horarios_idhorario_seq    SEQUENCE     �   CREATE SEQUENCE public.horarios_idhorario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.horarios_idhorario_seq;
       public               postgres    false    232            �           0    0    horarios_idhorario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.horarios_idhorario_seq OWNED BY public.horarios.idhorario;
          public               postgres    false    229            �            1259    25401    inscripciones    TABLE     �   CREATE TABLE public.inscripciones (
    idinscripcion integer NOT NULL,
    idestudiante integer,
    idcurso integer,
    fechainscripcion date,
    calificacion numeric(4,2)
);
 !   DROP TABLE public.inscripciones;
       public         heap r       postgres    false            �            1259    25400    inscripciones_idinscripcion_seq    SEQUENCE     �   CREATE SEQUENCE public.inscripciones_idinscripcion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.inscripciones_idinscripcion_seq;
       public               postgres    false    224            �           0    0    inscripciones_idinscripcion_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.inscripciones_idinscripcion_seq OWNED BY public.inscripciones.idinscripcion;
          public               postgres    false    223            �            1259    25418 
   profesores    TABLE     �   CREATE TABLE public.profesores (
    idprofesor integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    titulo character varying(100),
    iddepartamento integer
);
    DROP TABLE public.profesores;
       public         heap r       postgres    false            �            1259    25417    profesores_idprofesor_seq    SEQUENCE     �   CREATE SEQUENCE public.profesores_idprofesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.profesores_idprofesor_seq;
       public               postgres    false    226            �           0    0    profesores_idprofesor_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.profesores_idprofesor_seq OWNED BY public.profesores.idprofesor;
          public               postgres    false    225            �            1259    25490    programascursos    TABLE     �   CREATE TABLE public.programascursos (
    idprogramacurso integer NOT NULL,
    idprograma integer NOT NULL,
    idcurso integer NOT NULL
);
 #   DROP TABLE public.programascursos;
       public         heap r       postgres    false            �            1259    25489    programascursos_idcurso_seq    SEQUENCE     �   CREATE SEQUENCE public.programascursos_idcurso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.programascursos_idcurso_seq;
       public               postgres    false    242            �           0    0    programascursos_idcurso_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.programascursos_idcurso_seq OWNED BY public.programascursos.idcurso;
          public               postgres    false    241            �            1259    25488    programascursos_idprograma_seq    SEQUENCE     �   CREATE SEQUENCE public.programascursos_idprograma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.programascursos_idprograma_seq;
       public               postgres    false    242            �           0    0    programascursos_idprograma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.programascursos_idprograma_seq OWNED BY public.programascursos.idprograma;
          public               postgres    false    240            �            1259    25487 #   programascursos_idprogramacurso_seq    SEQUENCE     �   CREATE SEQUENCE public.programascursos_idprogramacurso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.programascursos_idprogramacurso_seq;
       public               postgres    false    242            �           0    0 #   programascursos_idprogramacurso_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.programascursos_idprogramacurso_seq OWNED BY public.programascursos.idprogramacurso;
          public               postgres    false    239            �            1259    25479    programasestudio    TABLE     �   CREATE TABLE public.programasestudio (
    idprograma integer NOT NULL,
    nombreprograma character varying(100),
    descripcionprograma text
);
 $   DROP TABLE public.programasestudio;
       public         heap r       postgres    false            �            1259    25478    programasestudio_idprograma_seq    SEQUENCE     �   CREATE SEQUENCE public.programasestudio_idprograma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.programasestudio_idprograma_seq;
       public               postgres    false    238            �           0    0    programasestudio_idprograma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.programasestudio_idprograma_seq OWNED BY public.programasestudio.idprograma;
          public               postgres    false    237            �           2604    25433    aulas idaula    DEFAULT     l   ALTER TABLE ONLY public.aulas ALTER COLUMN idaula SET DEFAULT nextval('public.aulas_idaula_seq'::regclass);
 ;   ALTER TABLE public.aulas ALTER COLUMN idaula DROP DEFAULT;
       public               postgres    false    227    228    228            �           2604    25390    cursos idcurso    DEFAULT     p   ALTER TABLE ONLY public.cursos ALTER COLUMN idcurso SET DEFAULT nextval('public.cursos_idcurso_seq'::regclass);
 =   ALTER TABLE public.cursos ALTER COLUMN idcurso DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    25463     cursosprofesores idcursoprofesor    DEFAULT     �   ALTER TABLE ONLY public.cursosprofesores ALTER COLUMN idcursoprofesor SET DEFAULT nextval('public.cursosprofesores_idcursoprofesor_seq'::regclass);
 O   ALTER TABLE public.cursosprofesores ALTER COLUMN idcursoprofesor DROP DEFAULT;
       public               postgres    false    236    233    236            �           2604    25464    cursosprofesores idcurso    DEFAULT     �   ALTER TABLE ONLY public.cursosprofesores ALTER COLUMN idcurso SET DEFAULT nextval('public.cursosprofesores_idcurso_seq'::regclass);
 G   ALTER TABLE public.cursosprofesores ALTER COLUMN idcurso DROP DEFAULT;
       public               postgres    false    236    234    236            �           2604    25465    cursosprofesores idprofesor    DEFAULT     �   ALTER TABLE ONLY public.cursosprofesores ALTER COLUMN idprofesor SET DEFAULT nextval('public.cursosprofesores_idprofesor_seq'::regclass);
 J   ALTER TABLE public.cursosprofesores ALTER COLUMN idprofesor DROP DEFAULT;
       public               postgres    false    235    236    236            �           2604    25383    departamentos iddepartamento    DEFAULT     �   ALTER TABLE ONLY public.departamentos ALTER COLUMN iddepartamento SET DEFAULT nextval('public.departamentos_iddepartamento_seq'::regclass);
 K   ALTER TABLE public.departamentos ALTER COLUMN iddepartamento DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    25374    estudiantes idestudiante    DEFAULT     �   ALTER TABLE ONLY public.estudiantes ALTER COLUMN idestudiante SET DEFAULT nextval('public.estudiantes_idestudiante_seq'::regclass);
 G   ALTER TABLE public.estudiantes ALTER COLUMN idestudiante DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    25442    horarios idhorario    DEFAULT     x   ALTER TABLE ONLY public.horarios ALTER COLUMN idhorario SET DEFAULT nextval('public.horarios_idhorario_seq'::regclass);
 A   ALTER TABLE public.horarios ALTER COLUMN idhorario DROP DEFAULT;
       public               postgres    false    229    232    232            �           2604    25443    horarios idcurso    DEFAULT     t   ALTER TABLE ONLY public.horarios ALTER COLUMN idcurso SET DEFAULT nextval('public.horarios_idcurso_seq'::regclass);
 ?   ALTER TABLE public.horarios ALTER COLUMN idcurso DROP DEFAULT;
       public               postgres    false    230    232    232            �           2604    25444    horarios idaula    DEFAULT     r   ALTER TABLE ONLY public.horarios ALTER COLUMN idaula SET DEFAULT nextval('public.horarios_idaula_seq'::regclass);
 >   ALTER TABLE public.horarios ALTER COLUMN idaula DROP DEFAULT;
       public               postgres    false    232    231    232            �           2604    25404    inscripciones idinscripcion    DEFAULT     �   ALTER TABLE ONLY public.inscripciones ALTER COLUMN idinscripcion SET DEFAULT nextval('public.inscripciones_idinscripcion_seq'::regclass);
 J   ALTER TABLE public.inscripciones ALTER COLUMN idinscripcion DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    25421    profesores idprofesor    DEFAULT     ~   ALTER TABLE ONLY public.profesores ALTER COLUMN idprofesor SET DEFAULT nextval('public.profesores_idprofesor_seq'::regclass);
 D   ALTER TABLE public.profesores ALTER COLUMN idprofesor DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    25493    programascursos idprogramacurso    DEFAULT     �   ALTER TABLE ONLY public.programascursos ALTER COLUMN idprogramacurso SET DEFAULT nextval('public.programascursos_idprogramacurso_seq'::regclass);
 N   ALTER TABLE public.programascursos ALTER COLUMN idprogramacurso DROP DEFAULT;
       public               postgres    false    239    242    242            �           2604    25494    programascursos idprograma    DEFAULT     �   ALTER TABLE ONLY public.programascursos ALTER COLUMN idprograma SET DEFAULT nextval('public.programascursos_idprograma_seq'::regclass);
 I   ALTER TABLE public.programascursos ALTER COLUMN idprograma DROP DEFAULT;
       public               postgres    false    242    240    242            �           2604    25495    programascursos idcurso    DEFAULT     �   ALTER TABLE ONLY public.programascursos ALTER COLUMN idcurso SET DEFAULT nextval('public.programascursos_idcurso_seq'::regclass);
 F   ALTER TABLE public.programascursos ALTER COLUMN idcurso DROP DEFAULT;
       public               postgres    false    242    241    242            �           2604    25482    programasestudio idprograma    DEFAULT     �   ALTER TABLE ONLY public.programasestudio ALTER COLUMN idprograma SET DEFAULT nextval('public.programasestudio_idprograma_seq'::regclass);
 J   ALTER TABLE public.programasestudio ALTER COLUMN idprograma DROP DEFAULT;
       public               postgres    false    237    238    238            �          0    25430    aulas 
   TABLE DATA           I   COPY public.aulas (idaula, nombreaula, capacidad, ubicacion) FROM stdin;
    public               postgres    false    228   ��       }          0    25387    cursos 
   TABLE DATA           g   COPY public.cursos (idcurso, nombrecurso, descripcion, creditos, semestre, iddepartamento) FROM stdin;
    public               postgres    false    222   ȅ       �          0    25460    cursosprofesores 
   TABLE DATA           P   COPY public.cursosprofesores (idcursoprofesor, idcurso, idprofesor) FROM stdin;
    public               postgres    false    236   �       {          0    25380    departamentos 
   TABLE DATA           U   COPY public.departamentos (iddepartamento, nombredepartamento, edificio) FROM stdin;
    public               postgres    false    220   �       y          0    25371    estudiantes 
   TABLE DATA           p   COPY public.estudiantes (idestudiante, nombre, apellido, fechanacimiento, direccion, ciudad, email) FROM stdin;
    public               postgres    false    218   �       �          0    25439    horarios 
   TABLE DATA           j   COPY public.horarios (idhorario, idcurso, idaula, fechainicio, fechafin, horainicio, horafin) FROM stdin;
    public               postgres    false    232   <�                 0    25401    inscripciones 
   TABLE DATA           m   COPY public.inscripciones (idinscripcion, idestudiante, idcurso, fechainscripcion, calificacion) FROM stdin;
    public               postgres    false    224   Y�       �          0    25418 
   profesores 
   TABLE DATA           Z   COPY public.profesores (idprofesor, nombre, apellido, titulo, iddepartamento) FROM stdin;
    public               postgres    false    226   v�       �          0    25490    programascursos 
   TABLE DATA           O   COPY public.programascursos (idprogramacurso, idprograma, idcurso) FROM stdin;
    public               postgres    false    242   ��       �          0    25479    programasestudio 
   TABLE DATA           [   COPY public.programasestudio (idprograma, nombreprograma, descripcionprograma) FROM stdin;
    public               postgres    false    238   ��       �           0    0    aulas_idaula_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.aulas_idaula_seq', 1, false);
          public               postgres    false    227            �           0    0    cursos_idcurso_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cursos_idcurso_seq', 1, false);
          public               postgres    false    221            �           0    0    cursosprofesores_idcurso_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cursosprofesores_idcurso_seq', 1, false);
          public               postgres    false    234            �           0    0 $   cursosprofesores_idcursoprofesor_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.cursosprofesores_idcursoprofesor_seq', 1, false);
          public               postgres    false    233            �           0    0    cursosprofesores_idprofesor_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.cursosprofesores_idprofesor_seq', 1, false);
          public               postgres    false    235            �           0    0     departamentos_iddepartamento_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.departamentos_iddepartamento_seq', 1, false);
          public               postgres    false    219            �           0    0    estudiantes_idestudiante_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.estudiantes_idestudiante_seq', 1, false);
          public               postgres    false    217            �           0    0    horarios_idaula_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.horarios_idaula_seq', 1, false);
          public               postgres    false    231            �           0    0    horarios_idcurso_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.horarios_idcurso_seq', 1, false);
          public               postgres    false    230            �           0    0    horarios_idhorario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.horarios_idhorario_seq', 1, false);
          public               postgres    false    229            �           0    0    inscripciones_idinscripcion_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.inscripciones_idinscripcion_seq', 1, false);
          public               postgres    false    223            �           0    0    profesores_idprofesor_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.profesores_idprofesor_seq', 1, false);
          public               postgres    false    225            �           0    0    programascursos_idcurso_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.programascursos_idcurso_seq', 1, false);
          public               postgres    false    241            �           0    0    programascursos_idprograma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.programascursos_idprograma_seq', 1, false);
          public               postgres    false    240            �           0    0 #   programascursos_idprogramacurso_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.programascursos_idprogramacurso_seq', 1, false);
          public               postgres    false    239            �           0    0    programasestudio_idprograma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.programasestudio_idprograma_seq', 1, false);
          public               postgres    false    237            �           2606    25435    aulas aulas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.aulas
    ADD CONSTRAINT aulas_pkey PRIMARY KEY (idaula);
 :   ALTER TABLE ONLY public.aulas DROP CONSTRAINT aulas_pkey;
       public                 postgres    false    228            �           2606    25394    cursos cursos_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (idcurso);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public                 postgres    false    222            �           2606    25467 &   cursosprofesores cursosprofesores_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.cursosprofesores
    ADD CONSTRAINT cursosprofesores_pkey PRIMARY KEY (idcursoprofesor);
 P   ALTER TABLE ONLY public.cursosprofesores DROP CONSTRAINT cursosprofesores_pkey;
       public                 postgres    false    236            �           2606    25385     departamentos departamentos_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (iddepartamento);
 J   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT departamentos_pkey;
       public                 postgres    false    220            �           2606    25378    estudiantes estudiantes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (idestudiante);
 F   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiantes_pkey;
       public                 postgres    false    218            �           2606    25446    horarios horarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.horarios
    ADD CONSTRAINT horarios_pkey PRIMARY KEY (idhorario);
 @   ALTER TABLE ONLY public.horarios DROP CONSTRAINT horarios_pkey;
       public                 postgres    false    232            �           2606    25406     inscripciones inscripciones_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_pkey PRIMARY KEY (idinscripcion);
 J   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT inscripciones_pkey;
       public                 postgres    false    224            �           2606    25423    profesores profesores_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (idprofesor);
 D   ALTER TABLE ONLY public.profesores DROP CONSTRAINT profesores_pkey;
       public                 postgres    false    226            �           2606    25497 $   programascursos programascursos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.programascursos
    ADD CONSTRAINT programascursos_pkey PRIMARY KEY (idprogramacurso);
 N   ALTER TABLE ONLY public.programascursos DROP CONSTRAINT programascursos_pkey;
       public                 postgres    false    242            �           2606    25486 &   programasestudio programasestudio_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.programasestudio
    ADD CONSTRAINT programasestudio_pkey PRIMARY KEY (idprograma);
 P   ALTER TABLE ONLY public.programasestudio DROP CONSTRAINT programasestudio_pkey;
       public                 postgres    false    238            �           2606    25395 !   cursos cursos_iddepartamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_iddepartamento_fkey FOREIGN KEY (iddepartamento) REFERENCES public.departamentos(iddepartamento);
 K   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_iddepartamento_fkey;
       public               postgres    false    220    4812    222            �           2606    25468 .   cursosprofesores cursosprofesores_idcurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursosprofesores
    ADD CONSTRAINT cursosprofesores_idcurso_fkey FOREIGN KEY (idcurso) REFERENCES public.cursos(idcurso);
 X   ALTER TABLE ONLY public.cursosprofesores DROP CONSTRAINT cursosprofesores_idcurso_fkey;
       public               postgres    false    222    236    4814            �           2606    25473 1   cursosprofesores cursosprofesores_idprofesor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursosprofesores
    ADD CONSTRAINT cursosprofesores_idprofesor_fkey FOREIGN KEY (idprofesor) REFERENCES public.profesores(idprofesor);
 [   ALTER TABLE ONLY public.cursosprofesores DROP CONSTRAINT cursosprofesores_idprofesor_fkey;
       public               postgres    false    226    4818    236            �           2606    25452    horarios horarios_idaula_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.horarios
    ADD CONSTRAINT horarios_idaula_fkey FOREIGN KEY (idaula) REFERENCES public.aulas(idaula);
 G   ALTER TABLE ONLY public.horarios DROP CONSTRAINT horarios_idaula_fkey;
       public               postgres    false    228    232    4820            �           2606    25447    horarios horarios_idcurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.horarios
    ADD CONSTRAINT horarios_idcurso_fkey FOREIGN KEY (idcurso) REFERENCES public.cursos(idcurso);
 H   ALTER TABLE ONLY public.horarios DROP CONSTRAINT horarios_idcurso_fkey;
       public               postgres    false    232    222    4814            �           2606    25412 (   inscripciones inscripciones_idcurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_idcurso_fkey FOREIGN KEY (idcurso) REFERENCES public.cursos(idcurso);
 R   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT inscripciones_idcurso_fkey;
       public               postgres    false    222    224    4814            �           2606    25407 -   inscripciones inscripciones_idestudiante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_idestudiante_fkey FOREIGN KEY (idestudiante) REFERENCES public.estudiantes(idestudiante);
 W   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT inscripciones_idestudiante_fkey;
       public               postgres    false    4810    218    224            �           2606    25424 )   profesores profesores_iddepartamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_iddepartamento_fkey FOREIGN KEY (iddepartamento) REFERENCES public.departamentos(iddepartamento);
 S   ALTER TABLE ONLY public.profesores DROP CONSTRAINT profesores_iddepartamento_fkey;
       public               postgres    false    226    220    4812            �           2606    25503 ,   programascursos programascursos_idcurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.programascursos
    ADD CONSTRAINT programascursos_idcurso_fkey FOREIGN KEY (idcurso) REFERENCES public.cursos(idcurso);
 V   ALTER TABLE ONLY public.programascursos DROP CONSTRAINT programascursos_idcurso_fkey;
       public               postgres    false    242    4814    222            �           2606    25498 /   programascursos programascursos_idprograma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.programascursos
    ADD CONSTRAINT programascursos_idprograma_fkey FOREIGN KEY (idprograma) REFERENCES public.programasestudio(idprograma);
 Y   ALTER TABLE ONLY public.programascursos DROP CONSTRAINT programascursos_idprograma_fkey;
       public               postgres    false    238    4826    242            �      x������ � �      }      x������ � �      �      x������ � �      {      x������ � �      y      x������ � �      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     