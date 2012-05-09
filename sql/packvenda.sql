CREATE FUNCTION valida_venda() RETURNS TRIGGER AS $valida_venda$
BEGIN
	IF NEW.TOTAL < 0 THEN 
		RAISE EXCEPTION 'Valor invalido';
	END IF;
	IF NEW.SENHA < 0 THEN 
		RAISE EXCEPTION 'Senha invalida';
	END IF;

	RETURN NEW;
END;
$valida_venda$
LANGUAGE plpgsql;

CREATE TRIGGER validacao_venda BEFORE INSERT OR UPDATE ON venda
FOR EACH ROW EXECUTE PROCEDURE valida_venda();

CREATE OR REPLACE FUNCTION valida_excluir_venda()
  RETURNS trigger AS
$BODY$
DECLARE
	reg vendaproduto%ROWTYPE;
BEGIN
	/* revertendo estoque da venda a ser removida */
	FOR reg in 
		SELECT venda, produto, quantidade FROM vendaproduto WHERE venda = OLD.CODIGO
	LOOP
		UPDATE produto SET quantidade = quantidade + reg.quantidade WHERE codigo = reg.produto;
	END LOOP;

	DELETE FROM vendaproduto WHERE venda = OLD.CODIGO;

	RETURN NEW;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE

CREATE TRIGGER validacao_excluir_venda BEFORE DELETE ON venda
FOR EACH ROW EXECUTE PROCEDURE valida_excluir_venda();

CREATE OR REPLACE FUNCTION valida_venda_produto() RETURNS TRIGGER AS $valida_venda_produto$
DECLARE
	rs RECORD;
BEGIN
	SELECT INTO rs codigo, preco, quantidade FROM produto WHERE codigo = NEW.PRODUTO;
	IF NOT FOUND THEN 
		RAISE EXCEPTION 'Codigo de produto nao encontrado';
	END IF;

	IF rs.quantidade - NEW.QUANTIDADE < 0 THEN 
		RAISE EXCEPTION 'Quantidade indisponivel. No estoque: %', rs.quantidade;
	END IF;

	IF NEW.QUANTIDADE <= 0 THEN 
		RAISE EXCEPTION 'Quantidade invalida';
	END IF;
	
	IF NEW.SENHA < 0 THEN 
		RAISE EXCEPTION 'Senha invalida';
	END IF;

	RETURN NEW;
END;
$valida_venda_produto$
LANGUAGE plpgsql;

CREATE TRIGGER validacao_venda_produto BEFORE INSERT OR UPDATE ON vendaproduto
FOR EACH ROW EXECUTE PROCEDURE valida_venda_produto();

CREATE OR REPLACE FUNCTION valida_venda_produto_after() RETURNS TRIGGER AS $valida_venda_produto_after$
DECLARE
	rs RECORD;
BEGIN
	SELECT INTO rs codigo, preco, quantidade FROM produto WHERE codigo = OLD.PRODUTO;
		
	/* Atualizar o valor da venda */
	UPDATE venda SET total = total + rs.preco*OLD.QUANTIDADE WHERE codigo = OLD.VENDA;
	/* Atualizar o estoque do produto*/ 
	UPDATE produto SET quantidade = quantidade - OLD.QUANTIDADE WHERE codigo = rs.codigo;
	
	RETURN OLD;
END;
$valida_venda_produto_after$
LANGUAGE plpgsql;

CREATE TRIGGER validacao_venda_produto_after AFTER INSERT OR UPDATE ON vendaproduto
FOR EACH ROW EXECUTE PROCEDURE valida_venda_produto_after();

CREATE OR REPLACE FUNCTION valida_excluir_item_venda() RETURNS TRIGGER AS $valida_excluir_item_venda$
DECLARE
	rs RECORD;
BEGIN
	/* revertendo estoque do produto a ser removido da venda */
	UPDATE produto SET quantidade = quantidade + OLD.QUANTIDADE;

	SELECT INTO rs preco FROM produto WHERE codigo = OLD.PRODUTO;
	
	UPDATE venda SET total = total - OLD.QUANTIDADE*rs.preco WHERE codigo = OLD.VENDA;

	RETURN OLD;
END;
$valida_excluir_item_venda$
LANGUAGE 'plpgsql';

CREATE TRIGGER valida_excluir_item_venda BEFORE DELETE ON vendaproduto
FOR EACH ROW EXECUTE PROCEDURE valida_excluir_item_venda();