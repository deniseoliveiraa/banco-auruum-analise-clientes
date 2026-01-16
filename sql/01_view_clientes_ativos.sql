-- View base com clientes ativos
-- Utilizada como fonte para todas as análises do projeto

CREATE VIEW vw_clientes_ativos AS
SELECT
    cliente_id,
    segmento_cliente,
    perfil_cliente,
    regiao,
    data_entrada
FROM dim_cliente
WHERE status_cliente = 'Ativo';



