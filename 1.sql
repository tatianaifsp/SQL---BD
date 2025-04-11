create database sistemaAcademico;
use sistemaAcademico;

create table curso ( 
	CodCurso varchar(3) primary key not null,
	Nome varchar (20), 
	Mensalidade decimal(10,2)
   );
   
CREATE TABLE ALUNO (
    RA CHAR(9) NOT NULL PRIMARY KEY,
    RG CHAR(9) NOT NULL,
    NOME CHAR(30),
    CODCURSO CHAR(3),
    FOREIGN KEY (CODCURSO) REFERENCES CURSO(CODCURSO)
);

CREATE TABLE DISCIPLINA (
    CodDisc CHAR(5) NOT NULL,
    Nome CHAR(30),
    CodCurso CHAR(3),
    NroCreditos INT,
    PRIMARY KEY (CodDisc),
    FOREIGN KEY (CodCurso) REFERENCES CURSO(CODCURSO)
);

CREATE TABLE BOLETIM (
    Ra CHAR(9) NOT NULL,
    CodDisc CHAR(5) NOT NULL,
    Nota DECIMAL(5,2),
    PRIMARY KEY (Ra, CodDisc),
    FOREIGN KEY (Ra) REFERENCES ALUNO(RA),
    FOREIGN KEY (CodDisc) REFERENCES DISCIPLINA(CodDisc)
);