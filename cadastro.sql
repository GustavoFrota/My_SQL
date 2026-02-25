create table cadastro(
    id int not null auto_increment,
    nome varchar(30) not null,
    nascimento date,
    sexo enum('M', 'F'),
    peso decimal(5, 2),
    altura decimal(3, 2),
    nacionalidade varchar(20) default 'Brasil',
    primary key(id)
);
insert into cadastro(nome, nascimento, sexo, peso, altura, nacionalidade) values
('Gabriel', '2007-01-02', 'M', 78.5, 1.83, default),
('Maria', '1999-12-30', 'F', 55.2, 1.65, 'Portugal'),
('Creusa', '1920-11-25', 'F', 50.2, 1.65, default),
('Adalgiza', '1930-11-2', 'F', 63.2, 1.75, 'Irlanda'),
('Ana', '1975-12-22', 'F', 52.3, 1.43, 'EUA'),
('Pedro', '2000-05-30', 'M', 75.9, 1.70, default);

alter table cadastro
add profissao varchar(10) after nome;

alter table cadastro
modify profissao varchar(20);

alter table cadastro
change profissao prof varchar(20);

select * from cadastro;
