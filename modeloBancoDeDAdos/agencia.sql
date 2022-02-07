create database tb_agencia;
show databases;
use tb_agencia;
create table viagem(
	id int primary key auto_increment,
    nome varchar(50) not null,
    vlatu varchar(50) not null,
    vlanti varchar(50) not null
);
show tables;
describe viagem;

/*CRUD CREATE*/
insert into viagem (nome,vlatu,vlanti) values('chile','25000','12000');

/*CRUD READ*/
select * from viagem;
select * from  viagem order by nome;
select * from viagem where id=2;

/* CRUD UPDATE */
update viagem set nome ='Brasil' where id=2;

/* CRUD DELETE */
delete from viagem where id=2;

