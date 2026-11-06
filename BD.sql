-- 1. Creación de la Base de Datos y Selección
CREATE DATABASE IF NOT EXISTS tienda_multimarca;
USE tienda_multimarca;

-- 2. Creación de la Tabla de Categorías
CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- 3. Creación de la Tabla de Productos
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- 4. Creación de la Tabla de Usuarios (para el formulario de registro)
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    marca_preferida VARCHAR(50)
);

-- 5. Alta de Categorías
INSERT INTO categorias (id, nombre) VALUES 
(1, 'Ropa'), 
(2, 'Cosméticos'), 
(3, 'Calzado'), 
(4, 'Celulares');

-- 6. Alta de 10 Productos por Categoría (Total: 40 Productos)

-- Categoría: Ropa (ID: 1)
INSERT INTO productos (nombre, marca, precio, categoria_id) VALUES
('Chamarra Deportiva', 'Nike', 1299.00, 1),
('Sudadera Classic', 'Adidas', 999.00, 1),
('Playera Fit', 'Puma', 450.00, 1),
('Jeans 501', 'Levi\'s', 1199.00, 1),
('Abrigo Elegante', 'Zara', 1899.00, 1),
('Playera de Entrenamiento', 'Under Armour', 550.00, 1),
('Chamarra Denim', 'Tommy Hilfiger', 2100.00, 1),
('Camisa Casual', 'Calvin Klein', 1350.00, 1),
('Chamarra Térmica', 'Columbia', 2499.00, 1),
('Pantalón Jogger', 'H&M', 499.00, 1);

-- Categoría: Cosméticos (ID: 2)
INSERT INTO productos (nombre, marca, precio, categoria_id) VALUES
('Labial Mate Red', 'MAC', 420.00, 2),
('Sérum Ácido Hialurónico', 'L\'Oréal', 380.00, 2),
('Base Fit Me', 'Maybelline', 250.00, 2),
('Máscara Pestañas', 'Benefit', 520.00, 2),
('Paleta Sombras', 'Sephora', 750.00, 2),
('Rubor Orgasm', 'NARS', 650.00, 2),
('Corrector Líquido', 'Fenty Beauty', 590.00, 2),
('Perfume No. 5', 'Chanel', 3100.00, 2),
('Crema Hidratante', 'Clinique', 890.00, 2),
('Polvo Traslúcido', 'Estée Lauder', 720.00, 2);

-- Categoría: Calzado (ID: 3)
INSERT INTO productos (nombre, marca, precio, categoria_id) VALUES
('Air Max Red', 'Nike', 2499.00, 3),
('Superstar White', 'Adidas', 1899.00, 3),
('Suede Classic', 'Puma', 1599.00, 3),
('Old Skool Black', 'Vans', 1299.00, 3),
('Chuck Taylor High', 'Converse', 1399.00, 3),
('Classic Leather', 'Reebok', 1699.00, 3),
('Botas de Cuero', 'Timberland', 3499.00, 3),
('Sneakers 574', 'New Balance', 2199.00, 3),
('Jordan 1 Retro', 'Nike Jordan', 3899.00, 3),
('Gel-Kayano Running', 'Asics', 2799.00, 3);

-- Categoría: Celulares (ID: 4)
INSERT INTO productos (nombre, marca, precio, categoria_id) VALUES
('iPhone 15 Pro', 'Apple', 23999.00, 4),
('Galaxy S24 Ultra', 'Samsung', 25499.00, 4),
('Xiaomi 14 Pro', 'Xiaomi', 15999.00, 4),
('Edge 50 Pro', 'Motorola', 11499.00, 4),
('Pixel 8 Pro', 'Google', 17299.00, 4),
('OnePlus 12', 'OnePlus', 16500.00, 4),
('Magic 6 Pro', 'Honor', 19999.00, 4),
('Realme GT 5', 'Realme', 9899.00, 4),
('ROG Phone 8', 'Asus', 21000.00, 4),
('POCO X6 Pro', 'POCO', 6999.00, 4);
