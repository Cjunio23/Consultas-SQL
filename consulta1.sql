CREATE TABLE departamento (
nome_departamento VARCHAR2(50) NOT NULL,
numero_departamento NUMBER(1) NOT NULL,
cpf_gerente NUMBER(11),
data_inicio_gerente DATE NOT NULL
);
ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY
KEY ( numero_departamento );
ALTER TABLE departamento ADD CONSTRAINT departamento__un UNIQUE (
cpf_gerente,
nome_departamento );
CREATE TABLE dependente (
cpf_dependente NUMBER(11) NOT NULL,
nome_dependente VARCHAR2(80) NOT NULL,
sexo VARCHAR2(1) NOT NULL,
data_nascimento VARCHAR2(10) NOT NULL,
parentesco VARCHAR2(20) NOT NULL
);
ALTER TABLE dependente
ADD CONSTRAINT dependente_sexo_ck_1 CHECK ( sexo IN ( 'F', 'M'
) );
ALTER TABLE dependente
ADD CONSTRAINT dependente_parentesco_ck_2 CHECK ( parentesco
IN ( 'Filho', 'Filha', 'Esposo', 'Esposa' ) );
CREATE TABLE funcionario (
primeiro_nome VARCHAR2(80) NOT NULL,
segundo_nome VARCHAR2(80) NOT NULL,
ultimo_nome VARCHAR2(80) NOT NULL,
cpf NUMBER(11) NOT NULL,
data_nascimento DATE NOT NULL,
endereco VARCHAR2(100) NOT NULL,
sexo VARCHAR2(1) NOT NULL,
salario NUMBER(8, 2) NOT NULL,
cpf_supervisor NUMBER(11),
numero_departamento NUMBER(1) NOT NULL
);
ALTER TABLE funcionario ADD constraint funcionario_salario_ck_1
CHECK (1000 <= Salario AND Salario <= 100000)
;
ALTER TABLE funcionario
ADD CONSTRAINT funcionario_sexo_ck_2 CHECK ( sexo IN ( 'F',
'M' ) );
ALTER TABLE funcionario ADD CONSTRAINT funcionario_pk PRIMARY KEY
( cpf );
CREATE TABLE localizacoes_departamento (
numero_departamento NUMBER(1) NOT NULL,
local VARCHAR2(70) DEFAULT 'Belo Horizonte' NOT
NULL
);
ALTER TABLE localizacoes_departamento ADD CONSTRAINT "LOCALIZACOES
DEPARTAMENTO_PK" PRIMARY KEY ( numero_departamento,
local );
CREATE TABLE projeto (
nome_projeto VARCHAR2(80) NOT NULL,
numero_projeto NUMBER(3) NOT NULL,
local_projeto VARCHAR2(70) NOT NULL,
numero_departamento NUMBER(1) NOT NULL
);
ALTER TABLE projeto ADD CONSTRAINT projeto_pk PRIMARY KEY (
numero_projeto );
CREATE TABLE trabalha_em (
cpf_funcionario NUMBER(11) NOT NULL,
numero_projeto NUMBER(3) NOT NULL,
horas NUMBER(3, 1)
);
ALTER TABLE departamento
ADD CONSTRAINT departamento_funcionario_fk FOREIGN KEY (
cpf_gerente )
REFERENCES funcionario ( cpf );
ALTER TABLE dependente
ADD CONSTRAINT dependente_funcionario_fk FOREIGN KEY (
cpf_dependente )
REFERENCES funcionario ( cpf )
ON DELETE CASCADE;
ALTER TABLE funcionario
ADD CONSTRAINT funcionario_departamento_fk FOREIGN KEY (
numero_departamento )
REFERENCES departamento ( numero_departamento );
ALTER TABLE funcionario
ADD CONSTRAINT funcionario_funcionario_fk FOREIGN KEY (
cpf_supervisor )
REFERENCES funcionario ( cpf );
-- ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE localizacoes_departamento
ADD CONSTRAINT "LOCALIZACOES DEPARTAMENTO_DEPARTAMENTO_FK"
FOREIGN KEY ( numero_departamento )
REFERENCES departamento ( numero_departamento )
ON DELETE CASCADE;
ALTER TABLE projeto
ADD CONSTRAINT projeto_departamento_fk FOREIGN KEY (
numero_departamento )
REFERENCES departamento ( numero_departamento );
ALTER TABLE trabalha_em
ADD CONSTRAINT trabalha_em_funcionario_fk FOREIGN KEY (
cpf_funcionario )
REFERENCES funcionario ( cpf );
ALTER TABLE trabalha_em
ADD CONSTRAINT trabalha_em_projeto_fk FOREIGN KEY (
numero_projeto )
REFERENCES projeto ( numero_projeto )
