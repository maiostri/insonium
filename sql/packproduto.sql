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