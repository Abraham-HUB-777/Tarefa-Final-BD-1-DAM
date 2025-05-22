-- Procedimiento
-- equipo
DELIMITER //

CREATE PROCEDURE ActualizarClasificacionEquipos(IN temporada_id INT)
BEGIN
  -- Elimina clasificación anterior
  DELETE FROM ClasificacionEquipo WHERE idTemporada = temporada_id;

  -- Inserta nueva clasificación
  INSERT INTO ClasificacionEquipo (idTemporada, idEquipo, posicion, puntos)
  SELECT 
    temporada_id,
    idEquipo,
    RANK() OVER (ORDER BY SUM(puntos) DESC) AS posicion,
    SUM(puntos) AS total_puntos
  FROM (
    SELECT 
      r.idEquipo,
      CASE 
        WHEN r.posicion = 1 THEN 25
        WHEN r.posicion = 2 THEN 18
        WHEN r.posicion = 3 THEN 15
        WHEN r.posicion = 4 THEN 12
        WHEN r.posicion = 5 THEN 10
        WHEN r.posicion = 6 THEN 8
        WHEN r.posicion = 7 THEN 6
        WHEN r.posicion = 8 THEN 4
        WHEN r.posicion = 9 THEN 2
        WHEN r.posicion = 10 THEN 1
        ELSE 0
      END + 
      CASE WHEN r.obtuvo_punto_vuelta_rapida = TRUE THEN 1 ELSE 0 END AS puntos
    FROM ResultadoGranPremio r
    INNER JOIN GranPremio g ON r.idGranPremio = g.id
    WHERE g.idTemporada = temporada_id
  ) AS puntosEquipo
  GROUP BY idEquipo;
END //

DELIMITER ;

CALL ActualizarClasificacionEquipos(1);
-- Pilotos
DELIMITER //
CREATE PROCEDURE ActualizarClasificacionPilotos(IN temporada_id INT)
BEGIN
  -- Vacia la clasificacion sin actualizar
  DELETE FROM ClasificacionPiloto WHERE idTemporada = temporada_id;

  -- Insertar nuevas clasificaciones
  INSERT INTO ClasificacionPiloto (idTemporada, idPiloto, posicion, puntos)
  SELECT 
    temporada_id,
    idPiloto,
    RANK() OVER (ORDER BY SUM(puntos) DESC) AS posicion,
    SUM(puntos) AS total_puntos
  FROM (
    SELECT 
      rp.idPiloto,
      rp.idGranPremio,
      CASE 
        WHEN rp.posicion = 1 THEN 25
        WHEN rp.posicion = 2 THEN 18
        WHEN rp.posicion = 3 THEN 15
        WHEN rp.posicion = 4 THEN 12
        WHEN rp.posicion = 5 THEN 10
        WHEN rp.posicion = 6 THEN 8
        WHEN rp.posicion = 7 THEN 6
        WHEN rp.posicion = 8 THEN 4
        WHEN rp.posicion = 9 THEN 2
        WHEN rp.posicion = 10 THEN 1
        ELSE 0
      END + 
      CASE WHEN rp.obtuvo_punto_vuelta_rapida = TRUE THEN 1 ELSE 0 END AS puntos
    FROM ResultadoGranPremio rp
    INNER JOIN GranPremio gp ON rp.idGranPremio = gp.id
    WHERE gp.idTemporada = temporada_id
  ) AS puntosPiloto
  GROUP BY idPiloto;
END //
DELIMITER ;
CALL ActualizarClasificacionPilotos(1);

-- Funcion 
DELIMITER //

CREATE FUNCTION ObtenerVictoriasPiloto(pilotoId INT, temporadaId INT)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE victorias INT;
  
  SELECT COUNT(*) INTO victorias
  FROM ResultadoGranPremio r
  INNER JOIN GranPremio g ON r.idGranPremio = g.id
  WHERE r.idPiloto = pilotoId
    AND g.idTemporada = temporadaId
    AND r.posicion = 1;

  RETURN victorias;
END //

DELIMITER ;
select ObtenerVictoriasPiloto(1,1) as victorias;


DELIMITER //
CREATE FUNCTION ObtenerEdadPiloto(pilotoId INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE edad INT;
  DECLARE fechaNacimiento DATE;
  SELECT fecha_nacimiento INTO fechaNacimiento
  FROM Piloto
  WHERE id = pilotoId;
  IF fechaNacimiento IS NOT NULL THEN
    SET edad = TIMESTAMPDIFF(YEAR, fechaNacimiento, CURDATE());
  ELSE
    SET edad = NULL;
  END IF;
  RETURN edad;
END //
DELIMITER ;
SELECT ObtenerEdadPiloto(3) AS edad;
 
 -- Triguer 
 DELIMITER //

CREATE TRIGGER evitar_piloto_en_dos_equipos
BEFORE INSERT ON PilotoTemporadaEquipo
FOR EACH ROW
BEGIN
  DECLARE existe INT;

  SELECT COUNT(*) INTO existe
  FROM PilotoTemporadaEquipo
  WHERE idTemporada = NEW.idTemporada
    AND idPiloto = NEW.idPiloto;

  IF existe > 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Error: El piloto ya está registrado en un equipo para esta temporada.';
  END IF;
END //
DELIMITER ;

-- fecha nacimiento nulla 
DELIMITER //
CREATE TRIGGER actualizar_fecha_nacimiento_nula
BEFORE INSERT ON Piloto
FOR EACH ROW
BEGIN
  IF NEW.fecha_nacimiento IS NULL THEN
    SET NEW.fecha_nacimiento = '1900-01-01'; -- Fecha por defecto
  END IF;
END //
DELIMITER ;

-- Cada vez que se inserta ClasificacionPiloto guarda en un tabla Log los datos insertados
CREATE TABLE LogClasificacion (
  id INT AUTO_INCREMENT PRIMARY KEY,
  mensaje TEXT,
  fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER registrar_log_clasificacion_piloto
AFTER INSERT ON ClasificacionPiloto
FOR EACH ROW
BEGIN
  DECLARE piloto_nombre VARCHAR(255);
  DECLARE temporada_anio INT;
  SELECT p.nombre INTO piloto_nombre FROM Piloto p WHERE p.id = NEW.idPiloto;
  SELECT t.año INTO temporada_anio FROM Temporada t WHERE t.id = NEW.idTemporada;
  INSERT INTO LogClasificacion (mensaje)
  VALUES (
    CONCAT('Piloto "', piloto_nombre, '" se clasificó en la posición ', NEW.posicion,
           ' con ', NEW.puntos, ' puntos en la temporada ', temporada_anio, '.')
  );
END //
DELIMITER ;





