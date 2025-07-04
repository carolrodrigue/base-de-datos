--Crear Base de datos 
CREATE DATABASE restriccionesbdg1;

--Utilizar base de datos 
USE restriccionesbdg1;

--Crear la tabla categoria 
CREATE TABLE categoria(
categoriaid int,
nombre nvarchar (30)
);

insert into categoria
VALUES (1,'carnes frias');

insert into categoria
VALUES (1,'Vinos y licores');

insert into categoria
VALUES (null, 'Ropa');

SELECT * FROM categoria
drop table categoria;

CREATE TABLE categoria(
categoriaid int not null, 
nombre nvarchar (30),
constraint pk_categoria
primary key (categoriaid)
);

insert into categoria
VALUES (1,'carnes frias');

insert into categoria
VALUES (2,'Vinos y licores');

insert into categoria
VALUES (3, 'Ropa');

SELECT * FROM categoria

drop table categoria;


CREATE TABLE categoria(
categoriaid int not null, 
nombre nvarchar (30),
constraint pk_categoria
primary key (categoriaid),
constraint  unique_nombre
unique(nombre)
);

insert into categoria
VALUES (1,'carnes frias');

insert into categoria
VALUES (2,'Vinos y licores');

drop table categoria;

CREATE TABLE categoria(
categoriaid int not null, 
nombre nvarchar (30),
constraint pk_categoria
primary key (categoriaid),
constraint  unique_nombre
unique(nombre)
);



create table producto(
productoid int not null,
nombreprod nvarchar(20) not null,
precio money not null,
existencia numeric(10,2) not null,
categoria int
constraint pk_producto
primary key(productoid),
constraint unique_nombreprod
unique(nombreprod),
constraint chk_precio
check(precio>0 and precio<=4000),
constraint chk_existencia
check(existencia>=0),
CONSTRAINT fk_producto_categoria
foreign key (categoria)
references categoria(categoriaid)

);


INSERT INTO categoria
VALUES (1,'carnes frias');

insert into categoria
VALUES (2,'Vinos y licores');

INSERT INTO producto
values (1,'tonayan' ,4000, 4, 2);

INSERT INTO producto
values (2,'tonayan2' ,1250.6, 40, 2);

INSERT INTO producto
values (3,'Bucañas', 200, 8, 2);

INSERT INTO producto
values (4,'Calzon chino' ,6.3, 890, )

SELECT*FROM producto as p
INNER JOIN categoria as c
ON c.categoriaid= p.categoria;

drop table producto;

s
