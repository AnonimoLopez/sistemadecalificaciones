/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     23/05/2018 11:04:33 p. m.                    */
/*==============================================================*/


IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ACTIVIDA_REFERENCE_DEPARTAM') THEN
    ALTER TABLE ACTIVIDADES_COMPLEMENTARIAS
       DELETE FOREIGN KEY FK_ACTIVIDA_REFERENCE_DEPARTAM
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS_REFERENCE_MODALIDA') THEN
    ALTER TABLE ALUMNOS
       DELETE FOREIGN KEY FK_ALUMNOS_REFERENCE_MODALIDA
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS_REFERENCE_SITUACIO') THEN
    ALTER TABLE ALUMNOS
       DELETE FOREIGN KEY FK_ALUMNOS_REFERENCE_SITUACIO
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS_REFERENCE_BACHILLE') THEN
    ALTER TABLE ALUMNOS
       DELETE FOREIGN KEY FK_ALUMNOS_REFERENCE_BACHILLE
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS_REFERENCE_USUARIOS') THEN
    ALTER TABLE ALUMNOS
       DELETE FOREIGN KEY FK_ALUMNOS_REFERENCE_USUARIOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS_REFERENCE_CARRERAS') THEN
    ALTER TABLE ALUMNOS
       DELETE FOREIGN KEY FK_ALUMNOS_REFERENCE_CARRERAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS_REFERENCE_PERSONAS') THEN
    ALTER TABLE ALUMNOS
       DELETE FOREIGN KEY FK_ALUMNOS_REFERENCE_PERSONAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS_REFERENCE_BECAS') THEN
    ALTER TABLE ALUMNOS
       DELETE FOREIGN KEY FK_ALUMNOS_REFERENCE_BECAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS_REFERENCE_GRUPOS_I') THEN
    ALTER TABLE ALUMNOS
       DELETE FOREIGN KEY FK_ALUMNOS_REFERENCE_GRUPOS_I
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS__REFERENCE_ALUMNOS') THEN
    ALTER TABLE ALUMNOS_GRUPOS
       DELETE FOREIGN KEY FK_ALUMNOS__REFERENCE_ALUMNOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_ALUMNOS__REFERENCE_GRUPOS') THEN
    ALTER TABLE ALUMNOS_GRUPOS
       DELETE FOREIGN KEY FK_ALUMNOS__REFERENCE_GRUPOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_BACHILLE_REFERENCE_ESTADOS') THEN
    ALTER TABLE BACHILLERATOS
       DELETE FOREIGN KEY FK_BACHILLE_REFERENCE_ESTADOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_BACHILLE_REFERENCE_MUNICIPI') THEN
    ALTER TABLE BACHILLERATOS
       DELETE FOREIGN KEY FK_BACHILLE_REFERENCE_MUNICIPI
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CALIFICA_REFERENCE_ALUMNOS_') THEN
    ALTER TABLE CALIFICACIONES
       DELETE FOREIGN KEY FK_CALIFICA_REFERENCE_ALUMNOS_
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CALIFICA_REFERENCE_MAESTROS') THEN
    ALTER TABLE CALIFICACIONES
       DELETE FOREIGN KEY FK_CALIFICA_REFERENCE_MAESTROS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CALIFICA_REFERENCE_PERIODOS') THEN
    ALTER TABLE CALIFICACIONES
       DELETE FOREIGN KEY FK_CALIFICA_REFERENCE_PERIODOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CALIFICA_REFERENCE_MATERIAS') THEN
    ALTER TABLE CALIFICACIONES
       DELETE FOREIGN KEY FK_CALIFICA_REFERENCE_MATERIAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CALIFICA_REFERENCE_ALUMNOS') THEN
    ALTER TABLE CALIFICACIONES
       DELETE FOREIGN KEY FK_CALIFICA_REFERENCE_ALUMNOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CARRERAS_REFERENCE_DIVISION') THEN
    ALTER TABLE CARRERAS
       DELETE FOREIGN KEY FK_CARRERAS_REFERENCE_DIVISION
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CARRERAS_REFERENCE_NIVELES_') THEN
    ALTER TABLE CARRERAS
       DELETE FOREIGN KEY FK_CARRERAS_REFERENCE_NIVELES_
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CARRERAS_REFERENCE_MODALIDA') THEN
    ALTER TABLE CARRERAS
       DELETE FOREIGN KEY FK_CARRERAS_REFERENCE_MODALIDA
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_CEDULAS__REFERENCE_TIPOS_CE') THEN
    ALTER TABLE CEDULAS_PROFESIONALES
       DELETE FOREIGN KEY FK_CEDULAS__REFERENCE_TIPOS_CE
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_DIRECTOR_REFERENCE_PERSONAS') THEN
    ALTER TABLE DIRECTORES_DIVISIONES
       DELETE FOREIGN KEY FK_DIRECTOR_REFERENCE_PERSONAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_DISCAPAC_REFERENCE_ALUMNOS') THEN
    ALTER TABLE DISCAPACIDADES_ALUMNOS
       DELETE FOREIGN KEY FK_DISCAPAC_REFERENCE_ALUMNOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_DISCAPAC_REFERENCE_DISCAPAC') THEN
    ALTER TABLE DISCAPACIDADES_ALUMNOS
       DELETE FOREIGN KEY FK_DISCAPAC_REFERENCE_DISCAPAC
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_DIVISION_REFERENCE_DIRECTOR') THEN
    ALTER TABLE DIVISIONES_ACADEMICAS
       DELETE FOREIGN KEY FK_DIVISION_REFERENCE_DIRECTOR
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_EMPRESAS_REFERENCE_GIROS_EM') THEN
    ALTER TABLE EMPRESAS
       DELETE FOREIGN KEY FK_EMPRESAS_REFERENCE_GIROS_EM
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_EMPRESAS_REFERENCE_AREAS_DE') THEN
    ALTER TABLE EMPRESAS
       DELETE FOREIGN KEY FK_EMPRESAS_REFERENCE_AREAS_DE
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_EMPRESAS_REFERENCE_SECTORES') THEN
    ALTER TABLE EMPRESAS
       DELETE FOREIGN KEY FK_EMPRESAS_REFERENCE_SECTORES
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_EMPRESAS_REFERENCE_ESTADOS') THEN
    ALTER TABLE EMPRESAS
       DELETE FOREIGN KEY FK_EMPRESAS_REFERENCE_ESTADOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_EMPRESAS_REFERENCE_MUNICIPI') THEN
    ALTER TABLE EMPRESAS
       DELETE FOREIGN KEY FK_EMPRESAS_REFERENCE_MUNICIPI
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_GRUPOS_REFERENCE_CARRERAS') THEN
    ALTER TABLE GRUPOS
       DELETE FOREIGN KEY FK_GRUPOS_REFERENCE_CARRERAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_GRUPOS_REFERENCE_PERIODOS') THEN
    ALTER TABLE GRUPOS
       DELETE FOREIGN KEY FK_GRUPOS_REFERENCE_PERIODOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_GRUPOS_REFERENCE_DIVISION') THEN
    ALTER TABLE GRUPOS
       DELETE FOREIGN KEY FK_GRUPOS_REFERENCE_DIVISION
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_LENGUAS__REFERENCE_ALUMNOS') THEN
    ALTER TABLE LENGUAS_ALUMNOS
       DELETE FOREIGN KEY FK_LENGUAS__REFERENCE_ALUMNOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_LENGUAS__REFERENCE_LENGUAS_') THEN
    ALTER TABLE LENGUAS_ALUMNOS
       DELETE FOREIGN KEY FK_LENGUAS__REFERENCE_LENGUAS_
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_MAESTROS_REFERENCE_CEDULAS_') THEN
    ALTER TABLE MAESTROS
       DELETE FOREIGN KEY FK_MAESTROS_REFERENCE_CEDULAS_
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_MAESTROS_REFERENCE_TIPOS_CO') THEN
    ALTER TABLE MAESTROS
       DELETE FOREIGN KEY FK_MAESTROS_REFERENCE_TIPOS_CO
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_MAESTROS_REFERENCE_PERSONAS') THEN
    ALTER TABLE MAESTROS
       DELETE FOREIGN KEY FK_MAESTROS_REFERENCE_PERSONAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_MAESTROS_REFERENCE_USUARIOS') THEN
    ALTER TABLE MAESTROS
       DELETE FOREIGN KEY FK_MAESTROS_REFERENCE_USUARIOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_MATERIA__REFERENCE_MATERIAS') THEN
    ALTER TABLE MATERIA_GRUPO_MAESTRO
       DELETE FOREIGN KEY FK_MATERIA__REFERENCE_MATERIAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_MATERIA__REFERENCE_GRUPOS') THEN
    ALTER TABLE MATERIA_GRUPO_MAESTRO
       DELETE FOREIGN KEY FK_MATERIA__REFERENCE_GRUPOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_MATERIA__REFERENCE_MAESTROS') THEN
    ALTER TABLE MATERIA_GRUPO_MAESTRO
       DELETE FOREIGN KEY FK_MATERIA__REFERENCE_MAESTROS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_MUNICIPI_REFERENCE_ESTADOS') THEN
    ALTER TABLE MUNICIPIOS
       DELETE FOREIGN KEY FK_MUNICIPI_REFERENCE_ESTADOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PERSONAS_REFERENCE_ESTADOS') THEN
    ALTER TABLE PERSONAS
       DELETE FOREIGN KEY FK_PERSONAS_REFERENCE_ESTADOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PERSONAS_REFERENCE_MUNICIPI') THEN
    ALTER TABLE PERSONAS
       DELETE FOREIGN KEY FK_PERSONAS_REFERENCE_MUNICIPI
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PERSONAS_REFERENCE_TIPOS_SA') THEN
    ALTER TABLE PERSONAS
       DELETE FOREIGN KEY FK_PERSONAS_REFERENCE_TIPOS_SA
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PERSONAS_REFERENCE_USUARIOS') THEN
    ALTER TABLE PERSONAS
       DELETE FOREIGN KEY FK_PERSONAS_REFERENCE_USUARIOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PERSONAS_REFERENCE_ESTADOS_') THEN
    ALTER TABLE PERSONAS
       DELETE FOREIGN KEY FK_PERSONAS_REFERENCE_ESTADOS_
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PERSONAS_REFERENCE_SEXOS') THEN
    ALTER TABLE PERSONAS
       DELETE FOREIGN KEY FK_PERSONAS_REFERENCE_SEXOS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PLANES_D_REFERENCE_CARRERAS') THEN
    ALTER TABLE PLANES_DE_ESTUDIOS
       DELETE FOREIGN KEY FK_PLANES_D_REFERENCE_CARRERAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PLANES_D_REFERENCE_PLANES_D') THEN
    ALTER TABLE PLANES_DE_ESTUDIO_MATERIAS
       DELETE FOREIGN KEY FK_PLANES_D_REFERENCE_PLANES_D
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PLANES_D_REFERENCE_MATERIAS') THEN
    ALTER TABLE PLANES_DE_ESTUDIO_MATERIAS
       DELETE FOREIGN KEY FK_PLANES_D_REFERENCE_MATERIAS
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_PUESTOS_REFERENCE_DEPARTAM') THEN
    ALTER TABLE PUESTOS
       DELETE FOREIGN KEY FK_PUESTOS_REFERENCE_DEPARTAM
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_USUARIOS_REFERENCE_ROLES') THEN
    ALTER TABLE USUARIOS
       DELETE FOREIGN KEY FK_USUARIOS_REFERENCE_ROLES
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_USUARIOS_REFERENCE_ACTIVIDA') THEN
    ALTER TABLE USUARIOS
       DELETE FOREIGN KEY FK_USUARIOS_REFERENCE_ACTIVIDA
