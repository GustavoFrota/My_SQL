create table pedidos(
    id int not null,
    cliente varchar(50) not null,
    valor decimal not null,
    regiao int not null,
    primary key(id, regiao)
)
partition by list(regiao) (
    partition p_norte values in (1),
    partition p_nordeste values in (2),
    partition p_centro_oeste values in (3),
    partition p_sudeste values in (4),
    partition p_sul values in (5)
);
insert into pedidos(id, cliente, valor, regiao) values
(1, 'Carlos', 300.00, 1),
(2, 'Maria', 200.43, 2),
(3, 'João', 451.01, 3),
(4, 'Pedro', 367.00, 4),
(5, 'Ana', 100.00, 5),
(6, 'Gustavo', 50.00, 2);

select * from pedidos where regiao = 2