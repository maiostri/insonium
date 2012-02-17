CREATE OR REPLACE FUNCTION inserirVenda()
RETURNS boolean AS '
DECLARE
	v_chave integer;	
BEGIN
	v_chave = nextval(''seqvenda'');
	INSERT INTO venda (codigo, total, data) values (v_chave, 0, current_timestamp);
	COMMIT;
	
	EXCEPTION         
          WHEN OTHERS THEN
            BEGIN
              ROLLBACK;
              RAISE;
            END; 
        return yes;
END; '
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION inserirProdutoVenda(
	v_venda 	IN		venda.codigo%TYPE,
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
		/* Verificar se o produto esta disponivel */
		IF (rs.quantidade > 0) THEN
			/* Verificar se a quantidade solicitada esta disponivel */
			IF (v_quantidade- rs.quantidade > 0) THEN
				
				/* Inserir produto na venda */
				INSERT INTO vendaproduto(venda, produto, quantidade) values
				( v_venda, rs.codigo, v_quantidade);
				
				/* Atualizar estoque */
				UPDATE produto SET quantidade = rs.quantidade - v_quantidade WHERE codigo = v_produto;
			
				/* Recalcular valor da venda */
				UPDATE venda SET total = total + v_produto*v_quantidade;
				
				COMMIT;
			ELSE 
				RAISE EXCEPTION ''Quantidade solicitada indisponivel. Em estoque: '', rs.quantidade;
			END IF;
		ELSE
			RAISE EXCEPTION ''Produto % indisponivel'', v_produto;
		END IF;
	ELSE
		RAISE EXCEPTION ''Produto % inexistente'', v_produto;
	END IF;
END;'
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION excluirVenda(
	v_venda IN venda.codigo%TYPE)
RETURNS boolean AS '
BEGIN
	DELETE FROM vendaproduto WHERE venda = v_venda;
	DELETE FROM venda where codigo = v_venda;
	COMMIT;
	EXCEPTION         
          WHEN OTHERS THEN
            BEGIN
              ROLLBACK;
              RAISE;
            END; 
END; '
LANGUAGE plpgsql;
