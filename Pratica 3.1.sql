Create database siteCurso;
Use siteCurso;

create table tbl_Aluno(
COD int primary key auto_increment,
NOME varchar(30),
ESTADO varchar(2),
CIDADE varchar(30),
TELEFONE bigint(9)
);
insert into tbl_Aluno values
(0,"João", "SP", "Campinas", 997989495),
(0,"Ana", "SP", "São Paulo", 997989495),
(0, "Marcia", "RJ", "Rio de Janeiro", 997989495),
(0,"Carlos", "SP", "Campinas", 997989495),
(0,"Mario", "SP", "Piracicaba", 997989495),
(0,"Patricia", "MG", "Belo Horizonte", 997989495),
(0,"Paulo", "SP", "Valinos", 997989495);

create table tbl_Curso(
ID int primary key auto_increment,
NOME varchar(30),
VALOR decimal(8,2),
CARGA_HORARIA int
);

insert tbl_Curso values
(0, "Oracle PL/SQL", 500, 25),
(0, "MySQL", 499, 25),
(0, "Java Fundamentos", 800, 40),
(0, "Cisco CCNA", 1000, 40);

create table tbl_Contrato(
NUMERO int primary key,
DATA date,
tbl_Aluno_COD int not null,
tbl_Curso_ID int not null,
foreign key(tbl_Aluno_COD) references tbl_Aluno(COD),
foreign key(tbl_Curso_ID) references tbl_Curso(ID)
);

insert tbl_Contrato values (1, current_date, 1, 4),
(2, current_date +2, 2, 3),
(3, current_date +3, 3, 2),
(4, current_date +1, 4, 1),
(5, current_date -2, 5, 4),
(6, current_date -5, 6, 3),
(7, current_date -3, 6, 2),
(8, current_date -1, 1, 1),
(9, current_date, 2, 2),
(10, current_date +1, 5, 3);

SELECT table