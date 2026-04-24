create table Pessoa(
	pk_pessoa serial primary key,
	nome varchar(100) not null,
	idade int,
	cidade text
);

create table Produto(
	pk_produto serial primary key,
	nome varchar(100) not null,
	valor numeric(10, 2),
	estoque int
);

insert into Pessoa (nome, idade, cidade)
values ('João Silva', 25, 'Curitiba'),
		('Maria Oliveira', 30, 'São Paulo'),
		('Carlos Souza', 18, 'Araucária');

insert into Produto (nome, valor, estoque)
values ('Teclado Mecânico', 250.00, 15),
		('Mouse Gamer', 120.00, 20),
		('Monitor 24pol', 850.00, 5);

select nome as "Pessoa", cidade as "Cidade"
from Pessoa;

select *
from Produto
where valor >= 200.00;

select *
from Pessoa
where cidade = 'Curitiba';

update Pessoa
set idade = 26
where pk_pessoa = 1;
	--select * from Pessoa;

select * 
from Produto
where nome = 'Mouse Gamer';

update Produto
set valor = 135.00
where pk_produto = 2;

update Produto
set estoque = 4
where pk_produto = 3;

delete from Pessoa
where pk_pessoa = 3;

delete from Produto
where nome = 'Teclado Mecânico';

select nome as "Nome do Item", valor
from Produto;

