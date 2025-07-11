-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2025 a las 03:20:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bar_2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_doc` int(10) UNSIGNED NOT NULL,
  `tipo_doc` enum('cedula de ciudadania','cedula de extranjeria') DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `num_celular` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_doc`, `tipo_doc`, `nombre`, `apellido`, `num_celular`, `correo`) VALUES
(567894, 'cedula de ciudadania', 'Juan', 'Ramirez', '315 3516515', 'juanr@gmail.com'),
(12234456, 'cedula de extranjeria', 'Ana', 'Lopez', '301 5515618', 'Ana855@gmail.com'),
(1014667306, 'cedula de ciudadania', 'sharon', 'hernandez', '3114768659', 'sharon.dp.hernandez@gmail.com'),
(1014667589, 'cedula de ciudadania', 'Maria', 'Garcia', '311 6841588', 'garcia200@gmail.com'),
(1022145874, 'cedula de extranjeria', 'Zoe', 'Campbell', '301 9754623', 'zoecamp@gmail.com'),
(1025634789, 'cedula de extranjeria', 'Chloe', 'White', '311 6634782', 'chloeW03@gmail.com'),
(1025684408, 'cedula de extranjeria', 'Sebastian', 'Taylor', '300 5848445', 'sebastianta78@gmail.com'),
(1031313158, 'cedula de ciudadania', 'Daniel', 'Florez', '313 9594151', 'florez658@gmail.com'),
(1032315133, 'cedula de ciudadania', 'Valeria', 'Torres', '322 5549744', 'torres78@gmail.com'),
(1032547896, 'cedula de extranjeria', 'Joshua', 'Lee', '301 7548963', 'joshlee777@gmail.com'),
(1036987451, 'cedula de extranjeria', 'Oliver', 'Rivera', '311 8459632', 'oliverrivera91@gmail.com'),
(1041569874, 'cedula de ciudadania', 'Jorge', 'Suarez', '322 6547891', 'jorgesz@gmail.com'),
(1044151515, 'cedula de extranjeria', 'Isabel', 'Martinez', '302 9654023', 'Misabel153@gmail.com'),
(1045455545, 'cedula de ciudadania', 'Luis', 'Rodriguez', '310 5156168', 'rodriguezL02@gmail.com'),
(1047894561, 'cedula de ciudadania', 'Nicolas', 'Herrera', '311 9856412', 'nicoHerrera@gmail.com'),
(1048456454, 'cedula de extranjeria', 'Andres', 'Miller', '311 9748484', 'AndresM32@gmmail.com'),
(1048796542, 'cedula de ciudadania', 'Andres', 'Gonzalez', '313 9786542', 'agz08@gmail.com'),
(1052233445, 'cedula de extranjeria', 'Emily', 'Johnson', '300 7841256', 'emilyJ98@gmail.com'),
(1054055567, 'cedula de ciudadania', 'Camila', 'Brown', '320 6484775', 'Camila89@gmail.com'),
(1054654641, 'cedula de extranjeria', 'Carlos', 'Hernandez', '320 1618777', 'Hernen874@gmail.com'),
(1054789632, 'cedula de ciudadania', 'Daniela', 'Vargas', '315 7541286', 'danivar92@gmail.com'),
(1056464123, 'cedula de extranjeria', 'Emma', 'Sanchez ', '302 9548458', 'Sanchez989@gmail.com'),
(1056841279, 'cedula de ciudadania', 'Juliana', 'Castro', '320 5487961', 'juliC12@gmail.com'),
(1058741596, 'cedula de ciudadania', 'Sara', 'Mendoza', '312 9874512', 'saramendoza@gmail.com'),
(1063214789, 'cedula de ciudadania', 'Laura', 'Romero', '310 7645982', 'laura.romero@gmail.com'),
(1064644841, 'cedula de ciudadania', 'Mateo', 'Gonzales ', '310 5454994', 'Gonzales98@gmail.com'),
(1065565418, 'cedula de ciudadania', 'Sofia', 'Johnson', '313 9751365', 'JOsofia56@gmail.com'),
(1067895432, 'cedula de ciudadania', 'Mariana', 'Perez', '310 8876543', 'maripz21@gmail.com'),
(1071112233, 'cedula de extranjeria', 'Henry', 'Kim', '300 9874523', 'henry.kim@gmail.com'),
(1074567890, 'cedula de ciudadania', 'Felipe', 'Torres', '312 9987456', 'ftorres32@gmail.com'),
(1544644300, 'cedula de ciudadania', 'Lucia', 'Smith', '312 9878941', 'LuciaSmi84@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallemo`
--

CREATE TABLE `detallemo` (
  `id_detalleMo` tinyint(3) UNSIGNED NOT NULL,
  `descripcion` text NOT NULL,
  `id_movimiento` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallemo`
--

INSERT INTO `detallemo` (`id_detalleMo`, `descripcion`, `id_movimiento`) VALUES
(1, 'Pago de cliente', 1),
(2, 'Compra de insumos', 2),
(3, 'Reserva de evento privado', 3),
(4, 'Pago a proveedor de bebidas', 4),
(5, 'Venta semanal', 5),
(6, 'Reparacion de equipo', 6),
(7, 'Cobro por cocteleria', 7),
(8, 'Compra de alimentos', 8),
(9, 'Pago por cata de vinos', 9),
(10, 'Pago empleados', 10),
(11, 'Reserva fiesta tematica', 11),
(12, 'Mantenimiento local', 12),
(13, 'Venta brunch y mimosas', 13),
(14, 'Publicidad redes sociales', 14),
(15, 'Pago noche de stand-up', 15),
(16, 'Pago de cliente', 16),
(17, 'Compra de insumos', 17),
(18, 'Reserva de evento privado', 18),
(19, 'Pago a proveedor de bebidas', 19),
(20, 'Venta semanal', 20),
(21, 'ReparaciÃ³n de equipo', 21),
(22, 'Cobro por coctelerÃ­a', 22),
(23, 'Compra de alimentos', 23),
(24, 'Pago por cata de vinos', 24),
(25, 'Honorarios mÃºsico invitado', 25),
(26, 'Reserva fiesta temÃ¡tica', 26),
(27, 'Mantenimiento local', 27),
(28, 'Venta brunch y mimosas', 28),
(29, 'Publicidad redes sociales', 29),
(30, 'Pago noche de stand-up', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalleV` tinyint(3) UNSIGNED NOT NULL,
  `descripcion` text NOT NULL,
  `monto_total` int(10) UNSIGNED NOT NULL,
  `abono` int(10) UNSIGNED DEFAULT NULL,
  `cantidad` tinyint(3) UNSIGNED DEFAULT NULL,
  `saldo` int(10) UNSIGNED DEFAULT NULL,
  `id_pago` tinyint(3) UNSIGNED DEFAULT NULL,
  `id_venta` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalleV`, `descripcion`, `monto_total`, `abono`, `cantidad`, `saldo`, `id_pago`, `id_venta`) VALUES
(1, 'RON_CALDAS_BT', 100000, 50000, 1, 50000, 1, 1),
(2, 'RON_CALDAS_MD', 150000, 100000, 2, 50000, 2, 2),
(3, 'HERETIC', 200000, 150000, 2, 50000, 3, 3),
(4, 'JACK_DANIELS_HONEY_MD', 95000, 40000, 1, 55000, 4, 4),
(5, 'JACK_DANIELS_N7_MD', 175000, 100000, 1, 75000, 5, 5),
(6, 'ANTIOQUEÑO_VERDE_MD', 200000, 50000, 3, 150000, 6, 6),
(7, 'ANTIOQUEÑO_VERDE_BT', 325650, 60000, 2, 265650, 7, 7),
(8, 'SMIRNOFF_TAMARINDO_BT', 500000, 30000, 4, 470000, 8, 8),
(9, 'Reservacion', 654000, 540000, 1, 114000, 9, 9),
(10, 'Reservacion', 205000, 50000, 2, 155000, 10, 10),
(11, 'Reservacion', 250000, 80000, 3, 170000, 11, 11),
(12, 'Reservacion', 985000, 90000, 1, 895000, 12, 12),
(13, 'Reservacion', 900000, 200000, 2, 700000, 13, 13),
(14, 'Reservacion', 951000, 570000, 1, 381000, 14, 14),
(15, 'Reservacion', 332000, 120000, 2, 212000, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id_evento` tinyint(3) UNSIGNED NOT NULL,
  `nombre_evento` varchar(50) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `tipo_evento` enum('empresarial','comun') DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `capacidad_max` int(11) NOT NULL,
  `estado` enum('confirmado','cancelado') DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_final` time DEFAULT NULL,
  `id_servicio` tinyint(3) UNSIGNED DEFAULT NULL,
  `id_usuario` tinyint(3) UNSIGNED DEFAULT NULL,
  `cover` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id_evento`, `nombre_evento`, `fecha_inicio`, `tipo_evento`, `fecha_final`, `capacidad_max`, `estado`, `hora_inicio`, `hora_final`, `id_servicio`, `id_usuario`, `cover`) VALUES
(1, 'Noche de Cocteles Artesanales', '2025-12-01', 'empresarial', '2025-01-14', 20, 'cancelado', '00:22:00', '00:03:00', 1, 1, 35.00),
(2, 'Cata de Vinos Boutique', '2025-09-02', 'comun', '2025-05-03', 25, 'confirmado', '00:18:00', '00:03:00', 2, 2, 50.00),
(3, 'Fiesta Retro 80s', '2025-05-03', 'comun', '2025-04-19', 40, 'cancelado', '00:19:00', '00:03:00', 3, 3, 15.00),
(4, 'Noche de Jazz en Vivo', '2025-11-04', 'comun', '2025-08-05', 35, 'cancelado', '00:20:00', '00:02:00', 4, 4, 22.00),
(5, 'Taller de cocteles Creativa', '2025-08-05', 'comun', '2025-06-23', 25, 'cancelado', '00:20:00', '00:03:00', 5, 5, 18.00),
(6, 'Festival de Cervezas Artesanales', '2025-10-06', 'empresarial', '0000-00-00', 20, 'confirmado', '00:22:00', '00:01:00', 6, 6, 25.00),
(7, 'Noche de Stand-Up Comedy', '2025-11-07', 'empresarial', '2025-07-29', 25, 'cancelado', '00:00:00', '00:02:00', 7, 7, 12.00),
(8, 'Cena Maridaje de Tapas y Vinos', '2025-07-29', 'comun', '2025-08-15', 35, 'confirmado', '00:00:00', '00:03:00', 8, 8, 20.00),
(9, 'Fiesta Blanca', '2025-08-15', 'comun', '2025-03-09', 55, 'confirmado', '00:00:00', '00:00:00', 9, 9, 25.00),
(10, 'Karaoke Night', '2025-03-09', 'comun', '2025-10-21', 25, 'confirmado', '00:00:00', '00:00:00', 10, 10, 15.00),
(11, 'Tarde de Brunch y Mimosas', '2025-10-21', 'empresarial', '2025-06-11', 55, 'confirmado', '00:00:00', '00:00:00', 11, 11, 12.00),
(12, 'Salsa y Mojitos', '2025-06-11', 'empresarial', '2025-11-18', 40, 'confirmado', '00:00:00', '00:00:00', 12, 12, 30.00),
(13, 'Noche de Trivia y Premios', '2025-11-18', 'empresarial', '2025-04-12', 15, 'confirmado', '00:00:00', '00:00:00', 13, 13, 28.00),
(14, 'Cena de Año Nuevo Gourmet', '2025-04-12', 'comun', '2025-12-31', 48, 'confirmado', '00:00:00', '00:00:00', 14, 14, 35.00),
(15, 'Fiesta de Fin de Año', '2025-12-30', 'comun', '2025-06-09', 55, 'cancelado', '00:00:00', '00:00:00', 15, 15, 12.00),
(16, 'Noche de Cocteles Artesanales', '2025-08-05', 'empresarial', '2025-06-23', 20, 'cancelado', '19:00:00', '23:00:00', 16, 16, 15000.00),
(17, 'Cata de Vinos Boutique', '2025-06-11', 'comun', '2025-11-18', 25, 'confirmado', '20:00:00', '22:30:00', 17, 17, 25000.00),
(18, 'Fiesta Retro 80â€™s', '2025-12-01', 'comun', '2025-01-14', 40, 'cancelado', '21:00:00', '03:00:00', 18, 18, 37000.00),
(19, 'Noche de Jazz en Vivo', '2025-04-12', 'comun', '2025-12-31', 35, 'cancelado', '20:30:00', '23:30:00', 19, 19, 12000.00),
(20, 'Taller de MixologÃ­a Creativa', '2025-10-21', 'comun', '2025-06-11', 25, 'cancelado', '18:00:00', '21:00:00', 20, 20, 32000.00),
(21, 'Festival de Cervezas Artesanales', '2025-11-07', 'empresarial', '2025-07-29', 20, 'confirmado', '16:00:00', '23:00:00', 21, 21, 34000.00),
(22, 'Noche de Stand-Up Comedy', '2025-07-29', 'empresarial', '2025-08-15', 25, 'cancelado', '21:00:00', '23:00:00', 22, 22, 15000.00),
(23, 'Cena Maridaje de Tapas y Vinos', '2025-03-09', 'comun', '2025-10-21', 35, 'confirmado', '20:00:00', '23:00:00', 23, 23, 25000.00),
(24, 'Fiesta Blanca', '2025-08-15', 'comun', '2025-03-09', 55, 'confirmado', '22:00:00', '04:00:00', 24, 24, 22000.00),
(25, 'Karaoke Night', '2025-05-03', 'comun', '2025-04-19', 25, 'confirmado', '21:00:00', '01:00:00', 25, 25, 50000.00),
(26, 'Tarde de Brunch y Mimosas', '2025-11-18', 'empresarial', '2025-04-12', 55, 'confirmado', '11:00:00', '15:00:00', 26, 26, 15000.00),
(27, 'Salsa y Mojitos', '2025-11-04', 'empresarial', '2025-08-05', 40, 'confirmado', '20:00:00', '00:00:00', 27, 27, 18000.00),
(28, 'Noche de Trivia y Premios', '2025-09-02', 'empresarial', '2025-05-03', 15, 'confirmado', '19:30:00', '22:30:00', 28, 28, 22000.00),
(29, 'Cena de AÃ±o Nuevo Gourmet', '2025-12-30', 'comun', '2025-06-09', 48, 'confirmado', '20:00:00', '02:00:00', 29, 29, 45000.00),
(30, 'Fiesta de Fin de AÃ±o', '2025-10-06', 'comun', '2025-11-07', 55, 'cancelado', '22:00:00', '05:00:00', 30, 30, 15000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_producto` tinyint(3) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo_producto` varchar(50) NOT NULL,
  `stock` smallint(5) UNSIGNED NOT NULL,
  `costo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_producto`, `nombre`, `tipo_producto`, `stock`, `costo`) VALUES
(1, 'RON_CALDAS_BT', 'RON', 7, 90000),
(2, 'RON_CALDAS_MD', 'RON', 12, 50000),
(3, 'HERETIC', 'HERBAL', 5, 130000),
(4, 'JACK_DANIELS_HONEY_MD', 'WHISKY', 4, 87000),
(5, 'JACK_DANIELS_N7_MD', 'WHISKY', 2, 87000),
(6, 'ANTIOQUEÑO_VERDE_MD', 'AGUARDIENTE', 15, 50000),
(7, 'ANTIOQUEÑO_AZUL_MD', 'AGUARDIENTE', 10, 50000),
(8, 'SMIRNOFF_TAMARINDO_BT', 'VODKA', 8, 87000),
(9, 'POKER_PETACO', 'CERVEZA', 12, 105000),
(10, 'POKER_UNIDAD', 'CERVEZA', 360, 3500),
(11, 'AGUILA_PETACO', 'CERVEZA', 12, 105000),
(12, 'AGUILA_UNIDAD', 'CERVEZA', 360, 105000),
(13, 'AMARILLO_BT', 'AGUARDIENTE', 3, 110000),
(14, 'JOSE_CUERVO_BT', 'TEQUILA', 6, 130000),
(15, 'OLMECA_DARK_CHOCOLATE', 'TEQUILA', 2, 170000),
(16, 'RON_MEDELLIN_ANEJO_BT', 'RON', 10, 95000),
(17, 'RON_PARDO_MD', 'RON', 6, 48000),
(18, 'GREEN_SPIRIT_HERBAL', 'HERBAL', 4, 125000),
(19, 'BUCHANANS_DELUXE_MD', 'WHISKY', 5, 89000),
(20, 'BUCHANANS_MASTER_BT', 'WHISKY', 3, 92000),
(21, 'ANTIOQUEÃ‘O_SIN_AZUCAR_MD', 'AGUARDIENTE', 14, 51000),
(22, 'ANTIOQUEÃ‘O_TRADICIONAL_BT', 'AGUARDIENTE', 11, 52000),
(23, 'SMIRNOFF_GREEN_APPLE_MD', 'VODKA', 7, 87000),
(24, 'CLUB_COLOMBIA_UNIDAD', 'CERVEZA', 240, 4000),
(25, 'CLUB_COLOMBIA_PETACO', 'CERVEZA', 10, 110000),
(26, 'CORONA_UNIDAD', 'CERVEZA', 320, 4500),
(27, 'CORONA_PETACO', 'CERVEZA', 13, 112000),
(28, 'NECTAR_VERDE_MD', 'AGUARDIENTE', 6, 50000),
(29, 'PATRON_SILVER_BT', 'TEQUILA', 5, 140000),
(30, 'DON_JULIO_REPOSADO_BT', 'TEQUILA', 2, 165000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios_pago`
--

CREATE TABLE `medios_pago` (
  `id_pago` tinyint(3) UNSIGNED NOT NULL,
  `nombre_mp` enum('efectivo','tarjeta debido','tarjeta credito','DAVIPLATA','NEQUI','BANCOLOMIA') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medios_pago`
--

INSERT INTO `medios_pago` (`id_pago`, `nombre_mp`) VALUES
(1, 'efectivo'),
(2, 'BANCOLOMIA'),
(3, 'BANCOLOMIA'),
(4, 'DAVIPLATA'),
(5, 'NEQUI'),
(6, 'BANCOLOMIA'),
(7, 'efectivo'),
(8, 'efectivo'),
(9, 'NEQUI'),
(10, 'efectivo'),
(11, 'efectivo'),
(12, 'NEQUI'),
(13, 'DAVIPLATA'),
(14, 'BANCOLOMIA'),
(15, 'NEQUI'),
(16, 'efectivo'),
(17, ''),
(18, ''),
(19, 'DAVIPLATA'),
(20, 'NEQUI'),
(21, ''),
(22, 'efectivo'),
(23, 'efectivo'),
(24, 'NEQUI'),
(25, 'efectivo'),
(26, 'efectivo'),
(27, 'efectivo'),
(28, 'DAVIPLATA'),
(29, ''),
(30, 'NEQUI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `id_movimiento` tinyint(3) UNSIGNED NOT NULL,
  `fecha_mov` datetime NOT NULL,
  `tipo_mov` enum('Entrada','Salida') NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `cant_mov` int(10) UNSIGNED DEFAULT NULL,
  `id_producto` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`id_movimiento`, `fecha_mov`, `tipo_mov`, `descripcion`, `cant_mov`, `id_producto`) VALUES
(1, '2025-03-01 00:00:00', 'Entrada', 'Pago de cliente', 350000, 1),
(2, '2025-10-01 00:00:00', 'Salida', 'Compra de insumos', 180000, 2),
(3, '2025-10-15 00:00:00', 'Entrada', 'Reserva de evento privado', 500000, 3),
(4, '2025-08-05 00:00:00', 'Salida', 'Pago a proveedor de bebidas', 270000, 4),
(5, '2025-01-02 00:00:00', 'Entrada', 'Venta semanal', 420000, 5),
(6, '2025-09-02 00:00:00', 'Salida', 'Reparacion de equipo', 150000, 6),
(7, '2025-07-02 00:00:00', 'Entrada', 'Cobro por cocteleria', 390000, 7),
(8, '2025-02-25 00:00:00', 'Salida', 'Compra de alimentos', 220000, 8),
(9, '2025-05-03 00:00:00', 'Entrada', 'Pago por cata de vinos', 450000, 9),
(10, '2025-12-03 00:00:00', 'Salida', 'Honorarios musico invitado', 300000, 10),
(11, '2025-10-03 00:00:00', 'Entrada', 'Reserva fiesta tematica', 600000, 11),
(12, '2025-06-03 00:00:00', 'Salida', 'Mantenimiento local', 200000, 12),
(13, '2025-04-04 00:00:00', 'Entrada', 'Venta brunch y mimosas', 380000, 13),
(14, '2025-11-04 00:00:00', 'Salida', 'Publicidad redes sociales', 160000, 14),
(15, '2025-08-05 00:00:00', 'Entrada', 'Pago noche de stand-up', 410000, 15),
(16, '2025-10-03 00:00:00', 'Entrada', 'Pago de cliente', 350000, 16),
(17, '2025-02-25 00:00:00', 'Salida', 'Compra de insumos', 180000, 17),
(18, '2025-05-03 00:00:00', 'Entrada', 'Reserva de evento privado', 500000, 18),
(19, '2025-03-01 00:00:00', 'Salida', 'Pago a proveedor de bebidas', 270000, 19),
(20, '2025-11-04 00:00:00', 'Entrada', 'Venta semanal', 420000, 20),
(21, '2025-01-02 00:00:00', 'Salida', 'ReparaciÃ³n de equipo', 150000, 21),
(22, '2025-08-05 00:00:00', 'Entrada', 'Cobro por coctelerÃ­a', 390000, 22),
(23, '2025-04-04 00:00:00', 'Salida', 'Compra de alimentos', 220000, 23),
(24, '2025-12-03 00:00:00', 'Entrada', 'Pago por cata de vinos', 450000, 24),
(25, '2025-06-03 00:00:00', 'Salida', 'Honorarios mÃºsico invitado', 300000, 25),
(26, '2025-10-01 00:00:00', 'Entrada', 'Reserva fiesta temÃ¡tica', 600000, 26),
(27, '2025-07-02 00:00:00', 'Salida', 'Mantenimiento local', 200000, 27),
(28, '2025-10-15 00:00:00', 'Entrada', 'Venta brunch y mimosas', 380000, 28),
(29, '2025-09-02 00:00:00', 'Salida', 'Publicidad redes sociales', 160000, 29),
(30, '2025-08-05 00:00:00', 'Entrada', 'Pago noche de stand-up', 410000, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacion`
--

CREATE TABLE `reservacion` (
  `id_reservacion` tinyint(3) UNSIGNED NOT NULL,
  `cantidad_persona` tinyint(3) UNSIGNED NOT NULL,
  `descripcion` text NOT NULL,
  `capacidad_mesa` tinyint(3) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `id_doc` int(10) UNSIGNED DEFAULT NULL,
  `estado` enum('reservado','cancelado','pendiente') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservacion`
--

INSERT INTO `reservacion` (`id_reservacion`, `cantidad_persona`, `descripcion`, `capacidad_mesa`, `fecha`, `id_doc`, `estado`) VALUES
(1, 6, 'CUMPLEAÑOS', 2, '2025-01-14 00:00:00', 567894, 'pendiente'),
(2, 4, 'CUMPLEAÑOS ', 1, '2025-02-27 00:00:00', 1014667589, 'reservado'),
(3, 2, 'CITA', 1, '2025-04-19 00:00:00', 1045455545, 'cancelado'),
(4, 8, 'DESPEDIDA', 2, '2025-08-05 00:00:00', 12234456, 'reservado'),
(5, 5, 'DESPEDIDA', 1, '2025-03-05 00:00:00', 1044151515, 'reservado'),
(6, 6, 'DESPEDIDA_SOLTERO', 2, '2025-06-23 00:00:00', 1054654641, 'reservado'),
(7, 3, 'NEGOCIOS', 1, '2025-11-07 00:00:00', 1544644300, 'reservado'),
(8, 7, 'EMPRESARIAL', 2, '2025-07-29 00:00:00', 1065565418, 'cancelado'),
(9, 36, 'PROM', 9, '2025-08-15 00:00:00', 1064644841, 'cancelado'),
(10, 2, 'CITA', 1, '2025-03-09 00:00:00', 1054055567, 'reservado'),
(11, 9, 'EMPRESARIAL', 3, '2025-10-21 00:00:00', 1025684408, 'reservado'),
(12, 7, 'CUMPLEAÑOS', 2, '2025-06-11 00:00:00', 1032315133, 'cancelado'),
(13, 5, 'FAMILAR', 1, '2025-04-12 00:00:00', 1031313158, 'reservado'),
(14, 2, 'NEGOCIOS', 1, '2025-04-18 00:00:00', 1056464123, 'reservado'),
(15, 6, 'FAMILIAR', 2, '2025-12-30 00:00:00', 1048456454, 'reservado'),
(16, 25, 'HAPPY HOUR', 2, '2025-01-14 00:00:00', 1014667306, ''),
(17, 4, 'CUMPLEAÃ‘OS ', 1, '2024-07-25 00:00:00', 1052233445, 'pendiente'),
(18, 5, 'CITA', 1, '2024-09-19 00:00:00', 1074567890, 'cancelado'),
(19, 7, 'DESPEDIDA', 2, '2024-11-30 00:00:00', 1067895432, 'reservado'),
(20, 3, 'DESPEDIDA', 1, '2024-11-14 00:00:00', 1032547896, 'reservado'),
(21, 6, 'DESPEDIDA_SOLTERO', 2, '2025-06-06 00:00:00', 1056841279, 'cancelado'),
(22, 8, 'NEGOCIOS', 1, '2025-01-01 00:00:00', 1025634789, 'reservado'),
(23, 9, 'EMPRESARIAL', 2, '2024-12-27 00:00:00', 1048796542, 'pendiente'),
(24, 30, 'PROM', 9, '2024-06-30 00:00:00', 1063214789, 'cancelado'),
(25, 4, 'CITA', 1, '2023-12-06 00:00:00', 1071112233, 'pendiente'),
(26, 10, 'EMPRESARIAL', 3, '2023-12-29 00:00:00', 1054789632, 'pendiente'),
(27, 5, 'CUMPLEAÃ‘OS', 2, '2024-12-27 00:00:00', 1022145874, 'cancelado'),
(28, 5, 'FAMILAR', 1, '2024-09-27 00:00:00', 1041569874, 'pendiente'),
(29, 2, 'NEGOCIOS', 1, '2024-01-16 00:00:00', 1036987451, 'cancelado'),
(30, 6, 'FAMILIAR', 2, '2025-06-16 00:00:00', 1058741596, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` tinyint(3) UNSIGNED NOT NULL,
  `tipo_rol` enum('Administrador','Empleado') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `tipo_rol`) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Empleado'),
(4, 'Empleado'),
(5, 'Empleado'),
(6, 'Administrador'),
(7, 'Empleado'),
(8, 'Empleado'),
(9, 'Administrador'),
(10, 'Empleado'),
(11, 'Administrador'),
(12, 'Administrador'),
(13, 'Empleado'),
(14, 'Empleado'),
(15, 'Administrador'),
(16, 'Administrador'),
(17, 'Empleado'),
(18, 'Empleado'),
(19, 'Empleado'),
(20, 'Empleado'),
(21, 'Administrador'),
(22, 'Empleado'),
(23, 'Empleado'),
(24, 'Administrador'),
(25, 'Empleado'),
(26, 'Administrador'),
(27, 'Administrador'),
(28, 'Empleado'),
(29, 'Empleado'),
(30, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` tinyint(3) UNSIGNED NOT NULL,
  `tipo_servicio` enum('consumo de licor','bolirana','karaoke') DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `tipo_servicio`, `descripcion`) VALUES
(1, 'consumo de licor', 'Happy your'),
(2, 'karaoke', 'Venta de bebidas'),
(3, 'bolirana', 'Musica en vivo'),
(4, 'consumo de licor', 'Happy your'),
(5, 'karaoke', 'Eventos privados '),
(6, 'consumo de licor', 'Venta de bebidas'),
(7, 'bolirana', 'Musica en vivo'),
(8, 'karaoke', 'Comida'),
(9, 'karaoke', 'Happy your'),
(10, 'consumo de licor', 'Alquiler de mesas '),
(11, 'bolirana', 'Televisores deportivos'),
(12, 'karaoke', 'Alquiler de mesas '),
(13, 'bolirana', 'Venta de bebidas'),
(14, 'bolirana', 'Eventos privados '),
(15, 'consumo de licor', 'Comida'),
(16, 'consumo de licor', 'Happy your'),
(17, 'karaoke', 'Venta de bebidas'),
(18, 'bolirana', 'Musica en vivo'),
(19, 'consumo de licor', 'Happy your'),
(20, 'karaoke', 'Eventos privados '),
(21, 'consumo de licor', 'Venta de bebidas'),
(22, 'bolirana', 'Musica en vivo'),
(23, 'karaoke', 'Comida'),
(24, 'karaoke', 'Happy your'),
(25, 'consumo de licor', 'Alquiler de mesas '),
(26, 'bolirana', 'Televisores deportivos'),
(27, 'karaoke', 'Alquiler de mesas '),
(28, 'bolirana', 'Venta de bebidas'),
(29, 'bolirana', 'Eventos privados '),
(30, 'consumo de licor', 'Comida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` tinyint(3) UNSIGNED NOT NULL,
  `contraseña` char(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `id_rol` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `contraseña`, `nombre`, `apellido`, `telefono`, `correo`, `id_rol`) VALUES
(1, 'Fg7!pLx3wQ', 'Julian', 'Flores', '378 551 3427', 'julianx92@gmail.com', 1),
(2, '6uN#bX2sJp', 'Felipe', 'Diaz', '351 104 2541', 'felipeq47@gmail.com', 2),
(3, '9mZ@vT2sRb', 'Dina', 'HernÃ¡ndez ', '348 574 6501', 'dinaa83@gmail.com', 3),
(4, 'Ht#5xK8uLp', 'Sergio', 'Monroy', '377 728 8014', 'sergiom56@gmail.com', 4),
(5, '9sjasa?=jsna', 'Alex', 'Buitrago ', '308 166 5916', 'alexb71@gmail.com', 5),
(6, '8yC!vH1rZs', 'Juan', 'Espinosa', '337 973 5122', 'juanp24@gmail.com', 6),
(7, 'Wq2$zN7eYt', 'Sara', 'Aparicio', '355 823 2595', 'saraz89@gmail.com', 7),
(8, 'Rj5^pW3nXl', 'Laura', 'Soto', '381 214 7731', 'lauraw65@gmail.com', 8),
(9, '1bU!rV6oXy', 'Andres', 'Montoya', '303 772 9916', 'andresv38@gmail.com', 9),
(10, '2fT*eK9qVm', 'Tania', 'RodrÃ­guez ', '352 651 9245', 'taniak54@gmail.com', 10),
(11, 'Qw8^jS4nZc', 'Nicolas', 'Mendoza', '369 431 3646', 'nicolasr29@gmail.com', 11),
(12, 'Gs7@xL6uPw', 'Miguel', 'CaÃ±on', '346 607 6240', 'miguelf16@gmail.com', 12),
(13, '7dP*eF9aLm', 'Michell', 'Agudelo', '308 207 6521', 'michellj73@gmail.com', 13),
(14, '3aN!zS8yRt', 'Camilo', 'Perez', '304 746 9897', 'camilou81@gmail.com', 14),
(15, 'Tz3!kR5vWq', 'Henrry', 'SÃ¡nchez ', '307 405 7430', 'henrryt90@gmail.com', 15),
(16, 'K9!rLp4@XwT', 'Esteban', 'Ruiz', '320 741 2589', 'estebanr99@gmail.com', 16),
(17, '8b@Rz7!LcQ2', 'Paula', 'Romero', '322 965 8741', 'paulita01@gmail.com', 17),
(18, 'M6#kL2*VrT8', 'Kevin', 'Gutierrez', '301 456 9841', 'keving12@gmail.com', 18),
(19, 'Rt7@Xs1#Wq9', 'Natalia', 'Cespedes', '310 235 7412', 'nataliaCesp@gmail.com', 19),
(20, 'Zo2$Bp6@Lm8', 'Jorge', 'Silva', '330 147 8963', 'jorgesilva22@gmail.com', 20),
(21, 'Tq!6Ds8*Wv3', 'Manuela', 'Ortega', '317 853 0964', 'manuortega83@gmail.com', 21),
(22, 'Wy9$Gc2!Tm7', 'Tomas', 'Rojas', '312 658 4795', 'tomasrj01@gmail.com', 22),
(23, '6Rt@Qm3#Ys2', 'Julieta', 'Navarro', '318 296 4710', 'julinav89@gmail.com', 23),
(24, 'Lq3#Nm9@Xp5', 'Camila', 'Lozano', '314 885 2396', 'camilozano21@gmail.com', 24),
(25, '2Ax!Vc4@Nq6', 'Mateo', 'Fuentes', '311 745 9083', 'mateofuentes@gmail.com', 25),
(26, 'Gr7$Vp2*Lm4', 'Eliana', 'Vargas', '329 458 1236', 'elivargas78@gmail.com', 26),
(27, 'Ks8!Dr1#Tq3', 'David', 'Rincon', '308 662 1497', 'davidrincon90@gmail.com', 27),
(28, 'Qp5$Lr9@Km8', 'Lorena', 'Beltran', '316 980 7531', 'lorenabel@gmail.com', 28),
(29, 'Bx4@Ny7!Cr1', 'Jonathan', 'Acosta', '309 741 5886', 'jonacosta@gmail.com', 29),
(30, 'Jm2!Vt8#Lz5', 'Valentina', 'NiÃ±o', '307 111 6543', 'valeninio93@gmail.com', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_usuario_rol` tinyint(3) UNSIGNED NOT NULL,
  `id_usuario` tinyint(3) UNSIGNED NOT NULL,
  `id_rol` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario_rol`, `id_usuario`, `id_rol`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 1),
(14, 14, 2),
(15, 15, 1),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` tinyint(3) UNSIGNED NOT NULL,
  `estado` enum('pendiente','pagado') DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_producto` tinyint(3) UNSIGNED DEFAULT NULL,
  `id_reservacion` tinyint(3) UNSIGNED DEFAULT NULL,
  `id_usuario` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `estado`, `fecha`, `hora`, `id_producto`, `id_reservacion`, `id_usuario`) VALUES
(1, 'pendiente', '2025-06-01', '10:15:00', 1, 1, 1),
(2, 'pagado', '2025-06-01', '11:00:00', 2, 2, 2),
(3, 'pagado', '2025-06-02', '09:45:00', 3, 3, 3),
(4, 'pendiente', '2025-06-02', '13:30:00', 4, 4, 4),
(5, 'pagado', '2025-06-02', '15:00:00', 5, 5, 5),
(6, 'pagado', '2025-06-03', '08:20:00', 6, 6, 6),
(7, 'pagado', '2025-06-03', '10:10:00', 7, 7, 7),
(8, 'pendiente', '2025-06-03', '11:55:00', 8, 8, 8),
(9, 'pagado', '2025-06-03', '14:00:00', 9, 9, 9),
(10, 'pendiente', '2025-06-04', '09:30:00', 10, 10, 10),
(11, 'pendiente', '2025-06-04', '11:45:00', 11, 11, 11),
(12, 'pagado', '2025-06-04', '14:20:00', 12, 12, 12),
(13, 'pagado', '2025-06-05', '08:00:00', 13, 13, 13),
(14, 'pendiente', '2025-06-05', '09:50:00', 14, 14, 14),
(15, 'pendiente', '2025-06-05', '12:15:00', 15, 15, 15),
(16, 'pendiente', '2024-11-28', '10:15:00', 16, 16, 16),
(17, 'pagado', '2025-01-16', '11:00:00', 17, 17, 17),
(18, 'pagado', '2025-02-18', '09:45:00', 18, 18, 18),
(19, 'pendiente', '2024-11-22', '13:30:00', 19, 19, 19),
(20, 'pagado', '2024-12-04', '15:00:00', 20, 20, 20),
(21, 'pagado', '2024-11-12', '08:20:00', 21, 21, 21),
(22, 'pagado', '2024-10-09', '10:10:00', 22, 22, 22),
(23, 'pendiente', '2025-01-23', '11:55:00', 23, 23, 23),
(24, 'pagado', '2024-11-29', '14:00:00', 24, 24, 24),
(25, 'pendiente', '2024-01-31', '09:30:00', 25, 25, 25),
(26, 'pendiente', '2024-04-01', '11:45:00', 26, 26, 26),
(27, 'pagado', '2024-02-29', '14:20:00', 27, 27, 27),
(28, 'pagado', '2024-10-15', '08:00:00', 28, 28, 28),
(29, 'pendiente', '2024-01-16', '09:50:00', 29, 29, 29),
(30, 'pendiente', '2024-05-30', '12:15:00', 30, 30, 30);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_doc`);

--
-- Indices de la tabla `detallemo`
--
ALTER TABLE `detallemo`
  ADD PRIMARY KEY (`id_detalleMo`),
  ADD KEY `id_movimiento` (`id_movimiento`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalleV`),
  ADD KEY `id_pago` (`id_pago`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `id_servicio` (`id_servicio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD PRIMARY KEY (`id_reservacion`),
  ADD KEY `id_doc` (`id_doc`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id_usuario_rol`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_reservacion` (`id_reservacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_doc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1544644301;

--
-- AUTO_INCREMENT de la tabla `detallemo`
--
ALTER TABLE `detallemo`
  MODIFY `id_detalleMo` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalleV` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id_evento` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_producto` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  MODIFY `id_pago` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id_movimiento` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `reservacion`
--
ALTER TABLE `reservacion`
  MODIFY `id_reservacion` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id_usuario_rol` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallemo`
--
ALTER TABLE `detallemo`
  ADD CONSTRAINT `detallemo_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_pago`) REFERENCES `medios_pago` (`id_pago`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`);

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`),
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `movimiento_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `inventario` (`id_producto`);

--
-- Filtros para la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD CONSTRAINT `reservacion_ibfk_1` FOREIGN KEY (`id_doc`) REFERENCES `cliente` (`id_doc`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `inventario` (`id_producto`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_reservacion`) REFERENCES `reservacion` (`id_reservacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
