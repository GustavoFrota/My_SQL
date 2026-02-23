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