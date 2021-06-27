create database ads;
\connect ads;

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
categoriaL varchar(90),
categoriaP varchar(90),
categoriaBc varchar(90));

insert into quartoCtego (categoriaL, categoriaP, categoriaBc)
values ("Luxo", "Padrão", "Baixo Custo"));

create table hospedes(
nome varchar(250),
cpf int,
telefone int,
endereco varchar(250),
cidade varchar(100));

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
hospede varchar(250),
foreign key (quartoReser)
references quartos(id));

insert into reservas (inicioReser, fimReser, quartoReser, hospede)
values ('2022-09-18 06:30:00', '2022-09-20 18:00:00', 1, 'Anderson');

insert into reservas (inicioReser, fimReser, quartoReser, hospede)
values ('2022-08-17 06:30:00', '2022-08-18 18:00:00', 2, 'Giovanny');

