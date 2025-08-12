Create Database Actividad_1
Use Actividad_1
Create Table Centro_Trabajo(
Numero_centro varchar(6) primary key,
Nom_Centro varchar (50),
Ciudad varchar(20),
);
Create table Puestos (
No_puesto int primary key,
nom_Puesto varchar (20),
Des_Puesto varchar(45),
);
Create table Empleado	(
ID_empleado int identity(1,1) primary key,
Nombre_Empleado varchar (20),
Apellido_Paterno varchar (20),
Apellido_Materno varchar (20),
Fecha_nacimiento date,
RFC varchar (20),
Des_Puesto varchar (50),
Puesto varchar (25),
Directivo bit,
Nom_Centro varchar (20),
Num_Centro varchar(6),
foreign key (Num_Centro) references Centro_Trabajo(Numero_centro),
Numero_Puesto int,
foreign key (Numero_Puesto) references Puestos (No_puesto),
);
Create Table Directivo(
Prestaciones varchar (20),
Num_centro_supervisa varchar(6),
foreign key (Num_centro_supervisa) references Centro_Trabajo (Numero_centro),
No_empleado int,
foreign key (No_empleado) references Empleado (ID_empleado)
);
Select *from Empleado;
Select *from Centro_Trabajo;
Insert into Centro_Trabajo(Numero_centro,Nom_Centro,Ciudad)
Values ('000201','Tda Angel Flores','Culiacan');
Insert into Centro_Trabajo(Numero_centro,Nom_Centro,Ciudad)
Values ('049001','La primavera Ropa','Culiacan');
Insert into Centro_Trabajo(Numero_centro,Nom_Centro,Ciudad)
Values ('049003','La primavera Cajas','Culiacan');
Select *from Puestos;
Insert into Puestos(No_puesto,nom_Puesto,Des_Puesto)
Values (1,'Vendedor','Vendedor de ropa');
DELETE FROM Puestos
WHERE no_puesto=2;
Insert into Puestos(No_puesto,nom_Puesto,Des_Puesto)
Values (2,'Gerente','Gerente de tienda');
Insert into Puestos(No_puesto,nom_Puesto,Des_Puesto)
Values (3,'Coordinador','Coordinador de tienda');

Insert into Empleado (Nombre_Empleado,Apellido_Paterno,Apellido_Materno,fecha_nacimiento,RFC,Des_Puesto,Puesto,Directivo,Nom_Centro,Num_Centro,Numero_Puesto)
Values ('Maria Celeste','Castillo','Zavala','1996-12-06','CAZC961206XXX','Vendedor ropa','Vendedor',0,'Tda Angel Flores','000201',1);
Insert into Empleado (Nombre_Empleado,Apellido_Paterno,Apellido_Materno,fecha_nacimiento,RFC,Des_Puesto,Puesto,Directivo,Nom_Centro,Num_Centro,Numero_Puesto)
Values ('Lucia Celene','Perez','Garcia','1998-08-09','PEGLC980809XXX','Vendedor telefonia','Vendedor Tel',0,'Tda Angel Flores','000201',1);
Insert into Empleado (Nombre_Empleado,Apellido_Paterno,Apellido_Materno,fecha_nacimiento,RFC,Des_Puesto,Puesto,Directivo,Nom_Centro,Num_Centro,Numero_Puesto)
Values ('Sandra','Lopez','Angulo','2005-09-24','LOAS050924XXX','Gerente General','Gerente',1,'Tda Primavera','049001',2);
Insert into Empleado (Nombre_Empleado,Apellido_Paterno,Apellido_Materno,fecha_nacimiento,RFC,Des_Puesto,Puesto,Directivo,Nom_Centro,Num_Centro,Numero_Puesto)
Values ('Alonso','Gonzalez','Tovar','1986-01-23','GOTA860123XXX','Coordinador de TDA','Coordinador',1,'Tda Angel Flores','049003',3);
Insert into Empleado (Nombre_Empleado,Apellido_Paterno,Apellido_Materno,fecha_nacimiento,RFC,Des_Puesto,Puesto,Directivo,Nom_Centro,Num_Centro,Numero_Puesto)
Values ('Ramon','Lopez','Mendoza','2002-06-15','LOMR020615XXX','Vendedor de muebles','Vendedor',0,'Tda Primavera','049003',1);