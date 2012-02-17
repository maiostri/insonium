CREATE OR REPLACE FUNCTION inserirFornecedor(
	v_nome fornecedor.nome%TYPE,
	v_endereco fornecedor.endereco%TYPE,
	v_numero fornecedor.numero%TYPE,
	v_cidade fornecedor.cidade%TYPE,
	v_estado fornecedor.estado%TYPE)
RETURNS BOOLEAN AS '
DECLARE
BEGIN
	INSERT INTO fornecedor (nome, endereco, numero, cidade, estado) values (v_nome, v_endereco, v_numero, v_cidade, v_estado);
	COMMIT;
	
	EXCEPTION         
          WHEN OTHERS THEN
            BEGIN
              ROLLBACK;
              RAISE;
            END; 
        return yes;
END;'
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION excluirFornecedor (
	v_codigo fornecedor.codigo%TYPE)
RETURNS BOOLEAN AS '
DECLARE
BEGIN
	SELECT fornecedor FROM compra WHERE fornecedor = v_codigo;
	IF FOUND THEN
		RAISE EXCEPTION ''Fornecedor % possui compras. Remove-lo iria causar inconsistencias no banco. '', v_fornecedor;
	ELSE
		DELETE FROM fornecedor WHERE codigo = v_codigo;
		COMMIT;
	END IF;
END; '
LANGUAGE 'plpgsql';