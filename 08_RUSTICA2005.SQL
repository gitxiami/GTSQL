/********************************************************************************
Acci�n: Recoge los datos de las parcelas.
********************************************************************************/

CREATE OR REPLACE PROCEDURE DAME_DATOS_PARCELAS
	(xID80			IN INTEGER,
	xVALOR_CATASTRAL1  	OUT FLOAT,
	xSUPERFICIE1		OUT FLOAT,
	xNUMERO_PARCELA1		OUT CHAR,
	xPARAJE1			OUT CHAR,
	xCOD_POLIGONO1		OUT CHAR,

	xVALOR_CATASTRAL2 	OUT FLOAT,		
	xSUPERFICIE2		OUT FLOAT,
	xNUMERO_PARCELA2		OUT CHAR,
	xPARAJE2			OUT CHAR,
	xCOD_POLIGONO2		OUT CHAR,

	xVALOR_CATASTRAL3 	OUT FLOAT,		
	xSUPERFICIE3		OUT FLOAT,
	xNUMERO_PARCELA3		OUT CHAR,
	xPARAJE3			OUT CHAR,
	xCOD_POLIGONO3		OUT CHAR,

	xVALOR_CATASTRAL4 	OUT FLOAT,		
	xSUPERFICIE4		OUT FLOAT,
	xNUMERO_PARCELA4		OUT CHAR,
	xPARAJE4			OUT CHAR,
	xCOD_POLIGONO4		OUT CHAR,

	xVALOR_CATASTRAL5 	OUT FLOAT,
	xSUPERFICIE5		OUT FLOAT,
	xNUMERO_PARCELA5		OUT CHAR,
	xPARAJE5			OUT CHAR,
	xCOD_POLIGONO5		OUT CHAR,

	xVALOR_CATASTRAL6 	OUT FLOAT,		
	xSUPERFICIE6		OUT FLOAT,
	xNUMERO_PARCELA6		OUT CHAR,
	xPARAJE6			OUT CHAR,
	xCOD_POLIGONO6		OUT CHAR,

	xVALOR_CATASTRAL7 	OUT FLOAT,
	xSUPERFICIE7		OUT FLOAT,
	xNUMERO_PARCELA7		OUT CHAR,
	xPARAJE7			OUT CHAR,
	xCOD_POLIGONO7		OUT CHAR,

	xVALOR_CATASTRAL8 	OUT FLOAT,		
	xSUPERFICIE8		OUT FLOAT,
	xNUMERO_PARCELA8		OUT CHAR,
	xPARAJE8			OUT CHAR,
	xCOD_POLIGONO8		OUT CHAR)

AS
Z	INTEGER;
CURSOR CPARCELAS IS 
	SELECT ID,COD_POLIGONO_CATASTRAL,NUMERO_PARCELA,PARAJE,SUPERFICIE,
		 VALOR_CATASTRAL 
	FROM RUS81 WHERE ABONADO=xID80;

