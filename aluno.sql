create table alunos(
    id int auto_increment,
    nome varchar(30) not null,
    sexo enum('M', 'F'),
    email varchar(150) not null,
    curso varchar(100) not null,
    media float,
    situacao varchar(9),
    primary key(id)
);
