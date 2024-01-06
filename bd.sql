CREATE SCHEMA IF NOT EXISTS bd;
USE bd;

DROP TABLE IF EXISTS n_cliente;
CREATE TABLE n_cliente (
  id VARCHAR(3) NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  direccion VARCHAR(20),
  ciudad VARCHAR(20),
  provincia VARCHAR(15),
  pais VARCHAR(20),
  codigo_postal VARCHAR(15),
  calificacion_crediticia VARCHAR(9),
  ventas_tra_id VARCHAR(3),
  region_id VARCHAR(3),
  comentarios VARCHAR(255),
  CONSTRAINT n_cliente_id_pk PRIMARY KEY (id),
  CONSTRAINT n_cliente_calificacion_crediticia_ck CHECK (calificacion_crediticia IN ('EXCELENTE', 'BUENA', 'MALA'))
);

INSERT INTO n_cliente VALUES ('301', 'Sports, Inc', '540-123-4567', '72 High St',
  'Harrisonburg', 'VA', 'US', '22809', 'EXCELENTE', '12', '1', NULL);
INSERT INTO n_cliente VALUES ('302', 'Toms Sporting Goods', '540-987-6543', '6741 Main St',
  'Harrisonburg', 'VA', 'US', '22809', 'MALA', '14', '1', NULL);
INSERT INTO n_cliente VALUES ('303', 'Athletic Attire', '540-123-6789', '54 Market St',
  'Harrisonburg', 'VA', 'US', '22808', 'BUENA', '14', '1', NULL);
INSERT INTO n_cliente VALUES ('304', 'Athletics For All', '540-987-1234', '286 Main St', 'Harrisonburg', 'VA',
  'US', '22808', 'EXCELENTE', '12', '1', NULL);
INSERT INTO n_cliente VALUES ('305', 'Shoes for Sports', '540-123-9876', '538 High St',
  'Harrisonburg', 'VA', 'US', '22809', 'EXCELENTE', '14', '1', NULL);
INSERT INTO n_cliente VALUES ('306', 'BJ Athletics', '540-987-9999', '632 Water St',
  'Harrisonburg', 'VA', 'US', '22810', 'MALA', '12', '1', NULL);

-- (Resto de las inserciones)

COMMIT;
