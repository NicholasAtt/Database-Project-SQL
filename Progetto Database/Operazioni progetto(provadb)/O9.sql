SELECT CODMANUTENZIONE,COUNT(*) AS N_PEZZI
FROM IMPIEGO I
GROUP BY CODMANUTENZIONE
HAVING N_PEZZI>=2