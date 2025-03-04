PGDMP     	                    {            Roger    15.1    15.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16694    Roger    DATABASE     �   CREATE DATABASE "Roger" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Roger";
                postgres    false                        3079    16695 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false            �           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    2            �            1259    16818 
   attributes    TABLE     a   CREATE TABLE public.attributes (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.attributes;
       public         heap    postgres    false            �            1259    16817    attributes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.attributes_id_seq;
       public          postgres    false    232            �           0    0    attributes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.attributes_id_seq OWNED BY public.attributes.id;
          public          postgres    false    231            �            1259    16880    chat_details    TABLE     �   CREATE TABLE public.chat_details (
    id integer NOT NULL,
    sender_id integer,
    reciever_id integer,
    details text NOT NULL,
    status character varying
);
     DROP TABLE public.chat_details;
       public         heap    postgres    false            �            1259    16879    chat_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.chat_details_id_seq;
       public          postgres    false    240            �           0    0    chat_details_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.chat_details_id_seq OWNED BY public.chat_details.id;
          public          postgres    false    239            �            1259    16909    compare_packages    TABLE     o   CREATE TABLE public.compare_packages (
    id integer NOT NULL,
    user_id integer,
    package_id integer
);
 $   DROP TABLE public.compare_packages;
       public         heap    postgres    false            �            1259    16908    compare_packages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compare_packages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.compare_packages_id_seq;
       public          postgres    false    244            �           0    0    compare_packages_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.compare_packages_id_seq OWNED BY public.compare_packages.id;
          public          postgres    false    243            �            1259    16900    custom_pages    TABLE     �   CREATE TABLE public.custom_pages (
    id integer NOT NULL,
    title text NOT NULL,
    details text NOT NULL,
    status character varying
);
     DROP TABLE public.custom_pages;
       public         heap    postgres    false            �            1259    16899    custom_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.custom_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.custom_pages_id_seq;
       public          postgres    false    242            �           0    0    custom_pages_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.custom_pages_id_seq OWNED BY public.custom_pages.id;
          public          postgres    false    241            �            1259    16785    menues    TABLE     �   CREATE TABLE public.menues (
    id integer NOT NULL,
    name character varying NOT NULL,
    href character varying NOT NULL,
    slug character varying NOT NULL,
    parent_id integer
);
    DROP TABLE public.menues;
       public         heap    postgres    false            �            1259    16784    menues_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.menues_id_seq;
       public          postgres    false    228            �           0    0    menues_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.menues_id_seq OWNED BY public.menues.id;
          public          postgres    false    227            �            1259    16846    package_attribute    TABLE     �   CREATE TABLE public.package_attribute (
    id integer NOT NULL,
    package_id integer,
    attribute_id integer,
    des_pkg character varying(20) NOT NULL
);
 %   DROP TABLE public.package_attribute;
       public         heap    postgres    false            �            1259    16845    package_attribute_id_seq    SEQUENCE     �   CREATE SEQUENCE public.package_attribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.package_attribute_id_seq;
       public          postgres    false    236            �           0    0    package_attribute_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.package_attribute_id_seq OWNED BY public.package_attribute.id;
          public          postgres    false    235            �            1259    16827    packages    TABLE     �   CREATE TABLE public.packages (
    id integer NOT NULL,
    added_by integer,
    added_for integer,
    title text NOT NULL,
    details text NOT NULL,
    price character varying(20) NOT NULL
);
    DROP TABLE public.packages;
       public         heap    postgres    false            �            1259    16826    packages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.packages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.packages_id_seq;
       public          postgres    false    234            �           0    0    packages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.packages_id_seq OWNED BY public.packages.id;
          public          postgres    false    233            �            1259    16742 
   permission    TABLE     b   CREATE TABLE public.permission (
    id integer NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public.permission;
       public         heap    postgres    false            �            1259    16741    permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.permission_id_seq;
       public          postgres    false    222            �           0    0    permission_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.permission_id_seq OWNED BY public.permission.id;
          public          postgres    false    221            �            1259    16799 	   rolemenue    TABLE     �   CREATE TABLE public.rolemenue (
    id integer NOT NULL,
    role_name character varying NOT NULL,
    role_id integer NOT NULL,
    menue_id integer NOT NULL
);
    DROP TABLE public.rolemenue;
       public         heap    postgres    false            �            1259    16798    rolemenue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rolemenue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.rolemenue_id_seq;
       public          postgres    false    230            �           0    0    rolemenue_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.rolemenue_id_seq OWNED BY public.rolemenue.id;
          public          postgres    false    229            �            1259    16751    rolepermission    TABLE     p   CREATE TABLE public.rolepermission (
    id integer NOT NULL,
    role_id integer,
    permission_id integer
);
 "   DROP TABLE public.rolepermission;
       public         heap    postgres    false            �            1259    16750    rolepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rolepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rolepermission_id_seq;
       public          postgres    false    224            �           0    0    rolepermission_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rolepermission_id_seq OWNED BY public.rolepermission.id;
          public          postgres    false    223            �            1259    16733    roles    TABLE     ]   CREATE TABLE public.roles (
    id integer NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16732    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    220            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    219            �            1259    16768    roleuser    TABLE     d   CREATE TABLE public.roleuser (
    id integer NOT NULL,
    role_id integer,
    user_id integer
);
    DROP TABLE public.roleuser;
       public         heap    postgres    false            �            1259    16767    roleuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roleuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.roleuser_id_seq;
       public          postgres    false    226            �           0    0    roleuser_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.roleuser_id_seq OWNED BY public.roleuser.id;
          public          postgres    false    225            �            1259    16707    users    TABLE     #  CREATE TABLE public.users (
    id integer NOT NULL,
    _id uuid DEFAULT public.uuid_generate_v4(),
    firstname text,
    lastname text,
    email text NOT NULL,
    password character varying NOT NULL,
    businessname text NOT NULL,
    email_varified_at timestamp without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false    2            �            1259    16863    users_chats    TABLE     m   CREATE TABLE public.users_chats (
    id integer NOT NULL,
    sender_id integer,
    reciever_id integer
);
    DROP TABLE public.users_chats;
       public         heap    postgres    false            �            1259    16862    users_chats_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_chats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_chats_id_seq;
       public          postgres    false    238            �           0    0    users_chats_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_chats_id_seq OWNED BY public.users_chats.id;
          public          postgres    false    237            �            1259    16706    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            �            1259    16719    users_varify_token    TABLE     r   CREATE TABLE public.users_varify_token (
    id integer NOT NULL,
    user_id integer,
    token text NOT NULL
);
 &   DROP TABLE public.users_varify_token;
       public         heap    postgres    false            �            1259    16718    users_varify_token_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_varify_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.users_varify_token_id_seq;
       public          postgres    false    218            �           0    0    users_varify_token_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.users_varify_token_id_seq OWNED BY public.users_varify_token.id;
          public          postgres    false    217            �           2604    16821    attributes id    DEFAULT     n   ALTER TABLE ONLY public.attributes ALTER COLUMN id SET DEFAULT nextval('public.attributes_id_seq'::regclass);
 <   ALTER TABLE public.attributes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    16883    chat_details id    DEFAULT     r   ALTER TABLE ONLY public.chat_details ALTER COLUMN id SET DEFAULT nextval('public.chat_details_id_seq'::regclass);
 >   ALTER TABLE public.chat_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    16912    compare_packages id    DEFAULT     z   ALTER TABLE ONLY public.compare_packages ALTER COLUMN id SET DEFAULT nextval('public.compare_packages_id_seq'::regclass);
 B   ALTER TABLE public.compare_packages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            �           2604    16903    custom_pages id    DEFAULT     r   ALTER TABLE ONLY public.custom_pages ALTER COLUMN id SET DEFAULT nextval('public.custom_pages_id_seq'::regclass);
 >   ALTER TABLE public.custom_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            �           2604    16788 	   menues id    DEFAULT     f   ALTER TABLE ONLY public.menues ALTER COLUMN id SET DEFAULT nextval('public.menues_id_seq'::regclass);
 8   ALTER TABLE public.menues ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16849    package_attribute id    DEFAULT     |   ALTER TABLE ONLY public.package_attribute ALTER COLUMN id SET DEFAULT nextval('public.package_attribute_id_seq'::regclass);
 C   ALTER TABLE public.package_attribute ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    16830    packages id    DEFAULT     j   ALTER TABLE ONLY public.packages ALTER COLUMN id SET DEFAULT nextval('public.packages_id_seq'::regclass);
 :   ALTER TABLE public.packages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    16745    permission id    DEFAULT     n   ALTER TABLE ONLY public.permission ALTER COLUMN id SET DEFAULT nextval('public.permission_id_seq'::regclass);
 <   ALTER TABLE public.permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16802    rolemenue id    DEFAULT     l   ALTER TABLE ONLY public.rolemenue ALTER COLUMN id SET DEFAULT nextval('public.rolemenue_id_seq'::regclass);
 ;   ALTER TABLE public.rolemenue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    16754    rolepermission id    DEFAULT     v   ALTER TABLE ONLY public.rolepermission ALTER COLUMN id SET DEFAULT nextval('public.rolepermission_id_seq'::regclass);
 @   ALTER TABLE public.rolepermission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16736    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16771    roleuser id    DEFAULT     j   ALTER TABLE ONLY public.roleuser ALTER COLUMN id SET DEFAULT nextval('public.roleuser_id_seq'::regclass);
 :   ALTER TABLE public.roleuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16710    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16866    users_chats id    DEFAULT     p   ALTER TABLE ONLY public.users_chats ALTER COLUMN id SET DEFAULT nextval('public.users_chats_id_seq'::regclass);
 =   ALTER TABLE public.users_chats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    16722    users_varify_token id    DEFAULT     ~   ALTER TABLE ONLY public.users_varify_token ALTER COLUMN id SET DEFAULT nextval('public.users_varify_token_id_seq'::regclass);
 D   ALTER TABLE public.users_varify_token ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16818 
   attributes 
   TABLE DATA           .   COPY public.attributes (id, name) FROM stdin;
    public          postgres    false    232   	�       �          0    16880    chat_details 
   TABLE DATA           S   COPY public.chat_details (id, sender_id, reciever_id, details, status) FROM stdin;
    public          postgres    false    240   1�       �          0    16909    compare_packages 
   TABLE DATA           C   COPY public.compare_packages (id, user_id, package_id) FROM stdin;
    public          postgres    false    244   N�       �          0    16900    custom_pages 
   TABLE DATA           B   COPY public.custom_pages (id, title, details, status) FROM stdin;
    public          postgres    false    242   k�       �          0    16785    menues 
   TABLE DATA           A   COPY public.menues (id, name, href, slug, parent_id) FROM stdin;
    public          postgres    false    228   ��       �          0    16846    package_attribute 
   TABLE DATA           R   COPY public.package_attribute (id, package_id, attribute_id, des_pkg) FROM stdin;
    public          postgres    false    236   ƕ       �          0    16827    packages 
   TABLE DATA           R   COPY public.packages (id, added_by, added_for, title, details, price) FROM stdin;
    public          postgres    false    234   �       �          0    16742 
   permission 
   TABLE DATA           /   COPY public.permission (id, title) FROM stdin;
    public          postgres    false    222   #�       �          0    16799 	   rolemenue 
   TABLE DATA           E   COPY public.rolemenue (id, role_name, role_id, menue_id) FROM stdin;
    public          postgres    false    230   K�       �          0    16751    rolepermission 
   TABLE DATA           D   COPY public.rolepermission (id, role_id, permission_id) FROM stdin;
    public          postgres    false    224   h�       �          0    16733    roles 
   TABLE DATA           *   COPY public.roles (id, title) FROM stdin;
    public          postgres    false    220   ��       �          0    16768    roleuser 
   TABLE DATA           8   COPY public.roleuser (id, role_id, user_id) FROM stdin;
    public          postgres    false    226   ��       �          0    16707    users 
   TABLE DATA           o   COPY public.users (id, _id, firstname, lastname, email, password, businessname, email_varified_at) FROM stdin;
    public          postgres    false    216   Ӗ       �          0    16863    users_chats 
   TABLE DATA           A   COPY public.users_chats (id, sender_id, reciever_id) FROM stdin;
    public          postgres    false    238   �       �          0    16719    users_varify_token 
   TABLE DATA           @   COPY public.users_varify_token (id, user_id, token) FROM stdin;
    public          postgres    false    218   �       �           0    0    attributes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.attributes_id_seq', 2, true);
          public          postgres    false    231            �           0    0    chat_details_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.chat_details_id_seq', 1, false);
          public          postgres    false    239            �           0    0    compare_packages_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.compare_packages_id_seq', 1, false);
          public          postgres    false    243            �           0    0    custom_pages_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.custom_pages_id_seq', 1, true);
          public          postgres    false    241            �           0    0    menues_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.menues_id_seq', 1, true);
          public          postgres    false    227            �           0    0    package_attribute_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.package_attribute_id_seq', 3, true);
          public          postgres    false    235            �           0    0    packages_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.packages_id_seq', 2, true);
          public          postgres    false    233            �           0    0    permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.permission_id_seq', 1, true);
          public          postgres    false    221            �           0    0    rolemenue_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.rolemenue_id_seq', 1, true);
          public          postgres    false    229            �           0    0    rolepermission_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rolepermission_id_seq', 1, true);
          public          postgres    false    223            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 1, true);
          public          postgres    false    219            �           0    0    roleuser_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.roleuser_id_seq', 1, true);
          public          postgres    false    225            �           0    0    users_chats_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.users_chats_id_seq', 1, false);
          public          postgres    false    237            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    215            �           0    0    users_varify_token_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_varify_token_id_seq', 2, true);
          public          postgres    false    217            �           2606    16825    attributes attributes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.attributes
    ADD CONSTRAINT attributes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.attributes DROP CONSTRAINT attributes_pkey;
       public            postgres    false    232            �           2606    16887    chat_details chat_details_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.chat_details
    ADD CONSTRAINT chat_details_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.chat_details DROP CONSTRAINT chat_details_pkey;
       public            postgres    false    240            �           2606    16914 &   compare_packages compare_packages_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.compare_packages
    ADD CONSTRAINT compare_packages_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.compare_packages DROP CONSTRAINT compare_packages_pkey;
       public            postgres    false    244            �           2606    16907    custom_pages custom_pages_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.custom_pages
    ADD CONSTRAINT custom_pages_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.custom_pages DROP CONSTRAINT custom_pages_pkey;
       public            postgres    false    242            �           2606    16792    menues menues_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.menues
    ADD CONSTRAINT menues_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.menues DROP CONSTRAINT menues_pkey;
       public            postgres    false    228            �           2606    16851 (   package_attribute package_attribute_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.package_attribute
    ADD CONSTRAINT package_attribute_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.package_attribute DROP CONSTRAINT package_attribute_pkey;
       public            postgres    false    236            �           2606    16834    packages packages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.packages DROP CONSTRAINT packages_pkey;
       public            postgres    false    234            �           2606    16749    permission permission_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.permission DROP CONSTRAINT permission_pkey;
       public            postgres    false    222            �           2606    16806    rolemenue rolemenue_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.rolemenue
    ADD CONSTRAINT rolemenue_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.rolemenue DROP CONSTRAINT rolemenue_pkey;
       public            postgres    false    230            �           2606    16756 "   rolepermission rolepermission_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.rolepermission
    ADD CONSTRAINT rolepermission_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.rolepermission DROP CONSTRAINT rolepermission_pkey;
       public            postgres    false    224            �           2606    16740    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    220            �           2606    16773    roleuser roleuser_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.roleuser
    ADD CONSTRAINT roleuser_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.roleuser DROP CONSTRAINT roleuser_pkey;
       public            postgres    false    226            �           2606    16868    users_chats users_chats_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users_chats
    ADD CONSTRAINT users_chats_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.users_chats DROP CONSTRAINT users_chats_pkey;
       public            postgres    false    238            �           2606    16717    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    216            �           2606    16715    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �           2606    16726 *   users_varify_token users_varify_token_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.users_varify_token
    ADD CONSTRAINT users_varify_token_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.users_varify_token DROP CONSTRAINT users_varify_token_pkey;
       public            postgres    false    218            �           2606    16893 *   chat_details chat_details_reciever_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_details
    ADD CONSTRAINT chat_details_reciever_id_fkey FOREIGN KEY (reciever_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.chat_details DROP CONSTRAINT chat_details_reciever_id_fkey;
       public          postgres    false    240    3273    216            �           2606    16888 (   chat_details chat_details_sender_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_details
    ADD CONSTRAINT chat_details_sender_id_fkey FOREIGN KEY (sender_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.chat_details DROP CONSTRAINT chat_details_sender_id_fkey;
       public          postgres    false    240    216    3273            �           2606    16920 1   compare_packages compare_packages_package_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compare_packages
    ADD CONSTRAINT compare_packages_package_id_fkey FOREIGN KEY (package_id) REFERENCES public.packages(id);
 [   ALTER TABLE ONLY public.compare_packages DROP CONSTRAINT compare_packages_package_id_fkey;
       public          postgres    false    234    244    3291            �           2606    16915 .   compare_packages compare_packages_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compare_packages
    ADD CONSTRAINT compare_packages_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 X   ALTER TABLE ONLY public.compare_packages DROP CONSTRAINT compare_packages_user_id_fkey;
       public          postgres    false    216    244    3273            �           2606    16793    menues menues_parent_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.menues
    ADD CONSTRAINT menues_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.menues(id);
 F   ALTER TABLE ONLY public.menues DROP CONSTRAINT menues_parent_id_fkey;
       public          postgres    false    228    228    3285            �           2606    16857 5   package_attribute package_attribute_attribute_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.package_attribute
    ADD CONSTRAINT package_attribute_attribute_id_fkey FOREIGN KEY (attribute_id) REFERENCES public.attributes(id);
 _   ALTER TABLE ONLY public.package_attribute DROP CONSTRAINT package_attribute_attribute_id_fkey;
       public          postgres    false    236    232    3289            �           2606    16852 3   package_attribute package_attribute_package_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.package_attribute
    ADD CONSTRAINT package_attribute_package_id_fkey FOREIGN KEY (package_id) REFERENCES public.packages(id);
 ]   ALTER TABLE ONLY public.package_attribute DROP CONSTRAINT package_attribute_package_id_fkey;
       public          postgres    false    236    3291    234            �           2606    16835    packages packages_added_by_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_added_by_fkey FOREIGN KEY (added_by) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.packages DROP CONSTRAINT packages_added_by_fkey;
       public          postgres    false    3273    234    216            �           2606    16840     packages packages_added_for_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_added_for_fkey FOREIGN KEY (added_for) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.packages DROP CONSTRAINT packages_added_for_fkey;
       public          postgres    false    3273    234    216            �           2606    16812 !   rolemenue rolemenue_menue_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rolemenue
    ADD CONSTRAINT rolemenue_menue_id_fkey FOREIGN KEY (menue_id) REFERENCES public.menues(id);
 K   ALTER TABLE ONLY public.rolemenue DROP CONSTRAINT rolemenue_menue_id_fkey;
       public          postgres    false    230    3285    228            �           2606    16807     rolemenue rolemenue_role_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.rolemenue
    ADD CONSTRAINT rolemenue_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 J   ALTER TABLE ONLY public.rolemenue DROP CONSTRAINT rolemenue_role_id_fkey;
       public          postgres    false    3277    230    220            �           2606    16762 0   rolepermission rolepermission_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rolepermission
    ADD CONSTRAINT rolepermission_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.permission(id);
 Z   ALTER TABLE ONLY public.rolepermission DROP CONSTRAINT rolepermission_permission_id_fkey;
       public          postgres    false    224    3279    222            �           2606    16757 *   rolepermission rolepermission_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rolepermission
    ADD CONSTRAINT rolepermission_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 T   ALTER TABLE ONLY public.rolepermission DROP CONSTRAINT rolepermission_role_id_fkey;
       public          postgres    false    3277    220    224            �           2606    16774    roleuser roleuser_role_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.roleuser
    ADD CONSTRAINT roleuser_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 H   ALTER TABLE ONLY public.roleuser DROP CONSTRAINT roleuser_role_id_fkey;
       public          postgres    false    226    220    3277            �           2606    16779    roleuser roleuser_user_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.roleuser
    ADD CONSTRAINT roleuser_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.roleuser DROP CONSTRAINT roleuser_user_id_fkey;
       public          postgres    false    3273    226    216            �           2606    16874 (   users_chats users_chats_reciever_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_chats
    ADD CONSTRAINT users_chats_reciever_id_fkey FOREIGN KEY (reciever_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.users_chats DROP CONSTRAINT users_chats_reciever_id_fkey;
       public          postgres    false    238    3273    216            �           2606    16869 &   users_chats users_chats_sender_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_chats
    ADD CONSTRAINT users_chats_sender_id_fkey FOREIGN KEY (sender_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.users_chats DROP CONSTRAINT users_chats_sender_id_fkey;
       public          postgres    false    238    216    3273            �           2606    16727 2   users_varify_token users_varify_token_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_varify_token
    ADD CONSTRAINT users_varify_token_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public.users_varify_token DROP CONSTRAINT users_varify_token_user_id_fkey;
       public          postgres    false    3273    216    218            �      x�3�,I-.�2S�\1z\\\ 9��      �      x������ � �      �      x������ � �      �      x�3�LL�/-Q(-F0J�JS�b���� �r	      �      x�3�,-N-*�ԇP9�yٜ�\1z\\\ v�z      �      x�3�4��.cN# 3c���� OT�      �   !   x�3�4��ad�e���@�=... �
�      �      x�3�LLI�/-N-����� (�4      �      x������ � �      �      x�3�4�4����� �X      �      x�3�LL�������� $�      �      x�3�4�4����� �Y      �     x�e�=S�0 �9���%y�ЏI�b�*w���&MI���z�zuq����61�M 8J�y\��WNj���4�����uTY�x���}Ku�S�Ɗ�R�͢�۲�-��ӡ�m+���b����w�+{�{<�e���L�%mYﺞ)���J�$�(S�c�t(f�.+��#�$�q2�" /�#��뿫���J�GC�}=����On�C�d�t�/w�����ެ>�s���"+GR�(R!�1��s�7�d�      �      x������ � �      �   �   x�5�;�   й���@�ٿ�@��')ER�xz'�)H�$2��>2���u�K��U3f�ub�R��5=!��|���P�?�NL�L�nt�ɦ`�	� ��L3����K���zk�]GpE ��K)e     