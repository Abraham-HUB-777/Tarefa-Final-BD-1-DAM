-- Equipos
INSERT INTO Equipo (id, nombre, pais, color, sede_principal, director_equipo, año_fundacion, logo_url) VALUES
(1, 'Red Bull Racing', 'Austria', 'Azul', 'Milton Keynes', 'Christian Horner', 2005, 'https://logo.url/redbull.png'),
(2, 'Mercedes-AMG Petronas', 'Alemania', 'Plateado', 'Brackley', 'Toto Wolff', 2010, 'https://logo.url/mercedes.png'),
(3, 'Scuderia Ferrari', 'Italia', 'Rojo', 'Maranello', 'Frédéric Vasseur', 1950, 'https://logo.url/ferrari.png'),
(4, 'McLaren F1 Team', 'Reino Unido', 'Naranja', 'Woking', 'Andrea Stella', 1963, 'https://logo.url/mclaren.png'),
(5, 'Aston Martin Aramco', 'Reino Unido', 'Verde', 'Silverstone', 'Mike Krack', 2021, 'https://logo.url/astonmartin.png'),
(6, 'Alpine F1 Team', 'Francia', 'Azul', 'Enstone', 'Bruno Famin', 2021, 'https://logo.url/alpine.png'),
(7, 'Williams Racing', 'Reino Unido', 'Azul', 'Grove', 'James Vowles', 1977, 'https://logo.url/williams.png'),
(8, 'Visa Cash App RB', 'Italia', 'Rojo', 'Faenza', 'Laurent Mekies', 2024, 'https://logo.url/vcarb.png'),
(9, 'Haas F1 Team', 'EE.UU.', 'Blanco', 'Kannapolis', 'Ayao Komatsu', 2016, 'https://logo.url/haas.png'),
(10, 'Stake F1 Team Kick Sauber', 'Suiza', 'Negro', 'Hinwil', 'Alessandro Alunni Bravi', 2024, 'https://logo.url/sauber.png');

-- Pilotos 
INSERT INTO Piloto (id, nombre, abreviatura, nacionalidad, altura, peso, fecha_nacimiento, numero_licencia, foto_url) VALUES
(1, 'Max Verstappen', 'VER', 'Países Bajos', 1.81, 72, '1997-09-30', 'VER123', 'https://foto.url/verstappen.jpg'),
(2, 'Sergio Pérez', 'PER', 'México', 1.73, 63, '1990-01-26', 'PER123', 'https://foto.url/perez.jpg'),
(3, 'Lewis Hamilton', 'HAM', 'Reino Unido', 1.74, 68, '1985-01-07', 'HAM123', 'https://foto.url/hamilton.jpg'),
(4, 'George Russell', 'RUS', 'Reino Unido', 1.85, 70, '1998-02-15', 'RUS123', 'https://foto.url/russell.jpg'),
(5, 'Charles Leclerc', 'LEC', 'Mónaco', 1.80, 69, '1997-10-16', 'LEC123', 'https://foto.url/leclerc.jpg'),
(6, 'Carlos Sainz', 'SAI', 'España', 1.78, 67, '1994-09-01', 'SAI123', 'https://foto.url/sainz.jpg'),
(7, 'Lando Norris', 'NOR', 'Reino Unido', 1.76, 68, '1999-11-13', 'NOR123', 'https://foto.url/norris.jpg'),
(8, 'Oscar Piastri', 'PIA', 'Australia', 1.78, 68, '2001-04-06', 'PIA123', 'https://foto.url/piastri.jpg'),
(9, 'Fernando Alonso', 'ALO', 'España', 1.71, 68, '1981-07-29', 'ALO123', 'https://foto.url/alonso.jpg'),
(10, 'Lance Stroll', 'STR', 'Canadá', 1.82, 70, '1998-10-29', 'STR123', 'https://foto.url/stroll.jpg'),
(11, 'Esteban Ocon', 'OCO', 'Francia', 1.86, 66, '1996-09-17', 'OCO123', 'https://foto.url/ocon.jpg'),
(12, 'Pierre Gasly', 'GAS', 'Francia', 1.77, 70, '1996-02-07', 'GAS123', 'https://foto.url/gasly.jpg'),
(13, 'Alexander Albon', 'ALB', 'Tailandia', 1.86, 74, '1996-03-23', 'ALB123', 'https://foto.url/albon.jpg'),
(14, 'Logan Sargeant', 'SAR', 'EE.UU.', 1.81, 71, '2000-12-31', 'SAR123', 'https://foto.url/sargeant.jpg'),
(15, 'Yuki Tsunoda', 'TSU', 'Japón', 1.59, 54, '2000-05-11', 'TSU123', 'https://foto.url/tsunoda.jpg'),
(16, 'Daniel Ricciardo', 'RIC', 'Australia', 1.80, 66, '1989-07-01', 'RIC123', 'https://foto.url/ricciardo.jpg'),
(17, 'Kevin Magnussen', 'MAG', 'Dinamarca', 1.74, 68, '1992-10-05', 'MAG123', 'https://foto.url/magnussen.jpg'),
(18, 'Nico Hülkenberg', 'HUL', 'Alemania', 1.84, 74, '1987-08-19', 'HUL123', 'https://foto.url/hulkenberg.jpg'),
(19, 'Valtteri Bottas', 'BOT', 'Finlandia', 1.73, 69, '1989-08-28', 'BOT123', 'https://foto.url/bottas.jpg'),
(20, 'Zhou Guanyu', 'ZHO', 'China', 1.75, 70, '1999-05-30', 'ZHO123', 'https://foto.url/zhou.jpg');





