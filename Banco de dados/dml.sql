USE NUTRICIONISTA_DB;

-- carga inicial usuário admin
INSERT INTO TB_NUTRICIONISTA (NM_NUTRICIONISTA, DS_EMAIL, DS_SENHA)
     VALUES ('sheilameireles1234@admin.com.br', '1234554321');


-- CSU01:: efetuar login
select ID_NUTRICIONISTA 		id,
       DS_EMAIL			email
  from TB_NUTRICIONISTA
 where DS_EMAIL 		= 'sheilameireles1234@admin.com.br'
   and DS_SENHA			= '1234554321';

INSERT INTO TB_PACIENTE (NM_PACIENTE, DS_CPF, DT_NASCIMENTO, DS_ASSUNTO,DS_EMAIL, DS_TELEFONE)
VALUES ('EDUARDA', '598.485.546-69', '2000.03.08', 'Estou com dificuldades para emagrecer', 'eduardalopes221@gmail.com', '11 96581-2134'); 


-- CSU03:: Efetuar novas consultas
INSERT INTO TB_CONSULTA (ID_PACIENTE, NM_PACIENTE, DS_ASSUNTO, VL_PRECO, DT_CONSULTA)
     VALUES (1, 'Eduarda de Oliveira', 'Estou com dificuldades para emagracer', 15.4, '2021.03.04 09:05:00');

-- CSU04:: remover consulta
DELETE FROM TB_CONSULTA
      WHERE ID_CONSULTA = 1;


-- CSU08:: alterar anotações consulta
UPDATE TB_CONSULTA
   SET DS_ASSUNTO   = 'Estou com dificuldades para emagracer',
 WHERE ID_PACIENTE = 1;


