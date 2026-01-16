-- Distribuição de clientes Premium ativos por região

CREATE VIEW vw_clientes_premium_por_regiao AS
SELECT
    regiao,
    COUNT(*) AS total_clientes
FROM vw_clientes_ativos
WHERE perfil_cliente = 'Premium'
GROUP BY regiao;