-- Temporada
INSERT INTO Temporada (id, año, idPilotoGANADOR, idEquipoGANADOR) VALUES
(1, 2024, 1, 1);

-- CocheTemporada 
INSERT INTO CocheTemporada (id, nombre, motor, idEquipo, idTemporada, especificaciones_tecnicas, peso_coche, potencia) VALUES
(1, 'RB20', 'Honda RBPTH001', 1, 1, 'Chasis RB20', 798, 1050),
(2, 'W15', 'Mercedes-AMG F1 M15 E Performance', 2, 1, 'Chasis W15', 798, 1050),
(3, 'SF-24', 'Ferrari 066/10', 3, 1, 'Chasis SF-24', 798, 1050),
(4, 'MCL38', 'Mercedes', 4, 1, 'Chasis MCL38', 798, 1050),
(5, 'AMR24', 'Mercedes', 5, 1, 'Chasis AMR24', 798, 1050),
(6, 'A524', 'Renault', 6, 1, 'Chasis A524', 798, 1050),
(7, 'FW46', 'Mercedes', 7, 1, 'Chasis FW46', 798, 1050),
(8, 'VCARB 01', 'Honda RBPT', 8, 1, 'Chasis VCARB 01', 798, 1050),
(9, 'VF-24', 'Ferrari', 9, 1, 'Chasis VF-24', 798, 1050),
(10, 'C44', 'Ferrari', 10, 1, 'Chasis C44', 798, 1050);

-- PilotoTemporadaEquipo 
INSERT INTO PilotoTemporadaEquipo (idTemporada, idPiloto, idEquipo, idCocheTemporada, numeroCoche) VALUES
(1, 1, 1, 1, 1),  
(1, 2, 1, 1, 11),  
(1, 3, 2, 2, 44),  
(1, 4, 2, 2, 63), 
(1, 5, 3, 3, 16), 
(1, 6, 3, 3, 55),  
(1, 7, 4, 4, 4),   
(1, 8, 4, 4, 81),  
(1, 9, 5, 5, 14),  
(1, 10, 5, 5, 18), 
(1, 11, 6, 6, 31), 
(1, 12, 6, 6, 10), 
(1, 13, 7, 7, 23), 
(1, 14, 7, 7, 2),  
(1, 15, 8, 8, 22), 
(1, 16, 8, 8, 3),  
(1, 17, 9, 9, 20), 
(1, 18, 9, 9, 27), 
(1, 19, 10, 10, 77), 
(1, 20, 10, 10, 24); 
-- Circuitos 
INSERT INTO Circuito (id, nombre, localizacion, pais, kilometros, numero_vueltas, record_vuelta, tipo_circuito, longitud_pit_lane) VALUES
(1, 'Bahrain International Circuit', 'Sakhir', 'Baréin', 5.412, 57, '1:31.447', 'Permanente', 420.0),
(2, 'Jeddah Street Circuit', 'Jeddah', 'Arabia Saudita', 6.174, 50, '1:30.734', 'Callejero', 430.0),
(3, 'Albert Park Circuit', 'Melbourne', 'Australia', 5.303, 58, '1:20.260', 'Semi-permanente', 410.0);

