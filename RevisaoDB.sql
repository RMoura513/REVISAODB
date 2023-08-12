CREATE DATABASE revisaoDB
GO
USE revisaoDB
GO

CREATE TABLE Aluno (
RA					INT					NOT NULL,
Nome				VARCHAR(100)		NOT NULL,
Idade				INT					NOT NULL
PRIMARY KEY(RA))
GO
CREATE TABLE Disciplina (
Codigo				INT					NOT NULL,
Nome				VARCHAR(80)		NOT NULL,
Carga_horaria		INT					NOT NULL
PRIMARY KEY(Codigo))
GO
CREATE TABLE Aluno_Disciplina (
AlunoRA				INT					NOT NULL,
DisciplinaCodigo	INT					NOT NULL
FOREIGN KEY(AlunoRA) REFERENCES Aluno(RA),
FOREIGN KEY(DisciplinaCodigo) REFERENCES Disciplina(Codigo))
GO
CREATE TABLE Curso (
Codigo				INT					NOT NULL,
Nome				VARCHAR(50)			NOT NULL,
Area				INT					NOT NULL
PRIMARY KEY(Codigo))
GO
CREATE TABLE Curso_Disciplina (
CursoCodigo			INT					NOT NULL,
DisciplinaCodigo	INT					NOT NULL
FOREIGN KEY(CursoCodigo) REFERENCES Curso(Codigo),
FOREIGN KEY(DisciplinaCodigo) REFERENCES Disciplina(Codigo))
GO
CREATE TABLE Titulacao (
Codigo				INT					NOT NULL,
Titulo				VARCHAR(40)			NOT NULL
PRIMARY KEY(Codigo))
GO
CREATE TABLE Professor (
Registro			INT					NOT NULL,
Nome				VARCHAR(100)		NOT NULL,
Titulacao			INT					NOT NULL
PRIMARY KEY(Registro),
FOREIGN KEY(Titulacao) REFERENCES Titulacao(Codigo))
GO
CREATE TABLE Disciplina_Professor (
DisciplinaCodigo	INT					NOT NULL,
ProfessorRegistro	INT					NOT NULL
FOREIGN KEY(DisciplinaCodigo) REFERENCES Disciplina(Codigo),
FOREIGN KEY(ProfessorRegistro) REFERENCES Professor(Registro))












