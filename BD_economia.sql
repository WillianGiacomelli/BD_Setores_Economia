create database economia;

use economia;

create table setor(
	set_codigo int primary key,
    set_nome varchar(100) not null
);

create table subsetor(
	sub_codigo int primary key,
    sub_nome varchar(100) not null,
    set_codigo int,
    constraint fk_subsetor_setor foreign key (set_codigo) references setor (set_codigo)
);

create table segmento(
	seg_codigo int primary key,
    seg_nome varchar(100),
    sub_codigo int,
    constraint fk_segmento_subsetor foreign key (sub_codigo) references subsetor (sub_codigo)
);