-- Gran Premio
INSERT INTO GranPremio (id, nombreGranPremio, idTemporada, idCircuito, fecha, clima, hora_inicio, vueltas_completadas, estado) VALUES
(1, 'Gran Premio de Baréin', 1, 1, '2024-03-03', 'Soleado', '15:00:00', 57, 'Finalizado'),
(2, 'Gran Premio de Arabia Saudita', 1, 2, '2024-03-10', 'Nublado', '17:00:00', 50, 'Finalizado'),
(3, 'Gran Premio de Australia', 1, 3, '2024-03-17', 'Lluvia', '14:00:00', 58, 'Finalizado');

-- Clasificacion Piloto
INSERT INTO ClasificacionPiloto (id, idTemporada, idPiloto, posicion, puntos) VALUES
(1, 1, 1, 1, 390),
(2, 1, 3, 2, 320),
(3, 1, 5, 3, 270),
(4, 1, 6, 4, 210),
(5, 1, 2, 5, 190),
(6, 1, 4, 6, 160),
(7, 1, 7, 7, 130),
(8, 1, 8, 8, 110),
(9, 1, 9, 9, 90),
(10, 1, 11, 10, 80),
(11, 1, 12, 11, 75),
(12, 1, 13, 12, 60),
(13, 1, 14, 13, 50),
(14, 1, 15, 14, 45),
(15, 1, 16, 15, 40),
(16, 1, 17, 16, 30),
(17, 1, 18, 17, 25),
(18, 1, 19, 18, 20),
(19, 1, 20, 19, 15),
(20, 1, 10, 20, 10);


-- Clasificacion EQuipo
INSERT INTO ClasificacionEquipo (id, idTemporada, idEquipo, posicion, puntos) VALUES
(1, 1, 1, 1, 580),
(2, 1, 2, 2, 530),
(3, 1, 3, 3, 470),
(4, 1, 4, 4, 360),
(5, 1, 5, 5, 300),
(6, 1, 6, 6, 260),
(7, 1, 7, 7, 210),
(8, 1, 8, 8, 180),
(9, 1, 9, 9, 120),
(10, 1, 10, 10, 90);

