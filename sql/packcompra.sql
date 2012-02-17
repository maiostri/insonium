CREATE OR REPLACE FUNCTION inserirCompra(
	v_fornecedor	IN	fornecedor.codigo%TYPE)
RETURNS boolean AS '
DECLARE
	v_chave integer;
BEGIN
	v_chave = nextval(''seqcompra'');
	INSERT INTO compra (codigo, fornecedor, total, data) values (v_chave, v_fornecedor, 0, current_timestamp);
	COMMIT;
	
	EXCEPTION         
          WHEN OTHERS THEN
            BEGIN
              ROLLBACK;
              RAISE;
            END; 
END; '
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION inserirProdutoCompra(
	v_compra 	IN		compra.codigo%TYPE,
	v_produto	IN		produto.codigo%TYPE,
	v_quantidade	IN		produto.quantidade%TYPE)
RETURNS boolean AS '
DECLARE
	rs RECORD;
BEGIN
	/* Buscar o produto */
	SELECT INTO rs codigo, quantidade FROM PRODUTO WHERE codigo = v_produto;
	
	/* Produto encontrado */
	IF FOUND THEN
		/* Inserir produto na compra */
		INSERT INTO compraproduto(compra, produto, quantidade) values
				( v_compra, rs.codigo, v_quantidade);
				
		/* Atualizar estoque */
		UPDATE produto SET quantidade = rs.quantidade + v_quantidade WHERE codigo = v_produto;
		
		/* Recalcular valor da compra */
		UPDATE compra SET total = total + v_produto*v_quantidade;
				
		COMMIT;
	ELSE 
		RAISE EXCEPTION ''Produto de codigo % nao encontrado: '', v_produto;
	END IF;	
END;'
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION excluirCompra(
	v_compra IN compra.codigo%TYPE)
RETURNS boolean AS '
BEGIN
	DELETE FROM compraproduto WHERE compra = v_compras;
	DELETE FROM compra where codigo = v_compra;
	COMMIT;
	EXCEPTION         
          WHEN OTHERS THEN
            BEGIN
              ROLLBACK;
              RAISE;
            END; 
END; '
LANGUAGE plpgsql;
