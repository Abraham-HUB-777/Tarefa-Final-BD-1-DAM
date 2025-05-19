drop database if exists Formula1;
create database if not exists Formula1;
use Formula1;
CREATE TABLE Piloto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255),
  abreviatura VARCHAR(50),
  nacionalidad VARCHAR(100),
  altura FLOAT,
  peso FLOAT,
  fecha_nacimiento DATE,
  numero_licencia VARCHAR(50),
  foto_url VARCHAR(255)
);

CREATE TABLE Equipo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255),
  pais VARCHAR(100),
  color VARCHAR(50),
  sede_principal VARCHAR(255),
  director_equipo VARCHAR(255),
  año_fundacion INT,
  logo_url VARCHAR(255)
);

CREATE TABLE Temporada (
  id INT AUTO_INCREMENT PRIMARY KEY,
  año INT,
  idPilotoGANADOR INT,
  idEquipoGANADOR INT,
  CONSTRAINT fk_temporada_piloto FOREIGN KEY (idPilotoGANADOR) REFERENCES Piloto(id),
  CONSTRAINT fk_temporada_equipo FOREIGN KEY (idEquipoGANADOR) REFERENCES Equipo(id)
);

CREATE TABLE CocheTemporada (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255),
  motor VARCHAR(255),
  idEquipo INT,
  idTemporada INT,
  especificaciones_tecnicas TEXT,
  peso_coche FLOAT,
  potencia FLOAT,
  CONSTRAINT fk_coche_equipo FOREIGN KEY (idEquipo) REFERENCES Equipo(id),
  CONSTRAINT fk_coche_temporada FOREIGN KEY (idTemporada) REFERENCES Temporada(id)
);

CREATE TABLE PilotoTemporadaEquipo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  idTemporada INT,
  idPiloto INT,
  idEquipo INT,
  idCocheTemporada INT,
  numeroCoche INT,
  CONSTRAINT fk_pte_temporada FOREIGN KEY (idTemporada) REFERENCES Temporada(id),
  CONSTRAINT fk_pte_piloto FOREIGN KEY (idPiloto) REFERENCES Piloto(id),
  CONSTRAINT fk_pte_equipo FOREIGN KEY (idEquipo) REFERENCES Equipo(id),
  CONSTRAINT fk_pte_coche FOREIGN KEY (idCocheTemporada) REFERENCES CocheTemporada(id)
);

CREATE TABLE Circuito (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255),
  localizacion VARCHAR(255),
  pais VARCHAR(100),
  kilometros FLOAT,
  numero_vueltas INT,
  record_vuelta VARCHAR(50),
  tipo_circuito VARCHAR(100),
  longitud_pit_lane FLOAT
);

CREATE TABLE GranPremio (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombreGranPremio VARCHAR(255),
  idTemporada INT,
  idCircuito INT,
  fecha DATE,
  clima VARCHAR(100),
  hora_inicio TIME,
  vueltas_completadas INT,
  estado VARCHAR(100),
  CONSTRAINT fk_gp_temporada FOREIGN KEY (idTemporada) REFERENCES Temporada(id),
  CONSTRAINT fk_gp_circuito FOREIGN KEY (idCircuito) REFERENCES Circuito(id)
);

CREATE TABLE ClasificacionPiloto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  idTemporada INT,
  idPiloto INT,
  posicion INT,
  puntos FLOAT,
  CONSTRAINT fk_cp_temporada FOREIGN KEY (idTemporada) REFERENCES Temporada(id),
  CONSTRAINT fk_cp_piloto FOREIGN KEY (idPiloto) REFERENCES Piloto(id)
);

CREATE TABLE ClasificacionEquipo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  idTemporada INT,
  idEquipo INT,
  posicion INT,
  puntos FLOAT,
  CONSTRAINT fk_ce_temporada FOREIGN KEY (idTemporada) REFERENCES Temporada(id),
  CONSTRAINT fk_ce_equipo FOREIGN KEY (idEquipo) REFERENCES Equipo(id)
);

CREATE TABLE Qualy (
  id INT AUTO_INCREMENT PRIMARY KEY,
  idGranPremio INT,
  idPiloto INT,
  idEquipo INT,
  q1 TIME,
  q2 TIME,
  q3 TIME,
  posicion INT,
  tipo_clasificacion VARCHAR(100),
  condicion_pista VARCHAR(100),
  CONSTRAINT fk_qualy_gp FOREIGN KEY (idGranPremio) REFERENCES GranPremio(id),
  CONSTRAINT fk_qualy_piloto FOREIGN KEY (idPiloto) REFERENCES Piloto(id),
  CONSTRAINT fk_qualy_equipo FOREIGN KEY (idEquipo) REFERENCES Equipo(id)
);

CREATE TABLE ResultadoGranPremio (
  id INT AUTO_INCREMENT PRIMARY KEY,
  idGranPremio INT,
  idPiloto INT,
  idEquipo INT,
  posicion INT,
  tiempo_total TIME,
  mejor_vuelta TIME,
  vuelta_mejor_vuelta INT,
  obtuvo_punto_vuelta_rapida BOOLEAN,
  paradas_box INT,
  estado_final VARCHAR(100),
  CONSTRAINT fk_resultado_gp FOREIGN KEY (idGranPremio) REFERENCES GranPremio(id),
  CONSTRAINT fk_resultado_piloto FOREIGN KEY (idPiloto) REFERENCES Piloto(id),
  CONSTRAINT fk_resultado_equipo FOREIGN KEY (idEquipo) REFERENCES Equipo(id)
);

CREATE TABLE NeumaticoUsado (
  id INT AUTO_INCREMENT PRIMARY KEY,
  idResultadoGP INT,
  compuesto VARCHAR(100),
  vueltas_usado INT,
  CONSTRAINT fk_neumatico_resultado FOREIGN KEY (idResultadoGP) REFERENCES ResultadoGranPremio(id)
);

CREATE TABLE Penalizacion (
    id INT PRIMARY KEY,
    idGranPremio INT NOT NULL,
    idPiloto INT NOT NULL,
    tipo_penalizacion VARCHAR(50) NOT NULL,
    tiempo_penalizacion INT NULL,
    descripcion VARCHAR(255) NOT NULL,
    vuelta INT NOT NULL,
    FOREIGN KEY (idGranPremio) REFERENCES GranPremio(id),
    FOREIGN KEY (idPiloto) REFERENCES Piloto(id)
);


