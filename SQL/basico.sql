-- Consulte todas as colunas de todas as cidades americanas na tabela CITY com populações maiores que 100000. 
-- O CountryCode para a América é USA.

SELECT * FROM CITY WHERE (POPULATION > 100000 AND COUNTRYCODE = 'USA');

--  Consulte o campo NAME para todas as cidades americanas na tabela CITY com populações maiores que 120000. 
-- O CountryCode para a América é USA.

SELECT NAME FROM CITY WHERE (POPULATION > 120000 AND COUNTRYCODE = 'USA');

--  Consulte todas as colunas (atributos) para cada linha na tabela CITY .

SELECT * FROM CITY;

-- Consulte todas as colunas de uma cidade em CITY com o ID 1661 .

SELECT * FROM CITY WHERE ID = 1661;

-- Consulte todos os atributos de cada cidade japonesa na tabela CITY . O CÓDIGO DO PAÍS para o Japão é JPN.

SELECT * FROM CITY WHERE COUNTRYCODE= 'JPN';

-- Consulte os nomes de todas as cidades japonesas na tabela CITY . O CÓDIGO DO PAÍS para o Japão é JPN.

SELECT NAME FROM CITY WHERE COUNTRYCODE= 'JPN';

-- Consulte uma lista de CITY e STATE na tabela STATION .

SELECT CITY, STATE FROM STATION;

-- Consulte uma lista de nomes de CIDADES de STATION para cidades que tenham um número de identificação par . 
-- Imprima os resultados em qualquer ordem, mas exclua duplicatas da resposta.

SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0

