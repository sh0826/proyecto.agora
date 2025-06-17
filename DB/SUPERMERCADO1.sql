-- Registros para tabla rol
INSERT INTO rol (tipo_rol) VALUES 
('administrador'), ('empleado');

-- Registros para tabla usuario
INSERT INTO usuario (nombre_usuario, apellido, correo, telefono, contraseña, id_rol) VALUES
('Juan', 'Perez', 'juan@mail.com', '3001234567', 1234, 1),
('Ana', 'Gomez', 'ana@mail.com', '3002345678', 2345, 2),
('Luis', 'Lopez', 'luis@mail.com', '3003456789', 3456, 1),
('Marta', 'Diaz', 'marta@mail.com', '3004567890', 4567, 2),
('Pedro', 'Sanchez', 'pedro@mail.com', '3005678901', 5678, 1),
('Lucia', 'Castro', 'lucia@mail.com', '3006789012', 6789, 2),
('Carlos', 'Reyes', 'carlos@mail.com', '3007890123', 7890, 1),
('Sofia', 'Moreno', 'sofia@mail.com', '3008901234', 8901, 2),
('Diego', 'Torres', 'diego@mail.com', '3009012345', 9012, 1),
('Laura', 'Vargas', 'laura@mail.com', '3010123456', 1011, 2),
('Andres', 'Jimenez', 'andres@mail.com', '3011234567', 1122, 1),
('Claudia', 'Suarez', 'claudia@mail.com', '3012345678', 2233, 2),
('Felipe', 'Ortega', 'felipe@mail.com', '3013456789', 3344, 1),
('Isabel', 'Navarro', 'isabel@mail.com', '3014567890', 4455, 2),
('Ricardo', 'Herrera', 'ricardo@mail.com', '3015678901', 5566, 1);

-- Tabla medios_pago
INSERT INTO medios_pago (nombreP) VALUES 
('Efectivo'), ('Tarjeta'), ('Transferencia'), ('Nequi'), ('Daviplata');

-- Tabla servicio
INSERT INTO servicio (tipo_servicio, descripcion, costo) VALUES
('karaoke', 'Servicio de karaoke por hora', 100.00),
('bolirana', 'Bolirana por hora', 80.00),
('consumo de licor', 'Mesa de trago para eventos', 300.00),
('karaoke', 'Karaoke VIP', 150.00),
('bolirana', 'Bolirana Premium', 120.00),
('karaoke', 'Paquete musical completo', 200.00),
('consumo de licor', 'Paquete 5 botellas', 500.00),
('consumo de licor', 'Mesa bar abierta', 800.00),
('bolirana', 'Mini torneo bolirana', 180.00),
('karaoke', 'Noche libre karaoke', 90.00),
('bolirana', 'Plan amigos', 140.00),
('consumo de licor', 'Ron y Aguardiente', 250.00),
('karaoke', 'Estilo libre', 110.00),
('bolirana', 'Liga semanal', 160.00),
('consumo de licor', 'Whisky Premium', 700.00);

-- Tabla cliente
INSERT INTO cliente (tipo_doc, nombre, apellido, telefono, correo) VALUES
('cedula de ciudadania', 'Carlos', 'Lopez', '3001234567', 'carlos@mail.com'),
('cedula de ciudadania', 'Daniela', 'Martinez', '3002345678', 'daniela@mail.com'),
('cedula de ciudadania', 'Esteban', 'Rodriguez', '3003456789', 'esteban@mail.com'),
('cedula de ciudadania', 'Fernanda', 'Ruiz', '3004567890', 'fernanda@mail.com'),
('cedula de ciudadania', 'Gustavo', 'Castillo', '3005678901', 'gustavo@mail.com'),
('cedula de ciudadania', 'Helena', 'Ramos', '3006789012', 'helena@mail.com'),
('cedula de ciudadania', 'Ignacio', 'Pineda', '3007890123', 'ignacio@mail.com'),
('cedula de ciudadania', 'Juliana', 'Morales', '3008901234', 'juliana@mail.com'),
('cedula de ciudadania', 'Kevin', 'Nieto', '3009012345', 'kevin@mail.com'),
('cedula de ciudadania', 'Laura', 'Osorio', '3010123456', 'laura@mail.com'),
('cedula de ciudadania', 'Miguel', 'Paz', '3011234567', 'miguel@mail.com'),
('cedula de ciudadania', 'Natalia', 'Quintero', '3012345678', 'natalia@mail.com'),
('cedula de ciudadania', 'Oscar', 'Salazar', '3013456789', 'oscar@mail.com'),
('cedula de ciudadania', 'Paula', 'Tovar', '3014567890', 'paula@mail.com'),
('cedula de ciudadania', 'Rafael', 'Uribe', '3015678901', 'rafael@mail.com');