-- ResultadosGranPRemio
INSERT INTO ResultadoGranPremio 
(id, idGranPremio, idPiloto, idEquipo, posicion, tiempo_total, mejor_vuelta, vuelta_mejor_vuelta, obtuvo_punto_vuelta_rapida, paradas_box, estado_final) VALUES
(1, 1, 1, 1, 1, '01:30:00', '01:31.000', 40, TRUE, 2, 'Finalizó'),
(2, 1, 3, 2, 2, '01:30:15', '01:31.200', 42, FALSE, 3, 'Finalizó'),
(3, 1, 5, 3, 3, '01:30:30', '01:31.500', 45, FALSE, 2, 'Finalizó'),
(4, 1, 6, 3, 4, '01:31:10', '01:31.800', 38, FALSE, 2, 'Finalizó'),
(5, 1, 2, 1, 5, '01:31:40', '01:32.000', 44, FALSE, 3, 'Finalizó'),
(6, 1, 4, 2, 6, '01:32:10', '01:32.200', 39, FALSE, 3, 'Finalizó'),
(7, 1, 7, 4, 7, '01:32:45', '01:32.500', 40, FALSE, 3, 'Finalizó'),
(8, 1, 8, 4, 8, '01:33:20', '01:32.700', 41, FALSE, 2, 'Finalizó'),
(9, 1, 9, 5, 9, '01:33:50', '01:33.000', 43, FALSE, 2, 'Finalizó'),
(10, 1, 11, 6, 10, '01:34:15', '01:33.300', 42, FALSE, 2, 'Finalizó'),
(11, 1, 10, 5, 11, '01:34:40', '01:33.600', 46, FALSE, 3, 'Finalizó'),
(12, 1, 12, 6, 12, '01:35:05', '01:33.800', 47, FALSE, 3, 'Finalizó'),
(13, 1, 13, 7, 13, '01:35:30', '01:34.000', 48, FALSE, 2, 'Finalizó'),
(14, 1, 14, 7, 14, '01:35:55', '01:34.200', 49, FALSE, 2, 'Finalizó'),
(15, 1, 15, 8, 15, '01:36:20', '01:34.400', 50, FALSE, 2, 'Finalizó'),
(16, 1, 16, 8, 16, '01:36:45', '01:34.600', 51, FALSE, 2, 'Finalizó'),
(17, 1, 17, 9, 17, '01:37:10', '01:34.800', 52, FALSE, 3, 'Finalizó'),
(18, 1, 18, 9, 18, '01:37:35', '01:35.000', 53, FALSE, 3, 'Finalizó'),
(19, 1, 19, 10, 19, '01:38:00', '01:35.200', 54, FALSE, 2, 'Finalizó'),
(20, 1, 20, 10, 20, '01:38:25', '01:35.400', 55, FALSE, 2, 'Finalizó'),
(21, 2, 3, 2, 1, '01:35:00', '01:30.700', 33, TRUE, 2, 'Finalizó'),
(22, 2, 1, 1, 2, '01:35:10', '01:30.900', 35, FALSE, 3, 'Finalizó'),
(23, 2, 6, 3, 3, '01:35:25', '01:31.100', 32, FALSE, 2, 'Finalizó'),
(24, 2, 5, 3, 4, '01:35:40', '01:31.300', 34, FALSE, 3, 'Finalizó'),
(25, 2, 4, 2, 5, '01:36:00', '01:31.600', 36, FALSE, 2, 'Finalizó'),
(26, 2, 2, 1, 6, '01:36:20', '01:31.900', 37, FALSE, 3, 'Finalizó'),
(27, 2, 7, 4, 7, '01:36:45', '01:32.100', 38, FALSE, 3, 'Finalizó'),
(28, 2, 8, 4, 8, '01:37:05', '01:32.400', 39, FALSE, 2, 'Finalizó'),
(29, 2, 9, 5, 9, '01:37:30', '01:32.700', 40, FALSE, 2, 'Finalizó'),
(30, 2, 11, 6, 10, '01:37:55', '01:33.000', 41, FALSE, 3, 'Finalizó'),
(31, 2, 10, 5, 11, '01:38:20', '01:33.300', 42, FALSE, 2, 'Finalizó'),
(32, 2, 12, 6, 12, '01:38:45', '01:33.600', 43, FALSE, 3, 'Finalizó'),
(33, 2, 13, 7, 13, '01:39:10', '01:33.900', 44, FALSE, 2, 'Finalizó'),
(34, 2, 14, 7, 14, '01:39:35', '01:34.200', 45, FALSE, 2, 'Finalizó'),
(35, 2, 15, 8, 15, '01:40:00', '01:34.500', 46, FALSE, 2, 'Finalizó'),
(36, 2, 16, 8, 16, '01:40:25', '01:34.800', 47, FALSE, 3, 'Finalizó'),
(37, 2, 17, 9, 17, '01:40:50', '01:35.100', 48, FALSE, 2, 'Finalizó'),
(38, 2, 18, 9, 18, '01:41:15', '01:35.400', 49, FALSE, 3, 'Finalizó'),
(39, 2, 19, 10, 19, '01:41:40', '01:35.700', 50, FALSE, 2, 'Finalizó'),
(40, 2, 20, 10, 20, '01:42:05', '01:36.000', 51, FALSE, 3, 'Finalizó'),
(41, 3, 5, 3, 1, '01:25:00', '01:20.100', 20, TRUE, 2, 'Finalizó'),
(42, 3, 1, 1, 2, '01:25:15', '01:20.300', 22, FALSE, 3, 'Finalizó'),
(43, 3, 3, 2, 3, '01:25:30', '01:20.500', 21, FALSE, 2, 'Finalizó'),
(44, 3, 6, 3, 4, '01:25:50', '01:20.700', 23, FALSE, 3, 'Finalizó'),
(45, 3, 4, 2, 5, '01:26:10', '01:21.000', 25, FALSE, 2, 'Finalizó'),
(46, 3, 2, 1, 6, '01:26:30', '01:21.200', 24, FALSE, 3, 'Finalizó'),
(47, 3, 7, 4, 7, '01:26:55', '01:21.400', 26, FALSE, 3, 'Finalizó'),
(48, 3, 8, 4, 8, '01:27:15', '01:21.700', 27, FALSE, 2, 'Finalizó'),
(49, 3, 9, 5, 9, '01:27:40', '01:22.000', 28, FALSE, 2, 'Finalizó'),
(50, 3, 11, 6, 10, '01:28:05', '01:22.300', 29, FALSE, 3, 'Finalizó'),
(51, 3, 10, 5, 11, '01:28:30', '01:22.600', 30, FALSE, 2, 'Finalizó'),
(52, 3, 12, 6, 12, '01:28:55', '01:22.900', 31, FALSE, 2, 'Finalizó'),
(53, 3, 13, 7, 13, '01:29:20', '01:23.200', 32, FALSE, 2, 'Finalizó'),
(54, 3, 14, 7, 14, '01:29:45', '01:23.500', 33, FALSE, 3, 'Finalizó'),
(55, 3, 15, 8, 15, '01:30:10', '01:23.800', 34, FALSE, 2, 'Finalizó'),
(56, 3, 16, 8, 16, '01:30:35', '01:24.100', 35, FALSE, 3, 'Finalizó'),
(57, 3, 17, 9, 17, '01:31:00', '01:24.400', 36, FALSE, 2, 'Finalizó'),
(58, 3, 18, 9, 18, '01:31:25', '01:24.700', 37, FALSE, 3, 'Finalizó'),
(59, 3, 19, 10, 19, '01:31:50', '01:25.000', 38, FALSE, 2, 'Finalizó'),
(60, 3, 20, 10, 20, '01:32:15', '01:25.300', 39, FALSE, 3, 'Finalizó');