BEGIN

	/* recogemos los datos de hasta 8 posibles parcelas */
	xVALOR_CATASTRAL1:=NULL;
	xSUPERFICIE1:=NULL;
	xNUMERO_PARCELA1:=NULL;
	xPARAJE1:=NULL;
	xCOD_POLIGONO1:=NULL;
	xVALOR_CATASTRAL2:=NULL;
	xSUPERFICIE2:=NULL;
	xNUMERO_PARCELA2:=NULL;
	xPARAJE2:=NULL;
	xCOD_POLIGONO2:=NULL;
	xVALOR_CATASTRAL3:=NULL;
	xSUPERFICIE3:=NULL;
	xNUMERO_PARCELA3:=NULL;
	xPARAJE3:=NULL;
	xCOD_POLIGONO3:=NULL;
	xVALOR_CATASTRAL4:=NULL;
	xSUPERFICIE4:=NULL;
	xNUMERO_PARCELA4:=NULL;
	xPARAJE4:=NULL;
	xCOD_POLIGONO4:=NULL;
	xVALOR_CATASTRAL5:=NULL;
	xSUPERFICIE5:=NULL;
	xNUMERO_PARCELA5:=NULL;
	xPARAJE5:=NULL;
	xCOD_POLIGONO5:=NULL;
	xVALOR_CATASTRAL6:=NULL;
	xSUPERFICIE6:=NULL;
	xNUMERO_PARCELA6:=NULL;
	xPARAJE6:=NULL;
	xCOD_POLIGONO6:=NULL;
	xVALOR_CATASTRAL7:=NULL;
	xSUPERFICIE7:=NULL;
	xNUMERO_PARCELA7:=NULL;
	xPARAJE7:=NULL;
	xCOD_POLIGONO7:=NULL;
	xVALOR_CATASTRAL8:=NULL;
	xSUPERFICIE8:=NULL;
	xNUMERO_PARCELA8:=NULL;
	xPARAJE8:=NULL;
	xCOD_POLIGONO8:=NULL;

	Z:=1;

	FOR v_parcelas IN CPARCELAS
	LOOP
 	   IF (Z=1) THEN
		xVALOR_CATASTRAL1:=v_parcelas.VALOR_CATASTRAL;	
		xSUPERFICIE1:=v_parcelas.SUPERFICIE;
		xNUMERO_PARCELA1:=v_parcelas.NUMERO_PARCELA;
		xPARAJE1:=v_parcelas.PARAJE;
		xCOD_POLIGONO1:=v_parcelas.COD_POLIGONO_CATASTRAL;
	   ELSIF (Z=2) THEN
		xVALOR_CATASTRAL2:=v_parcelas.VALOR_CATASTRAL;	
		xSUPERFICIE2:=v_parcelas.SUPERFICIE;
		xNUMERO_PARCELA2:=v_parcelas.NUMERO_PARCELA;
		xPARAJE2:=v_parcelas.PARAJE;
		xCOD_POLIGONO2:=v_parcelas.COD_POLIGONO_CATASTRAL;
	   ELSIF (Z=3) THEN
		xVALOR_CATASTRAL3:=v_parcelas.VALOR_CATASTRAL;	
		xSUPERFICIE3:=v_parcelas.SUPERFICIE;
		xNUMERO_PARCELA3:=v_parcelas.NUMERO_PARCELA;
		xPARAJE3:=v_parcelas.PARAJE;
		xCOD_POLIGONO3:=v_parcelas.COD_POLIGONO_CATASTRAL;
	   ELSIF (Z=4) THEN
		xVALOR_CATASTRAL4:=v_parcelas.VALOR_CATASTRAL;	
		xSUPERFICIE4:=v_parcelas.SUPERFICIE;
		xNUMERO_PARCELA4:=v_parcelas.NUMERO_PARCELA;
		xPARAJE4:=v_parcelas.PARAJE;
		xCOD_POLIGONO4:=v_parcelas.COD_POLIGONO_CATASTRAL;
	   ELSIF (Z=5) THEN
		xVALOR_CATASTRAL5:=v_parcelas.VALOR_CATASTRAL;	
		xSUPERFICIE5:=v_parcelas.SUPERFICIE;
		xNUMERO_PARCELA5:=v_parcelas.NUMERO_PARCELA;
		xPARAJE5:=v_parcelas.PARAJE;
		xCOD_POLIGONO5:=v_parcelas.COD_POLIGONO_CATASTRAL;
	   ELSIF (Z=6) THEN
		xVALOR_CATASTRAL6:=v_parcelas.VALOR_CATASTRAL;	
		xSUPERFICIE6:=v_parcelas.SUPERFICIE;
		xNUMERO_PARCELA6:=v_parcelas.NUMERO_PARCELA;
		xPARAJE6:=v_parcelas.PARAJE;
		xCOD_POLIGONO6:=v_parcelas.COD_POLIGONO_CATASTRAL;
	   ELSIF (Z=7) THEN
		xVALOR_CATASTRAL7:=v_parcelas.VALOR_CATASTRAL;	
		xSUPERFICIE7:=v_parcelas.SUPERFICIE;
		xNUMERO_PARCELA7:=v_parcelas.NUMERO_PARCELA;
		xPARAJE7:=v_parcelas.PARAJE;
		xCOD_POLIGONO7:=v_parcelas.COD_POLIGONO_CATASTRAL;
	   ELSIF (Z=8) THEN
		xVALOR_CATASTRAL8:=v_parcelas.VALOR_CATASTRAL;	
		xSUPERFICIE8:=v_parcelas.SUPERFICIE;
		xNUMERO_PARCELA8:=v_parcelas.NUMERO_PARCELA;
		xPARAJE8:=v_parcelas.PARAJE;
		xCOD_POLIGONO8:=v_parcelas.COD_POLIGONO_CATASTRAL;
	   ELSE
		EXIT;
	   END IF;

	   Z:=Z+1;

	END LOOP;
