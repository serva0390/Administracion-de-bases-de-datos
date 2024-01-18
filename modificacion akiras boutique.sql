CREATE TABLE Sucursales (
NumeroSucursal INT PRIMARY KEY NOT NULL,
NombreSucursal VARCHAR(255) NOT NULL,
NombreEncargado VARCHAR(255)  NOT NULL,
DireccionSucursal VARCHAR(255) NOT NULL,
TelefonoSucursal VARCHAR(255) NOT NULL,
Ciudad VARCHAR(255) NOT NULL,
Estado VARCHAR(255) NOT NULL
);

CREATE TABLE Empleados (
NombreEmpleado VARCHAR(255) PRIMARY KEY NOT NULL,
NumeroSucursal INT NOT NULL,
DireccionEmpleado VARCHAR(255) NOT NULL,
NumeroTelefono VARCHAR(255) NOT NULL,
EdadEmpleado INT NOT NULL,
CorreoElectronico VARCHAR(255) NOT NULL,
Contraseña VARCHAR(255) NOT NULL,
NombreEncargado VARCHAR(255) NULL,
FOREIGN KEY (NumeroSucursal) REFERENCES Sucursales (NumeroSucursal), 
);

INSERT INTO Sucursales (NumeroSucursal,NombreSucursal,NombreEncargado,DireccionSucursal,TelefonoSucursal,Ciudad,Estado)
VALUES 
('1','Akiras Boutique Las Mercedes','Sonia Alejandra Fernandez Moreno','Calle Roble 507 Fracc.Las Mercedes','4447831225','San Luis Potosi','San Luis Potosi'),
('2','Akiras Boutique Obraje','Fernando Calderon Ayala','Calle Dr. Jesus Diaz de Leon 438 Col. Obraje','4493780921','Aguascalientes','Aguascalientes'),
('3','Akiras Boutique Galerias Mazatlan','Daniela Fernanda Diaz Ordaz','Av. de la Marina 6204,Marina Local 35','6692932059','Mazatlan','Sinaloa'),
('4','Akiras Boutique Zapopan','Mario Alberto Jimenez Salcido','Av. Manuel J. Clouthier 525 Col.Benito Juarez','3337841230','Zapopan','Jalisco'),
('5','Akiras Boutique Melchor','Yesenia Guadalupe Campos Rojo','Av. Melchor Ocampo 2825 Zona Centro','6143906721','Chihuahua','Chihuahua'),
('6','Akiras Boutique Constitucion','Tamara Alejandra Bernal Ramos','Calle Constitucion 106 Zona Centro','6181962954','Durango','Durango'),
('7','Akiras Boutique Centro','Samuel Enrique Barros Enciso','Av. Hidalgo 338 Zacatecas Centro','4929301250','Zacatecas','Zacatecas');

