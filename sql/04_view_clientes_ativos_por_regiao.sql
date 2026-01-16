-- Distribuição de clientes ativos por região

CREATE VIEW vw_clientes_ativos_por_regiao AS
SELECT
    regiao,
    COUNT(*) AS total_clientes
FROM vw_clientes_ativos
GROUP BY regiao;