END;
/

/********************************************************************************
Acci�n: Inserta datos en tabla temporal para la impresi�n de los recibos.
Autor: Agustin Leon Robles.
Fecha: 23/08/2001
MODIFICACI�N: 14/09/2001 M. Carmen Junco G�mez. Adaptaci�n al euro.
MODIFICACI�N: 24/06/2002 M. Carmen Junco G�mez. Bonificaci�n en los recibos.
MODIFICACION: 31/05/2004 Gloria Maria Calle Hernandez. A�adido campo AYTO a la tabla 
			  Datos_Ordenante para generar ficheros por ayuntamientos (xej. Catoure).
			  S�lo cuando se trata de una diputaci�n se almacena el campo Ayto vacio (en principio).
********************************************************************************/

CREATE OR REPLACE PROCEDURE WriteTempRustica
		(v_RegistroRus 	IN Recibos_Rustica%ROWTYPE,
		xMUNICIPIO		IN CHAR,
		xYEAR			IN CHAR,
		xPERI			IN CHAR)
AS
	xNOMBRE_ENTIDAD 	CHAR(50);
	xHASTA1         	DATE;

	xVALOR_CATASTRAL1  FLOAT;		
	xSUPERFICIE1	FLOAT;
	xNUMERO_PARCELA1	CHAR(5);
	xPARAJE1		CHAR(20);
	xCOD_POLIGONO1	CHAR(3);		

	xVALOR_CATASTRAL2 FLOAT;		
	xSUPERFICIE2	FLOAT;
	xNUMERO_PARCELA2	CHAR(5);
	xPARAJE2		CHAR(20);
	xCOD_POLIGONO2	CHAR(3);

	xVALOR_CATASTRAL3 FLOAT;		
	xSUPERFICIE3	FLOAT;
	xNUMERO_PARCELA3	CHAR(5);
	xPARAJE3		CHAR(20);
	xCOD_POLIGONO3	CHAR(3);

	xVALOR_CATASTRAL4 FLOAT;		
	xSUPERFICIE4	FLOAT;
	xNUMERO_PARCELA4	CHAR(5);
	xPARAJE4		CHAR(20);
	xCOD_POLIGONO4	CHAR(3);

	xVALOR_CATASTRAL5 FLOAT;		
	xSUPERFICIE5	FLOAT;
	xNUMERO_PARCELA5	CHAR(5);
	xPARAJE5		CHAR(20);
	xCOD_POLIGONO5	CHAR(3);

	xVALOR_CATASTRAL6 FLOAT;		
	xSUPERFICIE6	FLOAT;
	xNUMERO_PARCELA6	CHAR(5);
	xPARAJE6		CHAR(20);
	xCOD_POLIGONO6	CHAR(3);

	xVALOR_CATASTRAL7 FLOAT;		
	xSUPERFICIE7	FLOAT;
	xNUMERO_PARCELA7	CHAR(5);
	xPARAJE7		CHAR(20);
	xCOD_POLIGONO7	CHAR(3);

	xVALOR_CATASTRAL8 FLOAT;		
	xSUPERFICIE8	FLOAT;
	xNUMERO_PARCELA8	CHAR(5);
	xPARAJE8		CHAR(20);
	xCOD_POLIGONO8	CHAR(3);
	
	xDMUNICIPIO       VARCHAR2(50);
	xCODCONCEPTO      CHAR(6);

     	xNOMBREORD VARCHAR2(40);
	xNIFORD    CHAR(10);
	xTIPOENT			 	 CHAR(1);
