-- Distribuição de clientes ativos por perfil (Premium / Tradicional)

CREATE VIEW vw_clientes_ativos_por_perfil AS
SELECT
    perfil_cliente,
    COUNT(*) AS total_clientes
FROM vw_clientes_ativos
GROUP BY perfil_cliente;
