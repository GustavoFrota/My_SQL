create table if not exists cursos(
    nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    total_aulas int unsigned,
    ano year default '2016'
);

alter table cursos
add id_curso int first;

alter table
add primary key(id_curso);

insert into cursos(id_curso, nome, descricao, carga, total_aulas, ano) values
(1, 'HTML4', 'Curso de HTML5', 40, 37, '2014'),
(2, 'Algoritmos', 'Lógica de Programação', 20, 15, '2014'),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, '2014'),
(4, 'PGP', 'Curso de PHP para iniciantes', 40, 20, '2010'),
(5, 'Jarva', 'Introdução à Linguagem Java', 10, 29, '2000'),
(6, 'MySQL', 'Bancos de Dados MySQL', 30, 15, default),
(7, 'World', 'Curso completo de world', 40, 30, default),
(8, 'Sapateado', 'Danças Rítimicas', 40, 30, '2018'),
(9, 'Cozinha Árabe', 'Aprender a fazer Kibe', 40, 30, '2018'),
(10, 'YouTuber', 'Gerar polêmica e ganhar inscritos', 5, 2, '2018');

select * from cursos;