BEGIN

	-- recogemos los datos del ordenante (nombre y nif)
      begin
           SELECT TIPO_ENTIDAD INTO xTipoEnt FROM CONFIGURACION C, MUNICIPIOS M 
            WHERE C.ZONA=M.ZONA AND AYTO=xMUNICIPIO;
           IF xTIPOENT='S' THEN
              SELECT NIF,NOMBRE INTO xNIFORD,xNOMBREORD FROM DATOS_ORDENANTE WHERE AYTO IS NULL;
           ELSE 
              SELECT NIF,NOMBRE INTO xNIFORD,xNOMBREORD FROM DATOS_ORDENANTE WHERE AYTO=xMUNICIPIO;
           END IF;
      Exception
	      When no_data_found then
	         xNIFORD:=NULL;
               xNOMBREORD:=NULL;
      end;

	-- recogemos la descripci�n del municipio
	SELECT EMPRESA INTO xDMUNICIPIO FROM DATOSPER WHERE MUNICIPIO=xMUNICIPIO;

	-- recogemos el c�digo del concepto
	SELECT CONCEPTO INTO xCODCONCEPTO FROM PROGRAMAS WHERE PROGRAMA='RUSTICA';


	DAME_DATOS_PARCELAS(v_RegistroRus.ABONADO,
		xVALOR_CATASTRAL1,xSUPERFICIE1,xNUMERO_PARCELA1,xPARAJE1,xCOD_POLIGONO1,
		xVALOR_CATASTRAL2,xSUPERFICIE2,xNUMERO_PARCELA2,xPARAJE2,xCOD_POLIGONO2,
		xVALOR_CATASTRAL3,xSUPERFICIE3,xNUMERO_PARCELA3,xPARAJE3,xCOD_POLIGONO3,
		xVALOR_CATASTRAL4,xSUPERFICIE4,xNUMERO_PARCELA4,xPARAJE4,xCOD_POLIGONO4,
		xVALOR_CATASTRAL5,xSUPERFICIE5,xNUMERO_PARCELA5,xPARAJE5,xCOD_POLIGONO5,
		xVALOR_CATASTRAL6,xSUPERFICIE6,xNUMERO_PARCELA6,xPARAJE6,xCOD_POLIGONO6,
		xVALOR_CATASTRAL7,xSUPERFICIE7,xNUMERO_PARCELA7,xPARAJE7,xCOD_POLIGONO7,
		xVALOR_CATASTRAL8,xSUPERFICIE8,xNUMERO_PARCELA8,xPARAJE8,xCOD_POLIGONO8);
	
      --En caso de estar domiciliado, nombre de la Entidad
      xNOMBRE_ENTIDAD:='';
	begin
	   SELECT NOMBRE INTO xNOMBRE_ENTIDAD FROM ENTIDADES WHERE CODIGO=v_RegistroRus.ENTIDAD;
	EXCEPTION
	   WHEN NO_DATA_FOUND THEN
	      NULL;
	end;

	xHASTA1:=v_RegistroRus.HASTA+1; --fecha del hasta mas un d�a          

	INSERT INTO IMP_RECIBOS_RUS 
	   	(USUARIO,MUNI,DMUNICIPIO,CODCONCEPTO,xAnio,xPeriodo,xAbonado,xNif,xNombre,xDomiFiscal,xCodPostal,xPoblacion,
		 xProvincia,xTotal,xNUM_FIJO,xTIPO_GRAVAMEN,xBONIFICACION,
		 xVALOR_CATASTRAL,xPORCEN_PARTI,xBASE_IMPONIBLE,xSUPERFICIE,
		 xVALOR_CATASTRAL1,xSUPERFICIE1,xNUMERO_PARCELA1,xPARAJE1,xCOD_POLIGONO1,
		 xVALOR_CATASTRAL2,xSUPERFICIE2,xNUMERO_PARCELA2,xPARAJE2,xCOD_POLIGONO2,
		 xVALOR_CATASTRAL3,xSUPERFICIE3,xNUMERO_PARCELA3,xPARAJE3,xCOD_POLIGONO3,
		 xVALOR_CATASTRAL4,xSUPERFICIE4,xNUMERO_PARCELA4,xPARAJE4,xCOD_POLIGONO4,
		 xVALOR_CATASTRAL5,xSUPERFICIE5,xNUMERO_PARCELA5,xPARAJE5,xCOD_POLIGONO5,
		 xVALOR_CATASTRAL6,xSUPERFICIE6,xNUMERO_PARCELA6,xPARAJE6,xCOD_POLIGONO6,
		 xVALOR_CATASTRAL7,xSUPERFICIE7,xNUMERO_PARCELA7,xPARAJE7,xCOD_POLIGONO7,
		 xVALOR_CATASTRAL8,xSUPERFICIE8,xNUMERO_PARCELA8,xPARAJE8,xCOD_POLIGONO8,
		 xRefe,xDC,xTRIBUTO,xEJERCICIO,xREMESA,xIMPO,xEMISOR,xDesde,
		 xHasta,xCargo,xHasta1,xENTIDAD,xSUCURSAL,xDCCUENTA,xCUENTA,xTITULAR,
		 xNOMBRE_ENTIDAD,xNOMBRE_TITULAR,xCONCEPTO,
		 DISCRI_PERIODO,DIGITO_YEAR,F_JULIANA,DIGITO_C60_MODALIDAD2,
		 COD_BARRAS_MOD1,COD_BARRAS_MOD2,xNIFORDENANTE,xNOMBREORDENANTE)
      VALUES
	   	(UID,xMUNICIPIO,xDMUNICIPIO,xCODCONCEPTO,xYear,xPeri,v_RegistroRus.RECIBO,v_RegistroRus.Nif,
		 v_RegistroRus.Nombre,
		 v_RegistroRus.Domicilio,v_RegistroRus.Codigo_Postal,v_RegistroRus.Poblacion,
		 v_RegistroRus.Provincia,v_RegistroRus.Total,v_RegistroRus.NUM_FIJO,
		 v_RegistroRus.TIPO_GRAVAMEN,v_RegistroRus.BONIFICACION,
		 v_RegistroRus.VALOR_CATASTRAL,v_RegistroRus.PORCEN_PARTICIPACION,
		 v_RegistroRus.BASE_IMPONIBLE,v_RegistroRus.SUPERFICIE,
		 xVALOR_CATASTRAL1,xSUPERFICIE1,xNUMERO_PARCELA1,xPARAJE1,xCOD_POLIGONO1,
		 xVALOR_CATASTRAL2,xSUPERFICIE2,xNUMERO_PARCELA2,xPARAJE2,xCOD_POLIGONO2,
		 xVALOR_CATASTRAL3,xSUPERFICIE3,xNUMERO_PARCELA3,xPARAJE3,xCOD_POLIGONO3,
		 xVALOR_CATASTRAL4,xSUPERFICIE4,xNUMERO_PARCELA4,xPARAJE4,xCOD_POLIGONO4,
		 xVALOR_CATASTRAL5,xSUPERFICIE5,xNUMERO_PARCELA5,xPARAJE5,xCOD_POLIGONO5,
		 xVALOR_CATASTRAL6,xSUPERFICIE6,xNUMERO_PARCELA6,xPARAJE6,xCOD_POLIGONO6,
		 xVALOR_CATASTRAL7,xSUPERFICIE7,xNUMERO_PARCELA7,xPARAJE7,xCOD_POLIGONO7,
		 xVALOR_CATASTRAL8,xSUPERFICIE8,xNUMERO_PARCELA8,xPARAJE8,xCOD_POLIGONO8,

		 v_RegistroRus.REFERENCIA,v_RegistroRus.DIGITO_CONTROL,v_RegistroRus.TRIBUTO,
		 v_RegistroRus.EJERCICIO,v_RegistroRus.REMESA,v_RegistroRus.IMPORTE,
		 v_RegistroRus.EMISOR,v_RegistroRus.Desde,v_RegistroRus.Hasta,
		 v_RegistroRus.F_Cargo,xHasta1,v_RegistroRus.ENTIDAD,v_RegistroRus.SUCURSAL,
		 v_RegistroRus.DC,v_RegistroRus.CUENTA,v_RegistroRus.TITULAR,
		 xNOMBRE_ENTIDAD,v_RegistroRus.NOMBRE_TITULAR,v_RegistroRus.CONCEPTO,
		 v_RegistroRus.DISCRI_PERIODO,v_RegistroRus.DIGITO_YEAR,v_RegistroRus.F_JULIANA,
		 v_RegistroRus.DIGITO_C60_MODALIDAD2,

		 '90502'||v_RegistroRus.EMISOR||v_RegistroRus.REFERENCIA||
		 v_RegistroRus.DIGITO_CONTROL||
		 v_RegistroRus.TRIBUTO||v_RegistroRus.EJERCICIO||v_RegistroRus.REMESA||
		 LPAD(v_RegistroRus.IMPORTE*100,8,'0'),

		 '90521'||v_RegistroRus.EMISOR||v_RegistroRus.REFERENCIA||
		 v_RegistroRus.DIGITO_C60_MODALIDAD2||v_RegistroRus.DISCRI_PERIODO||
		 v_RegistroRus.TRIBUTO||v_RegistroRus.EJERCICIO||v_RegistroRus.DIGITO_YEAR||
		 v_RegistroRus.F_JULIANA||LPAD(v_RegistroRus.IMPORTE*100,8,'0')||'0',
		 xNIFORD,xNOMBREORD);
