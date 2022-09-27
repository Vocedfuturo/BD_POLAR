create database  bd_alfa;
use bd_alfa;

create table login(
id_login int auto_increment,
email varchar(60),
senha varchar(60),
primary key(id_login)
)default charset=utf8;

create table cliente(
id_cliente int auto_increment,
telefone varchar(60),
nome varchar(60),
endereco varchar(60),
ponto_referencia varchar(60),
data_nasc date,
primary key(id_cliente)
)default charset=utf8;


create table empresa(
id_empresa int auto_increment,
nome varchar(60),
cnpj varchar(60),
email varchar(60),
telefone varchar(60),
endereco varchar(60),
primary key(id_empresa)
)default charset=utf8;


create table entregador(
id_entregador int auto_increment,
id_empresa int,
nome varchar(60),
cpf varchar(60),
rg varchar(60),
celular varchar(60),
primary key(id_entregador)
)default charset=utf8;


create table pedido(
id_pedido int auto_increment,
telefone_cliente varchar(60),
id_entregador int,
estatus varchar(60),
taxa_entrega varchar(60),
data_ped date,
primary key(id_pedido)
)default charset=utf8;


create table marmita(
id_marmita int auto_increment,
nome varchar(60),
descricao varchar(60),
tamanho varchar(60),
valor varchar(60),
primary key(id_marmita)
)default charset=utf8;


create table item_pedido(
id_item_pedido int auto_increment,
id_marmita int,
id_pedido int,
quantidade int,
primary key(id_item_pedido)
)default charset=utf8;


