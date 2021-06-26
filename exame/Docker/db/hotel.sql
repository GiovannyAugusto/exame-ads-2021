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