-- Qualy
INSERT INTO Qualy (idGranPremio, idPiloto, idEquipo, q1, q2, q3, posicion, tipo_clasificacion, condicion_pista) VALUES
(1, 1, 1, '1:30.050', '1:29.800', '1:29.300', 1, 'Clasificación Oficial', 'Seco'),
(1, 2, 1, '1:30.900', '1:30.100', '1:29.900', 2, 'Clasificación Oficial', 'Seco'),
(1, 3, 2, '1:31.000', '1:30.500', '1:30.100', 3, 'Clasificación Oficial', 'Seco'),
(1, 5, 3, '1:31.200', '1:30.700', '1:30.300', 4, 'Clasificación Oficial', 'Seco'),
(1, 4, 2, '1:31.300', '1:30.800', '1:30.400', 5, 'Clasificación Oficial', 'Seco'),
(1, 6, 3, '1:31.400', '1:31.000', '1:30.700', 6, 'Clasificación Oficial', 'Seco'),
(1, 7, 4, '1:31.600', '1:31.200', '1:30.900', 7, 'Clasificación Oficial', 'Seco'),
(1, 8, 4, '1:31.700', '1:31.300', '1:31.000', 8, 'Clasificación Oficial', 'Seco'),
(1, 9, 5, '1:31.800', '1:31.400', '1:31.200', 9, 'Clasificación Oficial', 'Seco'),
(1, 10, 5, '1:31.900', '1:31.500', '1:31.300', 10, 'Clasificación Oficial', 'Seco'),
(1, 11, 6, '1:32.000', '1:31.700', NULL, 11, 'Clasificación Oficial', 'Seco'),
(1, 12, 6, '1:32.100', '1:31.800', NULL, 12, 'Clasificación Oficial', 'Seco'),
(1, 13, 7, '1:32.200', '1:31.900', NULL, 13, 'Clasificación Oficial', 'Seco'),
(1, 14, 7, '1:32.300', '1:32.000', NULL, 14, 'Clasificación Oficial', 'Seco'),
(1, 15, 8, '1:32.400', '1:32.100', NULL, 15, 'Clasificación Oficial', 'Seco'),
(1, 16, 8, '1:32.500', '1:32.200', NULL, 16, 'Clasificación Oficial', 'Seco'),
(1, 17, 9, '1:32.600', NULL, NULL, 17, 'Clasificación Oficial', 'Seco'),
(1, 18, 9, '1:32.700', NULL, NULL, 18, 'Clasificación Oficial', 'Seco'),
(1, 19, 10, '1:32.800', NULL, NULL, 19, 'Clasificación Oficial', 'Seco'),
(1, 20, 10, '1:32.900', NULL, NULL, 20, 'Clasificación Oficial', 'Seco'),
(2, 3, 2, '1:29.700', '1:29.200', '1:28.800', 1, 'Clasificación Oficial', 'Nublado'),
(2, 1, 1, '1:29.800', '1:29.300', '1:28.900', 2, 'Clasificación Oficial', 'Nublado'),
(2, 5, 3, '1:30.100', '1:29.600', '1:29.100', 3, 'Clasificación Oficial', 'Nublado'),
(2, 2, 1, '1:30.400', '1:29.900', '1:29.400', 4, 'Clasificación Oficial', 'Nublado'),
(2, 4, 2, '1:30.600', '1:30.000', '1:29.600', 5, 'Clasificación Oficial', 'Nublado'),
(2, 6, 3, '1:30.800', '1:30.100', '1:29.800', 6, 'Clasificación Oficial', 'Nublado'),
(2, 7, 4, '1:31.000', '1:30.300', '1:30.000', 7, 'Clasificación Oficial', 'Nublado'),
(2, 8, 4, '1:31.100', '1:30.400', '1:30.200', 8, 'Clasificación Oficial', 'Nublado'),
(2, 9, 5, '1:31.300', '1:30.600', '1:30.300', 9, 'Clasificación Oficial', 'Nublado'),
(2, 10, 5, '1:31.500', '1:30.800', '1:30.400', 10, 'Clasificación Oficial', 'Nublado'),
(2, 11, 6, '1:31.700', '1:30.900', NULL, 11, 'Clasificación Oficial', 'Nublado'),
(2, 12, 6, '1:31.800', '1:31.000', NULL, 12, 'Clasificación Oficial', 'Nublado'),
(2, 13, 7, '1:31.900', '1:31.100', NULL, 13, 'Clasificación Oficial', 'Nublado'),
(2, 14, 7, '1:32.000', '1:31.300', NULL, 14, 'Clasificación Oficial', 'Nublado'),
(2, 15, 8, '1:32.200', '1:31.400', NULL, 15, 'Clasificación Oficial', 'Nublado'),
(2, 16, 8, '1:32.300', '1:31.600', NULL, 16, 'Clasificación Oficial', 'Nublado'),
(2, 17, 9, '1:32.500', NULL, NULL, 17, 'Clasificación Oficial', 'Nublado'),
(2, 18, 9, '1:32.600', NULL, NULL, 18, 'Clasificación Oficial', 'Nublado'),
(2, 19, 10, '1:32.700', NULL, NULL, 19, 'Clasificación Oficial', 'Nublado'),
(2, 20, 10, '1:32.800', NULL, NULL, 20, 'Clasificación Oficial', 'Nublado'),
(3, 5, 3, '1:28.900', '1:28.400', '1:28.000', 1, 'Clasificación Oficial', 'Lluvia'),
(3, 6, 3, '1:29.100', '1:28.600', '1:28.200', 2, 'Clasificación Oficial', 'Lluvia'),
(3, 1, 1, '1:29.300', '1:28.800', '1:28.400', 3, 'Clasificación Oficial', 'Lluvia'),
(3, 3, 2, '1:29.400', '1:29.000', '1:28.700', 4, 'Clasificación Oficial', 'Lluvia'),
(3, 4, 2, '1:29.500', '1:29.100', '1:28.800', 5, 'Clasificación Oficial', 'Lluvia'),
(3, 7, 4, '1:29.600', '1:29.200', '1:28.900', 6, 'Clasificación Oficial', 'Lluvia'),
(3, 2, 1, '1:29.700', '1:29.300', '1:29.000', 7, 'Clasificación Oficial', 'Lluvia'),
(3, 8, 4, '1:29.900', '1:29.400', '1:29.100', 8, 'Clasificación Oficial', 'Lluvia'),
(3, 9, 5, '1:30.000', '1:29.500', '1:29.200', 9, 'Clasificación Oficial', 'Lluvia'),
(3, 10, 5, '1:30.100', '1:29.600', '1:29.300', 10, 'Clasificación Oficial', 'Lluvia'),
(3, 11, 6, '1:30.200', '1:29.700', NULL, 11, 'Clasificación Oficial', 'Lluvia'),
(3, 12, 6, '1:30.300', '1:29.800', NULL, 12, 'Clasificación Oficial', 'Lluvia'),
(3, 13, 7, '1:30.400', '1:29.900', NULL, 13, 'Clasificación Oficial', 'Lluvia'),
(3, 14, 7, '1:30.500', '1:30.000', NULL, 14, 'Clasificación Oficial', 'Lluvia'),
(3, 15, 8, '1:30.600', '1:30.100', NULL, 15, 'Clasificación Oficial', 'Lluvia'),
(3, 16, 8, '1:30.700', '1:30.200', NULL, 16, 'Clasificación Oficial', 'Lluvia'),
(3, 17, 9, '1:30.800', NULL, NULL, 17, 'Clasificación Oficial', 'Lluvia'),
(3, 18, 9, '1:30.900', NULL, NULL, 18, 'Clasificación Oficial', 'Lluvia'),
(3, 19, 10, '1:31.000', NULL, NULL, 19, 'Clasificación Oficial', 'Lluvia'),
(3, 20, 10, '1:31.100', NULL, NULL, 20, 'Clasificación Oficial', 'Lluvia');

 

