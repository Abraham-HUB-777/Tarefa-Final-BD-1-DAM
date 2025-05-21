-- Procedimiento
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




