# Base de Datos Relacional para Análisis de Datos de F1

## Descripción
Este proyecto tiene como objetivo diseñar y construir una base de datos relacional robusta y bien estructurada para almacenar y consultar toda la información relevante de la Fórmula 1. Permite gestionar datos de pilotos, equipos, temporadas, coches, circuitos, grandes premios, clasificaciones, resultados y estrategias de carrera, facilitando el análisis para equipos, medios y analistas.

---

## Características
- Almacenamiento de datos históricos de temporadas, pilotos, equipos, circuitos y carreras.
- Consulta de estadísticas detalladas por piloto, equipo o temporada.
- Visualización de resultados de grandes premios, incluyendo posiciones, mejores vueltas, penalizaciones y condiciones climáticas.
- Seguimiento de alineaciones de pilotos y coches por temporada y equipo.
- Registro de estrategias de carrera como uso de neumáticos, paradas en pits y penalizaciones.
- Gestión de clasificaciones actualizadas para pilotos y equipos por temporada.

---

## Requisitos

### Funcionales
- Guardar información completa y actualizada sobre pilotos, equipos, temporadas y carreras.
- Consultar estadísticas y resultados de manera eficiente.
- Registrar eventos y estrategias de carrera.
- Mantener clasificaciones oficiales de pilotos y equipos.

### No Funcionales
- Estructura relacional normalizada para garantizar integridad y evitar redundancia.
- Escalabilidad para incluir nuevas temporadas y métricas.
- Fácil mantenimiento y ampliación para futuras funcionalidades.
- Compatibilidad con herramientas externas de análisis y visualización.

---

## Instalación

### Pre-requisitos
- Motor de base de datos relacional (MySQL)
- Cliente para gestionar la base de datos (MySQL Workbench)

### Pasos para instalar
1. Crear la base de datos en tu motor SQL preferido.
2. Ejecutar los scripts SQL para crear las tablas y relaciones según el esquema del proyecto.
3. Insertar los datos iniciales (pilotos, equipos, temporadas, circuitos).
4. Conectar con herramientas de análisis o desarrollar consultas para extraer información.

---

## Uso

- Realizar consultas SQL para obtener estadísticas de pilotos, equipos o temporadas.
- Consultar resultados detallados de grandes premios y clasificación.
- Analizar estrategias de carrera mediante datos de neumáticos usados, paradas y penalizaciones.
- Actualizar la base de datos con nuevos datos de temporadas futuras.

---

## Modelo de Datos / Estructura

Las tablas principales son:

- **Piloto**: Información personal y datos físicos.
- **Equipo**: Datos generales del equipo y su estructura.
- **Temporada**: Año, ganador piloto y equipo.
- **CocheTemporada**: Especificaciones técnicas del coche por temporada y equipo.
- **PilotoTemporadaEquipo**: Alineación de pilotos, coches y equipos por temporada.
- **Circuito**: Detalles del circuito y sus características.
- **GranPremio**: Información de cada carrera, fecha y condiciones.
- **ClasificacionPiloto** y **ClasificacionEquipo**: Posiciones y puntos por temporada.
- **Qualy**: Resultados de clasificación.
- **ResultadoGranPremio**: Resultados y estadísticas de carrera.
- **NeumaticoUsado**: Registro de uso de neumáticos.
- **Penalizacion**: Penalizaciones aplicadas durante la carrera.

---

## Contribuciones

Si quieres contribuir a mejorar este proyecto:

1. Haz un fork del repositorio.
2. Crea una rama con tu nueva funcionalidad (`git checkout -b feature/nueva-funcionalidad`).
3. Realiza tus cambios y commitea (`git commit -m "Añadida nueva funcionalidad"`).
4. Haz push a tu rama (`git push origin feature/nueva-funcionalidad`).
5. Abre un Pull Request describiendo tus cambios.

---

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.

---

## Contacto

Para dudas o sugerencias, puedes contactarme en:  
[abraham.fernandez@iessanmamede.com]
