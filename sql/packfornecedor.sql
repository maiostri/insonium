CREATE OR REPLACE FUNCTION valida_fornecedor() RETURNS TRIGGER AS $valida_fornecedor$
BEGIN
	IF NEW.NOME IS NULL THEN 
		RAISE EXCEPTION 'Nome invalido';
	END IF;
	IF NEW.ENDERECO IS NULL THEN 
		RAISE EXCEPTION 'Endereco invalido';
	END IF;
	IF NEW.ESTADO IS NULL THEN 
		RAISE EXCEPTION 'Estado invalido';
	END IF;
	IF NEW.CIDADE IS NULL THEN 
		RAISE EXCEPTION 'Cidade invalida';
	END IF;
	IF NEW.NUMERO < 0 THEN 
		RAISE EXCEPTION 'Numero invalido';
	END IF;
	RETURN NEW;
END;
$valida_fornecedor$
LANGUAGE plpgsql;

CREATE TRIGGER validacao_fornecedor BEFORE INSERT OR UPDATE ON fornecedor
FOR EACH ROW EXECUTE PROCEDURE valida_fornecedor();

CREATE OR REPLACE FUNCTION valida_excluir_fornecedor() RETURNS TRIGGER AS $valida_excluir_fornecedor$
DECLARE
	rs RECORD;
BEGIN
	SELECT INTO rs fornecedor FROM compra WHERE fornecedor = NEW.CODIGO;
	
	IF FOUND THEN
		RAISE EXCEPTION 'Fornecedor % esta presente em compras efetuadas. Remove-lo iria causar inconsistencias no banco. ', NEW.CODIGO;
	END IF;
	RETURN NEW;
END;
$valida_excluir_fornecedor$
LANGUAGE 'plpgsql';

CREATE TRIGGER validacao_excluir_fornecedor BEFORE DELETE ON fornecedor
FOR EACH ROW EXECUTE PROCEDURE valida_excluir_fornecedor();