-- Tabla inventario
INSERT INTO inventario (nombre, categoria, cantidad_disponible, precio) VALUES
('Cerveza', 'Bebidas', 100, 5000),
('Ron Medellín', 'Licores', 30, 45000),
('Aguardiente', 'Licores', 50, 35000),
('Whisky', 'Licores', 20, 95000),
('Gaseosa', 'Bebidas', 80, 3000),
('Hielo', 'Complementos', 100, 1000),
('Vodka', 'Licores', 15, 60000),
('Tequila', 'Licores', 25, 55000),
('Agua', 'Bebidas', 120, 2500),
('Copa', 'Utensilios', 200, 1500),
('Jugo', 'Bebidas', 40, 4000),
('Cerveza Artesanal', 'Bebidas', 50, 7000),
('Red Bull', 'Bebidas', 30, 8500),
('Ginebra', 'Licores', 10, 70000),
('Ron Viejo de Caldas', 'Licores', 35, 42000);

-- Movimiento
INSERT INTO movimiento (fecha_mov, tipo_mov, descripcion, cant_mov) VALUES
('2025-06-01', 'Entrada', 'Ingreso Cerveza', 100),
('2025-06-01', 'Entrada', 'Ingreso Aguardiente', 50),
('2025-06-01', 'Entrada', 'Ingreso Gaseosa', 80),
('2025-06-01', 'Salida', 'Salida Ron', 20),
('2025-06-02', 'Entrada', 'Ingreso Vodka', 15),
('2025-06-02', 'Salida', 'Salida Tequila', 10),
('2025-06-02', 'Entrada', 'Ingreso Agua', 100),
('2025-06-02', 'Salida', 'Salida Cerveza', 30),
('2025-06-03', 'Entrada', 'Ingreso Copa', 200),
('2025-06-03', 'Salida', 'Salida Ginebra', 5),
('2025-06-03', 'Entrada', 'Ingreso Red Bull', 30),
('2025-06-03', 'Salida', 'Salida Hielo', 25),
('2025-06-03', 'Entrada', 'Ingreso Ron Caldas', 35),
('2025-06-03', 'Entrada', 'Ingreso Whisky', 10),
('2025-06-04', 'Salida', 'Salida Vodka', 5);

-- DetalleMo
INSERT INTO detalleMo (id_movimiento, id_producto, cantidad) VALUES
(1, 1, 100), (2, 3, 50), (3, 5, 80), (4, 2, 20), (5, 7, 15), (6, 8, 10), (7, 9, 100),
(8, 1, 30), (9, 10, 200), (10, 14, 5), (11, 13, 30), (12, 6, 25), (13, 15, 35), (14, 4, 10), (15, 7, 5);

-- Usuario_rol
INSERT INTO usuario_rol (id_usuario, id_rol) VALUES
(1, 1), (2, 2), (3, 1), (4, 2);

-- Registros multitabla (cliente → evento → reservación → detalle_venta → venta)
INSERT INTO evento (nombre_evento, fecha_inicio, tipo_evento, descripcion, fecha_final, estado, id_servicio, capacidad_max, hora_inicio) VALUES
('Fiesta privada', '2025-06-10', 'karaoke', 'Evento VIP', '2025-06-10', 'reservado', 1, 20, '20:00:00'),
('Cumpleaños', '2025-06-12', 'boli_rana', 'Fiesta de cumpleaños', '2025-06-12', 'pendiente', 2, 15, '18:00:00'),
('Karaoke libre', '2025-06-15', 'karaoke', 'Karaoke abierto', '2025-06-15', 'confirmado', 4, 30, '19:00:00'),
('Reunión', '2025-06-20', 'celebraciones', 'Reunión social', '2025-06-20', 'confirmado', 3, 25, '21:00:00');

INSERT INTO reservacion (id_reservacion, id_evento, cantidad_persona, descripcion, estado, num_mesa, fecha) VALUES
(1, 1, 5, 'Grupo familiar', 'Confirmado', 3, '2025-06-10'),
(2, 2, 10, 'Amigos del colegio', 'Pendiente', 5, '2025-06-12'),
(3, 3, 15, 'Abierto a todos', 'Confirmado', 6, '2025-06-15'),
(4, 4, 8, 'Reunión de negocios', 'Confirmado', 4, '2025-06-20');

INSERT INTO detalle_venta (descripcion, monto_total, id_pago, abono, cantidad) VALUES
('Pago completo evento 1', 300000, 1, 100000, 5),
('Reserva evento 2', 150000, 2, 50000, 10),
('Evento karaoke libre', 200000, 3, 100000, 15),
('Evento reunión social', 350000, 4, 150000, 8);

INSERT INTO venta (id_producto, id_detalleV, id_evento, precio, estado, fecha) VALUES
(1, 1, 1, 300000, 'pagado', '2025-06-10'),
(2, 2, 2, 150000, 'pendiente', '2025-06-12'),
(3, 3, 3, 200000, 'pagado', '2025-06-15'),
(4, 4, 4, 350000, 'pagado', '2025-06-20');

