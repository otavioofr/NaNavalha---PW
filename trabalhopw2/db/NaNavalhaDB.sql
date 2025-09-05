DROP DATABASE IF EXISTS NANAVALHA;
CREATE DATABASE NANAVALHA;
USE NANAVALHA;

CREATE TABLE users (
    id int NOT NULL AUTO_INCREMENT,
    idtype int NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    photo VARCHAR(255), 
    cnpj VARCHAR(18),
    PRIMARY KEY (`id`)


);
INSERT INTO users (idtype, name, email, password, photo, cnpj)
VALUES (
    1,
    'João da Silva',
    'joao.silva@example.com',
    '1234', -- bcrypt hashed password (example only)
    'https://example.com/photos/joao.jpg',
    NULL -- no CNPJ since this is not a company/barbershop
);
SELECT * from users;

CREATE TABLE barbershops (
    id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    photo VARCHAR(255),
    PRIMARY KEY (`id`),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE registered_barbers (
    id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    barbershop_id int NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (barbershop_id) REFERENCES barbershops(id),
    UNIQUE (user_id, barbershop_id)
);

CREATE TABLE faq (
    id SERIAL PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL
);
CREATE TABLE user_information (
    id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    bio VARCHAR(255), 
    address VARCHAR(255),        
    phone VARCHAR(20),  
    PRIMARY KEY (`id`),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE appointments (
    id int NOT NULL AUTO_INCREMENT,
    client_id int NOT NULL,             
    barber_id int NOT NULL,             
    barbershop_user_id int NOT NULL,   
    appointment_datetime TIMESTAMP NOT NULL,
    service_description VARCHAR(250),
    status VARCHAR(20) DEFAULT 'scheduled', 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY (client_id) REFERENCES users(id),
    FOREIGN KEY (barber_id) REFERENCES users(id),
    FOREIGN KEY (barbershop_user_id) REFERENCES users(id)
);