END;
/


/********************************************************************************
Acci�n: Impresi�n de recibos de r�stica.
MODIFICACI�N: 23/08/2001 Agustin Leon Robles.
MODIFICACI�N: 05/09/2005 Gloria M� Calle Hernandez. A�adido impresi�n ordenada por
		  codigo postal y domicilio fiscal.
********************************************************************************/

CREATE OR REPLACE PROCEDURE Imprime_Recibos_Rus (
		xMUNICIPIO 	IN CHAR,
		xID        	IN INTEGER,
		xYear      	IN CHAR, 
		xPeri      	IN CHAR, 
		xDomi      	IN CHAR,
		xReciDesde 	IN INTEGER,
		xReciHasta 	IN INTEGER,
		xOrden	IN CHAR)
AS

I INTEGER;

CURSOR CRecibosAlfabetico IS
	SELECT * FROM RECIBOS_RUSTICA
	WHERE MUNICIPIO=xMUNICIPIO and year=xYear and periodo=xPeri	and domiciliado=xDomi
	ORDER BY NOMBRE,RECIBO;

CURSOR CRecibosCallejero IS
	SELECT * FROM RECIBOS_RUSTICA
	WHERE MUNICIPIO=xMUNICIPIO and year=xYear and periodo=xPeri	and domiciliado=xDomi
	ORDER BY DOMICILIO,RECIBO;

