--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-02-17 11:35:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2020 (class 0 OID 32800)
-- Dependencies: 176
-- Data for Name: OrderDetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "OrderDetails" ("OrderDetailsId", customer_id, product_id) FROM stdin;
1	0001	0001
2	0001	0002
3	0001	0003
4	0002	0002
5	0002	0001
6	0002	0002
7	0003	0001
\.


--
-- TOC entry 2016 (class 0 OID 32769)
-- Dependencies: 172
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY authors (autho_id, lastname, firstname) FROM stdin;
0001	Srinivasan                              	Muthukumar                              
0002	Krish                                   	Ahila                                   
0003	Thomas                                  	George                                  
0004	Muthukumar                              	Aarthi                                  
0005	Muthukumar                              	Aadith                                  
\.


--
-- TOC entry 2017 (class 0 OID 32774)
-- Dependencies: 173
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY books (book_id, title, author_id) FROM stdin;
0001	SQL Programming                                                                                     	0001
0002	Data Mapping                                                                                        	0001
0003	What is Music                                                                                       	0001
0004	IT Testing                                                                                          	0002
0005	Robotics TItles                                                                                     	0002
0006	Sankskrit                                                                                           	0003
0007	Test Title 7                                                                                        	0003
0008	Test Tittle8                                                                                        	0003
0009	Test Title9                                                                                         	0003
0010	Ttitle10                                                                                            	0004
0011	Title11                                                                                             	0005
\.


--
-- TOC entry 2018 (class 0 OID 32785)
-- Dependencies: 174
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer (customer_id, lastname, firstname) FROM stdin;
0001	Customer                                          	One                                               
0002	Customer                                          	tWO                                               
0003	Customer                                          	three                                             
0004	customer                                          	four                                              
0005	customer                                          	five                                              
\.


--
-- TOC entry 2019 (class 0 OID 32790)
-- Dependencies: 175
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY products (product_id, "ProductName") FROM stdin;
0001	Package1                                                                                            
0002	Package2                                                                                            
0003	Package3                                                                                            
0004	Paclage4                                                                                            
0005	Package5                                                                                            
\.


-- Completed on 2015-02-17 11:35:03

--
-- PostgreSQL database dump complete
--

