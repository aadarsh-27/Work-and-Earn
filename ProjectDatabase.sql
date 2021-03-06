PGDMP     4                
    x         	   ProjectDB #   12.5 (Ubuntu 12.5-0ubuntu0.20.04.1) #   12.5 (Ubuntu 12.5-0ubuntu0.20.04.1) ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16566 	   ProjectDB    DATABASE     q   CREATE DATABASE "ProjectDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
    DROP DATABASE "ProjectDB";
                postgres    false            ?            1259    24961    account_emailaddress    TABLE     ?   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            ?            1259    24959    account_emailaddress_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    226            ?           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    225            ?            1259    24971    account_emailconfirmation    TABLE     ?   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            ?            1259    24969     account_emailconfirmation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    228            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    227            ?            1259    25090    accounts_contactinfo    TABLE     1  CREATE TABLE public.accounts_contactinfo (
    id integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Email" character varying(254) NOT NULL,
    "PhoneNumber" character varying(10) NOT NULL,
    "Website" character varying(50) NOT NULL,
    "TextMessage" character varying(400) NOT NULL
);
 (   DROP TABLE public.accounts_contactinfo;
       public         heap    postgres    false            ?            1259    25088    accounts_contactinfo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.accounts_contactinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.accounts_contactinfo_id_seq;
       public          postgres    false    240            ?           0    0    accounts_contactinfo_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.accounts_contactinfo_id_seq OWNED BY public.accounts_contactinfo.id;
          public          postgres    false    239            ?            1259    16749    accounts_userdata    TABLE     ?  CREATE TABLE public.accounts_userdata (
    id integer NOT NULL,
    user_firstname character varying(50) NOT NULL,
    user_lastname character varying(50) NOT NULL,
    user_email character varying(50) NOT NULL,
    user_contact character varying(10) NOT NULL,
    user_address character varying(150) NOT NULL,
    user_city character varying(15) NOT NULL,
    user_state character varying(15) NOT NULL,
    user_pincode character varying(6) NOT NULL,
    user_payment character varying(100) NOT NULL
);
 %   DROP TABLE public.accounts_userdata;
       public         heap    postgres    false            ?            1259    16747    accounts_userdata_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.accounts_userdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.accounts_userdata_id_seq;
       public          postgres    false    224            ?           0    0    accounts_userdata_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.accounts_userdata_id_seq OWNED BY public.accounts_userdata.id;
          public          postgres    false    223            ?            1259    16580    accounts_workerdata    TABLE     Q  CREATE TABLE public.accounts_workerdata (
    id integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    contact character varying(10) NOT NULL,
    address character varying(150) NOT NULL,
    city character varying(15) NOT NULL,
    pincode character varying(6) NOT NULL,
    category character varying(100) NOT NULL,
    myfile character varying(100) NOT NULL,
    is_reserved boolean NOT NULL,
    rating integer NOT NULL,
    usercount integer NOT NULL,
    avg_rating integer NOT NULL
);
 '   DROP TABLE public.accounts_workerdata;
       public         heap    postgres    false            ?            1259    16578    accounts_workerdata_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.accounts_workerdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.accounts_workerdata_id_seq;
       public          postgres    false    205            ?           0    0    accounts_workerdata_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.accounts_workerdata_id_seq OWNED BY public.accounts_workerdata.id;
          public          postgres    false    204            ?            1259    16609 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16607    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    211            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    210            ?            1259    16619    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16617    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    213            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    212            ?            1259    16601    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16599    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    209            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    208            ?            1259    16627 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    16637    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    16635    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    217            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    216            ?            1259    16625    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    215            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    214            ?            1259    16645    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    16643 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    219            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    218            ?            1259    16705    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16703    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    221            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    220            ?            1259    16591    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16589    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    207            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    206            ?            1259    16569    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16567    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            ?            1259    16736    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    24998    django_site    TABLE     ?   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            ?            1259    24996    django_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    230            ?           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    229            ?            1259    25009    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    postgres    false            ?            1259    25007 "   socialaccount_socialaccount_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          postgres    false    232            ?           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          postgres    false    231            ?            1259    25020    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    postgres    false            ?            1259    25018    socialaccount_socialapp_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          postgres    false    234            ?           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          postgres    false    233            ?            1259    25028    socialaccount_socialapp_sites    TABLE     ?   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    postgres    false            ?            1259    25026 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          postgres    false    236            ?           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          postgres    false    235            ?            1259    25036    socialaccount_socialtoken    TABLE     ?   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    postgres    false            ?            1259    25034     socialaccount_socialtoken_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          postgres    false    238            ?           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          postgres    false    237            ?           2604    24964    account_emailaddress id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            ?           2604    24974    account_emailconfirmation id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            ?           2604    25093    accounts_contactinfo id    DEFAULT     ?   ALTER TABLE ONLY public.accounts_contactinfo ALTER COLUMN id SET DEFAULT nextval('public.accounts_contactinfo_id_seq'::regclass);
 F   ALTER TABLE public.accounts_contactinfo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            ?           2604    16752    accounts_userdata id    DEFAULT     |   ALTER TABLE ONLY public.accounts_userdata ALTER COLUMN id SET DEFAULT nextval('public.accounts_userdata_id_seq'::regclass);
 C   ALTER TABLE public.accounts_userdata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    16583    accounts_workerdata id    DEFAULT     ?   ALTER TABLE ONLY public.accounts_workerdata ALTER COLUMN id SET DEFAULT nextval('public.accounts_workerdata_id_seq'::regclass);
 E   ALTER TABLE public.accounts_workerdata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            ?           2604    16612    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ?           2604    16622    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            ?           2604    16604    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            ?           2604    16630    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    16640    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    16648    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    16708    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ?           2604    16594    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?           2604    16572    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            ?           2604    25001    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    25012    socialaccount_socialaccount id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    25023    socialaccount_socialapp id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            ?           2604    25031     socialaccount_socialapp_sites id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            ?           2604    25039    socialaccount_socialtoken id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            ?          0    24961    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    226   e      ?          0    24971    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    228   ?      ?          0    25090    accounts_contactinfo 
   TABLE DATA           l   COPY public.accounts_contactinfo (id, "Name", "Email", "PhoneNumber", "Website", "TextMessage") FROM stdin;
    public          postgres    false    240   ?      ?          0    16749    accounts_userdata 
   TABLE DATA           ?   COPY public.accounts_userdata (id, user_firstname, user_lastname, user_email, user_contact, user_address, user_city, user_state, user_pincode, user_payment) FROM stdin;
    public          postgres    false    224   ?	      ?          0    16580    accounts_workerdata 
   TABLE DATA           ?   COPY public.accounts_workerdata (id, firstname, lastname, email, contact, address, city, pincode, category, myfile, is_reserved, rating, usercount, avg_rating) FROM stdin;
    public          postgres    false    205   6      ?          0    16609 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    211         ?          0    16619    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    213   -      ?          0    16601    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    209   J      ?          0    16627 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    215   ?      ?          0    16637    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    217   ?      ?          0    16645    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    219         ?          0    16705    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    221   )      ?          0    16591    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    207   F      ?          0    16569    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203         ?          0    16736    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    222   U      ?          0    24998    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    230   U+      ?          0    25009    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    232   ?+      ?          0    25020    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    234   [-      ?          0    25028    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    236   ?-      ?          0    25036    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    238   .      ?           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 6, true);
          public          postgres    false    225            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    227            ?           0    0    accounts_contactinfo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.accounts_contactinfo_id_seq', 82, true);
          public          postgres    false    239            ?           0    0    accounts_userdata_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.accounts_userdata_id_seq', 105, true);
          public          postgres    false    223            ?           0    0    accounts_workerdata_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.accounts_workerdata_id_seq', 95, true);
          public          postgres    false    204            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    210            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    212            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    208            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    216            ?           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 54, true);
          public          postgres    false    214            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    218            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
          public          postgres    false    220            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    206            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);
          public          postgres    false    202            ?           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 3, true);
          public          postgres    false    229            ?           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 9, true);
          public          postgres    false    231            ?           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 3, true);
          public          postgres    false    233            ?           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 4, true);
          public          postgres    false    235            ?           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 9, true);
          public          postgres    false    237            ?           2606    24994 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    226            ?           2606    24966 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    226            ?           2606    24978 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    228            ?           2606    24976 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    228            ?           2606    25098 .   accounts_contactinfo accounts_contactinfo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.accounts_contactinfo
    ADD CONSTRAINT accounts_contactinfo_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.accounts_contactinfo DROP CONSTRAINT accounts_contactinfo_pkey;
       public            postgres    false    240            ?           2606    16754 (   accounts_userdata accounts_userdata_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.accounts_userdata
    ADD CONSTRAINT accounts_userdata_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.accounts_userdata DROP CONSTRAINT accounts_userdata_pkey;
       public            postgres    false    224            ?           2606    16588 ,   accounts_workerdata accounts_workerdata_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.accounts_workerdata
    ADD CONSTRAINT accounts_workerdata_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.accounts_workerdata DROP CONSTRAINT accounts_workerdata_pkey;
       public            postgres    false    205            ?           2606    16734    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    211            ?           2606    16661 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    213    213            ?           2606    16624 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    213            ?           2606    16614    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    211            ?           2606    16652 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    209    209            ?           2606    16606 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    209            ?           2606    16642 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    217            ?           2606    16676 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    217    217            ?           2606    16632    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    215            ?           2606    16650 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    219            ?           2606    16690 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    219    219            ?           2606    16728     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    215            ?           2606    16714 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    221            ?           2606    16598 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    207    207            ?           2606    16596 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    207            ?           2606    16577 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            ?           2606    16743 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    222            ?           2606    25005 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    230            ?           2606    25003    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    230            ?           2606    25017 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            postgres    false    232            ?           2606    25048 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            postgres    false    232    232            ?           2606    25056 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            postgres    false    236    236            ?           2606    25025 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            postgres    false    234            ?           2606    25033 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            postgres    false    236            ?           2606    25046 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            postgres    false    238    238            ?           2606    25044 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            postgres    false    238            ?           1259    24995 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    226            ?           1259    24985 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    226            ?           1259    24992 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     ?   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    228            ?           1259    24991 +   account_emailconfirmation_key_f43612bd_like    INDEX     ?   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    228            ?           1259    16735    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    211            ?           1259    16672 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    213            ?           1259    16673 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    213            ?           1259    16658 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    209            ?           1259    16688 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    217            ?           1259    16687 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    217            ?           1259    16702 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    219            ?           1259    16701 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    219            ?           1259    16729     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    215            ?           1259    16725 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    221            ?           1259    16726 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    221            ?           1259    16745 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    222            ?           1259    16744 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    222            ?           1259    25006     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    230            ?           1259    25054 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            postgres    false    232            ?           1259    25068 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            postgres    false    236            ?           1259    25067 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     ?   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            postgres    false    236            ?           1259    25079 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            postgres    false    238            ?           1259    25080 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            postgres    false    238            ?           2606    24979 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public          postgres    false    2996    226    215            ?           2606    24986 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    228    226    3026            ?           2606    16667 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2983    213    209            ?           2606    16662 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    213    2988    211            ?           2606    16653 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2978    209    207            ?           2606    16682 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2988    211    217            ?           2606    16677 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    217    215    2996            ?           2606    16696 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2983    219    209            ?           2606    16691 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2996    219    215            ?           2606    16715 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2978    221    207            ?           2606    16720 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2996    215    221                       2606    25069 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          postgres    false    3040    232    238                       2606    25074 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          postgres    false    234    238    3045                       2606    25062 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          postgres    false    230    3038    236                        2606    25057 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          postgres    false    3045    234    236            ?           2606    25049 X   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id;
       public          postgres    false    232    2996    215            ?   :   x?3?L?.)J?J52wH?M???K???,Bc.3???????Ģ<34iS?=... ?O      ?      x?????? ? ?      ?     x????O?0????0;J?8?vBkS;?5N???|z? ??*!?|w??{???(?p??'o?y????r?????{?69?=???KƲ???<NVR???a?Z??RMgCg?^???T???D? ?C???*?EY5?8??????k^?Eβt?q?jԚT?*?*b???7????H?JmtkZ???1?Mo?a???9Y???i?/W?????cP??{kr???O??[?2ge?kv?1ne??Qb@?,?Z???[$?[)iB?'>??[      ?   <  x?͒?n?0Eד??Dq^?]i???h?vU??)6????q?J???@m?X???k?>g?]$?*if????v??lQ7?Ҷ0?y?'I?%?:Ƴ4?'???,հ*U??4?ȯ?)?l?T6z#?????g0A??̝???D?oV2?ä-a??`?