-- Nuematicos
INSERT INTO NeumaticoUsado (id, idResultadoGP, compuesto, vueltas_usado) VALUES
(1, 1, 'Blando', 20),
(2, 1, 'Medio', 25),

(3, 2, 'Medio', 30),
(4, 2, 'Duro', 20),

(5, 3, 'Blando', 22),
(6, 3, 'Medio', 28),

(7, 4, 'Medio', 35),
(8, 4, 'Duro', 10),

(9, 5, 'Blando', 25),
(10, 5, 'Medio', 25),

(11, 6, 'Medio', 30),
(12, 6, 'Duro', 20),

(13, 7, 'Blando', 18),
(14, 7, 'Medio', 30),

(15, 8, 'Blando', 25),
(16, 8, 'Medio', 25),

(17, 9, 'Medio', 35),
(18, 9, 'Duro', 15),

(19, 10, 'Blando', 20),
(20, 10, 'Medio', 30),

(21, 11, 'Medio', 40),
(22, 11, 'Duro', 10),

(23, 12, 'Blando', 25),
(24, 12, 'Medio', 25),

(25, 13, 'Medio', 30),
(26, 13, 'Duro', 20),

(27, 14, 'Blando', 18),
(28, 14, 'Medio', 30),

(29, 15, 'Blando', 20),
(30, 15, 'Medio', 30),

