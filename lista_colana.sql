create table pedidos(
    id int not null,
    status varchar(20) not null,
    valor decimal(10, 2),
    primary key(id, status)
)
partition by list columns(status) (
    partition P_aberto values in('aberto'),
    partition p_processando values in('processando'),
    partition p_finalizados values in('finalizados'),
    partition p_cancelado values in('cancelado')
);
insert into pedidos(id, status, valor) values
(1, 'aberto', 100.00),
(2, 'processando', 145.00),
(3, 'finalizados', 200.00),
(4, 'cancelado', 50.00),
(5, 'aberto', 190.00);

select * from pedidos where status = 'aberto';
