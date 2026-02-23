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
