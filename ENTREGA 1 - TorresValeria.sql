create database Entrega1;
use Entrega1;

CREATE TABLE Pedidos(
id_pedido VARCHAR(20) PRIMARY KEY,
fecha_pedido DATE,
condicion_de_entrega TEXT,
tipo_de_envio TEXT,
cliente TEXT,
volumen DECIMAL,
producto VARCHAR (20)
);

CREATE TABLE Cargas(
id_pedido VARCHAR(20),
id_carga VARCHAR (20) PRIMARY KEY,
fecha_salida DATE,
cliente TEXT,
condicion_de_entrega TEXT,
tipo_de_envio TEXT,
id_contenedor VARCHAR (25),
volumen_cont DECIMAL,
id_recorrido INT,
producto VARCHAR (20)
);

CREATE TABLE Transporte(
id_recorrido INT PRIMARY KEY,
fecha_viaje DATE,
empresa_transp VARCHAR (30),
cliente TEXT,
volumen DECIMAL,
matricula_camion VARCHAR (50),
peso_total DECIMAL,
hora_llegada TIME,
hora_salida TIME,
tipo_de_envio TEXT
);

CREATE TABLE Stock(
id_paquete INT PRIMARY KEY,
almacen VARCHAR(10),
acabado VARCHAR(20),
fecha_produccion DATE,
volumen_paquete DECIMAL,
peso DECIMAL,
id_carga VARCHAR(20)
);

CREATE TABLE Puertos(
condicion_de_entrega VARCHAR(20) PRIMARY KEY,
nombre_puerto VARCHAR (25),
distancia DECIMAL
);

select * from transporte;
Delete ENTREGA1.sql
