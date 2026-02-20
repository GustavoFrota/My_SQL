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

insert into(nome, sexo, email, curso, media, situacao) values
    ('Gustavo', 'M', 'gustavofro90@gmail.com', 'Análise de Dados', 7.8, 'Aprovado'),
    ('Maria', 'F', 'mariasantos@gmail.com', 'Enfermagem', 6.8, 'Reprovado'),
    ('Gabriel', 'M', 'gabriel40@gmail.com', 'Direito', 9.0, 'Aprovado');

update alunos
set curso = 'Medicina', media = 7.0, situacao = 'Aprovado'
where id = 2;

select * from alunos;