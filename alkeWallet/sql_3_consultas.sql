-- Consulta para obtener el nombre de la moneda elegida por un usuario especíﬁco
SELECT monedas.currency_name, sender_user_id, transaction_id FROM transacciones
INNER JOIN monedas ON transacciones.currency_id=monedas.currency_id
WHERE sender_user_id = 4;


-- Consulta para obtener las transacciones realizadas por un usuario especíﬁco
SELECT * FROM transacciones
WHERE sender_user_id = 4;

-- Consulta para obtener todos los usuarios registrados
SELECT * FROM usuarios;

 -- Consulta para obtener todas las monedas registradas
 SELECT * FROM monedas;
 
-- Consulta para obtener todas las transacciones registradas
SELECT * FROM transacciones;

-- Consulta para obtener todas las transacciones recibidas por un usuario especíﬁco
SELECT * FROM transacciones
WHERE receiver_user_id = 2;

-- Sentencia DML para modiﬁcar el campo correo electrónico de un usuario especíﬁco
UPDATE usuarios
SET correo_electronico = 'mary_brown@mail.com'
WHERE user_id = 2;

-- Sentencia para eliminar los datos de una transacción (eliminado de la ﬁla completa)
DELETE FROM transacciones
WHERE transaction_id = 5;

-- Sentencia para DDL modiﬁcar el nombre de la columna correo_electronico por email
ALTER TABLE usuarios
RENAME COLUMN 	correo_electronico TO email; 