(31, 16, 'Medio', 35),
(32, 16, 'Duro', 15),

(33, 17, 'Blando', 20),
(34, 17, 'Medio', 30),

(35, 18, 'Medio', 40),
(36, 18, 'Duro', 10),

(37, 19, 'Blando', 25),
(38, 19, 'Medio', 25),

(39, 20, 'Medio', 30),
(40, 20, 'Duro', 20),

(41, 21, 'Blando', 22),
(42, 21, 'Medio', 28),

(43, 22, 'Medio', 33),
(44, 22, 'Duro', 17),

(45, 23, 'Blando', 20),
(46, 23, 'Medio', 30),

(47, 24, 'Medio', 40),
(48, 24, 'Duro', 10),

(49, 25, 'Blando', 18),
(50, 25, 'Medio', 32),

(51, 26, 'Medio', 30),
(52, 26, 'Duro', 20),

(53, 27, 'Blando', 25),
(54, 27, 'Medio', 25),

(55, 28, 'Medio', 35),
(56, 28, 'Duro', 15),

(57, 29, 'Blando', 20),
(58, 29, 'Medio', 30),

(59, 30, 'Medio', 40),
(60, 30, 'Duro', 10),

(61, 31, 'Blando', 25),
(62, 31, 'Medio', 25),

