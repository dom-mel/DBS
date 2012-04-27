CREATE OR REPLACE TYPE o_gr01_voe AS object (
  position number(2),
  isbn varchar2(20)
) NOT FINAL;
/

CREATE TYPE nt_gr01_voe AS TABLE OF o_gr01_voe;
/


CREATE OR REPLACE TYPE o_gr01_person AS OBJECT (
  name varchar2(30),
  vorname varchar2(20),
  voe nt_gr01_voe
)
NOT FINAL;
/

CREATE OR REPLACE TYPE o_gr01_buch AS OBJECT (
  isbn varchar2(20),
  titelblatt blob,
  bildgroesse varchar2(20),
  titel varchar2(100),
  text varchar2(1000),
  video blob,
  videogroesse varchar2(20),
  videoformat varchar2(10),
  seitenanzahl number(4),
  exemplare number(3),
  leihfrist number(5)
) NOT FINAL;
/

CREATE TABLE t_gr01_autorinnen OF o_gr01_person (
  PRIMARY KEY(name, vorname)
) NESTED TABLE voe STORE AS t_gr01_voe;
/
CREATE TABLE t_gr01_buecher OF o_gr01_buch(
  PRIMARY KEY (isbn)
);
/