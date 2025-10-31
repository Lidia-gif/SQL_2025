USE Portugal;

-- Pergunta 2 --
ALTER TABLE cidades RENAME TO codigo_postal;

-- Pergunta 3 --
SELECT * FROM portugal.codigo_postal;

-- Pergunta 4 --
ALTER TABLE portugal.codigo_postal RENAME COLUMN  Area TO AreaKm2;

-- Pergunta 5 --
SELECT AVG (AreaKm2) FROM codigo_postal;

-- Pergunta 6 --
SELECT Nome , codigo_postal
FROM codigo_postal
WHERE AreaKm2 > 80;


-- Pergunta 7 --
SELECT * FROM codigo_postal WHERE codigo_postal = 7830;
