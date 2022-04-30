-- Table: public.Oranges

-- DROP TABLE IF EXISTS public."Oranges";

CREATE TABLE IF NOT EXISTS public."Oranges"
(
    "Category_id" integer NOT NULL,
    name character varying(25) COLLATE pg_catalog."default" NOT NULL,
    color character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Oranges_pkey" PRIMARY KEY ("Category_id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Oranges"
    OWNER to postgres;