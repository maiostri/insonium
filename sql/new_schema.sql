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
	   
create table produto (
	codigo integer PRIMARY KEY,
	nome text NOT NULL, 
	preco numeric NOT NULL CHECK (preco > 0),
	quantidade integer NOT NULL CHECK (quantidade >= 0)
);

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

create table fornecedor (
	codigo integer PRIMARY KEY,
	nome varchar(50) NOT NULL,
	endereco varchar(100) NOT NULL,
	numero integer NOT NULL CHECK (numero > 0),
	cidade varchar(100) NOT NULL,
	estado varchar(2) NOT NULL
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


