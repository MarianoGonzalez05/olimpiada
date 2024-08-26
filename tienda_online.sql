-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2024 a las 23:53:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `dni` varchar(30) NOT NULL,
  `estatus` tinyint(4) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_modifica` datetime DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `email`, `telefono`, `dni`, `estatus`, `fecha_alta`, `fecha_modifica`, `fecha_baja`) VALUES
(1, 'Mariano', 'Gonzalez', 'marianoxaviergonzalez@gmail.com', '1135086412', '46945735', 1, '2024-08-22 03:02:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(20) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_cliente` varchar(20) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripción` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripción`, `precio`, `id_categoria`, `activo`) VALUES
(1, 'Pelota de Newells', 'Iniciar sesión\r\n\r\nSuscribirse\r\nTú dijiste:\r\ngenerame una descripcion para vender una pelota de newells\r\nChatGPT Plus\r\nChatGPT\r\n¡Claro! Aquí tienes una descripción para vender una pelota de Newell\'s Old Boys:\r\n\r\nPelota Oficial de Newell\'s Old Boys - ¡Hazla Tuya!\r\n\r\n¡Atención, fanáticos del fútbol y seguidores de Newell\'s Old Boys! Te ofrecemos la oportunidad de tener en tus manos la Pelota Oficial de Newell\'s Old Boys, el complemento perfecto para tus partidos y entrenamientos. Diseñada para ofrecer un rendimiento óptimo en cada jugada, esta pelota cuenta con:\r\n\r\nDiseño Exclusivo: Colores vibrantes y el emblemático escudo de Newell\'s Old Boys, que refleja el orgullo y la pasión por tu equipo.\r\nCalidad Superior: Fabricada con materiales de alta durabilidad, garantizando resistencia y un excelente toque en cada pase o tiro.\r\nTecnología Avanzada: Costuras reforzadas y un balón con estructura aerodinámica para un vuelo más estable y preciso.\r\nIdeal tanto para los partidos de fin de semana como para coleccionistas y fanáticos que quieren llevar un pedacito de la Lepra a todas partes. ¡No dejes pasar esta oportunidad de ser parte del espíritu rojinegro en cada juego!\r\n\r\n', 599.00, 1, 1),
(3, 'Pelota de básquet', 'Pelota de Baloncesto Profesional – ¡Domina la Cancha!\r\n\r\n¡Eleva tu juego con nuestra Pelota de Baloncesto Profesional! Diseñada para ofrecer el mejor rendimiento en cada drible, pase y tiro, esta pelota es ideal para jugadores de todos los niveles que buscan calidad y precisión en el juego.\r\n\r\nConstrucción de Alta Calidad: Fabricada con un material de goma de primera clase que asegura durabilidad y un excelente agarre en cualquier superficie, ya sea en interiores o exteriores.\r\n\r\nDiseño y Tecnología de Punta: Su textura especial proporciona un control superior y un rebote consistente, ayudándote a realizar jugadas más precisas y efectivas.\r\n\r\nTamaño y Peso Reglamentarios: Cumple con las especificaciones oficiales para competiciones, garantizando que te prepares para los partidos con el equipo adecuado.\r\n\r\nApariencia Atractiva: Con un acabado en colores vibrantes y detalles que resaltan, esta pelota no solo rinde, sino que también destaca en la cancha.\r\n\r\nPerfecta para entrenamientos intensivos, juegos casuales con amigos o competiciones formales, esta pelota es el compañero ideal para mejorar tu técnica y disfrutar al máximo del baloncesto.\r\n\r\n¡No pierdas la oportunidad de tener en tus manos una pelota que combina calidad, rendimiento y estilo!\r\n\r\n', 200.00, 1, 1),
(4, 'Bate de beisbol', 'Bate de Béisbol Profesional – ¡Mejora Tu Juego!\r\n\r\n¡Transforma tu desempeño en el campo con nuestro Bate de Béisbol Profesional! Diseñado para jugadores que buscan precisión, potencia y durabilidad, este bate es ideal tanto para entrenamientos como para partidos. Aquí te contamos por qué es la elección perfecta para ti:\r\n\r\nConstrucción de Alta Calidad: Fabricado con materiales premium que garantizan una resistencia excepcional y una vida útil prolongada. Su estructura robusta está pensada para soportar el impacto de cada swing.\r\n\r\nDiseño Ergonómico: Equilibrado para proporcionar un agarre cómodo y una distribución del peso que maximiza la potencia de cada golpe. Su mango antideslizante asegura un control óptimo en cada movimiento.\r\n\r\nTecnología Avanzada: Incluye características innovadoras que mejoran la transferencia de energía al balón, aumentando tu capacidad de alcanzar mayores distancias y precisión en cada bateo.\r\n\r\nEstética Atractiva: Con un acabado elegante y profesional, este bate no solo rinde al máximo, sino que también destaca en estilo en el campo de juego.\r\n\r\nPerfecto para jugadores de todos los niveles que desean llevar su juego al siguiente nivel. Ya seas un atleta en formación o un jugador experimentado, este bate está diseñado para ayudarte a alcanzar tus metas y disfrutar del béisbol al máximo.\r\n\r\n¡No pierdas la oportunidad de hacerte con un equipo que marca la diferencia!\r\n\r\n', 499.00, 1, 1),
(5, 'Botella de agua', 'Botella de Agua Reutilizable – Mantén Tu Hidratación con Estilo\r\n\r\n¡Descubre la Botella de Agua Reutilizable que combina funcionalidad y elegancia! Diseñada para los que buscan mantenerse hidratados de manera práctica y sostenible, esta botella es ideal para tu vida diaria, deportes o aventuras al aire libre.\r\n\r\nMaterial de Alta Calidad: Fabricada en acero inoxidable de grado premium, esta botella es resistente, duradera y libre de BPA. Perfecta para mantener tus bebidas frías o calientes durante horas.\r\n\r\nDiseño Ergonómico: Su forma estilizada y tapa a prueba de fugas aseguran un agarre cómodo y seguro, evitando derrames en tu mochila o bolsa.\r\n\r\nCapacidad Ideal: Con una capacidad de [inserta capacidad, por ejemplo, 500 ml o 750 ml], es la medida perfecta para mantenerte hidratado sin ocupar demasiado espacio.\r\n\r\nFácil de Limpiar: Su diseño de boca ancha facilita la limpieza y permite añadir hielo o frutas para personalizar tus bebidas.\r\n\r\nEstilo Moderno: Disponible en varios colores y acabados elegantes, esta botella se adapta a tu estilo y personalidad, haciéndola la compañera perfecta tanto en el trabajo como en el gimnasio o durante tus salidas.\r\n\r\nIdeal para aquellos que valoran la sostenibilidad y desean reducir el uso de plásticos desechables sin renunciar a la funcionalidad y el estilo. ¡No te pierdas la oportunidad de hacerte con una botella que es tanto práctica como chic!\r\n\r\n', 399.00, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(120) NOT NULL,
  `token` varchar(40) NOT NULL,
  `token_password` varchar(40) DEFAULT NULL,
  `password_request` varchar(30) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `token`, `token_password`, `password_request`, `id_cliente`) VALUES
(1, 'mariano', '$2y$10$Y36715X4ZWUHU7Rw1LdL5Ob0VHHyxSKR6ZgJAuQjdF13s740c3lw.', '093498ca3a2fcbfa342ef2fa168f8af4', NULL, '', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