END IF;

IF EXISTS(SELECT 1 FROM SYS.SYSFOREIGNKEY WHERE ROLE='FK_USUARIOS_REFERENCE_PUESTOS') THEN
    ALTER TABLE USUARIOS
       DELETE FOREIGN KEY FK_USUARIOS_REFERENCE_PUESTOS
END IF;

DROP TABLE IF EXISTS ACTIVIDADES_COMPLEMENTARIAS;

DROP TABLE IF EXISTS ACTIVIDADES_DE_USUARIOS;

DROP TABLE IF EXISTS ALUMNOS;

DROP TABLE IF EXISTS ALUMNOS_GRUPOS;

DROP TABLE IF EXISTS AREAS_DE_EMPRESAS;

DROP TABLE IF EXISTS BACHILLERATOS;

DROP TABLE IF EXISTS BECAS;

DROP TABLE IF EXISTS CALIFICACIONES;

DROP TABLE IF EXISTS CARRERAS;

DROP TABLE IF EXISTS CEDULAS_PROFESIONALES;

DROP TABLE IF EXISTS DEPARTAMENTOS;

DROP TABLE IF EXISTS DIRECTORES_DIVISIONES;

DROP TABLE IF EXISTS DISCAPACIDADES;

DROP TABLE IF EXISTS DISCAPACIDADES_ALUMNOS;

DROP TABLE IF EXISTS DIVISIONES_ACADEMICAS;

DROP TABLE IF EXISTS EMPRESAS;

DROP TABLE IF EXISTS ESTADOS;

DROP TABLE IF EXISTS ESTADOS_CIVILES;

DROP TABLE IF EXISTS GIROS_EMPRESARIALES;

DROP TABLE IF EXISTS GRUPOS;

DROP TABLE IF EXISTS GRUPOS_INDIGENAS;

DROP TABLE IF EXISTS GRUPO_MATERIAS;

DROP TABLE IF EXISTS LENGUAS_ALUMNOS;

DROP TABLE IF EXISTS LENGUAS_INDIGENAS;

DROP TABLE IF EXISTS MAESTROS;

DROP TABLE IF EXISTS MATERIAS;

DROP TABLE IF EXISTS MATERIA_GRUPO_MAESTRO;

DROP TABLE IF EXISTS MODALIDADES;

DROP TABLE IF EXISTS MUNICIPIOS;

DROP TABLE IF EXISTS NIVELES_CARRERAS;

