-- 2 Enero 2.002
ALTER TABLE REFERENCIAS_BANCOS ADD REF_RUSTICA	CHAR(18);

PROCEDURE INSERTA_REFERENCIA_BANCO EN 02_CONTRIBUYENTES.SQL;
PROCEDURE ADD_TRIBUTOS_CONTRI EN 02_CONTRIBUYENTES.SQL;

CREATE OR REPLACE TRIGGER T_INS_RUS80;
CREATE OR REPLACE TRIGGER T_INS_RUS81;
CREATE OR REPLACE TRIGGER T_INS_IBI;
CREATE OR REPLACE TRIGGER T_ADD_IAE;


-- 03/01/2002

PROCEDURE ADD_TRIBUTOS_CONTRI EN 02_CONTRIBUYENTES.SQL;
PROCEDURE GENERA_PADRON_RUS EN 08_RUSTICA.SQL;
PROCEDURE RUS_MODIFICA EN 08_RUSTICA.SQL;
PROCEDURE INSERTA_RUSTICA_DETALLE 08_RUSTICA.SQL;

CREATE OR REPLACE TRIGGER T_INS_IBI;

CREATE OR REPLACE TRIGGER T_ADD_IAE;

CREATE OR REPLACE TRIGGER T_INS_RUS80;

CREATE OR REPLACE TRIGGER T_INS_RUS81;

-- 08/01/2002

TRIGGER ADD_HISTO_CONTRI;
CREATE OR REPLACE PROCEDURE CALCULA_DC_60 en 02_varios.sql;
CREATE OR REPLACE PROCEDURE CALCULA_DC_MODALIDAD2_60 en 02_varios.sql;

-- 10/01/2002
CREATE OR REPLACE PROCEDURE GENERA_PADRON_EXACCIONES en 13_exacciones.sql;
CREATE OR REPLACE PROCEDURE WriteTempExac en 13_exacciones.sql;
CREATE OR REPLACE PROCEDURE GENERA_PADRON_IBI en 04_ibi.sql;
CREATE OR REPLACE PROCEDURE WriteTempIBI en 04_ibi.sql;
CREATE OR REPLACE PROCEDURE GENERA_PADRON_IAE en 05_iae.sql;
CREATE OR REPLACE PROCEDURE WriteTempIAE en 05_iae.sql;
CREATE OR REPLACE PROCEDURE GENERA_PADRON_VEHI en 06_vehiculos.sql;
CREATE OR REPLACE PROCEDURE WriteTempVehi en 06_vehiculos.sql;
CREATE OR REPLACE PROCEDURE GENERA_PADRON_RUS EN 08_RUSTICA.SQL;
CREATE OR REPLACE PROCEDURE WriteTempRustica EN 08_RUSTICA.SQL;
CREATE OR REPLACE PROCEDURE GEN_RECIBOS_AGUA EN 17_AGUAS_EMISION_DE_RECIBOS.sql;
CREATE OR REPLACE PROCEDURE Imprime_Recibos_Agua EN 17_AGUAS_EMISION_DE_RECIBOS.sql;

************************* HASTA AQUI ACTUALIZADO EN PULIANAS 15-01-2002 ****************

CREATE OR REPLACE PROCEDURE INSERTA_REGISTRO_IAE EN 05_IAE.SQL;
CREATE OR REPLACE PROCEDURE NEW_ANO en 12_MULTAS.SQL;

DROP TABLE MULTITITULARES;
CREATE TABLE MULTITITULARES EN 03_Tablas_Temporales.SQL;
PROCEDURE ADD_TITULAR en 09_plusvalias.sql;
PROCEDURE DEL_TITULAR en 09_plusvalias.sql;

alter table tabla_aux_listados_registro add numero_depar char(12);

CREATE OR REPLACE PROCEDURE F_DC60 en 02_VARIOS.SQL;

************************* HASTA AQUI ACTUALIZADO EN DURCAL 21-01-2002 ******************
************************* HASTA AQUI ACTUALIZADO EN SALOBRE�A 22-01-2002 ***************

-- 22/01/2002
procedure libro_registro en 600_registro.sql;

************************* HASTA AQUI ACTUALIZADO EN ALBOLOTE  23-01-2002 *****************
************************* HASTA AQUI ACTUALIZADO EN BAZA  23-01-2002 *********************
************************* HASTA AQUI ACTUALIZADO EN ALBU�OL 28-01-2002 *****************
************************* HASTA AQUI ACTUALIZADO EN MOTRIL 30-01-2002 ******************
************************* HASTA AQUI ACTUALIZADO EN CULLAR 31-01-2002 ******************
************************* HASTA AQUI ACTUALIZADO EN ARMILLA 31-01-2002 *****************
