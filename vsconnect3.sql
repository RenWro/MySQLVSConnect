USE bd_vsconnect2; 

SELECT *, BIN_TO_UUID(id) FROM tb_usuario;

SELECT MIN(proposta) FROM tb_servico;
SELECT MAX(proposta) FROM tb_servico;

SELECT titulo, proposta FROM tb_servico WHERE proposta = (SELECT MIN(proposta) FROM tb_servico);

SELECT titulo, proposta FROM tb_servico WHERE proposta = (SELECT MAX(proposta) FROM tb_servico);

SELECT COUNT(id) FROM tb_servico;

SELECT SUM(proposta) FROM tb_servico;

SELECT COUNT(tb_servico.id) AS 'Total Serviço', status_servico AS 'Status' 
FROM tb_servico WHERE status_servico = "Em andamento" GROUP BY status_servico; 


SELECT * FROM tb_servico ORDER BY titulo ASC;
SELECT * FROM tb_servico ORDER BY titulo DESC;

SELECT * FROM tb_tech_servico;

SELECT titulo AS 'Servico', tb_tech.nome AS 'Tecnologia' FROM tb_tech_servico
INNER JOIN tb_servico ON tb_tech_servico.id_servico = tb_servico.id
INNER JOIN tb_tech ON tb_tech_servico.id_tech = tb_tech.id;