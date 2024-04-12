PGDMP     5    '                |            postgres    15.6    15.6 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3513                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    5            �            1259    49188    account    TABLE       CREATE TABLE public.account (
    account_id bigint NOT NULL,
    bank_id bigint,
    account_type character varying(45),
    name character varying(100),
    initial_balance numeric(10,2) NOT NULL,
    current_balance numeric(10,2) NOT NULL,
    open_date date NOT NULL,
    close_date date NOT NULL,
    last_updated_by character varying(45) NOT NULL,
    last_updated_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(45),
    created_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.account;
       public         heap    postgres    false    5            �            1259    49187    account_account_id_seq    SEQUENCE        CREATE SEQUENCE public.account_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.account_account_id_seq;
       public          postgres    false    218    5            �           0    0    account_account_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.account_account_id_seq OWNED BY public.account.account_id;
          public          postgres    false    217            �            1259    49202    account_type    TABLE       CREATE TABLE public.account_type (
    account_type_id bigint NOT NULL,
    name character varying(45),
    last_updated_date date DEFAULT CURRENT_DATE,
    last_updated_by character varying(45),
    created_date date DEFAULT CURRENT_DATE,
    created_by character varying(45)
);
     DROP TABLE public.account_type;
       public         heap    postgres    false    5            �            1259    49201     account_type_account_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_type_account_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_type_account_type_id_seq;
       public          postgres    false    5    220            �           0    0     account_type_account_type_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_type_account_type_id_seq OWNED BY public.account_type.account_type_id;
          public          postgres    false    219            �            1259    49177    bank    TABLE     �  CREATE TABLE public.bank (
    bank_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    address_line_1 character varying(100) NOT NULL,
    address_line_2 character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(2) NOT NULL,
    zip_code character varying(5) NOT NULL,
    is_international boolean NOT NULL,
    last_updated_by character varying(45) NOT NULL,
    last_updated_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(45) NOT NULL,
    created_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    address_type character varying(45)
);
    DROP TABLE public.bank;
       public         heap    postgres    false    5            �            1259    49176    bank_bank_id_seq    SEQUENCE     y   CREATE SEQUENCE public.bank_bank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bank_bank_id_seq;
       public          postgres    false    216    5            �           0    0    bank_bank_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bank_bank_id_seq OWNED BY public.bank.bank_id;
          public          postgres    false    215            �            1259    49210    bank_contact    TABLE     �   CREATE TABLE public.bank_contact (
    bank_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    position_type character varying(100)
);
     DROP TABLE public.bank_contact;
       public         heap    postgres    false    5            �            1259    49235    bond    TABLE     e  CREATE TABLE public.bond (
    bond_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    issuer character varying(100) NOT NULL,
    purchase_date timestamp without time zone NOT NULL,
    value numeric(10,2) NOT NULL,
    interest_rate numeric(10,2) NOT NULL,
    maturity_date timestamp without time zone NOT NULL,
    portfolio_id bigint
);
    DROP TABLE public.bond;
       public         heap    postgres    false    5            �            1259    49234    bond_bond_id_seq    SEQUENCE     y   CREATE SEQUENCE public.bond_bond_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bond_bond_id_seq;
       public          postgres    false    225    5            �           0    0    bond_bond_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bond_bond_id_seq OWNED BY public.bond.bond_id;
          public          postgres    false    224            �            1259    49247    budget    TABLE     �   CREATE TABLE public.budget (
    budget_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    goal_amount numeric(10,2) NOT NULL,
    period character varying(45) NOT NULL
);
    DROP TABLE public.budget;
       public         heap    postgres    false    5            �            1259    49246    budget_budget_id_seq    SEQUENCE     }   CREATE SEQUENCE public.budget_budget_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.budget_budget_id_seq;
       public          postgres    false    5    227            �           0    0    budget_budget_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.budget_budget_id_seq OWNED BY public.budget.budget_id;
          public          postgres    false    226            �            1259    49274    budget_transaction    TABLE     n   CREATE TABLE public.budget_transaction (
    transaction_id bigint NOT NULL,
    budget_id bigint NOT NULL
);
 &   DROP TABLE public.budget_transaction;
       public         heap    postgres    false    5            �            1259    49308 
   credential    TABLE     �   CREATE TABLE public.credential (
    credential_id bigint NOT NULL,
    user_id bigint,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL
);
    DROP TABLE public.credential;
       public         heap    postgres    false    5            �            1259    49307    credential_credential_id_seq    SEQUENCE     �   CREATE SEQUENCE public.credential_credential_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.credential_credential_id_seq;
       public          postgres    false    234    5            �           0    0    credential_credential_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.credential_credential_id_seq OWNED BY public.credential.credential_id;
          public          postgres    false    233            �            1259    49319    currency    TABLE     �   CREATE TABLE public.currency (
    name character varying(45) NOT NULL,
    country_name character varying(45) NOT NULL,
    symbol character varying(45)
);
    DROP TABLE public.currency;
       public         heap    postgres    false    5            �            1259    49297    finances_user    TABLE     �  CREATE TABLE public.finances_user (
    user_id bigint NOT NULL,
    first_name character varying(45) NOT NULL,
    last_name character varying(45) NOT NULL,
    birth_date date NOT NULL,
    email_address character varying(100) NOT NULL,
    last_updated_by character varying(45) NOT NULL,
    last_updated_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(45) NOT NULL,
    created_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_address_line_1 character varying(100),
    user_address_line_2 character varying(100),
    city character varying(100),
    state character varying(2),
    zip_code character varying(5)
);
 !   DROP TABLE public.finances_user;
       public         heap    postgres    false    5            �            1259    49296    finances_user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.finances_user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.finances_user_user_id_seq;
       public          postgres    false    5    232            �           0    0    finances_user_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.finances_user_user_id_seq OWNED BY public.finances_user.user_id;
          public          postgres    false    231            �            1259    49325    ifinances_keys    TABLE     h   CREATE TABLE public.ifinances_keys (
    pk_name character varying(45) NOT NULL,
    pk_value bigint
);
 "   DROP TABLE public.ifinances_keys;
       public         heap    postgres    false    5            �            1259    49333 
   investment    TABLE     �  CREATE TABLE public.investment (
    investment_id bigint NOT NULL,
    portfolio_id bigint,
    name character varying(100),
    issuer character varying(100),
    purchase_date timestamp without time zone,
    value numeric(10,2),
    interest_rate numeric(10,2),
    maturity_date timestamp without time zone,
    share_price numeric(10,2),
    quantity bigint,
    investment_type character varying(100)
);
    DROP TABLE public.investment;
       public         heap    postgres    false    5            �            1259    49332    investment_investment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.investment_investment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.investment_investment_id_seq;
       public          postgres    false    5    238            �           0    0    investment_investment_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.investment_investment_id_seq OWNED BY public.investment.investment_id;
          public          postgres    false    237            �            1259    49345    market    TABLE     �   CREATE TABLE public.market (
    market_id bigint NOT NULL,
    currency_name character varying(45) NOT NULL,
    country_name character varying(45) NOT NULL,
    market_name character varying(45)
);
    DROP TABLE public.market;
       public         heap    postgres    false    5            �            1259    49344    market_market_id_seq    SEQUENCE     }   CREATE SEQUENCE public.market_market_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.market_market_id_seq;
       public          postgres    false    240    5            �           0    0    market_market_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.market_market_id_seq OWNED BY public.market.market_id;
          public          postgres    false    239            �            1259    49228 	   portfolio    TABLE     n   CREATE TABLE public.portfolio (
    portfolio_id bigint NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.portfolio;
       public         heap    postgres    false    5            �            1259    49227    portfolio_portfolio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_portfolio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.portfolio_portfolio_id_seq;
       public          postgres    false    5    223            �           0    0    portfolio_portfolio_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.portfolio_portfolio_id_seq OWNED BY public.portfolio.portfolio_id;
          public          postgres    false    222            �            1259    49358    stock    TABLE     (  CREATE TABLE public.stock (
    stock_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    issuer character varying(45) NOT NULL,
    purchase_date timestamp without time zone NOT NULL,
    share_price numeric(10,2) NOT NULL,
    quantity bigint NOT NULL,
    portfolio_id bigint
);
    DROP TABLE public.stock;
       public         heap    postgres    false    5            �            1259    49357    stock_stock_id_seq    SEQUENCE     {   CREATE SEQUENCE public.stock_stock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.stock_stock_id_seq;
       public          postgres    false    5    242            �           0    0    stock_stock_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.stock_stock_id_seq OWNED BY public.stock.stock_id;
          public          postgres    false    241            �            1259    49370 	   time_test    TABLE     �  CREATE TABLE public.time_test (
    time_test_id bigint NOT NULL,
    datetime_column timestamp without time zone,
    timestamp_column timestamp without time zone,
    date_column date,
    time_column time without time zone,
    sql_datetime_column timestamp without time zone,
    sql_timestamp_column timestamp without time zone,
    sql_date_column date,
    sql_time_column time without time zone
);
    DROP TABLE public.time_test;
       public         heap    postgres    false    5            �            1259    49369    time_test_time_test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.time_test_time_test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.time_test_time_test_id_seq;
       public          postgres    false    5    244            �           0    0    time_test_time_test_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.time_test_time_test_id_seq OWNED BY public.time_test.time_test_id;
          public          postgres    false    243            �            1259    49259    transaction    TABLE     B  CREATE TABLE public.transaction (
    transaction_id bigint NOT NULL,
    account_id bigint,
    transaction_type character varying(45) NOT NULL,
    title character varying(100) NOT NULL,
    amount numeric(10,2) NOT NULL,
    initial_balance numeric(10,2) NOT NULL,
    closing_balance numeric(10,2) NOT NULL,
    notes text,
    last_updated_by character varying(45) NOT NULL,
    last_updated_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(45) NOT NULL,
    created_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.transaction;
       public         heap    postgres    false    5            �            1259    49258    transaction_transaction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.transaction_transaction_id_seq;
       public          postgres    false    5    229            �           0    0    transaction_transaction_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.transaction_transaction_id_seq OWNED BY public.transaction.transaction_id;
          public          postgres    false    228            �            1259    49376    user_account    TABLE     b   CREATE TABLE public.user_account (
    user_id bigint NOT NULL,
    account_id bigint NOT NULL
);
     DROP TABLE public.user_account;
       public         heap    postgres    false    5            �            1259    49391    user_address    TABLE     [  CREATE TABLE public.user_address (
    user_id bigint NOT NULL,
    user_address_line_1 character varying(100) NOT NULL,
    user_address_line_2 character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(2) NOT NULL,
    zip_code character varying(5) NOT NULL,
    address_type character varying(45)
);
     DROP TABLE public.user_address;
       public         heap    postgres    false    5            �           2604    49191    account account_id    DEFAULT     x   ALTER TABLE ONLY public.account ALTER COLUMN account_id SET DEFAULT nextval('public.account_account_id_seq'::regclass);
 A   ALTER TABLE public.account ALTER COLUMN account_id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    49205    account_type account_type_id    DEFAULT     �   ALTER TABLE ONLY public.account_type ALTER COLUMN account_type_id SET DEFAULT nextval('public.account_type_account_type_id_seq'::regclass);
 K   ALTER TABLE public.account_type ALTER COLUMN account_type_id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    49180    bank bank_id    DEFAULT     l   ALTER TABLE ONLY public.bank ALTER COLUMN bank_id SET DEFAULT nextval('public.bank_bank_id_seq'::regclass);
 ;   ALTER TABLE public.bank ALTER COLUMN bank_id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    49238    bond bond_id    DEFAULT     l   ALTER TABLE ONLY public.bond ALTER COLUMN bond_id SET DEFAULT nextval('public.bond_bond_id_seq'::regclass);
 ;   ALTER TABLE public.bond ALTER COLUMN bond_id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    49250    budget budget_id    DEFAULT     t   ALTER TABLE ONLY public.budget ALTER COLUMN budget_id SET DEFAULT nextval('public.budget_budget_id_seq'::regclass);
 ?   ALTER TABLE public.budget ALTER COLUMN budget_id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    49311    credential credential_id    DEFAULT     �   ALTER TABLE ONLY public.credential ALTER COLUMN credential_id SET DEFAULT nextval('public.credential_credential_id_seq'::regclass);
 G   ALTER TABLE public.credential ALTER COLUMN credential_id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    49300    finances_user user_id    DEFAULT     ~   ALTER TABLE ONLY public.finances_user ALTER COLUMN user_id SET DEFAULT nextval('public.finances_user_user_id_seq'::regclass);
 D   ALTER TABLE public.finances_user ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    49336    investment investment_id    DEFAULT     �   ALTER TABLE ONLY public.investment ALTER COLUMN investment_id SET DEFAULT nextval('public.investment_investment_id_seq'::regclass);
 G   ALTER TABLE public.investment ALTER COLUMN investment_id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    49348    market market_id    DEFAULT     t   ALTER TABLE ONLY public.market ALTER COLUMN market_id SET DEFAULT nextval('public.market_market_id_seq'::regclass);
 ?   ALTER TABLE public.market ALTER COLUMN market_id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    49231    portfolio portfolio_id    DEFAULT     �   ALTER TABLE ONLY public.portfolio ALTER COLUMN portfolio_id SET DEFAULT nextval('public.portfolio_portfolio_id_seq'::regclass);
 E   ALTER TABLE public.portfolio ALTER COLUMN portfolio_id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    49361    stock stock_id    DEFAULT     p   ALTER TABLE ONLY public.stock ALTER COLUMN stock_id SET DEFAULT nextval('public.stock_stock_id_seq'::regclass);
 =   ALTER TABLE public.stock ALTER COLUMN stock_id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    49373    time_test time_test_id    DEFAULT     �   ALTER TABLE ONLY public.time_test ALTER COLUMN time_test_id SET DEFAULT nextval('public.time_test_time_test_id_seq'::regclass);
 E   ALTER TABLE public.time_test ALTER COLUMN time_test_id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    49262    transaction transaction_id    DEFAULT     �   ALTER TABLE ONLY public.transaction ALTER COLUMN transaction_id SET DEFAULT nextval('public.transaction_transaction_id_seq'::regclass);
 I   ALTER TABLE public.transaction ALTER COLUMN transaction_id DROP DEFAULT;
       public          postgres    false    228    229    229            �          0    49188    account 
   TABLE DATA           �   COPY public.account (account_id, bank_id, account_type, name, initial_balance, current_balance, open_date, close_date, last_updated_by, last_updated_date, created_by, created_date) FROM stdin;
    public          postgres    false    218   ^�       �          0    49202    account_type 
   TABLE DATA           {   COPY public.account_type (account_type_id, name, last_updated_date, last_updated_by, created_date, created_by) FROM stdin;
    public          postgres    false    220   {�       �          0    49177    bank 
   TABLE DATA           �   COPY public.bank (bank_id, name, address_line_1, address_line_2, city, state, zip_code, is_international, last_updated_by, last_updated_date, created_by, created_date, address_type) FROM stdin;
    public          postgres    false    216   ��       �          0    49210    bank_contact 
   TABLE DATA           D   COPY public.bank_contact (bank_id, name, position_type) FROM stdin;
    public          postgres    false    221   ��       �          0    49235    bond 
   TABLE DATA           w   COPY public.bond (bond_id, name, issuer, purchase_date, value, interest_rate, maturity_date, portfolio_id) FROM stdin;
    public          postgres    false    225   ҧ       �          0    49247    budget 
   TABLE DATA           F   COPY public.budget (budget_id, name, goal_amount, period) FROM stdin;
    public          postgres    false    227   �       �          0    49274    budget_transaction 
   TABLE DATA           G   COPY public.budget_transaction (transaction_id, budget_id) FROM stdin;
    public          postgres    false    230   �       �          0    49308 
   credential 
   TABLE DATA           P   COPY public.credential (credential_id, user_id, username, password) FROM stdin;
    public          postgres    false    234   )�       �          0    49319    currency 
   TABLE DATA           >   COPY public.currency (name, country_name, symbol) FROM stdin;
    public          postgres    false    235   F�       �          0    49297    finances_user 
   TABLE DATA           �   COPY public.finances_user (user_id, first_name, last_name, birth_date, email_address, last_updated_by, last_updated_date, created_by, created_date, user_address_line_1, user_address_line_2, city, state, zip_code) FROM stdin;
    public          postgres    false    232   c�       �          0    49325    ifinances_keys 
   TABLE DATA           ;   COPY public.ifinances_keys (pk_name, pk_value) FROM stdin;
    public          postgres    false    236   �       �          0    49333 
   investment 
   TABLE DATA           �   COPY public.investment (investment_id, portfolio_id, name, issuer, purchase_date, value, interest_rate, maturity_date, share_price, quantity, investment_type) FROM stdin;
    public          postgres    false    238   ;�       �          0    49345    market 
   TABLE DATA           U   COPY public.market (market_id, currency_name, country_name, market_name) FROM stdin;
    public          postgres    false    240   X�       �          0    49228 	   portfolio 
   TABLE DATA           7   COPY public.portfolio (portfolio_id, name) FROM stdin;
    public          postgres    false    223   u�       �          0    49358    stock 
   TABLE DATA           k   COPY public.stock (stock_id, name, issuer, purchase_date, share_price, quantity, portfolio_id) FROM stdin;
    public          postgres    false    242   ��       �          0    49370 	   time_test 
   TABLE DATA           �   COPY public.time_test (time_test_id, datetime_column, timestamp_column, date_column, time_column, sql_datetime_column, sql_timestamp_column, sql_date_column, sql_time_column) FROM stdin;
    public          postgres    false    244   ��       �          0    49259    transaction 
   TABLE DATA           �   COPY public.transaction (transaction_id, account_id, transaction_type, title, amount, initial_balance, closing_balance, notes, last_updated_by, last_updated_date, created_by, created_date) FROM stdin;
    public          postgres    false    229   ̩       �          0    49376    user_account 
   TABLE DATA           ;   COPY public.user_account (user_id, account_id) FROM stdin;
    public          postgres    false    245   �       �          0    49391    user_address 
   TABLE DATA           ~   COPY public.user_address (user_id, user_address_line_1, user_address_line_2, city, state, zip_code, address_type) FROM stdin;
    public          postgres    false    246   �       �           0    0    account_account_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.account_account_id_seq', 1, false);
          public          postgres    false    217            �           0    0     account_type_account_type_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_type_account_type_id_seq', 1, false);
          public          postgres    false    219            �           0    0    bank_bank_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bank_bank_id_seq', 1, false);
          public          postgres    false    215            �           0    0    bond_bond_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bond_bond_id_seq', 1, false);
          public          postgres    false    224            �           0    0    budget_budget_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.budget_budget_id_seq', 1, false);
          public          postgres    false    226            �           0    0    credential_credential_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.credential_credential_id_seq', 1, false);
          public          postgres    false    233            �           0    0    finances_user_user_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.finances_user_user_id_seq', 10, true);
          public          postgres    false    231            �           0    0    investment_investment_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.investment_investment_id_seq', 1, false);
          public          postgres    false    237            �           0    0    market_market_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.market_market_id_seq', 1, false);
          public          postgres    false    239            �           0    0    portfolio_portfolio_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.portfolio_portfolio_id_seq', 1, false);
          public          postgres    false    222            �           0    0    stock_stock_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.stock_stock_id_seq', 1, false);
          public          postgres    false    241            �           0    0    time_test_time_test_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.time_test_time_test_id_seq', 1, false);
          public          postgres    false    243            �           0    0    transaction_transaction_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.transaction_transaction_id_seq', 1, false);
          public          postgres    false    228            �           2606    49195    account account_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (account_id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public            postgres    false    218            �           2606    49209    account_type account_type_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.account_type
    ADD CONSTRAINT account_type_pkey PRIMARY KEY (account_type_id);
 H   ALTER TABLE ONLY public.account_type DROP CONSTRAINT account_type_pkey;
       public            postgres    false    220            �           2606    49214    bank_contact bank_contact_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.bank_contact
    ADD CONSTRAINT bank_contact_pkey PRIMARY KEY (bank_id, name);
 H   ALTER TABLE ONLY public.bank_contact DROP CONSTRAINT bank_contact_pkey;
       public            postgres    false    221    221            �           2606    49186    bank bank_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (bank_id);
 8   ALTER TABLE ONLY public.bank DROP CONSTRAINT bank_pkey;
       public            postgres    false    216            �           2606    49240    bond bond_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.bond
    ADD CONSTRAINT bond_pkey PRIMARY KEY (bond_id);
 8   ALTER TABLE ONLY public.bond DROP CONSTRAINT bond_pkey;
       public            postgres    false    225            �           2606    49252    budget budget_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.budget
    ADD CONSTRAINT budget_pkey PRIMARY KEY (budget_id);
 <   ALTER TABLE ONLY public.budget DROP CONSTRAINT budget_pkey;
       public            postgres    false    227            �           2606    49278 *   budget_transaction budget_transaction_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.budget_transaction
    ADD CONSTRAINT budget_transaction_pkey PRIMARY KEY (transaction_id, budget_id);
 T   ALTER TABLE ONLY public.budget_transaction DROP CONSTRAINT budget_transaction_pkey;
       public            postgres    false    230    230            �           2606    49313    credential credential_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.credential
    ADD CONSTRAINT credential_pkey PRIMARY KEY (credential_id);
 D   ALTER TABLE ONLY public.credential DROP CONSTRAINT credential_pkey;
       public            postgres    false    234            �           2606    49323    currency currency_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (name, country_name);
 @   ALTER TABLE ONLY public.currency DROP CONSTRAINT currency_pkey;
       public            postgres    false    235    235            �           2606    49306     finances_user finances_user_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.finances_user
    ADD CONSTRAINT finances_user_pkey PRIMARY KEY (user_id);
 J   ALTER TABLE ONLY public.finances_user DROP CONSTRAINT finances_user_pkey;
       public            postgres    false    232            �           2606    49331 *   ifinances_keys ifinances_keys_pk_value_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.ifinances_keys
    ADD CONSTRAINT ifinances_keys_pk_value_key UNIQUE (pk_value);
 T   ALTER TABLE ONLY public.ifinances_keys DROP CONSTRAINT ifinances_keys_pk_value_key;
       public            postgres    false    236            �           2606    49329 "   ifinances_keys ifinances_keys_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.ifinances_keys
    ADD CONSTRAINT ifinances_keys_pkey PRIMARY KEY (pk_name);
 L   ALTER TABLE ONLY public.ifinances_keys DROP CONSTRAINT ifinances_keys_pkey;
       public            postgres    false    236            �           2606    49338    investment investment_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.investment
    ADD CONSTRAINT investment_pkey PRIMARY KEY (investment_id);
 D   ALTER TABLE ONLY public.investment DROP CONSTRAINT investment_pkey;
       public            postgres    false    238            �           2606    49350    market market_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.market
    ADD CONSTRAINT market_pkey PRIMARY KEY (market_id);
 <   ALTER TABLE ONLY public.market DROP CONSTRAINT market_pkey;
       public            postgres    false    240            �           2606    49233    portfolio portfolio_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.portfolio
    ADD CONSTRAINT portfolio_pkey PRIMARY KEY (portfolio_id);
 B   ALTER TABLE ONLY public.portfolio DROP CONSTRAINT portfolio_pkey;
       public            postgres    false    223            �           2606    49363    stock stock_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (stock_id);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    242            �           2606    49375    time_test time_test_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.time_test
    ADD CONSTRAINT time_test_pkey PRIMARY KEY (time_test_id);
 B   ALTER TABLE ONLY public.time_test DROP CONSTRAINT time_test_pkey;
       public            postgres    false    244            �           2606    49268    transaction transaction_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (transaction_id);
 F   ALTER TABLE ONLY public.transaction DROP CONSTRAINT transaction_pkey;
       public            postgres    false    229            �           2606    49380    user_account user_account_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (user_id, account_id);
 H   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_pkey;
       public            postgres    false    245    245            �           2606    49395    user_address user_address_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_pkey PRIMARY KEY (user_id, user_address_line_1, user_address_line_2, city, state, zip_code);
 H   ALTER TABLE ONLY public.user_address DROP CONSTRAINT user_address_pkey;
       public            postgres    false    246    246    246    246    246    246            �           2606    49196    account account_bank_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.bank(bank_id);
 F   ALTER TABLE ONLY public.account DROP CONSTRAINT account_bank_id_fkey;
       public          postgres    false    3282    216    218            �           2606    49215 &   bank_contact bank_contact_bank_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bank_contact
    ADD CONSTRAINT bank_contact_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.bank(bank_id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.bank_contact DROP CONSTRAINT bank_contact_bank_id_fkey;
       public          postgres    false    221    216    3282            �           2606    49241    bond bond_portfolio_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bond
    ADD CONSTRAINT bond_portfolio_id_fkey FOREIGN KEY (portfolio_id) REFERENCES public.portfolio(portfolio_id);
 E   ALTER TABLE ONLY public.bond DROP CONSTRAINT bond_portfolio_id_fkey;
       public          postgres    false    223    3290    225            �           2606    49284 4   budget_transaction budget_transaction_budget_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.budget_transaction
    ADD CONSTRAINT budget_transaction_budget_id_fkey FOREIGN KEY (budget_id) REFERENCES public.budget(budget_id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.budget_transaction DROP CONSTRAINT budget_transaction_budget_id_fkey;
       public          postgres    false    230    3294    227            �           2606    49279 9   budget_transaction budget_transaction_transaction_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.budget_transaction
    ADD CONSTRAINT budget_transaction_transaction_id_fkey FOREIGN KEY (transaction_id) REFERENCES public.transaction(transaction_id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.budget_transaction DROP CONSTRAINT budget_transaction_transaction_id_fkey;
       public          postgres    false    229    3296    230            �           2606    49314 "   credential credential_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.credential
    ADD CONSTRAINT credential_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.finances_user(user_id);
 L   ALTER TABLE ONLY public.credential DROP CONSTRAINT credential_user_id_fkey;
       public          postgres    false    3300    234    232                        2606    49339 '   investment investment_portfolio_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.investment
    ADD CONSTRAINT investment_portfolio_id_fkey FOREIGN KEY (portfolio_id) REFERENCES public.portfolio(portfolio_id);
 Q   ALTER TABLE ONLY public.investment DROP CONSTRAINT investment_portfolio_id_fkey;
       public          postgres    false    238    3290    223                       2606    49351 -   market market_currency_name_country_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.market
    ADD CONSTRAINT market_currency_name_country_name_fkey FOREIGN KEY (currency_name, country_name) REFERENCES public.currency(name, country_name) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.market DROP CONSTRAINT market_currency_name_country_name_fkey;
       public          postgres    false    240    235    240    3304    235                       2606    49364    stock stock_portfolio_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_portfolio_id_fkey FOREIGN KEY (portfolio_id) REFERENCES public.portfolio(portfolio_id);
 G   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_portfolio_id_fkey;
       public          postgres    false    3290    223    242            �           2606    49269 '   transaction transaction_account_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.account(account_id);
 Q   ALTER TABLE ONLY public.transaction DROP CONSTRAINT transaction_account_id_fkey;
       public          postgres    false    3284    218    229                       2606    49386 )   user_account user_account_account_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.account(account_id);
 S   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_account_id_fkey;
       public          postgres    false    218    3284    245                       2606    49381 &   user_account user_account_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.finances_user(user_id);
 P   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_user_id_fkey;
       public          postgres    false    3300    245    232                       2606    49396 &   user_address user_address_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.finances_user(user_id);
 P   ALTER TABLE ONLY public.user_address DROP CONSTRAINT user_address_user_id_fkey;
       public          postgres    false    232    246    3300            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x��α
�0��9y
_������7���P�*(E%`�^Eɒ%�m�o��f��8=����S�C����A1�o��陖uH�����K�7�����C���s����Y��p��$�Y�=cH]�'��{��2�R,}�g�u�Dв+��1���gw�      �      x�K��K�KN-�/-N-�4����� U,S      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     