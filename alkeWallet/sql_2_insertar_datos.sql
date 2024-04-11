INSERT INTO usuarios (nombre, correo_electronico, contrasenia, saldo) 
VALUES ('Antonio Lopez', 'user1@mail.com', 'password1', 150000.500),
('Mary Brown', 'user2@mail.com', 'password2', 200000.100),
('Michel Right', 'user3@mail.com', 'password3', 100000.800),
('Carlos Diaz', 'user4@mail.com', 'password4', 240000.600)
;

INSERT INTO monedas (currency_name, currency_symbol)
VALUES ('Dollar', '$'),
('Euro', '€'),
('Chilean peso', 'CLP$'),
('Pound', '£')
;

INSERT INTO transacciones (sender_user_id, receiver_user_id, importe, transaction_date, currency_id)
VALUES (1, 2, 50.000, '2020-02-03', 2),
(1, 4, 110.000, '2021-10-25', 1),
(2, 4, 15.000, '2021-05-16', 4),
(4, 3, 20.000, '2021-08-10', 3),
(2, 1, 11.000, '2022-01-21', 2),
(4, 1, 3.000, '2022-05-04', 2)
;