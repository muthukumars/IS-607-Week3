--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-02-17 11:34:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 177 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 177
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 176 (class 1259 OID 32800)
-- Name: OrderDetails; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "OrderDetails" (
    "OrderDetailsId" integer NOT NULL,
    customer_id character(4),
    product_id character(4)
);


ALTER TABLE "OrderDetails" OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 32769)
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE authors (
    autho_id character(4) NOT NULL,
    lastname character(40),
    firstname character(40)
);


ALTER TABLE authors OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 32774)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE books (
    book_id character(4) NOT NULL,
    title character(100),
    author_id character(4)
);


ALTER TABLE books OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 32785)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE customer (
    customer_id character(4) NOT NULL,
    lastname character(50),
    firstname character(50)
);


ALTER TABLE customer OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 32790)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE products (
    product_id character(4) NOT NULL,
    "ProductName" character(100)
);


ALTER TABLE products OWNER TO postgres;

--
-- TOC entry 1905 (class 2606 OID 32804)
-- Name: OrderDetailsPrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "OrderDetails"
    ADD CONSTRAINT "OrderDetailsPrimaryKey" PRIMARY KEY ("OrderDetailsId");


--
-- TOC entry 1896 (class 2606 OID 32773)
-- Name: authorprimarykey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY authors
    ADD CONSTRAINT authorprimarykey PRIMARY KEY (autho_id);


--
-- TOC entry 1898 (class 2606 OID 32778)
-- Name: booksprimarykey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY books
    ADD CONSTRAINT booksprimarykey PRIMARY KEY (book_id);


--
-- TOC entry 1901 (class 2606 OID 32789)
-- Name: customerPrimarkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT "customerPrimarkey" PRIMARY KEY (customer_id);


--
-- TOC entry 1903 (class 2606 OID 32794)
-- Name: productPrimarkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT "productPrimarkey" PRIMARY KEY (product_id);


--
-- TOC entry 1899 (class 1259 OID 32784)
-- Name: fki_booksForeignKeyAuthors; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_booksForeignKeyAuthors" ON books USING btree (author_id);


--
-- TOC entry 1906 (class 2606 OID 32779)
-- Name: booksForeignKeyAuthors; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY books
    ADD CONSTRAINT "booksForeignKeyAuthors" FOREIGN KEY (author_id) REFERENCES authors(autho_id);


--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-02-17 11:34:09

--
-- PostgreSQL database dump complete
--

