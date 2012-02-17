CREATE OR REPLACE FUNCTION inserirProduto(
	v_nome IN produto.nome%TYPE, 
	v_preco IN produto.preco%TYPE, 
	v_quantidade IN produto.quantidade%TYPE) 
RETURNS BOOLEAN AS '
DECLARE
BEGIN
	INSERT INTO produto (nome, preco, quantidade) values (v_nome, v_preco, v_quantidade);
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

CREATE OR REPLACE FUNCTION excluirProduto (
	v_codigo produto.codigo%TYPE)
RETURNS BOOLEAN AS '
DECLARE
BEGIN
	SELECT produto FROM vendaproduto WHERE produto = v_codigo;
	
	IF FOUND THEN
		RAISE EXCEPTION ''Produto % esta presente em vendas efetuadas. Remove-lo iria causar inconsistencias no banco. '', v_codigo;
	END IF;
	
	SELECT produto FROM compraproduto WHERE produto = v_codigo;
	IF FOUND THEN
		RAISE EXCEPTION ''Produto % esta presente em compras efetuadas. Remove-lo iria causar inconsistencias no banco. '', v_codigo;
	ELSE
		DELETE FROM produto WHERE codigo = v_codigo;
		COMMIT;
	END IF;
END; '
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION atualizarProduto(
	v_codigo IN produto.codigo%TYPE,
	v_nome IN produto.nome%TYPE, 
	v_preco IN produto.preco%TYPE, 
	v_quantidade IN produto.quantidade%TYPE) 
RETURNS BOOLEAN AS '
DECLARE
BEGIN
	SELECT codigo FROM produto WHERE codigo = v_codigo;
	IF FOUND THEN
		IF (v_quantidade > 0) THEN 
			UPDATE produto SET nome = v_nome, preco =  v_preco, quantidade = v_quantidade
			WHERE codigo = v_codigo;
			COMMIT;
		ELSE
			RAISE EXCEPTION ''Quantidade informada % invalida.'', v_quantidade;
		END IF;
	ELSE
		RAISE EXCEPTION ''Produto nao encontrado.'';
	END IF;
	EXCEPTION         
          WHEN OTHERS THEN
            BEGIN
              ROLLBACK;
              RAISE;
            END; 
        return yes;
END;'
LANGUAGE 'plpgsql';