DROP TABLE IF EXISTS PERIODOS;

DROP TABLE IF EXISTS PERSONAS;

DROP TABLE IF EXISTS PLANES_DE_ESTUDIOS;

DROP TABLE IF EXISTS PLANES_DE_ESTUDIO_MATERIAS;

DROP TABLE IF EXISTS PUESTOS;

DROP TABLE IF EXISTS ROLES;

DROP TABLE IF EXISTS ROLES_USUARIOS;

DROP TABLE IF EXISTS SECTORES_EMPRESARIALES;

DROP TABLE IF EXISTS SEXOS;

DROP TABLE IF EXISTS SITUACION_ALUMNOS;

DROP TABLE IF EXISTS SITUACION_DOCUMENTO;

DROP TABLE IF EXISTS TIPOS_CEDULAS;

DROP TABLE IF EXISTS TIPOS_CONTRATACIONES;

DROP TABLE IF EXISTS TIPOS_SANGUINEOS;

DROP TABLE IF EXISTS USUARIOS;

/*==============================================================*/
/* Table: ACTIVIDADES_COMPLEMENTARIAS                           */
/*==============================================================*/
CREATE TABLE ACTIVIDADES_COMPLEMENTARIAS 
(
   ID_ACTIVIDAD_COMPLEMENTARIA INTEGER                        NOT NULL,
   ID_DEPARTAMENTO      INTEGER                        NULL,
   NOMBRE_ACTIVIDAD_COMPLEMENTARIA VARCHAR(30)                    NULL,
   DESCRIPCION          VARCHAR(300)                   NULL,
   CREDITOS             NUMERIC(5,0)                   NULL,
   HORAS                NUMERIC(3,0)                   NULL,
   CONSTRAINT PK_ACTIVIDADES_COMPLEMENTARIAS PRIMARY KEY (ID_ACTIVIDAD_COMPLEMENTARIA)
);

/*==============================================================*/
/* Table: ACTIVIDADES_DE_USUARIOS                               */
/*==============================================================*/
CREATE TABLE ACTIVIDADES_DE_USUARIOS 
(
   ID_ACTIVIDAD_DE_USUARIO INTEGER                        NOT NULL,
   NOMBRE               CHAR(100)                      NULL,
   CONSTRAINT PK_ACTIVIDADES_DE_USUARIOS PRIMARY KEY (ID_ACTIVIDAD_DE_USUARIO)
);

/*==============================================================*/
/* Table: ALUMNOS                                               */
/*==============================================================*/
CREATE TABLE ALUMNOS 
(
   ID_ALUMNO            INTEGER                        NOT NULL,
   ID_PERSONA           INTEGER                        NULL,
   ID_BECA              INTEGER                        NULL,
   ID_GRUPO_INDIGENA    INTEGER                        NULL,
   ID_MODALIDAD         INTEGER                        NULL,
   ID_SITUACION_ALUMNO  INTEGER                        NULL,
   ID_BACHILLERATO      INTEGER                        NULL,
   ID_USUARIO           INTEGER                        NULL,
   ID_CARRERA           INTEGER                        NULL,
   NOMBRE_BACHILLERATO  VARCHAR(30)                    NULL,
   PROMEDIO_BACHILLERATO DECIMAL(3)                     NULL,
   MATRICULA            VARCHAR(10)                    NULL,
   FECHA_INSCRIPCION    SMALLINT                       NULL,
   ACTA_NACIMIENTO      CHAR(30)                       NULL,
   CERTIFICADO_SECUNDARIA CHAR(30)                       NULL,
   CARTA_BUENA_CONDUCTA CHAR(30)                       NULL,
   CERTIFICADO_BACHILLERATO CHAR(30)                       NULL,
   CURP                 CHAR(30)                       NULL,
   DICTAMEN_REVALIDACION CHAR(30)                       NULL,
   FORMA_FM9_EXTRANJERO CHAR(30)                       NULL,
   COMPROBANTE_PAGO     CHAR(30)                       NULL,
   CERTIFICADO_MEDICO   CHAR(30)                       NULL,
   6_FOTOGRAFIAS_INFANTIL CHAR(30)                       NULL,
   CONSTRAINT PK_ALUMNOS PRIMARY KEY (ID_ALUMNO)
);

/*==============================================================*/
/* Table: ALUMNOS_GRUPOS                                        */
/*==============================================================*/
CREATE TABLE ALUMNOS_GRUPOS 
(
   ID_ALUMNOS_GRUPOS    INTEGER                        NOT NULL,
   ID_ALUMNO            INTEGER                        NULL,
   ID_GRUPO             INTEGER                        NULL,
   CONSTRAINT PK_ALUMNOS_GRUPOS PRIMARY KEY (ID_ALUMNOS_GRUPOS)
);

/*==============================================================*/
/* Table: AREAS_DE_EMPRESAS                                     */
/*==============================================================*/
CREATE TABLE AREAS_DE_EMPRESAS 
(
   ID_AREA_DE_EMPRESA   INTEGER                        NOT NULL,
   NOMBRE               CHAR(100)                      NULL,
   TITULAR              CHAR(50)                       NULL,
   CONSTRAINT PK_AREAS_DE_EMPRESAS PRIMARY KEY (ID_AREA_DE_EMPRESA)
);

/*==============================================================*/
/* Table: BACHILLERATOS                                         */
/*==============================================================*/
CREATE TABLE BACHILLERATOS 
(
   ID_BACHILLERATO      INTEGER                        NOT NULL,
   ID_ESTADO            INTEGER                        NULL,
   ID_MUNICIPIO         INTEGER                        NULL,
   NOMBRE               CHAR(100)                      NULL,
   CONSTRAINT PK_BACHILLERATOS PRIMARY KEY (ID_BACHILLERATO)
);

/*==============================================================*/
/* Table: BECAS                                                 */
/*==============================================================*/
CREATE TABLE BECAS 
(
   ID_BECA              INTEGER                        NOT NULL,
   NOMBRE               VARCHAR(30)                    NULL,
   MONTO_BECA           INTEGER                        NULL,
   CONSTRAINT PK_BECAS PRIMARY KEY (ID_BECA)
);

/*==============================================================*/
/* Table: CALIFICACIONES                                        */
/*==============================================================*/
CREATE TABLE CALIFICACIONES 
(
   ID_CALIFICACION      INTEGER                        NOT NULL,
   ID_ALUMNOS_GRUPOS    INTEGER                        NULL,
   ID_MAESTRO           INTEGER                        NULL,
   ID_PERIODO           INTEGER                        NULL,
   ID_MATERIA           INTEGER                        NULL,
   ID_ALUMNO            INTEGER                        NULL,
   PARCIAL1             INTEGER                        NULL,
   FECHA_PARCIAL1       DATE                           NULL,
   PARCIAL2             INTEGER                        NULL,
   FECHA_PARCIAL2       DATE                           NULL,
   PARCIAL3             INTEGER                        NULL,
   FECHA_PARCIAL3       DATE                           NULL,
   CALIFICACION_FINAL   INTEGER                        NULL,
   CONSTRAINT PK_CALIFICACIONES PRIMARY KEY (ID_CALIFICACION)
);

