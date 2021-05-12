/*O segundo campo, nome do aluno;
O terceiro campo, nome da escola;
O quarto campo, o esporte preferido;
O quinto campo, idade do aluno;
O primeiro campo, RA do aluno;
O quarto campo, altura do aluno;
*/
create database volei;
Use volei;

CREATE TABLE alunos(
RA int primary key,
Nome varchar(30) not null,
Escola varchar(30) not null,
Esporte varchar(30) not null,
Idade int not null,
Altura decimal(3,2) not null
);

INSERT alunos VALUES
(1000, "Aluno_A", "Escola ABC", "Futebol", 14, 1.75),
(1001, "Aluno_B", "Escola ABC", "Volei", 15, 1.80),
(1002, "Aluno_C", "Escola ABC", "Volei", 14, 1.70),
(1007, "Aluno_A", "Escola ZWQ", "Basquete", 14, 1.75),
(1008, "Aluno_F", "Escola ZWQ", "Basquete", 14, 1.75),
(1009, "Aluno_H", "Escola ZWQ", "Futebol", 14, 1.75),
(1109, "Aluno_A", "Escola MMM", "Volei", 14, 1.70),
(1200, "Aluno_B", "Escola MMM", "Futebol", 14, 1.72),
(1201, "Aluno_A", "Escola MMM", "Volei", 16, 1.85),
(1202, "Aluno_C", "Escola MMM", "Futebol", 17, 1.77),
(1203, "Aluno_K", "Escola MMM", "Volei", 18, 1.60),
(1104, "Aluno_B", "Escola BBB", "Futebol", 14, 1.75),
(1105, "Aluno_C", "Escola BBB", "Futebol", 14, 1.75),
(1106, "Aluno_F", "Escola BBB", "Futebol", 14, 1.75),
(1100, "Aluno_P", "Escola ZWQ", "Futebol", 14, 1.75),
(1101, "Aluno_U", "Escola ZWQ", "Futebol", 14, 1.75),
(1204, "Aluno_L", "Escola MMM", "Basquete", 13, 1.80),
(1205, "Aluno_M", "Escola MMM", "Futebol", 14, 1.70),
(1206, "Aluno_R", "Escola MMM", "Futebol", 15, 1.73),
(1207, "Aluno_T", "Escola MMM", "Futebol", 15, 1.80),
(1003, "Aluno_D", "Escola ABC", "Futebol", 17, 1.85),
(1004, "Aluno_E", "Escola ABC", "Volei", 14, 1.73),
(1005, "Aluno_F", "Escola ABC", "Futebol", 15, 1.85),
(1006, "Aluno_G", "Escola ABC", "Basquete", 15, 1.60),
(1102, "Aluno_Z", "Escola ZWQ", "Volei", 18, 1.83),
(1103, "Aluno_V", "Escola ZWQ", "Volei", 16, 1.75),
(1107, "Aluno_T", "Escola BBB", "Volei", 14, 1.65),
(1108, "Aluno_Y", "Escola BBB", "Futebol", 14, 1.75),
(1208, "Aluno_Y", "Escola MMM", "Volei", 17, 1.77),
(1209, "Aluno_O", "Escola MMM", "Futebol", 16, 1.78),
(1300, "Aluno_P", "Escola MMM", "Basquete", 16, 1.79);

SELECT RA, Nome, Escola 
from volei.alunos 
where Altura > 1.75 and Esporte = "Volei"
;

SELECT RA, Nome, Escola, Esporte
from volei.alunos 
where Altura >= 1.80 and Esporte <> "Volei";

select  RA, Nome, Escola, Esporte
from (
		SELECT *
		from volei.alunos 
        where esporte <> "Volei"
	) as ExemploDeSubquery
where Altura >= 1.80 ;