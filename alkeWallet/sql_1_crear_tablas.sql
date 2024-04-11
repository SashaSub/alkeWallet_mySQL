CREATE SCHEMA alkewallet_prueba;

CREATE TABLE usuarios (
user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
correo_electronico VARCHAR(50) NOT NULL,
contrasenia VARCHAR(50) NOT NULL,
saldo DOUBLE
);

CREATE TABLE monedas (
currency_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
currency_name VARCHAR(50) NOT NULL,
currency_symbol CHAR(5)
);

CREATE TABLE transacciones (
transaction_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
sender_user_id INT,
receiver_user_id INT,
FOREIGN KEY (sender_user_id) REFERENCES usuarios(user_id),
FOREIGN KEY (receiver_user_id) REFERENCES usuarios(user_id),
importe DOUBLE NOT NULL,
transaction_date DATE NOT NULL,
currency_id INT,
FOREIGN KEY (currency_id) REFERENCES monedas(currency_id)
);