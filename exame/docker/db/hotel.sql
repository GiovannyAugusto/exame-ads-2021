create database ads;
use ads;

create table quartos(
id int not null,
categoria varchar(90),
primary key (id));

insert into quartos (id, categoria) values (1, 'Luxo');
insert into quartos (id, categoria) values (2, 'Padrão');
insert into quartos (id, categoria) values (3, 'Baixo custo');
insert into quartos (id, categoria) values (4, 'Luxo');
insert into quartos (id, categoria) values (5, 'Padrão');
insert into quartos (id, categoria) values (6, 'Baixo custo');
insert into quartos (id, categoria) values (7, 'Luxo');
insert into quartos (id, categoria) values (8, 'Padrão');
insert into quartos (id, categoria) values (9, 'Baixo custo');
insert into quartos (id, categoria) values (10, 'Luxo');

create table quartoCtego(
categoria varchar(90),
primary key (categoria));

insert into quartoCtego (categoria)
values ("Luxo"));
insert into quartoCtego (categoria)
values ("Padrão"));
insert into quartoCtego (categoria)
values ("Baixo custo"));

create table hospedes(
nome varchar(250),
cpf int,
telefone int,
endereco varchar(250),
cidade varchar(100)
primary key (cpf));

insert into hospedes (nome, cpf, telefone, endereco, cidade)
values ('Anderson', 548632181, 19485697, 'Rua:Patrulha Canina', 'Pirassununga');

insert into hospedes (nome, cpf, telefone, endereco, cidade)
values ('Fernando', 543216598, 19356248, 'Rua:Fluter dockrs', 'São João da Boa Vista');

insert into hospedes (nome, cpf, telefone, endereco, cidade)
values ('José', 12345678, 87654321, 'Rua:Vallorant', 'São Paulo');

insert into hospedes (nome, cpf, telefone, endereco, cidade)
values ('Giovanny', 54632197, 98741536, 'Rua:Never Give Up', 'Campinas');

update hospedes
set cpf=123456789
where nome='José';

update hospedes
set cpf=546321970
where nome='Giovanny';

create table reservas(
inicioReser timeStamp,
fimReser timeStamp,
quartoReser int,
cpf int,
foreign key (quartoReser)
references quartos(id));

insert into reservas (inicioReser, fimReser, quartoReser,cpf)
values ('2021-02-10 12:00:00', '2021-02-11 11:59:00', 1, 548632181);

insert into reservas (inicioReser, fimReser, quartoReser, cpf)
values ('2021-02-10 12:00:00', '2021-02-12 11:59:00', 2, 12345678);


alter table quartos
add foreign key (categoria)
references quartoCtego(categoria);

alter table reservas
add foreign key (cpf)
references hospedes(cpf);
