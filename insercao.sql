SELECT * FROM departamento;
SELECT * FROM funcionario;
SELECT * FROM funcionario f INNER JOIN departamento d ON f.cpf =
d.cpf_gerente;
-- DEPARTAMENTO
insert into DEPARTAMENTO values ('Pesquisa', 5, null, '22-05-1988');
insert into DEPARTAMENTO values ('Administração', 4, null,
'01-01-1995');
insert into DEPARTAMENTO values ('Matriz', 1, null, '19-06-1981');
-- FUNCIONARIO
insert into FUNCIONARIO values ('Jorge', 'E', 'Brito', 88866555576,
'10-11-1937', 'Rua do Horto, 35, São Paulo, SP', 'M', 55000,
NULL, 1);
insert into FUNCIONARIO values ('Fernando', 'T', 'Wong' , 33344555587,
'08-12-1955', 'Rua da Lapa, 34, São Paulo, SP', 'M', 40000,
88866555576, 5);
insert into FUNCIONARIO values ('Jennifer', 'S', 'Souza', 98765432168,
'20-06-1941', 'Av. Arthur de Lima, 54, Santo André, SP', 'F', 43000,
88866555576, 4);
insert into FUNCIONARIO values ('Alice', 'J', 'Zelaya', 99988777767,
'19-01-1968', 'Rua Souza Lima, 35, Curitiba, PR', 'F', 25000,
98765432168, 4);
insert into FUNCIONARIO values ('André', 'V', 'Pereira', 98798798733,
'29-03-1969', 'Rua Timbira, 35, São Paulo, SP', 'M', 25000,
98765432168, 4);
insert into FUNCIONARIO values ('Ronaldo', 'K', 'Lima',
66688444476, '15-09-1962', 'Rua Rebouças, 65, Piracicaba, SP',
'M', 38000, 33344555587, 5);
insert into FUNCIONARIO values ('Joice', 'A', 'Leite',
45345345376, '31-07-1972', 'Av. Lucas Obes, 74, São Paulo, SP',
'F', 25000, 33344555587, 5);
insert into FUNCIONARIO values ('João', 'B', 'Silva',
12345678966, '09-01-1965', 'Rua das Flores, 751, São Paulo, SP',
'M', 30000, 33344555587, 5);
-- DEPARTAMENTO (UPDATE)
UPDATE departamento SET departamento.cpf_gerente = 33344555587
WHERE departamento.numero_departamento = 5;
UPDATE departamento SET departamento.cpf_gerente = 98765432168
WHERE departamento.numero_departamento = 4;
UPDATE departamento SET departamento.cpf_gerente = 88866555576
WHERE departamento.numero_departamento = 1;
-- LOCALIZACOES_DEPARTAMENTO
insert into LOCALIZACOES_DEPARTAMENTO values (1, 'São Paulo');
insert into LOCALIZACOES_DEPARTAMENTO values (4, 'Mauá');
insert into LOCALIZACOES_DEPARTAMENTO values (5, 'Santo André');
insert into LOCALIZACOES_DEPARTAMENTO values (5, 'Itu');
insert into LOCALIZACOES_DEPARTAMENTO values (5, 'São Paulo');
-- PROJETO
insert into PROJETO values ('ProdutoX', 1, 'Santo André', 5);
insert into PROJETO values ('ProdutoY', 2, 'Itu', 5);
insert into PROJETO values ('ProdutoZ', 3, 'São Paulo', 5);
insert into PROJETO values ('Informatização', 10, 'Mauá', 4);
insert into PROJETO values ('Reorganização', 20, 'São Paulo', 1);
insert into PROJETO values ('Novosbenefícios', 30, 'Mauá', 4);
-- TRABALHA EM
insert into TRABALHA_EM values (12345678966, 1, 32.5);
insert into TRABALHA_EM values (12345678966, 2, 7.5);
insert into TRABALHA_EM values (66688444476, 3, 40.0);
insert into TRABALHA_EM values (45345345376, 1, 20.0);
insert into TRABALHA_EM values (45345345376, 2, 20.0);
insert into TRABALHA_EM values (33344555587, 2, 10.0);
insert into TRABALHA_EM values (33344555587, 3, 10.0);
insert into TRABALHA_EM values (33344555587, 10, 10.0);
insert into TRABALHA_EM values (33344555587, 20, 10.0);
insert into TRABALHA_EM values (99988777767, 30, 30.0);
insert into TRABALHA_EM values (99988777767, 10, 10.0);
insert into TRABALHA_EM values (98798798733, 10, 35.0);
insert into TRABALHA_EM values (98798798733, 30, 5.0);
insert into TRABALHA_EM values (98765432168, 30, 20.0);
insert into TRABALHA_EM values (98765432168, 20, 15.0);
insert into TRABALHA_EM values (88866555576, 20, NULL);
-- DEPENDENTE
insert into DEPENDENTE values (33344555587, 'Alicia', 'F',
'05-04-1986', 'Filha');
insert into DEPENDENTE values (33344555587, 'Tiago', 'M', '25-10-1983',
'Filho');
insert into DEPENDENTE values (33344555587, 'Janaina', 'F',
'03-05-1958', 'Esposa');
insert into DEPENDENTE values (12345678966, 'Michael', 'M',
'04-01-1988', 'Filho');
insert into DEPENDENTE values (12345678966, 'Alicia', 'F',
'30-15-1988', 'Filha');
insert into DEPENDENTE values (12345678966, 'Elizabeth', 'F',
'05-05-1967', 'Esposa')
