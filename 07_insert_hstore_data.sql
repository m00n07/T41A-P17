CREATE EXTENSION IF NOT EXISTS hstore;

DROP TABLE IF EXISTS productos;
CREATE TABLE productos (
  id SERIAL PRIMARY KEY,
  nombre TEXT,
  atributos HSTORE
);

INSERT INTO productos (nombre, atributos)
VALUES
  ('Laptop', 'marca => "Dell", color => "negro", ram => "16GB"'),
  ('Teléfono', 'marca => "Samsung", color => "azul", ram => "8GB"');

UPDATE productos
SET atributos = atributos || 'ram => "32GB"'
WHERE nombre = 'Laptop';