INSERT INTO Empleados (NombreEmpleado,NumeroSucursal,DireccionEmpleado,NumeroTelefono,EdadEmpleado,CorreoElectronico,Contraseña,NombreEncargado)
VALUES
('Litzy Garcia','1','Manganeso 550 Col.Mexico 68','6561453507','23','Litzyga@gmail.com','Litzy0700','Sonia Alejandra Fernandez Moreno'),
('Angelica Gonzalez','1','Tungsteno 431 Col.Mexico 68','6562564618','23','AngelicaG@gmail.com','Angie0810','Sonia Alejandra Fernandez Moreno'),
('Servando Villa','1','Enrique Hernandez 2708 Col.Revolucion Mexicana','6564583655','34','sodraven.lavil@gmail.com','Ser0390','Sonia Alejandra Fernandez Moreno'),
('Jose Gonzalez','1','Feliciano Dominguez 7836 Col.Revolucion Mexicana','6565694766','35','hidrorayono.1@hotmail.com','JSGV143','Sonia Alejandra Fernandez Moreno'),
('Daniel Ruvalcaba','1','Vista Humeros 1555 Fracc.Los Ojitos','6565884574','20','danruvalcaba14@gmail.com','DRRV144','Sonia Alejandra Fernandez Moreno'),
('Isaias Robles','2','Privada Francisco Villa 1732 Col.Division del Norte','6564825254','23','Roblesis21@gmail.com','ISAI456','Fernando Calderon Ayala'),
('Melany Hernandez','2','Zacatula 210 Col.Hermenegildo Galeana','6567479956','24','Hdzmel47@gmail.com','MEHE471','Fernando Calderon Ayala'),
('Sebastian Ruiz','2','Eclipse Oriente 8755 Ciudad Moderna I','6565876413','19','Ruizsebas55@gmail.com','SERU325','Fernando Calderon Ayala'),
('Pedro Flores','2','Ignacio Mejia 222 Col.El Barreal','6569871123','26','Florespedro88@gmail.com','FLOP545','Fernando Calderon Ayala'),
('Juan Perez','2','Simio 8854 Fracc.Marmol','6561478569','21','Perezjuan00@gmail.com','PEJU159','Fernando Calderon Ayala'),
('Fernanda Sandoval','3','Julian Perez 3224 Fracc. Heroes de la Independencia','6561203214','20','Sandovalfer58@gmail.com','SAFE478','Daniela Fernanda Diaz Ordaz'),
('Luna Meza','3','España 3325 Col.Mirador','6564445658','26','Mezaluna87@gmail.com','LUME845','Daniela Fernanda Diaz Ordaz'),
('Javier Urbina','3','Zacatula 214 Col.Actopan del sur','6568897456','22','Urbinajavi11@gmail.com','URJA541','Daniela Fernanda Diaz Ordaz'),
('Teresa Chavez','3','Aruba 142-7 Fracc.Internacional','6561597536','21','Chavezteresa52@gmail.com','TERC156','Daniela Fernanda Diaz Ordaz'),
('Jorge Arreola','3','Villa del sur 11475-2 Urbivilla 5','6569632581','24','Arreolajorge14@gmail.com','ARJO781','Daniela Fernanda Diaz Ordaz'),
('Guillermo Santos','4','Ignacio Mariscal 4245 Col.Mariano Escobedo','6561856644','41','Santosguillermo151@gmail.com','SAGU456','Mario Alberto Jimenez Salcido'),
('Beatriz Ortiz','4','Carichic 142 Col.Chihuahua','6564856210','34','Ortizbeatriz1568@gmail.com','BEOR546','Mario Alberto Jimenez Salcido'),
('Lucia de Santos','4','15 de Enero 6548 Col.Zapata','6561204158','26','Santoslucia45@gmail.com','LUSA486','Mario Alberto Jimenez Salcido'),
('Arturo Medina','4','Avion 4745 Fracc.Aeropuerto','6562017589','29','Medinaarturo65@gmail.com','ARME487','Mario Alberto Jimenez Salcido'),
('Carmen Salazar','4','Yucatan 7821 Fracc.Mexico','6561647932','40','Salazarcarmen741@gmail.com','CASA650','Mario Alberto Jimenez Salcido'),
('Jesus Sanchez','5','Francisco Villa 1654','6563087914','34','Sanchezjesus031@gmail.com','SAJE013','Yesenia Guadalupe Campos Rojo'),
('Rodolfo Cota','5','Ixtapan 7110 Col.Linda Vista','6563001234','30','Cotarodolfo777@gmail.com','CORO721','Yesenia Guadalupe Campos Rojo'),
('Marion Zavala','5','Cueva Encantada 547 Fracc.Las Lomas','6567013325','33','Zavalamarion98@gmail.com','MAZA584','Yesenia Guadalupe Campos Rojo'),
('Eder Bayuelo','5','Las Lilas 5550 Fracc.Arboleda','6562001154','35','Bayueloeder1990@gmail.com','EDBA987','Yesenia Guadalupe Campos Rojo'),
('Mario Casas','5','Independencia 1532 Col.Heroes Historicos','6564028974','36','Casasmario@gmail.com','CAMA801','Yesenia Guadalupe Campos Rojo'),
('Elsa Carreon','6','Lino Vargas 5401 Col.Miravalle','6567901654','38','Carreonelsa2020@gmail.com','ELCA450','Tamara Alejandra Bernal Ramos'),
('Maria Ortega','6','Sierra Morena 1542 Col.La Cuesta','6568096644','39','Ortegamaria2001@gmail.com','ORMA687','Tamara Alejandra Bernal Ramos'),
('Irma Lopez','6','Linaza 6754 Col.Los Robles','6566602541','28','Lopezirma@gmail.com','IRLO027','Tamara Alejandra Bernal Ramos'),
('Eric Amaro','6','Distrito 3 654 Fracc.Metropolitano','6561119862','30','Amaroeric32@gmail.com','ERAM035','Tamara Alejandra Bernal Ramos'),
('Omar Lerma','6','Metro Balderas 11 Fracc.El Marques','6566043100','32','Lermaomar3010@gmail.com','LEOM0110','Tamara Alejandra Bernal Ramos'),
('Andres Obrador','7','Av.Zocalo 1000 Distrito 10','6561076688','26','Obradorandres99@gmail.com','OBAN305','Samuel Enrique Barros Enciso'),
('Cain Enriquez','7','Miramar 897 Fracc.Panamericano','6563406020','29','Enriquezcain33@gmail.com','ENCA941','Samuel Enrique Barros Enciso'),
('Melanie Zamora','7','Agustin Melgar 235 Col.Niños Heroes','6569021036','22','Zamoramelanie841@gmail.com','ZAME830','Samuel Enrique Barros Enciso'),
('Augusto Castro','7','Habana 98 Col.Islas Caribe','6564021201','25','CastroAugusto1@gmail.com','AUCA809','Samuel Enrique Barros Enciso'),
('Karim Velazquez','7','Francia 2018 Fracc.Alpino','6567410095','29','Velazquezkarim77@gmail.com','BEKA915','Samuel Enrique Barros Enciso');

SELECT NombreEmpleado FROM Empleados
SELECT NombreEmpleado,EdadEmpleado FROM Empleados
SELECT EdadEmpleado,DireccionEmpleado FROM Empleados
SELECT NombreEmpleado,NumeroSucursal,NombreEncargado FROM Empleados

SELECT NombreEmpleado,DireccionSucursal,TelefonoSucursal
FROM Empleados
JOIN Sucursales ON Empleados.NumeroSucursal = Sucursales.NumeroSucursal