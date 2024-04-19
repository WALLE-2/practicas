//Hecho por: WALTHER HERNANDO ESTACIO ORDOÑEZ
    

CREATE TABLE Instalaciones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FechaInstalacion DATE,
    Ubicacion VARCHAR(100),
    ExtintorID INT,
    FOREIGN KEY (ExtintorID) REFERENCES Extintores(ID)
);

CREATE TABLE Extintores (

    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(50),
    Color VARCHAR(20),
    NormativaSeguridad VARCHAR(100),
    ProveedorID INT unsigned,
    FOREIGN KEY (ProveedorID) REFERENCES Proveedor(ID)
);

CREATE TABLE Proveedor (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    NumeroContacto VARCHAR(20),
    CorreoElectronico VARCHAR(100),
    Direccion VARCHAR(200)
);

ALTER TABLE Instalaciones
ADD COLUMN ProveedorID INT,
ADD FOREIGN KEY (ProveedorID) REFERENCES Proveedor(ID);


INSERT INTO Extintores (Tipo, Color, NormativaSeguridad, ProveedorID) VALUES
('Agua', 'Rojo', 'Norma NFPA 10', '2'),
('Espuma', 'Crema', 'Norma NFPA 10', '2'),
('Polvo químico', 'Azul', 'Norma NFPA 10', '2'),
('CO2', 'Negro', 'Norma NFPA 10', '2');

INSERT INTO Instalaciones (FechaInstalacion, Ubicacion, ExtintorID) VALUES
('2023-01-15', 'Edificio A, Planta Baja', 1),
('2022-11-30', 'Edificio B, Piso 3, Sala de reuniones', 2),
('2023-04-05', 'Edificio C, Planta 2, Pasillo principal', 3),
('2023-02-20', 'Edificio D, Sótano', 4);

INSERT INTO Proveedor (Nombre, NumeroContacto, CorreoElectronico, Direccion) VALUES
('Seguridad Integral S.A.', '123456789', 'seguridadintegral@example.com', 'Calle Principal #123, Ciudad'),
('Protección Total Ltda.', '987654321', 'protecciontotal@example.com', 'Avenida Secundaria #456, Ciudad'),
('Extintores Confiables S.A.S.', '555555555', 'extintoresconfiables@example.com', 'Carrera Terciaria #789, Ciudad'),
('Prevención de Riesgos y Seguridad Industrial Ltda.', '111111111', 'prevencionderiesgos@example.com', 'Plaza Central #1011, Ciudad'),
('Soluciones Antiincendios S.A.C.', '222222222', 'solucionesantiincendios@example.com', 'Bulevar Principal #1213, Ciudad');
