create table alunos(
    id int not null auto_increment,
    nome varchar(30) not null,
    sexo enum('M', 'F'),
    idade date,
    ano_ingresso int not null,
    curso varchar(50) not null,
    primary key(id, ano_ingresso) 
)
partition by range(ano_ingresso) (
    partition p2020 values less than (2021),
    partition p2021 values less than (2022),
    partition p2022 values less than (2023),
    partition p2023 values less than (2024),
    partition pmax values less than maxvalue
);

insert into alunos(nome, sexo, idade, ano_ingresso, curso) values
('Ana', 'M', '1989-05-12', 2020, 'Engenharia'),
('Bruna', 'F', '2001-12-1', 2021, 'Medicina'),
('Carlos', 'M', '2004-1-10', 2022, 'Direito'),
('Diana', 'F', '2002-3-15', 2023, 'Arquitetura'),
('Gabriel', 'M', '2001-10-22', 2021, 'Biologia');

select * from alunos where ano_ingresso = 2021;