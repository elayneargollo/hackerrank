-- Encontre a diferença entre o número total de entradas CITY na tabela e o número de entradas CITY distintas na tabela.
-- Por exemplo, se houver três registros na tabela com valores CITY 'New York', 'New York', 'Bengalaru', 
-- existem 2 nomes de cidades diferentes: 'New York' e 'Bengalaru'. A consulta retorna 1.

SELECT (COUNT(CITY) - COUNT(DISTINCT CITY)) FROM STATION;

-- Consulte as duas cidades em STATION com os nomes de CITY mais curtos e mais longos , 
-- bem como seus respectivos comprimentos (ou seja: número de caracteres no nome). 
-- Se houver mais de uma cidade menor ou maior, escolha a que vem primeiro quando ordenada alfabeticamente.

SELECT CITY,LENGTH(CITY)
FROM STATION
WHERE LENGTH(CITY) IN (
  SELECT MAX(LENGTH(CITY)) FROM STATION
  UNION
  SELECT MIN(LENGTH(CITY)) FROM STATION
)
ORDER BY LENGTH(CITY) DESC,CITY ASC LIMIT 2;