/*==============================================================*/
/* Table: CARRERAS                                              */
/*==============================================================*/
CREATE TABLE CARRERAS 
(
   ID_CARRERA           INTEGER                        NOT NULL,
   ID_DIVISION_ACADEMICA INTEGER                        NULL,
   ID_NIVEL_CARRERA     INTEGER                        NULL,
   ID_MODALIDAD         INTEGER                        NULL,
   NOMBRE_CARRERA       VARCHAR(60)                    NULL,
   DURACION_CARRERA     VARCHAR(30)                    NULL,
   SITUACION_CARRERA    VARCHAR(30)                    NULL,
   ESTRUCTURA_GENERICA  NUMERIC(3,0)                   NULL,
   ESPECIALIDAD         NUMERIC(3,0)                   NULL,
   RESIDENCIA_PROFESIONAL NUMERIC(3,0)                   NULL,
   SERVICIO_SOCIAL      NUMERIC(3,0)                   NULL,
   ACTIVIDADES_COMPLEMENTARIAS NUMERIC(3,0)                   NULL,
   TOTAL_DE_CREDITOS    NUMERIC(3,0)                   NULL,
   CONSTRAINT PK_CARRERAS PRIMARY KEY (ID_CARRERA)
);

/*==============================================================*/
/* Table: CEDULAS_PROFESIONALES                                 */
/*==============================================================*/
CREATE TABLE CEDULAS_PROFESIONALES 
(
   ID_CEDULA_PROFESIONAL INTEGER                        NOT NULL,
   ID_TIPO_CEDULA       INTEGER                        NULL,
   NOMBRE               VARCHAR(50)                    NULL,
   CONSTRAINT PK_CEDULAS_PROFESIONALES PRIMARY KEY CLUSTERED (ID_CEDULA_PROFESIONAL)
);

