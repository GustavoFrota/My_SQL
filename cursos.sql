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