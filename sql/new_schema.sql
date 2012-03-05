CREATE ROLE usuario LOGIN
  ENCRYPTED PASSWORD 'md599118587c816d89ab2fec8a15fb45be7'
  NOSUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION;


CREATE DATABASE banco
  WITH OWNER = usuario
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese, Brazil'
       LC_CTYPE = 'Portuguese, Brazil'
       CONNECTION LIMIT = -1;
	   
	   
CREATE SEQUENCE seqproduto
      INCREMENT BY 1  
      START WITH 1    
      MINVALUE   0
      NO CYCLE; 

CREATE SEQUENCE seqfornecedor
      INCREMENT BY 1  
      START WITH 1    
      MINVALUE   0
      NO CYCLE; 

CREATE SEQUENCE seqvenda
      INCREMENT BY 1  
      START WITH 1    
      MINVALUE   0
      NO CYCLE; 


 CREATE SEQUENCE seqcompra
      INCREMENT BY 1  
      START WITH 1    
      MINVALUE   0
      NO CYCLE; 
	   
CREATE TABLE produto
(
  codigo integer DEFAULT nextval('seqproduto') NOT NULL,
  nome text NOT NULL,
  preco numeric NOT NULL,
  quantidade integer NOT NULL,
  CONSTRAINT produto_pkey PRIMARY KEY (codigo ),
  CONSTRAINT produto_preco_check CHECK (preco > 0::numeric),
  CONSTRAINT produto_quantidade_check CHECK (quantidade >= 0)
)

create table venda (
	codigo integer PRIMARY KEY,
	total numeric NOT NULL CHECK (total >= 0),
	data timestamp NOT NULL
);

create table vendaproduto (
	venda integer NOT NULL REFERENCES venda ON DELETE RESTRICT,
	produto integer NOT NULL REFERENCES produto ON DELETE RESTRICT,
	quantidade integer NOT NULL CHECK (quantidade > 0),
	PRIMARY KEY (venda, produto)	
);

CREATE TABLE fornecedor
(
  codigo integer DEFAULT nextval('seqfornecedor') NOT NULL,
  nome character varying(50) NOT NULL,
  endereco character varying(100) NOT NULL,
  numero integer NOT NULL,
  cidade character varying(100) NOT NULL,
  estado character varying(2) NOT NULL,
  CONSTRAINT fornecedor_pkey PRIMARY KEY (codigo ),
  CONSTRAINT fornecedor_numero_check CHECK (numero > 0)
);

create table compra (
	codigo integer PRIMARY KEY,
	fornecedor integer NOT NULL REFERENCES fornecedor ON DELETE RESTRICT,
	total numeric NOT NULL CHECK (total >= 0),
	data timestamp NOT NULL	
);

create table compraproduto (
	compra integer NOT NULL REFERENCES compra ON DELETE RESTRICT,
	produto integer NOT NULL REFERENCES produto ON DELETE RESTRICT,
	quantidade integer NOT NULL CHECK (quantidade > 0),
	PRIMARY KEY (compra, produto)	
);