(63, 32, 'Medio', 30),
(64, 32, 'Duro', 20),

(65, 33, 'Blando', 18),
(66, 33, 'Medio', 32),

(67, 34, 'Blando', 20),
(68, 34, 'Medio', 30),

(69, 35, 'Medio', 35),
(70, 35, 'Duro', 15),

(71, 36, 'Blando', 20),
(72, 36, 'Medio', 30),

(73, 37, 'Medio', 40),
(74, 37, 'Duro', 10),

(75, 38, 'Blando', 25),
(76, 38, 'Medio', 25),

(77, 39, 'Medio', 30),
(78, 39, 'Duro', 20),

(79, 40, 'Blando', 18),
(80, 40, 'Medio', 32),

(81, 41, 'Blando', 20),
(82, 41, 'Medio', 30),

(83, 42, 'Medio', 35),
(84, 42, 'Duro', 15),

(85, 43, 'Blando', 22),
(86, 43, 'Medio', 28),

(87, 44, 'Medio', 40),
(88, 44, 'Duro', 10),

(89, 45, 'Blando', 18),
(90, 45, 'Medio', 32),

(91, 46, 'Medio', 30),
(92, 46, 'Duro', 20),

(93, 47, 'Blando', 25),
(94, 47, 'Medio', 25),

(95, 48, 'Medio', 35),
(96, 48, 'Duro', 15),

(97, 49, 'Blando', 20),
(98, 49, 'Medio', 30),

(99, 50, 'Medio', 40),
(100, 50, 'Duro', 10),

(101, 51, 'Blando', 25),
(102, 51, 'Medio', 25),

(103, 52, 'Medio', 30),
(104, 52, 'Duro', 20),

(105, 53, 'Blando', 18),
(106, 53, 'Medio', 32),

(107, 54, 'Blando', 20),
(108, 54, 'Medio', 30),

(109, 55, 'Medio', 35),
(110, 55, 'Duro', 15),

(111, 56, 'Blando', 20),
(112, 56, 'Medio', 30),

(113, 57, 'Medio', 40),
(114, 57, 'Duro', 10),

(115, 58, 'Blando', 25),
(116, 58, 'Medio', 25),

(117, 59, 'Medio', 30),
(118, 59, 'Duro', 20),

(119, 60, 'Blando', 18),
(120, 60, 'Medio', 32);

-- pena
INSERT INTO Penalizacion (id, idGranPremio, idPiloto, tipo_penalizacion, tiempo_penalizacion, descripcion, vuelta) VALUES
(1, 1, 5, 'Drive Through', NULL, 'Exceso de velocidad en el pit lane', 15),
(2, 1, 3, 'Time Penalty', 5, 'Colisión con otro piloto', 30),
(3, 2, 2, 'Stop & Go', NULL, 'Salida en falso', 10),
(4, 2, 8, 'Time Penalty', 10, 'Adelantamiento fuera de pista', 20),
(5, 3, 6, 'Drive Through', NULL, 'Incumplimiento de bandera azul', 25),
(6, 3, 1, 'Time Penalty', 3, 'Exceso de velocidad en el pit lane', 40);



