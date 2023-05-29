CREATE TABLE "tipo_fotografia" (
  "id_tipo_fotografia" interger PRIMARY KEY,
  "nombre" varchar(20)
);

CREATE TABLE "modelo" (
  "id_modelo" interger PRIMARY KEY,
  "nombre" varchar(50),
  "sexo" char(1),
  "fecha_nacimiento" date,
  "biografia" varchar(150),
  "agencia" varchar(30)
);

CREATE TABLE "lugar" (
  "id_lugar" interger PRIMARY KEY,
  "nombre_area" varchar(80),
  "pais" varchar(50),
  "descripcion" varchar(100)
);

CREATE TABLE "fotografo" (
  "id_fotografo" interger PRIMARY KEY,
  "nombre" varchar(50),
  "comentario" varchar(100),
  "biografia" varchar(100)
);

CREATE TABLE "comprador" (
  "id_comprador" interger PRIMARY KEY,
  "nombre" varchar(50),
  "rfc" varchar(25),
  "domicilio" varchar(50),
  "password" varchar(30),
  "login" varchar(50)
);

CREATE TABLE "fotografia" (
  "id_fotografia" interger PRIMARY KEY,
  "color" varchar(10),
  "fecha_toma" date,
  "precio_unidad" double,
  "id_tipo_fotografia" interger,
  "id_modelo" interger,
  "id_lugar" interger,
  "id_fotografo" interger
);

CREATE TABLE "compra" (
  "id_compra" interger PRIMARY KEY,
  "id_comprador" interger,
  "fecha_compra" date,
  "forma_pago" char(2),
  "numero_cuenta" varchar(18),
  "fecha_vencimiento" date,
  "num_cheque" interger,
  "numero_cuenta_origen" interger,
  "fecha_deposito" date
);

CREATE TABLE "detalle_compra" (
  "id_detalle_compra" interger PRIMARY KEY,
  "id_compra" interger,
  "id_fotografia" interger
);

ALTER TABLE "fotografia" ADD FOREIGN KEY ("id_tipo_fotografia") REFERENCES "tipo_fotografia" ("id_tipo_fotografia");

ALTER TABLE "fotografia" ADD FOREIGN KEY ("id_modelo") REFERENCES "modelo" ("id_modelo");

ALTER TABLE "fotografia" ADD FOREIGN KEY ("id_lugar") REFERENCES "lugar" ("id_lugar");

ALTER TABLE "fotografia" ADD FOREIGN KEY ("id_fotografo") REFERENCES "fotografo" ("id_fotografo");

ALTER TABLE "compra" ADD FOREIGN KEY ("id_comprador") REFERENCES "comprador" ("id_comprador");

ALTER TABLE "detalle_compra" ADD FOREIGN KEY ("id_compra") REFERENCES "compra" ("id_compra");

ALTER TABLE "detalle_compra" ADD FOREIGN KEY ("id_fotografia") REFERENCES "fotografia" ("id_fotografia");
