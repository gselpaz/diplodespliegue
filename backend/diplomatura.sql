-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-02-2022 a las 00:46:54
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diplomatura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(4, 'Noticias de la crisis entre Ucrania y Rusia.11 Febrero, 2022', 'Lo que sabemos hasta ahora sobre la llamada de Biden y Putin de mañana', 'El presidente de Estados Unidos, Biden, tiene previsto hablar con el presidente ruso, Vladimir Putin, el sábado, según una persona familiarizada con el asunto, mientras Estados Unidos advierte que Rusia podría atacar a Ucrania con bombas y misiles en cualquier momento.\r\n\r\nLas conversaciones de alto nivel se producen en lo que los funcionarios estadounidenses describen como una coyuntura crítica en la crisis actual. Un aumento significativo de las fuerzas terrestres y los activos militares rusos han rodeado Ucrania, y Putin podría decidir en cualquier momento activarlos para realizar una invasión mortal.\r\n\r\nPutin no ha decidido si va a actuar, dijo este viernes la Casa Blanca. Pero eso no ha impedido a los funcionarios estadounidenses aumentar drásticamente sus advertencias de que un ataque es ahora una \"clara posibilidad\" y podría ocurrir rápidamente.\r\n\r\nLa conversación telefónica de Biden con Putin -prevista para el sábado a las 11 de la mañana, hora del este, según el Kremlin- será la primera desde finales de diciembre. Desde entonces, el número de tropas rusas cerca de Ucrania ha aumentado y las perspectivas de una invasión han aumentado, según las evaluaciones de los servicios de inteligencia estadounidenses.', 'dg4rah85v8lraajnkqbz'),
(2, 'Dólar hoy: la cotización libre subió a $219,50 y anotó un nuevo récord', 'La divisa informal ganó 50 centavos en el día y se encarece 5,5% en enero, mientras que la brecha cambiaria con el dólar mayorista alcanza el 109,8%. El BCRA terminó con saldo neutro', 'El dólar libre ganó 50 centavos este martes, a $219,50 para la venta en el reducido mercado paralelo, en su precio máximo histórico. En enero trepa 11,50 pesos o 5,5 por ciento.\r\n\r\nEl dólar mayorista ascendió once centavos, a $104,64, con una brecha cambiaria de 109,8% respecto del “blue”.\r\n\r\nEl monto operado en el segmento de contado (spot) alcanzó los 171,2 millones de dólares. “En una rueda de bajo monto negociado, el BCRA cerró su participación de hoy con un saldo neutro”, afirmó Gustavo Quintana, operador de PR Corredores de Cambio.\r\n\r\nEl economista Luis Palma Cané consideró que “la suba del dólar blue es consecuencia de una pésima política económica”, y aseguró que el ahorrista prefiere esa moneda y no el peso porque “está cansado de que lo estafen”.', 'm2fzsas8eebgl6x28wpb'),
(8, 'Facebook, en caída: los seis motivos por los que la empresa de Zuckerberg está en problemas', 'La compañía lidia con una transición complicada de las redes sociales al mundo virtual del metaverso, mientras crecen otros rivales en el mundo tecnológico', 'NUEVA YORK.- Meta, la compañía antes conocida como Facebook, sufrió el 3 de febrero la pérdida más grande de un solo día en su historia, pues sus acciones cayeron un 26,4%, y su valor de mercado descendió unos 232.000 millones de dólares.\r\n\r\nSu descenso ocurrió tras un informe desalentador de resultados el miércoles 2 de febrero, cuando el director ejecutivo Mark Zuckerberg explicó que la compañía estaba lidiando con una transición complicada de las redes sociales al mundo virtual del metaverso. El jueves, un vocero de la compañía reiteró las declaraciones de su anuncio de resultados y rechazó hacer más comentarios.\r\n\r\nA continuación, seis motivos por los que Meta está en una posición complicada.\r\n\r\n1- El crecimiento de los usuarios llegó a un límite\r\nSe acabaron los días juveniles del crecimiento salvaje de los usuarios de Facebook. Aunque el miércoles la compañía registró un crecimiento modesto en su número de usuarios nuevos en su familia de aplicaciones -que incluye Instagram, Messenger y WhatsApp- su aplicación principal de redes sociales, Facebook, perdió casi medio millón de usuarios durante el cuarto trimestre en comparación con el anterior.', 'jf0aveasl0wgmr2nudjx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Gonzalo', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Megan', 'd93591bdf7860e1e4ee2fca799911215');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