CURSOR CRecibosCPDomi IS
	SELECT * FROM RECIBOS_RUSTICA
	WHERE MUNICIPIO=xMUNICIPIO and year=xYear and periodo=xPeri	and domiciliado=xDomi
	ORDER BY CODIGO_POSTAL,DOMICILIO;

v_RegistroRus      Recibos_Rustica%ROWTYPE;

BEGIN

   I:=0;

   DELETE FROM IMP_RECIBOS_RUS WHERE USUARIO=UID;

   IF (xID<>0 ) then 
		SELECT * INTO v_RegistroRus FROM RECIBOS_RUSTICA WHERE ID=xID;
		WriteTempRustica(v_RegistroRus,xMUNICIPIO,xYear,xPeri);

   ELSE /*DEL IF (xID<>0 ) */

	--imprimir en orden alfabetico
	if xOrden='A' then
		OPEN CRecibosAlfabetico;
		LOOP 
		   FETCH CRecibosAlfabetico INTO v_RegistroRus;
		   EXIT WHEN CRecibosAlfabetico%NOTFOUND;
	
  		   I:=I+1;				

		   IF (I >= xReciDesde and I <= xReciHasta) then

			IF v_RegistroRus.TOTAL>0 THEN
			 	WriteTempRustica(v_RegistroRus,xMUNICIPIO,xYear,xPeri);				
			END IF;

		   ELSE
		      IF (I > xRECIHASTA) THEN
      		   EXIT;
			END IF;
  		   END IF;	

		END LOOP;
		CLOSE CRecibosAlfabetico;

	--imprimir en orden codigopostal y domicilio fiscal
	elsif xOrden='D' then
		OPEN CRecibosCPDomi;
		LOOP 
		   FETCH CRecibosCPDomi INTO v_RegistroRus;
		   EXIT WHEN CRecibosCPDomi%NOTFOUND;
	
  		   I:=I+1;				

		   IF (I >= xReciDesde and I <= xReciHasta) then

			IF v_RegistroRus.TOTAL>0 THEN
			 	WriteTempRustica(v_RegistroRus,xMUNICIPIO,xYear,xPeri);				
			END IF;

		   ELSE
		      IF (I > xRECIHASTA) THEN
      		   EXIT;
			END IF;
  		   END IF;	

		END LOOP;
		CLOSE CRecibosCPDomi;

	ELSE /*if xOrden='A' then*/
		--orden callejero	
		OPEN CRecibosCallejero;
		LOOP 
		   FETCH CRecibosCallejero INTO v_RegistroRus;
		   EXIT WHEN CRecibosCallejero%NOTFOUND;
	
  		   I:=I+1;				

		   IF (I >= xReciDesde and I <= xReciHasta) then
		 	IF v_RegistroRus.TOTAL>0 THEN
			 	WriteTempRustica(v_RegistroRus,xMUNICIPIO,xYear,xPeri);				
			END IF;
		   ELSE
		      IF (I > xRECIHASTA) THEN
      		   EXIT;
			END IF;
  		   END IF;	

		END LOOP;
		CLOSE CRecibosCallejero;

	end if; /*DEL if xOrden='A' then*/

END IF; /*DEL IF (xID<>0 ) */

END;
/