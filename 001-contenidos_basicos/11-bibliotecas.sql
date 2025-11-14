-- sudo mysql -u root -p

CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE libros(
    nombre VARCHAR(255),
    sinopsis text,
    año_de_creacion INT
);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('El Eco de las Montañas', 'Una joven pastora descubre que las montañas responden a su voz y esconden un antiguo secreto capaz de cambiar el destino de su pueblo.', 1998);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Sombras en la Marea', 'Un pescador encuentra un objeto misterioso en la orilla que altera la conducta de quienes lo tocan.', 2005);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('La Ciudad de los Relojes Rotos', 'En una ciudad donde el tiempo se detuvo, un relojero intenta reactivar el gran reloj central.', 2012);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('El Jardín de los Susurros', 'Una botánica descubre plantas capaces de registrar recuerdos humanos.', 2020);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Niebla Carmesí', 'Un extraño fenómeno cubre una aldea con una niebla roja que provoca sueños compartidos.', 1995);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Caminos de Ceniza', 'Tras la erupción de un volcán, un grupo de sobrevivientes debe cruzar una región devastada llena de peligros.', 2017);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('El Último Navegante', 'Un piloto espacial retirado recibe una señal que podría provenir de una civilización desaparecida.', 2024);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Travesía al Horizonte Helado', 'Un explorador se enfrenta a un continente congelado donde nada es lo que parece.', 2001);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('El Archivo de los Vientos', 'Un historiador descubre manuscritos que predicen eventos climáticos imposibles.', 1990);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Bosque de Cristal', 'Una niña se adentra en un bosque donde los árboles crecen como gigantescos cristales.', 2011);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Senderos Invisibles', 'Un cartógrafo encuentra caminos que solo pueden recorrerse durante la noche.', 2008);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('La Herencia del Polvo', 'Un arqueólogo activa accidentalmente una máquina ancestral que altera la gravedad.', 1997);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Tiempo de Ríos Negros', 'Un pueblo se enfrenta al surgimiento de un río oscuro que cambia la memoria de las personas.', 2016);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('El Guardián de los Sueños Rotos', 'Un hombre que puede entrar en los sueños intenta salvar a quienes han quedado atrapados en su propio subconsciente.', 2022);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Reflejos del Otro Lado', 'En un lago aparecen reflejos que no corresponden al mundo real.', 2003);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('La Ruta del Fénix', 'Una aventurera sigue el rastro de una criatura legendaria capaz de renacer del fuego.', 1988);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Susurros de Humo', 'Una ciudad industrial es acechada por criaturas que emergen del humo de las fábricas.', 2013);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('El Puente de los Ecos', 'Un puente abandonado conecta al viajero con versiones alternativas de sí mismo.', 2021);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('La Torre de las Mareas', 'Una torre solitaria en la costa controla misteriosamente el flujo del mar.', 1993);

INSERT INTO libros (nombre, sinopsis, año_de_creacion) VALUES
('Cantos de la Tierra Hueca', 'Un geólogo desciende a cavidades profundas y halla un ecosistema subterráneo desconocido.', 2019);


SELECT

nombre AS 'Nombre del libro',
sinopsis AS 'Sinopsis',
año_de_creacion AS 'Fecha de creacion'

FROM

libros

ORDER BY
año_de_creacion DESC, nombre ASC;
-- podeis usar IA para crear mas inserts
