-- Evolução da base de clientes ativos ao longo do tempo (anual)

CREATE VIEW vw_evolucao_clientes_por_ano AS
SELECT
    YEAR(data_entrada) AS ano,
    COUNT(*) AS total_clientes
FROM vw_clientes_ativos
GROUP BY YEAR(data_entrada)
ORDER BY ano;
