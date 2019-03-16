-- Empleados -- 

Create Table Empleados (
     ID Numeric(16) Primary Key Not Null,
     Nombre Varchar(35), 
     Apellido Varchar(35), 
     No_Identidad Numeric(35),
     Telefono Numeric(35), 
     Email Varchar(35), 
     Direccion Varchar(35)
)

Insert Into Empleados 
Values ('1102','Chris', 'House','0017856456','8092221111','chris01@outloook.com','Boston')
Insert Into Empleados 
Values ('2203','Ana', 'Valdez','0010908765','80912345678','anitav@outlook.com','Centro Ciudad')
Insert Into Empleados
Values ('3204','Jose', 'Marte','4021289675','8290009876','jmarte5@hotmail.com','Samana')
Insert Into Empleados
Values ('4405','Jesus', 'Christ','4020987654','8492567789','mesias02@gmail.com','California')
Insert Into Empleados
Values ('5506','Henry', 'Plotter','78656780900','8290005647','voldemort_16@outloook.com','Los Angeles')
Insert Into Empleados
Values ('4706','Jason', 'Castle','18656780564','8294566578','jasonc@outloook.com','San Francisco')

Select * From Empleados;

-- Clientes --

Create Table Clientes (
     ID_Cliente Numeric(35) Primary Key Not Null,
     No_Identidad Varchar(35),
     Nombre Varchar(35) Not Null, 
     Apellido Varchar(35) Not Null,
     Telefono Numeric(35), 
     Direccion Varchar(35),
     Disp_Adquirido Varchar(35) Not Null
)

Insert Into Clientes 
Values ('12890','403-8', 'Mary','Great','8298567899','Riverdale, Florida','Samsung Galaxy S9')
Insert Into Clientes 
Values ('12670','230-4', 'Darwin','Hackerman','84989097','Sillicon Valley, San Francisco','iPhone XS')
Insert Into Clientes 
Values ('78670','218-6', 'Emil','Cook','8296786757','Cupertino, California', 'Samsung Galaxy S9+')
Insert Into Clientes 
Values ('67890','038-4', 'Ronald','Wisley','8497865432','Los Angeles, California','Xiaomi Mi 8')

Select * From Clientes;

-- Celulares --

Create Table Celulares (
     Numero_Serie Numeric(35) Primary Key Not Null, 
     ID_Cliente Numeric(20), 
     Disp_Adquirido_Cliente Varchar(36),
     Modelo Varchar(20), 
     Fecha_Lanzamiento Numeric(20),
     Fabricante Varchar(35)
)

Insert Into Celulares 
Values ('8908768','12890','Samsung Galaxy S9','A1920','21092018','Samsung')
Insert Into Celulares 
Values ('5738705','12670','iPhone XS','B3220','18072018','Apple')
Insert Into Celulares
Values ('2094684','78670','Samsung Galaxy S9+','C0980','11112018','Samsung')
Insert Into Celulares
Values ('9340986','67890','Xiaomi Mi 8','D2120','20032018','Xiaomi')

Select * From Celulares;

-- Contratos --

Create Table Contrato (
	ID Numeric(35) Primary Key Not Null,
     ID_Cliente Numeric (35),
	FechaInicio Numeric(35),
	FechaFin Numeric(35),
	Detalle Varchar(35),
	Garantia Varchar(35),
	FechaFirma Numeric(35)
)

Insert Into Contrato 
Values ('1612', '12670', '22102017', '22122018', 'Samsung Galaxy S9+', 'Activa', '21102017')
Insert Into Contrato
Values ('1439', '78670', '12022017', '1203018', 'iPhone XS', 'Activa', '1102017')

Select * From Contrato;

-- Proveedores --

Create Table Proveedores (
     ID_Proveedor Numeric(15) Primary Key Not Null, 
     Nombre Varchar(20), 
     Apellido Varchar(20),
     Direccion Varchar(100), 
     Telefono Numeric(30)
)
Insert Into Proveedores 
Values ('7890','Julien','Fernandez','Piantini','8092221111')
Insert Into Proveedores
Values ('1234','Mikaela','Olivares','El Millon','8295760089')
Insert Into Proveedores
Values ('5647','Jerry','Furcal','Sto. Dgo., Distrito Nacional','8497321415')
Insert Into Proveedores
Values ('5654','Harrison','Dolan','Sillicon Valley','8290076785')
Insert Into Proveedores
Values ('9089','Caitlin','Snow','Cupertino, California','8098666634')

