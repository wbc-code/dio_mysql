-- CURSO DE MySql

-- CRIANDO A TABELA
-- Comando: CREATE TABLE
-- Tipos: INT, VARCHAR, DATETIME
-- CREATE TABLE pessoa (nome varchar(20), nascimento date);

-- Exemplo:
CREATE TABLE pessoas (
  id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(30) NOT NULL,
  nascimento DATE
)

-- INSERINDO DADOS
-- Comando: INSERT INTO
-- Indicar as colunas que serão preenchidas e os respectivos valores
-- INSERT INTO pessoas (nome, nascimento) VALUES ('Nome', 'Data de nascimento');

-- Exemplo:
INSERT INTO pessoa (nome,nascimento) VALUES ('Wesley', '1985-06-29')
INSERT INTO pessoa (nome,nascimento) VALUES ('Pedro', '1995-07-17')
INSERT INTO pessoa (nome,nascimento) VALUES ('Marcela', '2000-04-05')


-- SELECIONANDO E ALTERANDO DADOS
-- Select e Update
-- Comando: SELECT
-- Definido os campos a ser visualizados trocando '*'
-- SELECT * FROM pessoas

SELECT * FROM pessoa
SELECT nome FROM pessoa
SELECT nascimento FROM pessoa
SELECT id FROM pessoa

-- ATUALIZANDO DADOS
-- Comando: UPDATE
-- Alterando informaçoes na tabela
UPDATE pessoa SET nome = 'Wesley Carvalho'

-- Cláusula WHERE
-- Define uma condição para nosso comando
UPDATE pessoa SET nome = 'Wesley Carvalho' WHERE id = 1;

-- Deletando os dados
-- Comando: DELETE FROM
-- Deletar informaçoes selecionados
-- Após ser deletado é impossivel restaurar -  não tem comando reverso.
DELETE FROM pessoa WHERE id =0

-- Boa prática, sempre fazer a verificação se o dado a ser deletado esta correto:
SELECT * FROM pessoa WHERE id =5
-- Para depois inserir o comando:
DELETE FROM pessoa WHERE id = 5

-- OBS: o id do dado deletado nunca será ocupado novamente, ou seja, deletou o dado de id 5, proximo dado a ser inserido sera de id 6, o novo dado não ocupará o id 5.

-- Ordenando dados
-- Comando: ORDER BY
-- Ordena a forma como as informaçãoes são exibidas

SELECT * FROM pessoa ORDER BY nome
-- Por padrão o ORDER BY vai lista em ordem crescente "ASC"

-- Listar por ordem descrescente "DESC"
SELECT * FROM pessoa ORDER BY nome DESC

-- AGRUPANDO
-- Comando: GRUPO BY
-- Agrupa as informações de acordo com o critério selecionado

SELECT COUNT(*), genero FROM pessoa GROUP BY genero

-- Exemplo:
SELECT COUNT(id), genero FROM pessoa GROUP BY genero;

-- Adicionando genero na tabela.
UPDATE pessoa SET genero='*' WHERE id=1
-- * Alterar para F ou M






