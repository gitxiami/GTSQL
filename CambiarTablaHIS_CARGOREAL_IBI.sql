CREATE TABLE HIS_CARGOREAL_IBI2(
	ID				INTEGER NOT NULL,
	IDIBI				INTEGER NOT NULL,
	AYTO				CHAR(3) NOT NULL,
	FECHA				DATE DEFAULT SYSDATE,
	USUARIO			CHAR(30) DEFAULT USER,
	TIPO_VARIACION		CHAR(1) CHECK (TIPO_VARIACION IN ('A','M')),
	QUIEN_VARIA			CHAR(1) CHECK (QUIEN_VARIA IN ('P','M','R','S','I')),
	FECHA_ALTERACION		DATE,
	ULTIMA_VARIACION		CHAR(1) DEFAULT 'N' CHECK (ULTIMA_VARIACION IN ('S','N')),
	NIF				CHAR(10),
    NOMBRE			CHAR(60),
	TIPO_VIA_FISCAL		CHAR(5),
	NOMBRE_VIA_FISCAL		CHAR(25),
	PRIMER_NUMERO_FISCAL	CHAR(4),
	ESCALERA_FISCAL		CHAR(2),
	PLANTA_FISCAL		CHAR(3),
	PUERTA_FISCAL		CHAR(3),
	COD_POSTAL_FISCAL		CHAR(5),
	MUNICIPIO_FISCAL		CHAR(25),
	PROVINCIA			CHAR(25),
	PAIS				CHAR(25),
	TIPO_VIA			CHAR(5),
	NOMBRE_VIA			CHAR(25),
	PRIMER_NUMERO		CHAR(4),
	BLOQUE			CHAR(4),
	ESCALERA			CHAR(2),
	PLANTA			CHAR(3),
	PUERTA			CHAR(3),
	COD_MOTIVO		CHAR(4) CHECK (COD_MOTIVO IN ('CV01','CV02')),
	CONSTRAINT HISCARGOREALIBI2
	FOREIGN KEY (IDIBI)	
	REFERENCES IBI(ID),
	PRIMARY KEY(ID)
)TABLESPACE GT;
INSERT INTO HIS_CARGOREAL_IBI2 
SELECT ID,IDIBI,AYTO,FECHA,USUARIO,TIPO_VARIACION,QUIEN_VARIA,FECHA_ALTERACION,
ULTIMA_VARIACION,NIF,NOMBRE,TIPO_VIA_FISCAL,NOMBRE_VIA_FISCAL,PRIMER_NUMERO_FISCAL,
ESCALERA_FISCAL,PLANTA_FISCAL,PUERTA_FISCAL,COD_POSTAL_FISCAL,MUNICIPIO_FISCAL,
PROVINCIA,PAIS,TIPO_VIA,NOMBRE_VIA,PRIMER_NUMERO,BLOQUE,ESCALERA,PLANTA,PUERTA,COD_MOTIVO
FROM HIS_CARGOREAL_IBI;
UPDATE HIS_CARGOREAL_IBI2 SET QUIEN_VARIA='S' WHERE QUIEN_VARIA='I';
DROP TABLE HIS_CARGOREAL_IBI;
CREATE TABLE HIS_CARGOREAL_IBI(
	ID				INTEGER NOT NULL,
	IDIBI				INTEGER NOT NULL,
	AYTO				CHAR(3) NOT NULL,
	FECHA				DATE DEFAULT SYSDATE,
	USUARIO			CHAR(30) DEFAULT USER,
	/* variaci�n manual o autom�tica (a petici�n de un sujeto pasivo o no) */
	TIPO_VARIACION		CHAR(1) CHECK (TIPO_VARIACION IN ('A','M')),
    /* Qui�n varia nos indica qui�n impulso el cambio:
       P plusval�as
       M motes
       R desde el registro de entrada
       S desde el IBI */
	QUIEN_VARIA			CHAR(1) CHECK (QUIEN_VARIA IN ('P','M','R','S')),
	FECHA_ALTERACION		DATE,
	ULTIMA_VARIACION		CHAR(1) DEFAULT 'N' CHECK (ULTIMA_VARIACION IN ('S','N')),
	NIF				CHAR(10),
      NOMBRE			CHAR(60),
	TIPO_VIA_FISCAL		CHAR(5),
	NOMBRE_VIA_FISCAL		CHAR(25),
	PRIMER_NUMERO_FISCAL	CHAR(4),
	ESCALERA_FISCAL		CHAR(2),
	PLANTA_FISCAL		CHAR(3),
	PUERTA_FISCAL		CHAR(3),
	COD_POSTAL_FISCAL		CHAR(5),
	MUNICIPIO_FISCAL		CHAR(25),
	PROVINCIA			CHAR(25),
	PAIS				CHAR(25),
	TIPO_VIA			CHAR(5),
	NOMBRE_VIA			CHAR(25),
	PRIMER_NUMERO		CHAR(4),
	BLOQUE			CHAR(4),
	ESCALERA			CHAR(2),
	PLANTA			CHAR(3),
	PUERTA			CHAR(3),
	COD_MOTIVO		CHAR(4) CHECK (COD_MOTIVO IN ('CV01','CV02')),
	CONSTRAINT HISCARGOREALIBI
	FOREIGN KEY (IDIBI)	
	REFERENCES IBI(ID),
	PRIMARY KEY(ID)
)TABLESPACE GT;
INSERT INTO HIS_CARGOREAL_IBI SELECT * FROM HIS_CARGOREAL_IBI2;
DROP TABLE HIS_CARGOREAL_IBI2;