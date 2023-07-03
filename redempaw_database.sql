-- Table: public.pet

-- DROP TABLE IF EXISTS public.pet;

CREATE TABLE IF NOT EXISTS public.pet
(
    pet_id integer NOT NULL,
    user_id integer NOT NULL,
    pet_info_id integer NOT NULL,
    active boolean NOT NULL,
    creation_date date NOT NULL,
    CONSTRAINT pet_pkey PRIMARY KEY (pet_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pet
    OWNER to root;

-- Table: public.pet

-- DROP TABLE IF EXISTS public.pet;

CREATE TABLE IF NOT EXISTS public.pet_city
(
    pet_id integer NOT NULL,
    city_id integer NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pet_city
    OWNER to root;

-- Table: public.pet_info

-- DROP TABLE IF EXISTS public.pet_info;

CREATE TABLE IF NOT EXISTS public.pet_info
(
    pet_info_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    directory_url text COLLATE pg_catalog."default" NOT NULL,
    avatar_url text COLLATE pg_catalog."default",
    CONSTRAINT pet_info_pkey PRIMARY KEY (pet_info_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pet_info
    OWNER to root;

-- Table: public.city

-- DROP TABLE IF EXISTS public.city;

CREATE TABLE IF NOT EXISTS public.city
(
    city_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT city_pkey PRIMARY KEY (city_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.city
    OWNER to root;

-- Table: public.photos

-- DROP TABLE IF EXISTS public.photos;

CREATE TABLE IF NOT EXISTS public.photos
(
    photo_id integer NOT NULL,
    pet_info_id integer NOT NULL,
    photo_url text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT photos_pkey PRIMARY KEY (photo_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.photos
    OWNER to root;

-- Table: public.privilege

-- DROP TABLE IF EXISTS public.privilege;

CREATE TABLE IF NOT EXISTS public.privilege
(
    privilege_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT privilege_pkey PRIMARY KEY (privilege_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.privilege
    OWNER to root;

-- Table: public.user_info

-- DROP TABLE IF EXISTS public.user_info;

CREATE TABLE IF NOT EXISTS public.user_info
(
    user_info_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    surname text COLLATE pg_catalog."default" NOT NULL,
    phone text COLLATE pg_catalog."default" NOT NULL,
    address text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT user_info_pkey PRIMARY KEY (user_info_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.user_info
    OWNER to root;

-- Table: public.user_info_city

-- DROP TABLE IF EXISTS public.user_info_city;

CREATE TABLE IF NOT EXISTS public.user_info_city
(
    user_info_id integer NOT NULL,
    city_id integer NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.user_info_city
    OWNER to root;

-- Table: public.users

-- DROP TABLE IF EXISTS public.users;

CREATE TABLE IF NOT EXISTS public.users
(
    user_id integer NOT NULL,
    privilege_id integer NOT NULL,
    user_info_id integer NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    password text COLLATE pg_catalog."default" NOT NULL,
    enabled boolean NOT NULL,
    creation_date date NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (user_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to root;