/*==============================================================*/
/* Table: DEPARTAMENTOS                                         */
/*==============================================================*/
CREATE TABLE DEPARTAMENTOS 
(
   ID_DEPARTAMENTO      INTEGER                        NOT NULL,
   NOMBRE               CHAR(100)                      NULL,
   CONSTRAINT PK_DEPARTAMENTOS PRIMARY KEY (ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Table: DIRECTORES_DIVISIONES                                 */
/*==============================================================*/
CREATE TABLE DIRECTORES_DIVISIONES 
(
   ID_DIRECTOR_DIVISION CHAR(10)                       NOT NULL,
   ID_PERSONA           INTEGER                        NULL,
   CONSTRAINT PK_DIRECTORES_DIVISIONES PRIMARY KEY CLUSTERED (ID_DIRECTOR_DIVISION)
);

/*==============================================================*/
/* Table: DISCAPACIDADES                                        */
/*==============================================================*/
CREATE TABLE DISCAPACIDADES 
(
   ID_DISCAPACIDAD      INTEGER                        NOT NULL,
   NOMBRE               VARCHAR(30)                    NULL,
   CONSTRAINT PK_DISCAPACIDADES PRIMARY KEY (ID_DISCAPACIDAD)
);

/*==============================================================*/
/* Table: DISCAPACIDADES_ALUMNOS                                */
/*==============================================================*/
CREATE TABLE DISCAPACIDADES_ALUMNOS 
(
   ID_DISCAPACIDAD_ALUMNO INTEGER                        NOT NULL,
   ID_ALUMNO            INTEGER                        NULL,
   ID_DISCAPACIDAD      INTEGER                        NULL,
   CONSTRAINT PK_DISCAPACIDADES_ALUMNOS PRIMARY KEY CLUSTERED (ID_DISCAPACIDAD_ALUMNO)
);

/*==============================================================*/
/* Table: DIVISIONES_ACADEMICAS                                 */
/*==============================================================*/
CREATE TABLE DIVISIONES_ACADEMICAS 
(
   ID_DIVISION_ACADEMICA INTEGER                        NOT NULL,
   ID_DIRECTOR_DIVISION CHAR(10)                       NULL,
   NOMBRE               CHAR(50)                       NULL,
   CONSTRAINT PK_DIVISIONES_ACADEMICAS PRIMARY KEY (ID_DIVISION_ACADEMICA)
);

/*==============================================================*/
/* Table: EMPRESAS                                              */
/*==============================================================*/
CREATE TABLE EMPRESAS 
(
   ID_EMPRESA           INTEGER                        NOT NULL,
   ID_GIRO_EMPRESARIAL  INTEGER                        NULL,
   ID_AREA_DE_EMPRESA   INTEGER                        NULL,
   ID_SECTOR_EMPRESARIAL INTEGER                        NULL,
   ID_ESTADO            INTEGER                        NULL,
   ID_MUNICIPIO         INTEGER                        NULL,
   NOMBRE_EMPRESA       VARCHAR(30)                    NULL,
   RFC                  VARCHAR(30)                    NULL,
   NOMBRE_COMERCIAL     VARCHAR(60)                    NULL,
   RAZON_SOCIAL         VARCHAR(60)                    NULL,
   ADMINISTRADOR_EMPRESARIAL VARCHAR(30)                    NULL,
   TELEFONO_LOCAL       NUMERIC(10,0)                  NULL,
   CALLE                VARCHAR(30)                    NULL,
   NUMERO               NUMERIC(5,0)                   NULL,
   CODIGO_POSTAL        NUMERIC(5,0)                   NULL,
   CIUDAD               VARCHAR(30)                    NULL,
   CORREO_ELECTRONICO   VARCHAR(30)                    NULL,
   CONSTRAINT PK_EMPRESAS PRIMARY KEY (ID_EMPRESA)
);

/*==============================================================*/
/* Table: ESTADOS                                               */
/*==============================================================*/
CREATE TABLE ESTADOS 
(
   ID_ESTADO            INTEGER                        NOT NULL,
   NOMBRE               VARCHAR(30)                    NULL,
   CONSTRAINT PK_ESTADOS PRIMARY KEY (ID_ESTADO)
);

/*==============================================================*/
/* Table: ESTADOS_CIVILES                                       */
/*==============================================================*/
CREATE TABLE ESTADOS_CIVILES 
(
   ID_ESTADO_CIVIL      INTEGER                        NOT NULL,
   NOMBRE               CHAR(30)                       NULL,
   CONSTRAINT PK_ESTADOS_CIVILES PRIMARY KEY CLUSTERED (ID_ESTADO_CIVIL)
);

/*==============================================================*/
/* Table: GIROS_EMPRESARIALES                                   */
/*==============================================================*/
CREATE TABLE GIROS_EMPRESARIALES 
(
   ID_GIRO_EMPRESARIAL  INTEGER                        NOT NULL,
   NOMBRE               CHAR(50)                       NULL,
   CONSTRAINT PK_GIROS_EMPRESARIALES PRIMARY KEY (ID_GIRO_EMPRESARIAL)
);

/*==============================================================*/
/* Table: GRUPOS                                                */
/*==============================================================*/
CREATE TABLE GRUPOS 
(
   ID_GRUPO             INTEGER                        NOT NULL,
   ID_CARRERA           INTEGER                        NULL,
   ID_PERIODO           INTEGER                        NULL,
   ID_DIVISION_ACADEMICA INTEGER                        NULL,
   LETRA                VARCHAR(30)                    NULL,
   NUMERO_SEMESTRE      INTEGER                        NULL,
   CONSTRAINT PK_GRUPOS PRIMARY KEY (ID_GRUPO)
);

/*==============================================================*/
/* Table: GRUPOS_INDIGENAS                                      */
/*==============================================================*/
CREATE TABLE GRUPOS_INDIGENAS 
(
   ID_GRUPO_INDIGENA    INTEGER                        NOT NULL,
   NOMBRE_GRUPO_INDIGENA CHAR(30)                       NULL,
   CONSTRAINT PK_GRUPOS_INDIGENAS PRIMARY KEY (ID_GRUPO_INDIGENA)
);

/*==============================================================*/
/* Table: GRUPO_MATERIAS                                        */
/*==============================================================*/
CREATE TABLE GRUPO_MATERIAS 
(
   ID_GRUPO_MATERIA     INTEGER                        NOT NULL,
   CONSTRAINT PK_GRUPO_MATERIAS PRIMARY KEY (ID_GRUPO_MATERIA)
);

/*==============================================================*/
/* Table: LENGUAS_ALUMNOS                                       */
/*==============================================================*/
CREATE TABLE LENGUAS_ALUMNOS 
(
   ID_LENGUA_ALUMNO     INTEGER                        NOT NULL,
   ID_ALUMNO            INTEGER                        NULL,
   ID_LENGUA_INDIGENA   INTEGER                        NULL,
   CONSTRAINT PK_LENGUAS_ALUMNOS PRIMARY KEY CLUSTERED (ID_LENGUA_ALUMNO)
);

/*==============================================================*/
/* Table: LENGUAS_INDIGENAS                                     */
/*==============================================================*/
CREATE TABLE LENGUAS_INDIGENAS 
(
   ID_LENGUA_INDIGENA   INTEGER                        NOT NULL,
   NOMBRE               CHAR(30)                       NULL,
   CONSTRAINT PK_LENGUAS_INDIGENAS PRIMARY KEY (ID_LENGUA_INDIGENA)
);

/*==============================================================*/
/* Table: MAESTROS                                              */
/*==============================================================*/
CREATE TABLE MAESTROS 
(
   ID_MAESTRO           INTEGER                        NOT NULL,
   ID_CEDULA_PROFESIONAL INTEGER                        NULL,
   ID_TIPO_CONTRATACION INTEGER                        NULL,
   ID_PERSONA           INTEGER                        NULL,
   ID_USUARIO           INTEGER                        NULL,
   CONSTRAINT PK_MAESTROS PRIMARY KEY (ID_MAESTRO)
);

/*==============================================================*/
/* Table: MATERIAS                                              */
/*==============================================================*/
CREATE TABLE MATERIAS 
(
   ID_MATERIA           INTEGER                        NOT NULL,
   NOMBRE_MATERIA       VARCHAR(30)                    NULL,
   HORAS_TEORICAS       NUMERIC(5,0)                   NULL,
   HORAS_PRACTICAS      NUMERIC(5,0)                   NULL,
   HORAS_TOTALES        NUMERIC(5,0)                   NULL,
   CARACTERIZACION      VARCHAR(500)                   NULL,
   OBJETIVOS            VARCHAR(500)                   NULL,
   SEMESTRE             NUMERIC(1,0)                   NULL,
   CLAVE_IDENTIFICADORA VARCHAR(10)                    NULL,
   CONSTRAINT PK_MATERIAS PRIMARY KEY (ID_MATERIA)
);

/*==============================================================*/
/* Table: MATERIA_GRUPO_MAESTRO                                 */
/*==============================================================*/
CREATE TABLE MATERIA_GRUPO_MAESTRO 
(
   ID_MATERIA_GRUPO_MAESTRO INTEGER                        NOT NULL,
   ID_MATERIA           INTEGER                        NULL,
   ID_GRUPO             INTEGER                        NULL,
   ID_MAESTRO           INTEGER                        NULL,
   CONSTRAINT PK_MATERIA_GRUPO_MAESTRO PRIMARY KEY CLUSTERED (ID_MATERIA_GRUPO_MAESTRO)
);

/*==============================================================*/
/* Table: MODALIDADES                                           */
/*==============================================================*/
CREATE TABLE MODALIDADES 
(
   ID_MODALIDAD         INTEGER                        NOT NULL,
   NOMBRE               CHAR(30)                       NULL,
   CONSTRAINT PK_MODALIDADES PRIMARY KEY (ID_MODALIDAD)
);

/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
CREATE TABLE MUNICIPIOS 
(
   ID_MUNICIPIO         INTEGER                        NOT NULL,
   ID_ESTADO            INTEGER                        NULL,
   NOMBRE               VARCHAR(30)                    NULL,
   CONSTRAINT PK_MUNICIPIOS PRIMARY KEY (ID_MUNICIPIO)
);

/*==============================================================*/
/* Table: NIVELES_CARRERAS                                      */
/*==============================================================*/
CREATE TABLE NIVELES_CARRERAS 
(
   ID_NIVEL_CARRERA     INTEGER                        NOT NULL,
   NOMBRE               CHAR(100)                      NULL,
   CONSTRAINT PK_NIVELES_CARRERAS PRIMARY KEY (ID_NIVEL_CARRERA)
);

/*==============================================================*/
/* Table: PERIODOS                                              */
/*==============================================================*/
CREATE TABLE PERIODOS 
(
   ID_PERIODO           INTEGER                        NOT NULL,
   NOMBRE               VARCHAR(50)                    NULL,
   FECHA_INICIO         DATE                           NULL,
   FECHA_TERMINO        DATE                           NULL,
   DURACION_DIAS        INTEGER                        NULL,
   DURACION_MES         INTEGER                        NULL,
   MES_INICIO           DATE                           NULL,
   MES_TERMINO          DATE                           NULL,
   DIAS_FESTIVOS        CHAR(30)                       NULL,
   CONSTRAINT PK_PERIODOS PRIMARY KEY (ID_PERIODO)
);

/*==============================================================*/
/* Table: PERSONAS                                              */
/*==============================================================*/
CREATE TABLE PERSONAS 
(
   ID_PERSONA           INTEGER                        NOT NULL,
   ID_ESTADO            INTEGER                        NULL,
   ID_MUNICIPIO         INTEGER                        NULL,
   ID_TIPO_SANGUINEO    INTEGER                        NULL,
   ID_ESTADO_CIVIL      INTEGER                        NULL,
   ID_USUARIO           INTEGER                        NULL,
   ID_SEXO              INTEGER                        NULL,
   NOMBRE               CHAR(30)                       NULL,
   APELLIDO_PATERNO     CHAR(30)                       NULL,
   APELLIDO_MATERNO     CHAR(30)                       NULL,
   FECHA_NACIMIENTO     DATE                           NULL,
   EDAD                 INTEGER                        NULL,
   CALLE                CHAR(60)                       NULL,
   COLONIA              CHAR(60)                       NULL,
   CIUDAD               CHAR(60)                       NULL,
   CODIGO_POSTAL        NUMERIC(5,0)                   NULL,
   TELEFONO_MOVIL       NUMERIC(10,0)                  NULL,
   TELEFONO_CASA        NUMERIC(10,0)                  NULL,
   CORREO_ELECTRONICO   VARCHAR(60)                    NULL,
   CURP                 VARCHAR(18)                    NULL,
   RFC                  VARCHAR(12)                    NULL,
   NSS                  NUMERIC(12,0)                  NULL,
   CONSTRAINT PK_PERSONAS PRIMARY KEY (ID_PERSONA)
);

/*==============================================================*/
/* Table: PLANES_DE_ESTUDIOS                                    */
/*==============================================================*/
CREATE TABLE PLANES_DE_ESTUDIOS 
(
   ID_PLAN_DE_ESTUDIO   INTEGER                        NOT NULL,
   ID_CARRERA           INTEGER                        NULL,
   NOMBRE_PLAN_DE_ESTUDIO VARCHAR(60)                    NULL,
   LETRA                CHAR(1)                        NULL,
   CLAVE_PLAN_DE_ESTUDIO VARCHAR(15)                    NULL,
   ESTADO_DE_PLAN_DE_ESTUDIO VARCHAR(15)                    NULL,
   ANO_PLAN_DE_ESTUDIO  INTEGER                        NULL,
   CONSTRAINT PK_PLANES_DE_ESTUDIOS PRIMARY KEY (ID_PLAN_DE_ESTUDIO)
);

/*==============================================================*/
/* Table: PLANES_DE_ESTUDIO_MATERIAS                            */
/*==============================================================*/
CREATE TABLE PLANES_DE_ESTUDIO_MATERIAS 
(
   ID_PLAN_DE_ESTUDIO_MATERIA INTEGER                        NOT NULL,
   ID_PLAN_DE_ESTUDIO   INTEGER                        NULL,
   ID_MATERIA           INTEGER                        NULL,
   CONSTRAINT PK_PLANES_DE_ESTUDIO_MATERIAS PRIMARY KEY CLUSTERED (ID_PLAN_DE_ESTUDIO_MATERIA)
);

/*==============================================================*/
/* Table: PUESTOS                                               */
/*==============================================================*/
CREATE TABLE PUESTOS 
(
   ID_PUESTO            INTEGER                        NOT NULL,
   ID_DEPARTAMENTO      INTEGER                        NULL,
   NOMBRE               CHAR(100)                      NULL,
   CONSTRAINT PK_PUESTOS PRIMARY KEY (ID_PUESTO)
);

/*==============================================================*/
/* Table: ROLES                                                 */
/*==============================================================*/
CREATE TABLE ROLES 
(
   ID_ROL               INTEGER                        NOT NULL,
   NOMBRE               CHAR(100)                      NULL,
   CONSTRAINT PK_ROLES PRIMARY KEY (ID_ROL)
);

/*==============================================================*/
/* Table: ROLES_USUARIOS                                        */
/*==============================================================*/
CREATE TABLE ROLES_USUARIOS 
(
   ID_ROL_USUARIO       INTEGER                        NOT NULL,
   CONSTRAINT PK_ROLES_USUARIOS PRIMARY KEY (ID_ROL_USUARIO)
);

/*==============================================================*/
/* Table: SECTORES_EMPRESARIALES                                */
/*==============================================================*/
CREATE TABLE SECTORES_EMPRESARIALES 
(
   ID_SECTOR_EMPRESARIAL INTEGER                        NOT NULL,
   NOMBRE               CHAR(50)                       NULL,
   CONSTRAINT PK_SECTORES_EMPRESARIALES PRIMARY KEY (ID_SECTOR_EMPRESARIAL)
);

/*==============================================================*/
/* Table: SEXOS                                                 */
/*==============================================================*/
CREATE TABLE SEXOS 
(
   ID_SEXO              INTEGER                        NOT NULL,
   NOMBRE               CHAR(10)                       NULL,
   CONSTRAINT PK_SEXOS PRIMARY KEY CLUSTERED (ID_SEXO)
);

/*==============================================================*/
/* Table: SITUACION_ALUMNOS                                     */
/*==============================================================*/
CREATE TABLE SITUACION_ALUMNOS 
(
   ID_SITUACION_ALUMNO  INTEGER                        NOT NULL,
   NOMBRE               CHAR(30)                       NULL,
   CONSTRAINT PK_SITUACION_ALUMNOS PRIMARY KEY (ID_SITUACION_ALUMNO)
);

/*==============================================================*/
/* Table: SITUACION_DOCUMENTO                                   */
/*==============================================================*/
CREATE TABLE SITUACION_DOCUMENTO 
(
   ID_SITUACION_DOCUMENTO INTEGER                        NOT NULL,
   NOMBRE               CHAR(30)                       NULL,
   CONSTRAINT PK_SITUACION_DOCUMENTO PRIMARY KEY CLUSTERED (ID_SITUACION_DOCUMENTO)
);

/*==============================================================*/
/* Table: TIPOS_CEDULAS                                         */
/*==============================================================*/
CREATE TABLE TIPOS_CEDULAS 
(
   ID_TIPO_CEDULA       INTEGER                        NOT NULL,
   NOMBRE               CHAR(50)                       NULL,
   CONSTRAINT PK_TIPOS_CEDULAS PRIMARY KEY CLUSTERED (ID_TIPO_CEDULA)
);

/*==============================================================*/
/* Table: TIPOS_CONTRATACIONES                                  */
/*==============================================================*/
CREATE TABLE TIPOS_CONTRATACIONES 
(
   ID_TIPO_CONTRATACION INTEGER                        NOT NULL,
   NOMBRE               CHAR(50)                       NULL,
   FECHA_INICIO         DATE                           NULL,
   FECHA_TERMINO        DATE                           NULL,
   SUELDO               INTEGER                        NULL,
   CONSTRAINT PK_TIPOS_CONTRATACIONES PRIMARY KEY CLUSTERED (ID_TIPO_CONTRATACION)
);

/*==============================================================*/
/* Table: TIPOS_SANGUINEOS                                      */
/*==============================================================*/
CREATE TABLE TIPOS_SANGUINEOS 
(
   ID_TIPO_SANGUINEO    INTEGER                        NOT NULL,
   NOMBRE               VARCHAR(20)                    NULL,
   CONSTRAINT PK_TIPOS_SANGUINEOS PRIMARY KEY (ID_TIPO_SANGUINEO)
);

/*==============================================================*/
/* Table: USUARIOS                                              */
/*==============================================================*/
CREATE TABLE USUARIOS 
(
   ID_USUARIO           INTEGER                        NOT NULL,
   ID_ROL               INTEGER                        NULL,
   ID_ACTIVIDAD_DE_USUARIO INTEGER                        NULL,
   ID_PUESTO            INTEGER                        NULL,
   NOMBRE_USUARIO       CHAR(50)                       NULL,
   USUARIO_DE_ACCESO    VARCHAR(30)                    NULL,
   CLAVE_DE_ACCESO      VARCHAR(30)                    NULL,
   CONSTRAINT PK_USUARIOS PRIMARY KEY (ID_USUARIO)
);

ALTER TABLE ACTIVIDADES_COMPLEMENTARIAS
   ADD CONSTRAINT FK_ACTIVIDA_REFERENCE_DEPARTAM FOREIGN KEY (ID_DEPARTAMENTO)
      REFERENCES DEPARTAMENTOS (ID_DEPARTAMENTO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS
   ADD CONSTRAINT FK_ALUMNOS_REFERENCE_MODALIDA FOREIGN KEY (ID_MODALIDAD)
      REFERENCES MODALIDADES (ID_MODALIDAD)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS
   ADD CONSTRAINT FK_ALUMNOS_REFERENCE_SITUACIO FOREIGN KEY (ID_SITUACION_ALUMNO)
      REFERENCES SITUACION_ALUMNOS (ID_SITUACION_ALUMNO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS
   ADD CONSTRAINT FK_ALUMNOS_REFERENCE_BACHILLE FOREIGN KEY (ID_BACHILLERATO)
      REFERENCES BACHILLERATOS (ID_BACHILLERATO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS
   ADD CONSTRAINT FK_ALUMNOS_REFERENCE_USUARIOS FOREIGN KEY (ID_USUARIO)
      REFERENCES USUARIOS (ID_USUARIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS
   ADD CONSTRAINT FK_ALUMNOS_REFERENCE_CARRERAS FOREIGN KEY (ID_CARRERA)
      REFERENCES CARRERAS (ID_CARRERA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS
   ADD CONSTRAINT FK_ALUMNOS_REFERENCE_PERSONAS FOREIGN KEY (ID_PERSONA)
      REFERENCES PERSONAS (ID_PERSONA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS
   ADD CONSTRAINT FK_ALUMNOS_REFERENCE_BECAS FOREIGN KEY (ID_BECA)
      REFERENCES BECAS (ID_BECA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS
   ADD CONSTRAINT FK_ALUMNOS_REFERENCE_GRUPOS_I FOREIGN KEY (ID_GRUPO_INDIGENA)
      REFERENCES GRUPOS_INDIGENAS (ID_GRUPO_INDIGENA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS_GRUPOS
   ADD CONSTRAINT FK_ALUMNOS__REFERENCE_ALUMNOS FOREIGN KEY (ID_ALUMNO)
      REFERENCES ALUMNOS (ID_ALUMNO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE ALUMNOS_GRUPOS
   ADD CONSTRAINT FK_ALUMNOS__REFERENCE_GRUPOS FOREIGN KEY (ID_GRUPO)
      REFERENCES GRUPOS (ID_GRUPO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE BACHILLERATOS
   ADD CONSTRAINT FK_BACHILLE_REFERENCE_ESTADOS FOREIGN KEY (ID_ESTADO)
      REFERENCES ESTADOS (ID_ESTADO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE BACHILLERATOS
   ADD CONSTRAINT FK_BACHILLE_REFERENCE_MUNICIPI FOREIGN KEY (ID_MUNICIPIO)
      REFERENCES MUNICIPIOS (ID_MUNICIPIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CALIFICACIONES
   ADD CONSTRAINT FK_CALIFICA_REFERENCE_ALUMNOS_ FOREIGN KEY (ID_ALUMNOS_GRUPOS)
      REFERENCES ALUMNOS_GRUPOS (ID_ALUMNOS_GRUPOS)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CALIFICACIONES
   ADD CONSTRAINT FK_CALIFICA_REFERENCE_MAESTROS FOREIGN KEY (ID_MAESTRO)
      REFERENCES MAESTROS (ID_MAESTRO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CALIFICACIONES
   ADD CONSTRAINT FK_CALIFICA_REFERENCE_PERIODOS FOREIGN KEY (ID_PERIODO)
      REFERENCES PERIODOS (ID_PERIODO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CALIFICACIONES
   ADD CONSTRAINT FK_CALIFICA_REFERENCE_MATERIAS FOREIGN KEY (ID_MATERIA)
      REFERENCES MATERIAS (ID_MATERIA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CALIFICACIONES
   ADD CONSTRAINT FK_CALIFICA_REFERENCE_ALUMNOS FOREIGN KEY (ID_ALUMNO)
      REFERENCES ALUMNOS (ID_ALUMNO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CARRERAS
   ADD CONSTRAINT FK_CARRERAS_REFERENCE_DIVISION FOREIGN KEY (ID_DIVISION_ACADEMICA)
      REFERENCES DIVISIONES_ACADEMICAS (ID_DIVISION_ACADEMICA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CARRERAS
   ADD CONSTRAINT FK_CARRERAS_REFERENCE_NIVELES_ FOREIGN KEY (ID_NIVEL_CARRERA)
      REFERENCES NIVELES_CARRERAS (ID_NIVEL_CARRERA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CARRERAS
   ADD CONSTRAINT FK_CARRERAS_REFERENCE_MODALIDA FOREIGN KEY (ID_MODALIDAD)
      REFERENCES MODALIDADES (ID_MODALIDAD)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE CEDULAS_PROFESIONALES
   ADD CONSTRAINT FK_CEDULAS__REFERENCE_TIPOS_CE FOREIGN KEY (ID_TIPO_CEDULA)
      REFERENCES TIPOS_CEDULAS (ID_TIPO_CEDULA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE DIRECTORES_DIVISIONES
   ADD CONSTRAINT FK_DIRECTOR_REFERENCE_PERSONAS FOREIGN KEY (ID_PERSONA)
      REFERENCES PERSONAS (ID_PERSONA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE DISCAPACIDADES_ALUMNOS
   ADD CONSTRAINT FK_DISCAPAC_REFERENCE_ALUMNOS FOREIGN KEY (ID_ALUMNO)
      REFERENCES ALUMNOS (ID_ALUMNO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE DISCAPACIDADES_ALUMNOS
   ADD CONSTRAINT FK_DISCAPAC_REFERENCE_DISCAPAC FOREIGN KEY (ID_DISCAPACIDAD)
      REFERENCES DISCAPACIDADES (ID_DISCAPACIDAD)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE DIVISIONES_ACADEMICAS
   ADD CONSTRAINT FK_DIVISION_REFERENCE_DIRECTOR FOREIGN KEY (ID_DIRECTOR_DIVISION)
      REFERENCES DIRECTORES_DIVISIONES (ID_DIRECTOR_DIVISION)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE EMPRESAS
   ADD CONSTRAINT FK_EMPRESAS_REFERENCE_GIROS_EM FOREIGN KEY (ID_GIRO_EMPRESARIAL)
      REFERENCES GIROS_EMPRESARIALES (ID_GIRO_EMPRESARIAL)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE EMPRESAS
   ADD CONSTRAINT FK_EMPRESAS_REFERENCE_AREAS_DE FOREIGN KEY (ID_AREA_DE_EMPRESA)
      REFERENCES AREAS_DE_EMPRESAS (ID_AREA_DE_EMPRESA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE EMPRESAS
   ADD CONSTRAINT FK_EMPRESAS_REFERENCE_SECTORES FOREIGN KEY (ID_SECTOR_EMPRESARIAL)
      REFERENCES SECTORES_EMPRESARIALES (ID_SECTOR_EMPRESARIAL)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE EMPRESAS
   ADD CONSTRAINT FK_EMPRESAS_REFERENCE_ESTADOS FOREIGN KEY (ID_ESTADO)
      REFERENCES ESTADOS (ID_ESTADO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE EMPRESAS
   ADD CONSTRAINT FK_EMPRESAS_REFERENCE_MUNICIPI FOREIGN KEY (ID_MUNICIPIO)
      REFERENCES MUNICIPIOS (ID_MUNICIPIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE GRUPOS
   ADD CONSTRAINT FK_GRUPOS_REFERENCE_CARRERAS FOREIGN KEY (ID_CARRERA)
      REFERENCES CARRERAS (ID_CARRERA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE GRUPOS
   ADD CONSTRAINT FK_GRUPOS_REFERENCE_PERIODOS FOREIGN KEY (ID_PERIODO)
      REFERENCES PERIODOS (ID_PERIODO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE GRUPOS
   ADD CONSTRAINT FK_GRUPOS_REFERENCE_DIVISION FOREIGN KEY (ID_DIVISION_ACADEMICA)
      REFERENCES DIVISIONES_ACADEMICAS (ID_DIVISION_ACADEMICA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE LENGUAS_ALUMNOS
   ADD CONSTRAINT FK_LENGUAS__REFERENCE_ALUMNOS FOREIGN KEY (ID_ALUMNO)
      REFERENCES ALUMNOS (ID_ALUMNO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE LENGUAS_ALUMNOS
   ADD CONSTRAINT FK_LENGUAS__REFERENCE_LENGUAS_ FOREIGN KEY (ID_LENGUA_INDIGENA)
      REFERENCES LENGUAS_INDIGENAS (ID_LENGUA_INDIGENA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MAESTROS
   ADD CONSTRAINT FK_MAESTROS_REFERENCE_CEDULAS_ FOREIGN KEY (ID_CEDULA_PROFESIONAL)
      REFERENCES CEDULAS_PROFESIONALES (ID_CEDULA_PROFESIONAL)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MAESTROS
   ADD CONSTRAINT FK_MAESTROS_REFERENCE_TIPOS_CO FOREIGN KEY (ID_TIPO_CONTRATACION)
      REFERENCES TIPOS_CONTRATACIONES (ID_TIPO_CONTRATACION)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MAESTROS
   ADD CONSTRAINT FK_MAESTROS_REFERENCE_PERSONAS FOREIGN KEY (ID_PERSONA)
      REFERENCES PERSONAS (ID_PERSONA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MAESTROS
   ADD CONSTRAINT FK_MAESTROS_REFERENCE_USUARIOS FOREIGN KEY (ID_USUARIO)
      REFERENCES USUARIOS (ID_USUARIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MATERIA_GRUPO_MAESTRO
   ADD CONSTRAINT FK_MATERIA__REFERENCE_MATERIAS FOREIGN KEY (ID_MATERIA)
      REFERENCES MATERIAS (ID_MATERIA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MATERIA_GRUPO_MAESTRO
   ADD CONSTRAINT FK_MATERIA__REFERENCE_GRUPOS FOREIGN KEY (ID_GRUPO)
      REFERENCES GRUPOS (ID_GRUPO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MATERIA_GRUPO_MAESTRO
   ADD CONSTRAINT FK_MATERIA__REFERENCE_MAESTROS FOREIGN KEY (ID_MAESTRO)
      REFERENCES MAESTROS (ID_MAESTRO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE MUNICIPIOS
   ADD CONSTRAINT FK_MUNICIPI_REFERENCE_ESTADOS FOREIGN KEY (ID_ESTADO)
      REFERENCES ESTADOS (ID_ESTADO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PERSONAS
   ADD CONSTRAINT FK_PERSONAS_REFERENCE_ESTADOS FOREIGN KEY (ID_ESTADO)
      REFERENCES ESTADOS (ID_ESTADO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PERSONAS
   ADD CONSTRAINT FK_PERSONAS_REFERENCE_MUNICIPI FOREIGN KEY (ID_MUNICIPIO)
      REFERENCES MUNICIPIOS (ID_MUNICIPIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PERSONAS
   ADD CONSTRAINT FK_PERSONAS_REFERENCE_TIPOS_SA FOREIGN KEY (ID_TIPO_SANGUINEO)
      REFERENCES TIPOS_SANGUINEOS (ID_TIPO_SANGUINEO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PERSONAS
   ADD CONSTRAINT FK_PERSONAS_REFERENCE_USUARIOS FOREIGN KEY (ID_USUARIO)
      REFERENCES USUARIOS (ID_USUARIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PERSONAS
   ADD CONSTRAINT FK_PERSONAS_REFERENCE_ESTADOS_ FOREIGN KEY (ID_ESTADO_CIVIL)
      REFERENCES ESTADOS_CIVILES (ID_ESTADO_CIVIL)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PERSONAS
   ADD CONSTRAINT FK_PERSONAS_REFERENCE_SEXOS FOREIGN KEY (ID_SEXO)
      REFERENCES SEXOS (ID_SEXO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PLANES_DE_ESTUDIOS
   ADD CONSTRAINT FK_PLANES_D_REFERENCE_CARRERAS FOREIGN KEY (ID_CARRERA)
      REFERENCES CARRERAS (ID_CARRERA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PLANES_DE_ESTUDIO_MATERIAS
   ADD CONSTRAINT FK_PLANES_D_REFERENCE_PLANES_D FOREIGN KEY (ID_PLAN_DE_ESTUDIO)
      REFERENCES PLANES_DE_ESTUDIOS (ID_PLAN_DE_ESTUDIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PLANES_DE_ESTUDIO_MATERIAS
   ADD CONSTRAINT FK_PLANES_D_REFERENCE_MATERIAS FOREIGN KEY (ID_MATERIA)
      REFERENCES MATERIAS (ID_MATERIA)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE PUESTOS
   ADD CONSTRAINT FK_PUESTOS_REFERENCE_DEPARTAM FOREIGN KEY (ID_DEPARTAMENTO)
      REFERENCES DEPARTAMENTOS (ID_DEPARTAMENTO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE USUARIOS
   ADD CONSTRAINT FK_USUARIOS_REFERENCE_ROLES FOREIGN KEY (ID_ROL)
      REFERENCES ROLES (ID_ROL)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE USUARIOS
   ADD CONSTRAINT FK_USUARIOS_REFERENCE_ACTIVIDA FOREIGN KEY (ID_ACTIVIDAD_DE_USUARIO)
      REFERENCES ACTIVIDADES_DE_USUARIOS (ID_ACTIVIDAD_DE_USUARIO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

ALTER TABLE USUARIOS
   ADD CONSTRAINT FK_USUARIOS_REFERENCE_PUESTOS FOREIGN KEY (ID_PUESTO)
      REFERENCES PUESTOS (ID_PUESTO)
      ON UPDATE RESTRICT
      ON DELETE RESTRICT;

