-- caso de prueba: Insertar Piloto:
INSERT INTO Piloto (nombre, abreviatura, nacionalidad, altura, peso, fecha_nacimiento, numero_licencia, foto_url)
VALUES ('Max Verstappen', 'VER', 'Países Bajos', 1.81, 72, '1997-09-30', 'MV33F1', 'https://example.com/verstappen.jpg');

-- Insertar Equipo
INSERT INTO Equipo (nombre, pais, color, sede_principal, director_equipo, año_fundacion, logo_url)
VALUES ('Red Bull Racing', 'Austria', 'Azul y Rojo', 'Milton Keynes', 'Christian Horner', 2005, 'https://example.com/redbull.png');

-- Insertar Temporada
INSERT INTO Equipo (nombre, pais, color, sede_principal, director_equipo, año_fundacion, logo_url)
VALUES ('Red Bull Racing', 'Austria', 'Azul y Rojo', 'Milton Keynes', 'Christian Horner', 2005, 'https://example.com/redbull.png');

-- Insertar circuito 
INSERT INTO Circuito (nombre, localizacion, pais, kilometros, numero_vueltas, record_vuelta, tipo_circuito, longitud_pit_lane)
VALUES ('Circuit de Spa-Francorchamps', 'Stavelot', 'Bélgica', 7.004, 44, '1:46.286', 'Permanente', 0.390);

-- insertar Coche-Temporada
INSERT INTO CocheTemporada (nombre, motor, idEquipo, idTemporada, especificaciones_tecnicas, peso_coche, potencia)
VALUES ('RB19', 'Honda', 1, 1, 'Chasis aerodinámico optimizado', 798.0, 1050.0);

-- Asociar piloto/equipo
INSERT INTO PilotoTemporadaEquipo (idTemporada, idPiloto, idEquipo, idCocheTemporada, numeroCoche)
VALUES (1, 1, 1, 1, 33);

-- Verificar claves foraneas
-- Verificar que todos los pilotos en Temporada existen
SELECT t.id, t.año, p.id AS piloto_id
FROM Temporada t
LEFT JOIN Piloto p ON t.idPilotoGANADOR = p.id
WHERE p.id IS NULL;

-- Verificar que todos los equipos en Temporada existen
SELECT t.id, t.año, e.id AS equipo_id
FROM Temporada t
LEFT JOIN Equipo e ON t.idEquipoGANADOR = e.id
WHERE e.id IS NULL;

-- Pilotos asignados a temporadas que no existen
SELECT pte.id, pte.idTemporada
FROM PilotoTemporadaEquipo pte
LEFT JOIN Temporada t ON pte.idTemporada = t.id
WHERE t.id IS NULL;

-- Pilotos asignados a equipos que no existen
SELECT pte.id, pte.idEquipo
FROM PilotoTemporadaEquipo pte
LEFT JOIN Equipo e ON pte.idEquipo = e.id
WHERE e.id IS NULL;

-- Pilotos asignados a coches que no existen
SELECT pte.id, pte.idCocheTemporada
FROM PilotoTemporadaEquipo pte
LEFT JOIN CocheTemporada ct ON pte.idCocheTemporada = ct.id
WHERE ct.id IS NULL;


