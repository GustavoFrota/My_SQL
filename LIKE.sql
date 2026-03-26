create table clientes (
    id int primary key auto_increment,
    nome varchar(30) not null,
    data_nascimento date not null,
    email varchar(100)
);
insert into clientes(nome, data_nascimento, email) values
('Gael', '2001-03-15', 'gael@gmail.com'),
('Maria', '1989-05-20', 'maria@gmail.com'),
('Gabriela', '2003-01-21', 'gabi@gmail.com'),
('Mario', '1998-08-19', 'mario@gmail.com');

select nome from clientes where nome like 'G%';