7h??Z7B?|???$X?B?Ȏ҈?(0ȽYS?????}
?>?<>"???u?Є??i?̑:]Ë?QH?w?v???I3??B/?J;?;U?? h?????VWu?m4>?9_?ŵ?????????g??P??Pa<ʳ𷈰???yq??/?܂Dz??%?? ~ q???      ?   ?  x??T?n?@}????????~+??&??@??T??l|?z??|}?6$!?R+?~?gd??9?,~ +??aZd??????P?vTd?Á?:?????.?/???	pF?T??2+?t>???C.?ߌ??Axk????7?C??{`??Lv? q??#?`?`?U???5w?i??_`o?h?QY??nd(?s??M(l?ڎs? _9?\?w???	jx?ʇ?xoXH?F??Z?1q???h-??e??_R?"???p??7?{??N???Q	,?c	I[????Sz1?ba??;???h?? sQWEG	Ɔ??q7??$N/.?yD???CoQ?w??FH??|?q??F?U?Yy??_sl??Q?%Jn?wh????"u??D???mpq:BSbM?O1M??q]6??zM.?;Y?0?&?_o[Y%D????k????:?D?}b4>Hq??f?9a[??sk}??;?K???{w?&?q??yx5?Tչ?/ӗ?F?2??`?v:G??&_?h?'??q???Ɣ?-????c?²?hL+4?c?%ݵ???Ϗ???pa??N(?qG?|?q?WFבQ??$}Ų??v???y?Q?&?i?aH;? \=M??r??^*F??j3?7?n
?Vc????y???]?n?ng?I8?Ѵ٤?hVAT??㮲)???\bf?Ә?	Yc'{?nV?g????{??oh>Ą      ?      x?????? ? ?      ?      x?????? ? ?      ?   q  x?}?Mn?0???)|?"?_??\???pԌ??6lg?޾E??TdgQ߃ދ?Ȩ??T??kq?o????[u??kX???_?ݬ?|??
????]??D`???~	?j??Ů?q??yR%X??n?9?;ƞ????A?^Ȣ ?#???????EU`??9qsa}!b????DJ? p??Ut????j0?>???????{???#??{???q????x?0O?qk???XՀ,??6n$?ѐ?;?+?????Lh?+X]o??j?q?K??Ġψ?n'?E??:A?*"??_??i?????:?+_q]?^?(????vI?GN?~?,X?d'??c??t?T???ƺϓ&??@?6?d)[1p?=EӰ??U????SWbp7\* b?	 ???	?4?яw??7????Xӕ??GWR"f"??O!??Xdp.q?$8??c\??????7t]?YR%$?U?*?hR\??R)??B??m???a?a~N?2???U,?Z^?M$Eb?rQh,)bc?K|?IA?%Y??8?/P?4ˢ??oI?B?q"?[)?i??̓H	O?Ջ$?>?CU?<P?M?:)E.7???X?Cq?*!IYN?w??b?>fe??<j??????4{9? {9??=?A?&O'?????7???{?      ?     x?}?Yo?H???_?-Y?b5???Bi?'????F?Yl?W???I?t:?\,s??p?\(?m???????DT?#? ???[??ЫG????:??	{h?'|{~?׊?Z????X???!???C ?_?B???
#?Z T? ?????r9?T?H??0?+?koV?f+?/??L?j????U????ꉢ??????Y&???????J?rԪ?????X?`?V?@ܽOg?ԞvG-?9?A/4?`?F???>?GʅK???P?UT?%??;'?|V{??Z?-???Q?y=?<й.:???.?bP?ٕ???@'qw?;`ْ@?(Q ????W~쾡?ٿ_@????&UQ(? '????.Xt????rL??P_?W??Q?[???U?<=?,????[?e?f[??]u???P??W=ܬ?4Oϊ?Y???F???? m?5J5??????????9?i??????1?W?hŦ??ccM???R'?=Xj???eo???%??0ș???\U???뵛V@?????V?@@?????u?*V??J???Ǽ???5d鞓???C??u??=??N??D??hTg7a1??F???!À}?ǹ?f???l?d?:?s|?L~ ?a?*?? r?/??kft??w?V??~y???炵ǭz?[G?NI??????Yf`?S?=??D?O????8}???c.n???Ld?T?2T??V?H?P?.????c???? ?G???> ??iصj?L
?J??v?u????,Tʇ?92?????p ?+?P??/%???mfE?I7???쩑U??@zaǹ???Q?;???<?i??Y?m??f?uOKL???tN?n?Gڊr?
bF(?be1??g?????R&9/??_??l?1?F?*.l?F??kN??????x??G3?m^z??G?uk)??P?1?&??d????
?!?pJ!???ҏ?:?????{UY?av?(?|??`?ue?v?݂??^K?CɋErtW??Iv??T.?V?Ŏ,?m?r????E???(??G??]g????bQ	 ?5?L???VG?????v?;3f?B?)?E?4?9?H_?X?hE{???vN`?T?31R???v}? ]??p???"#=?
???@Q??L?????j??}5??`?Y?w?Gu1??mfn?Xp?S?U??"	j??"c?!????G????&~;+qz;???ס?Ńdv׮?g???q?z]???dm?8x?t??RV?z?\???a?i%??w???t?̈D ???>]k???G?X????8??g??g?* ?l?????????t      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?mOI?0<ۏ??.??
?F@?F?o !Z??噱glԌ>????f,?&}Cti?"???%?"V??%??rм?st????m??Y?SP??ޥ???q????=A?få????F?5Mʎh????[?F?%? l=??BS??1??N%??e???v?????2?.????s?      ?   @  x???͒?0??ާ?=?????%U*??uT?????}??aMb_|???Z-????? ??&??;?W?W?{,+e*0?6e?T%??v??B3????تR(??b????#?-H	??r????<R???df???????'?>]??{p<E?????AiM??E?(?t?0Ķqo???Ï6،MZI`hƙ;?(?4?p???sؤ?APv???&9_?s?Нc?O?Mw??͉?ڢ	T`?L+3M̴???p??~R??MF?$?$M?ש?˰핰%??bƨ%???0mE?5??v??Z?y(?4??k?]???nrp??$ZL9?[z?<л???m?_3????9????#?,???(3?n:??v?'?t??+??z?f?L?B?h3?Ե??9???\&?Ѝ?+?K?~|.Һ?UɊl~;?ruo?{ry%g¦?c???????
Bژ|LV?I?1xQ>K??VROE?B?2!\I???d?8J? eE?G(??F???
"?????w{?7??n?&p?P)1u1I ??GbRw?S???/(????
?F?|'?J????
2??RPH%?cJj1????@{&T??h?)y?WD?Du~???+YV???'!1̊Q.??_?0r?XIY????A??j?炙a??+2???1V$N?8[?e??????n??[9ݻ?ҿJ}A?P I???]???????F?d??[?z??&??&?????b׷??sK?ȞI?䙐?rrC?34?M?4?t?D??A???????zp?x6q?u?
'W?t#M*????????????;?b9Ub>q???(W????m(A?/// ?"?8      ?      x?՚Y??ڗş??S???;k?h}?ED?Tb??????????sS???L4Q~?9?sQ?)FNU?t??t?,0??s?%KuC?'X??Ů?˚?v}? Ot??=????>???I??u??*q?L?Xxr????1??K??H?T???ơw??|W*A'e?`???b? .???j{?9cn????x??M???X??by???r8?D?tD??????????A????ۣ?>(@B?? ???++??)???C??B?̛?K????F???#?g32uJY???1/C?꯺M?։^y?s?\?????@ك?<???*F?S???tUs$??S#????y?ˀI??O?$%???#E??????PދG??X?G?Zd??+??3zH??H?tDW??6???/>=4?C?L??2??;B?Vy?4s?<~???\Z]?r,d?A?7???c??	??B?usն?7?L?????bsђSJ??Ry?????	6s?k?GFN>?????7av?M??lЦY?????????{???H?!?OH??F?z*?&bL??Y@????mQ??BrO?~?0?`???Ԟ?kp????s҈0?E?@?w?_???!jO?@P8?B??*ڶ??%\??aԆL8aݼt?????{?g#{?1?R?p@??[??d????????{?H؞ ?? A???"?E?y	?????Џ?????`$?7??*s/&????i?????????ZK??+?<?pK?? ???W??C?'?M?>h?????p4c???)g??}???h??6? ?V?!a???#?)?ĜD>a(R?Ds?(????	J?b??? a?? ??d0??n?vIY3u??M??h"??e?xnro?矐?N?V??;?׏4?OjG6U?Ym?1???܀&??|z???&?<T?+??q?2??N%e?i??sMT\N?x*????gD!???e +???>??pc?%?2??4mw;%??9?%?,??唋?????????F???fﶆ?:??˳?htRi9?aD?*h?آ?%{??R???@?oH?!?\?		꫒??????????-qЖ?C+I?8???a??9??B????Rb??&-?]' oT????^?z3'??D?(%z?@b??? ADC??¹qQ]aE;??KT?@!P??[?k{"????pD??????Q.?ض?q?:??????????6???=?> ER?R?:?i}?]J?E=PK??u???[??[B????E????A??3?8??@?<0։??Rb7Y?Z6?/H?G%?=?o?(?Ɉ	G?	??J?!h??`????n?????[2:>?K#iV??i??W+Tv,c???[_?i??????	1̤1??=??p# ???,??%u??????2???G????4?}Q??3?Ċm?!y?5???JQr6??w?b?eJ???ڞ >0  ??IM7;t??A?de??J?"땪,??/H??BR?!??[QF^9?)\??ZHji??̔?aU??_??>?????=??G?l??,?5??*?,ЇE?b??/?	n?nU???????8E?E?:????u?????"8???1(?cσ"RO????F5??p?츿?p?SM>+G?ꦝnҭz???F)??/?!SJ:????K6Y??#1????$F??6Y*S???i?w?-	S??I?p?o?]}?X,T??г;??n?5ިϞV?4(??vLm[=?c/?SG???aΣ[:&N????;N?5??v䟔?hG?????`?;??U?ޅ???????ݯ?V???u|?WF???a?N?~2??/?g)?n?v??V uR?(#?G?y?xS??IZ?c???L?c???(%j????(?_???s&u?v"J<?4k???VC?x????4]3[?G?t??+???#??Nw?,F8?*T<V-mR?????B?^???\S?C??6̏????A?3?h @?@zEx?*Gb?$??p??;????}??̣S??d?<Hޞ??y?N???OI??? ?????o?????	??'?? ??X[?^??GuO=?KH?e߮?Y?????Pp??eܫ??r???R???~?????]C??w??????Aa?^7?5~5;YH,?????b????F??|2B??0eѝnJ??|??X?CJ@A??UO>???????5??U?1P?<????K#??jH?\?t???ܤ??K8??:O։{?G?Z&??9e9??9?D???lhu?]yS?oe`?P???WL??!Y|N?????ShWBZ???s??r
??m?	~O????c>hHS?k??#Z[f K???3?*?9?>?z?7?&??>???1V?Y7n?{???Ma??????E<?q?>:?????A?Y?G?.Q?ƿU??n?>Enü????7U?? sb????f?=:	7?$?[)xQ?$BĺTd?'???@?;}??X??2R?4H?	??A????q?nb??+?*?}|J?????ܰm?o?U?W??$EqZwe86?:0	So??{i?%	X???R????H?g??fy?ʪ??~??u??.6L^???$$AT7d??X??m???G?ư;v?????w??'???W????_?@?f?Q??Zv??T???<???)%ut0Dގ&Q?\̅??4
?+&??8?2?Kj{E?=??T????1s??4??#?̳vo	עOH???wow
Z?#YAg??????ꄚ?W???d?ڌo%???n?{?ڍ?h|??p0?N:?ڧA_6~Cwn7&?p??7l7??ҽlO?4?.?6Kh??9?v???+%0w$???!??ί_???v#?=?E|3?a??)=d?Ş??BmU1*??#?c}?????R??k???????|z(???J?=??{??$l?? ?{???J8-n?̠^ɬ?3?	??&j?2????
?y7????b?TD?????_<9?? \Kٽ??I/???Z~[*?ۙ?+d
?!I?Jjv==^??D?X-Z?EԌ???d?
??dK<#Ѡ1?d???ڳ!??KV-???n??C?oʛ????#??J?-?????_???/?hWze?J)1??????k????	?H}???XUE%
f2HF???6w?-?l??Ւ+E?~眑hG91S?/Ƣ]5?ڥ???9b????r?N?????b8??Y ??j?/? ????;mG3??????t??w/W?ɷ??o?i???O?????p??j?Ԙ??\??頼!nkD?w-?c?́??V?k?$E2k??Ƀ??O,A?qYT?????t?E?2?j`zn+ٱ@W=?Tφ???݉sP/?Ev?0?nlT?f???g|?ĒB?RYOIk"?oL{?5?!j4j?ꞝ????8:MY?}NE?,?A?^^2?hz͈?v?>?Kq1??c;??z.???n?;??dtSn?e?????Vb?g???N]Ԡ&???L?z???????????Ci}˄}ĳw?L?????v9?jF?ӓC?eTy?@?hjY҅????݌??<y?@?,?tg?1߇?͌?ZaG????p??g????i???e	.?u?܌???Q"?+?N???SB?_??&??h~?=?早Lv??F??4?K?{c?VQ??k?~^a?:????S?y??z.?/?e8??HD	{??P"?i????8??͜???8~R?o?,z???	?Ʉ)??W?3zwǣ0?=I?{???b??Ҽ??iz{Î#a_?SD?? !??V??O?¸?vȥ/?H?	O??%???>֑?j]|?*?ۛcވ|????u??O???1??%P 0׾??Rw?????dg?5?qr*??=H?ܮ~x/L?p5?_?`?G[w3??$~R?
???1G?X??>sB??aZ?1??4?@????ۿ????n󼓥*?~?&??~A?RV?|??hZ?ӱ?????n????DpCNN??&???
2????%h?/?hSF???+???pr????Q?|&J????gF??(?#9k???9^?????-Ƥ??-????ZO????E???G????\?2?97?????8?ǧa ??d?8(??![?e_>:Xw?^? K???
????K?6 ?   ??e?,?I??ԧH&!?????t,??????8~?Vrg??E????~M?7d>???8M?,&?	??)?x??T??:??TN?÷?ty?{??5???&????bg??I?7?????<ފ???????????Q?A?O?DCW?Y?` _?|???`?pL???
?M?%?H??{??a3?n?>???u?U??n]???y?yR0E????Xџ???-_{????믿???8?      ?   F   x?3???ON???/.??000??/?VH?KQpM,??2??())???742?3 BC??r?*??T??=... @W      ?   ?  x???[o?0???_??H?sl_?AY??Z?B???M???넍i???ck?U?Y???çO~?(????#8(?X0
??#?G ?C??B*)?o?dX?Tb?D.AIp@a<?????']??|????2΋!??X_j?M)H?r?;m?u?W???5???*.?P??w?坉?롐杮??????2/???B?'?5;9????0,2?}L??&?+?+;l??8U????EI?????Bu??m?b?[!??/?f'?? ?,?/???4?
?'a?ն.?tأ???ح?+??Ļ??= 1??!("J0?B?E@.?@D<?z@?JA$?3@G????6?JǦ?e?.??+w?7???yG ݧ_?Zlg?_?l?/8??['?]]?Xm&dn???N&?{?????P???????      ?   ?   x?%??
?  ?g???@":S#b??"S??򮫋>???I?a??N?O?:xL?????*?78f,o?4<l?$?J??Ea꧑?/Kf?g?{H%??zx????Z?u???u㺿?NO?????'F      ?      x?3?4?4?????? 	_      ?   p  x?E??n?@ ?k|??o4?Ù?AΈd??? E*O?&m??|2?J??[<?Zfu???????J ?}??F|??gOi??o??S?????D?{?bࠦ?7=??%QP?XW?zؾ???^???v??{???F
????`:~;????[|?
???Zc?s???0?(?"O??cz5Ča X???7VTY?? r r@P9`d?[(?????yjx?$Z????l= )k??~?O_??ýs!??Ƃ˺Е???????D??@?.=U0??O??UNM5?uߥ?L?5???H@̎K<????i??{?CB????a2ѫT?mŨ??`??)??J??kH~C?
?
??YR?ߚ?]??Z,_ߡ?]     