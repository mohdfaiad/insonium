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