-- Criando a tabela
-- CREATE TABLE
-- Tipos: INT, VARCHAR, DATETIME
-- CREATE TABLE pessoa (nome varchar(20), nascimento date);

-- Exemplo:
CREATE TABLE pessoas (
  id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(30) NOT NULL,
  nascimento DATE
)

-- Inserindo dados
-- INSERT INTO
-- Indicar as colunas que serão preenchidas e os respectivos
valores
-- INSERT INTO pessoas (nome, nascimento) VALUES ('Nome', 'Data de nascimento');

-- Exemplo:
INSERT INTO pessoas (nome,nascimento) VALUES ('Wesley', '1985-06-29'),
INSERT INTO pessoas (nome,nascimento) VALUES ('Pedro', '1995-07-17'),
INSERT INTO pessoas (nome,nascimento) VALUES ('Marcela', '2000-04-05'),
