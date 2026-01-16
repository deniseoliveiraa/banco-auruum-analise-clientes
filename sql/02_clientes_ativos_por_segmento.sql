-- Distribuição de clientes ativos por segmento (PF / PJ)

CREATE VIEW vw_clientes_ativos_por_segmento AS
SELECT
    segmento_cliente,
    COUNT(*) AS total_clientes
FROM vw_clientes_ativos
GROUP BY segmento_cliente;
