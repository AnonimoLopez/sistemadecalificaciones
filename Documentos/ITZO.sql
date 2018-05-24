/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     23/05/2018 11:01:21 p. m.                    */
/*==============================================================*/


ALTER TABLE ALUMNOS
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS ALUMNOS;

ALTER TABLE CALIFICACIONES
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS CALIFICACIONES;

ALTER TABLE CARRERAS
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS CARRERAS;

ALTER TABLE GENERACIONES
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS GENERACIONES;

ALTER TABLE GRADOS
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS GRADOS;

ALTER TABLE GRUPOS
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS GRUPOS;

ALTER TABLE GRUPOS_DIAS_MATERIAS
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS GRUPOS_DIAS_MATERIAS;

ALTER TABLE GRUPOS_MATERIAS
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS GRUPOS_MATERIAS;

ALTER TABLE MATERIAS
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS MATERIAS;

ALTER TABLE PROFESORES
   DROP PRIMARY KEY;

DROP TABLE IF EXISTS PROFESORES;

/*==============================================================*/
/* Table: ALUMNOS                                               */
/*==============================================================*/
CREATE TABLE ALUMNOS
(
   MATRICULA            VARCHAR(50) NOT NULL,
   CVE_GRUPO            INT,
   NOMBRE               VARCHAR(50) NOT NULL
);

ALTER TABLE ALUMNOS
   ADD PRIMARY KEY (MATRICULA);

/*==============================================================*/
/* Table: CALIFICACIONES                                        */
/*==============================================================*/
CREATE TABLE CALIFICACIONES
(
   CVE_CALIFICACION     INT NOT NULL,
   MATRICULA_ALUMNO     VARCHAR(50) NOT NULL,
   CVE_GRUPO_MATERIA    INT NOT NULL,
   PARCIAL_1            INT NOT NULL,
   PARCIAL_2            INT NOT NULL,
   PARCIAL_3            INT NOT NULL,
   ESTATUS              VARCHAR(50) NOT NULL
);

ALTER TABLE CALIFICACIONES
   ADD PRIMARY KEY (CVE_CALIFICACION);

/*==============================================================*/
/* Table: CARRERAS                                              */
/*==============================================================*/
CREATE TABLE CARRERAS
(
   CVE_CARRERRA         INT NOT NULL,
   DESCRIPCION          VARCHAR(150) NOT NULL
);

ALTER TABLE CARRERAS
   ADD PRIMARY KEY (CVE_CARRERRA);

/*==============================================================*/
/* Table: GENERACIONES                                          */
/*==============================================================*/
CREATE TABLE GENERACIONES
(
   CVE_GENERACION       INT NOT NULL,
   DESCRIPCION          VARCHAR(50) NOT NULL
);

ALTER TABLE GENERACIONES
   ADD PRIMARY KEY (CVE_GENERACION);

/*==============================================================*/
/* Table: GRADOS                                                */
/*==============================================================*/
CREATE TABLE GRADOS
(
   CVE_GRADO            INT NOT NULL,
   CVE_CARRERRA         INT,
   DESCRIPCION          VARCHAR(50) NOT NULL
);

ALTER TABLE GRADOS
   ADD PRIMARY KEY (CVE_GRADO);

/*==============================================================*/
/* Table: GRUPOS                                                */
/*==============================================================*/
CREATE TABLE GRUPOS
(
   CVE_GRUPO            INT NOT NULL,
   CVE_GRADO            INT,
   DESCRIPCION          VARCHAR(150) NOT NULL
);

ALTER TABLE GRUPOS
   ADD PRIMARY KEY (CVE_GRUPO);

/*==============================================================*/
/* Table: GRUPOS_DIAS_MATERIAS                                  */
/*==============================================================*/
CREATE TABLE GRUPOS_DIAS_MATERIAS
(
   CVE_DIAS             INT NOT NULL,
   CVE_GRUPO_MATERIA    INT NOT NULL,
   DIA                  VARCHAR(50) NOT NULL,
   HORA_INICIO          TIME NOT NULL,
   HORA_FIN             TIME NOT NULL
);

ALTER TABLE GRUPOS_DIAS_MATERIAS
   ADD PRIMARY KEY (CVE_DIAS, CVE_GRUPO_MATERIA);

/*==============================================================*/
/* Table: GRUPOS_MATERIAS                                       */
/*==============================================================*/
CREATE TABLE GRUPOS_MATERIAS
(
   CVE_GRUPO_MATERIA    INT NOT NULL,
   CVE_GRUPO            INT NOT NULL,
   CVE_MATERIA          INT NOT NULL,
   CVE_PROFESOR         VARCHAR(50) NOT NULL
);

ALTER TABLE GRUPOS_MATERIAS
   ADD PRIMARY KEY (CVE_GRUPO_MATERIA);

/*==============================================================*/
/* Table: MATERIAS                                              */
/*==============================================================*/
CREATE TABLE MATERIAS
(
   CVE_MATERIA          INT NOT NULL,
   DESCRIPCION          VARCHAR(150) NOT NULL,
   SIGLAS               VARCHAR(50) NOT NULL
);

ALTER TABLE MATERIAS
   ADD PRIMARY KEY (CVE_MATERIA);

/*==============================================================*/
/* Table: PROFESORES                                            */
/*==============================================================*/
CREATE TABLE PROFESORES
(
   CVE_PROFESOR         VARCHAR(50) NOT NULL,
   NOMBRE               VARCHAR(50) NOT NULL
);

ALTER TABLE PROFESORES
   ADD PRIMARY KEY (CVE_PROFESOR);

ALTER TABLE ALUMNOS ADD CONSTRAINT FK_REFERENCE_5 FOREIGN KEY (CVE_GRUPO)
      REFERENCES GRUPOS (CVE_GRUPO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CALIFICACIONES ADD CONSTRAINT FK_REFERENCE_6 FOREIGN KEY (MATRICULA_ALUMNO)
      REFERENCES ALUMNOS (MATRICULA) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CALIFICACIONES ADD CONSTRAINT FK_REFERENCE_9 FOREIGN KEY (CVE_GRUPO_MATERIA)
      REFERENCES GRUPOS_MATERIAS (CVE_GRUPO_MATERIA) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GRADOS ADD CONSTRAINT FK_REFERENCE_1 FOREIGN KEY (CVE_CARRERRA)
      REFERENCES CARRERAS (CVE_CARRERRA) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GRUPOS ADD CONSTRAINT FK_REFERENCE_8 FOREIGN KEY (CVE_GRADO)
      REFERENCES GRADOS (CVE_GRADO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GRUPOS_DIAS_MATERIAS ADD CONSTRAINT FK_REFERENCE_4 FOREIGN KEY (CVE_GRUPO_MATERIA)
      REFERENCES GRUPOS_MATERIAS (CVE_GRUPO_MATERIA) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GRUPOS_MATERIAS ADD CONSTRAINT FK_REFERENCE_2 FOREIGN KEY (CVE_GRUPO)
      REFERENCES GRUPOS (CVE_GRUPO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GRUPOS_MATERIAS ADD CONSTRAINT FK_REFERENCE_3 FOREIGN KEY (CVE_MATERIA)
      REFERENCES MATERIAS (CVE_MATERIA) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GRUPOS_MATERIAS ADD CONSTRAINT FK_REFERENCE_7 FOREIGN KEY (CVE_PROFESOR)
      REFERENCES PROFESORES (CVE_PROFESOR) ON DELETE RESTRICT ON UPDATE RESTRICT;