Select * From Proveedores;

-- Suscriptores --

Create Table Suscripciones (
     ID_Suscrip Varchar(35) Primary Key Not Null,
     Fecha_Entrega Numeric(35), 
     Tipo_Suscrip Varchar(35), 
     ID_Cliente Varchar(35)
)

Insert Into Suscripciones 
Values ('SW56', '25052017','Gratis','12890')
Insert Into Suscripciones
Values ('JK89', '10092017','Premium','12670')
Insert Into Suscripciones
Values ('PO50', '09282016','Premium','78670')
Insert Into Suscripciones
Values ('WE34', '12082017','Gratis','67890')

Select * From Suscripciones;

-- Reparacion --
Create Table Reparacion (
     ID Varchar(35) Primary Key Not Null,
     ID_Cliente Numeric(35),
     ID_Empleado Numeric(35),
     Fecha Numeric(35),
     No_Turno Varchar(35),
)

Insert Into Reparacion 
Values ('RA120', '12670', '1102', '12022018', 'A11')
Insert Into Reparacion
Values ('RA312', '78670', '5506', '26072018', 'G27')

Select * From Reparacion; 

-- Reclamos --

Create Table Reclamos (
     ID Varchar(35) Primary Key Not Null,
     ID_Cliente Numeric(35),
     ID_Empleado Numeric(35),
     Fecha Numeric(35),
     Tipo_Suscrip Varchar(35),
     Detalle Varchar(35)
)

Insert Into Reclamos 
Values ('290', '12890', '1102', '23082018', 'Gratis', 'Mal Funcinamiento')
Insert Into Reclamos
Values ('213', '12670', '2203', '24082018', 'Premium', 'Rendimiento Bajo')
Insert Into Reclamos
Values ('245', '78670', '5506', '25082018', 'Premium', 'Fallas OS')
Insert Into Reclamos
Values ('219', '4706', '7687', '26082018', 'Premium', 'Mal Funcinamiento')

Select * From Reclamos;


-- Adquieren --

Create Table Adquieren (
     ID_Suscrip Varchar(35) Primary Key Not Null,
     ID_Cliente Varchar(35)
)

Insert Into Adquieren
Values ('SW56', '12890')
Insert Into Adquieren
Values ('JK89', '67890')

Select * From Adquieren;

-- Compra --

Create Table Compra (
     ID_Cliente Numeric(35) Primary Key Not Null,
     Numero_Serie Numeric(35),
     Fecha Numeric(35),
     Cantidad Numeric(35)
)

Insert Into Compra
Values ('12890', '8908768', '09092018', '5')
Insert Into Compra 
Values ('12590', '2094684', '04052018', '2')
Insert Into Compra 
Values ('12680', '9028684', '12052018', '8')
Insert Into Compra
Values ('27683', '3298684', '21982018', '3')

Select * From Compra;

-- Suministran --

Create Table Suministran (
     ID_Proveedor Numeric(35) Primary Key Not Null,
     Numero_Serie Numeric(35)
)

Insert Into Suministran
Values ('7890', '3298684')
Insert Into Suministran
Values ('5647', '9028684')

-- Solicitan -- 

Create Table Solicita (
     ID_Reclamo Numeric(35) Primary Key Not Null,
     ID_Cliente Numeric(35)
)

Insert Into Solicita
Values ('290', '37683')
Insert Into Solicita
Values ('213', '23298')
Insert Into Solicita
Values ('245', '64765')



-- Join : Consulta para saber cuales clientes tienen un disp. en reparacion y si tienen suscripcion. --

Select Contrato.ID_Cliente, Contrato.Garantia, Contrato.FechaFirma, Reparacion.No_Turno
From Contrato Join Reparacion
On Contrato.ID_Cliente = Reparacion.ID_Cliente

-- Join : Consulta para Saber la cantidad de clientes que poseen un com

Select Celulares.Numero_Serie, Celulares.ID_Cliente, Celulares.Modelo, Contrato.ID, Contrato.FechaFirma
From Celulares Join Contrato
On Celulares.ID_Cliente = Contrato.ID_Cliente

-- Full Select Tables : SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' --
