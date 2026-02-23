create table lista(
    id int not null,
    clientes_id int not null,
    status_id varchar(20) not null,
    valor decimal(10, 2),
    status_id int not null,
    primary key(id, status_id)
)
partition by list(status_id) (
    partition p_pendentes values in (1, 2),
    partition p_finalizados values in (3, 4),
    partition p_cancelados values in (5);
);

insert into lista(id, clientes_id, status_id, valor, status_id) values
(1, 101, 'pendente', 1, 150.00),
(2, 102, 'concluído', 3, 200.00),
(3, 103, 'cancelado', 5, 50.00),
(4, 104, 'em_analise', 2, 120.00),
(5, 105, 'entregue', 4, 300.00);

select * from lista where status_id = 'concluído';