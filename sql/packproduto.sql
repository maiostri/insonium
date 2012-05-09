CREATE FUNCTION valida_produto() RETURNS TRIGGER AS $valida_produto$
BEGIN
	IF NEW.QUANTIDADE < 0 THEN 
		RAISE EXCEPTION 'Quantidade invalida';
	END IF;
	IF NEW.PRECO < 0 THEN 
		RAISE EXCEPTION 'Preco invalido';
	END IF;
	IF NEW.NOME IS NULL THEN 
		RAISE EXCEPTION 'Nome invalido';
	END IF;

	RETURN NEW;
END;
$valida_produto$
LANGUAGE plpgsql;

CREATE TRIGGER validacao_produto BEFORE INSERT OR UPDATE ON produto
FOR EACH ROW EXECUTE PROCEDURE valida_produto();

CREATE OR REPLACE FUNCTION valida_excluir_produto() RETURNS TRIGGER AS $valida_excluir_produto$
DECLARE
	rs RECORD;
BEGIN
	SELECT INTO rs produto FROM vendaproduto WHERE produto = NEW.CODIGO;
	
	IF FOUND THEN
		RAISE EXCEPTION 'Produto % esta presente em vendas efetuadas. Remove-lo iria causar inconsistencias no banco. ', NEW.CODIGO;
	END IF;
	
	SELECT INTO rs produto FROM compraproduto WHERE produto = NEW.CODIGO;
	IF FOUND THEN
		RAISE EXCEPTION 'Produto % esta presente em compras efetuadas. Remove-lo iria causar inconsistencias no banco. ', NEW.CODIGO;
	END IF;
END;
$valida_excluir_produto$
LANGUAGE 'plpgsql';

CREATE TRIGGER validacao_excluir_produto BEFORE DELETE ON produto
FOR EACH ROW EXECUTE PROCEDURE valida_excluir_produto();