USE bd_vsconnect;

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Jessica",
    "jessica@email.com",
    "senai@134",
    "Rua Amadis, 50",
    "04221000",
    0
);

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
	 "Thiago Nascimento",
	 "thiago@email.com",
	 "senai@134",
     "Rua São José, 200 - Itapera - São Luís/MA",
	 "65092055",
	 0
 );
 
 INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
	 "Odirlei Assis",
	 "odirlei@email.com",
	 "senai@134",
     "Rua São José, 200 - Itapera - São Luís/MA",
	 "65092055",
	 0
 );
  
INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "css");

SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("4ab18d7a-6ed5-11ee-a7da-a4bb6d747a0f");

SELECT nome FROM tb_usuario;
 
DELETE FROM tb_usuario WHERE id = UUID_TO_BIN("f68234d2-6fa7-11ee-bee2-b445067b7ae9");

UPDATE tb_usuario SET tipo_usuario = 1 WHERE id = UUID_TO_BIN("3e702788-6ed1-11ee-a7da-a4bb6d747a0f"); 
 

SELECT * FROM tb_servico WHERE id_cliente = UUID_TO_BIN ("0b0cd7ee-6fa8-11ee-bee2-b445067b7ae9"); 


SELECT *, BIN_TO_UUID(id) FROM tb_servico;


INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("ca6be8c0-6fa6-11ee-bee2-b445067b7ae9"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("ca6be8c0-6fa6-11ee-bee2-b445067b7ae9"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("ca6be8c0-6fa6-11ee-bee2-b445067b7ae9"), NULL);

 
SELECT * FROM tb_tech_servico;

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("51a6fb2d-6fa7-11ee-bee2-b445067b7ae9"), UUID_TO_BIN("62fd10b0-6fa9-11ee-bee2-b445067b7ae9")
);

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("09c12db5-6ed3-11ee-a7da-a4bb6d747a0f"), UUID_TO_BIN("ca6be8c0-6fa6-11ee-bee2-b445067b7ae9")
);

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("02dbabee-6ed3-11ee-a7da-a4bb6d747a0f"), UUID_TO_BIN("03546817-6edf-11ee-a7da-a4bb6d747a0f")
);


SELECT * FROM tb_dev_tech;

INSERT INTO tb_tech_servico VALUES (
 UUID_TO_BIN("3e702788-6ed1-11ee-a7da-a4bb6d747a0f"), UUID_TO_BIN("a3d34689-6fa8-11ee-bee2-b445067b7ae9")
);

SELECT BIN_TO_UUID(id), nome, tipo_usuario from tb_usuario;
SELECT BIN_TO_UUID(id), nome from tb_tech;
SELECT BIN_TO_UUID(id), titulo from tb_servico;

SELECT * FROM tb_cotacao;

INSERT INTO tb_cotacao VALUES (
UUID_TO_BIN(UUID()),
UUID_TO_BIN("3e702788-6ed1-11ee-a7da-a4bb6d747a0f"),
UUID_TO_BIN("03542151-6edf-11ee-a7da-a4bb6d747a0f"),
5000.00
);