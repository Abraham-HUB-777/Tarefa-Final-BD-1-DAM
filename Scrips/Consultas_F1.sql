-- Rankinfg de pilotows por temportadas:
SELECT 
  p.nombre AS piloto,
  cp.puntos,
  cp.posicion
FROM ClasificacionPiloto cp
JOIN Piloto p ON cp.idPiloto = p.id
WHERE cp.idTemporada = 1
ORDER BY cp.puntos DESC;

-- Participacion de pilotos/coche por temporada:

SELECT 
  t.año,
  p.nombre AS piloto,
  e.nombre AS equipo,
  c.nombre AS coche,
  pte.numeroCoche
FROM PilotoTemporadaEquipo pte
JOIN Piloto p ON p.id = pte.idPiloto
JOIN Equipo e ON e.id = pte.idEquipo
JOIN CocheTemporada c ON c.id = pte.idCocheTemporada
JOIN Temporada t ON t.id = pte.idTemporada
WHERE pte.idTemporada = 1;

-- Piloto con mas vueltasRapidas en una temporada:

SELECT 
  p.nombre AS piloto,
  COUNT(*) AS vueltas_rapidas
FROM ResultadoGranPremio r
JOIN GranPremio g ON g.id = r.idGranPremio
JOIN Piloto p ON p.id = r.idPiloto
WHERE r.obtuvo_punto_vuelta_rapida = TRUE
  AND g.idTemporada = 1
GROUP BY p.id
ORDER BY vueltas_rapidas DESC;

-- Duracion tipo de neunatico por piloto

SELECT 
  p.nombre AS piloto,
  n.compuesto,
  SUM(n.vueltas_usado) AS total_vueltas
FROM NeumaticoUsado n
JOIN ResultadoGranPremio r ON n.idResultadoGP = r.id
JOIN GranPremio g ON r.idGranPremio = g.id
JOIN Piloto p ON r.idPiloto = p.id
WHERE g.idTemporada = 1
GROUP BY p.id, n.compuesto
ORDER BY p.nombre, total_vueltas DESC;

-- Pilotos sancionados:
SELECT 
  p.nombre AS piloto,
  pe.tipo_penalizacion,
  pe.descripcion,
  pe.vuelta,
  g.nombreGranPremio
FROM Penalizacion pe
JOIN Piloto p ON p.id = pe.idPiloto
JOIN GranPremio g ON g.id = pe.idGranPremio
WHERE g.idTemporada = 1
ORDER BY p.nombre, g.fecha;

-- Mejores coche por peso/potencia

SELECT 
  e.nombre AS equipo,
  c.nombre AS coche,
  c.potencia,
  c.peso_coche
FROM CocheTemporada c
JOIN Equipo e ON e.id = c.idEquipo
WHERE c.idTemporada = 1
ORDER BY c.potencia DESC;



